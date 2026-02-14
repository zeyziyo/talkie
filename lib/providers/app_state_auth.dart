part of 'app_state.dart';

extension AppStateAuth on AppState {
  Future<void> checkUsageLimit() async => await _usageService.checkLimitOrThrow();

  Future<void> incrementUsage() async => await _usageService.incrementUsage();

  Future<int> getRemainingUsage() async => await _usageService.getRemainingCount();

  /// Add refill amount (e.g. from Ad)
  Future<void> refillUsage(int amount) async {
    await _usageService.addRefill(amount);
    notify();
  }

  // Removed _getUnifiedId as it is replaced by UnifiedRepository.saveUnifiedRecord in Phase 119

  /// Import study materials from JSON file content
  Future<Map<String, dynamic>> importFromJsonFile(String jsonContent, {String? fileName}) async {
    try {
      final result = await DatabaseService.importFromJson(jsonContent, fileName: fileName);
      
      if (result['success'] == true) {
         try {
           final data = json.decode(jsonContent) as Map<String, dynamic>;
           final targetLang = data['target_language'] as String?;
           if (targetLang != null) {
             _selectedReviewLanguage = targetLang;
           }
         } catch (e) {
           debugPrint('[AppState] Could not parse target language from JSON: $e');
         }
         
         await loadStudyMaterials();
         
         final newMaterialId = result['material_id'] as int? ?? 0;
         if (newMaterialId != 0) {
             await selectMaterial(newMaterialId);
         } else {
             await loadStudyRecords();
         }
      }
      
      return result;
    } catch (e) {
      debugPrint('[AppState] Error importing JSON file: $e');
      return {
        'success': false,
        'imported': 0,
        'skipped': 0,
        'total': 0,
        'errors': ['Import failed: $e'],
      };
    }
  }

  /// Import JSON file with metadata (Supabase)
  Future<Map<String, dynamic>> importJsonWithMetadata(
    String jsonContent,
    {String? fileName}
  ) async {
    try {
      final data = json.decode(jsonContent) as Map<String, dynamic>;
      final entries = data['entries'] as List?;
      final defaultType = data['default_type'] as String? ?? 'sentence';
      final subject = data['subject'] as String? ?? 'Imported Material';
      
      if (_sourceLang.trim().isEmpty || _targetLang.trim().isEmpty) {
        data['source_language'] = _sourceLang;
        data['target_language'] = _targetLang;
      }

      int importedCount = 0;
      int skippedCount = 0;
      int duplicateCount = 0;
      List<String> errors = [];
      
      _statusMessage = 'Importing...';
      notify();

      await DatabaseService.importFromJsonWithMetadata(
        jsonContent,
        defaultSourceLang: _sourceLang,
        defaultTargetLang: _targetLang,
        defaultType: defaultType,
      );
      
      if (entries != null) {
        for (var i = 0; i < entries.length; i++) {
          try {
            final entry = entries[i] as Map<String, dynamic>;
            final sourceText = (entry['source_text'] ?? entry['text']) as String?;
            final targetText = (entry['target_text'] ?? entry['translation']) as String?;
            
            if (sourceText == null || sourceText.trim().isEmpty) {
              skippedCount++;
              continue;
            }
            
            final note = (entry['note'] ?? entry['context']) as String?;
            final pos = entry['pos'] as String?;
            final formType = entry['form_type'] as String?;
            final root = entry['root'] as String?;
            final entryType = entry['type'] as String? ?? defaultType;
            final entryTags = (entry['tags'] as List?)?.map((e) => e.toString()).toList() ?? [];
            if (!entryTags.contains(subject)) entryTags.add(subject);

            final result = await SupabaseService.importJsonEntry(
              sourceText: sourceText,
              sourceLang: _sourceLang,
              targetText: targetText ?? '',
              targetLang: _targetLang,
              note: note,
              pos: pos,
              formType: formType,
              root: root,
              type: entryType,
              tags: entryTags,
            );
            
            if (result['success'] == true) {
              importedCount++;
            } else {
              if (result['reason'] == 'Duplicate') {
                duplicateCount++;
              } else {
                errors.add('Entry ${i + 1}: ${result['reason']}');
                skippedCount++;
              }
            }
          } catch (e) {
            errors.add('Entry ${i + 1} failed: $e');
            skippedCount++;
          }
        }
      }
      
      await loadStudyRecords(); 
      notify();
      
      return {
        'success': true,
        'imported': importedCount,
        'skipped': skippedCount,
        'duplicates': duplicateCount,
        'total': (data['entries'] as List?)?.length ?? 0,
        'errors': errors,
      };
    } catch (e) {
      debugPrint('[AppState] Error importing JSON (Supabase): $e');
      return {
        'success': false,
        'imported': 0,
        'skipped': 0,
        'total': 0,
        'errors': ['Import failed: $e'],
      };
    }
  }

  /// Pick JSON file and import into database
  Future<Map<String, dynamic>?> pickAndImportJson() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.any, 
        withData: kIsWeb, 
      );
      
      if (result == null || result.files.isEmpty) {
        return null; 
      }
      
      final PlatformFile file = result.files.single;
      
      if (!file.name.toLowerCase().endsWith('.json')) {
        return {
          'success': false, 
          'error': '잘못된 파일 형식입니다. .json 파일을 선택해주세요.'
        };
      }

      final String fileName = file.name;
      String jsonContent;
      
      if (kIsWeb) {
        if (file.bytes != null) {
          jsonContent = utf8.decode(file.bytes!);
        } else {
          return {'success': false, 'error': 'Failed to read file content (Web)'};
        }
      } else {
        if (file.path != null) {
          jsonContent = await File(file.path!).readAsString();
        } else {
          return {'success': false, 'error': 'File path not found'};
        }
      }

      final userId = SupabaseService.client.auth.currentUser?.id;
      final importResult = await DatabaseService.importFromJsonWithMetadata(
        jsonContent, 
        fileName: fileName,
        userId: userId,
        checkDuplicate: true,
      );
      
      await loadStudyMaterials();
      await loadDialogueGroups();
      await loadRecordsByTags();
      notify();
      
      return importResult;
      
    } catch (e) {
      debugPrint('[RemoteImport] Error: $e');
      _statusMessage = 'L10N:statusImportFailed|$e';
      notify();
      return {'success': false, 'error': e.toString()};
    }
  }

  Future<void> fetchOnlineMaterialsList() async {
    _isLoadingOnlineMaterials = true;
    notify();
    try {
      final response = await http.get(Uri.parse(AppConstants.onlineMaterialsIndexUrl));
      if (response.statusCode == 200) {
        final data = json.decode(utf8.decode(response.bodyBytes));
        _onlineMaterials = List<Map<String, dynamic>>.from(data['materials'] ?? []);
      }
    } catch (e) {
      debugPrint('[Online] Index Error: $e');
    } finally {
      _isLoadingOnlineMaterials = false;
      notify();
    }
  }

  Future<Map<String, dynamic>> importRemoteMaterial(Map<String, dynamic> material, {String? type}) async {
    final mId = material['id'];
    final mName = material['name'] as String? ?? 'Unnamed Material';
    String? sPath = material['source_url'] as String?;
    String? tPath = material['target_url'] as String?;
    String? pPath = material['pivot_url'] as String?;
    
    // Phase 93: Map ISO code to server directory name (e.g., 'ko' -> 'Korean')
    String getLangDir(String code) {
      try {
        final lang = LanguageConstants.supportedLanguages.firstWhere(
          (e) => e['code'] == code,
          orElse: () => {'code': code, 'name': code == 'en' ? 'English' : code},
        );
        return lang['name']!;
      } catch (_) {
        return code == 'en' ? 'English' : code;
      }
    }

    // Phase 92/93: Fallback to path-based construction if URLs are missing
    if (sPath == null || tPath == null) {
      final String? relativePath = material['path'] as String?;
      if (relativePath != null) {
        final String baseRepoUrl = AppConstants.materialsBaseUrl;
        sPath = '$baseRepoUrl/${Uri.encodeComponent(getLangDir(_sourceLang))}/$relativePath';
        tPath = '$baseRepoUrl/${Uri.encodeComponent(getLangDir(_targetLang))}/$relativePath';
        pPath = '$baseRepoUrl/English/$relativePath';
      }
    }

    if (sPath == null || tPath == null) {
      return {'success': false, 'error': 'Missing source or target URL'};
    }

    _isTranslating = true;
    // UI will recognize 'L10N:' prefix and translate it
    _statusMessage = 'L10N:statusDownloading|$mName';
    notify();

    try {
      final futures = [
        http.get(Uri.parse(sPath)),
        http.get(Uri.parse(tPath)),
        if (fetchPivot && pPath != null && _targetLang != 'en' && _sourceLang != 'en') http.get(Uri.parse(pPath)),
      ];

      final results = await Future.wait(futures);
      
      if (results[0].statusCode != 200 || results[1].statusCode != 200) {
        throw Exception('Download failed');
      }

      final sJson = utf8.decode(results[0].bodyBytes);
      final tJson = utf8.decode(results[1].bodyBytes);
      final pJson = (results.length > 2 && results[2].statusCode == 200) ? utf8.decode(results[2].bodyBytes) : null;

      final sData = json.decode(sJson) as Map<String, dynamic>;
      final tData = json.decode(tJson) as Map<String, dynamic>;
      final pData = pJson != null ? json.decode(pJson) as Map<String, dynamic> : null;

      // Merge entries into a master record
      final List<Map<String, dynamic>> masterEntries = [];
      final sEntries = sData['entries'] as List? ?? [];
      final tEntries = tData['entries'] as List? ?? [];
      final pEntries = pData !=null ? pData['entries'] as List? ?? [] : [];

      final int maxLen = sEntries.length; // Assume they are aligned
      for (int i = 0; i < maxLen; i++) {
        final sEntry = sEntries[i] as Map<String, dynamic>;
        final tEntry = i < tEntries.length ? tEntries[i] as Map<String, dynamic> : null;
        final pEntry = i < pEntries.length ? pEntries[i] as Map<String, dynamic> : null;

        final Map<String, dynamic> merged = Map<String, dynamic>.from(sEntry);
        merged['source_text'] = sEntry['text'];
        merged['target_text'] = tEntry?['text'] ?? '';
        
        // Phase 117: Enhanced Metadata Mapping
        final sMeta = sEntry['meta'] as Map<String, dynamic>? ?? {};
        final tMeta = tEntry?['meta'] as Map<String, dynamic>? ?? {};

        // 1. Source Metadata (normalized)
        merged['pos'] = (sEntry['pos'] ?? sMeta['pos']) as String?;
        merged['root'] = (sEntry['root'] ?? sMeta['root']) as String?;
        merged['form_type'] = (sEntry['form_type'] ?? sMeta['form_type']) as String?;
        merged['style'] = (sEntry['style'] ?? sMeta['style']) as String?;

        // 2. Target Metadata (Isolated with prefix)
        if (tEntry != null) {
          merged['target_pos'] = (tEntry['pos'] ?? tMeta['pos']) as String?;
          merged['target_root'] = (tEntry['root'] ?? tMeta['root']) as String?;
          merged['target_form_type'] = (tEntry['form_type'] ?? tMeta['form_type']) as String?;
          merged['target_style'] = (tEntry['style'] ?? tMeta['style']) as String?;
        }
        
        // Phase 115: If pivot (English) is available, use it as a hint in note
        if (pEntry != null && pEntry['text'] != null && _sourceLang != 'en' && _targetLang != 'en') {
          final String pText = pEntry['text'];
          final String currentNote = (merged['note'] ?? merged['context'] ?? '') as String;
          merged['note'] = currentNote.isEmpty ? '(EN: $pText)' : '$currentNote (EN: $pText)';
        }
        
        masterEntries.add(merged);
      }

      final Map<String, dynamic> masterData = Map<String, dynamic>.from(sData);
      masterData['entries'] = masterEntries;
      masterData['source_language'] = _sourceLang;
      masterData['target_language'] = _targetLang;

      final masterJson = json.encode(masterData);
      final syncKey = sPath.split('/').last.replaceAll('.json', '');
      int? localMaterialId;

      _statusMessage = 'L10N:importing';
      notify();

      final result = await DatabaseService.importFromJsonWithMetadata(
        masterJson, 
        fileName: 'remote_${mId}_merged.json',
        overrideSubject: mName, 
        syncKey: syncKey, 
        userId: 'user', 
        defaultType: type,
        defaultSourceLang: _sourceLang, 
        defaultTargetLang: _targetLang, 
      );

      if (result['success'] == true) {
        localMaterialId = result['material_id'] as int?;
      }

      await loadDialogueGroups();
      await loadStudyMaterials();
      await loadTags(); 
      await loadRecordsByTags(); 
      
      _statusMessage = 'L10N:statusImportSuccess|$mName';
      notify();

      // Phase 97.6: Return the ACTUAL local DB ID captured during import
      return {
        'success': true, 
        'material_id': localMaterialId,
        'dialogue_id': syncKey
      };
    } catch (e) {
      _statusMessage = 'L10N:statusImportFailed|$e';
      notify();
      return {'success': false, 'error': e.toString()};
    } finally {
      _isTranslating = false;
      notify();
  }
}
}
// End of AppStateAuth

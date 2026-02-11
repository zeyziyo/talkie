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

  /// 동일 텍스트 아이디 조회 헬퍼
  Future<int> _getUnifiedId(Transaction txn, String table, String text, String lang, String? note) async {
    final results = await txn.query(table, columns: ['id'], 
        where: 'text = ? AND lang_code = ? AND IFNULL(note, "") = ?', 
        whereArgs: [text, lang, note ?? ""]);
    if (results.isNotEmpty) return results.first['id'] as int;
    return 0;
  }

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
      );
      
      await loadStudyMaterials();
      await loadDialogueGroups();
      await loadRecordsByTags();
      notify();
      
      return importResult;
      
    } catch (e) {
      return {'success': false, 'error': e.toString()};
    }
  }

  Future<void> fetchOnlineMaterialsList() async {
    _isLoadingOnlineMaterials = true;
    notify();
    try {
      final response = await http.get(Uri.parse('https://zeyziyo.github.io/talkie/materials_v3.json'));
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
    
    // Phase 92: Fallback to path-based construction if URLs are missing
    if (sPath == null || tPath == null) {
      final String? relativePath = material['path'] as String?;
      if (relativePath != null) {
        final String baseRepoUrl = 'https://zeyziyo.github.io/talkie/docs/materials';
        sPath = '$baseRepoUrl/$_sourceLang/$relativePath';
        tPath = '$baseRepoUrl/$_targetLang/$relativePath';
        pPath = '$baseRepoUrl/en/$relativePath';
      }
    }

    if (sPath == null || tPath == null) {
      return {'success': false, 'error': 'Missing source or target URL'};
    }

    _isTranslating = true;
    _statusMessage = 'Downloading $mName...';
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

      final syncKey = sPath.split('/').last.replaceAll('.json', '');

      _statusMessage = 'Importing...';
      notify();
      await DatabaseService.importFromJsonWithMetadata(
        sJson, 
        fileName: 'remote_${mId}_$_sourceLang.json',
        overrideSubject: mName, 
        syncKey: syncKey, 
        userId: 'user', 
        defaultType: type,
      );

      await DatabaseService.importFromJsonWithMetadata(
        tJson, 
        fileName: 'remote_${mId}_$_targetLang.json',
        overrideSubject: mName, 
        syncKey: syncKey, 
        userId: 'user', 
        defaultType: type,
      );

      if (fetchPivot && results.length > 2 && results[2].statusCode == 200) {
        final pJson = utf8.decode(results[2].bodyBytes);
        await DatabaseService.importFromJsonWithMetadata(
          pJson, 
          fileName: 'remote_${mId}_en.json',
          overrideSubject: mName, 
          syncKey: syncKey, 
          userId: 'user', 
          defaultType: type,
        );
      }

      await loadDialogueGroups();
      await loadStudyMaterials();
      await loadTags(); 
      await loadRecordsByTags(); 
      
      _statusMessage = '$mName Imported Successfully';
      notify();
      return {'success': true};
    } catch (e) {
      _statusMessage = 'Import Failed: $e';
      notify();
      return {'success': false, 'error': e.toString()};
    } finally {
      _isTranslating = false;
      notify();
  }
}
}
// End of AppStateAuth

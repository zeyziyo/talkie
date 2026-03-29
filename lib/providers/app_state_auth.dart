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
         
         final materialId = result['material_id'];
         final String? newNotebookTitle = materialId is String ? materialId : materialId?.toString();
         
         if (newNotebookTitle != null && newNotebookTitle.isNotEmpty) {
             await selectMaterial(newNotebookTitle);
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
        defaultSourceLang: _sourceLang,
        defaultTargetLang: _targetLang,
        checkDuplicate: false,
      );
      
      await loadStudyMaterials();
      await loadDialogueGroups();
      
      // Phase 8: Automatically select the newly imported material so cards show up immediately
      if (importResult['success'] == true && importResult['notebook_title'] != null) {
        final newTitle = importResult['notebook_title'].toString();
        debugPrint('[RemoteImport] Auto-selecting new material: $newTitle');
        await selectMaterial(newTitle);
      } else {
        await loadRecordsByTags();
      }
      
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
        final List<Map<String, dynamic>> rawMaterials = List<Map<String, dynamic>>.from(data['materials'] ?? []);
        
        // Phase 17469: Localize titles by fetching the 'subject' from the actual source JSON
        final String baseRepoUrl = AppConstants.materialsBaseUrl;
        
        // Parallel fetch for subjects & Strict Filtering by Native Language
        final List<Map<String, dynamic>?> filteredResults = await Future.wait(rawMaterials.map((m) async {
          try {
            final String? path = m['path'] as String?;
            if (path == null) return null;

            // Construct source URL based on current app source language (Native Language)
            final String langDir = LanguageConstants.supportedLanguages.firstWhere(
              (e) => e['code'] == _sourceLang,
              orElse: () => {'code': _sourceLang, 'name': _sourceLang == 'en' ? 'English' : _sourceLang},
            )['name']!;
            
            final String sourceUrl = '$baseRepoUrl/${Uri.encodeComponent(langDir)}/$path';
            
            final sResponse = await http.get(Uri.parse(sourceUrl)).timeout(const Duration(seconds: 5));
            if (sResponse.statusCode == 200) {
              final sData = json.decode(utf8.decode(sResponse.bodyBytes));
              final String? localizedSubject = sData['subject'] as String?;
              if (localizedSubject != null) {
                 return {...m, 'localized_name': localizedSubject};
              }
              return m; // Show original if subject missing but file exists
            } else {
              // v59 Improvement: Strict filtering. If not found in native lang folder, skip it.
              debugPrint('[Online] Material not available in $langDir: ${m['name']}');
              return null; 
            }
          } catch (e) {
            debugPrint('[Online] Filter Error for ${m['name']}: $e');
            return null;
          }
        }));

        // Remove nulls (filtered out items)
        _onlineMaterials = filteredResults.whereType<Map<String, dynamic>>().toList();
        
        // Phase 17480: Proactively repair existing local notebook titles using sync keys
        await _repairLocalTitles();
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
    final mName = material['localized_name'] as String? ?? material['name'] as String? ?? 'Unnamed Material';
    final String? relativePath = material['path'] as String?;
    
    if (relativePath == null) {
      return {'success': false, 'error': 'Missing material path'};
    }

    final String baseRepoUrl = AppConstants.materialsBaseUrl;
    // Phase 17510 (Revised): Only fetch source, target, and English (as pivot)
    final Set<String> targetLangs = {_sourceLang, _targetLang, 'en'};
    final List<String> languages = targetLangs.toList();
    
    _isTranslating = true;
    _statusMessage = 'L10N:statusDownloading|$mName';
    notify();

    try {
      final Map<String, String> langDirs = {};
      for (var code in languages) {
        langDirs[code] = LanguageConstants.supportedLanguages.firstWhere(
          (e) => e['code'] == code,
          orElse: () => {'code': code, 'name': code == 'en' ? 'English' : code},
        )['name']!;
      }

      final futures = languages.map((code) => 
        http.get(Uri.parse('$baseRepoUrl/${Uri.encodeComponent(langDirs[code]!)}/$relativePath'))
            .timeout(const Duration(seconds: 10))
            .catchError((_) => http.Response('Error', 404)) // Suppress individual timeouts
      ).toList();

      final results = await Future.wait(futures);
      
      final Map<String, Map<String, dynamic>> allData = {};
      for (int i = 0; i < languages.length; i++) {
        if (results[i].statusCode == 200) {
          try {
            allData[languages[i]] = json.decode(utf8.decode(results[i].bodyBytes));
          } catch(e) {
            debugPrint('[Import] Failed to decode ${languages[i]}: $e');
          }
        }
      }

      if (allData.isEmpty) throw Exception('Failed to download any language data');

      // v59.6: Strict Dual-Language Verification
      final hasSource = allData.containsKey(_sourceLang);
      final hasTarget = allData.containsKey(_targetLang);
      
      if (!hasSource) {
        throw Exception('Source language ($_sourceLang) data not found in repository.');
      }

      // v59.6: Handle Missing Study Language (Target Language)
      // If requested target language is not available, we return a specific signal for UI components to show a popup.
      if (!hasTarget) {
        _statusMessage = 'L10N:errStudyLangNotFound'; // Placeholder for localized error
        notify();
        return {'success': false, 'error': 'StudyLangNotFound', 'targetLang': _targetLang};
      }

      // v59.6: Pivot Role Isolation
      // 'en' is ONLY used for generating deterministic group IDs to ensure consistency across languages.
      // Data extraction (Text, Tags, Subject) is done EXCLUSIVELY from _sourceLang.
      final pivotLang = allData.containsKey('en') ? 'en' : _sourceLang;
      final pivotEntries = allData[pivotLang]!['entries'] as List? ?? [];
      
      // Source of truth for Metadata (Tags, Subject)
      final sourceData = allData[_sourceLang]!;
      final sourceEntries = sourceData['entries'] as List? ?? [];
      final sourceMeta = sourceData['meta'] as Map<String, dynamic>? ?? {};
      final targetEntries = allData[_targetLang]!['entries'] as List? ?? [];
      
      final List<Map<String, dynamic>> masterEntries = [];

      final String localType = type ?? (material['type'] as String? ?? 'word');

      for (int i = 0; i < pivotEntries.length; i++) {
        final pivotEntry = pivotEntries[i] as Map<String, dynamic>;
        final String gIdPivotText = (pivotEntry['text'] ?? '').toString();
        
        // v59.6: Deterministic Group ID generation using English pivot if available
        final int gId = UnifiedRepository.generateGroupId(
          text: gIdPivotText,
          type: localType,
        );

        // Extract Localized Data (Strictly from _sourceLang and _targetLang)
        // We assume entries are ordered identically across all files in the Online Library.
        Map<String, dynamic>? srcEntry;
        if (sourceEntries.length > i) srcEntry = sourceEntries[i] as Map<String, dynamic>;
        
        Map<String, dynamic>? tgtEntry;
        if (targetEntries.length > i) tgtEntry = targetEntries[i] as Map<String, dynamic>;

        if (srcEntry == null) continue;

        // v59.6: Strict Tag and Content Extraction from Localized Source
        final Map<String, dynamic> merged = {
          'group_id': gId,
          'source_text': srcEntry['text'] ?? '',
          'target_text': tgtEntry?['text'] ?? '',
          'note': (srcEntry['note'] ?? srcEntry['context'])?.toString() ?? '',
          'tags': srcEntry['tags'] as List? ?? [], // 100% from My Language JSON
          'pos': srcEntry['pos'] ?? sourceMeta['pos'],
          'form_type': srcEntry['form_type'] ?? sourceMeta['form_type'],
          'style': srcEntry['style'] ?? sourceMeta['style'],
          'root': srcEntry['root'] ?? sourceMeta['root'],
        };
        
        masterEntries.add(merged);
      }

      // v59.6: Strict Master Data Construction
      final Map<String, dynamic> masterData = {
        'entries': masterEntries,
        'source_language': _sourceLang,
        'target_language': _targetLang,
        'default_type': type,
        'subject': mName, 
      };

      final masterJson = json.encode(masterData);
      final syncKey = mId ?? relativePath.split('/').last.replaceAll('.json', '');
      String? localNotebookTitle;

      _statusMessage = 'L10N:importing';
      notify();

      // Phase 17522: Cleanup existing material with the same name before re-importing.
      // This prevents "ghost records" (old ID based polluting tags) from persisting 
      // when the underlying group_id generation logic or content changes.
      await DatabaseService.deleteStudyMaterial(mName);

      final result = await DatabaseService.importFromJsonWithMetadata(
        masterJson, 
        overrideSubject: mName, // Phase 17510: Use localized name as primary title
        fileName: 'remote_${mId}_merged.json',
        syncKey: syncKey, 
        userId: 'user', 
        defaultType: type,
        defaultSourceLang: _sourceLang, 
        defaultTargetLang: _targetLang, 
      );

      if (result['success'] == true) {
        localNotebookTitle = result['notebook_title']?.toString(); 
      }

      await loadDialogueGroups();
      await loadStudyMaterials();
      await loadTags(); 
      await loadStudyRecords();
      await loadRecordsByTags();
      
      _statusMessage = 'L10N:statusImportSuccess|$mName';
      notify();

      return {
        'success': true, 
        'notebook_title': localNotebookTitle,
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

  Future<void> _repairLocalTitles() async {
    if (_onlineMaterials.isEmpty) return;
    
    try {
      final db = await DatabaseService.database;
      int repairCount = 0;
      
      for (var m in _onlineMaterials) {
        final id = m['id'] as String?;
        final localizedName = m['localized_name'] as String?;
        final originalName = m['name'] as String?;
        if (id == null || localizedName == null) continue;
        
        // Phase 17480: Support for older materials that were saved with derived string sync_key instead of UUID
        final storagePath = m['path'] as String?;
        final legacySyncKey = storagePath != null && storagePath.isNotEmpty 
            ? storagePath.split('/').last.replaceAll('.json', '') 
            : 'INVALID_LEGACY_KEY';

        await db.transaction((txn) async {
          // 1. Repair Words & Sentences Meta
          // We check if tags contain the original ID (sync key) OR the legacy sync key OR exact original English title
          final wCount = await txn.rawUpdate('''
            UPDATE words_meta 
            SET notebook_title = ? 
            WHERE notebook_title != ? 
            AND (tags LIKE ? OR tags LIKE ? OR notebook_title = ?)
          ''', [localizedName, localizedName, '%"$id"%', '%"$legacySyncKey"%', originalName]);
          
          if (wCount > 0) debugPrint('[AppState] Updated $wCount words_meta for $id');
          
          final sCount = await txn.rawUpdate('''
            UPDATE sentences_meta 
            SET notebook_title = ? 
            WHERE notebook_title != ? 
            AND (tags LIKE ? OR tags LIKE ? OR notebook_title = ?)
          ''', [localizedName, localizedName, '%"$id"%', '%"$legacySyncKey"%', originalName]);
          
          if (sCount > 0) debugPrint('[AppState] Updated $sCount sentences_meta for $id');
          
          // 2. Repair Dialogue Groups
          final dCount = await txn.rawUpdate('''
            UPDATE dialogue_groups 
            SET title = ? 
            WHERE title != ? AND (note = ? OR note = ? OR title = ?)
          ''', [localizedName, localizedName, id, legacySyncKey, originalName]);
          
          if (dCount > 0) debugPrint('[AppState] Updated $dCount dialogue_groups for $id');
          
          repairCount += wCount + sCount + dCount;
        });
      }
      
      if (repairCount > 0) {
        debugPrint('[AppState] Repaired $repairCount existing material titles.');
        await loadStudyMaterials();
        await loadDialogueGroups();
      }
    } catch (e) {
      debugPrint('[AppState] Title repair failed: $e');
    }
  }

  /// Phase 17480: Global title check (Local + Online)
  /// Returns: 'local' if exists in DB, 'online' if in online library, null if unique
  Future<String?> checkTitleDuplicate(String title) async {
    final cleanTitle = title.trim();
    if (cleanTitle.isEmpty) return null;

    // 1. Check Local DB (Words, Sentences, Dialogues)
    final existsLocal = await DatabaseService.notebookTitleExists(cleanTitle);
    if (existsLocal) return 'local';

    // 2. Check Online Library (Localized Names or Subjects)
    final existsOnline = _onlineMaterials.any((m) {
      final locName = m['localized_name']?.toString().toLowerCase();
      final subject = m['subject']?.toString().toLowerCase();
      return locName == cleanTitle.toLowerCase() || subject == cleanTitle.toLowerCase();
    });
    
    if (existsOnline) return 'online';

    return null;
  }

  User? get currentUser => SupabaseAuthService.currentUser;

  Future<void> loginWithGoogle() async {
    try {
      final oldUserId = SupabaseService.client.auth.currentUser?.id;

      isLoggingIn = true; // Use dedicated loading state
      _statusMessage = 'L10N:statusLoggingIn';
      notify();

      final response = await SupabaseAuthService.signInWithGoogle();
      
      if (response != null && response.user != null) {
        await _handleAuthSuccess(oldUserId, response.user!.id);
      } else {
        _statusMessage = 'L10N:statusLoginCancelled';
      }
    } catch (e) {
      debugPrint('[AppState] Google Login Failed: $e');
      _statusMessage = 'L10N:statusLoginFailed|$e';
    } finally {
      isLoggingIn = false;
      notify();
    }
  }

  Future<void> loginWithKakao() async {
    try {
      isLoggingIn = true;
      _statusMessage = 'L10N:statusLoggingIn';
      notify();

      await SupabaseAuthService.signInWithKakao();
      
      // OAuth flows on mobile/web usually resume via deep link/redirect.
      // On Native, the call returns as soon as the browser is opened.
      // We keep isLoggingIn = true until the user returns or it times out.
      if (kIsWeb) {
        // Web redirect will reload the page, so no need to clear here.
      } else {
        // Native: Wait a bit then clear so UI isn't stuck if user cancels browser.
        // The AuthScreen will auto-pop if login succeeds before this timer.
        Future.delayed(const Duration(seconds: 30), () {
          if (isLoggingIn) {
            isLoggingIn = false;
            notify();
          }
        });
      }
    } catch (e) {
      debugPrint('[AppState] Kakao Login Failed: $e');
      _statusMessage = 'L10N:statusLoginFailed|$e';
      isLoggingIn = false;
      notify();
    }
    // Removed finally to prevent immediate isLoggingIn = false on Native
  }

  /// v15.7: Email Sign-Up with Data Merge
  Future<void> signUpWithEmail(String email, String password) async {
    try {
      final oldUserId = SupabaseService.client.auth.currentUser?.id;
      isLoggingIn = true;
      _statusMessage = 'L10N:statusSigningUp';
      notify();

      final response = await SupabaseAuthService.signUpWithEmail(email, password);
      
      if (response.user != null) {
        // If identities is empty, it means the user already exists 
        // (Supabase returns a success response with empty identities for enumeration protection)
        if (response.user!.identities?.isEmpty == true) {
          _statusMessage = 'L10N:emailAlreadyInUse';
        } else if (response.session == null) {
          // New user, email confirmation pending
          _statusMessage = 'L10N:statusCheckEmail';
        } else {
          await _handleAuthSuccess(oldUserId, response.user!.id);
        }
      }
    } catch (e) {
      debugPrint('[AppState] Email Sign-Up Failed: $e');
      _statusMessage = 'L10N:statusSignUpFailed|$e';
      rethrow;
    } finally {
      isLoggingIn = false;
      notify();
    }
  }

  /// v15.7: Email Sign-In with Data Merge
  Future<void> signInWithEmail(String email, String password) async {
    try {
      final oldUserId = SupabaseService.client.auth.currentUser?.id;
      isLoggingIn = true;
      _statusMessage = 'L10N:statusLoggingIn';
      notify();

      final response = await SupabaseAuthService.signInWithEmail(email, password);
      
      if (response.user != null) {
        await _handleAuthSuccess(oldUserId, response.user!.id);
      }
    } catch (e) {
      debugPrint('[AppState] Email Sign-In Failed: $e');
      _statusMessage = 'L10N:statusLoginFailed|$e';
      rethrow;
    } finally {
      isLoggingIn = false;
      notify();
    }
  }

  /// v15.7: Helper to handle post-auth logic (Merge & Sync)
  Future<void> _handleAuthSuccess(String? oldUserId, String newUserId) async {
    _statusMessage = 'L10N:statusLoginSuccess';
    
    if (oldUserId != null && oldUserId != newUserId) {
      debugPrint('[AppState] Triggering Data Merge: $oldUserId -> $newUserId');
      // 1. Local DB Merge
      await mergeAnonymousDataToUser(oldUserId, newUserId);
      // 2. Cloud Server Merge
      await SupabaseService.mergeUserSessions(oldUserId, newUserId);
    }
    
    // Final sync trigger is handled via the Auth Listener in AppState
  }


  Future<void> logout() async {
    await SupabaseAuthService.signOut();
    _currentChatMessages = [];
    _dialogueGroups = [];
    notify();
  }

  /// Phase 17462: Request missing translation for online material
  Future<Map<String, dynamic>> requestTranslation(String materialId, String langCode) async {
    try {
      await SupabaseService.requestTranslation(materialId, langCode);
      return {'success': true};
    } catch (e) {
      debugPrint('[AppState] Translation request failed: $e');
      return {'success': false, 'error': e.toString()};
    }
  }

  /// Pick Root Directory and Import Folders (Language/Type/File.json)
  Future<Map<String, dynamic>?> pickAndImportFolder() async {
    try {
      final String? selectedPath = await FilePicker.platform.getDirectoryPath();
      if (selectedPath == null) return null;

      _statusMessage = 'L10N:statusImportingFolder';
      notify();

      final result = await FolderImportService.importFromDirectory(
        selectedPath,
        nativeLang: _sourceLang,
        studyLang: _targetLang,
      );

      await loadStudyMaterials();
      await loadDialogueGroups();
      notify();

      return result;
    } catch (e) {
      debugPrint('[FolderImport] Error: $e');
      return {'success': false, 'error': e.toString()};
    }
  }

  /// Pick ZIP file and Import Folders (Language/Type/File.json)
  Future<Map<String, dynamic>?> pickAndImportZip() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['zip'],
        withData: true,
      );

      if (result == null || result.files.isEmpty) return null;

      final file = result.files.single;
      if (file.bytes == null) return {'success': false, 'error': 'Failed to read ZIP data'};

      _statusMessage = 'L10N:statusImportingZip';
      notify();

      final importResult = await FolderImportService.importFromZip(
        file.bytes!,
        nativeLang: _sourceLang,
        studyLang: _targetLang,
      );

      await loadStudyMaterials();
      await loadDialogueGroups();
      notify();

      return importResult;
    } catch (e) {
      debugPrint('[ZipImport] Error: $e');
      return {'success': false, 'error': e.toString()};
    }
  }
}
// End of AppStateAuth

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
        final List<Map<String, dynamic>> rawMaterials = List<Map<String, dynamic>>.from(data['materials'] ?? []);
        
        // Phase 17469: Localize titles by fetching the 'subject' from the actual source JSON
        final String baseRepoUrl = AppConstants.materialsBaseUrl;
        
        // Parallel fetch for subjects (Limit concurrent requests if needed, but for small index it's okay)
        final localizedMaterials = await Future.wait(rawMaterials.map((m) async {
          try {
            final String? path = m['path'] as String?;
            if (path == null) return m;

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
            } else if (langDir != 'English') {
              // Fallback to English if target language folder not found (e.g., 404)
              final String fallbackUrl = '$baseRepoUrl/English/$path';
              final fResponse = await http.get(Uri.parse(fallbackUrl)).timeout(const Duration(seconds: 5));
              if (fResponse.statusCode == 200) {
                final fData = json.decode(utf8.decode(fResponse.bodyBytes));
                final String? fallbackSubject = fData['subject'] as String?;
                if (fallbackSubject != null) {
                   return {...m, 'localized_name': fallbackSubject};
                }
              }
            }
          } catch (e) {
            debugPrint('[Online] Localization Error for ${m['name']}: $e');
          }
          return m; // Fallback to original name
        }));

        _onlineMaterials = localizedMaterials;
        
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
      // Phase 17480: Use actual object ID as syncKey to match _repairLocalTitles lookup logic
      final syncKey = mId ?? sPath.split('/').last.replaceAll('.json', '');
      String? localNotebookTitle;

      _statusMessage = 'L10N:importing';
      notify();

      final result = await DatabaseService.importFromJsonWithMetadata(
        masterJson, 
        fileName: 'remote_\${mId}_merged.json',
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
      await loadStudyRecords(); // Phase 15.8: Force refresh Meta for Mode 2
      await loadRecordsByTags(); // Phase 15.8: Force refresh Content for Mode 2
      
      _statusMessage = 'L10N:statusImportSuccess|$mName';
      notify();

      // Phase 97.6: Return the ACTUAL local DB ID captured during import
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
}
// End of AppStateAuth

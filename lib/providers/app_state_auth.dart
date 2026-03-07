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

      // Pivot to English if available, else whatever we got
      final baseLang = allData.containsKey('en') ? 'en' : allData.keys.first;
      final pivotEntries = allData[baseLang]!['entries'] as List? ?? [];
      
      final List<Map<String, dynamic>> masterEntries = [];
      final List<Future<void> Function()> translationTasks = [];
      final Map<int, Map<String, dynamic>> translatedDataRows = {};

      for (int i = 0; i < pivotEntries.length; i++) {
        final pivotEntry = pivotEntries[i] as Map<String, dynamic>;
        final pivotText = pivotEntry['text'] ?? '';
        final pivotNote = pivotEntry['note'] ?? pivotEntry['context'];
        final pivotMeta = pivotEntry['meta'] as Map<String, dynamic>? ?? {};
        
        translatedDataRows[i] = {
           'source_text': '',
           'target_text': '',
           'source_note': '',
           'target_note': '',
           'pos': pivotEntry['pos'] ?? pivotMeta['pos'],
           'form_type': pivotEntry['form_type'] ?? pivotMeta['form_type'],
           'style': pivotEntry['style'] ?? pivotMeta['style'],
           'root': pivotEntry['root'] ?? pivotMeta['root'],
        };
        
        // Handle Source Language
        if (allData.containsKey(_sourceLang) && (allData[_sourceLang]!['entries'] as List).length > i) {
            final srcEntry = allData[_sourceLang]!['entries'][i];
            translatedDataRows[i]!['source_text'] = srcEntry['text'] ?? '';
            translatedDataRows[i]!['source_note'] = srcEntry['note'] ?? srcEntry['context'];
        } else if (pivotText.toString().trim().isNotEmpty && baseLang == 'en') {
            final mIndex = i;
            translatedDataRows[i]!['source_text'] = pivotText;
            translatedDataRows[i]!['source_note'] = '(Translating...)';
            
            translationTasks.add(() async {
               try {
                   final result = await TranslationService.translate(
                       text: pivotText, sourceLang: 'en', targetLang: _sourceLang, note: pivotNote?.toString()
                   );
                   if (result['isValid'] == true && result['text'] != null && result['text'].toString().isNotEmpty) {
                       translatedDataRows[mIndex]!['source_text'] = result['text'];
                       translatedDataRows[mIndex]!['source_note'] = pivotNote != null ? '(EN: $pivotText) $pivotNote' : '(EN: $pivotText)';
                       translatedDataRows[mIndex]!['pos'] ??= result['pos'];
                       translatedDataRows[mIndex]!['form_type'] ??= result['formType'];
                       translatedDataRows[mIndex]!['root'] ??= result['root'];
                       translatedDataRows[mIndex]!['style'] ??= result['style'];
                   } else {
                       translatedDataRows[mIndex]!['source_note'] = '(Translation failed) $pivotNote';
                   }
               } catch (e) {
                   translatedDataRows[mIndex]!['source_note'] = '(API Error) $pivotNote';
               }
            });
        }
        
        // Handle Target Language
        if (allData.containsKey(_targetLang) && (allData[_targetLang]!['entries'] as List).length > i) {
            final tgtEntry = allData[_targetLang]!['entries'][i];
            translatedDataRows[i]!['target_text'] = tgtEntry['text'] ?? '';
            translatedDataRows[i]!['target_note'] = tgtEntry['note'] ?? tgtEntry['context'];
        } else if (pivotText.toString().trim().isNotEmpty && baseLang == 'en') {
            final mIndex = i;
            translatedDataRows[i]!['target_text'] = pivotText;
            translatedDataRows[i]!['target_note'] = '(Translating...)';
            
            translationTasks.add(() async {
               try {
                   final result = await TranslationService.translate(
                       text: pivotText, sourceLang: 'en', targetLang: _targetLang, note: pivotNote?.toString()
                   );
                   if (result['isValid'] == true && result['text'] != null && result['text'].toString().isNotEmpty) {
                       translatedDataRows[mIndex]!['target_text'] = result['text'];
                       translatedDataRows[mIndex]!['target_note'] = pivotNote != null ? '(EN: $pivotText) $pivotNote' : '(EN: $pivotText)';
                       // Only merge metadata if not already acquired by source
                       translatedDataRows[mIndex]!['pos'] ??= result['pos'];
                       translatedDataRows[mIndex]!['form_type'] ??= result['formType'];
                       translatedDataRows[mIndex]!['root'] ??= result['root'];
                       translatedDataRows[mIndex]!['style'] ??= result['style'];
                   } else {
                       translatedDataRows[mIndex]!['target_note'] = '(Translation failed) $pivotNote';
                   }
               } catch (e) {
                   translatedDataRows[mIndex]!['target_note'] = '(API Error) $pivotNote';
               }
            });
        }
      }

      // Execute Translations in Batches
      if (translationTasks.isNotEmpty) {
        _statusMessage = 'L10N:statusTranslatingMissing';
        notify();
        for (var i = 0; i < translationTasks.length; i += 10) {
          final end = (i + 10 < translationTasks.length) ? i + 10 : translationTasks.length;
          await Future.wait(translationTasks.sublist(i, end).map((f) => f()));
        }
      }

      // Build Master Entries
      for (int i = 0; i < pivotEntries.length; i++) {
        final tData = translatedDataRows[i]!;
        final pivotEntry = pivotEntries[i] as Map<String, dynamic>;
        final Map<String, dynamic> merged = Map<String, dynamic>.from(pivotEntry);
        
        // Finalize translation results into standard format
        merged['source_text'] = tData['source_text'];
        merged['target_text'] = tData['target_text'];
        merged['note'] = tData['source_note']?.isNotEmpty == true ? tData['source_note'] : tData['target_note'];
        merged['pos'] = tData['pos'] ?? merged['pos'];
        merged['form_type'] = tData['form_type'] ?? merged['form_type'];
        merged['style'] = tData['style'] ?? merged['style'];
        merged['root'] = tData['root'] ?? merged['root'];

        masterEntries.add(merged);
      }

      final Map<String, dynamic> masterData = Map<String, dynamic>.from(allData[baseLang]!);
      masterData['entries'] = masterEntries;
      masterData['source_language'] = _sourceLang;
      masterData['target_language'] = _targetLang;

      final masterJson = json.encode(masterData);
      final syncKey = mId ?? relativePath.split('/').last.replaceAll('.json', '');
      String? localNotebookTitle;

      _statusMessage = 'L10N:importing';
      notify();

      final result = await DatabaseService.importFromJsonWithMetadata(
        masterJson, 
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
}
// End of AppStateAuth

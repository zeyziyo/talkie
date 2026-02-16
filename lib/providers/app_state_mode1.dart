part of 'app_state.dart';

extension AppStateMode1 on AppState {
  /// Search for similar source texts
  Future<void> searchSimilarSources(String text) async {
    _duplicateCheckTriggered = true;
    
    // 자동 완성을 위해 최소 1글자 이상일 때만 검색 실행 (너무 빈번한 호출 방지)
    if (text.trim().isEmpty) {
      _similarSources = [];
      _showDuplicateDialog = false;
      notify();
      return;
    }

    try {
      // Phase 31: 시작 문구 기반의 자동 완성 검색으로 로직 변경
      final results = await DatabaseService.searchAutocompleteText(_sourceLang, text);
      _similarSources = results;
      
      // 입력창 근처에 목록을 띄우기 위해 상태 업데이트
      _showDuplicateDialog = false; // 자동 완성에서는 다이얼로그 대신 목록 UI 사용 예정
      notify();
    } catch (e) {
      debugPrint('[AppState] Error searching similar sources: $e');
      _similarSources = [];
      notify();
    }
  }

  /// Check if translation exists, including note check
  Future<void> _checkDuplicate() async {
    if (_selectedSourceId == null) return;
    
    // Check if translation exists with same note
    final existing = await DatabaseService.getTranslationIfExists(
      _sourceLang, 
      _selectedSourceId!, 
      _targetLang, 
      note: _note
    );
    
    if (existing != null) {
      // Restore existing translation
      _translatedText = existing['target_text'];
      _isSaved = true; // Mark as saved since it exists
      
      // If note differs (was null vs empty?), update UI note?
      if (existing['note'] != null) {
        _note = existing['note'];
      }
      
      _statusMessage = 'Saved translation found.';
    } else {
       _isSaved = false;
    }
    notify();
  }

  void selectSource(Map<String, dynamic> source) {
    _selectedSourceId = source['id'] as int;
    _sourceText = source['text'] as String;
    
    // Sync Metadata from Autocomplete Result
    _sourcePos = source['pos'] as String? ?? '';
    _sourceFormType = source['form_type'] as String? ?? '';
    _sourceRoot = source['root'] as String? ?? '';
    _sourceStyle = source['style'] as String? ?? '';
    _note = source['note'] as String? ?? '';

    // Reset translation state for new source selection? 
    // Or check if translation exists for this source + current note?
    // Let's trigger check.
    _duplicateCheckTriggered = false;
    _checkDuplicate(); 
    
    notify();
  }

  /// Translate text with duplicate detection and reuse
  /// Returns an error string if validation fails, or null if successful/loaded.
  Future<String?> translate({BuildContext? context}) async {
    if (_sourceText.isEmpty) {
      _statusMessage = '번역할 텍스트를 입력하세요';
      notify();
      return null;
    }
    
    try {
      _isTranslating = true;
      _statusMessage = '확인 중...';
      _showDisambiguationDialog = false;
      _disambiguationOptions = [];
      _showDuplicateDialog = false;
      notify();

      // 0. Check Limits (NEW)
      await _usageService.checkLimitOrThrow();
      
      // 0. Duplicate Check (Triggered ONLY once per text change)
      if (_selectedSourceId == null && !_duplicateCheckTriggered) {
        await searchSimilarSources(_sourceText);
        
        if (_similarSources.isNotEmpty) {
          _isTranslating = false;
          _duplicateCheckTriggered = true; 
          _statusMessage = '유사한 문장이 발견되었습니다';
          _showDuplicateDialog = true; // Fix: Show dialog logic
          notify();
          return null; 
        }
      }

      // 1. Save or reuse source text
      int? sourceId = _selectedSourceId;
      if (sourceId != null) {
        debugPrint('[AppState] Reusing existing source: id=$sourceId');
      }
      
      // 2. Check if translation already exists
      _statusMessage = '번역 확인 중...';
      notify();
      
      final existingTranslation = (sourceId != null) 
        ? await DatabaseService.getTranslationIfExists(
            _sourceLang,
            sourceId,
            _targetLang,
            note: _note
          ) 
        : null;
      
      if (existingTranslation != null) {
        final loadedText = existingTranslation['target_text'] as String;
        // Check for 'poisoned' cache (old error messages saved as text)
        if (!loadedText.startsWith('Filtered:') && !loadedText.startsWith('Error:')) {
          _translatedText = loadedText;
          _isTranslating = false;
          _statusMessage = '저장된 번역 불러옴';
          notify();
          return null;
        }
        debugPrint('[AppState] Invalid DB record ignored: $loadedText');
      }
      
      // 3. Translation doesn't exist - call API
      _statusMessage = '번역 중...';
      notify();
      
      final result = await TranslationService.translate(
        text: _sourceText,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
        note: _note.isNotEmpty ? _note : null,
      );
      
      // Handle Success or Failure
      final isValid = result['isValid'] as bool? ?? false;
      
      if (!isValid) {
        // Handle Error Logic with Localization
        final reason = result['reason'] as String? ?? 'OTHER';
        String errorMsg = reason;
        
      if (context != null && context.mounted) {
        final l10n = AppLocalizations.of(context);
        if (l10n != null) {
          errorMsg = TranslationService.getErrorMessage(reason, l10n);
        }
      }
        
        // Return error message for UI to display in dialog
        // DO NOT set _translatedText to error message
        _translatedText = ''; // Clear result to disable Save button
        _statusMessage = '번역 거부';
        _isTranslating = false;
        _isSaved = false;
        notify();
        return errorMsg;
      }

      _translatedText = result['text'] as String;
      // Phase 76: Store English pivot for shared dictionary linking
      _englishText = result['englishText'] as String? ?? '';
      
      // Handle Note / Disambiguation
      final autoNote = result['note'] as String?;
      final options = result['disambiguationOptions'] as List<String>?;
      
      if (options != null && options.isNotEmpty && _note.isEmpty) {
        _disambiguationOptions = options;
        _showDisambiguationDialog = true;
        _note = ''; 
        if (autoNote != null) {
          _note = autoNote;
        }
      }

      // 4. AI 분석 결과 처리 (User Input 검증 및 별도 태그 처리)
      final rawPos = result['pos'] as String? ?? '';
      final rawForm = result['formType'] as String? ?? '';
      final rawRoot = result['root'] as String? ?? '';

      // POS: Only fill if empty AND valid
      if (_sourcePos.isEmpty && AppState.posCategories.contains(rawPos)) {
        _sourcePos = rawPos;
      }

      // FormType: Check validity
      bool isValidForm = AppState.sentenceCategories.contains(rawForm) ||
                         AppState.verbFormCategories.contains(rawForm) ||
                         AppState.adjectiveFormCategories.contains(rawForm) ||
                         AppState.pronounCaseCategories.contains(rawForm);

      if (_sourceFormType.isEmpty && isValidForm) {
        _sourceFormType = rawForm;
      } else if (!isValidForm && rawForm.toLowerCase() == 'formal') {
        // Special Case: 'formal' -> Add to specialized tags, don't clobber FormType
        if (!_aiDetectedTags.contains('formal')) {
          _aiDetectedTags.add('formal');
        }
      }
      
      // Root: Only fill if empty
      if (_sourceRoot.isEmpty) {
        _sourceRoot = rawRoot;
      }
      
      // Phase 98.1: Style (formality for sentences)
      final rawStyle = result['style'] as String? ?? '';
      if (_sourceStyle.isEmpty && rawStyle.isNotEmpty) {
        _sourceStyle = rawStyle;
      }
      
      // 5. Increment Usage (NEW)
      await _usageService.incrementUsage();
      
      // Auto-save translation
      _isTranslating = false;
      _statusMessage = '번역 완료 (저장 필요)';
      _isSaved = false; // Reset save state for new translation
      notify();
    } catch (e) {
      _isTranslating = false;
      if (e is LimitReachedException) {
        _statusMessage = '일일 번역 한도 초과';
        debugPrint('[AppState] Limit reached: $e');
        rethrow;
      } else {
        _statusMessage = '번역 실패: $e';
      }
      notify();
      rethrow;
    }
    return null;
  }

  /// Phase 98: Helper to save to Supabase (Dual Write with type branching + tag separation)
  Future<void> _saveToSupabase({
    required String? dialogueId, 
    required String speaker, 
    required int sequenceOrder,
    int? groupId, // Phase 106: Accept canonical ID
    String? pos,
    String? formType,
    String? root,
  }) async {
      final authorId = SupabaseService.client.auth.currentUser?.id;

      if (authorId == null) return;

      try {
        final gId = groupId ?? DateTime.now().millisecondsSinceEpoch;
        final itemType = _isWordMode ? 'word' : 'sentence';
        final tableName = itemType == 'word' ? 'words' : 'sentences';
        
        // Phase 98: Separate title tags from general tags
        final materialSubjects = _studyMaterials.map((m) => m['subject'] as String).toSet();
        final allTags = <String>[];
        if (_selectedSaveSubject.isNotEmpty) allTags.add(_selectedSaveSubject);
        
        final titleTags = allTags.where((t) => materialSubjects.contains(t)).toList();
        final generalTags = allTags.where((t) => !materialSubjects.contains(t)).toList();
        
        // 1. Phase 98.1: Build type-specific data for correct table
        final data = <String, dynamic>{
          'lang_code': _targetLang,
          'text': _translatedText,
          'group_id': gId,
          'pos': pos,
          'tags': generalTags.isNotEmpty ? generalTags : null,
          'author_id': authorId,
          'status': 'approved',
        };

        if (itemType == 'word') {
          data['form_type'] = formType;
          data['root'] = root;
        } else {
          data['style'] = _sourceStyle.isNotEmpty ? _sourceStyle : null;
        }

        await SupabaseService.client.from(tableName).insert(data);

        // 2. Add to User Library with title tags (personal) + dialogue metadata
        await SupabaseService.client.from('user_library').insert({
          'user_id': authorId,
          'group_id': gId,
          'personal_note': _note.isNotEmpty ? _note : null,
          'material_tags': titleTags.isNotEmpty ? titleTags : null,
          'dialogue_id': dialogueId,
          'speaker': speaker,
          'sequence_order': sequenceOrder,
        });

        debugPrint('[AppState] Supabase Cloud Sync Successful: table=$tableName, groupId=$gId, titleTags=$titleTags, generalTags=$generalTags');
      } catch (e) {
        debugPrint('[AppState] Supabase background save failed: $e');
      }
  }

  /// Save translation (Dual Write: Local DB Unified + Supabase)
  Future<void> saveTranslation({List<String>? tags}) async {
    if (_translatedText.isEmpty) {
      _statusMessage = '저장할 번역이 없습니다';
      notify();
      return;
    }
    
    _statusMessage = '저장 중...';
    notify();

    try {
      // Phase 81.4: Use Centralized Service for Better Reliability
      final itemType = _isWordMode ? 'word' : 'sentence';
      final finalTags = tags ?? [];
      
      // Phase 120: Remove automatic 'Dialogue' tag injection in manual input mode.
      // Chat messages have their own explicit tagging in AppStateChat.
      
      // Add the User-Selected Material Subject as a Tag for Filtering
      String subjectToSave = _selectedSaveSubject;
      // Phase 81.5/96: Enforce localized default titles using AppConstants
      if (subjectToSave.isEmpty || subjectToSave == 'Basic') {
        if (_sourceLang == 'ko') {
          subjectToSave = _isWordMode ? AppConstants.defaultWordbookKo : AppConstants.defaultSentenceBookKo;
        } else {
          subjectToSave = _isWordMode ? AppConstants.defaultWordbookEn : AppConstants.defaultSentenceBookEn;
        }
      }

      if (!finalTags.contains(subjectToSave)) {
        finalTags.add(subjectToSave);
      }

      // Phase 116: Ensure the material subject exists in study_materials table
      // This ensures it appears in the "Title Tag (Material)" dropdown in Mode 2/3 filter
      await DatabaseService.createStudyMaterial(
        subject: subjectToSave,
        source: 'User Input',
        sourceLanguage: _sourceLang,
        targetLanguage: _targetLang,
        createdAt: DateTime.now().toIso8601String(),
      );

      // Phase 77: Pivot Strategy (Internal key check for linking)
      String? syncKey;
      if (_englishText.isNotEmpty) {
        syncKey = _englishText;
      } else if (_sourceLang == 'en') {
        syncKey = _sourceText;
      } else if (_targetLang == 'en') {
        syncKey = _translatedText;
      }

      final timestamp = await DatabaseService.saveUnifiedRecord(
        text: _sourceText, 
        lang: _sourceLang, 
        translation: _translatedText, 
        targetLang: _targetLang, 
        type: itemType,
        pos: _sourcePos.isNotEmpty ? _sourcePos : null,
        formType: _sourceFormType.isNotEmpty ? _sourceFormType : null,
        root: _sourceRoot.isNotEmpty ? _sourceRoot : null,
        style: _sourceStyle.isNotEmpty ? _sourceStyle : null, // Phase 98.1
        note: _note.isNotEmpty ? _note : null,
        tags: finalTags,
        syncSubject: syncKey,
      );

      debugPrint('[AppState] Local unified save (via Service) successful: $timestamp');
      
      // 2. Supabase Save (Cloud Sync)
      try {
        // Phase 106: Resolve Canonical ID before cloud sync
        final canonicalId = await SupabaseService.resolveCanonicalGroupId(
          sourceText: _sourceText,
          sourceLang: _sourceLang,
          targetText: _translatedText,
          targetLang: _targetLang,
          englishText: _englishText.isNotEmpty ? _englishText : null,
          type: itemType,
          pos: _sourcePos,
          formType: _sourceFormType,
          root: _sourceRoot,
          style: _sourceStyle,
          note: _note,
        );

        if (canonicalId != timestamp) {
          // Phase 120: Relink local temporary ID to canonical ID
          // Avoid second saveUnifiedRecord call to prevent UI duplication
          await DatabaseService.relinkGroupId(timestamp, canonicalId);
        }

        await _saveToSupabase(
          dialogueId: _activeDialogueId,
          speaker: _activeDialogueId != null ? 'User' : '',
          sequenceOrder: _activeDialogueId != null ? _currentDialogueSequence : 0,
          groupId: canonicalId, // Phase 106: Pass canonical ID
          pos: _sourcePos,
          formType: _sourceFormType,
          root: _sourceRoot,
        );
      } catch (e) {
        debugPrint('[AppState] Supabase Cloud Sync failed (Phase 106): $e');
      }

      _statusMessage = '저장 완료!';
      _isSaved = true; 
      
      // Refresh Lists Immediately
      await loadTags(); 
      await loadStudyMaterials(); 
      await loadRecordsByTags(); 
      
      notify();
    } catch (e) {
      _statusMessage = '저장 실패: $e';
      notify();
      debugPrint('[AppState] Error saving translation: $e');
    }
  }

  /// Speak translated text with audio storage
  Future<void> speak() async {
    if (_translatedText.isEmpty) {
      _statusMessage = '재생할 텍스트가 없습니다';
      notify();
      return;
    }
    
    try {
      _isSpeaking = true;
      _statusMessage = '재생 중...';
      notify();
      
      await _speechService.speak(
        _translatedText,
        lang: getServiceLocale(_targetLang),
      );
      
      _isSpeaking = false;
      _statusMessage = ''; 
      notify();
    } catch (e) {
      _isSpeaking = false;
      _statusMessage = '재생 실패: $e';
      notify();
    }
  }

  /// Stop speaking
  Future<void> stopSpeaking() async {
    await _speechService.stopSpeaking();
    _isSpeaking = false;
    _statusMessage = '';
    notify();
  }

  Future<void> fetchAiRecommendations() async {
    try {
      _isRecommendationLoading = true;
      notify();

      // Get recent 10 items from local DB for context
      final db = await DatabaseService.database;
      final history = await db.query('words', limit: 10, orderBy: 'created_at DESC');
      
      final result = await SupabaseService.getRecommendations(
        history: history,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
      );

      _recommendedItems = List<Map<String, dynamic>>.from(result['recommendations'] ?? []);
      _isRecommendationLoading = false;
      notify();
    } catch (e) {
      debugPrint('[AppState] Recommendation Error: $e');
      _isRecommendationLoading = false;
      notify();
    }
  }

  Future<void> saveRecommendedItem(Map<String, dynamic> item) async {
    try {
      _sourceText = item['sourceText'] as String;
      _translatedText = item['translatedText'] as String;
      _sourcePos = item['pos'] as String? ?? '';
      _sourceFormType = item['formType'] as String? ?? '';
      _sourceRoot = item['root'] as String? ?? '';
      _note = item['explanation'] as String? ?? '';
      
      // Auto-tag as #Recommendation
      _selectedTags = ['추천'];
      
      await saveTranslation();
      
      // Remove from recommended list after saving
      _recommendedItems.remove(item);
      notify();
    } catch (e) {
      debugPrint('[AppState] Error saving recommended item: $e');
    }
  }

  void updateTranslatedText(String newText) {
    _translatedText = newText;
  }

  Future<List<Map<String, dynamic>>> searchMatchingRoots(String query) async {
    return await DatabaseService.searchWords(query);
  }

  Future<List<Map<String, dynamic>>> searchByType(String query) async {
    // Current Type (Word or Sentence)
    final type = _recordTypeFilter == 'word' ? 'word' : 'sentence';
    // Phase 79: Respect Current Source Language for Autocomplete
    return await DatabaseService.searchByType(query, type, langCode: _sourceLang);
  }

  /// Jump to result: Just set query and clear tags. 
  /// Type switching is NOT needed because we only search within the current tab.
  void jumpToSearchResult(String text, String type) {
    if (type == 'material') {
      // Find material by title and select it
      final material = _studyMaterials.firstWhere((m) => m['subject'] == text, orElse: () => {});
      if (material.isNotEmpty) {
        _selectedMaterialId = material['id'] as int;
        _selectedTags = [text];
        _searchQuery = ''; // Clear text search to show material items
        loadRecordsByTags(); // Phase 113: Ensure UI updates immediately
      }
    } else {
      _selectedTags.clear(); // Clear tag filters to show result
      _selectedMaterialId = null; 
      setSearchQuery(text); // This calls loadRecordsByTags
    }
    notify();
  }
  
  void closeDuplicateDialog() {
    _showDuplicateDialog = false;
    notify();
  }

  Future<void> selectExistingSource(int id) async {
    _selectedSourceId = id;
    _showDuplicateDialog = false;
    _duplicateCheckTriggered = false; 
    
    // Phase 129: Use Repository to fetch data correctly (parses data_json)
    // Note: 'id' here might be group_id if it came from searchAutocomplete?
    // searchAutocompleteText returns 'group_id'. Let's assume id is group_id.
    
    final results = await SentenceRepository.getSentencesByGroupId(id);
    
    if (results.isNotEmpty) {
      // Find the source lang entry
      final match = results.firstWhere(
        (r) => r['lang_code'] == _sourceLang, 
        orElse: () => results.first // Fallback
      );

      _sourceText = match['text'] as String;
      _sourcePos = match['pos'] as String? ?? '';
      _sourceFormType = match['form_type'] as String? ?? ''; // sentences might not have form_type but let's keep safe
      _sourceRoot = match['root'] as String? ?? '';
    }
    
    notify();
    await translate();
  }

  void createNewSource() {
    _selectedSourceId = null;
    _showDuplicateDialog = false;
    _duplicateCheckTriggered = true; 
    notify();
    translate();
  }
}

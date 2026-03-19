part of 'app_state.dart';

extension AppStateMode2 on AppState {
  /// Load all study records from Supabase
  Future<void> loadStudyRecords() async {
    try {
      final userId = SupabaseService.client.auth.currentUser?.id;
      if (userId == null) {
        _studyRecords = [];
        notify();
        return;
      }

      // 1. Fetch User's Library (Groups)
      final table = _recordTypeFilter == 'word' ? 'user_words_meta' : 'user_sentences_meta';
      
      final libraryResponse = await SupabaseService.client
          .from(table)
          .select()
          .eq('user_id', userId)
          .order('created_at', ascending: false);

      final libraryEntries = libraryResponse as List;
      
      if (libraryEntries.isEmpty) {
        _studyRecords = [];
        notify();
        return;
      }

      // 2. Fetch Sentences for these groups
      final groupIds = libraryEntries.map((e) => e['group_id'] as int).toList();
      
      final sentencesResponse = await SupabaseService.client
          .from('public_sentences')
          .select()
          .filter('group_id', 'in', groupIds);
          
      final allSentences = (sentencesResponse as List).map((e) => Sentence.fromJson(e)).toList();

      // 3. Assemble Data (Map UserLibrary + Source Sentence + Target Sentence)
      List<Map<String, dynamic>> combinedRecords = [];
      
      for (var entry in libraryEntries) {
        final groupId = entry['group_id'] as int;
        final groupSentences = allSentences.where((s) => s.groupId == groupId).toList();
        
        final sourceSentence = groupSentences.firstWhere(
          (s) => s.langCode == _sourceLang,
          orElse: () => Sentence(id: -1, groupId: -1, langCode: 'unknown', text: 'Unknown', createdAt: DateTime.now()),
        );
        
        final targetSentence = groupSentences.firstWhere(
          (s) => s.langCode == _selectedReviewLanguage,
          orElse: () => Sentence(id: -1, groupId: -1, langCode: 'unknown', text: '', createdAt: DateTime.now()),
        );
        
        if (targetSentence.id == -1) continue;
        if (sourceSentence.id == -1) continue;

        combinedRecords.add({
          'id': groupId,
          'library_uuid': entry['id']?.toString() ?? '',
          'group_id': groupId,
          'source_lang': sourceSentence.langCode,
          'target_lang': targetSentence.langCode,
          'source_text': sourceSentence.text,
          'target_text': targetSentence.text,
          'personal_note': entry['personal_note'] as String?,
          'created_at': entry['created_at'],
          'review_count': entry['review_count'] as int? ?? 0,
          'last_reviewed': entry['last_reviewed'],
        });
      }

      _studyRecords = combinedRecords;
      notify();
    } catch (e) {
      debugPrint('[AppState] Error loading study records (Supabase): $e');
      _studyRecords = []; 
      notify();
    }
  }

  /// Set review language filter
  void setReviewLanguage(String lang) {
    _selectedReviewLanguage = lang;
    loadStudyRecords(); // Reload with new filter
  }

  /// Play TTS for a study record
  Future<void> playRecordTts(String text, String lang) async {
    try {
      await _speechService.speak(text, lang: getServiceLocale(lang));
    } catch (e) {
      debugPrint('[AppState] Error playing TTS: $e');
      handleTtsError(e);
    }
  }

  /// Increment review count (Supabase)
  Future<void> reviewRecord(int groupId) async {
    try {
      final userId = SupabaseService.client.auth.currentUser?.id;
      if (userId == null) return;
      
      final table = _recordTypeFilter == 'word' ? 'user_words_meta' : 'user_sentences_meta';
      
      final current = await SupabaseService.client
          .from(table)
          .select('review_count')
          .eq('user_id', userId)
          .eq('group_id', groupId)
          .single();

      await SupabaseService.client
          .from(table)
          .update({
            'review_count': (current['review_count'] as int? ?? 0) + 1,
            'last_reviewed': DateTime.now().toIso8601String(),
          })
          .eq('user_id', userId)
          .eq('group_id', groupId);

      await loadStudyRecords(); // Reload to update UI
    } catch (e) {
      print('Supabase Review Function Error: $e');
    }
  }

  /// Delete a record (Local + Supabase)
  Future<void> deleteRecord(int groupId) async {
    try {
       debugPrint('[AppState] Deleting unified record: groupId=$groupId');

       final db = await DatabaseService.database;
       
       await db.transaction((txn) async {
         // Phase 129: Delete from Content & Meta tables
         await txn.delete('words', where: 'group_id = ?', whereArgs: [groupId]);
         await txn.delete('words_meta', where: 'group_id = ?', whereArgs: [groupId]);
         
         await txn.delete('sentences', where: 'group_id = ?', whereArgs: [groupId]);
         await txn.delete('sentences_meta', where: 'group_id = ?', whereArgs: [groupId]);
         
         // Phase 129: item_tags removed. Meta tags deleted with meta.
       });

       final userId = SupabaseService.client.auth.currentUser?.id;
       if (userId != null) {
          try {
             final table = _recordTypeFilter == 'word' ? 'user_words_meta' : 'user_sentences_meta';
             await SupabaseService.client
                .from(table)
                .delete()
                .eq('user_id', userId)
                .eq('group_id', groupId);
          } catch (e) {
             debugPrint('[AppState] Supabase delete failed: $e');
          }
       }
      
      await loadStudyRecords(); 
      await loadRecordsByTags();
      await loadTags();
    } catch (e) {
      debugPrint('[AppState] Error deleting record: $e');
      rethrow;
    }
  }

  /// 태그 목록 로드
  Future<void> loadTags() async {
    try {
      _availableTags = await DatabaseService.getAllTagsForLanguage(_sourceLang);
      notify();
    } catch (e) {
      debugPrint('[AppState] Error loading tags: $e');
    }
  }

  /// 태그 선택 토글
  void toggleTag(String tag) {
    if (_selectedTags.contains(tag)) {
      _selectedTags.remove(tag);
    } else {
      _selectedTags.add(tag);
    }
    loadRecordsByTags();
    notify();
  }

  /// 태그 목록 일괄 업데이트
  void updateSelectedTags(List<String> tags) {
    _selectedTags.clear();
    _selectedTags.addAll(tags);
    
    // Phase 160: Sync _selectedNotebookTitle if a material tag is found
    final subjects = _studyMaterials.map((m) => m['subject'] as String).toList();
    _selectedNotebookTitle = tags.any((t) => subjects.contains(t)) 
        ? tags.firstWhere((t) => subjects.contains(t)) 
        : null;
    
    loadRecordsByTags();
    notify();
  }

  /// 모든 검색 조건 초기화
  void clearSearchConditions() {
    _selectedTags.clear();
    _filterLimit = null;
    _filterStartsWith = null;
    loadRecordsByTags();
    notify();
  }

  void setFilterLimit(int? limit) {
    _filterLimit = limit;
    loadRecordsByTags();
    notify();
  }

  void setFilterStartsWith(String? text) {
    _filterStartsWith = text;
    loadRecordsByTags();
    notify();
  }

  void setSearchQuery(String query) {
    _searchQuery = query;
    loadRecordsByTags();
    notify();
  }

  /// 태그 및 검색어 기반 레코드 로드
  Future<void> loadRecordsByTags() async {
    try {
      final db = await DatabaseService.database;
      List<dynamic> whereArgs = [];
      final String table = _recordTypeFilter == 'word' ? 'words' : 'sentences';
      final String metaTable = _recordTypeFilter == 'word' ? 'words_meta' : 'sentences_meta';
      final String itemType = _recordTypeFilter == 'word' ? 'word' : 'sentence';

      // Phase 129: JOIN with Meta Table
      String query = 'SELECT t.*, m.notebook_title, m.tags as meta_tags, m.is_memorized, m.review_count, m.last_reviewed '
                     'FROM $table t '
                     'JOIN $metaTable m ON t.group_id = m.group_id ';
      
      List<String> conditions = [];
      
      // Phase 120: 소스 언어 포함 여부 확인 (JSON 내부)
      conditions.add("json_extract(t.data_json, '\$.' || ? || '.text') IS NOT NULL");
      whereArgs.add(_sourceLang);
      
      if (_selectedTags.isNotEmpty) {
        // Phase 129/17520: Search in both notebook_title and tags column
        // Tags are stored as "tag1,tag2". We check for exact match in title OR partial match in CSV tags
        for (var tag in _selectedTags) {
          conditions.add("(m.notebook_title = ? OR ',' || m.tags || ',' LIKE ?)");
          whereArgs.add(tag); // For notebook_title = ?
          whereArgs.add('%,$tag,%'); // For LIKE ?
        }
      }
      
      if (_searchQuery.isNotEmpty) {
        // Phase 17500: Use json_extract to precisely target text fields in both languages
        conditions.add("(json_extract(t.data_json, '\$.' || ? || '.text') LIKE ? OR json_extract(t.data_json, '\$.' || ? || '.text') LIKE ?)");
        whereArgs.add(_sourceLang);
        whereArgs.add('%$_searchQuery%');
        whereArgs.add(_targetLang);
        whereArgs.add('%$_searchQuery%');
      }
      
      if (_filterStartsWith != null && _filterStartsWith!.isNotEmpty) {
        conditions.add("json_extract(t.data_json, '\$.' || ? || '.text') LIKE ?");
        whereArgs.add(_sourceLang);
        whereArgs.add('$_filterStartsWith%');
      }

      if (!_showMemorized) {
        // Phase 129: Use meta table column
        conditions.add('(m.is_memorized IS NULL OR m.is_memorized = 0)');
      }
      
      if (conditions.isNotEmpty) {
         query += 'WHERE ${conditions.join(' AND ')} ';
      }
      
      // Phase 120: group_id가 PK이므로 GROUP BY 불필요
      query += 'ORDER BY t.created_at DESC ';

      if (_filterLimit != null) {
        query += 'LIMIT ? ';
        whereArgs.add(_filterLimit);
      }

      final List<Map<String, dynamic>> results = await db.rawQuery(query, whereArgs);
      debugPrint('[AppState] loadRecordsByTags: table=$table, recordsFound=${results.length}, sourceLang=$_sourceLang, selectedTags=$_selectedTags, query=$query');

      if (results.isEmpty) {
        _materialRecords = [];
        notify();
        return;
      }

      List<Map<String, dynamic>> pairedResults = [];
      
      for (var row in results) {
        final groupId = row['group_id'] as int;
        final Map<String, dynamic> data = jsonDecode(row['data_json'] as String);
        
        // Parse tags from meta
        final String tagsStr = row['meta_tags'] as String? ?? '';
        final List<String> recordTags = tagsStr.split(',').where((t) => t.isNotEmpty).toList();
        
        // Localize tags? Currently tags are shared strings.
        // We just assign them to source/target for UI compatibility.
        final sourceTags = recordTags;
        final targetTags = recordTags;
        
        final sourceData = data[_sourceLang] as Map<String, dynamic>? ?? {};
        Map<String, dynamic> targetData = data[_targetLang] as Map<String, dynamic>? ?? {};
        bool isPivot = false;

        if (targetData.isEmpty && _targetLang != 'en') {
          targetData = data['en'] as Map<String, dynamic>? ?? {};
          if (targetData.isNotEmpty) isPivot = true;
        }

        pairedResults.add({
          'id': groupId, 
          'group_id': groupId,
          'type': itemType, 
          'source_lang': _sourceLang,
          'target_lang': _targetLang,
          'source_text': sourceData['text'] ?? '',
          'target_text': targetData['text'] ?? '', 
          'is_pivot': isPivot,
          'note': sourceData['note'] ?? targetData['note'],
          'root': sourceData['root'],
          'source_tags': sourceTags, 
          'target_tags': targetTags, 
          'tags': sourceTags, 
          'created_at': row['created_at'],
          'review_count': row['review_count'] ?? 0,
          'is_memorized': row['is_memorized'] == 1, 
        });
      }

      _materialRecords = pairedResults;
      notify();
    } catch (e) {
      debugPrint('[AppState] Error loading records by tags: $e');
    }
  }


  /// Toggle is_memorized status (Target Only)
  Future<void> toggleMemorizedStatus(int id, bool currentStatus) async {
    final newStatus = !currentStatus;

    // Phase 17469: Optimistic Update - Update local list immediately for instant feedback
    final index = _materialRecords.indexWhere((r) => r['id'] == id);
    if (index != -1) {
      final updatedRecord = Map<String, dynamic>.from(_materialRecords[index]);
      updatedRecord['is_memorized'] = newStatus;
      _materialRecords[index] = updatedRecord;
      notify();
    }

    final type = _recordTypeFilter == 'word' ? 'word' : 'sentence';
    await DatabaseService.toggleMemorizedStatus(id, type, newStatus);
    
    if (_currentMode3Question != null) {
      final currentTargetId = _currentMode3Question!['target_id'] as int? ?? _currentMode3Question!['id'] as int;
      if (currentTargetId == id) {
         final newMap = Map<String, dynamic>.from(_currentMode3Question!);
         newMap['is_memorized'] = newStatus;
         _currentMode3Question = newMap;
         notify(); 
      }
    }

    // Phase 17469: Visual Buffer - If the item is being marked as memorized and we are in "hide memorized" mode,
    // wait for a short duration so the user can see the checkmark before the item disappears.
    if (!_showMemorized && newStatus) {
      await Future.delayed(const Duration(milliseconds: 500));
    }

    await loadRecordsByTags();
  }


  /// Phase 33: Sync User's Cloud Library to Local (v15.4)
  Future<void> syncCloudLibraryToLocal() async {
    final userId = SupabaseService.client.auth.currentUser?.id;
    if (userId == null) return;

    try {
      // 1. Fetch User's Meta from Cloud (Both Tables)
      final wordsResponse = await SupabaseService.client
          .from('user_words_meta')
          .select()
          .eq('user_id', userId);
          
      final sentencesResponse = await SupabaseService.client
          .from('user_sentences_meta')
          .select()
          .eq('user_id', userId);

      final List cloudLibrary = [...(wordsResponse as List), ...(sentencesResponse as List)];
      if (cloudLibrary.isEmpty) return;

      debugPrint('[AppState] Syncing ${cloudLibrary.length} items from cloud library...');

      for (var entry in cloudLibrary) {
        final int groupId = entry['group_id'];
        final List<String> tags = (entry['tags'] is List)
            ? List<String>.from(entry['tags'] as List)
            : (entry['tags'] as String?)?.split(',').where((t) => t.isNotEmpty).toList() ?? [];

        // Check if exists locally (Phase 129: check meta)
        final db = await DatabaseService.database;
        final existing = await db.query('sentences_meta', where: 'group_id = ?', whereArgs: [groupId], limit: 1);
        final existingWord = await db.query('words_meta', where: 'group_id = ?', whereArgs: [groupId], limit: 1);

        if (existing.isEmpty && existingWord.isEmpty) {
          // 2. Fetch missing content from cloud global tables
          // Determine type (check words first, then sentences)
          var contentResponse = await SupabaseService.client.from('public_words').select().eq('group_id', groupId);
          String type = 'word';
          if ((contentResponse as List).isEmpty) {
            contentResponse = await SupabaseService.client.from('public_sentences').select().eq('group_id', groupId);
            type = 'sentence';
          }

          final List contentList = contentResponse as List;
          if (contentList.isNotEmpty) {
            // 3. Save to local DB using Repository logic
            // We need to group them by language to use saveUnifiedRecord or similar
            final first = contentList.first;
            // Actually saveUnifiedRecord expects source, target and translation
            // Let's use a simpler insert if we have the full data
            
            // Reconstruct data_json map
            Map<String, Map<String, dynamic>> dataMap = {};
            for (var c in contentList) {
               dataMap[c['lang_code']] = {
                 'text': c['text'],
                 'note': c['note'],
                 'root': c['root'],
               };
            }

            final String table = type == 'word' ? 'words' : 'sentences';
            final String metaTable = type == 'word' ? 'words_meta' : 'sentences_meta';

            await db.transaction((txn) async {
              await txn.insert(table, {
                'group_id': groupId,
                'data_json': jsonEncode(dataMap),
                'created_at': first['created_at'] ?? DateTime.now().toIso8601String(),
              }, conflictAlgorithm: ConflictAlgorithm.ignore);

              // Use primary language as base for meta
              final baseLang = dataMap.containsKey(_sourceLang) ? _sourceLang : dataMap.keys.first;

              await txn.insert(metaTable, {
                'group_id': groupId,
                'source_lang': baseLang,
                'target_lang': _targetLang,
                'tags': tags.join(','),
                'is_memorized': 0,
                'is_synced': 1,
                'created_at': DateTime.now().toIso8601String(),
              }, conflictAlgorithm: ConflictAlgorithm.ignore);
            });
          }
        }
      }
      debugPrint('[AppState] Cloud Library Sync Finished.');
    } catch (e) {
      debugPrint('[AppState] Cloud Library Sync Failed: $e');
    }
  }

  Future<void> loadStudyMaterials() async {
    await loadTags(); 
    // Phase 33: Also sync from cloud if logged in (v15.4)
    if (SupabaseService.client.auth.currentUser != null && !SupabaseService.client.auth.currentUser!.isAnonymous) {
      syncCloudLibraryToLocal().then((_) => loadRecordsByTags());
    }
    
    // v59.1: Force load and always auto-select the most recent material (first in the sorted list)
    _studyMaterials = await DatabaseService.getStudyMaterials(type: _recordTypeFilter, langCode: _sourceLang); 

    if (_studyMaterials.isNotEmpty) {
      final latestSubject = _studyMaterials.first['subject'] as String;
      // If none selected or if we need to enforce "always select latest" on refresh
      if (_selectedNotebookTitle != latestSubject) {
        debugPrint('[AppState] Auto-selecting most recent material: $latestSubject');
        selectMaterial(latestSubject);
      }
    }
    
    notify();
  }

  /// 특정 자료집(노트북)에 해당하는 태그 목록 조회
  Future<List<String>> getTagsForNotebook(String notebookTitle) async {
    return await DatabaseService.getTagsForNotebook(notebookTitle, _sourceLang, type: _recordTypeFilter);
  }

  /// 학습 자료 선택 (Notebook based - Phase 160)
  Future<void> selectMaterial(String? subject) async {
    _selectedNotebookTitle = subject;
    if (subject != null && subject.isNotEmpty) {
      await loadMaterialRecords(subject);
    } else {
      _selectedTags.clear(); // Clear any specific notebook/tag filter
      await loadRecordsByTags();
    }
    notify();
  }

  Future<void> loadMaterialRecords(String subject) async {
    if (subject.isEmpty) {
      await loadRecordsByTags();
    } else {
      // Check if it's a Dialogue Title by searching dialogue groups
      final matchedDialogues = _dialogueGroups.where((g) => g.title == subject).toList();
      if (matchedDialogues.isNotEmpty) {
        _selectedTags = [subject];
        await loadRecordsByTags();
      } else {
        // Assume it's a Notebook Title (already in _studyMaterials or new)
        _selectedTags = [subject];
        debugPrint('[AppState] loadMaterialRecords (Notebook): $subject');
        await loadRecordsByTags();
      }
    }
  }
  
  void setRecordTypeFilter(String filter) {
    _recordTypeFilter = filter;
    if (filter == 'word') {
      _isWordMode = true;
    } else if (filter == 'sentence') {
      _isWordMode = false;
    }
    
    // Phase 17469: Refresh study materials (notebooks) when filter changes
    loadStudyMaterials();
    
    notify();
  }

  void setShowMemorized(bool value) {
    if (_showMemorized == value) return;
    _showMemorized = value;
    notify();
    loadRecordsByTags();
    if (_mode3SessionActive) {
       _validateCurrentMode3Question();
    }
  }

  /// Play TTS for material record (source or target)
  Future<void> playMaterialTts({
    required String text,
    required String lang,
    int? recordId,
  }) async {
    try {
      await _speechService.speak(text, lang: getServiceLocale(lang));
    } catch (e) {
      debugPrint('[AppState] Error playing material TTS: $e');
      handleTtsError(e);
    }
  }
}
// End of AppStateMode2

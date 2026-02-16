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
      final libraryResponse = await SupabaseService.client
          .from('user_library')
          .select()
          .eq('user_id', userId)
          .order('created_at', ascending: false);

      final libraryEntries = (libraryResponse as List).map((e) => UserLibrary.fromJson(e)).toList();
      
      if (libraryEntries.isEmpty) {
        _studyRecords = [];
        notify();
        return;
      }

      // 2. Fetch Sentences for these groups
      final groupIds = libraryEntries.map((e) => e.groupId).toList();
      
      final sentencesResponse = await SupabaseService.client
          .from('sentences')
          .select()
          .filter('group_id', 'in', groupIds);
          
      final allSentences = (sentencesResponse as List).map((e) => Sentence.fromJson(e)).toList();

      // 3. Assemble Data (Map UserLibrary + Source Sentence + Target Sentence)
      List<Map<String, dynamic>> combinedRecords = [];
      
      for (var entry in libraryEntries) {
        final groupSentences = allSentences.where((s) => s.groupId == entry.groupId).toList();
        
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
          'id': entry.groupId,
          'library_uuid': entry.id,
          'group_id': entry.groupId,
          'source_lang': sourceSentence.langCode,
          'target_lang': targetSentence.langCode,
          'source_text': sourceSentence.text,
          'target_text': targetSentence.text,
          'personal_note': entry.personalNote,
          'created_at': entry.createdAt.toIso8601String(),
          'dialogue_id': entry.dialogueId,
          'speaker': entry.speaker,
          'sequence_order': entry.sequenceOrder,
          'review_count': entry.reviewStats['count'] ?? 0,
          'last_reviewed': entry.reviewStats['last_reviewed'],
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
    }
  }

  /// Increment review count (Supabase)
  Future<void> reviewRecord(int groupId) async {
    try {
      final userId = SupabaseService.client.auth.currentUser?.id;
      if (userId == null) return;
      
      final response = await SupabaseService.client
          .from('user_library')
          .select('review_stats')
          .eq('user_id', userId)
          .eq('group_id', groupId)
          .single();
          
      Map<String, dynamic> stats = Map<String, dynamic>.from(response['review_stats'] ?? {});
      int count = (stats['count'] as int? ?? 0) + 1;
      stats['count'] = count;
      stats['last_reviewed'] = DateTime.now().toIso8601String();
      
      await SupabaseService.client
          .from('user_library')
          .update({'review_stats': stats})
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
             await SupabaseService.client
                .from('user_library')
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
      String query = 'SELECT t.*, m.notebook_title, m.caption, m.tags as meta_tags, m.is_memorized, m.review_count, m.last_reviewed '
                     'FROM $table t '
                     'JOIN $metaTable m ON t.group_id = m.group_id ';
      
      List<String> conditions = [];
      
      // Phase 120: 소스 언어 포함 여부 확인 (JSON 내부)
      conditions.add("json_extract(t.data_json, '\$.' || ? || '.text') IS NOT NULL");
      whereArgs.add(_sourceLang);
      
      if (_selectedTags.isNotEmpty) {
        // Phase 129: Use meta tags column
        // Search tag in CSV string: ',tag,' like '%,tag,%'
        // We handle comma wrapping in logic or expect spaces?
        // Tags are stored as "tag1,tag2".
        for (var tag in _selectedTags) {
          // Robust check: tag at start, middle, or end
          conditions.add("',' || m.tags || ',' LIKE ?");
          whereArgs.add('%,$tag,%');
        }
      }
      
      if (_searchQuery.isNotEmpty) {
        conditions.add('(t.data_json LIKE ? OR m.caption LIKE ?)');
        whereArgs.add('%$_searchQuery%');
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
          'note': row['caption'] ?? sourceData['note'] ?? targetData['note'], // Phase 129: Use Meta Caption
          'pos': sourceData['pos'],
          'form_type': sourceData['form_type'],
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
    final type = _recordTypeFilter == 'word' ? 'word' : 'sentence';
    await DatabaseService.toggleMemorizedStatus(id, type, !currentStatus);
    
    if (_currentMode3Question != null) {
      final currentTargetId = _currentMode3Question!['target_id'] as int? ?? _currentMode3Question!['id'] as int;
      if (currentTargetId == id) {
         final newMap = Map<String, dynamic>.from(_currentMode3Question!);
         newMap['is_memorized'] = !currentStatus;
         _currentMode3Question = newMap;
         notify(); 
      }
    }

    await loadRecordsByTags();
  }

  /// 기존 호환성 유지용 (Legacy)
  Future<void> loadStudyMaterials() async {
    await loadTags(); 
    _studyMaterials = await DatabaseService.getStudyMaterials(); 
    notify();
  }

  /// 학습 자료 선택 (Legacy & Tag Sync)
  Future<void> selectMaterial(Object? id) async {
    _selectedMaterialId = id;
    if (id != null && id != 0 && id != '') {
      await loadMaterialRecords(id);
    } else {
      await loadRecordsByTags();
    }
    notify();
  }

  Future<void> loadMaterialRecords(Object materialId) async {
    if (materialId == 0 || materialId == '') {
      await loadRecordsByTags();
    } else if (materialId is int) {
      final material = _studyMaterials.firstWhere((m) => m['id'] == materialId, orElse: () => {});
      if (material.isNotEmpty) {
        _selectedTags = [material['subject'] as String];
        await loadRecordsByTags();
      }
    } else if (materialId is String) {
      // Phase 110: Support Dialogue UUID
      // Dialogue data is primarily for Chat Mode, but we support viewing it here if tagged.
      final group = _dialogueGroups.where((g) => g.id == materialId).toList();
      if (group.isNotEmpty) {
        _selectedTags = [group.first.title ?? group.first.note ?? 'Untitled'];
        await loadRecordsByTags();
      } else {
        final material = _studyMaterials.firstWhere((m) => m['id'] == materialId, orElse: () => {});
        if (material.isNotEmpty) {
          _selectedTags = [material['subject'] as String? ?? 'Untitled'];
          await loadRecordsByTags();
        }
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
    }
  }
}
// End of AppStateMode2

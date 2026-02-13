part of 'app_state.dart';

extension AppStateChat on AppState {
  Future<void> loadParticipants() async {
    if (_activeDialogueId == null) return;
    
    final data = await DatabaseService.getParticipants(_activeDialogueId!);
    _activeParticipants = data.map((json) => ChatParticipant.fromJson(json)).toList();
    notify();
  }

  /// Find a participant or create a new one (e.g. Stranger)
  Future<ChatParticipant> getOrAddParticipant({
    required String name,
    required String role, 
    String? gender,
    String? languageCode,
  }) async {
    // 1. Check Cache
    final existing = _activeParticipants.firstWhere(
      (p) => p.name == name && p.role == role,
      orElse: () => ChatParticipant(
        id: 'temp', 
        dialogueId: '', 
        name: '', 
        role: ''
      ),
    );

    if (existing.id != 'temp') return existing;

    // 2. Create New
    final dId = _activeDialogueId ?? (role == 'user' ? 'legacy' : 'unknown');
    final newId = const Uuid().v4();
    final newParticipant = ChatParticipant(
      id: newId,
      dialogueId: dId,
      name: name,
      role: role,
      gender: gender ?? (role.toLowerCase() == 'user' ? _chatUserGender : _chatAiGender),
      langCode: languageCode ?? (role.toLowerCase() == 'user' ? _sourceLang : _targetLang),
      avatarColor: Colors.primaries[Random().nextInt(Colors.primaries.length)].toARGB32(),
    );

    if (dId != 'legacy' && dId != 'unknown') {
      await DatabaseService.insertParticipant(newParticipant.toJson());
    }
    _activeParticipants.add(newParticipant);
    notify();
    
    return newParticipant;
  }

  Future<void> updateParticipant(String id, {String? gender, String? languageCode, String? name}) async {
    final index = _activeParticipants.indexWhere((p) => p.id == id);
    if (index == -1) return;

    final old = _activeParticipants[index];
    final updated = ChatParticipant(
      id: old.id,
      dialogueId: old.dialogueId,
      name: name ?? old.name, 
      role: old.role,
      gender: gender ?? old.gender,
      langCode: languageCode ?? old.langCode,
      avatarColor: old.avatarColor,
    );

    _activeParticipants[index] = updated;
    await DatabaseService.updateParticipant(id, updated.toJson());
    notify();
  }
  
  /// Start listening for Game Mode (Continuous)
  Future<void> startMode4Listening({
    required String lang,
    required Function(String text, bool isFinal) onResult,
  }) async {
    try {
      _mode4Active = true;
      _isListening = true;
      notify();

      _speechStatusSubscription?.cancel();
      _speechStatusSubscription = _speechService.statusStream.listen((status) {
          if (_mode4Active && (status == 'done' || status == 'notListening')) {
            debugPrint('[AppState] Auto-restarting Mode 4 STT...');
            _speechService.startContinuousSTT(
              lang: getServiceLocale(lang),
              onResult: (text, isFinal, alternates) => onResult(text, isFinal),
            );
          }
      });
      
      await _speechService.startContinuousSTT(
        lang: getServiceLocale(lang),
        onResult: (text, isFinal, alternates) {
          onResult(text, isFinal);
        },
      );
    } catch (e) {
      debugPrint('[AppState] Mode 4 Listen Error: $e');
      _isListening = false;
      notify();
    }
  }

  /// Stop Mode 4 Listening explicitly
  Future<void> stopMode4Listening() async {
    _mode4Active = false;
    _speechStatusSubscription?.cancel();
    await _speechService.stopSTT();
    _isListening = false;
    notify();
  }

  /// Create a new dialogue and set as active session
  Future<void> startNewDialogue({String? persona, String? gender}) async {
    try {
      _statusMessage = 'Starting new chat...';
      notify();

      final dialogueId = await SupabaseService.createDialogueGroup(
        title: 'New Conversation',
        persona: persona,
      );

      _activeDialogueId = dialogueId;
      _activeDialogueTitle = 'New Conversation';
      _activePersona = persona;
      _activePersonaGender = gender; 
      _currentDialogueSequence = 1;

      await DatabaseService.insertDialogueGroup(
        id: dialogueId,
        title: 'New Conversation',
        persona: persona,
        createdAt: DateTime.now().toIso8601String(),
        userId: SupabaseService.client.auth.currentUser?.id,
      );

      if (persona != null) {
        await getOrAddParticipant(
          name: persona,
          role: 'assistant',
          gender: gender,
          languageCode: _targetLang,
        );
      }

      _dialogueGroups.insert(0, DialogueGroup(
        id: dialogueId,
        userId: SupabaseService.client.auth.currentUser?.id ?? 'anonymous',
        title: 'New Conversation',
        persona: persona,
        createdAt: DateTime.now(),
      ));

      _statusMessage = 'Chat started';
      notify();
    } catch (e) {
      _statusMessage = 'Failed to start chat: $e';
      notify();
    }
  }

  /// Load dialogue groups (Offline-First Strategy)
  Future<void> loadDialogueGroups() async {
    final userId = SupabaseService.client.auth.currentUser?.id;
    
    if (userId != null) {
      try {
        final response = await SupabaseService.client
            .from('dialogue_groups')
            .select()
            .eq('user_id', userId)
            .order('created_at', ascending: false);

        final cloudGroups = (response as List).map((json) => DialogueGroup.fromJson(json)).toList();
        
        for (var group in cloudGroups) {
          await DatabaseService.insertDialogueGroup(
            id: group.id,
            userId: group.userId,
            title: group.title,
            persona: group.persona,
            location: group.location,
            createdAt: group.createdAt.toIso8601String(),
          );
        }
      } catch (e) {
        debugPrint('[AppState] Supabase dialogue sync failed: $e');
      }
    }

    try {
      final userId = SupabaseService.client.auth.currentUser?.id;
      final localData = await DatabaseService.getDialogueGroups(userId: userId);
      
      final List<DialogueGroup> loadedGroups = [];
      for (final m in localData) {
        try {
          loadedGroups.add(DialogueGroup(
            id: m['id'] as String,
            userId: m['user_id'] as String? ?? 'anonymous',
            title: m['title'] as String?,
            persona: m['persona'] as String?,
            location: m['location'] as String?,
            note: m['note'] as String?,
            createdAt: m['created_at'] != null 
              ? DateTime.tryParse(m['created_at'] as String) ?? DateTime.now() 
              : DateTime.now(),
          ));
        } catch (e) {
          debugPrint('[AppState] Failed to parse dialogue group ${m['id']}: $e');
        }
      }
      
      _dialogueGroups = loadedGroups;
      notify();
    } catch (e) {
       debugPrint('[AppState] Local dialogue load failed: $e');
    }
  }

  /// Reset active dialogue session
  void clearActiveDialogue() {
    _activeDialogueId = null;
    _activeDialogueTitle = null;
    _activePersona = null;
    _activePersonaGender = null;
    _currentDialogueSequence = 0;
    notify();
  }

  /// Delete a dialogue group
  Future<void> deleteDialogue(String id) async {
    try {
      await DatabaseService.deleteDialogueGroup(id);
      
      try {
        await SupabaseService.deleteDialogueGroup(id);
      } catch (cloudError) {
        debugPrint('[AppState] Cloud delete failed (but local succeeded): $cloudError');
      }
      
      _dialogueGroups.removeWhere((g) => g.id == id);
      
      if (_activeDialogueId == id) {
        clearActiveDialogue();
      }
      
      notify();
    } catch (e) {
      debugPrint('[AppState] Error deleting dialogue: $e');
      rethrow;
    }
  }

  Future<void> loadExistingDialogue(DialogueGroup group) async {
    _activeDialogueId = group.id;
    _activeDialogueTitle = group.title;
    _activePersona = group.persona;
    _activeDialogueLocation = group.location;
    _currentChatLocation = group.location ?? '';
    
    var records = await DatabaseService.getRecordsByDialogueId(
      group.id,
      sourceLang: _sourceLang,
      targetLang: _targetLang,
    );
    
    if (records.isEmpty) {
      final cloudMessages = await SupabaseService.getPrivateChatMessages(group.id);
      if (cloudMessages.isNotEmpty) {
        for (var msg in cloudMessages) {
          await DatabaseService.saveUnifiedRecord(
            text: msg['source_text'],
            lang: 'auto',
            translation: msg['target_text'],
            targetLang: 'auto',
            type: 'sentence',
            tags: ['Dialogue'],
          );
          
          final db = await DatabaseService.database;
          await db.insert('chat_messages', {
            'dialogue_id': group.id,
            'group_id': msg['group_id'],
            'speaker': msg['speaker'],
            'sequence_order': msg['sequence_order'],
            'created_at': msg['created_at'],
          });
        }
        records = await DatabaseService.getRecordsByDialogueId(
          group.id,
          sourceLang: _sourceLang,
          targetLang: _targetLang,
        );
      }
    }

    if (records.isNotEmpty) {
      _currentDialogueSequence = records.map((r) => (r['sequence_order'] as int? ?? 0)).reduce((a, b) => a > b ? a : b);
    } else {
      _currentDialogueSequence = 0;
    }
    
    notify();
  }

  void setCurrentChatLocation(String loc) {
    _currentChatLocation = loc;
    notify();
  }

  /// Request AI to suggest titles based on current chat history
  Future<void> fetchChatTitleSuggestions() async {
    if (_activeDialogueId == null) return;
    
    _isFetchingTitles = true;
    _suggestedTitles = [];
    notify();
    
    try {
      final records = await DatabaseService.getRecordsByDialogueId(
        _activeDialogueId!,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
      );
      
      final history = records.map((r) => {
        'source_text': r['source_text'],
        'target_text': r['target_text'],
        'speaker': r['speaker'],
      }).toList();
      
      _suggestedTitles = await TranslationService.generateTitleSuggestions(history);
      
      if (_suggestedTitles.isEmpty) {
        final dateStr = DateTime.now().toString().split('.')[0];
        _suggestedTitles = ["Conversation $dateStr", "Quick Chat", "Language Practice"];
      }
    } catch (e) {
      debugPrint('[AppState] Error fetching title suggestions: $e');
    } finally {
      _isFetchingTitles = false;
      notify();
    }
  }

  /// Finalize dialogue with user-defined title, location, and note
  Future<void> saveDialogueProgress(String title, String location, String? note) async {
    if (_activeDialogueId == null) return;
    
    _activeDialogueTitle = title;
    _activeDialogueLocation = location;
    
    try {
      await DatabaseService.insertDialogueGroup(
        id: _activeDialogueId!,
        title: title,
        location: location,
        persona: _activePersona,
        note: note,
        createdAt: DateTime.now().toIso8601String(),
        userId: SupabaseService.client.auth.currentUser?.id,
      );
      
      await SupabaseService.updateDialogueTitle(_activeDialogueId!, title);
      try {
        await SupabaseService.client.from('dialogue_groups').update({
          'location': location,
          'note': note
        }).eq('id', _activeDialogueId!);
      } catch (e) {
        debugPrint('[AppState] Supabase location sync failed: $e');
      }
      
      final index = _dialogueGroups.indexWhere((g) => g.id == _activeDialogueId);
      final updatedGroup = DialogueGroup(
          id: _activeDialogueId!,
          userId: SupabaseService.client.auth.currentUser?.id ?? 'anonymous',
          title: title,
          persona: _activePersona,
          location: location,
          note: note,
          createdAt: index != -1 ? _dialogueGroups[index].createdAt : DateTime.now(),
      );

      if (index != -1) {
        _dialogueGroups[index] = updatedGroup;
      } else {
        _dialogueGroups.insert(0, updatedGroup);
      }
      notify();

      await loadStudyMaterials();
      
    } catch (e) {
      debugPrint('[AppState] Error saving dialogue progress: $e');
    }
  }

  /// Save User's message to dialogue
  Future<void> saveUserMessage(String sourceText, String targetText) async {
    if (_activeDialogueId == null) return;

    final createdAt = DateTime.now().toIso8601String();
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    _currentDialogueSequence++;

    try {
      final db = await DatabaseService.database;
      await db.transaction((txn) async {
        const table = 'sentences';

        final sourceId = await txn.insert(table, {
          'group_id': timestamp,
          'text': sourceText,
          'lang_code': _sourceLang,
          'created_at': createdAt,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        final targetId = await txn.insert(table, {
          'group_id': timestamp,
          'text': targetText,
          'lang_code': _targetLang,
          'created_at': createdAt,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        await txn.insert('sentence_translations', {
          'source_sentence_id': sourceId,
          'target_sentence_id': targetId,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        await txn.insert('chat_messages', {
          'dialogue_id': _activeDialogueId,
          'group_id': timestamp,
          'speaker': 'User', // Standardized to Title case for ChatScreen compatibility
          'sequence_order': _currentDialogueSequence,
          'created_at': createdAt,
        });
      });

      notify();

      SupabaseService.savePrivateChatMessage(
        dialogueId: _activeDialogueId!,
        sourceText: sourceText,
        targetText: targetText,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
        speaker: 'User',
        sequenceOrder: _currentDialogueSequence,
      ).catchError((e) => debugPrint('[AppState] Cloud Sync Error: $e'));

    } catch (e) {
      debugPrint('[AppState] Error saving user message: $e');
    }
  }

  /// Save AI response to dialogue
  Future<void> saveAiResponse(
    String sourceText, 
    String targetText, {
    String? speaker,
    String? pos,
    String? formType,
    String? root,
    String? explanation,
  }) async {
    if (_activeDialogueId == null) {
      await startNewDialogue();
    }
    
    final finalSpeaker = speaker ?? _activePersona ?? 'AI';
    final createdAt = DateTime.now().toIso8601String();
    final timestamp = DateTime.now().millisecondsSinceEpoch;

    _currentDialogueSequence++;
    
    try {
      final db = await DatabaseService.database;
      
      await db.transaction((txn) async {
        const table = 'sentences';
        
        final sourceId = await txn.insert(table, {
          'group_id': timestamp,
          'text': sourceText,
          'lang_code': _targetLang,
          'pos': pos,
          'form_type': formType,
          'root': root,
          'note': explanation,
          'created_at': createdAt,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        final targetId = await txn.insert(table, {
          'group_id': timestamp,
          'text': targetText,
          'lang_code': _sourceLang, 
          'created_at': createdAt,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        await txn.insert('sentence_translations', {
          'source_sentence_id': sourceId > 0 ? sourceId : (await _getUnifiedId(txn, table, sourceText, _targetLang, explanation)),
          'target_sentence_id': targetId > 0 ? targetId : (await _getUnifiedId(txn, table, targetText, _sourceLang, null)),
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        await txn.insert('item_tags', {
          'item_id': sourceId > 0 ? sourceId : (await _getUnifiedId(txn, table, sourceText, _targetLang, explanation)),
          'item_type': 'sentence',
          'tag': 'Dialogue',
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        await txn.insert('chat_messages', {
          'dialogue_id': _activeDialogueId,
          'group_id': timestamp,
          'speaker': finalSpeaker,
          'sequence_order': _currentDialogueSequence,
          'created_at': createdAt,
        });
      });

      SupabaseService.savePrivateChatMessage(
        dialogueId: _activeDialogueId!,
        sourceText: sourceText,
        targetText: targetText,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
        speaker: finalSpeaker,
        sequenceOrder: _currentDialogueSequence,
      ).catchError((e) => debugPrint('[AppState] Background Cloud Sync Error: $e'));
    } catch (e) {
      debugPrint('[AppState] Error saving AI response: $e');
    }
  }
}
// End of AppStateChat

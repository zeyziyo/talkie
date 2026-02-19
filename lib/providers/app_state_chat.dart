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
      (p) => p.name.toLowerCase() == name.toLowerCase() && 
             p.role == role && 
             (_activeDialogueId == null || p.dialogueId == _activeDialogueId), // Phase 136 Fix: Scope by Dialogue ID
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
    notify(); // Phase 136 Fix: Optimistic UI Update (Update UI first, then DB)
    
    await DatabaseService.updateParticipant(id, updated.toJson());
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
  Future<void> startNewDialogue({
    String? title, // Changed from 'persona' to 'title' to generally represent the chat
    List<ChatParticipant>? initialParticipants, 
  }) async {
    try {
      _statusMessage = 'Starting new chat...';
      notify();

      final dialogueTitle = title ?? 'New Conversation';

      final dialogueId = await SupabaseService.createDialogueGroup(
        title: dialogueTitle,
        persona: 'Group', // Default persona type
      );

      _activeDialogueId = dialogueId;
      _activeDialogueTitle = dialogueTitle;
      _activePersona = 'Group';
      _currentDialogueSequence = 1;

      await DatabaseService.insertDialogueGroup(
        id: dialogueId,
        title: dialogueTitle,
        persona: 'Group',
        createdAt: DateTime.now().toIso8601String(),
        userId: SupabaseService.client.auth.currentUser?.id,
      );

      // Phase 4: Add Initial Participants
      if (initialParticipants != null && initialParticipants.isNotEmpty) {
        for (var p in initialParticipants) {
          await DatabaseService.insertParticipant({
            'id': p.id,
            'name': p.name,
            'role': p.role,
            'gender': p.gender,
            'lang_code': p.langCode,
            'dialogue_id': dialogueId,
          });
          _activeParticipants.add(p);
        }
      } 
      // Removed Legacy Fallback: Users must select participants via standard flow.
      // If no participants, it's an empty chat (which is allowed, user can add later)

      _dialogueGroups.insert(0, DialogueGroup(
        id: dialogueId,
        userId: SupabaseService.client.auth.currentUser?.id ?? 'anonymous',
        title: dialogueTitle,
        persona: 'Group',
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
    
    // Phase 136 Fix: Reordered Logic - Load Messages FIRST, then Participants
    // This ensues runtime repair has messages to work with.

    // 1. Load Messages (Local)
    var records = await DatabaseService.getRecordsByDialogueId(
      group.id,
      sourceLang: _sourceLang,
      targetLang: _targetLang,
    );
    
    // 2. Cloud Sync if missing (Self-Healing Messages)
    if (records.isEmpty) {
      debugPrint('[AppState] Local messages empty. Attempting Cloud Sync for ${group.id}...');
      final cloudMessages = await SupabaseService.getPrivateChatMessages(group.id);
      if (cloudMessages.isNotEmpty) {
        // Sort by sequence order
        cloudMessages.sort((a, b) => (a['sequence_order'] as int).compareTo(b['sequence_order'] as int));
        
        final db = await DatabaseService.database;
        await db.transaction((txn) async {
          for (var msg in cloudMessages) {
             // Phase 129: Use dialogues table via Repository (or direct logic matching Repo)
             await DialogueRepository.insertMessage({
               'dialogue_id': group.id,
               'speaker': msg['speaker'],
               'source_text': msg['source_text'],
               'target_text': msg['target_text'],
               'created_at': msg['created_at'],
             }, txn: txn);
          }
        });
        
        // Reload records after sync
        records = await DatabaseService.getRecordsByDialogueId(
          group.id,
          sourceLang: _sourceLang,
          targetLang: _targetLang,
        );
      }
    }

    // 3. Load Participants (NOW we have messages if they existed in cloud)
    _activeParticipants.clear();
    try {
      var participantsData = await DatabaseService.getParticipants(group.id);
      
      if (participantsData.isEmpty) {
        // Phase 136 Fix: Runtime Self-Healing Participants
        // Only try to repair if we actually have messages now
        if (records.isNotEmpty) {
          debugPrint('[AppState] No participants found but messages exist. Triggering Runtime Repair...');
          await _repairParticipantsFromMessages(group.id);
          // Reload after repair
          participantsData = await DatabaseService.getParticipants(group.id);
        }
      }

      if (participantsData.isNotEmpty) {
        _activeParticipants = participantsData.map((json) => ChatParticipant.fromJson(json)).toList();
      } else {
        // Legacy Support: Only if repair failed or no messages existed
        if (group.persona != null) {
          await getOrAddParticipant(name: group.persona!, role: 'ai');
        }
      }
    } catch (e) {
      debugPrint('[AppState] Failed to process participants: $e');
    }

    if (records.isNotEmpty) {
      // Find max sequence
      int maxSeq = 0;
      for (var r in records) {
        int seq = r['sequence_order'] as int? ?? 0; // Use ID if needed, but repo maps it
        if (seq > maxSeq) maxSeq = seq;
      }
      _currentDialogueSequence = maxSeq;
    } else {
      _currentDialogueSequence = 0;
    }

    _currentChatMessages = records;
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

    _currentDialogueSequence++;

    try {
      // Phase 129: Use DialogueRepository (dialogues table)
      await DialogueRepository.insertMessage({
        'dialogue_id': _activeDialogueId,
        'speaker': 'User',
        'source_text': sourceText,
        'target_text': targetText,
        'created_at': DateTime.now().toIso8601String(),
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
    
    _currentDialogueSequence++;
    
    try {
      // Phase 130: Ensure Participant exists for Gender Toggle
      await getOrAddParticipant(
        name: finalSpeaker,
        role: 'ai',
        languageCode: _targetLang,
      );

      // Phase 129: Use DialogueRepository
      await DialogueRepository.insertMessage({
        'dialogue_id': _activeDialogueId,
        'speaker': finalSpeaker,
        'source_text': sourceText,
        'target_text': targetText,
        'created_at': createdAt,
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
  /* Phase 136: Runtime Repair Helper */
  Future<void> _repairParticipantsFromMessages(String dialogueId) async {
    try {
      final messages = await DatabaseService.getRecordsByDialogueId(dialogueId);
      final uniqueSpeakers = messages.map((m) => m['speaker'] as String? ?? '').where((s) => s.isNotEmpty).toSet();
      
      for (final name in uniqueSpeakers) {
        final role = name.toLowerCase() == 'user' ? 'user' : 'ai';
        // Use getOrAdd to handle creation logic
        await getOrAddParticipant(name: name, role: role);
      }
      debugPrint('[AppState] Repaired ${uniqueSpeakers.length} participants for dialogue $dialogueId');
    } catch (e) {
      debugPrint('[AppState] Participant repair failed: $e');
    }
  }
}
// End of AppStateChat

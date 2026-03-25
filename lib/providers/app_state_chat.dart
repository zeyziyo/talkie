part of 'app_state.dart';

extension AppStateChat on AppState {
  Future<void> loadParticipants() async {
    if (_activeDialogueId == null) return;
    
    try {
      final data = await DatabaseService.getParticipants(_activeDialogueId!);
      _activeParticipants = data.map((json) => ChatParticipant.fromJson(json)).toList();
      notify();
    } catch (e) {
      debugPrint('[AppState] Failed to load participants for chat: $e');
    }
  }

  /// Find a participant or create a new one (e.g. Stranger)
  Future<ChatParticipant> getOrAddParticipant({
    required String name,
    required String role, 
    String? gender,
    String? languageCode,
    String? id, // Phase 28: Explicit ID support
  }) async {
    // 1. Check existing active participants (by ID or Name+Role)
    final existing = _activeParticipants.firstWhere(
      (p) => (id != null && p.id == id) || 
             (p.name.toLowerCase() == name.toLowerCase() && p.role == role),
      orElse: () => ChatParticipant(id: 'temp', dialogueId: '', name: '', role: ''),
    );
 
    if (existing.id != 'temp') return existing;

    // 1-b. [Phase 16.1 Fix] Check Global Database for existing participant
    try {
      final allParticipants = await DatabaseService.getAllUniqueParticipants();
      final globalMatch = allParticipants.firstWhere(
        (p) => (id != null && p.id == id) || 
               (p.name.toLowerCase() == name.toLowerCase() && p.role == role),
        orElse: () => ChatParticipant(id: 'temp', dialogueId: '', name: '', role: ''),
      );

        if (globalMatch.id != 'temp') {
          debugPrint('[AppState] Reusing global participant ID: ${globalMatch.id} for ${globalMatch.name}');
          
          // Link it to the current dialogue
          if (_activeDialogueId != null) {
            await DatabaseService.insertParticipant({
              ...globalMatch.toJson(),
              'dialogue_id': _activeDialogueId,
            });

            // Phase 140: Sync to Supabase (Blueprint Alignment)
            if (SupabaseService.client.auth.currentUser != null) {
              SupabaseService.syncParticipant(
                dialogueId: _activeDialogueId!,
                id: globalMatch.id,
                name: globalMatch.name,
                role: globalMatch.role,
                gender: globalMatch.gender,
                langCode: globalMatch.langCode,
                avatarColor: globalMatch.avatarColor,
              ).catchError((e) => debugPrint('[AppState] Participant link sync failed: $e'));
            }
          }
          if (!_activeParticipants.any((p) => p.id == globalMatch.id)) {
            _activeParticipants.add(globalMatch);
          }
          notify();
          return globalMatch;
        }
    } catch (e) {
      debugPrint('[AppState] Global participant lookup failed: $e');
    }

    // 2. Determine Canonical ID for Core Roles
    String newId = id ?? const Uuid().v4();
    String newName = name; // Default

    // Logic: If name suggests canonical roles, enforce canonical IDs
    if (role == 'user' && (name == '나' || name == 'User' || id == 'me')) {
      newId = 'me';
      newName = '나';
    } else if ((role == 'ai' || role == 'assistant') && (name == 'AI' || id == 'ai')) {
      newId = 'ai';
      newName = 'AI';
      
      // Phase 180: Ensure AI inherits from Global Template if available
      final templateAi = _globalParticipants.firstWhere(
        (p) => p.id == 'ai',
        orElse: () => ChatParticipant(id: 'ai', dialogueId: '', name: 'AI', role: 'ai', langCode: _targetLang, gender: _chatAiGender),
      );
      languageCode ??= templateAi.langCode;
      gender ??= templateAi.gender;
      debugPrint('[AppState] Inheriting AI settings from Global Template: lang=$languageCode, gender=$gender');
    } else if (id == 'me') {
      newName = '나'; 
    } else if (id == 'ai') {
      newName = 'AI'; 
    }

    final dId = _activeDialogueId ?? 'global';
    final newParticipant = ChatParticipant(
      id: newId,
      dialogueId: dId,
      name: newName,
      role: role,
      gender: gender ?? (role.toLowerCase() == 'user' ? _chatUserGender : _chatAiGender),
      langCode: languageCode ?? (role.toLowerCase() == 'user' ? _sourceLang : _targetLang),
      avatarColor: Colors.primaries[Random().nextInt(Colors.primaries.length)].toARGB32(),
    );

    // 3. Persist to DB
    await DatabaseService.insertParticipant(newParticipant.toJson());
    
    // Phase 140: Sync to Supabase (Blueprint Alignment)
    if (_activeDialogueId != null && SupabaseService.client.auth.currentUser != null) {
      SupabaseService.syncParticipant(
        dialogueId: _activeDialogueId!,
        id: newParticipant.id,
        name: newParticipant.name,
        role: newParticipant.role,
        gender: newParticipant.gender,
        langCode: newParticipant.langCode,
        avatarColor: newParticipant.avatarColor,
      ).catchError((e) => debugPrint('[AppState] New participant sync failed: $e'));
    }
    
    // 4. Update memory state
    if (!_activeParticipants.any((p) => p.id == newId)) {
      _activeParticipants.add(newParticipant);
    }
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
  
  /// Create a new dialogue and set as active session
  /// Phase 10 Fix: Offline-First 방식으로 변경
  /// 로컬에서 먼저 UUID로 대화를 생성하고, Supabase는 백그라운드 동기화로 처리
  Future<void> startNewDialogue({
    String? title,
    List<ChatParticipant>? initialParticipants, 
  }) async {
    try {
      _statusMessage = 'Starting new chat...';
      _currentChatMessages = []; // v16.1 Fix: Clear previous chat messages
      _activeParticipants = [];  // v16.1 Fix: Clear previous participants
      notify();

      final dialogueTitle = title ?? 'New Conversation';

      // [Offline-First] 로컬에서 먼저 UUID 기반 대화 ID를 생성합니다.
      // Supabase 서버 의존성을 제거하여 비로그인/오프라인 상태에서도 정상 동작합니다.
      final dialogueId = const Uuid().v4();
      final now = DateTime.now().toIso8601String();
      final userId = SupabaseService.client.auth.currentUser?.id;

      _activeDialogueTitle = dialogueTitle;
      _activePersona = 'AI';
      _activeDialogueLocation = null; // Phase 162: Reset location
      _currentDialogueSequence = 1;

      // [Phase 162] Background Pre-fetch Location
      _fetchAndStoreLocation();

      // 로컬 DB에 먼저 저장
      await DatabaseService.insertDialogueGroup(
        id: dialogueId,
        title: dialogueTitle,
        persona: 'AI',
        createdAt: now,
        userId: userId,
      );

      // Supabase 동기화: 서버 ID를 확실히 받을 때까지 기다립니다. (중복 생성 방지)
      if (userId != null) {
        try {
          final serverId = await SupabaseService.createDialogueGroup(
            id: dialogueId, 
            title: dialogueTitle,
            persona: 'AI',
          );
          
          if (serverId != dialogueId) {
             debugPrint('[AppState] ID Mismatch detected. serverId=$serverId, localId=$dialogueId. Updating local record...');
             final db = await DatabaseService.database;
             await db.transaction((txn) async {
               await txn.rawUpdate('UPDATE dialogue_groups SET id = ? WHERE id = ?', [serverId, dialogueId]);
               await txn.rawUpdate('UPDATE dialogues SET session_id = ? WHERE session_id = ?', [serverId, dialogueId]);
               await txn.rawUpdate('UPDATE dialogue_participants SET dialogue_id = ? WHERE dialogue_id = ?', [serverId, dialogueId]);
             });
             _activeDialogueId = serverId;
          } else {
             _activeDialogueId = dialogueId;
          }
          debugPrint('[AppState] Synchronous Supabase sync completed: id=$_activeDialogueId');
        } catch (e) {
          debugPrint('[AppState] Supabase initial sync failed: $e. Using local ID only.');
          _activeDialogueId = dialogueId;
        }
      } else {
        _activeDialogueId = dialogueId;
      }

      // Phase 10: Add Initial Participants
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
      } else {
        // Phase 180: Automatically add Template ME and Template AI to the new dialogue (FIXED v104)
        final templateMe = _globalParticipants.firstWhere(
          (p) => p.id == 'me',
          orElse: () => ChatParticipant(id: 'me', dialogueId: '', name: '나', role: 'user', langCode: _sourceLang, gender: _chatUserGender),
        );
        final templateAi = _globalParticipants.firstWhere(
          (p) => p.id == 'ai',
          orElse: () => ChatParticipant(id: 'ai', dialogueId: '', name: 'AI', role: 'ai', langCode: _targetLang, gender: _chatAiGender),
        );

        final meForDialogue = templateMe.copyWith(dialogueId: dialogueId);
        final aiForDialogue = templateAi.copyWith(dialogueId: dialogueId);
        
        await DatabaseService.insertParticipant(meForDialogue.toJson());
        await DatabaseService.insertParticipant(aiForDialogue.toJson());
        
        _activeParticipants.add(meForDialogue);
        _activeParticipants.add(aiForDialogue);
        
        debugPrint('[AppState] New Conversation: Injected ME (${meForDialogue.langCode}) and AI (${aiForDialogue.langCode})');
      }

      // Phase 180: Clear mode 3 search results to prevent stale UI
      _materialRecords = []; 
      
      _dialogueGroups.insert(0, DialogueGroup(
        id: dialogueId,
        userId: userId ?? 'anonymous',
        title: dialogueTitle,
        persona: 'AI', 
        location: null,
        note: null,
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
    isSyncing = true; // Phase 33: Start Syncing indicator
    final userId = SupabaseService.client.auth.currentUser?.id;
    
    if (userId != null) {
      try {
        final response = await SupabaseService.client
            .from('dialogue_groups')
            .select()
            .eq('user_id', userId)
            .order('created_at', ascending: false);

        final cloudGroups = (response as List).map((json) => DialogueGroup.fromJson(json)).toList();
        // [Phase 162 Fix] Fetch all local groups once to avoid multiple DB hits in loop
        final existingLocal = await DialogueRepository.getGroups();
        final localMap = { for (var item in existingLocal) item['id']: item };

        for (var group in cloudGroups) {
          final localRef = localMap[group.id] ?? {};
          
          // [Logic Change] 로컬 데이터가 이미 존재하고 구체적인 정보(제목, 위치 등)가 있다면 클라우드의 오래된 데이터로 덮어쓰지 않습니다.
          // 특히 클라우드의 제목이 기본값('New Conversation', 'Group Chat')인 경우 더욱 로컬을 우선합니다.
          final localTitle = localRef['title'] as String? ?? '';
          final isDefaultCloudTitle = group.title == 'New Conversation' || group.title == 'Group Chat';
          
          final finalTitle = (localTitle.isNotEmpty && isDefaultCloudTitle) ? localTitle : (group.title ?? localTitle);
          
          final localLocation = localRef['location'] as String? ?? '';
          final finalLocation = (localLocation.isNotEmpty && (group.location == null || group.location!.isEmpty)) ? localLocation : (group.location ?? localLocation);
          
          final localNote = localRef['note'] as String? ?? '';
          final finalNote = (localNote.isNotEmpty && (group.note == null || group.note!.isEmpty)) ? localNote : (group.note ?? localNote);

          await DatabaseService.insertDialogueGroup(
            id: group.id,
            userId: group.userId,
            title: finalTitle.isNotEmpty ? finalTitle : 'New Conversation',
            persona: group.persona,
            location: finalLocation,
            note: finalNote,
            createdAt: group.createdAt.toIso8601String(),
          );

          // Phase 33: Prefetch participants for better restore visualization (v15.0)
          try {
            final participants = await SupabaseService.getDialogueParticipants(group.id);
            for (var p in participants) {
              await DialogueRepository.insertParticipant({
                'id': p['id'],
                'dialogue_id': group.id,
                'name': p['name'],
                'role': p['role'],
                'gender': p['gender'],
                'lang_code': p['lang_code'],
              });
            }
          } catch (e) {
            debugPrint('[AppState] Participant prefetch failed for ${group.id}: $e');
          }
        }
      } catch (e) {
        debugPrint('[AppState] Supabase dialogue sync failed: $e');
      }
    }

    // [DIAGNOSIS & RECOVERY] Phase 15.6: Search for "Orphaned" data in local DB
    try {
      final db = await DatabaseService.database;
      final orphanedData = await db.query('dialogue_groups');
      final uniqueOwners = orphanedData.map((m) => m['user_id'] as String? ?? 'null').toSet();
      debugPrint('[AppState] DB Diagnosis: Found dialogue groups owned by: $uniqueOwners');
      
      // If we see data owned by someone else (anonymous UUID or 'anonymous'), and merge hasn't happened:
      if (userId != null && uniqueOwners.any((owner) => owner != userId)) {
        debugPrint('[AppState] Orphaned data detected! Attempting emergency local merge...');
        for (final owner in uniqueOwners) {
          if (owner != userId) {
            await DatabaseService.mergeUserSessions(owner, userId);
            debugPrint('[AppState] Emergency Merge: $owner -> $userId');
          }
        }
      }
    } catch (e) {
      debugPrint('[AppState] DB Diagnosis Failed: $e');
    }

    try {
      final localData = await DatabaseService.getDialogueGroups(userId: userId);
      debugPrint('[AppState] Local data count for $userId: ${localData.length}');
      
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
    } finally {
      isSyncing = false; // Phase 33: End Syncing
      notify();
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
    debugPrint('[AppState] Saving Dialogue Progress: id=$_activeDialogueId, title=$title');
    
    _activeDialogueTitle = title;
    _activeDialogueLocation = location;
    
    try {
      final index = _dialogueGroups.indexWhere((g) => g.id == _activeDialogueId);
      
      // Update Local DB First
      await DatabaseService.insertDialogueGroup(
        id: _activeDialogueId!,
        title: title,
        location: location,
        persona: _activePersona,
        note: note,
        createdAt: index != -1 ? _dialogueGroups[index].createdAt.toIso8601String() : DateTime.now().toIso8601String(),
        userId: SupabaseService.client.auth.currentUser?.id,
      );
      
      // Update Supabase and Await (Crucial to prevent race condition during history re-load)
      if (SupabaseService.client.auth.currentUser != null) {
        try {
          await SupabaseService.client.from('dialogue_groups').update({
            'title': title,
            'location': location,
            'note': note
          }).eq('id', _activeDialogueId!);
          debugPrint('[AppState] Supabase update completed for dialog: $_activeDialogueId');
        } catch (e) {
          debugPrint('[AppState] Supabase dialogue save failed: $e');
        }
      }
      
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

      // await loadDialogueGroups(); // [Phase 162 Fix] Removed to prevent race condition/overwrite
      await loadStudyMaterials(); // Sync Mode 2 list
      notify();
      
    } catch (e) {
      debugPrint('[AppState] Error saving dialogue progress: $e');
    }
  }

  /// Save User's message to dialogue
  Future<void> saveUserMessage(String sourceText, String targetText, {String? speakerId}) async {
    if (_activeDialogueId == null) {
      await startNewDialogue();
    }

    // Phase 180: Use precise speakerId if provided, else fallback to 'user' role
    ChatParticipant userPart;
    if (speakerId != null) {
      userPart = _activeParticipants.firstWhere(
        (p) => p.id == speakerId,
        orElse: () => ChatParticipant(id: speakerId, dialogueId: _activeDialogueId!, name: 'Speaker', role: 'user'),
      );
    } else {
      userPart = _activeParticipants.firstWhere(
        (p) => p.role == 'user',
        orElse: () => ChatParticipant(id: 'me', dialogueId: _activeDialogueId!, name: '나', role: 'user'),
      );
    }

    _currentDialogueSequence++;

    try {
      // Phase 129/21: Use ID for speaker_id (Data Integrity)
      await DialogueRepository.insertMessage({
        'dialogue_id': _activeDialogueId,
        'speaker_id': userPart.id, // ID 기반 저장 (integrated_data_structure.md 준수)
        'speaker': userPart.name,   // Legacy support for display
        'source_text': sourceText,
        'target_text': targetText,
        'created_at': DateTime.now().toIso8601String(),
      });

      // Phase 180: Update in-memory list IMMEDIATELY for UI consistency
      _currentChatMessages.add({
        'speaker_id': userPart.id,
        'speaker': userPart.name,
        'source_text': sourceText,
        'target_text': targetText,
        'sequence_order': _currentDialogueSequence,
        'created_at': DateTime.now().toIso8601String(),
      });

      notify();

      SupabaseService.savePrivateChatMessage(
        dialogueId: _activeDialogueId!,
        sourceText: sourceText,
        targetText: targetText,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
        speaker: userPart.id, // Phase 28: Store ID on server too
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

    // Find the participant with role 'ai'
    final aiPart = _activeParticipants.firstWhere(
      (p) => p.role == 'ai',
      // orElse handle: activePersona might be used as name
      orElse: () => ChatParticipant(id: 'ai', dialogueId: _activeDialogueId!, name: _activePersona ?? 'AI', role: 'ai'),
    );
    
    final finalSpeaker = speaker ?? aiPart.name;
    final createdAt = DateTime.now().toIso8601String();
    
    _currentDialogueSequence++;
    
    try {
      // AI Participant 찾기 (이름/역할 기준)
      final existingAi = _activeParticipants.firstWhere(
        (p) => (p.role == 'ai' || p.role == 'assistant') && (speaker == null || p.name == speaker),
        orElse: () => ChatParticipant(id: 'temp', dialogueId: '', name: '', role: ''),
      );

      ChatParticipant updatedAiPart;
      if (existingAi.id == 'temp') {
        // 존재하지 않을 때만 새로 추가 (이때만 targetLang 기본값 사용)
        updatedAiPart = await getOrAddParticipant(
          name: finalSpeaker,
          role: 'ai',
          languageCode: _targetLang, 
        );
      } else {
        // 이미 존재한다면 기존 언어 설정을 파괴하지 않음 (버그 수정)
        updatedAiPart = existingAi;
      }

      // Phase 21: ID 기반 저장
      await DialogueRepository.insertMessage({
        'dialogue_id': _activeDialogueId,
        'speaker_id': updatedAiPart.id,
        'speaker': speaker ?? updatedAiPart.name,
        'source_text': sourceText,
        'target_text': targetText,
        'created_at': createdAt,
      });

      // Phase 180: Update in-memory list IMMEDIATELY for UI consistency
      _currentChatMessages.add({
        'speaker_id': updatedAiPart.id,
        'speaker': speaker ?? updatedAiPart.name,
        'source_text': sourceText,
        'target_text': targetText,
        'sequence_order': _currentDialogueSequence,
        'created_at': createdAt,
      });

      notify();

      SupabaseService.savePrivateChatMessage(
        dialogueId: _activeDialogueId!,
        sourceText: sourceText,
        targetText: targetText,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
        speaker: updatedAiPart.id, // Phase 28: Store ID
        sequenceOrder: _currentDialogueSequence,
      ).catchError((e) => debugPrint('[AppState] Background Cloud Sync Error: $e'));
    } catch (e) {
      debugPrint('[AppState] Error saving AI response: $e');
    }
  }
  /* Phase 136/28: Improved Runtime Repair */
  Future<void> _repairParticipantsFromMessages(String dialogueId) async {
    try {
      final messages = await DatabaseService.getRecordsByDialogueId(dialogueId);
      final uniqueSpeakers = messages.map((m) => m['speaker'] as String? ?? '').where((s) => s.isNotEmpty).toSet();
      
      for (final idOrName in uniqueSpeakers) {
        // [Phase 15.6] Improved Name Recovery Logic
        final bool isId = idOrName.contains('-') || idOrName == 'me' || idOrName == 'ai';
        final role = idOrName.toLowerCase() == 'user' || idOrName == 'me' ? 'user' : 'ai';
        
        String resolvedName = idOrName;
        if (idOrName == 'me' || (isId && role == 'user')) {
          resolvedName = '나';
        } else if (idOrName == 'ai' || (isId && role == 'ai')) {
          resolvedName = 'AI';
        }

        await getOrAddParticipant(
          name: resolvedName, 
          role: role,
          id: isId ? idOrName : null
        );
      }
      debugPrint('[AppState] Repaired ${uniqueSpeakers.length} participants for dialogue $dialogueId');
    } catch (e) {
      debugPrint('[AppState] Participant repair failed: $e');
    }
  }

  /// Phase 33: Merge anonymous data to permanent user account after login
  Future<void> mergeAnonymousDataToUser(String oldId, String newId) async {
    if (oldId == newId) return;
    try {
      debugPrint('[AppState] Merging anonymous data ($oldId) to user account ($newId)...');
      await DatabaseService.mergeUserSessions(oldId, newId);
      await loadDialogueGroups();
    } catch (e) {
      debugPrint('[AppState] Data merger failed: $e');
    }
  }


  /// [Phase 162] Internal helper to pre-fetch location at dialogue start
  Future<void> _fetchAndStoreLocation() async {
    try {
      debugPrint('[AppState] _fetchAndStoreLocation: Attempting to get position...');
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      
      if (permission == LocationPermission.always || permission == LocationPermission.whileInUse) {
        Position? pos;
        
        // [Phase 164] Web/Unsupported Platform Defense
        if (!kIsWeb) {
          try {
            pos = await Geolocator.getLastKnownPosition();
          } catch (e) {
            debugPrint('[AppState] getLastKnownPosition not supported/failed: $e');
          }
        }

        if (pos == null) {
          try {
            pos = await Geolocator.getCurrentPosition(
              locationSettings: LocationSettings(
                accuracy: kIsWeb ? LocationAccuracy.high : LocationAccuracy.low,
                timeLimit: const Duration(seconds: 15),
              ),
            );
          } catch (e) {
            debugPrint('[AppState] getCurrentPosition failed: $e');
          }
        }

        if (pos != null) {
          final coords = '${pos.latitude.toStringAsFixed(3)}, ${pos.longitude.toStringAsFixed(3)}';
          debugPrint('[AppState] Position acquired: $coords');
          
          // 항상 순수 좌표로만 설정 (Immediate Fallback)
          _activeDialogueLocation = coords;
          notify();
          return;
          
        } else {
          debugPrint('[AppState] No position acquired after all attempts. Falling back to IP.');
          _activeDialogueLocation = await getIpBasedLocationFallback();
          notify();
        }
      } else {
        debugPrint('[AppState] Location permission denied: $permission. Falling back to IP.');
        _activeDialogueLocation = await getIpBasedLocationFallback();
        notify();
      }
    } catch (e) {
      debugPrint('[AppState] Pre-fetch location final catch: $e');
      _activeDialogueLocation = await getIpBasedLocationFallback();
      notify();
    }
  }

  /// IP 기반 광역 위치 추적 (Fallback)
  Future<String> getIpBasedLocationFallback() async {
    try {
      debugPrint('[AppState] Attempting IP-based location fallback...');
      final response = await http.get(Uri.parse('http://ip-api.com/json')).timeout(const Duration(seconds: 5));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['status'] == 'success') {
          // 지명 대신 IP API가 제공하는 위경도 좌표 사용
          final lat = data['lat'];
          final lon = data['lon'];
          
          if (lat != null && lon != null) {
             final result = '${lat.toStringAsFixed(3)}, ${lon.toStringAsFixed(3)}';
             debugPrint('[AppState] IP-based coords acquired: $result');
             return result;
          }
        }
      }
    } catch (e) {
      debugPrint('[AppState] IP-based fallback failed: $e');
    }
    return '(위치 정보 없음)';
  }
}
// End of AppStateChat

import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // State Management
import 'package:talkie/providers/app_state.dart';
import '../models/dialogue_group.dart';
import '../l10n/app_localizations.dart';
import '../services/speech_service.dart';
import '../models/chat_participant.dart'; // Phase 70

import '../services/supabase_service.dart';
import '../services/database_service.dart';
import '../services/translation_service.dart';

class ChatScreen extends StatefulWidget {
  final DialogueGroup? initialDialogue;
  /// true = AI 모드(_isPartnerMode=false), false = 파트너 모드(_isPartnerMode=true)
  final bool hasAiParticipant;
  const ChatScreen({super.key, this.initialDialogue, this.hasAiParticipant = true});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  final SpeechService _speechService = SpeechService();
  
  // Phase 180: Multi-Speaker Support
  String? _currentSpeakerId; // 드롭다운에서 현재 선택된 발화자 ID

  // Phase 118: Individual translation visibility toggle state
  // Key: sequence_order (int), Value: if translation is visible
  final Map<int, bool> _showTranslationMap = {};

  // Phase 33: Chat Content Search
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;
  String _searchQuery = '';
  @override
  void initState() {
    super.initState();

    // Phase 119: Pre-warm Speech Services to avoid initial STT/TTS delay
    _speechService.initialize().catchError((e) {
      debugPrint('[ChatScreen] Pre-warm failed: $e');
      return false;
    });

    // Load History if we have an active dialogue (New Chat or Existing)
    final appState = Provider.of<AppState>(context, listen: false);
    debugPrint('[ChatScreen] Initialized with hasAiParticipant: ${widget.hasAiParticipant}');

    // 초기 발화자는 주로 '나(User)'로 설정 시도
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      appState.loadParticipants().then((_) {
        if (mounted && appState.activeParticipants.isNotEmpty) {
           final userP = appState.activeParticipants.firstWhere(
             (p) => p.role == 'user' || p.id == 'user',
             orElse: () => appState.activeParticipants.first
           );
           setState(() {
             _currentSpeakerId = userP.id;
           });
        }
      }); // Phase 70
      _scrollToBottom();
    });
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  // Helper for GPS fallback logic 
  // (Removed _getLocationString since it's now handled by AppState pre-fetching)

  Future<void> _sendMessage(AppLocalizations l10n) async {
    final appState = Provider.of<AppState>(context, listen: false);
    
    debugPrint('>>> _sendMessage CRUCIAL START (globalLoading: ${appState.globalParticipantsLoading}, isLoading: $_isLoading)');
    
    // v14: REMOVE ALL GUARDS. Just let it through to see where it stops.
    // if (appState.globalParticipantsLoading) return;
    // if (_isLoading) return;

    final text = _textController.text.trim();
    if (text.isEmpty) return;

    debugPrint('[Chat] Sending message: $text');
    
    // v14.3: FORCE SNACKBAR FOR FEEDBACK
    debugPrint('[Chat] Processing message: $text');

    // Phase 180: Use selected dynamic speaker
    final speakerId = _currentSpeakerId ?? 'user';

    // 1. CLEAR INPUT & SET LOADING
    setState(() {
      _textController.clear();
      _isLoading = true; 
    });

    // 2. DETACHED BACKGROUND PROCESSING (Run in isolation)
    Future.microtask(() async {
      try {
        // Step 1: Usage Check
        await appState.checkUsageLimit();

        // Participant-Centric Migration (v104 Final Repair)
        // 1. Find the Human Participant configuration
        final humanPart = appState.activeParticipants.firstWhere(
            (p) => p.role == 'user',
            orElse: () => ChatParticipant(id: 'me', dialogueId: '', name: '나', role: 'user', langCode: appState.sourceLang)
        );

        final aiPart = appState.activeParticipants.firstWhere(
            (p) => (p.role == 'ai' || p.role == 'assistant') && p.langCode != 'en',
            orElse: () => appState.activeParticipants.firstWhere(
                (p) => p.role == 'ai' || p.role == 'assistant',
                orElse: () => ChatParticipant(id: 'ai', dialogueId: '', name: 'AI', role: 'ai', langCode: appState.targetLang)
            )
        );

        // 3. Resolve current participant
        final currentParticipant = (speakerId == humanPart.id) ? humanPart : aiPart;

        String finalSourceText = '';
        String finalTargetText = '';

        if (currentParticipant.role == 'user') {
          // User speaks: Use Human's configured language as inputLang
          final inputLang = humanPart.langCode;
          // Target is the AI's configured language
          final outputLang = aiPart.langCode;

          final translationResult = await TranslationService.translate(
            text: text,
            sourceLang: inputLang,
            targetLang: outputLang,
          ).timeout(const Duration(seconds: 10), onTimeout: () => {'text': '[Translation Timeout] $text', 'isValid': true});
          
          finalSourceText = text;
          finalTargetText = translationResult['text'] as String;
        } else {
          // Non-user speaker
          final inputLang = appState.sourceLang;
          final speakerLang = currentParticipant.langCode;

          final translationResult = await TranslationService.translate(
            text: text,
            sourceLang: inputLang,
            targetLang: speakerLang,
          ).timeout(const Duration(seconds: 10), onTimeout: () => {'text': '[Translation Timeout] $text', 'isValid': true});
          
          finalSourceText = translationResult['text'] as String;
          finalTargetText = text;
        }

        // Step 3: Local/Cloud Save (This updates AppState.currentChatMessages and calls notifyListeners)
        await appState.saveUserMessage(finalSourceText, finalTargetText, speakerId: speakerId);

        // Phase 180: Automatic Speaker Switch & Response Trigger (RELIABILITY FIX v106)
        if (currentParticipant.role == 'user') {
          // 1. 자동으로 다음 발화자를 AI로 전환 (UI 버튼 동기화)
          final aiTarget = appState.activeParticipants.firstWhere(
            (p) => p.role == 'ai' || p.role == 'assistant',
            orElse: () => humanPart
          );
          
          if (mounted) {
            setState(() {
              _currentSpeakerId = aiTarget.id;
              debugPrint('[Chat] Speaker switched to AI (${aiTarget.id})');
            });
          }

          final hasAi = appState.activeParticipants.any((p) => p.role == 'ai' || p.role == 'assistant');
          if (hasAi) {
            debugPrint('[Chat] Auto-triggering AI response (v106).');
            // Give a tiny delay for DB consistency but no too long
            await Future.delayed(const Duration(milliseconds: 300)); 
            if (mounted) {
              // ignoreLoading: true -> Skip the _isLoading guard because we are in the same flow
              await _triggerAiResponseManually(appState, l10n, ignoreLoading: true);
            }
          }
        }

      } catch (e) {
        debugPrint('[Chat] BG Error: $e');
        if (mounted) {
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('오류: $e'), backgroundColor: Colors.red));
        }
      } finally {
        if (mounted) {
          setState(() => _isLoading = false);
        }
        _scrollToBottom();
      }
    });
  }

  Future<void> _triggerAiResponseManually(AppState appState, AppLocalizations l10n, {bool ignoreLoading = false}) async {
    if (_isLoading && !ignoreLoading) return;
    if (!mounted) return;
    
    setState(() => _isLoading = true);

    String lastUserText = '';
    String lastUserTrans = '';
    if (appState.currentChatMessages.isNotEmpty) {
      final lastMsg = appState.currentChatMessages.lastWhere(
        (m) => m['speaker'] != appState.activePersona && m['speaker'] != 'ai' && m['speaker'] != 'assistant',
        orElse: () => appState.currentChatMessages.last
      );
      lastUserText = (lastMsg['source_text'] ?? '').toString();
      lastUserTrans = (lastMsg['target_text'] ?? '').toString();
    }

    if (lastUserText.isEmpty) {
      lastUserText = l10n.chatTypeHint;
      lastUserTrans = l10n.chatTypeHint;
    }

    Future.microtask(() async {
      try {
        await appState.checkUsageLimit();
        await _processAiChat(appState, lastUserText, lastUserTrans, l10n);
      } catch (e) {
        if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('오류: $e')));
      } finally {
        if (mounted) setState(() => _isLoading = false);
        _scrollToBottom();
      }
    });
  }

  Future<void> _processAiChat(AppState appState, String userText, String userTranslation, AppLocalizations l10n) async {
      // Find Listeners and Speakers from Participant Profiles (v104 Final Repair)
      final aiPart = appState.activeParticipants.firstWhere(
          (p) => (p.role == 'ai' || p.role == 'assistant') && p.langCode != 'en',
          orElse: () => appState.activeParticipants.firstWhere(
              (p) => p.role == 'ai' || p.role == 'assistant',
              orElse: () => ChatParticipant(id: 'ai', dialogueId: '', name: 'AI', role: 'ai', langCode: appState.targetLang)
          )
      );
      final humanPart = appState.activeParticipants.firstWhere(
          (p) => p.role == 'user',
          orElse: () => ChatParticipant(id: 'me', dialogueId: '', name: '나', role: 'user', langCode: appState.sourceLang)
      );

      final aiLangCode = aiPart.langCode;
      final userLangCode = humanPart.langCode;

      // Get GPS Context & Force AI Language Instruction
      final location = appState.activeDialogueLocation ?? '';
      final currentLocationLabel = l10n.currentLocation;
      
      // EXTREME FIX: Explicitly command the AI to respond in the target language within the context
      final baseContext = '${appState.activeDialogueTitle ?? "None"}. ${location.isNotEmpty ? "$currentLocationLabel: $location" : ""}';
      final contextString = '$baseContext Critical Instruction: You MUST respond ONLY in $aiLangCode language. NEVER use English.';

      // Build History
      final history = appState.currentChatMessages.where((m) => m['speaker'] != 'Partner').map((msg) {
        return {
          'role': (msg['speaker'] == 'user' || msg['speaker'] == 'me') ? 'user' : 'model',
          'parts': [{'text': msg['source_text'] ?? ''}]
        };
      }).toList();

      debugPrint('[Chat] Calling processChat: aiLang=$aiLangCode, userLang=$userLangCode');
      
      final result = await SupabaseService.processChat(
        text: '$userText (Respond into $aiLangCode ONLY. Native Language is $userLangCode)',
        context: contextString,
        targetLang: aiLangCode, // Main text language (e.g. Spanish)
        sourceLang: userLangCode, // Sub-text translation target (e.g. Korean)
        history: history,
      );

      final String aiResponse = result['response'] as String? ?? '';
      final String translatedResponse = result['translatedResponse'] as String? ?? '';
      final String? pos = result['pos'] as String?;
      final String? formType = result['formType'] as String?;
      final String? root = result['root'] as String?;
      final String? explanation = result['explanation'] as String?;
      final String? suggestedTitle = result['title'] as String?;

      // Step 3: Save AI Response (This updates AppState.currentChatMessages and calls notifyListeners)
      await appState.saveAiResponse(
        aiResponse, 
        translatedResponse,
        pos: pos,
        formType: formType,
        root: root,
        explanation: explanation,
      );
      
      if (suggestedTitle != null && 
          (appState.activeDialogueTitle == 'New Conversation' || appState.activeDialogueTitle == l10n.chatUntitled) &&
          appState.activeDialogueId != null &&
          appState.currentChatMessages.length < 5) { // Phase 28: Only auto-title in early stage
        
        // Append Location to Title if available
        String finalTitle = suggestedTitle;
        if (location.isNotEmpty) {
           final displayLocation = location.contains(']') ? location.split(']').last.trim() : location;
           finalTitle = '$finalTitle @ ${displayLocation.split(',')[0]}';
        }
        
        await SupabaseService.updateDialogueTitle(appState.activeDialogueId!, finalTitle);
      }
  }

  Future<void> _endChat(AppLocalizations l10n) async {
    final appState = Provider.of<AppState>(context, listen: false);
    
    // 1. Prepare Initial Values
    // Phase 162: Prioritize AppState's pre-fetched location
    String? detectedLocation = appState.activeDialogueLocation;
    
    // If not pre-fetched, fallback to empty string
    if (detectedLocation == null || detectedLocation.isEmpty) {
      detectedLocation = '';
    }
    
    // Auto-generate Title Logic: "Chat N"
    int count = await DatabaseService.getDialogueCount();
    // If saving NEW chat, it's count + 1. If updating existing, it's just existing title.
    // If activeDialogueTitle is user-set (not "New Conversation"), keep it.
    
    String defaultTitle;
    if (appState.activeDialogueTitle != null && 
        appState.activeDialogueTitle != 'New Conversation' && 
        appState.activeDialogueTitle != l10n.chatUntitled) {
      defaultTitle = appState.activeDialogueTitle!;
    } else {
      defaultTitle = 'Chat ${count + 1}'; // Ensure unique-ish name
    }
    
    final titleController = TextEditingController(text: defaultTitle);
    final locationController = TextEditingController(text: detectedLocation);
    final noteController = TextEditingController(); // Phase 62: Note

    if (!mounted) return;

    // 2. Trigger Background Fetch for AI Suggestions
    appState.fetchChatTitleSuggestions();

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => StatefulBuilder(
        builder: (context, setDialogState) {
          return Consumer<AppState>(
            builder: (context, state, child) {
              return AlertDialog(
                title: Text(l10n.chatEndTitle),
                content: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l10n.chatEndMessage),
                      const SizedBox(height: 20),
                      
                      // Title Input
                      TextField(
                        controller: titleController,
                        decoration: InputDecoration(
                          labelText: l10n.subject, // Will be "Title" in L10n update
                          hintText: 'Chat 1',
                          prefixIcon: const Icon(Icons.title),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      
                      // AI Suggestions Area
                      if (state.isFetchingTitles)
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Center(child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))),
                        )
                      else if (state.suggestedTitles.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Wrap(
                            spacing: 8,
                            children: state.suggestedTitles.map<Widget>((suggestion) => ActionChip(
                              label: Text(suggestion, style: const TextStyle(fontSize: 12)),
                              onPressed: () {
                                setDialogState(() {
                                  titleController.text = suggestion;
                                });
                              },
                              backgroundColor: Colors.blue.shade50,
                            )).toList(),
                          ),
                        ),
                        
                      const SizedBox(height: 16),
                      
                      // Location Input
                      TextField(
                        controller: locationController,
                        readOnly: locationController.text.isNotEmpty && locationController.text != '(위치 정보 없음)', // Phase 162: Allow manual entry if empty
                        decoration: InputDecoration(
                          labelText: l10n.location,
                          prefixIcon: const Icon(Icons.location_on),
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: const OutlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Note Input (New)
                      TextField(
                        controller: noteController,
                        decoration: InputDecoration(
                          labelText: l10n.labelNote, // Reuse "Note" label
                          prefixIcon: const Icon(Icons.note),
                          border: const OutlineInputBorder(),
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(dialogContext),
                    child: Text(l10n.cancel),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF667eea),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () async {
                      final finalTitle = titleController.text.trim();
                      final finalLocation = locationController.text.trim();
                      final finalNote = noteController.text.trim();
                      
                      if (finalTitle.isEmpty) return;
                      
                      await state.saveDialogueProgress(
                        finalTitle, 
                        finalLocation,
                        finalNote.isNotEmpty ? finalNote : null,
                      );
                      
                      if (context.mounted) {
                        Navigator.of(dialogContext).pop(); 
                        Navigator.of(context).pop(); 
                      }
                    },
                    child: Text(l10n.chatSaveAndExit),
                  ),
                ],
              );
            }
          );
        },
      ),
    );
  }

  bool _isListening = false;
  Future<void> _startListening(AppLocalizations l10n) async {
    final appState = Provider.of<AppState>(context, listen: false);
    if (appState.isOffline) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.noInternetWarningMic)),
      );
      return;
    }
    setState(() => _isListening = true);

    try {
      // Phase 6: Ensure any background/other mode STT is stopped
      await appState.stopListening();
      
      // Phase 180: Resolve Listen Language from current speaker
      final speaker = appState.activeParticipants.firstWhere(
        (p) => p.id == _currentSpeakerId, 
        orElse: () => ChatParticipant(id: 'user', dialogueId: '', name: 'ME', role: 'user', langCode: appState.sourceLang)
      );
      final listenLang = speaker.langCode;

      // ChatScreen의 _textController를 직접 업데이트하기 위해 _speechService 단독 사용
      // appState.startListening()을 병용 호출 시 STT가 충돌하여 대화문이 입력되지 않는 버그 발생
      await _speechService.startSTT(
        lang: listenLang, // Use resolved speaker language directly
        listenFor: const Duration(seconds: 30),
        onResult: (text, isFinal, alternates) {
          setState(() {
            _textController.text = text;
          });
          if (isFinal) {
            setState(() => _isListening = false);
            _sendMessage(l10n);
          }
        },
      );
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _isListening = false;
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.recognitionFailed(e.toString()))),
      );
    }
  }
  
  Future<void> _speak(String text, String languageCode, {String? role, String? gender}) async {
    if (text.isEmpty) return;
    
    // Determine the actual locale to use
    // Priority: 1. Explicit languageCode, 2. Text-based detection (done inside SpeechService)
    String localeId = languageCode;
    
    // Clean text (remove brackets/metadata)
    final cleanText = text.replaceAllMapped(RegExp(r'\[([^\]]+)\]'), (match) {
      return match.group(1) ?? '';
    });
    
    final appState = Provider.of<AppState>(context, listen: false);
    
    // Determine Gender (Use provided gender or fallback to AppState)
    final resolvedGender = gender ?? (role == 'user' ? appState.chatUserGender : appState.chatAiGender);

    try {
      await _speechService.speak(cleanText, lang: localeId, gender: resolvedGender);
    } catch (e) {
      appState.handleTtsError(e);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('TTS Error: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final l10n = AppLocalizations.of(context)!;
    
    final messages = appState.currentChatMessages;

    return Scaffold(
      key: ValueKey(appState.activeDialogueId ?? 'new_chat'),
      backgroundColor: Colors.white, 
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A69BD), 
        elevation: 4,
        centerTitle: true,
        title: _isSearching 
          ? TextField(
              controller: _searchController,
              autofocus: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: l10n.search,
                hintStyle: const TextStyle(color: Colors.white70),
                border: InputBorder.none,
              ),
              onChanged: (val) => setState(() => _searchQuery = val.toLowerCase()),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title Only (Dropdown Removed per user request)
                Consumer<AppState>(
                  builder: (context, state, _) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.check_circle, color: Colors.greenAccent),
                        const SizedBox(width: 8),
                        Text(
                           appState.activeDialogueTitle ?? 'Talkie',
                           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
                        ),
                      ],
                    );
                  }
                ),
                
                // if (_isPartnerMode) // REMOVED
                //    Padding(
                //      padding: const EdgeInsets.only(top: 4, left: 4),
                //      child: Text(
                //        '${l10n.partnerMode}: ${l10n.manual}', 
                //        style: const TextStyle(fontSize: 12, color: Colors.white70)
                //      ),
                //    ),
              ],
            ),
        foregroundColor: Colors.white,
        actions: [
          // Search Icon
          IconButton(
            icon: Icon(_isSearching ? Icons.close : Icons.search),
            onPressed: () {
              setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  _searchController.clear();
                  _searchQuery = '';
                }
              });
            },
            tooltip: l10n.search,
          ),
          // Partner Mode Toggle (Removed in Phase 180 Multi-Speaker update)
          if (!_isSearching)
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: () => _endChat(l10n),
              tooltip: l10n.chatSaveAndExit,
            ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: messages.isEmpty 
              ? Center(child: Text(l10n.noMaterialsInCategory, style: TextStyle(color: Colors.grey[400])))
              : ListView.builder(
                  key: ValueKey('msg_list_${messages.length}_$_isSearching'), // Force whole list rebuild
                  controller: _scrollController,
                  padding: const EdgeInsets.all(16),
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final msg = messages[index];
                    
                    // Filter Logic for Search
                    if (_isSearching && _searchQuery.isNotEmpty) {
                      final src = (msg['source_text'] ?? '').toString().toLowerCase();
                      final tgt = (msg['target_text'] ?? '').toString().toLowerCase();
                      if (!src.contains(_searchQuery) && !tgt.contains(_searchQuery)) {
                        return const SizedBox.shrink();
                      }
                    }

                    return _buildMessageBubble(appState, l10n, msg, index);
                  },
                ),
          ),
          if (_isLoading)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: LinearProgressIndicator(),
            ),
          _buildInputArea(appState, l10n),
        ],
      ),
    );
  }

  Widget _buildMessageBubble(AppState appState, AppLocalizations l10n, Map<String, dynamic> msg, int index) {
    final String speakerIdOrName = (msg['speaker'] as String?) ?? 'user';
    
    // Phase 180: Use precise ID matching
    final participant = appState.activeParticipants.firstWhere(
      (p) => p.id == speakerIdOrName || p.name.toLowerCase() == speakerIdOrName.toString().toLowerCase(),
      orElse: () {
        debugPrint('[ChatScreen] Participant NOT FOUND for $speakerIdOrName');
        return ChatParticipant(
          id: 'temp', dialogueId: '', name: speakerIdOrName.toString(), role: 'user'
        );
      }
    );
    
    // UI Override: Determine alignment & color based on role
    // User is right, everyone else (ai, third_party) is left
    final alignment = participant.role == 'user' ? Alignment.centerRight : Alignment.centerLeft;
    final color = participant.role == 'user' ? Colors.blue[50] : (participant.role == 'third_party' ? Colors.orange[50] : const Color(0xFFF5F5F5));
    
    final int seq = msg['sequence_order'] as int? ?? index;
    
    // Phase 180: [FIXED v104] Default to HIDING translation for ALL roles to show the original speaker language first.
    // Use the toggle map if exists, otherwise ALWAYS false (Original language first for both ME and AI)
    final bool isTranslationVisible = _showTranslationMap[seq] ?? false;
    
    // Text Logic for Acoustic Symmetry
    // If translation is visible, we show the target_text(translated to App's sourceLang) and speak in target_lang.
    // Otherwise, we show source_text(original speaker lang) and speak in source_lang.
    final String displayText = isTranslationVisible 
        ? (msg['target_text'] ?? '') // 번역된 언어(주로 앱 사용자의 sourceLang)
        : (msg['source_text'] ?? ''); // 발화자의 원래 언어(participant.langCode)
        
    final String displayLang = isTranslationVisible
        ? appState.sourceLang // Translated to my native language
        : participant.langCode; // Original spoken language (e.g. Spanish)

    // Unified gender logic for identity consistency
    final String displayGender = participant.gender;

    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.9),
        child: Column(
          crossAxisAlignment: participant.role == 'user' ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            // Speaker Header
            if (participant.role == 'user')
              _buildUserHeader(context, appState, l10n, msg)
            else
              _buildParticipantHeader(context, participant, appState, l10n, msg),

            // Bubble
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (participant.role != 'user') _buildToggle(seq, l10n),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(16).copyWith(
                        topRight: participant.role == 'user' ? const Radius.circular(0) : const Radius.circular(16),
                        topLeft: participant.role == 'user' ? const Radius.circular(16) : const Radius.circular(0),
                      ),
                        boxShadow: [
                          BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 2),
                        ],
                    ),
                    child: _buildTextRow(displayText, displayLang, displayGender, participant.role),
                  ),
                ),
                if (participant.role == 'user') _buildToggle(seq, l10n),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToggle(int seq, AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Transform.scale(
            scale: 0.7,
            child: Switch(
              value: _showTranslationMap[seq] ?? false,
              activeThumbColor: Colors.orange,
              onChanged: (val) {
                setState(() {
                  _showTranslationMap[seq] = val;
                });
              },
            ),
          ),
          Text(
            l10n.translation,
            style: const TextStyle(fontSize: 8, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildUserHeader(BuildContext context, AppState appState, AppLocalizations l10n, Map<String, dynamic> msg) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4, right: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // 3. Name (Me)
          Text(
             l10n.me,
             style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }

  Widget _buildParticipantHeader(BuildContext context, ChatParticipant participant, AppState appState, AppLocalizations l10n, Map<String, dynamic> msg) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4, left: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. Rename (Name Click)
          InkWell(
            onTap: () => _showRenameDialog(participant, appState),
            child: Row(
               children: [
                 CircleAvatar(
                   radius: 10,
                   backgroundColor: Color(participant.avatarColor ?? Colors.grey.toARGB32()),
                   child: Text(participant.name[0], style: const TextStyle(fontSize: 10, color: Colors.white)),
                 ),
                 const SizedBox(width: 4),
                  Text(
                     participant.name.toLowerCase() == 'partner' ? l10n.partner : participant.name,
                     style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey[700]),
                  ),
                 const SizedBox(width: 4),
                 Icon(Icons.edit, size: 10, color: Colors.grey[400]),
               ],
            ),
          ),
          
        ],
      ),
    );
  }

  Widget _buildTextRow(String text, String lang, String gender, String role) {
     return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ValueListenableBuilder<String?>(
            valueListenable: _speechService.currentlySpeakingText,
            builder: (context, speakingText, _) {
              final isSpeaking = speakingText == text;
              return IconButton(
                icon: Icon(
                  isSpeaking ? Icons.stop_circle : Icons.volume_up,
                  size: 20,
                  color: isSpeaking ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  if (isSpeaking) {
                    _speechService.stopSpeaking();
                  } else {
                    _speak(text, lang, role: role, gender: gender);
                  }
                },
                constraints: const BoxConstraints(),
                padding: const EdgeInsets.only(left: 4),
              );
            },
          ),
        ],
      );
  }

  // Handle Logic Helpers
  Future<void> _showRenameDialog(ChatParticipant p, AppState appState) async {
     final controller = TextEditingController(text: p.name);
     final l10n = AppLocalizations.of(context)!;
     await showDialog(
       context: context,
       builder: (context) => AlertDialog(
         title: Text(l10n.participantRename),
         content: TextField(
           controller: controller, 
           decoration: InputDecoration(labelText: l10n.labelName, border: const OutlineInputBorder())
         ),
         actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(AppLocalizations.of(context)?.cancel ?? 'Cancel')
            ),
            ElevatedButton(
              onPressed: () async {
                final newName = controller.text.trim();
                if (newName.isNotEmpty && newName != p.name) {
                   await appState.updateParticipant(p.id, name: newName);
                }
                if (context.mounted) Navigator.pop(context);
              },
              child: Text(AppLocalizations.of(context)?.confirm ?? 'Save')
            ),
         ],
       ),
     );
  }


  Widget _buildInputArea(AppState appState, AppLocalizations l10n) {
    return Container(
      padding: EdgeInsets.only(
        left: 8, 
        right: 8, 
        top: 8, 
        bottom: MediaQuery.of(context).padding.bottom + 8
      ),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        border: Border(top: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Phase 180 改: Horizontal Speaker Selector (Horizontal Scroll)
          SizedBox(
            height: 48,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: appState.activeParticipants.length,
              itemBuilder: (context, index) {
                final p = appState.activeParticipants[index];
                final isSelected = _currentSpeakerId == p.id || 
                    (_currentSpeakerId == null && index == 0);
                
                return GestureDetector(
                  onTap: () => setState(() => _currentSpeakerId = p.id),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.only(right: 8, bottom: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: isSelected ? const Color(0xFF667eea) : Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: isSelected ? const Color(0xFF667eea) : Colors.grey.shade300,
                        width: 1.5,
                      ),
                      boxShadow: isSelected ? [
                        BoxShadow(color: const Color(0xFF667eea).withValues(alpha: 0.3), blurRadius: 4, offset: const Offset(0, 2))
                      ] : [
                        BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 2, offset: const Offset(0, 1))
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          p.role == 'user' ? Icons.person : (p.role == 'third_party' ? Icons.people : Icons.smart_toy),
                          size: 18,
                          color: isSelected ? Colors.white : (p.role == 'user' ? Colors.blue : (p.role == 'third_party' ? Colors.orange : Colors.green)),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${p.name} (${p.langCode})',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                            color: isSelected ? Colors.white : Colors.grey.shade800,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          Row(
            children: [
              IconButton(
                icon: Icon(
                  _isListening ? Icons.stop_circle : Icons.mic,
                  color: _isListening ? Colors.red : Colors.blue,
                ),
                onPressed: () {
                  if (_isListening) {
                    _speechService.stopSTT();
                    setState(() => _isListening = false);
                  } else {
                    _startListening(l10n);
                  }
                },
              ),
              Expanded(
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    hintText: _currentSpeakerId != null 
                        ? '${appState.activeParticipants.firstWhere((p) => p.id == _currentSpeakerId, orElse: () => appState.activeParticipants.first).name} (입력)...' 
                        : l10n.chatTypeHint,
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onSubmitted: (_) => _sendMessage(l10n),
                ),
              ),
              const SizedBox(width: 4),
              if (appState.activeParticipants.any((p) => p.id == (_currentSpeakerId ?? 'user') && (p.role == 'ai' || p.role == 'assistant')))
                IconButton(
                  icon: const Icon(Icons.auto_awesome, color: Colors.orange),
                  tooltip: 'AI 문장 생성',
                  onPressed: _isLoading ? null : () {
                    FocusScope.of(context).unfocus();
                    _triggerAiResponseManually(appState, l10n);
                  },
                ),
              const SizedBox(width: 4),
              CircleAvatar(
                backgroundColor: const Color(0xFF667eea),
                 child: Consumer<AppState>(
                  builder: (context, state, child) {
                    if (state.globalParticipantsLoading) {
                      return const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      );
                    }
                    return IconButton(
                      icon: Icon(Icons.send, color: (_isLoading) ? Colors.grey : Colors.white),
                      onPressed: () {
                        debugPrint('>>> USER CLICKED SEND ICON (Reactively)');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.sendingMessage), duration: const Duration(milliseconds: 500)),
                        );
                        _sendMessage(l10n);
                      },
                    );
                  }
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../models/dialogue_group.dart';
import '../services/supabase_service.dart';
import '../services/database_service.dart';
import '../services/speech_service.dart';
import '../services/translation_service.dart';
import '../l10n/app_localizations.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';

class ChatScreen extends StatefulWidget {
  final DialogueGroup? initialDialogue;
  const ChatScreen({super.key, this.initialDialogue});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  List<Map<String, dynamic>> _messages = [];
  bool _isLoading = false;
  final SpeechService _speechService = SpeechService();
  
  bool _isPartnerMode = false; // Toggle for Real Person Chat
  bool _isPartnerTurn = false; // For Mic Logic (True = Listen in Target Lang)

  @override
  void initState() {
    super.initState();
    if (widget.initialDialogue != null) {
      _loadHistory();
    }
    // Load list for Dropdown
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AppState>(context, listen: false).loadDialogueGroups();
    });
  }

  Future<void> _loadHistory() async {
    final history = await DatabaseService.getRecordsByDialogueId(widget.initialDialogue!.id);
    setState(() {
      _messages = history;
    });
    _scrollToBottom();
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

  // Helper to get GPS Context
  Future<String> _getLocationString(AppLocalizations l10n) async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) return '';
      }
      
      if (permission == LocationPermission.deniedForever) return '';

      // 1. Try Last Known Position (Instant)
      Position? position = await Geolocator.getLastKnownPosition();
      
      // 2. If null or old, try Current Position with Timeout (3s)
      if (position == null) {
        try {
          position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.medium,
            timeLimit: const Duration(seconds: 3),
          );
        } catch (e) {
          debugPrint('GPS Timeout or Error: $e');
        }
      }

      if (position == null) return '';

      final placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
      
      if (placemarks.isNotEmpty) {
        final place = placemarks.first;
        // e.g. Gangnam, Seoul
        final city = place.locality ?? place.administrativeArea ?? '';
        final sub = place.subLocality ?? place.thoroughfare ?? '';
        
        if (sub.isNotEmpty && city.isNotEmpty) {
          return '$sub, $city';
        }
        return city.isNotEmpty ? city : place.country ?? '';
      }
    } catch (e) {
      debugPrint('GPS Error: $e');
    }
    return '';
  }

  Future<void> _sendMessage(AppLocalizations l10n) async {
    final text = _textController.text.trim();
    if (text.isEmpty) return;

    final appState = Provider.of<AppState>(context, listen: false);
    
    // Determine Speaker & Input Language
    // If PartneMode AND PartnerTurn -> Speaker is Partner (Opponent), Input is Target Lang
    // If PartneMode AND !PartnerTurn -> Speaker is User, Input is Source Lang
    // If !PartnerMode -> Speaker is User (always), Input is Source Lang
    
    // However, text field input is manually typed. Usually assumes Source Lang for User.
    // If Partner Mode manual type, maybe we assume Partner typed it?
    // Let's rely on _isPartnerTurn toggle for manual input too if "Partner Mode" is active.
    
    final isPartnerMessage = _isPartnerMode && _isPartnerTurn;
    final inputLang = isPartnerMessage ? appState.targetLang : appState.sourceLang;
    final outputLang = isPartnerMessage ? appState.sourceLang : appState.targetLang;
    
    
    // Check Usage Limit first
    try {
      await appState.checkUsageLimit();
    } catch (e) {
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(l10n.usageLimitTitle),
            content: Text(e.toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.confirm),
              ),
            ],
          ),
        );
      }
      return;
    }

    String translatedText = '';
    
    setState(() {
       _isLoading = true;
       _messages.add({
        'speaker': isPartnerMessage ? l10n.partner : 'User',
        'source_text': text, // Primary text (Original)
        'target_text': '',   // Translated
      });
    });
    
    _textController.clear();
    _scrollToBottom();

    try {
      // 1. Translate (Bidirectional based on sender)
      final translationResult = await TranslationService.translate(
        text: text,
        sourceLang: inputLang, 
        targetLang: outputLang,
      );
      
      translatedText = translationResult['text'] as String? ?? '';

      // Update local message
      setState(() {
        _messages.last['target_text'] = translatedText;
      });

      // 2. Process Next Step (AI or Save Partner Msg)
      if (_isPartnerMode) {
         // Partner Mode: Just save the validated message pair (No AI processing)
         await _savePartnerMessage(
           appState, 
           text, // original
           inputLang,
           translatedText, // translation
           outputLang,
           isPartnerMessage ? (l10n.partner ?? 'Partner') : 'User'
        );
        
        setState(() => _isLoading = false);
        
        // Auto-switch turn? Maybe useful.
        setState(() => _isPartnerTurn = !isPartnerMessage);

      } else {
        // AI Mode: Process Chat with GPS Context
         await _processAiChat(appState, text, translatedText, l10n);
      }
      
      
      // Increment Usage Count (Billable Action)
      await appState.incrementUsage();
      
      _scrollToBottom();

    } catch (e) {
      setState(() => _isLoading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.chatFailed(e.toString()))),
      );
    }
  }

  Future<void> _savePartnerMessage(AppState appState, String source, String sLang, String target, String tLang, String speaker) async {
      // Create a dialogue group if none
      if (appState.activeDialogueId == null) {
         await appState.startNewDialogue(persona: 'Partner');
      }
      
      // Save Message (We reuse saveAiResponse logic or call save directly)
      // saveAiResponse assumes Source->Target.
      // Here we might have Target->Source (Partner).
      // But database expects Source/Target fields.
      // Let's align: DB 'source_text' is what was spoken/typed. 'target_text' is translation.
      // 'speaker' field distinguishes who said it.
      
      await appState.saveAiResponse(
        source, // Original
        target, // Translation
        speaker: speaker
      );
  }

  Future<void> _processAiChat(AppState appState, String userText, String userTranslation, AppLocalizations l10n) async {
      // Get GPS Context
      final location = await _getLocationString(l10n);
      final currentLocationLabel = l10n.currentLocation;
      final contextString = '${appState.activeDialogueTitle ?? "None"}. ${location.isNotEmpty ? "$currentLocationLabel: $location" : ""}';

      // Build History
      final history = _messages.where((m) => m['speaker'] != 'Partner').map((msg) {
        return {
          'role': msg['speaker'] == 'User' ? 'user' : 'model',
          'parts': [{'text': msg['source_text'] ?? ''}]
        };
      }).toList();

      final result = await SupabaseService.processChat(
        text: userText,
        context: contextString,
        targetLang: appState.targetLang,
        history: history,
      );

      final String aiResponse = result['response'] as String? ?? '';
      final String translatedResponse = result['translatedResponse'] as String? ?? '';
      final String? pos = result['pos'] as String?;
      final String? formType = result['formType'] as String?;
      final String? root = result['root'] as String?;
      final String? explanation = result['explanation'] as String?;
      final String? suggestedTitle = result['title'] as String?;

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
          appState.activeDialogueId != null) {
        
        // Append Location to Title if available
        String finalTitle = suggestedTitle;
        if (location.isNotEmpty) {
           finalTitle = '$finalTitle @ ${location.split(',')[0]}';
        }
        
        await SupabaseService.updateDialogueTitle(appState.activeDialogueId!, finalTitle);
        await appState.loadDialogueGroups();
      }

      if (mounted) {
        setState(() {
          _messages.add({
            'speaker': 'AI',
            'source_text': aiResponse, 
            'target_text': translatedResponse,
          });
          _isLoading = false;
        });
      }
  }

  Future<void> _endChat(AppLocalizations l10n) async {
    final appState = Provider.of<AppState>(context, listen: false);
    
    // 1. Prepare Initial Values
    final now = DateTime.now();
    final dateStr = DateFormat('MM/dd HH:mm').format(now);
    
    // Fetch location once for pre-filling
    final detectedLocation = await _getLocationString(l10n);
    final defaultTitle = detectedLocation.isNotEmpty ? '$detectedLocation ($dateStr)' : 'Chat $dateStr';
    
    final titleController = TextEditingController(text: appState.activeDialogueTitle ?? defaultTitle);
    final locationController = TextEditingController(text: detectedLocation);

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
                          labelText: l10n.subject ?? 'Title',
                          hintText: l10n.chatUntitled,
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
                        decoration: InputDecoration(
                          labelText: l10n.location,
                          prefixIcon: const Icon(Icons.location_on),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.my_location),
                            onPressed: () async {
                              final loc = await _getLocationString(l10n);
                              setDialogState(() {
                                locationController.text = loc;
                              });
                            },
                          ),
                          border: const OutlineInputBorder(),
                        ),
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
                      
                      if (finalTitle.isEmpty) return;
                      
                      await state.saveDialogueProgress(finalTitle, finalLocation);
                      
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

    setState(() => _isListening = true);

    try {
      // Determine Language based on Partner Mode Key
      // If Partner Turn: Listen in Target Lang
      // Else: Listen in Source Lang
      
      final isPartnerListen = _isPartnerMode && _isPartnerTurn;
      final listenLang = isPartnerListen ? appState.targetLang : appState.sourceLang;

      await appState.startListening(
        languageCode: listenLang,
      );
      
      // We need to continuously update local controller from AppState sourceText?
      // Wait, AppState.startListening updates AppState.sourceText.
      // But Chat Screen has its own controller `_textController`.
      // The callback below is what connects them.
      // Wait, AppState `startListening` calls `setSourceText`.
      // I should listen to AppState changes or pass a callback?
      // Actually, my `_startListening` here calls `_speechService.startSTT` directly in the OLD code.
      // Do I use `appState.startListening` or `_speechService` directly?
      // `appState.startListening` is better for global state management but `ChatScreen` has local text controller.
      // Let's stick to using `_speechService` DIRECTLY here to avoid conflicting with Mode 1 text state.
      
      await _speechService.startSTT(
        lang: appState.getServiceLocale(listenLang), // I need to expose this helper or duplicate logic
        // Helper `_getServiceLocale` is private in AppState.
        // Let's imply generic locale string construction:
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
      setState(() => _isLoading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.recognitionFailed(e.toString()))),
      );
    }
  }
  
  void _speak(String text, String languageCode, {bool isUser = true}) {
    if (text.isEmpty) return;
    
    // Use AppState's locale helper for consistency
    final appState = Provider.of<AppState>(context, listen: false);
    final localeId = appState.getServiceLocale(languageCode);

    // Clean text
    String cleanText = text.replaceAll(RegExp(r'[\*\_#\`]'), '');
    cleanText = cleanText.replaceAllMapped(RegExp(r'\[([^\]]+)\]\([^\)]+\)'), (match) {
      return match.group(1) ?? '';
    });
    
    // Determine Gender
    final gender = isUser ? appState.chatUserGender : appState.chatAiGender;

    _speechService.speak(cleanText, lang: localeId, gender: gender);
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dialogue Dropdown
            Consumer<AppState>(
              builder: (context, state, _) {
                final groups = state.dialogueGroups;
                final activeId = state.activeDialogueId;
                
                // Truncate title helper
                String truncate(String s) => s.length > 20 ? '${s.substring(0, 20)}...' : s;

                // If no groups, just show text
                if (groups.isEmpty) {
                   return Text(state.activeDialogueTitle ?? l10n.chatAiChat, style: const TextStyle(fontSize: 16));
                }

                return Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: _isPartnerMode ? Colors.teal : const Color(0xFF667eea),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: groups.any((g) => g.id == activeId) ? activeId : null,
                      hint: Text(
                        truncate(state.activeDialogueTitle ?? l10n.chatAiChat), 
                        style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)
                      ),
                      icon: const Icon(Icons.arrow_drop_down, color: Colors.white70),
                      isExpanded: false,
                      isDense: true,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                      onChanged: (String? newValue) async {
                        if (newValue == 'new_chat') {
                           await state.startNewDialogue(persona: _isPartnerMode ? 'Partner' : 'AI');
                           setState(() { _messages = []; });
                        } else if (newValue != null) {
                           final group = groups.firstWhere((g) => g.id == newValue);
                           await state.loadExistingDialogue(group);
                           _loadHistory();
                        }
                      },
                      items: [
                        // New Chat Option
                        DropdownMenuItem<String>(
                          value: 'new_chat',
                          child: Row(
                            children: [
                              const Icon(Icons.add, color: Colors.white, size: 20),
                              const SizedBox(width: 8),
                              Text(l10n.chatNew ?? "New Chat"),
                            ],
                          ),
                        ),
                        
                        ...groups.map((group) {
                          return DropdownMenuItem<String>(
                            value: group.id,
                            child: Text(truncate(group.title ?? 'no title')),
                          );
                        }).toList(), // Removed toList() inside map? No.
                      ],
                    ),
                  ),
                );
              },
            ),
            
            if (_isPartnerMode)
               Text(
                 '${l10n.partnerMode}: ${l10n.manual}', 
                 style: const TextStyle(fontSize: 12, color: Colors.white70)
               ),
          ],
        ),
        backgroundColor: _isPartnerMode ? Colors.teal : const Color(0xFF667eea),
        foregroundColor: Colors.white,
        actions: [
          // Partner Mode Toggle
          IconButton(
            icon: Icon(_isPartnerMode ? Icons.person : Icons.smart_toy),
            tooltip: _isPartnerMode ? l10n.switchToAi : l10n.switchToPartner,
            onPressed: () {
              setState(() {
                _isPartnerMode = !_isPartnerMode;
                _isPartnerTurn = false; // Reset to User turn
              });
            },
          ),
            onPressed: () => _endChat(l10n),
            tooltip: l10n.chatSaveAndExit,
          ),
          
          // Voice Settings Menu
          PopupMenuButton<String>(
            icon: const Icon(Icons.tune),
            tooltip: 'Voice Settings',
            onSelected: (value) {
              if (value == 'settings') {
                _showVoiceSettingsDialog(context);
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                 const PopupMenuItem<String>(
                   value: 'settings',
                   child: Row(
                     children: [
                       Icon(Icons.record_voice_over, color: Colors.black54),
                       SizedBox(width: 8),
                       Text('Voice Settings'),
                     ],
                   ),
                 ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                return _buildMessageBubble(msg, appState, l10n);
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

  Widget _buildMessageBubble(Map<String, dynamic> msg, AppState appState, AppLocalizations l10n) {
    final speaker = msg['speaker'];
    final isUser = speaker == 'User';
    final isPartner = speaker == l10n.partner;
    
    // Layout alignment: User Right, AI/Partner Left
    final alignment = isUser ? Alignment.centerRight : Alignment.centerLeft;
    final color = isUser ? Colors.blue[50] : (isPartner ? Colors.teal[50] : Colors.white);
    final textColor = isUser ? Colors.blue[900] : (isPartner ? Colors.teal[900] : Colors.black87);
    
    // Determine Languages for TTS
    // User: Source (Primary), Target (Secondary)
    // Partner: Target (Primary), Source (Secondary)
    final primaryLang = isUser ? appState.sourceLang : appState.targetLang;
    final secondaryLang = isUser ? appState.targetLang : appState.sourceLang;
    
    final primaryText = msg['source_text'] ?? '';
    final secondaryText = msg['target_text'] ?? '';

    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(12),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.85),
        child: Column(
          crossAxisAlignment: isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            // Speaker Name
            Padding(
              padding: const EdgeInsets.only(bottom: 4, left: 4, right: 4),
              child: Text(
                speaker ?? 'AI',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16).copyWith(
                  topRight: isUser ? const Radius.circular(0) : const Radius.circular(16),
                  topLeft: isUser ? const Radius.circular(16) : const Radius.circular(0),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 2),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Primary Text (Spoken/Original)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          primaryText,
                          style: TextStyle(
                            fontSize: 16,
                            color: textColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      if (primaryText.isNotEmpty)
                        ValueListenableBuilder<String?>(
                          valueListenable: _speechService.currentlySpeakingText,
                          builder: (context, speakingText, _) {
                            final isSpeaking = speakingText == primaryText;
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
                                  _speak(primaryText, primaryLang, isUser: isUser);
                                }
                              },
                              constraints: const BoxConstraints(),
                              padding: const EdgeInsets.only(left: 4),
                            );
                          },
                        ),
                    ],
                  ),
                  
                  // Secondary Text (Translation)
                  if (secondaryText.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Divider(height: 12),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Text(
                                  secondaryText,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              ValueListenableBuilder<String?>(
                                valueListenable: _speechService.currentlySpeakingText,
                                builder: (context, speakingText, _) {
                                  final isSpeaking = speakingText == secondaryText;
                                  return IconButton(
                                    icon: Icon(
                                      isSpeaking ? Icons.stop_circle : Icons.volume_up,
                                      size: 18,
                                      color: isSpeaking ? Colors.red : Colors.grey,
                                    ),
                                    onPressed: () {
                                      if (isSpeaking) {
                                        _speechService.stopSpeaking();
                                      } else {
                                        _speak(secondaryText, secondaryLang, isUser: isUser);
                                      }
                                    },
                                    constraints: const BoxConstraints(),
                                    padding: const EdgeInsets.only(left: 4),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
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
        color: _isPartnerMode ? Colors.teal.shade50 : Colors.grey[50],
        border: Border(top: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Partner Turn Indicator / Toggle
          if (_isPartnerMode)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(l10n.speaker),
                   Switch(
                     value: _isPartnerTurn,
                     activeColor: Colors.teal,
                     onChanged: (val) {
                       setState(() => _isPartnerTurn = val);
                     },
                   ),
                   Text(
                     _isPartnerTurn ? l10n.partner : l10n.me,
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       color: _isPartnerTurn ? Colors.teal : Colors.blue,
                     ),
                   ),
                ],
              ),
            ),

          Row(
            children: [
              IconButton(
                icon: Icon(
                  _isListening ? Icons.stop_circle : Icons.mic,
                  color: _isListening ? Colors.red : (_isPartnerTurn ? Colors.teal : Colors.blue),
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
                    hintText: _isPartnerMode 
                        ? (_isPartnerTurn ? '${l10n.partner} (${appState.targetLang})...' : '${l10n.me} (${appState.sourceLang})...')
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
              CircleAvatar(
                backgroundColor: _isPartnerMode ? Colors.teal : const Color(0xFF667eea),
                child: IconButton(
                  icon: const Icon(Icons.send, color: Colors.white),
                  onPressed: () => _sendMessage(l10n),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  // Voice Settings Dialog
  void _showVoiceSettingsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        final appState = Provider.of<AppState>(context);
        return AlertDialog(
          title: const Text('Voice Settings'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Select preferred voice gender (Target: 30s tone).'),
              const SizedBox(height: 16),
              
              const Text('My Voice (User)', style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ChoiceChip(
                     label: const Text('Male'),
                     selected: appState.chatUserGender == 'male',
                     onSelected: (selected) {
                       if (selected) appState.setChatUserGender('male');
                     },
                   ),
                   ChoiceChip(
                     label: const Text('Female'),
                     selected: appState.chatUserGender == 'female',
                     onSelected: (selected) {
                       if (selected) appState.setChatUserGender('female');
                     },
                   ),
                ],
              ),
              const SizedBox(height: 16),
              
              const Text('Partner Voice (AI)', style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ChoiceChip(
                     label: const Text('Male'),
                     selected: appState.chatAiGender == 'male',
                     onSelected: (selected) {
                       if (selected) appState.setChatAiGender('male');
                     },
                   ),
                   ChoiceChip(
                     label: const Text('Female'),
                     selected: appState.chatAiGender == 'female',
                     onSelected: (selected) {
                       if (selected) appState.setChatAiGender('female');
                     },
                   ),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

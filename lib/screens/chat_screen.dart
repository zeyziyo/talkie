import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../models/dialogue_group.dart';
import '../services/supabase_service.dart';
import '../services/database_service.dart';
import '../services/speech_service.dart';
import '../services/translation_service.dart'; // [New Import]
import '../l10n/app_localizations.dart';

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
  final SpeechService _speechService = SpeechService(); // Instance for TTS

  @override
  void initState() {
    super.initState();
    if (widget.initialDialogue != null) {
      _loadHistory();
    }
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

  Future<void> _sendMessage(AppLocalizations l10n) async {
    final text = _textController.text.trim();
    if (text.isEmpty) return;

    final appState = Provider.of<AppState>(context, listen: false);
    
    // 1. Translate User Input (Source -> Target) immediately
    String userTranslation = '';
    
    setState(() {
       _isLoading = true;
       // Add placeholder message first
       _messages.add({
        'speaker': 'User',
        'source_text': text,
        'target_text': '', // Will update after translation
      });
    });
    
    _textController.clear();
    _scrollToBottom();

    try {
      // 1.1 Perform Translation
      final translationResult = await TranslationService.translate(
        text: text,
        sourceLang: appState.sourceLang, // e.g. 'ko'
        targetLang: appState.targetLang, // e.g. 'en'
      );
      
      userTranslation = translationResult['text'] as String? ?? '';

      // Update the last message (User's) with translation
      setState(() {
        _messages.last['target_text'] = userTranslation;
      });

      // 2. Process Chat with AI
      // Build history for context
      final history = _messages.map((msg) {
        return {
          'role': msg['speaker'] == 'User' ? 'user' : 'model',
          'parts': [{'text': msg['source_text'] ?? ''}]
        };
      }).toList();

      final result = await SupabaseService.processChat(
        text: text,
        context: appState.activeDialogueTitle ?? 'None',
        targetLang: appState.targetLang,
        history: history,
      );

      final aiResponse = result['response'] as String? ?? '';
      final translation = result['translation'] as String? ?? '';
      final suggestedTitle = result['title'] as String?;

      await appState.saveAiResponse(aiResponse, translation);
      
      if (suggestedTitle != null && (appState.activeDialogueTitle == 'New Conversation' || appState.activeDialogueTitle == l10n.chatUntitled)) {
        await SupabaseService.updateDialogueTitle(appState.activeDialogueId!, suggestedTitle);
        await appState.loadDialogueGroups();
      }

      setState(() {
        _messages.add({
          'speaker': 'AI',
          'source_text': aiResponse, // AI replies in Target Language usually
          'target_text': translation, // Translation in Source Language
        });
        _isLoading = false;
      });
      _scrollToBottom();

    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.chatFailed(e.toString()))),
      );
    }
  }

  Future<void> _endChat(AppLocalizations l10n) async {
    final appState = Provider.of<AppState>(context, listen: false);
    final controller = TextEditingController(text: appState.activeDialogueTitle);

    return showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(l10n.chatEndTitle),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.chatEndMessage),
            const SizedBox(height: 16),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: l10n.contextTagHint, 
                border: const OutlineInputBorder(),
              ),
              autofocus: true,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(l10n.cancel),
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                final newTitle = controller.text.trim();
                // 1. Update Title if provided (or keep existing/default)
                if (newTitle.isNotEmpty) {
                  await SupabaseService.updateDialogueTitle(appState.activeDialogueId!, newTitle);
                }
                
                // 2. Refresh List
                await appState.loadDialogueGroups();

                // 3. Close Dialog & Exit Screen
                if (context.mounted) {
                   Navigator.of(dialogContext).pop(); // Close Dialog
                   Navigator.of(context).pop(); // Exit Chat Screen
                }
              } catch (e) {
                // Handle Error
                if (context.mounted) {
                   ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Error: $e')),
                   );
                }
              }
            },
            child: Text(l10n.chatSaveAndExit),
          ),
        ],
      ),
    );
  }



  bool _isListening = false;
  Future<void> _startListening(AppLocalizations l10n) async {
    final appState = Provider.of<AppState>(context, listen: false);

    setState(() => _isListening = true);

    try {
      await _speechService.startSTT(
        lang: appState.sourceLang == 'ko' ? 'ko-KR' : 'en-US', 
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
      setState(() => _isListening = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.recognitionFailed(e.toString()))),
      );
    }
  }
  
  // Helper to Speak Text
  void _speak(String text, String languageCode) {
    if (text.isEmpty) return;
    // Map language code to locale if needed (e.g., 'en' -> 'en-US', 'ko' -> 'ko-KR')
    String localeId = 'en-US';
    if (languageCode == 'ko') localeId = 'ko-KR';
    else if (languageCode == 'en') localeId = 'en-US';
    else if (languageCode == 'ja') localeId = 'ja-JP';
    else if (languageCode == 'zh') localeId = 'zh-CN';
    else localeId = languageCode; // Fallback

    _speechService.speak(text, lang: localeId);
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(appState.activeDialogueTitle ?? l10n.chatAiChat),
        backgroundColor: const Color(0xFF667eea),
        foregroundColor: Colors.white,
        actions: [

          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => _endChat(l10n),
            tooltip: l10n.chatSaveAndExit,
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
    final isUser = msg['speaker'] == 'User';
    final primaryText = msg['source_text'] ?? '';
    final secondaryText = msg['target_text'] ?? '';
    
    // Determine Languages for TTS
    // If User: Primary is SourceLang, Secondary is TargetLang
    // If AI: Primary is TargetLang (usually), Secondary is SourceLang
    final primaryLang = isUser ? appState.sourceLang : appState.targetLang;
    final secondaryLang = isUser ? appState.targetLang : appState.sourceLang;

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
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
                isUser ? l10n.me : (msg['speaker'] ?? 'AI'),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: isUser ? Colors.blue[700] : Colors.grey[600],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isUser ? Colors.blue[50] : Colors.white,
                borderRadius: BorderRadius.circular(16).copyWith(
                  topRight: isUser ? const Radius.circular(0) : const Radius.circular(16),
                  topLeft: isUser ? const Radius.circular(16) : const Radius.circular(0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Primary Text (and TTS)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          primaryText,
                          style: TextStyle(
                            fontSize: 16,
                            color: isUser ? Colors.blue[900] : Colors.black87,
                            fontWeight: isUser ? FontWeight.w500 : FontWeight.normal,
                          ),
                        ),
                      ),
                      if (primaryText.isNotEmpty)
                        IconButton(
                          icon: const Icon(Icons.volume_up, size: 20, color: Colors.grey),
                          onPressed: () => _speak(primaryText, primaryLang),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          visualDensity: VisualDensity.compact,
                        ),
                    ],
                  ),
                  
                  // Secondary Text (and TTS)
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
                              IconButton(
                                icon: const Icon(Icons.volume_up, size: 18, color: Colors.grey),
                                onPressed: () => _speak(secondaryText, secondaryLang),
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                visualDensity: VisualDensity.compact,
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
        color: Colors.grey[50],
        border: Border(top: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Row(
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
                hintText: l10n.chatTypeHint,
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
            backgroundColor: const Color(0xFF667eea),
            child: IconButton(
              icon: const Icon(Icons.send, color: Colors.white),
              onPressed: () => _sendMessage(l10n),
            ),
          ),
        ],
      ),
    );
  }
}

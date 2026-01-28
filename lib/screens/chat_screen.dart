import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../models/dialogue_group.dart';
import '../services/supabase_service.dart';
import '../services/database_service.dart';
import '../services/speech_service.dart';
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
    
    setState(() {
      _messages.add({
        'speaker': 'User',
        'source_text': text,
        'target_text': '', 
      });
      _isLoading = true;
    });
    _textController.clear();
    _scrollToBottom();

    try {
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

      final aiResponse = result['response'] as String;
      final translation = result['translation'] as String;
      final suggestedTitle = result['title'] as String?;

      await appState.saveAiResponse(aiResponse, translation);
      
      if (suggestedTitle != null && (appState.activeDialogueTitle == 'New Conversation' || appState.activeDialogueTitle == l10n.chatUntitled)) {
        await SupabaseService.updateDialogueTitle(appState.activeDialogueId!, suggestedTitle);
        appState.loadDialogueGroups();
      }

      setState(() {
        _messages.add({
          'speaker': 'AI',
          'source_text': aiResponse,
          'target_text': translation,
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

  Future<void> _showTitleEditDialog(AppLocalizations l10n) async {
    final appState = Provider.of<AppState>(context, listen: false);
    final controller = TextEditingController(text: appState.activeDialogueTitle);

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.chatEditTitle),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(hintText: l10n.contextTagHint),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          ElevatedButton(
            onPressed: () async {
              final newTitle = controller.text.trim();
              if (newTitle.isNotEmpty) {
                await SupabaseService.updateDialogueTitle(appState.activeDialogueId!, newTitle);
                appState.loadDialogueGroups();
                Navigator.pop(context);
                setState(() {});
              }
            },
            child: Text(l10n.saveData),
          ),
        ],
      ),
    );
  }

  bool _isListening = false;
  Future<void> _startListening(AppLocalizations l10n) async {
    final speechService = SpeechService();
    final appState = Provider.of<AppState>(context, listen: false);

    setState(() => _isListening = true);

    try {
      await speechService.startSTT(
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
            icon: const Icon(Icons.edit),
            onPressed: () => _showTitleEditDialog(l10n),
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
                final isUser = msg['speaker'] == 'User';
                
                return Align(
                  alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.all(12),
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
                              Text(
                                msg['source_text'] ?? '',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: isUser ? Colors.blue[900] : Colors.black87,
                                  fontWeight: isUser ? FontWeight.w500 : FontWeight.normal,
                                ),
                              ),
                              if (!isUser && msg['target_text'] != null && msg['target_text'].isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Divider(height: 12),
                                      Text(
                                        msg['target_text'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[700],
                                          fontStyle: FontStyle.italic,
                                        ),
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
                SpeechService().stopSTT();
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

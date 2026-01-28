import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import 'chat_screen.dart';
import '../l10n/app_localizations.dart';

class ChatHistoryScreen extends StatefulWidget {
  final bool isWidget;
  final Key? fabKey;
  const ChatHistoryScreen({super.key, this.isWidget = false, this.fabKey});

  @override
  State<ChatHistoryScreen> createState() => _ChatHistoryScreenState();
}

class _ChatHistoryScreenState extends State<ChatHistoryScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => 
      Provider.of<AppState>(context, listen: false).loadDialogueGroups()
    );
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final l10n = AppLocalizations.of(context)!;
    final dialogues = appState.dialogueGroups;

    final content = dialogues.isEmpty
          ? _buildEmptyState(l10n)
          : ListView.builder(
              itemCount: dialogues.length,
              itemBuilder: (context, index) {
                final group = dialogues[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue[100],
                    child: const Icon(Icons.chat, color: Colors.blue),
                  ),
                  title: Text(group.title ?? l10n.chatUntitled),
                  subtitle: Text(
                    '${group.persona ?? "Assistant"} • ${group.createdAt.toString().split('.')[0]}',
                  ),
                  onTap: () async {
                    // Set as active and navigate
                    await appState.loadExistingDialogue(group);
                    if (mounted) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(initialDialogue: group),
                        ),
                      );
                    }
                  },
                );
              },
            );

    if (widget.isWidget) {
      return Scaffold(
        body: content,
        floatingActionButton: FloatingActionButton.extended(
          key: widget.fabKey,
          onPressed: () => _showNewChatDialog(appState, l10n),
          label: Text(l10n.chatNewChat),
          icon: const Icon(Icons.add),
          backgroundColor: const Color(0xFF667eea),
          foregroundColor: Colors.white,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.chatHistoryTitle),
        backgroundColor: const Color(0xFF667eea),
        foregroundColor: Colors.white,
      ),
      body: content,
      floatingActionButton: FloatingActionButton.extended(
        key: widget.fabKey,
        onPressed: () => _showNewChatDialog(appState, l10n),
        label: Text(l10n.chatNewChat),
        icon: const Icon(Icons.add),
        backgroundColor: const Color(0xFF667eea),
      ),
    );
  }

  Widget _buildEmptyState(AppLocalizations l10n) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.chat_bubble_outline, size: 64, color: Colors.grey[300]),
          const SizedBox(height: 16),
          Text(
            l10n.chatNoConversations,
            style: TextStyle(color: Colors.grey[500], fontSize: 18),
          ),
          const SizedBox(height: 8),
          Text(l10n.chatStartNewPrompt),
        ],
      ),
    );
  }

  void _showNewChatDialog(AppState appState, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.chatChoosePersona),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _personaTile(l10n.personaTeacher, Icons.school, appState),
            _personaTile(l10n.personaGuide, Icons.map, appState),
            _personaTile(l10n.personaFriend, Icons.face, appState),
          ],
        ),
      ),
    );
  }

  Widget _personaTile(String name, IconData icon, AppState appState) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
      onTap: () async {
        Navigator.pop(context);
        await appState.startNewDialogue(persona: name);
        if (mounted) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatScreen()),
          );
        }
      },
    );
  }
}

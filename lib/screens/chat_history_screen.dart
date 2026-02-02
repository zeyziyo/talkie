import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import 'chat_screen.dart';
import '../l10n/app_localizations.dart';
import '../models/dialogue_group.dart';

class ChatHistoryScreen extends StatefulWidget {
  final bool isWidget;
  final Key? fabKey;
  const ChatHistoryScreen({super.key, this.isWidget = false, this.fabKey});

  @override
  State<ChatHistoryScreen> createState() => _ChatHistoryScreenState();
}

class _ChatHistoryScreenState extends State<ChatHistoryScreen> {
  final TextEditingController _searchController = TextEditingController();
  DateTimeRange? _selectedDateRange;
  
  @override
  void initState() {
    super.initState();
    Future.microtask(() => 
      Provider.of<AppState>(context, listen: false).loadDialogueGroups()
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // Filter Logic
  List<DialogueGroup> _filterDialogues(List<DialogueGroup> allDialogues) {
    return allDialogues.where((group) {
      // 1. Search Text
      if (_searchController.text.isNotEmpty) {
        final query = _searchController.text.toLowerCase();
        final titleMatch = group.title?.toLowerCase().contains(query) ?? false;
        final noteMatch = group.note?.toLowerCase().contains(query) ?? false;
        final personaMatch = group.persona?.toLowerCase().contains(query) ?? false;
        
        if (!titleMatch && !noteMatch && !personaMatch) return false;
      }
      
      // 2. Date Range
      if (_selectedDateRange != null) {
        if (group.createdAt.isBefore(_selectedDateRange!.start) ||
            group.createdAt.isAfter(_selectedDateRange!.end.add(const Duration(days: 1)))) {
          return false;
        }
      }
      return true;
    }).toList();
  }
  
  Future<void> _pickDateRange() async {
    final picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2025),
      lastDate: DateTime.now(),
      initialDateRange: _selectedDateRange,
    );
    if (picked != null) {
      setState(() => _selectedDateRange = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final l10n = AppLocalizations.of(context)!;
    
    final allDialogues = appState.dialogueGroups;
    final filteredDialogues = _filterDialogues(allDialogues);

    final content = Column(
      children: [
        // Search & Filter Bar
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: l10n.search,
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                  onChanged: (val) => setState(() {}),
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                icon: Icon(Icons.calendar_today, 
                  color: _selectedDateRange != null ? const Color(0xFF667eea) : Colors.grey
                ),
                onPressed: _pickDateRange,
                tooltip: 'Filter by Date',
              ),
              if (_selectedDateRange != null)
                IconButton(
                  icon: const Icon(Icons.close, size: 20),
                  onPressed: () => setState(() => _selectedDateRange = null),
                ),
            ],
          ),
        ),
        
        // List
        Expanded(
          child: filteredDialogues.isEmpty
            ? _buildEmptyState(l10n)
            : ListView.builder(
                itemCount: filteredDialogues.length,
                itemBuilder: (context, index) {
                  final group = filteredDialogues[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue[100],
                      child: const Icon(Icons.chat, color: Colors.blue),
                    ),
                    title: Text(
                      group.title ?? l10n.chatUntitled,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${group.persona ?? "Assistant"} • ${group.createdAt.toString().split('.')[0]}',
                          style: TextStyle(color: Colors.grey[600], fontSize: 12),
                        ),
                        if (group.note != null && group.note!.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(
                              '${l10n.labelNote}: ${group.note}',
                              style: TextStyle(color: Colors.grey[800], fontStyle: FontStyle.italic, fontSize: 13),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                      ],
                    ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline, color: Colors.grey),
                      splashRadius: 20,
                      onPressed: () {
                         showDialog(
                           context: context,
                           builder: (context) => AlertDialog(
                             title: Text(l10n.chatEndTitle.replaceAll('End', 'Delete') + '?'), // Fallback localization or use hardcoded
                             content: const Text('Are you sure you want to delete this conversation?\nThis action cannot be undone.'),
                             actions: [
                               TextButton(
                                 onPressed: () => Navigator.pop(context),
                                 child: Text(l10n.cancel),
                               ),
                               TextButton(
                                 onPressed: () async {
                                   Navigator.pop(context); // Close Dialog
                                   await appState.deleteDialogue(group.id);
                                   if (context.mounted) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(content: Text('Conversation deleted')),
                                      );
                                   }
                                 },
                                 style: TextButton.styleFrom(foregroundColor: Colors.red),
                                 child: Text(l10n.trash), // Using "Trash" label if available or Generic Delete
                               ),
                             ],
                           ),
                         );
                      },
                    ),
                    onTap: () async {
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
              ),
        ),
      ],
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
    // Only show "No Conversations" if truly empty, otherwise "No Matches"
    final isFiltering = _searchController.text.isNotEmpty || _selectedDateRange != null;
    
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.chat_bubble_outline, size: 64, color: Colors.grey[300]),
          const SizedBox(height: 16),
          Text(
            isFiltering ? 'No results found' : l10n.chatNoConversations,
            style: TextStyle(color: Colors.grey[500], fontSize: 18),
          ),
          const SizedBox(height: 8),
          if (!isFiltering) Text(l10n.chatStartNewPrompt),
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

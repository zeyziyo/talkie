import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import 'chat_screen.dart';
import '../l10n/app_localizations.dart';
import '../models/dialogue_group.dart';

import '../widgets/participant_selector_dialog.dart';

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
  String? _selectedSubject; // Added for filtering by subject/material
  
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      if (!mounted) return;
      Provider.of<AppState>(context, listen: false).loadDialogueGroups();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // Filter Logic
  List<DialogueGroup> _filterDialogues(List<DialogueGroup> allDialogues) {
    return allDialogues.where((group) {
      // 1. Search Text (Restricted to Title per user request)
      if (_searchController.text.isNotEmpty) {
        final query = _searchController.text.toLowerCase();
        final titleMatch = group.title?.toLowerCase().contains(query) ?? false;
        
        if (!titleMatch) return false;
      }
      
      // 2. Subject Filter
      if (_selectedSubject != null && _selectedSubject != 'All') {
        if (group.note != _selectedSubject) return false;
      }
      
      // 3. Date Range (Robust Date-Only comparison)
      if (_selectedDateRange != null) {
        final start = DateTime(_selectedDateRange!.start.year, _selectedDateRange!.start.month, _selectedDateRange!.start.day);
        final end = DateTime(_selectedDateRange!.end.year, _selectedDateRange!.end.month, _selectedDateRange!.end.day);
        final current = DateTime(group.createdAt.year, group.createdAt.month, group.createdAt.day);

        if (current.isBefore(start) || current.isAfter(end)) {
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
    
    // Get Unique Subjects for Dropdown


    final filteredDialogues = _filterDialogues(allDialogues);

    final content = Column(
      children: [
        // Search & Filter Bar
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: l10n.chatSearchHint,
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        prefixIcon: const Icon(Icons.search, color: Colors.white70),
                        filled: true,
                        fillColor: Colors.grey.shade900,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30), // Match Material 3 SearchBar rounding
                          borderSide: BorderSide.none,
                        ),
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
              const SizedBox(height: 8),
              // Subject Dropdown Removed per user request
              // Container(...)
            ],
          ),
        ),
        
        if (appState.isSyncing)
          const LinearProgressIndicator(minHeight: 2),
        
        // List
        Expanded(
          child: RefreshIndicator(
            onRefresh: () => appState.loadDialogueGroups(),
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
                        const SizedBox(height: 2),
                        Wrap(
                          spacing: 12,
                          runSpacing: 4,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.calendar_today, size: 12, color: Colors.grey),
                                const SizedBox(width: 4),
                                Text(
                                  group.createdAt.toString().substring(5, 16).replaceAll('-', '/'), 
                                  style: TextStyle(color: Colors.grey[600], fontSize: 11),
                                ),
                              ],
                            ),
                            if (group.location != null && group.location!.isNotEmpty)
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.location_on_outlined, size: 12, color: Colors.blueAccent),
                                  const SizedBox(width: 4),
                                  Flexible(
                                    child: Text(
                                      group.location!,
                                      style: TextStyle(color: Colors.blueAccent[700], fontSize: 11, fontWeight: FontWeight.w500),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            if (group.note != null && group.note!.isNotEmpty)
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.note_alt_outlined, size: 12, color: Colors.orange),
                                  const SizedBox(width: 4),
                                  Flexible(
                                    child: Text(
                                      group.note!,
                                      style: TextStyle(color: Colors.orange[900], fontStyle: FontStyle.italic, fontSize: 11),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
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
                             title: Text('${l10n.delete}?'), 
                             content: Text(l10n.confirmDeleteConversation),
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
                                        SnackBar(content: Text(l10n.recordDeleted)),
                                      );
                                   }
                                 },
                                 style: TextButton.styleFrom(foregroundColor: Colors.red),
                                 child: Text(l10n.delete), 
                               ),
                             ],
                           ),
                         );
                      },
                    ),
                    onTap: () async {
                      final navigator = Navigator.of(context);
                      await appState.loadExistingDialogue(group);
                      await navigator.push(
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(initialDialogue: group),
                        ),
                      );
                      // Phase 160 Fix: Always refresh list after returning from chat
                      appState.loadDialogueGroups();
                    },
                  );
                },
              ),
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
        actions: [
          // Google Login/Logout Icon
          if (appState.currentUser?.isAnonymous ?? true)
            IconButton(
              icon: const Icon(Icons.login),
              tooltip: 'Google Login',
              onPressed: () => appState.loginWithGoogle(),
            )
          else
            PopupMenuButton<String>(
              icon: const Icon(Icons.account_circle),
              onSelected: (val) {
                if (val == 'logout') appState.logout();
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'user_info',
                  enabled: false,
                  child: Text('Permanent Account', style: TextStyle(fontSize: 12)),
                ),
                const PopupMenuDivider(),
                const PopupMenuItem(
                  value: 'logout',
                  child: Row(
                    children: [
                      Icon(Icons.logout, size: 20, color: Colors.red),
                      SizedBox(width: 8),
                      Text('Logout', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ],
            ),
        ],
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
    // Capture parent context to ensure navigation works after dialog closes
    final parentContext = context;
    
    showDialog(
      context: context,
      builder: (dialogContext) => ParticipantSelectorDialog(
        onSelected: (participants) async {
            // Create chat with selected participants
            final title = participants.isNotEmpty 
                ? participants.map((p) => p.name).join(', ') 
                : 'Group Chat';
            
            await appState.startNewDialogue(
              title: title, 
              initialParticipants: participants,
            );
            
            // AI 참가자 포함 여부에 따라 모드 결정
            final hasAi = participants.any((p) => p.role == 'ai');
            debugPrint('[ChatHistoryScreen] Starting new chat. hasAi: $hasAi, Participants: ${participants.map((p) => p.name).join(", ")}');

            // Use parentContext for navigation
            if (parentContext.mounted) {
              await Navigator.push(
                parentContext,
                MaterialPageRoute(
                  builder: (_) => ChatScreen(hasAiParticipant: hasAi),
                ),
              );
              // Phase 160/162 Fix: No need to refresh immediately as saveDialogueProgress already updated state
              // appState.loadDialogueGroups(); 
            }
        },
      ),
    );
  }
}

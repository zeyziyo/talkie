import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../models/chat_participant.dart';
import '../l10n/app_localizations.dart';

class ParticipantManageScreen extends StatefulWidget {
  const ParticipantManageScreen({super.key});

  @override
  State<ParticipantManageScreen> createState() => _ParticipantManageScreenState();
}

class _ParticipantManageScreenState extends State<ParticipantManageScreen> {
  @override
  void initState() {
    super.initState();
    // Load participants when screen opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AppState>(context, listen: false).loadGlobalParticipants();
    });
  }

  void _showEditDialog(BuildContext context, ChatParticipant? participant) {
    final appState = Provider.of<AppState>(context, listen: false);
    final l10n = AppLocalizations.of(context)!;
    
    final nameController = TextEditingController(text: participant?.name ?? '');
    String role = participant?.role ?? 'user';
    String gender = participant?.gender ?? 'female';
    String langCode = participant?.langCode ?? 'en-US'; // Default to English or AppState default?

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text(participant == null ? 'Add Participant' : 'Edit Participant'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(labelText: 'Name'),
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: role,
                      decoration: InputDecoration(labelText: 'Role'),
                      items: const [
                        DropdownMenuItem(value: 'user', child: Text('User')),
                        DropdownMenuItem(value: 'assistant', child: Text('Assistant')), // AI
                      ],
                      onChanged: (val) => setState(() => role = val!),
                    ),
                     const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: gender,
                      decoration: InputDecoration(labelText: 'Gender'),
                      items: const [
                        DropdownMenuItem(value: 'male', child: Text('Male')),
                        DropdownMenuItem(value: 'female', child: Text('Female')),
                      ],
                      onChanged: (val) => setState(() => gender = val!),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                       controller: TextEditingController(text: langCode),
                       decoration: InputDecoration(labelText: 'Language Code (e.g. en-US, fr-FR)'),
                       onChanged: (val) => langCode = val,
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(l10n.cancel),
                ),
                FilledButton(
                  onPressed: () async {
                    if (nameController.text.isEmpty) return;

                    final newId = participant?.id ?? '${role}_${nameController.text.hashCode}';
                    
                    final newParticipant = ChatParticipant(
                      id: newId,
                      dialogueId: '', // master record
                      name: nameController.text,
                      role: role,
                      gender: gender,
                      langCode: langCode,
                    );

                    if (participant == null) {
                      await appState.addGlobalParticipant(newParticipant);
                    } else {
                      await appState.updateGlobalParticipant(newParticipant);
                    }
                    if (context.mounted) Navigator.pop(context);
                  },
                  child: Text(l10n.saveData),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // We can use l10n for title if available, else hardcode for now or add to arb
    // Assuming 'Manage Participants' string might not be in l10n yet.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Participants'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showEditDialog(context, null),
        child: const Icon(Icons.add),
      ),
      body: Consumer<AppState>(
        builder: (context, appState, child) {
          final participants = appState.globalParticipants;
          
          if (participants.isEmpty) {
            return const Center(child: Text('No participants found.'));
          }

          return ListView.builder(
            itemCount: participants.length,
            itemBuilder: (context, index) {
              final p = participants[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: p.role == 'user' ? Colors.blue[100] : Colors.green[100],
                  child: Icon(p.role == 'user' ? Icons.person : Icons.smart_toy),
                ),
                title: Text(p.name),
                subtitle: Text('${p.role} • ${p.langCode}'),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () async {
                     final confirm = await showDialog<bool>(
                       context: context,
                       builder: (context) => AlertDialog(
                         title: const Text('Delete?'),
                         content: Text('Delete participant "${p.name}"?'),
                         actions: [
                           TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
                           TextButton(onPressed: () => Navigator.pop(context, true), child: const Text('Delete')),
                         ],
                       ),
                     );
                     
                     if (confirm == true) {
                       await appState.deleteGlobalParticipant(p.id);
                     }
                  },
                ),
                onTap: () => _showEditDialog(context, p),
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../models/chat_participant.dart';

class ParticipantSelectorDialog extends StatefulWidget {
  final Function(List<ChatParticipant>) onSelected;

  const ParticipantSelectorDialog({super.key, required this.onSelected});

  @override
  State<ParticipantSelectorDialog> createState() => _ParticipantSelectorDialogState();
}

class _ParticipantSelectorDialogState extends State<ParticipantSelectorDialog> {
  final Set<String> _selectedIds = {};

  @override
  void initState() {
    super.initState();
    // Load fresh data
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AppState>(context, listen: false).loadGlobalParticipants();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Participants'),
      content: SizedBox(
        width: double.maxFinite,
        child: Consumer<AppState>(
          builder: (context, appState, child) {
            final participants = appState.globalParticipants;
             if (participants.isEmpty) {
              return const Center(child: Text('No participants. Please add some in settings.'));
            }
            
            return ListView.builder(
              shrinkWrap: true,
              itemCount: participants.length,
              itemBuilder: (context, index) {
                final p = participants[index];
                final isSelected = _selectedIds.contains(p.id);
                
                return CheckboxListTile(
                  title: Text(p.name),
                  subtitle: Text(p.role),
                  secondary: CircleAvatar(
                    backgroundColor: p.role == 'user' ? Colors.blue[100] : Colors.green[100],
                    child: Icon(p.role == 'user' ? Icons.person : Icons.smart_toy),
                  ),
                  value: isSelected,
                  onChanged: (val) {
                    setState(() {
                      if (val == true) {
                        _selectedIds.add(p.id);
                      } else {
                        _selectedIds.remove(p.id);
                      }
                    });
                  },
                );
              },
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () async {
            if (_selectedIds.isEmpty) return;
            
            final appState = Provider.of<AppState>(context, listen: false);
            final selected = appState.globalParticipants.where((p) => _selectedIds.contains(p.id)).toList();
            Navigator.pop(context); // 다이얼로그를 먼저 닫음
            await widget.onSelected(selected); // DB 작업 완료 후 ChatScreen으로 이동
          },
          child: const Text('Start Chat'),
        ),
      ],
    );
  }
}

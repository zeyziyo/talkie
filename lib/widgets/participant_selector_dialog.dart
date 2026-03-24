import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../models/chat_participant.dart';
import '../l10n/app_localizations.dart';

class ParticipantSelectorDialog extends StatefulWidget {
  final Function(List<ChatParticipant>) onSelected;

  const ParticipantSelectorDialog({super.key, required this.onSelected});

  @override
  State<ParticipantSelectorDialog> createState() => _ParticipantSelectorDialogState();
}

class _ParticipantSelectorDialogState extends State<ParticipantSelectorDialog> {
  final Set<String> _selectedIds = {};
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    debugPrint('[ParticipantSelectorDialog] Initialized. Triggering Global Participants Load.');
    
    // Phase 180: Ensure global participants are fully loaded when selection starts
    Future.microtask(() {
      if (mounted) {
        Provider.of<AppState>(context, listen: false).loadGlobalParticipants(force: true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return AlertDialog(
      title: Text(l10n.selectParticipants),
      content: SizedBox(
        width: double.maxFinite,
        child: Consumer<AppState>(
          builder: (context, appState, child) {
            final participants = appState.globalParticipants;

            // Consumer 리빌드 시 아직 미초기화면 기본 필수 참가자(나/AI)만 우선 선택
            if (!_initialized && participants.isNotEmpty) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (mounted && !_initialized) {
                  setState(() {
                    // 필수 참가자(me, ai)만 기본 활성화하여 과거 대화 상대가 무분별하게 추가되는 것을 방지
                    _selectedIds.addAll(
                        participants.where((p) => p.id == 'me' || p.id == 'ai').map((p) => p.id));
                    _initialized = true;
                  });
                }
              });
            }

            if (appState.globalParticipantsLoading && participants.isEmpty) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 16),
                  Text(l10n.loadingParticipants),
                ],
              );
            }

            if (participants.isEmpty) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.orange),
                  const SizedBox(height: 16),
                  const Text('기본 참가자(나/AI) 생성에 실패했습니다.'),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () => appState.loadGlobalParticipants(),
                    child: const Text('다시 시도'),
                  ),
                ],
              );
            }

            return ListView.builder(
              shrinkWrap: true,
              itemCount: participants.length,
              itemBuilder: (context, index) {
                final p = participants[index];
                final isSelected = _selectedIds.contains(p.id);

                return CheckboxListTile(
                  title: Text(
                    p.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
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
          child: Text(l10n.cancel),
        ),
        FilledButton(
          onPressed: () async {
            if (_selectedIds.isEmpty) return;

            final appState = Provider.of<AppState>(context, listen: false);
            final selected = appState.globalParticipants
                .where((p) => _selectedIds.contains(p.id))
                .toList();
            Navigator.pop(context); // 다이얼로그를 먼저 닫음
            await widget.onSelected(selected); // DB 작업 완료 후 ChatScreen으로 이동
          },
          child: Text(l10n.startChat),
        ),
      ],
    );
  }
}

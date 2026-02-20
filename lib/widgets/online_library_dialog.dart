import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';
import '../models/dialogue_group.dart';

class OnlineLibraryDialog extends StatefulWidget {
  const OnlineLibraryDialog({super.key});

  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const OnlineLibraryDialog(),
    );
  }

  @override
  State<OnlineLibraryDialog> createState() => _OnlineLibraryDialogState();
}

class _OnlineLibraryDialogState extends State<OnlineLibraryDialog> {
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    // Fetch data after build frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadMaterials();
    });
  }

  Future<void> _loadMaterials() async {
    final appState = Provider.of<AppState>(context, listen: false);
    if (appState.onlineMaterials.isEmpty) {
      if (mounted) setState(() => _hasError = false);
      
      await appState.fetchOnlineMaterialsList();
      
      if (mounted && appState.onlineMaterials.isEmpty) {
        setState(() => _hasError = true);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return DefaultTabController(
      length: 3,
      child: AlertDialog(
        title: Text(l10n.menuOnlineLibrary), // "온라인 자료실"
        content: SizedBox(
          width: double.maxFinite,
          height: 500, // Sufficient height
          child: Column(
            children: [
              TabBar(
                labelColor: Colors.blueAccent,
                unselectedLabelColor: Colors.grey,
                isScrollable: false,
                tabs: [
                  Tab(text: l10n.tabWord), // "단어"
                  Tab(text: l10n.tabSentence), // "문장"
                  Tab(text: l10n.tabConversation), // "대화"
                ],
              ),
              Expanded(
                child: Consumer<AppState>(
                  builder: (context, state, _) {
                    if (state.isLoadingOnlineMaterials) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (state.onlineMaterials.isEmpty) {
                      if (_hasError) {
                         return Center(
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               const Icon(Icons.error_outline, size: 48, color: Colors.orange),
                               const SizedBox(height: 16),
                               const Text("자료를 불러오는데 실패했습니다.", style: TextStyle(fontSize: 16)),
                               const SizedBox(height: 8),
                               const Text("인터넷 연결을 확인하거나 나중에 다시 시도해주세요.", style: TextStyle(color: Colors.grey)),
                               const SizedBox(height: 24),
                               ElevatedButton.icon(
                                 onPressed: _loadMaterials,
                                 icon: const Icon(Icons.refresh),
                                 label: const Text("다시 시도"),
                               )
                             ],
                           ),
                         );
                      }
                      return const Center(child: Text("자료가 없습니다."));
                    }

                    // Filter lists based on 'category' content — case-insensitive + plural form match
                    final wordMaterials = state.onlineMaterials.where((m) =>
                        (m['category'] as String?)?.toLowerCase() == 'words' ||
                        m['type'] == 'word').toList();
                    final sentenceMaterials = state.onlineMaterials.where((m) =>
                        (m['category'] as String?)?.toLowerCase() == 'sentences' ||
                        m['type'] == 'sentence').toList();
                    final dialogueMaterials = state.onlineMaterials.where((m) =>
                        (m['category'] as String?)?.toLowerCase() == 'dialogues' ||
                        m['type'] == 'dialogue').toList();

                    return TabBarView(
                      children: [
                        // 1. Word Tab
                        _buildMaterialList(context, state, wordMaterials, 'word'),
                        // 2. Sentence Tab
                        _buildMaterialList(context, state, sentenceMaterials, 'sentence'),
                        // 3. Dialogue Tab
                        _buildMaterialList(context, state, dialogueMaterials, 'dialogue'),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
        ],
      ),
    );
  }

  Widget _buildMaterialList(BuildContext context, AppState state, List<Map<String, dynamic>> materials, String type) {
    final l10n = AppLocalizations.of(context)!;
    if (materials.isEmpty) {
      return const Center(child: Text("이 카테고리에는 자료가 없습니다."));
    }
    return ListView.builder(
      itemCount: materials.length,
      itemBuilder: (context, index) {
        final material = materials[index];
        return ListTile(
          leading: Icon(
            type == 'word' ? Icons.book : (type == 'dialogue' ? Icons.chat : Icons.article),
            color: type == 'word' ? Colors.blue : (type == 'dialogue' ? Colors.green : Colors.orange),
          ),
          title: Text(material['name'] ?? material['title'] ?? 'Untitled'),
          subtitle: Text(material['description'] ?? ''),
          onTap: () async {
            try {
              final result = await state.importRemoteMaterial(material, type: type);
              
              if (context.mounted) {
                if (result['success'] == true) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(_translateStatus(context, 'L10N:statusImportSuccess|${material['name']}', l10n))),
                  );
                  
                  // Phase 79.2 + 81.1: Refresh materials
                  await state.loadStudyMaterials(); 

                  // Phase 97.5: Stay in current mode instead of forcing transition
                  // Phase 110: Integrated post-import logic
                  if (type == 'dialogue') {
                    final String? dId = result['dialogue_id'] as String?;
                    if (dId != null) {
                      state.setRecordTypeFilter('sentence'); // Dialogue items are sentences
                      state.selectMaterial(dId);
                      
                      final group = state.dialogueGroups.cast<DialogueGroup?>().firstWhere(
                        (g) => g?.id == dId, 
                        orElse: () => null,
                      );
                      if (group != null) {
                        await state.loadExistingDialogue(group);
                      }
                    }
                  } else {
                    final dynamic mIdRaw = result['material_id'];
                    Object materialId = 0;
                    if (mIdRaw is int && mIdRaw > 0) {
                      materialId = mIdRaw;
                    } else if (mIdRaw is String && mIdRaw.isNotEmpty) {
                      materialId = mIdRaw;
                    }

                    if (materialId != 0) {
                      state.setRecordTypeFilter(type == 'word' ? 'word' : 'sentence');
                      state.selectMaterial(materialId);
                    }
                  }
                  if (context.mounted) Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(_translateStatus(context, result['error'] ?? '', l10n))),
                  );
                }
              }
            } catch (e) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('An unexpected error occurred: $e')),
                );
              }
            }
          },
        );
      },
    );
  }

  String _translateStatus(BuildContext context, String status, AppLocalizations l10n) {
    if (!status.startsWith('L10N:')) return status;
    
    final parts = status.substring(5).split('|');
    final key = parts[0];
    final param = parts.length > 1 ? parts[1] : '';

    switch (key) {
      case 'statusDownloading':
        return l10n.statusDownloading(param);
      case 'statusImportSuccess':
        return l10n.statusImportSuccess(param);
      case 'statusImportFailed':
        return l10n.statusImportFailed(param);
      case 'importing':
        return l10n.importing;
      default:
        return status;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';
import '../models/dialogue_group.dart';

class OnlineLibraryDialog extends StatelessWidget {
  const OnlineLibraryDialog({super.key});

  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const OnlineLibraryDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);
    final l10n = AppLocalizations.of(context)!;

    // Ensure materials are loaded
    if (appState.onlineMaterials.isEmpty && !appState.isLoadingOnlineMaterials) {
         appState.fetchOnlineMaterialsList();
    }

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

                    // Filter lists based on 'category' content in current json structure
                    // Note: If category is missing, it might need adjustment based on actual JSON
                    final wordMaterials = state.onlineMaterials.where((m) => m['category'] == 'Words' || m['type'] == 'word').toList();
                    final sentenceMaterials = state.onlineMaterials.where((m) => m['category'] == 'Sentences' || m['type'] == 'sentence').toList();
                    final dialogueMaterials = state.onlineMaterials.where((m) => m['category'] == 'Dialogue' || m['type'] == 'dialogue').toList();

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
      return const Center(child: Text("자료가 없습니다."));
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

                  // Phase 97: Fix mode indices (1: Review, 2: Practice, 3: Chat)
                  if (type == 'dialogue') {
                      final dId = result['dialogue_id'] as String?;
                      if (dId != null) {
                        final group = state.dialogueGroups.cast<DialogueGroup?>().firstWhere(
                          (g) => g?.id == dId, 
                          orElse: () => null,
                        );
                        if (group != null) {
                          await state.loadExistingDialogue(group);
                        }
                        state.switchMode(3); // Go to Chat
                      }
                  } else {
                      // Move to Review Mode (Index 1) for Words/Sentences
                      if (state.currentMode != 1) {
                        state.switchMode(1);
                      }
                      
                      final dynamic mIdRaw = result['material_id'];
                      final int mId = (mIdRaw is int) ? mIdRaw : (int.tryParse(mIdRaw?.toString() ?? '0') ?? 0);
                      
                      if (mId > 0) {
                        state.setRecordTypeFilter(type == 'word' ? 'word' : 'sentence');
                        state.selectMaterial(mId);
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

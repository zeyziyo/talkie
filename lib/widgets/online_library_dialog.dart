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
                    SnackBar(content: Text('${material['name']} Downloaded')),
                  );
                  // Phase 79.2 + 81.3: Refresh materials and select the new one (if needed)
                  await state.loadStudyMaterials(); 

                  // Auto-Select Logic
                  if (type == 'dialogue') {
                      // Switch to Mode 3
                      final dId = result['dialogue_id'] as String?;
                      if (dId != null) {
                        // Ensure DialogueGroup model availability
                        final group = state.dialogueGroups.firstWhere(
                          (g) => g.id == dId, 
                          orElse: () => DialogueGroup(
                            id: dId, 
                            userId: 'user', 
                            title: material['name'] ?? 'Imported Dialogue', 
                            createdAt: DateTime.now()
                          )
                        );
                        await state.loadExistingDialogue(group);
                        state.switchMode(3);
                      }
                  } else {
                      // Switch to Mode 2 (Review) if not already
                      if (state.currentMode != 2) {
                        state.switchMode(2);
                      }
                      
                      // Select Material
                      final mId = result['material_id'] as int? ?? 0;
                      if (mId > 0) {
                        state.setRecordTypeFilter(type == 'word' ? 'word' : 'sentence');
                        state.selectMaterial(mId);
                      }
                  }
                  Navigator.pop(context); // Close dialog on success
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Error: ${result['error']}')),
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
}

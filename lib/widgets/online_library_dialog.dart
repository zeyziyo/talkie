import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';

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
      length: 2,
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
                               Text(l10n.onlineLibraryLoadFailed, style: const TextStyle(fontSize: 16)),
                               const SizedBox(height: 8),
                               Text(l10n.onlineLibraryCheckInternet, style: const TextStyle(color: Colors.grey)),
                               const SizedBox(height: 24),
                               ElevatedButton.icon(
                                 onPressed: _loadMaterials,
                                 icon: const Icon(Icons.refresh),
                                 label: Text(l10n.retry),
                               )
                             ],
                           ),
                         );
                      }
                      return Center(child: Text(l10n.onlineLibraryNoMaterials));
                    }

                    // Filter lists based on 'category' content — case-insensitive + plural form match
                    final wordMaterials = state.onlineMaterials.where((m) =>
                        (m['category'] as String?)?.toLowerCase() == 'words' ||
                        m['type'] == 'word').toList();
                    final sentenceMaterials = state.onlineMaterials.where((m) =>
                        (m['category'] as String?)?.toLowerCase() == 'sentences' ||
                        m['type'] == 'sentence').toList();

                    return TabBarView(
                      children: [
                        // 1. Word Tab
                        _buildMaterialList(context, state, wordMaterials, 'word'),
                        // 2. Sentence Tab
                        _buildMaterialList(context, state, sentenceMaterials, 'sentence'),
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
    return ListView.builder(
      itemCount: materials.length,
      itemBuilder: (context, index) {
        final material = materials[index];
        return ListTile(
          leading: Icon(
            type == 'word' ? Icons.book : Icons.article,
            color: type == 'word' ? Colors.blue : Colors.orange,
          ),
          title: Text(_getLocalizedTitle(l10n, material)),
          subtitle: Text(material['description'] ?? ''),
          onTap: () async {
            try {
              final result = await state.importRemoteMaterial(material, type: type);
              
              if (context.mounted) {
                if (result['success'] == true) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(_translateStatus(context, 'L10N:statusImportSuccess|${material['name']}', l10n))),
                  );
                  
                  await state.loadStudyMaterials(); 
                  
                  final dynamic mIdRaw = result['material_id'];
                  String? materialId;
                  if (mIdRaw is String && mIdRaw.isNotEmpty) {
                    materialId = mIdRaw;
                  } else if (mIdRaw is int && mIdRaw > 0) {
                    materialId = mIdRaw.toString();
                  }
                  if (materialId != null) {
                    state.setRecordTypeFilter(type == 'word' ? 'word' : 'sentence');
                    state.selectMaterial(materialId);
                  }
                  if (context.mounted) Navigator.pop(context);
                } else if (result['error'] == 'StudyLangNotFound') {
                  // v59.6: Dedicated popup for missing Study Language support
                  final targetLang = result['targetLang'] as String? ?? 'Unknown';
                  final materialId = material['id']?.toString() ?? 'unknown';
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: Text(l10n.studyLangNotFoundTitle), // "학습 언어 미지원"
                      content: Text(l10n.studyLangNotFoundDesc(targetLang)), // "국 현재 설정된 학습 언어... 번역을 요청하시겠습니까?"
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(ctx),
                          child: Text(l10n.cancel),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            Navigator.pop(ctx);
                            final reqResult = await state.requestTranslation(materialId, targetLang);
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(reqResult['success'] == true 
                                      ? l10n.statusRequestSuccess 
                                      : l10n.statusRequestFailed(reqResult['error'] ?? 'Unknown Error')),
                                  backgroundColor: reqResult['success'] == true ? Colors.green : Colors.red,
                                ),
                              );
                            }
                          },
                          child: Text(l10n.requestTranslation), // "번역 요청하기"
                        ),
                      ],
                    ),
                  );
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

  String _getLocalizedTitle(AppLocalizations l10n, Map<String, dynamic> material) {
    // JSON 내부의 'subject' 값(localized_name)이 있으면 최우선으로 사용
    if (material['localized_name'] != null && material['localized_name'].toString().isNotEmpty) {
      return material['localized_name'].toString();
    }
    
    // 백업으로 기존 필드들 탐색
    return material['name'] ?? material['title'] ?? material['id'] ?? 'Untitled';
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

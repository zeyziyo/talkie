import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../widgets/mode1_widget.dart';
import '../widgets/mode2_widget.dart';
import '../widgets/mode3_widget.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // GlobalKeys for tutorial targets
  final GlobalKey _actionButtonKey = GlobalKey();
  final GlobalKey _tabKey = GlobalKey();
  final GlobalKey _helpKey = GlobalKey();

  late TutorialCoachMark tutorialCoachMark;

  void _showTutorial(BuildContext context) {
    tutorialCoachMark = TutorialCoachMark(
      targets: _createTargets(),
      colorShadow: const Color(0xFF667eea),
      textSkip: "SKIP",
      paddingFocus: 10,
      opacityShadow: 0.8,
      onFinish: () {
        debugPrint("Tutorial finished");
      },
      onClickTarget: (target) {
        debugPrint("onClickTarget: $target");
      },
      onClickOverlay: (target) {
        debugPrint("onClickOverlay: $target");
      },
      onSkip: () {
        debugPrint("skip");
        return true;
      },
    );

    tutorialCoachMark.show(context: context);
  }

  List<TargetFocus> _createTargets() {
    List<TargetFocus> targets = [];

    // Target 1: Tab Selector
    targets.add(
      TargetFocus(
        identify: "Mode Tabs",
        keyTarget: _tabKey,
        alignSkip: Alignment.topRight,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) {
              return const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "모드 선택",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "여기서 원하는 학습 모드를 선택하세요.\n\n🔍 검색: 음성 번역 및 듣기\n📖 복습: 저장된 문장 복습\n📄 자료: 외부 학습 자료 가져오기",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

    // Target 2: Action Button (varies by mode)
    targets.add(
      TargetFocus(
        identify: "Action Button",
        keyTarget: _actionButtonKey,
        alignSkip: Alignment.bottomLeft,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) {
              return const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "주요 기능",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "현재 모드에 맞는 주요 기능이 여기에 표시됩니다.\n\n(예: 언어 설정, 목록 새로고침, 파일 불러오기)",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );

    return targets;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '🌍 ${l10n.appTitle}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF667eea),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            key: _helpKey,
            icon: const Icon(Icons.help_outline),
            tooltip: '사용법 가이드',
            onPressed: () => _showTutorial(context),
          ),
          Consumer<AppState>(
            builder: (context, appState, child) {
              final buttonKey = _actionButtonKey; // Use key here
              
              if (appState.currentMode == 0) { // Search Mode
                return IconButton(
                  key: buttonKey,
                  icon: const Icon(Icons.translate),
                  onPressed: () => _showLanguageSettingsDialog(context),
                  tooltip: '언어 설정',
                );
              } else if (appState.currentMode == 1) { // Review Mode
                return IconButton(
                  key: buttonKey,
                  icon: const Icon(Icons.refresh),
                  onPressed: () => appState.loadStudyRecords(),
                  tooltip: l10n.refresh,
                );
              } else if (appState.currentMode == 2) { // Study Material Mode
                return IconButton(
                  key: buttonKey,
                  icon: const Icon(Icons.arrow_downward),
                  onPressed: () => _handleImport(context),
                  tooltip: l10n.importJsonFile,
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Tab Selector
          Consumer<AppState>(
            builder: (context, appState, child) {
              return Container(
                key: _tabKey,
                margin: const EdgeInsets.all(16),
                  child: SegmentedButton<int>(
                    showSelectedIcon: false,
                    segments: const [
                      ButtonSegment<int>(
                        value: 0,
                        icon: Icon(Icons.search),
                        tooltip: '검색', // Add localized tooltip later if needed
                      ),
                      ButtonSegment<int>(
                        value: 1,
                        icon: Icon(Icons.auto_stories),
                        tooltip: '복습',
                      ),
                      ButtonSegment<int>(
                        value: 2,
                        icon: Icon(Icons.description),
                        tooltip: '학습 자료',
                      ),
                    ],
                  selected: {appState.currentMode},
                  onSelectionChanged: (Set<int> newSelection) {
                    appState.switchMode(newSelection.first);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return const Color(0xFF667eea);
                      }
                      return Colors.white;
                    }),
                    foregroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return Colors.white;
                      }
                      return const Color(0xFF667eea);
                    }),
                  ),
                ),
              );
            },
          ),
          
          // Mode Content
          Expanded(
            child: Consumer<AppState>(
              builder: (context, appState, child) {
                if (appState.currentMode == 0) {
                  return const Mode1Widget();
                } else if (appState.currentMode == 1) {
                  return const Mode2Widget();
                } else {
                  return const Mode3Widget();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showLanguageSettingsDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (context) {
        // Use Consumer or Provider to get AppState inside Dialog
        final appState = Provider.of<AppState>(context);
        
        return AlertDialog(
          title: const Text('언어 설정'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildLanguageDropdown(
                label: l10n.sourceLanguage,
                value: appState.sourceLang,
                onChanged: (v) => appState.setSourceLang(v!),
              ),
              const SizedBox(height: 16),
              _buildLanguageDropdown(
                label: l10n.targetLanguage,
                value: appState.targetLang,
                onChanged: (v) => appState.setTargetLang(v!),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.confirm),
            ),
          ],
        );
      },
    );
  }

  Widget _buildLanguageDropdown({
    required String label,
    required String value,
    required void Function(String?) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 4),
        DropdownButtonFormField<String>(
          value: value,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
          items: AppState.languageNames.entries.map((entry) {
            return DropdownMenuItem(
              value: entry.key,
              child: Text(
                entry.value,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: onChanged,
          isExpanded: true,
        ),
      ],
    );
  }

  Future<void> _handleImport(BuildContext context) async {
    final appState = Provider.of<AppState>(context, listen: false);
    final l10n = AppLocalizations.of(context)!;
    
    // Show loading indicator or simple simple logic
    final importResult = await appState.pickAndImportJson();
    
    if (importResult == null) return; // Canceled
    
    if (!context.mounted) return;
    
    if (importResult['success'] == true) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('✅ ${l10n.importComplete}'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Safe cast handling
              if (importResult['total'] != null) Text(l10n.importTotal(importResult['total'] as int)),
              if (importResult['imported'] != null) Text(l10n.importAdded(importResult['imported'] as int)),
              if (importResult['skipped'] != null) Text(l10n.importSkipped(importResult['skipped'] as int)),
              if (importResult['errors'] != null && (importResult['errors'] as List).isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(l10n.errors, style: const TextStyle(fontWeight: FontWeight.bold)),
                ...(importResult['errors'] as List).map((e) => Text('• $e', style: const TextStyle(fontSize: 12))),
              ],
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.confirm)),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('❌ ${l10n.error}'),
          content: Text(l10n.importErrorMessage(importResult['error'] ?? 'Unknown error')),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.confirm)),
          ],
        ),
      );
    }
  }
}

import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../widgets/mode1_widget.dart';
import '../widgets/mode2_widget.dart';
import '../widgets/mode3_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          Consumer<AppState>(
            builder: (context, appState, child) {
              if (appState.currentMode == 0) { // Search Mode
                return IconButton(
                  icon: const Icon(Icons.translate),
                  onPressed: () => _showLanguageSettingsDialog(context),
                  tooltip: '언어 설정',
                );
              } else if (appState.currentMode == 1) { // Review Mode
                return IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () => appState.loadStudyRecords(),
                  tooltip: l10n.refresh,
                );
              } else if (appState.currentMode == 2) { // Study Material Mode
                return IconButton(
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

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';

/// Mode 1: 검색 모드 - STT → 번역 → TTS
class Mode1Widget extends StatelessWidget {
  const Mode1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Consumer<AppState>(
      builder: (context, appState, child) {
        return Column(
          children: [
            // Scrollable content
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [

                        const SizedBox(height: 24),
                        
                        // Source Text Input
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppState.languageNames[appState.sourceLang] ?? '',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            appState.isListening ? Icons.mic : Icons.mic_none,
                                            color: appState.isListening ? Colors.red : null,
                                          ),
                                          onPressed: appState.isListening
                                              ? () => appState.stopListening()
                                              : () => appState.startListening(),
                                          tooltip: l10n.listening,
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.clear),
                                          onPressed: () => appState.clearTexts(),
                                          tooltip: l10n.cancel,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                TextField(
                                  controller: TextEditingController(text: appState.sourceText)
                                    ..selection = TextSelection.collapsed(
                                      offset: appState.sourceText.length,
                                    ),
                                  onChanged: (value) {
                                    appState.setSourceText(value);
                                    // Auto-search for similar sources when text changes
                                    if (value.trim().isNotEmpty) {
                                      appState.searchSimilarSources(value);
                                    }
                                  },
                                  decoration: InputDecoration(
                                    hintText: l10n.enterTextToTranslate,
                                    border: const OutlineInputBorder(),
                                  ),
                                  maxLines: 3,
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 16),
                        
                        // Translate Button
                        ElevatedButton.icon(
                          onPressed: appState.isTranslating
                              ? null
                              : () => appState.translate(),
                          icon: appState.isTranslating
                              ? const SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                                )
                              : const Icon(Icons.translate),
                          label: Text(
                            appState.isTranslating ? l10n.translating : l10n.translate,
                            style: const TextStyle(fontSize: 16),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF667eea),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                        ),
                        
                        const SizedBox(height: 16),
                        
                        // Translated Text Output
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppState.languageNames[appState.targetLang] ?? '',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        appState.isSpeaking
                                            ? Icons.stop_circle
                                            : Icons.volume_up,
                                        color: appState.isSpeaking ? Colors.red : null,
                                      ),
                                      onPressed: appState.translatedText.isEmpty
                                          ? null
                                          : (appState.isSpeaking
                                              ? () => appState.stopSpeaking()
                                              : () => appState.speak()),
                                      tooltip: l10n.listen,
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.refresh),
                                      onPressed: appState.translatedText.isEmpty
                                          ? null
                                          : () => appState.clearTexts(),
                                      tooltip: l10n.cancel, // or 'Reset'
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                TextField(
                                  controller: TextEditingController(text: appState.translatedText)
                                    ..selection = TextSelection.collapsed(
                                      offset: appState.translatedText.length,
                                    ),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  maxLines: 3,
                                  readOnly: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                  
                  // Duplicate Detection Dialog
                  if (appState.showDuplicateDialog)
                    _buildDuplicateDialog(context, appState),
                ],
              ),
            ),
            
            // Bottom Save Button
            SafeArea(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: (appState.sourceText.isEmpty || 
                                appState.translatedText.isEmpty ||
                                appState.isSaved)
                        ? null
                        : () => appState.saveTranslation(),
                    icon: const Icon(Icons.save),
                    label: Text(
                      appState.isSaved ? l10n.saved : l10n.saveData,
                      style: const TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF667eea),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      disabledBackgroundColor: Colors.grey[300],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildDuplicateDialog(BuildContext context, AppState appState) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      color: Colors.black54,
      child: Center(
        child: Card(
          margin: const EdgeInsets.all(24),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.similarTextFound,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => appState.closeDuplicateDialog(),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  l10n.useExistingText,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                
                ...appState.similarSources.map((record) {
                  final text = record['text'] as String;
                  final id = record['id'] as int;
                  
                  return Card(
                    color: Colors.blue[50],
                    margin: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      title: Text(
                        text,
                        style: const TextStyle(fontSize: 16),
                      ),
                      subtitle: Text('ID: $id'),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        appState.selectExistingSource(id, text);
                      },
                    ),
                  );
                }).toList(),
                
                const SizedBox(height: 16),
                
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () => appState.createNewSource(),
                    icon: const Icon(Icons.add),
                    label: Text(l10n.createNew),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

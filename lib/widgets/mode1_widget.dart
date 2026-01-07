import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';

/// Mode 1: 검색 모드 - STT → 번역 → TTS
class Mode1Widget extends StatelessWidget {
  const Mode1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Language Selection
                  Row(
                    children: [
                      Expanded(
                        child: _buildLanguageDropdown(
                          label: '모국어',
                          value: appState.sourceLang,
                          onChanged: (value) => appState.setSourceLang(value!),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(Icons.arrow_forward, size: 24),
                      ),
                      Expanded(
                        child: _buildLanguageDropdown(
                          label: '대상 언어',
                          value: appState.targetLang,
                          onChanged: (value) => appState.setTargetLang(value!),
                        ),
                      ),
                    ],
                  ),
                  
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
                                    tooltip: '음성 인식',
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () => appState.clearTexts(),
                                    tooltip: '지우기',
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
                            decoration: const InputDecoration(
                              hintText: '번역할 텍스트를 입력하거나 마이크를 눌러주세요',
                              border: OutlineInputBorder(),
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
                      appState.isTranslating ? '번역 중...' : '번역하기',
                      style: const TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF667eea),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                  
                  // Save Button (conditional)
                  if (appState.translatedText.isNotEmpty && appState.selectedSourceId != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: OutlinedButton.icon(
                        onPressed: () => appState.saveTranslation(),
                        icon: const Icon(Icons.save),
                        label: const Text('번역 저장', style: TextStyle(fontSize: 16)),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
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
                                tooltip: '듣기',
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            controller: TextEditingController(text: appState.translatedText)
                              ..selection = TextSelection.collapsed(
                                offset: appState.translatedText.length,
                              ),
                            onChanged: (value) => appState.setSourceText(value), // For editing
                            decoration: const InputDecoration(
                              hintText: '번역 결과가 여기에 표시됩니다',
                              border: OutlineInputBorder(),
                            ),
                            maxLines: 3,
                            readOnly: true, // Make read-only for now, can be editable later
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  // Status Message
                  if (appState.statusMessage.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Card(
                        color: Colors.blue[50],
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              const Icon(Icons.info_outline, size: 20, color: Colors.blue),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  appState.statusMessage,
                                  style: const TextStyle(color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            
            // Duplicate Detection Dialog
            if (appState.showDuplicateDialog)
              _buildDuplicateDialog(context, appState),
          ],
        );
      },
    );
  }

  Widget _buildDuplicateDialog(BuildContext context, AppState appState) {
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
                    const Text(
                      '유사한 문장이 있습니다',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => appState.closeDuplicateDialog(),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  '기존 문장을 사용하시겠습니까?',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                
                // Similar sources list
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
                
                // New entry button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () => appState.createNewSource(),
                    icon: const Icon(Icons.add),
                    label: const Text('새 문장으로 진행'),
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
}

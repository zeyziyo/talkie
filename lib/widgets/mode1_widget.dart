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
        return SingleChildScrollView(
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
                        onChanged: (value) => appState.setSourceText(value),
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
                        child: CircularProgressIndicator(strokeWidth: 2),
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
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.grey[50],
                        ),
                        child: Text(
                          appState.translatedText.isEmpty
                              ? '번역 결과가 여기에 표시됩니다'
                              : appState.translatedText,
                          style: TextStyle(
                            fontSize: 16,
                            color: appState.translatedText.isEmpty
                                ? Colors.grey
                                : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
              child: Text(entry.value),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}

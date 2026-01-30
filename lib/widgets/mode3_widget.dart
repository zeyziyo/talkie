import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';

/// Mode 3: 말하기 모드
/// - 선택한 학습 자료 또는 전체 문장을 바탕으로 발음 연습
/// - 대기 시간 설정 기능 (버튼 방식)
class Mode3Widget extends StatelessWidget {
  final Key? materialDropdownKey;
  final Key? resetButtonKey;

  const Mode3Widget({
    super.key,
    this.materialDropdownKey,
    this.resetButtonKey,
    this.onSelectMaterial,
  });

  final VoidCallback? onSelectMaterial;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Consumer<AppState>(
      builder: (context, appState, child) {
        final currentQuestion = appState.currentMode3Question;
        
        return SafeArea(
          child: Column(
            children: [
              // ==========================================
              // 1. Top Settings Panel
              // ==========================================
              const SizedBox(height: 16),

              // 스마트 검색바 & 태그 필터 (Pool 필터링용)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    // Smart Autocomplete Search (Global)
                    LayoutBuilder(
                    builder: (context, constraints) {
                      return Autocomplete<Map<String, String>>(
                        optionsBuilder: (TextEditingValue textEditingValue) {
                          if (textEditingValue.text.isEmpty) {
                             return const Iterable<Map<String, String>>.empty();
                          }
                          // Tab-Specific Search
                          return appState.searchByType(textEditingValue.text);
                        },
                        displayStringForOption: (Map<String, String> option) => option['text']!,
                        onSelected: (Map<String, String> selection) {
                           // Just jump to result within current tab
                           appState.jumpToSearchResult(selection['text']!, selection['type']!);
                           if (appState.mode3SessionActive) appState.startMode3SessionDirectly();
                        },
                        fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
                          // Sync
                          if (appState.searchQuery != textEditingController.text && appState.searchQuery.isNotEmpty) {
                             if (textEditingController.text.isEmpty) { 
                                textEditingController.text = appState.searchQuery;
                             }
                          }
                          return SearchBar(
                            controller: textEditingController,
                            focusNode: focusNode,
                            hintText: appState.recordTypeFilter == 'word' 
                                ? '연습할 단어 검색 (현재 탭)...' 
                                : '연습할 문장 검색 (현재 탭)...',
                            onChanged: (value) {
                              if (value.isEmpty) {
                                appState.setSearchQuery('');
                                if (appState.mode3SessionActive) appState.startMode3SessionDirectly();
                              }
                            },
                            onSubmitted: (value) {
                              appState.setSearchQuery(value);
                              if (appState.mode3SessionActive) appState.startMode3SessionDirectly();
                            },
                            leading: const Icon(Icons.search),
                            padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 16)),
                            elevation: WidgetStateProperty.all(1),
                             trailing: [
                              if (textEditingController.text.isNotEmpty)
                                IconButton(
                                  icon: const Icon(Icons.clear),
                                  onPressed: () {
                                    textEditingController.clear();
                                    appState.setSearchQuery('');
                                  },
                                ),
                            ],
                          );
                        },
                        optionsViewBuilder: (context, onSelected, options) {
                          return Align(
                            alignment: Alignment.topLeft,
                            child: Material(
                              elevation: 4.0,
                              child: SizedBox(
                                width: constraints.maxWidth,
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  itemCount: options.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    final option = options.elementAt(index);
                                    return ListTile(
                                      leading: const Icon(Icons.search, size: 20, color: Colors.grey),
                                      title: Text(option['text']!),
                                      onTap: () => onSelected(option),
                                    );
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                    const SizedBox(height: 12),
                    // 태그 필터 칩 목록
                    if (appState.availableTags.isNotEmpty)
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: appState.availableTags.length,
                          itemBuilder: (context, index) {
                            final tag = appState.availableTags[index];
                            final isSelected = appState.selectedTags.contains(tag);
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: FilterChip(
                                label: Text(tag),
                                selected: isSelected,
                                onSelected: (_) {
                                  appState.toggleTag(tag);
                                  if (appState.mode3SessionActive) appState.startMode3SessionDirectly();
                                },
                                visualDensity: VisualDensity.compact,
                                selectedColor: Colors.blue[100],
                                checkmarkColor: Colors.blue,
                              ),
                            );
                          },
                        ),
                      ),
                    
                    const SizedBox(height: 8),
                    
                    // Word/Sentence Toggle
                    Row(
                      children: [
                        Expanded(
                          child: SegmentedButton<String>(
                            segments: [
                              ButtonSegment<String>(
                                value: 'word',
                                label: Text(l10n.tabWord),
                                icon: const Icon(Icons.text_fields),
                              ),
                              ButtonSegment<String>(
                                value: 'sentence',
                                label: Text(l10n.tabSentence),
                                icon: const Icon(Icons.short_text),
                              ),
                              ButtonSegment<String>(
                                value: 'all',
                                label: const Text('전체'),
                                icon: const Icon(Icons.apps),
                              ),
                            ],
                            selected: {appState.recordTypeFilter},
                            onSelectionChanged: (Set<String> newSelection) {
                              appState.setRecordTypeFilter(newSelection.first);
                              if (appState.mode3SessionActive) appState.startMode3SessionDirectly();
                            },
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all(EdgeInsets.zero),
                              visualDensity: VisualDensity.compact,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              
              // ==========================================
              // 2. Practice Area
              // ==========================================
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          if (appState.mode3SessionActive && currentQuestion != null) ...[
                            // 1. 연습 영역
                            _buildActivePracticeArea(context, appState, currentQuestion, l10n),
                            const Divider(height: 32),
                          ],
                          
                          // 2. 카드 목록
                          Expanded(
                            child: appState.materialRecords.isEmpty
                                ? Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.library_books_outlined, size: 64, color: Colors.grey[100]),
                                        const SizedBox(height: 16),
                                        Text(l10n.noRecords, style: TextStyle(color: Colors.grey[400])),
                                      ],
                                    ),
                                  )
                                : ListView.builder(
                                    padding: const EdgeInsets.only(bottom: 100),
                                    itemCount: appState.materialRecords.length,
                                    itemBuilder: (context, index) {
                                      final record = appState.materialRecords[index];
                                      return _buildRecordCard(context, appState, record, l10n, index);
                                    },
                                  ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
              ),

              // Spacer to ensure separation
              const SizedBox(height: 16),
              const Divider(height: 1, thickness: 0.5, color: Colors.grey),
              const SizedBox(height: 16),
            ],
          ),
        );

      },
    );
  }
  
  Widget _buildActivePracticeArea(BuildContext context, AppState appState, Map<String, dynamic> currentQuestion, AppLocalizations l10n) {
     return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("🇰🇷", style: TextStyle(fontSize: 24)),
              const SizedBox(width: 12),
              Flexible(
                child: Text(
                  currentQuestion['source_text'] as String,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ),
              IconButton(
                icon: Icon(
                  (currentQuestion['is_memorized'] == true) ? Icons.check_circle : Icons.check_circle_outline,
                  color: (currentQuestion['is_memorized'] == true) ? Colors.green : Colors.grey[300],
                ),
                onPressed: () {
                   appState.toggleMemorizedStatus(currentQuestion['id'] as int, currentQuestion['is_memorized'] == true);
                },
              ),
            ],
          ),
          
          if (currentQuestion['note'] != null && (currentQuestion['note'] as String).isNotEmpty) ...[
             const SizedBox(height: 12),
             Container(
               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
               decoration: BoxDecoration(color: Colors.grey[50], borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.grey[300]!)),
               child: Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Icon(Icons.lightbulb_outline, size: 14, color: Colors.amber[700]),
                   const SizedBox(width: 6),
                   Text(currentQuestion['note'] as String, style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14, color: Colors.grey[700])),
                   const SizedBox(width: 8),
                   Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(color: Colors.red[50], borderRadius: BorderRadius.circular(4)),
                      child: Text(_getFirstLetterHint(currentQuestion['target_text'] as String), style: TextStyle(fontSize: 12, color: Colors.red[400], fontWeight: FontWeight.bold, fontFamily: 'monospace')),
                   ),
                 ],
               ),
             ),
          ],
          
          const SizedBox(height: 20),
          
          if (appState.showRetryButton) ...[
             if (appState.mode3Score != null)
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.grey[50], borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.grey.shade300)),
                  child: Column(
                    children: [
                      Text('${l10n.accuracy}: ${appState.mode3Score!.toStringAsFixed(1)}%', style: TextStyle(color: _getScoreColor(appState.mode3Score!), fontWeight: FontWeight.bold, fontSize: 18)),
                      const SizedBox(height: 6),
                      Text(currentQuestion['target_text'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blueGrey), textAlign: TextAlign.center),
                      const Divider(height: 12),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${l10n.recognizedText}: ", style: const TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold)),
                          Expanded(child: Text(appState.mode3UserAnswer.isEmpty ? "( ... )" : appState.mode3UserAnswer, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: appState.mode3UserAnswer.isEmpty ? Colors.grey : Colors.black87))),
                        ],
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: ElevatedButton(onPressed: () => appState.retryMode3Question(), style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))), child: const Icon(Icons.refresh, size: 24))),
                  const SizedBox(width: 8),
                  Expanded(child: ElevatedButton(onPressed: () => appState.skipMode3Question(), style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))), child: const Icon(Icons.arrow_forward, size: 24))),
                ],
              ),
          ] else ...[
             if (appState.isListening)
               Column(
                 children: [
                    const Text("Listening...", style: TextStyle(color: Colors.red, fontSize: 14)),
                    const SizedBox(height: 8),
                    ElevatedButton.icon(onPressed: () => appState.stopMode3ListeningManual(), icon: const Icon(Icons.stop, size: 20), label: Text(l10n.mode3Stop), style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                 ],
               )
             else
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ElevatedButton.icon(onPressed: () => appState.retryMode3Question(), icon: const Icon(Icons.mic, size: 20), label: Text(l10n.mode3Start), style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                   const SizedBox(width: 12),
                   OutlinedButton.icon(onPressed: () => appState.skipMode3Question(), icon: const Icon(Icons.skip_next, size: 18), label: Text(l10n.mode3Next), style: OutlinedButton.styleFrom(foregroundColor: Colors.grey[700], side: BorderSide(color: Colors.grey[400]!), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                 ],
               ),
          ],
        ],
     );
  }

  Widget _buildRecordCard(BuildContext context, AppState appState, Map<String, dynamic> record, AppLocalizations l10n, int index) {
    final translationId = record['id'] as int;
    final isSelected = appState.mode3SessionActive && appState.currentMode3Question?['id'] == translationId;
    
    return InkWell(
      onTap: () => appState.selectMode3QuestionById(translationId),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue[50] : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: isSelected ? Border.all(color: Colors.blue[300]!, width: 2) : Border.all(color: Colors.grey[200]!),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 1))],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (record['type'] == 'word' && (record['pos'] != null || record['form_type'] != null || record['root'] != null))
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Wrap(
                              spacing: 6,
                              children: [
                                if (record['pos'] != null) _buildBadge(record['pos'], Colors.blue[600]!, Colors.blue[50]!),
                                if (record['form_type'] != null) _buildBadge(record['form_type'], Colors.orange[700]!, Colors.orange[50]!),
                                if (record['root'] != null) Text(record['root'], style: TextStyle(fontSize: 10, color: Colors.grey[500])),
                              ],
                            ),
                          ),
                        Text(record['source_text'], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: isSelected ? Colors.blue[800] : Colors.black87)),
                      ],
                    ),
                  ),
                  Icon(isSelected ? Icons.mic : Icons.play_circle_outline, color: isSelected ? Colors.blue : Colors.grey[400], size: 20),
                ],
              ),
              if (record['tags'] != null && (record['tags'] as List).isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Wrap(spacing: 4, children: (record['tags'] as List).map((t) => _buildTagChip(t.toString())).toList()),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBadge(String label, Color textColor, Color bgColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
      decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(4)),
      child: Text(label, style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: textColor)),
    );
  }

  Widget _buildTagChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
      decoration: BoxDecoration(color: Colors.grey[50], borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.grey[200]!)),
      child: Text('#$label', style: TextStyle(fontSize: 9, color: Colors.grey[500])),
    );
  }

  String _getFirstLetterHint(String targetText) {
    if (targetText.isEmpty) return "";
    final words = targetText.split(' ');
    if (words.isEmpty) return "";
    final firstWord = words[0];
    if (firstWord.isEmpty) return "";
    return "${firstWord[0]}${'-' * (firstWord.length - 1)}";
  }

  Color _getScoreColor(double score) {
    if (score >= 100) return Colors.green;
    if (score >= 80) return Colors.orange;
    return Colors.red;
  }
}

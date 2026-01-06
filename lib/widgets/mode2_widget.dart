import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';

/// Mode 2: 복습 모드 - 저장된 학습 기록 표시
class Mode2Widget extends StatefulWidget {
  const Mode2Widget({super.key});

  @override
  State<Mode2Widget> createState() => _Mode2WidgetState();
}

class _Mode2WidgetState extends State<Mode2Widget> {
  final Set<int> _expandedCards = {};

  @override
  void initState() {
    super.initState();
    // Load study records when widget is created
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppState>().loadStudyRecords();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        if (appState.studyRecords.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.library_books_outlined,
                  size: 64,
                  color: Colors.grey[400],
                ),
                const SizedBox(height: 16),
                Text(
                  '아직 학습 기록이 없습니다',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '검색 모드에서 번역을 하면\n자동으로 저장됩니다',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          );
        }

        return Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '📚 학습 기록 (${appState.studyRecords.length})',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () => appState.loadStudyRecords(),
                    icon: const Icon(Icons.refresh),
                    label: const Text('새로고침'),
                  ),
                ],
              ),
            ),

            // Study Records List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: appState.studyRecords.length,
                itemBuilder: (context, index) {
                  final record = appState.studyRecords[index];
                  final id = record['id'] as int;
                  final isExpanded = _expandedCards.contains(id);

                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Source Text
                          Text(
                            record['source_text'] as String,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          // Translated Text (toggleable)
                          if (isExpanded) ...[
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: const Color(0xFFf0f4ff),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                record['translated_text'] as String,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF667eea),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                          ],

                          // Buttons
                          Row(
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {
                                  setState(() {
                                    if (isExpanded) {
                                      _expandedCards.remove(id);
                                    } else {
                                      _expandedCards.add(id);
                                      appState.reviewRecord(id);
                                    }
                                  });
                                },
                                icon: Icon(
                                  isExpanded
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                                label: Text(isExpanded ? '숨기기' : '뒤집기'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF667eea),
                                  foregroundColor: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 8),
                              OutlinedButton.icon(
                                onPressed: () {
                                  appState.playRecordTts(
                                    record['translated_text'] as String,
                                    record['target_lang'] as String,
                                  );
                                },
                                icon: const Icon(Icons.volume_up),
                                label: const Text('듣기'),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: const Color(0xFF667eea),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          // Metadata
                          Text(
                            '${AppState.languageNames[record['source_lang']]} → '
                            '${AppState.languageNames[record['target_lang']]} | '
                            '${_formatDate(record['date'] as String)}'
                            '${record['review_count'] as int > 0 ? ' | 복습 ${record['review_count']}회' : ''}',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  String _formatDate(String dateStr) {
    try {
      final date = DateTime.parse(dateStr);
      final now = DateTime.now();
      final diff = now.difference(date);

      if (diff.inDays == 0) return '오늘';
      if (diff.inDays == 1) return '어제';
      if (diff.inDays < 7) return '${diff.inDays}일 전';

      return '${date.month}/${date.day}';
    } catch (e) {
      return dateStr;
    }
  }
}

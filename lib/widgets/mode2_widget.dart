import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
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

  Future<void> _importJsonFile(BuildContext context) async {
    try {
      // Pick JSON file
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['json'],
      );

      if (result != null && result.files.single.path != null) {
        // Read file content
        final file = File(result.files.single.path!);
        final jsonContent = await file.readAsString();

        if (!context.mounted) return;

        // Show loading dialog
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
        );

        // Import
        final appState = context.read<AppState>();
        final importResult = await appState.importFromJsonFile(jsonContent);

        if (!context.mounted) return;

        // Close loading dialog
        Navigator.of(context).pop();

        // Show result dialog
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              importResult['success'] == true ? '✅ Import 완료' : '❌ Import 실패',
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('총 항목: ${importResult['total']}개'),
                Text('성공: ${importResult['imported']}개'),
                Text('건너뜀: ${importResult['skipped']}개'),
                if (importResult['errors'] != null &&
                    (importResult['errors'] as List).isNotEmpty) ...[
                  const SizedBox(height: 8),
                  const Text('오류:', style: TextStyle(fontWeight: FontWeight.bold)),
                  ...(importResult['errors'] as List).take(3).map(
                        (error) => Text(
                          '• $error',
                          style: const TextStyle(fontSize: 12, color: Colors.red),
                        ),
                      ),
                ],
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('확인'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      if (!context.mounted) return;

      // Show error dialog
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('❌ 오류'),
          content: Text('파일을 불러오는 중 오류가 발생했습니다:\n$e'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('확인'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return Column(
          children: [
            // Header with language filter (Always visible)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '📚 학습 기록 (${appState.studyRecords.length})',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          // Import button
                          IconButton(
                            onPressed: () => _importJsonFile(context),
                            icon: const Icon(Icons.upload_file),
                            tooltip: 'JSON 불러오기',
                            color: const Color(0xFF667eea),
                          ),
                          // Refresh button
                          TextButton.icon(
                            onPressed: () => appState.loadStudyRecords(),
                            icon: const Icon(Icons.refresh),
                            label: const Text('새로고침'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Language filter dropdown (Always visible)
                  Row(
                    children: [
                      const Text(
                        '대상 언어 필터:',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          value: appState.selectedReviewLanguage,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
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
                          onChanged: (value) {
                            if (value != null) {
                              appState.setReviewLanguage(value);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Study Records List OR Empty State
            Expanded(
              child: appState.studyRecords.isEmpty
                  ? Center(
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
                            '선택한 언어의 학습 기록이 없습니다',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '검색 모드에서 번역을 하거나\\nJSON 파일을 불러오세요',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[500],
                            ),
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton.icon(
                            onPressed: () => _importJsonFile(context),
                            icon: const Icon(Icons.upload_file),
                            label: const Text('JSON 파일 불러오기'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF667eea),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: appState.studyRecords.length,
                itemBuilder: (context, index) {
                  final record = appState.studyRecords[index];
                  final id = record['id'] as int;
                  final isExpanded = _expandedCards.contains(id);

                  return InkWell(
                    onLongPress: () {
                      // 햅틱 피드백 (선택사항, 일부 플랫폼에서만 작동)
                      // HapticFeedback.mediumImpact();
                      
                      // 삭제 확인 대화상자 표시
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('🗑️ 레코드 삭제'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('이 학습 기록을 삭제하시겠습니까?'),
                              const SizedBox(height: 12),
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      record['source_text'] as String,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    const Icon(
                                      Icons.arrow_downward,
                                      size: 16,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      record['translated_text'] as String,
                                      style: const TextStyle(
                                        color: Color(0xFF667eea),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('취소'),
                            ),
                            TextButton(
                              onPressed: () async {
                                Navigator.of(context).pop();
                                try {
                                  await appState.deleteRecord(id);
                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('✅ 레코드가 삭제되었습니다'),
                                        duration: Duration(seconds: 2),
                                      ),
                                    );
                                  }
                                } catch (e) {
                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('❌ 삭제 실패: $e'),
                                        backgroundColor: Colors.red,
                                        duration: const Duration(seconds: 3),
                                      ),
                                    );
                                  }
                                }
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.red,
                              ),
                              child: const Text('삭제'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Card(
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

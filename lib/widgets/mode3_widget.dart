import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';

/// Mode 3: 말하기 모드
/// - 선택한 학습 자료 또는 전체 문장을 바탕으로 발음 연습
/// - 대기 시간 설정 기능 (버튼 방식)
class Mode3Widget extends StatelessWidget {
  final Key? materialDropdownKey;
  final Key? intervalSettingsKey;
  final Key? startStopButtonKey;

  const Mode3Widget({
    super.key,
    this.materialDropdownKey,
    this.intervalSettingsKey,
    this.startStopButtonKey,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Consumer<AppState>(
      builder: (context, appState, child) {
        final currentQuestion = appState.currentMode3Question;
        
        return Column(
          children: [
            // ==========================================
            // 1. Top Settings Panel
            // ==========================================
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.purple[50], // Distinct color for Speaking Mode
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Material Selector
                  DropdownButtonFormField<int>(
                    key: materialDropdownKey,
                    value: appState.selectedMaterialId,
                    decoration: InputDecoration(
                      labelText: l10n.selectStudyMaterial,
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                    items: appState.filteredStudyMaterials.map((material) {
                      return DropdownMenuItem<int>(
                        value: material['id'] as int,
                        child: Text(
                          material['subject'] as String,
                          overflow: TextOverflow.ellipsis,
                        ),
                      );
                    }).toList(),
                    onChanged: appState.mode3SessionActive 
                      ? null // Disable while active
                      : (val) {
                          if (val != null) appState.selectMaterial(val);
                        },
                  ),
                  const SizedBox(height: 16),
                  
                  // Interval Selector (Button Style Redesign)
                  Row(
                    key: intervalSettingsKey,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove_circle_outline, size: 28),
                        color: Colors.red[300],
                        onPressed: appState.mode3SessionActive 
                            || appState.mode3Interval <= 3 
                            ? null 
                            : () => appState.setMode3Interval(appState.mode3Interval - 1),
                        tooltip: l10n.tooltipDecrease,
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          l10n.intervalSeconds(appState.mode3Interval),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold, 
                            fontSize: 18,
                            color: Colors.deepPurple
                          ),
                        ),
                      ),
                      
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline, size: 28),
                        color: Colors.green[300],
                        onPressed: appState.mode3SessionActive 
                            || appState.mode3Interval >= 60 
                            ? null 
                            : () => appState.setMode3Interval(appState.mode3Interval + 1),
                        tooltip: l10n.tooltipIncrease,
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 8),
                  
                  // Start/Stop Button
                  ElevatedButton.icon(
                    key: startStopButtonKey,
                    onPressed: appState.studyMaterials.isEmpty
                        ? null
                        : () => appState.toggleMode3Session(),
                    icon: Icon(
                      appState.mode3SessionActive ? Icons.stop : Icons.play_arrow,
                    ),
                    label: Text(
                      appState.mode3SessionActive ? l10n.stopPractice : l10n.startPractice,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appState.mode3SessionActive ? Colors.red : Colors.purple,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ],
              ),
            ),
            
            // ==========================================
            // 2. Practice Area
            // ==========================================
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: currentQuestion == null
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              appState.studyMaterials.isEmpty
                                  ? l10n.importJsonFilePrompt
                                  : l10n.startPractice, 
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey[400], fontSize: 18),
                            ),
                            if (appState.studyMaterials.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: TextButton.icon(
                                  onPressed: () => appState.resetMode3Progress(),
                                  icon: const Icon(Icons.refresh, color: Colors.grey),
                                  label: const Text('연습 기록 초기화', style: TextStyle(color: Colors.grey)),
                                ),
                              ),
                          ],
                        ),
                      )
                  : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Source Text (Native)
                          const Text(
                            "🇰🇷", // Fixed to Source flag or dynamic
                            style: TextStyle(fontSize: 32),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            currentQuestion['source_text'] as String,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          
                          const SizedBox(height: 24),
                          
                          // Feedback Area
                          if (appState.mode3UserAnswer.isNotEmpty) ...[
                            Text(
                              l10n.yourPronunciation,
                              style: TextStyle(color: Colors.grey[600], fontSize: 12),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              appState.mode3UserAnswer,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.purple,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                          
                          const SizedBox(height: 16),
                          
                          // Result / Score
                          if (appState.mode3Score != null) ...[
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                              decoration: BoxDecoration(
                                color: _getScoreColor(appState.mode3Score!),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(
                                appState.mode3Feedback,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              l10n.score(appState.mode3Score!.toStringAsFixed(1)),
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                             Text(
                              l10n.correctAnswer,
                              style: TextStyle(color: Colors.grey[600], fontSize: 12),
                            ),
                            Text(
                              currentQuestion['target_text'] as String,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[800],
                              ),
                            ),
                          ] else if (appState.mode3SessionActive) ...[
                            // Active Practice State
                            const SizedBox(height: 16),
                            if (appState.showRetryButton) ...[
                              // Retry Button (Timeout case)
                              Column(
                                children: [
                                  Text(
                                    l10n.noVoiceDetected, // "No voice detected" or similar
                                    style: TextStyle(color: Colors.red[300], fontSize: 16),
                                  ),
                                  const SizedBox(height: 16),
                                  ElevatedButton.icon(
                                    onPressed: () => appState.retryMode3Question(),
                                    icon: const Icon(Icons.refresh),
                                    label: const Text("Retry? (2s)"),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                                    ),
                                  ),
                                ],
                              )
                            ] else ...[
                              // Mic Icon (Listening)
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.red.withOpacity(0.1),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.mic,
                                    size: 60,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Text(
                                l10n.listening,
                                style: TextStyle(
                                  color: Colors.red[400], 
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ],
                        // Add bottom padding to lift the centered content
                        const SizedBox(height: 80), 
                      ],
                  ),
              ),
            ),
          ],
        );
      },
    );
  }

  Color _getScoreColor(double score) {
    if (score >= 90) return Colors.green;
    if (score >= 70) return Colors.orange;
    return Colors.red;
  }
}

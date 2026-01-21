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
  final Key? wordCheckKey; // Add Key

  const Mode3Widget({
    super.key,
    this.materialDropdownKey,
    this.intervalSettingsKey,
    this.startStopButtonKey,
    this.wordCheckKey, // Add Key
  });

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
                    
                    // Practice Words Only Checkbox
                    CheckboxListTile(
                      key: widget.wordCheckKey,
                      title: Text(l10n.tutorialM3WordsTitle),
                      subtitle: Text(l10n.tutorialM3WordsDesc),
                      value: appState.practiceWordsOnly,
                      onChanged: appState.mode3SessionActive
                          ? null
                          : (val) {
                              appState.setPracticeWordsOnly(val ?? false);
                            },
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),

                    
                    const SizedBox(height: 8),
                    
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
                                    label: Text(l10n.resetPracticeHistory, style: const TextStyle(color: Colors.grey)),
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
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            
                            // Context Tag Hint (New)
                            if (currentQuestion['note'] != null && (currentQuestion['note'] as String).isNotEmpty) ...[
                              const SizedBox(height: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.grey[300]!),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.info_outline, size: 14, color: Colors.grey[600]),
                                    const SizedBox(width: 4),
                                    Text(
                                      currentQuestion['note'] as String,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                            
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
                            
                            // Result / Score (Horizontal Layout)
                            if (appState.mode3Score != null) ...[
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 12),
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.grey[300]!),
                                ),
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  alignment: WrapAlignment.center,
                                  runSpacing: 4,
                                  spacing: 8,
                                  children: [
                                    // 1. Accuracy
                                    Text(
                                      '${l10n.accuracy}: ${appState.mode3Score!.toStringAsFixed(1)}%',
                                      style: TextStyle(
                                        color: _getScoreColor(appState.mode3Score!),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    
                                    // Separator
                                    Container(width: 1, height: 12, color: Colors.grey[400]),
                                    
                                    // 2. Correct Answer Label
                                    Text(
                                      l10n.correctAnswer, 
                                      style: TextStyle(color: Colors.grey[600], fontSize: 13, fontWeight: FontWeight.w500),
                                    ),
                                    
                                    // 3. Target Text
                                    Text(
                                      currentQuestion['target_text'] as String,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[900],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              
                              if (appState.showRetryButton) ...[
                                // Should theoretically not be reached if auto-flow is implemented,
                                // but if we keep showRetryButton logic for some edge case, we can show a status instead of buttons.
                                // User requested removing buttons.
                                const SizedBox(height: 24),
                                Text(
                                  l10n.noVoiceDetected,
                                  style: TextStyle(color: Colors.red[300], fontSize: 16),
                                ),
                              ] else ...[
                                // Mic Icon (Listening)
                                const SizedBox(height: 16),
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
                            ], // End of if (mode3Score != null) else if (active)
                          // Add bottom padding to lift the centered content
                          const SizedBox(height: 120), // Increased to 120 for Ad space
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


  String _getFeedbackText(BuildContext context, String code) {
    final l10n = AppLocalizations.of(context)!;
    switch (code) {
      case 'PERFECT':
        return l10n.perfect;
      case 'TRY_AGAIN':
        return l10n.tryAgain;
      case 'TIME_UP':
        return l10n.timeUp;
      case 'Completed All!': // Legacy or fallback
        return 'All Done!';
      default:
        return code;
    }
  }

  Color _getScoreColor(double score) {
    if (score >= 90) return Colors.green;
    if (score >= 70) return Colors.orange;
    return Colors.red;
  }
}

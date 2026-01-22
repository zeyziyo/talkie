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
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
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
                    // Word/Sentence Toggle


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
                      key: wordCheckKey,
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
                    // REMOVED Global Start/Stop Button Here
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
                      padding: const EdgeInsets.all(24.0),
                      child: !appState.mode3SessionActive || currentQuestion == null
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    appState.studyMaterials.isEmpty
                                        ? l10n.importJsonFilePrompt
                                        : "${l10n.startPractice} (Press Start Below)", // Or just prompt to start
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.grey[400], fontSize: 18),
                                  ),
                                  const SizedBox(height: 20),
                                  if (appState.studyMaterials.isNotEmpty)
                                    ElevatedButton.icon(
                                      onPressed: () => appState.toggleMode3Session(), // Initial Start
                                      icon: const Icon(Icons.play_arrow),
                                      label: Text(l10n.startPractice),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.purple,
                                        foregroundColor: Colors.white,
                                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                      ),
                                    ),
                                ],
                              ),
                            )
                        : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Source Text Display (Horizontal)
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text("🇰🇷", style: TextStyle(fontSize: 24)),
                                    const SizedBox(width: 12),
                                    Flexible(
                                      child: Text(
                                        currentQuestion['source_text'] as String,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                    // Hint & First Letter
                                    if (currentQuestion['note'] != null && (currentQuestion['note'] as String).isNotEmpty) ...[
                                      const SizedBox(width: 8),
                                      Tooltip(
                                        message: currentQuestion['note'] as String,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                          decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.circular(8),
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
                                                  fontSize: 12,
                                                  color: Colors.grey[700],
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                              // First Letter Hint
                                              const SizedBox(width: 6),
                                              Text(
                                                _getFirstLetterHint(currentQuestion['target_text'] as String),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.red[300],
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'monospace',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                                
                                const SizedBox(height: 30),
                                
                                // Dynamic Content Area (Buttons vs Result)
                                if (appState.showRetryButton) ...[
                                   // Result & Score Shown
                                   if (appState.mode3UserAnswer.isNotEmpty)
                                     Text(
                                        appState.mode3UserAnswer,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 18, color: Colors.purple, fontStyle: FontStyle.italic),
                                     ),
                                     
                                   const SizedBox(height: 20),
                                   
                                   if (appState.mode3Score != null)
                                      Container(
                                        padding: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              '${l10n.accuracy}: ${appState.mode3Score!.toStringAsFixed(1)}%',
                                                style: TextStyle(
                                                  color: _getScoreColor(appState.mode3Score!),
                                                  fontWeight: FontWeight.bold, fontSize: 16),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(currentQuestion['target_text'] as String,
                                                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                                          ],
                                        ),
                                      ),
                                    
                                   const SizedBox(height: 30),
                                   
                                   // Next or Retry Button
                                   if ((appState.mode3Score ?? 0) >= 90)
                                      ElevatedButton.icon(
                                        onPressed: () => appState.skipMode3Question(),
                                        icon: const Icon(Icons.arrow_forward), // Next
                                        label: Text(l10n.mode3Next),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          foregroundColor: Colors.white,
                                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                                        ),
                                      )
                                   else
                                      ElevatedButton.icon(
                                        onPressed: () => appState.retryMode3Question(),
                                        icon: const Icon(Icons.refresh),
                                        label: Text(l10n.mode3TryAgain),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.orange,
                                          foregroundColor: Colors.white,
                                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                                        ),
                                      ),

                                ] else ...[
                                   // Recording Controls
                                   if (appState.isListening)
                                     Column(
                                       children: [
                                          const Text("Listening...", style: TextStyle(color: Colors.red, fontSize: 16)),
                                          const SizedBox(height: 20),
                                          ElevatedButton.icon(
                                            onPressed: () => appState.stopMode3ListeningManual(),
                                            icon: const Icon(Icons.stop, size: 32),
                                            label: Text(l10n.mode3Stop, style: const TextStyle(fontSize: 18)),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.red,
                                              foregroundColor: Colors.white,
                                              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                            ),
                                          ),
                                       ],
                                     )
                                   else
                                     ElevatedButton.icon(
                                        onPressed: () => appState.retryMode3Question(), // Triggers start logic
                                        icon: const Icon(Icons.mic, size: 32),
                                        label: Text(l10n.mode3Start, style: const TextStyle(fontSize: 18)),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green,
                                          foregroundColor: Colors.white,
                                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                        ),
                                      ),
                                ],
                                
                                const SizedBox(height: 60),
                              ],
                          ),
                    ),
                    
                    // Floating Next Button (Global Skip)
                    if (appState.mode3SessionActive && currentQuestion != null)
                      Positioned(
                        bottom: 24,
                        right: 24,
                        child: FloatingActionButton(
                          onPressed: () => appState.skipMode3Question(),
                          backgroundColor: Colors.grey,
                          mini: true,
                          child: const Icon(Icons.skip_next),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  
  // Helper for First Letter Hint
  String _getFirstLetterHint(String targetText) {
    if (targetText.isEmpty) return "";
    final words = targetText.split(' ');
    if (words.isEmpty) return "";
    final firstWord = words[0];
    if (firstWord.isEmpty) return "";
    
    // Example: "Apple" -> "A----"
    return "${firstWord[0]}${'-' * (firstWord.length - 1)}";
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

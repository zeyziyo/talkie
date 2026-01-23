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
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
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
                      onChanged: (val) async {
                          if (val != null) {
                            // Fix: await the material loading so data is ready before starting session
                            await appState.selectMaterial(val);
                            
                            // Auto-start (load first question) when material is selected
                            // valid manual start:
                            if (context.mounted) {
                               appState.startMode3SessionDirectly(); 
                            }
                          }
                        },
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
                      padding: const EdgeInsets.all(24.0),
                      child: !appState.mode3SessionActive || currentQuestion == null
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    Text(
                                      l10n.importJsonFilePrompt, // Just show prompt, no button
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.grey[400], fontSize: 18),
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
                                          fontSize: 32, // Larger Text
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
                                                  fontStyle: FontStyle.italic,
                                                  fontSize: 18, // Larger Hint
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
                                        padding: const EdgeInsets.all(16),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(color: Colors.grey.shade300),
                                        ),
                                        child: Column(
                                          children: [
                                            // Accuracy Score
                                            Text(
                                              '${l10n.accuracy}: ${appState.mode3Score!.toStringAsFixed(1)}%',
                                                style: TextStyle(
                                                  color: _getScoreColor(appState.mode3Score!),
                                                  fontWeight: FontWeight.bold, fontSize: 22), // Larger Score
                                            ),
                                            const SizedBox(height: 12),
                                            
                                            // Target Text (Correct Answer)
                                            Text(
                                              currentQuestion['target_text'] as String,
                                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueGrey),
                                              textAlign: TextAlign.center,
                                            ),
                                            
                                            const Divider(height: 24),
                                            
                                            // User's Spoken Text (Feedback)
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "${l10n.recognizedText}: ", 
                                                    style: const TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      appState.mode3UserAnswer.isEmpty ? "( ... )" : appState.mode3UserAnswer,
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w600,
                                                        fontStyle: FontStyle.italic,
                                                        color: appState.mode3UserAnswer.isEmpty ? Colors.grey : Colors.black87
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    
                                    const SizedBox(height: 30),
                                   
                                    // Next or Retry Button
                                    // Next or Retry + Next Logic
                                    if ((appState.mode3Score ?? 0) >= 90)
                                       // Perfect Score -> Show Big Next
                                       SizedBox(
                                         width: double.infinity,
                                         child: ElevatedButton.icon(
                                           onPressed: () => appState.skipMode3Question(),
                                           icon: const Icon(Icons.arrow_forward, size: 28),
                                           label: Text(l10n.mode3Next, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                                           style: ElevatedButton.styleFrom(
                                             backgroundColor: Colors.blue,
                                             foregroundColor: Colors.white,
                                             padding: const EdgeInsets.symmetric(vertical: 20),
                                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                             elevation: 4,
                                           ),
                                         ),
                                       )
                                    else
                                       // Retry AND Next Side-by-Side
                                       Row(
                                         children: [
                                           // Retry Button (Orange)
                                            Expanded(
                                              child: ElevatedButton.icon(
                                                onPressed: () => appState.retryMode3Question(),
                                                icon: const Icon(Icons.refresh, size: 24),
                                                label: Text(l10n.mode3TryAgain, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.orange,
                                                  foregroundColor: Colors.white,
                                                  padding: const EdgeInsets.symmetric(vertical: 20),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                                  elevation: 4,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            // Next Button (Blue)
                                            Expanded(
                                              child: ElevatedButton.icon(
                                                onPressed: () => appState.skipMode3Question(),
                                                icon: const Icon(Icons.arrow_forward, size: 24),
                                                label: Text(l10n.mode3Next, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  foregroundColor: Colors.white,
                                                  padding: const EdgeInsets.symmetric(vertical: 20),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                                  elevation: 4,
                                                ),
                                              ),
                                            ),
                                         ],
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
                    
                    // Floating Next Button Removed (Duplicate)
                  ],
                ),
              ),

              
              // Reset Button
              // Reset Button (Styled)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: OutlinedButton.icon(
                  key: resetButtonKey, // Assigned Key for Tutorial
                  onPressed: () => appState.resetMode3Progress(),
                  icon: const Icon(Icons.refresh, size: 18),
                  label: Text(l10n.resetPracticeHistory),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.deepOrangeAccent,
                    side: const BorderSide(color: Colors.deepOrangeAccent),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(height: 16),
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


  Color _getScoreColor(double score) {
    if (score >= 90) return Colors.green;
    if (score >= 70) return Colors.orange;
    return Colors.red;
  }
}

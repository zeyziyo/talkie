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
                      initialValue: appState.selectedMaterialId,
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
                                // Source Text Display (Vertical Layout)
                                Column(
                                  children: [
                                     // 1. Flag + Text (Horizontal)
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         const Text("🇰🇷", style: TextStyle(fontSize: 24)),
                                         const SizedBox(width: 12),
                                         Flexible(
                                           child: Text(
                                             currentQuestion['source_text'] as String,
                                             textAlign: TextAlign.center,
                                             style: const TextStyle(
                                               fontSize: 26,
                                               fontWeight: FontWeight.bold,
                                               color: Colors.black87,
                                             ),
                                           ),
                                         ),
                                       ],
                                     ),
                                     
                                     // 2. Hint (Below)
                                     if (currentQuestion['note'] != null && (currentQuestion['note'] as String).isNotEmpty) ...[
                                        const SizedBox(height: 12), // Space between text and hint
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                                          decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius: BorderRadius.circular(20), // Pill shape
                                            border: Border.all(color: Colors.grey[300]!),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(Icons.lightbulb_outline, size: 14, color: Colors.amber[700]),
                                              const SizedBox(width: 6),
                                              Text(
                                                currentQuestion['note'] as String,
                                                style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontSize: 14, // Reduced hint size
                                                  color: Colors.grey[700],
                                                ),
                                              ),
                                              // First Letter Hint
                                              const SizedBox(width: 8),
                                              Container(
                                                 padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                                 decoration: BoxDecoration(
                                                   color: Colors.red[50],
                                                   borderRadius: BorderRadius.circular(4),
                                                 ),
                                                 child: Text(
                                                  _getFirstLetterHint(currentQuestion['target_text'] as String),
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.red[400],
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'monospace',
                                                  ),
                                                 ),
                                              ),
                                            ],
                                          ),
                                        ),
                                     ],
                                  ],
                                ),
                                
                                const SizedBox(height: 30),
                                
                                // Dynamic Content Area (Buttons vs Result)
                                if (appState.showRetryButton) ...[
                                   // Result & Score Shown
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
                                                  fontWeight: FontWeight.bold, fontSize: 20), // Reduced from 22
                                            ),
                                            const SizedBox(height: 12),
                                            
                                            // Target Text (Correct Answer)
                                            Text(
                                              currentQuestion['target_text'] as String,
                                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blueGrey), // Reduced from 18
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
                                                    style: const TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold), // Reduced from 16
                                                  ),
                                                  Expanded(
                                                      child: Text(
                                                        appState.mode3UserAnswer.isEmpty ? "( ... )" : appState.mode3UserAnswer,
                                                        style: TextStyle(
                                                          fontSize: 14, // Reduced from 16
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
                                    // Next / Reset Row
                                    Row(
                                      children: [
                                        // Retry Button (if not perfect)
                                        // Retry Button
                                        // Retry Button
                                        Expanded(
                                          child: ElevatedButton(
                                            onPressed: () => appState.retryMode3Question(),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.orange,
                                              foregroundColor: Colors.white,
                                              padding: const EdgeInsets.symmetric(vertical: 12),
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                            ),
                                            child: const Icon(Icons.refresh, size: 36),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        // Next Button
                                        Expanded(
                                          child: ElevatedButton(
                                            onPressed: () => appState.skipMode3Question(),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blue,
                                              foregroundColor: Colors.white,
                                              padding: const EdgeInsets.symmetric(vertical: 12),
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                            ),
                                            child: const Icon(Icons.arrow_forward, size: 36),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        // Reset Button
                                        Expanded(
                                          child: OutlinedButton(
                                            onPressed: () => appState.resetMode3Progress(),
                                            style: OutlinedButton.styleFrom(
                                              foregroundColor: Colors.grey[700],
                                              side: BorderSide(color: Colors.grey[400]!),
                                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                            ),
                                            child: const Icon(Icons.history, size: 36),
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
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         ElevatedButton.icon(
                                           onPressed: () => appState.retryMode3Question(),
                                           icon: const Icon(Icons.mic, size: 32),
                                           label: Text(l10n.mode3Start, style: const TextStyle(fontSize: 18)),
                                           style: ElevatedButton.styleFrom(
                                             backgroundColor: Colors.green,
                                             foregroundColor: Colors.white,
                                             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                           ),
                                         ),
                                         const SizedBox(width: 16),
                                         OutlinedButton.icon(
                                           onPressed: () => appState.skipMode3Question(),
                                           icon: const Icon(Icons.skip_next, size: 24),
                                           label: Text(l10n.mode3Next, style: const TextStyle(fontSize: 16)),
                                           style: OutlinedButton.styleFrom(
                                             foregroundColor: Colors.grey[700],
                                             side: BorderSide(color: Colors.grey[400]!),
                                             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                           ),
                                         ),
                                       ],
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

              // Spacer to ensure separation
              const SizedBox(height: 16),
              const Divider(height: 1, thickness: 0.5, color: Colors.grey),
              const SizedBox(height: 16),
              
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
    if (score >= 100) return Colors.green;
    if (score >= 80) return Colors.orange;
    return Colors.red;
  }
}

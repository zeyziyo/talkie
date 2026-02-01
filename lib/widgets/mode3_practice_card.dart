import 'package:flutter/material.dart';
import 'package:talkie/providers/app_state.dart';
import 'package:talkie/l10n/app_localizations.dart';

class Mode3PracticeCard extends StatelessWidget {
  final AppState appState;
  final Map<String, dynamic> record; // Changed from currentQuestion to record for generic list use
  final AppLocalizations l10n;
  final bool isExpanded;
  final VoidCallback? onToggleExpand;

  const Mode3PracticeCard({
    Key? key,
    required this.appState,
    required this.record,
    required this.l10n,
    this.isExpanded = false,
    this.onToggleExpand,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Basic data extraction
    final targetId = record['target_id'] as int? ?? record['id'] as int;
    final recordSourceLang = record['source_lang'] as String? ?? appState.sourceLang;

    
    // In Mode 3, Top is ALWAYS Source (Mother Tongue), Bottom is Target (Learning Language)
    final topLang = recordSourceLang;
    final topText = record['source_text'] as String;
    

    final bottomText = record['target_text'] as String;

    final contextTag = record['note'] as String?;
    final isMemorized = record['is_memorized'] == true;

    // Premium Gradient Colors
    final gradientColors = [const Color(0xFF667eea), const Color(0xFF764ba2)];

    return GestureDetector(
      onTap: onToggleExpand,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
             colors: gradientColors,
             begin: Alignment.topLeft,
             end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF764ba2).withValues(alpha: 0.4),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: Column(
            children: [
              // --- TOP SECTION (Source - Always Visible) ---
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header: Lang Badge + Info + Checkbox
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         // Lang Badge
                         Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.white30),
                          ),
                          child: Text(
                            topLang.toUpperCase(),
                            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                         ),
                         const SizedBox(width: 8),
                         
                         // Metadata Badges
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                                 if (record['dialogue_id'] != null)
                                   Padding(
                                     padding: const EdgeInsets.only(bottom: 4),
                                     child: Row(
                                       children: [
                                         const Icon(Icons.chat_bubble_outline, size: 10, color: Colors.white70),
                                         const SizedBox(width: 4),
                                         Text(
                                           l10n.chatFromConversation(record['speaker'] ?? "AI"),
                                           style: const TextStyle(fontSize: 10, color: Colors.white70, fontWeight: FontWeight.bold),
                                         ),
                                       ],
                                     ),
                                   ),
                             ],
                           ),
                         ),
  
                         // Checkbox (Completed Toggle)
                         GestureDetector(
                            onTap: () => appState.toggleMemorizedStatus(targetId, isMemorized),
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 1.5),
                                color: isMemorized ? Colors.white : Colors.transparent,
                              ),
                              child: Icon(
                                Icons.check,
                                size: 16,
                                color: isMemorized ? const Color(0xFF764ba2) : Colors.transparent,
                              ),
                            ),
                         ),
                      ],
                    ),
                    
                    const SizedBox(height: 12),
                    
                    // Main Source Text
                    Text(
                      topText,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.4,
                      ),
                    ),
                    
                    // Note / Context Tag
                    if (contextTag != null && contextTag.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            const Icon(Icons.label_outline, size: 14, color: Colors.white70),
                            const SizedBox(width: 4),
                            Text(
                              contextTag,
                              style: const TextStyle(fontSize: 13, color: Colors.white70, fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                      
                     // Hint (First Letter) - Only visible if expanded or maybe always? 
                     // User said "remove old card... replace with top part". 
                     // Let's show hint always or only expanded? Usually hint belongs to practice.
                     // I will show it only when expanded to keep the top clean.
                     // Actually, let's keep it if it was there. But maybe move to bottom?
                     // I'll keep it here for now if expanded.
                     if (isExpanded)
                       Padding(
                         padding: const EdgeInsets.only(top: 8),
                         child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(color: Colors.white10, borderRadius: BorderRadius.circular(4)),
                            child: Text(
                              _getFirstLetterHint(bottomText), 
                              style: const TextStyle(fontSize: 12, color: Colors.white70, fontFamily: 'monospace')
                            ),
                         ),
                       ),
                  ],
                ),
              ),
              
              // --- Divider (White) - Only if expanded ---
              if (isExpanded)
                Divider(height: 1, color: Colors.white.withValues(alpha: 0.1)),
              
              // --- BOTTOM SECTION (Practice Area) - Only if expanded ---
              if (isExpanded)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                       // Check State
                       if (appState.showRetryButton) ...[
                          // Result View
                          _buildResultView(gradientColors),
                       ] else ...[
                          // Listening / Idle View
                          _buildListeningView(),
                       ],
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResultView(List<Color> gradientColors) {
    final score = appState.mode3Score ?? 0.0;
    
    return Column(
      children: [
         // Score & Text
         Text('${l10n.accuracy}: ${score.toStringAsFixed(1)}%', 
             style: TextStyle(color: _getScoreColor(score), fontWeight: FontWeight.bold, fontSize: 18)
         ),
         const SizedBox(height: 8),
         Text(record['target_text'] as String, 
             textAlign: TextAlign.center,
             style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)
         ),
         const SizedBox(height: 4),
         Text('"${appState.mode3UserAnswer}"', 
             style: const TextStyle(fontSize: 14, color: Colors.white70, fontStyle: FontStyle.italic)
         ),
         const SizedBox(height: 20),
         
         // Controls (Reset, Retry, Next)
         Row(
           children: [
             // Reset Button (New)
             _buildActionButton(
               icon: Icons.restore, // Reset icon
               label: "", // Icon only? Or Text? Space is limited.
               color: Colors.white12,
               onPressed: () => appState.resetMode3Question(),
             ),
             const SizedBox(width: 8),
             
             Expanded(
               child: _buildActionButton(
                 icon: Icons.refresh,
                 label: l10n.retry,
                 color: Colors.white24,
                 onPressed: () => appState.retryMode3Question(),
               ),
             ),
             const SizedBox(width: 8),
             
             Expanded(
               child: _buildActionButton(
                 icon: Icons.arrow_forward,
                 label: l10n.next,
                 color: Colors.white,
                 textColor: gradientColors.last,
                 onPressed: () => appState.skipMode3Question(),
               ),
             ),
           ],
         ),
      ],
    );
  }

  Widget _buildListeningView() {
    if (appState.isListening) {
      return Column(
        children: [
           const Text("Listening...", style: TextStyle(color: Colors.redAccent, fontSize: 16, fontWeight: FontWeight.bold)),
           const SizedBox(height: 16),
           _buildCircleButton(
             icon: Icons.stop,
             color: Colors.redAccent,
             size: 60,
             onPressed: () => appState.stopMode3ListeningManual(),
           ),
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                // Skip Button
               _buildCircleButton(
                 icon: Icons.skip_next,
                 color: Colors.white24,
                 size: 40,
                 iconSize: 20,
                 onPressed: () => appState.skipMode3Question(),
               ),
               const SizedBox(width: 20),
               
               // Mic Button
               _buildCircleButton(
                 icon: Icons.mic,
                 color: Colors.white,
                 iconColor: const Color(0xFF764ba2),
                 size: 70,
                 iconSize: 32,
                 onPressed: () => appState.retryMode3Question(), // Starts listening
               ),
               
               const SizedBox(width: 20),
               
               // TTS Button
               _buildCircleButton(
                 icon: Icons.volume_up,
                 color: Colors.white24,
                 size: 40,
                 iconSize: 20,
                 onPressed: () => appState.playMaterialTts(
                    text: record['target_text'] as String,
                    lang: record['target_lang'] as String,
                 ),
               ),
            ],
          ),
          
          // Reset Button (Also visible in Idle state?) 
          // If we are idle, maybe we want to reset if we just recognized? 
          // But if idle and no score, reset does nothing. 
          // Wait, design requirement: "Add Reset button".
          // If I am in Idle state (before mic), Reset is not really needed unless I want to 'unselect' the card?
          // But 'Reset' usually implies resetting the *practice result*.
          // So I put it in Result View.
          // But if the user wants to "Reset" to initial state (maybe they spoke but it failed/timed out?), `retry` covers that.
          // If the definition of Reset is "Clear everything and go back to Idle", then `resetMode3Question` does that.
          // I'll add a Reset button in Idle view as well, maybe top-left or bottom-left?
          // Or strictly in Result view as requested? "In that area... insert reset button".
          // Usually reset is useful after a result.
          // Let's stick to Result View for now.
        ],
      );
    }
  }

  Widget _buildActionButton({required IconData icon, required String label, required Color color, Color? textColor, required VoidCallback onPressed}) {
    // If label is empty, make it icon-only button style
    if (label.isEmpty) {
       return ElevatedButton(
         onPressed: onPressed,
         style: ElevatedButton.styleFrom(
           backgroundColor: color,
           padding: const EdgeInsets.symmetric(vertical: 12),
           shape: const CircleBorder(), // or rounded
           minimumSize: const Size(48, 48),
           elevation: 0,
         ),
         child: Icon(icon, color: textColor ?? Colors.white),
       );
    }
  
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: textColor ?? Colors.white),
      label: Text(label, style: TextStyle(color: textColor ?? Colors.white, fontWeight: FontWeight.bold)),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
      ),
    );
  }

  Widget _buildCircleButton({required IconData icon, required Color color, Color? iconColor, required double size, double? iconSize, required VoidCallback onPressed}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          if (color == Colors.white)
            BoxShadow(color: Colors.black.withValues(alpha: 0.2), blurRadius: 8, offset: const Offset(0, 4)),
        ],
      ),
      child: IconButton(
        icon: Icon(icon, size: iconSize ?? 24, color: iconColor ?? Colors.white),
        onPressed: onPressed,
      ),
    );
  }

  Color _getScoreColor(double score) {
    if (score >= 100) return Colors.greenAccent;
    if (score >= 80) return Colors.amberAccent;
    return Colors.redAccent;
  }

  String _getFirstLetterHint(String targetText) {
    if (targetText.isEmpty) return "";
    final words = targetText.split(' ');
    if (words.isEmpty) return "";
    final firstWord = words[0];
    if (firstWord.isEmpty) return "";
    return "${firstWord[0]}${'-' * (firstWord.length - 1)}";
  }
}


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
    super.key,
    required this.appState,
    required this.record,
    required this.l10n,
    this.isExpanded = false,
    this.onToggleExpand,
  });

  @override
  Widget build(BuildContext context) {
    // Basic data extraction
    final targetId = record['target_id'] as int? ?? record['id'] as int;

    
    // In Mode 3, Top is ALWAYS Source (Mother Tongue), Bottom is Target (Learning Language)
    final topText = record['source_text'] as String;
    


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
                    // Header: Info + Checkbox
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center, // Center for horizontal alignment
                      children: [
                         // Metadata Badges (Context Tag + Tags)
                         Expanded(
                           child: Wrap(
                             spacing: 8,
                             runSpacing: 4,
                             crossAxisAlignment: WrapCrossAlignment.center,
                             children: [
                               // 1. Context Tag (Note)
                               if (contextTag != null && contextTag.isNotEmpty)
                                 Container(
                                   padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                   decoration: BoxDecoration(
                                     color: Colors.white12,
                                     borderRadius: BorderRadius.circular(4),
                                   ),
                                   child: Text(
                                     contextTag,
                                     style: const TextStyle(fontSize: 12, color: Colors.white70, fontStyle: FontStyle.italic),
                                   ),
                                 ),

                               // 2. User Tags (Added for parity with Mode 2)
                               if (record['tags'] != null && (record['tags'] as List).isNotEmpty)
                                 ...(() {
                                    final displayableParams = AppState.displayableTags;
                                    
                                    final filteredTags = (record['tags'] as List)
                                        .map((t) => t.toString())
                                        .where((t) => displayableParams.contains(t.toLowerCase()))
                                        .toList();

                                    return filteredTags.map((t) => Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                                      decoration: BoxDecoration(
                                        color: Colors.white10,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(color: Colors.white12),
                                      ),
                                      child: Text('#$t', style: const TextStyle(fontSize: 10, color: Colors.white60)),
                                    ));
                                 })(),
                             ],
                           ),
                         ),
                         
                         const SizedBox(width: 8),

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
                    
                    // Dialogue Info
                    if (record['dialogue_id'] != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            const Icon(Icons.chat_bubble_outline, size: 12, color: Colors.white70),
                            const SizedBox(width: 4),
                            Text(
                              l10n.chatFromConversation(record['speaker'] ?? "AI"),
                              style: const TextStyle(fontSize: 11, color: Colors.white70, fontWeight: FontWeight.bold),
                            ),
                          ],
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
               label: l10n.reset, 
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
           const SizedBox(height: 16),
           // Hint relocated here
           Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(color: Colors.white10, borderRadius: BorderRadius.circular(6)),
              child: Text(
                _getFirstLetterHint(record['target_text'] as String), 
                style: const TextStyle(fontSize: 14, color: Colors.white70, fontFamily: 'monospace', letterSpacing: 2)
              ),
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
               
               const SizedBox(width: 20),
               
               // Reset Button (Idle)
               _buildCircleButton(
                 icon: Icons.restore,
                 color: Colors.white24,
                 size: 40,
                 iconSize: 20,
                 onPressed: () => appState.resetMode3Question(),
               ),
             ],
           ),
           const SizedBox(height: 20),
           // Hint relocated here (Idle view)
           Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(color: Colors.white10, borderRadius: BorderRadius.circular(6)),
              child: Text(
                _getFirstLetterHint(record['target_text'] as String), 
                style: const TextStyle(fontSize: 14, color: Colors.white70, fontFamily: 'monospace', letterSpacing: 2)
              ),
           ),
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

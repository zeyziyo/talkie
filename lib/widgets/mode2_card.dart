import 'package:flutter/material.dart';
import 'package:talkie/providers/app_state.dart';
import 'package:talkie/l10n/app_localizations.dart';

class Mode2Card extends StatelessWidget {
  final AppState appState;
  final Map<String, dynamic> record;
  final bool isStudied;
  final bool isExpanded;
  final bool isPlaying;
  final int index;
  final Key? itemKey;
  final Function(int) onToggleExpand;

  const Mode2Card({
    Key? key,
    required this.appState,
    required this.record,
    required this.isStudied,
    required this.isExpanded,
    required this.isPlaying,
    required this.index,
    required this.onToggleExpand,
    this.itemKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final translationId = record['id'] as int;
    final groupId = record['group_id'] as int;
    final targetId = record['target_id'] as int; // Added Phase 53
    final recordSourceLang = record['source_lang'] as String;

    final recordTargetLang = record['target_lang'] as String;
    
    // Check if we need to swap display based on current AppState settings
    final isSwapped = appState.sourceLang == recordTargetLang;
    
    // Determine what to show as "Source" (Top) and "Target" (Hidden/Bottom)
    final topLang = isSwapped ? recordTargetLang : recordSourceLang;
    final bottomLang = isSwapped ? recordSourceLang : recordTargetLang;
    
    final topText = isSwapped 
        ? (record['target_text'] as String) 
        : (record['source_text'] as String);
        
    final bottomText = isSwapped 
        ? (record['source_text'] as String) 
        : (record['target_text'] as String);
        
    final contextTag = record['note'] as String?;

    // Premium Gradient Colors
    final gradientColors = [const Color(0xFF667eea), const Color(0xFF764ba2)];

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
           colors: gradientColors,
           begin: Alignment.topLeft,
           end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: isPlaying ? Border.all(color: Colors.white, width: 3) : null,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF764ba2).withOpacity(0.4),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          key: itemKey,
          onLongPress: () {
            _showDeleteDialog(context, appState, record, l10n);
          },
          borderRadius: BorderRadius.circular(20),
          child: Column(
          children: [
            // --- TOP SECTION (Source) ---
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
                              // Chat Origin
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
                              
                              // Word Details
                               if (record['type'] == 'word' && (record['pos'] != null || record['form_type'] != null || record['root'] != null))
                                 Padding(
                                   padding: const EdgeInsets.only(bottom: 6),
                                   child: Wrap(
                                     spacing: 6,
                                     runSpacing: 4,
                                     crossAxisAlignment: WrapCrossAlignment.center,
                                     children: [
                                       if (record['pos'] != null)
                                         _buildBadge(_getLocalizedTag(record['pos'], l10n), Colors.white, Colors.white24),
                                       if (record['form_type'] != null)
                                         _buildBadge(_getLocalizedTag(record['form_type'], l10n), Colors.white, Colors.white12),
                                       if (record['root'] != null)
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Icon(Icons.link, size: 12, color: Colors.white60),
                                              const SizedBox(width: 2),
                                              Text(
                                                record['root'],
                                                style: const TextStyle(fontSize: 12, color: Colors.white60, fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                     ],
                                   ),
                                 ),
                           ],
                         ),
                       ),

                       // Checkbox
                       GestureDetector(
                          onTap: () => appState.toggleMemorizedStatus(targetId, isStudied),
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 1.5),
                              color: isStudied ? Colors.white : Colors.transparent,
                            ),
                            child: Icon(
                              Icons.check,
                              size: 16,
                              color: isStudied ? const Color(0xFF764ba2) : Colors.transparent,
                            ),
                          ),
                       ),
                    ],
                  ),
                  
                  const SizedBox(height: 12),
                  
                  // Main Source Text
                  Text(
                    topText,
                    style: TextStyle(
                      fontSize: (record['type'] == 'word') ? 24 : 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.4,
                      decoration: null,
                      decorationColor: Colors.white70,
                    ),
                  ),
                  
                  // Note / Context Tag
                  if (contextTag != null && contextTag.isNotEmpty && contextTag != record['pos'])
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          const Icon(Icons.label_outline, size: 14, color: Colors.white70),
                          const SizedBox(width: 4),
                          Text(
                            _getLocalizedTag(contextTag, l10n),
                            style: const TextStyle(fontSize: 13, color: Colors.white70, fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                    
                   // Tags (Filtered)
                   if (record['tags'] != null && (record['tags'] as List).isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Builder(
                        builder: (context) {
                          final systemTags = {
                            ...AppState.posCategories,
                            ...AppState.sentenceCategories,
                            ...AppState.verbFormCategories,
                            ...AppState.adjectiveFormCategories,
                            'word', 'sentence'
                          }.map((e) => e.toLowerCase()).toSet();

                          final filteredTags = (record['tags'] as List)
                              .map((t) => t.toString())
                              .where((t) => !systemTags.contains(t.toLowerCase()))
                              .toList();

                          if (filteredTags.isEmpty) return const SizedBox.shrink();

                          return Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            children: filteredTags.map((t) => Container(
                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.white12),
                              ),
                              child: Text(t, style: const TextStyle(fontSize: 10, color: Colors.white70)),
                            )).toList(),
                          );
                        }
                      ),
                    ),
                ],
              ),
            ),
            
            // --- Divider (White) ---
            Divider(height: 1, color: Colors.white.withOpacity(0.1)),
            
            // --- BOTTOM SECTION (Expandable) ---
            if (isExpanded)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Target Text
                    Row(
                      children: [
                         Container(
                           padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                           decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(4)),
                           child: Text(bottomLang.toUpperCase(), style: const TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold)),
                         ),
                         const SizedBox(width: 8),
                         Expanded(
                           child: Text(
                             bottomText,
                             style: const TextStyle(fontSize: 17, color: Colors.white, height: 1.4),
                           ),
                         ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    
                    // Actions (TTS / Hide)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _buildGlassIconButton(
                          icon: Icons.volume_up_rounded,
                          onPressed: () => appState.playMaterialTts(
                              text: bottomText,
                              lang: bottomLang,
                              recordId: record['target_id'] as int?,
                          ),
                        ),
                        const SizedBox(width: 12),
                         // Hide Button
                        TextButton.icon(
                           onPressed: () {
                             if (!isExpanded) { 
                               // appState.markTranslationAsStudied(translationId); // Removed
                             }
                             onToggleExpand(translationId);
                           },
                           icon: const Icon(Icons.visibility_off, color: Colors.white70, size: 16),
                           label: Text(l10n.hide, style: const TextStyle(color: Colors.white70)),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            else
               // Collapsed Footer
               InkWell(
                 onTap: () {
                    // appState.markTranslationAsStudied(translationId); // Removed
                    onToggleExpand(translationId);
                 },
                 borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       _buildGlassIconButton(
                          icon: Icons.volume_up_rounded,
                          onPressed: () => appState.playMaterialTts(
                              text: topText,
                              lang: topLang,
                          ),
                          isSmall: true,
                       ),
                       
                       Row(
                         children: [
                           Text(l10n.flip, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                           const SizedBox(width: 4),
                           const Icon(Icons.keyboard_arrow_down, color: Colors.white),
                         ],
                       ),
                     ],
                   ),
                 ),
               ),
          ],
        ),
      ),
    ),
    );
  }

  Widget _buildBadge(String label, Color textColor, Color bgColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: textColor),
      ),
    );
  }

  Widget _buildGlassIconButton({required IconData icon, required VoidCallback onPressed, bool isSmall = false}) {
    return Container(
      decoration: BoxDecoration(
         color: Colors.white24,
         borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white, size: isSmall ? 20 : 24),
        constraints: isSmall ? const BoxConstraints(minWidth: 32, minHeight: 32) : null,
        padding: isSmall ? const EdgeInsets.all(4) : const EdgeInsets.all(8),
        onPressed: onPressed,
      ),
    );
  }

  // --- Helpers ---

  Future<void> _showDeleteDialog(BuildContext context, AppState appState, Map<String, dynamic> record, AppLocalizations l10n) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.deleteRecord),
        content: Text(l10n.confirmDelete),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        await appState.deleteRecord(record['group_id'] as int);
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.recordDeleted)),
          );
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.deleteFailed(e.toString()))),
          );
        }
      }
    }
  }

  String _getLocalizedTag(String tag, AppLocalizations l10n) {
    switch (tag.toLowerCase()) {
      case 'noun': return l10n.posNoun;
      case 'verb': return l10n.posVerb;
      case 'adjective': return l10n.posAdjective;
      case 'adverb': return l10n.posAdverb;
      case 'pronoun': return l10n.posPronoun;
      case 'preposition': return l10n.posPreposition;
      case 'conjunction': return l10n.posConjunction;
      case 'interjection': return l10n.posInterjection;
      case 'statement': return l10n.typeStatement;
      case 'question': return l10n.typeQuestion;
      case 'exclamation': return l10n.typeExclamation;
      case 'imperative': return l10n.typeImperative;
      case 'infinitive': return l10n.formInfinitive;
      case 'past': return l10n.formPast;
      case 'past participle': return l10n.formPastParticiple;
      case 'present participle': return l10n.formPresentParticiple;
      case 'present': return l10n.formPresent;
      case '3rd person singular': return l10n.formThirdPersonSingular;
      case 'singular': return l10n.formSingular;
      case 'plural': return l10n.formPlural;
      case 'positive': return l10n.formPositive;
      case 'comparative': return l10n.formComparative;
      case 'superlative': return l10n.formSuperlative;
      case 'subject': return l10n.caseSubject;
      case 'object': return l10n.caseObject;
      case 'possessive': return l10n.casePossessive;
      case 'possessivepronoun': return l10n.casePossessivePronoun;
      case 'reflexive': return l10n.caseReflexive;
      default: return tag;
    }
  }
}

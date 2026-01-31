import 'package:flutter/material.dart';
import 'package:talkie/providers/app_state.dart';
import 'package:talkie/l10n/app_localizations.dart';

class Mode3Card extends StatelessWidget {
  final AppState appState;
  final Map<String, dynamic> record;
  final bool isSelected;
  final Function(int) onSelect;
  final AppLocalizations l10n;

  const Mode3Card({
    Key? key,
    required this.appState,
    required this.record,
    required this.isSelected,
    required this.onSelect,
    required this.l10n,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Premium Gradient Colors
    final gradientColors = [const Color(0xFF667eea), const Color(0xFF764ba2)];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      decoration: BoxDecoration(
        // If selected, use Premium Gradient. Else, use White.
        gradient: isSelected 
            ? LinearGradient(colors: gradientColors, begin: Alignment.topLeft, end: Alignment.bottomRight)
            : null,
        color: isSelected ? null : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: isSelected 
            ? null // No border needed with gradient
            : Border.all(color: Colors.grey.shade200),
        boxShadow: isSelected 
          ? [
              BoxShadow(
                color: const Color(0xFF764ba2).withOpacity(0.4),
                blurRadius: 12,
                offset: const Offset(0, 4),
              )
            ]
          : [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              )
            ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onSelect(record['id'] as int),
          onLongPress: () => _showDeleteDialog(context, appState, record, l10n),
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16), // More padding for premium feel
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Badges Row
                          if (record['type'] == 'word' && (record['pos'] != null || record['form_type'] != null || record['root'] != null))
                            Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Wrap(
                                spacing: 6,
                                children: [
                                  if (record['pos'] != null)
                                    _buildBadge(
                                      _getLocalizedTag(record['pos'], l10n),
                                      isSelected ? Colors.white : Colors.blue[600]!,
                                      isSelected ? Colors.white24 : Colors.blue[50]!,
                                    ),
                                  if (record['form_type'] != null)
                                    _buildBadge(
                                      _getLocalizedTag(record['form_type'], l10n),
                                      isSelected ? Colors.white : Colors.orange[700]!,
                                      isSelected ? Colors.white12 : Colors.orange[50]!,
                                    ),
                                  if (record['root'] != null)
                                     Text(
                                       record['root'], 
                                       style: TextStyle(
                                         fontSize: 10, 
                                         color: isSelected ? Colors.white54 : Colors.grey[500]
                                       )
                                     ),
                                ],
                              ),
                            ),
                            
                          Text(
                            record['source_text'],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: isSelected ? Colors.white : Colors.black87,
                            ),
                          ),
                          
                          // Note
                          if (record['note'] != null && record['note'].toString().isNotEmpty && record['note'].toString() != record['pos'].toString())
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                _getLocalizedTag(record['note'], l10n),
                                style: TextStyle(
                                  fontSize: 12, 
                                  color: isSelected ? Colors.white70 : Colors.grey[700], 
                                  fontStyle: FontStyle.italic
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    
                    // Icon
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.white24 : Colors.grey[100],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        isSelected ? Icons.mic : Icons.play_circle_outline,
                        color: isSelected ? Colors.white : Colors.grey[400],
                        size: 24,
                      ),
                    ),
                  ],
                ),
                
                // Tags
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
                          children: filteredTags.map((t) => _buildTagChip(t, isSelected)).toList(),
                        );
                      }
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBadge(String label, Color textColor, Color bgColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(6)),
      child: Text(label, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: textColor)),
    );
  }

  Widget _buildTagChip(String label, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white10 : Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: isSelected ? Colors.transparent : Colors.grey[300]!, width: 0.5),
      ),
      child: Text(
        '#$label',
        style: TextStyle(fontSize: 10, color: isSelected ? Colors.white70 : Colors.grey[600]),
      ),
    );
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
        await appState.deleteRecord(record['id'] as int);
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
}

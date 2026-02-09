import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';

class MetadataDialog extends StatefulWidget {
  final List<String> currentTags;
  final Function(List<String>) onTagsChanged;

  const MetadataDialog({
    super.key,
    required this.currentTags,
    required this.onTagsChanged,
  });

  @override
  State<MetadataDialog> createState() => _MetadataDialogState();
}

class _MetadataDialogState extends State<MetadataDialog> {
  late TextEditingController _tagController;
  late TextEditingController _noteController;
  late TextEditingController _rootController;
  late List<String> _tags;

  @override
  void initState() {
    super.initState();
    _tags = List.from(widget.currentTags);
    _tagController = TextEditingController();
    _noteController = TextEditingController();
    _rootController = TextEditingController();
    
    // Initialize controllers with current AppState values
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final appState = Provider.of<AppState>(context, listen: false);
      _noteController.text = appState.note;
      _rootController.text = appState.sourceRoot;
    });
  }

  @override
  void dispose() {
    _tagController.dispose();
    _noteController.dispose();
    _rootController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final appState = Provider.of<AppState>(context);

    // Filter "Total Tags" (exclude already selected ones)
    final availableTotalTags = appState.availableTags
        .where((t) => !_tags.contains(t))
        .toList();

    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(l10n.metadataDialogTitle),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Tags Section
            Text('Tags', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 4),
            Wrap(
              spacing: 4,
              children: _tags.map((tag) => Chip(
                label: Text(tag, style: const TextStyle(fontSize: 11)),
                onDeleted: () {
                  setState(() {
                    _tags.remove(tag);
                  });
                  widget.onTagsChanged(_tags);
                },
                visualDensity: VisualDensity.compact,
              )).toList(),
            ),
            
            Row(
              children: [
                // Tag Input
                Expanded(
                  child: TextField(
                    controller: _tagController,
                    decoration: InputDecoration(
                      hintText: '태그 입력',
                      isDense: true,
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.add, size: 20),
                        onPressed: _addTag,
                      ),
                    ),
                    onSubmitted: (_) => _addTag(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // "Total Tags" Dropdown (Always Visible)
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: '전체 태그 (자료집 제목) 선택',
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                border: const OutlineInputBorder(),
              ),
              hint: const Text('기존 태그 추가'),
              items: availableTotalTags.map((tag) {
                return DropdownMenuItem(
                  value: tag,
                  child: Text(tag, overflow: TextOverflow.ellipsis),
                );
              }).toList(),
              onChanged: (val) {
                if (val != null) {
                  setState(() {
                    _tags.add(val);
                  });
                  widget.onTagsChanged(_tags);
                }
              },
            ),
            
            const SizedBox(height: 16),
            
            // 2. Note Section
            TextField(
              controller: _noteController,
              decoration: InputDecoration(
                labelText: l10n.labelNote,
                hintText: l10n.tutorialContextDesc,
                border: const OutlineInputBorder(),
              ),
              onChanged: (val) => appState.setNote(val),
            ),
            const SizedBox(height: 16),

            // 3. Dynamic Fields based on Type & Mode
            // Root Word (Smart Autocomplete)
            if (appState.recordTypeFilter == 'word') ...[
               Builder(
                builder: (context) {
                  bool showRootField = false;
                  if (appState.sourcePos == 'Verb' && appState.sourceFormType != 'Infinitive' && appState.sourceFormType.isNotEmpty) {
                    showRootField = true;
                  } else if ((appState.sourcePos == 'Adjective' || appState.sourcePos == 'Adverb') && 
                            appState.sourceFormType != 'Positive' && appState.sourceFormType.isNotEmpty) {
                    showRootField = true;
                  }

                  if (!showRootField) return const SizedBox.shrink();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Autocomplete<String>(
                        optionsBuilder: (TextEditingValue textEditingValue) {
                          if (textEditingValue.text.isEmpty) {
                            return const Iterable<String>.empty();
                          }
                          return appState.searchMatchingRoots(textEditingValue.text);
                        },
                        onSelected: (String selection) {
                           appState.setSourceRoot(selection);
                           _rootController.text = selection;
                        },
                        fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
                          if (textEditingController.text.isEmpty && appState.sourceRoot.isNotEmpty) {
                            textEditingController.text = appState.sourceRoot;
                          }
                          textEditingController.addListener(() {
                             appState.setSourceRoot(textEditingController.text);
                          });

                          return TextField(
                            controller: textEditingController,
                            focusNode: focusNode,
                            decoration: InputDecoration(
                              labelText: l10n.metadataRootWord,
                              border: const OutlineInputBorder(),
                              suffixIcon: const Icon(Icons.search),
                            ),
                          );
                        },
                        optionsViewBuilder: (context, onSelected, options) {
                          return Align(
                            alignment: Alignment.topLeft,
                            child: Material(
                              elevation: 4.0,
                              child: SizedBox(
                                width: 250,
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  itemCount: options.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    final String option = options.elementAt(index);
                                    return ListTile(
                                      title: Text(option),
                                      onTap: () {
                                        onSelected(option);
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                  );
                },
              ),
            ],

            // Form Type Section (Dynamic based on POS)
            if (appState.recordTypeFilter == 'word') ...[
               Builder(
                builder: (context) {
                  List<String> categories = [];
                  if (appState.sourcePos == 'Verb') {
                    categories = AppState.verbFormCategories;
                  } else if (appState.sourcePos == 'Adjective' || appState.sourcePos == 'Adverb') {
                    categories = AppState.adjectiveFormCategories;
                  } else if (appState.sourcePos == 'Pronoun') { 
                    categories = AppState.pronounCaseCategories;
                  }

                  if (categories.isEmpty) return const SizedBox.shrink();

                  return DropdownButtonFormField<String>(
                    value: categories.contains(appState.sourceFormType) ? appState.sourceFormType : null,
                    decoration: InputDecoration(
                      labelText: l10n.metadataFormType,
                      border: const OutlineInputBorder(),
                    ),
                    items: categories.map((cat) {
                      return DropdownMenuItem(
                        value: cat,
                        child: Text(_getLocalizedCategory(cat, l10n)),
                      );
                    }).toList(),
                    onChanged: (val) {
                      if (val != null) {
                        appState.setSourceFormType(val);
                        setState(() {}); // Rebuild for Root field visibility
                      }
                    },
                  );
                },
              ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(l10n.confirm),
        ),
      ],
    );
  }

  void _addTag() {
    final t = _tagController.text.trim();
    if (t.isNotEmpty && !_tags.contains(t)) {
      setState(() {
        _tags.add(t);
      });
      widget.onTagsChanged(_tags);
      _tagController.clear();
    }
  }

  String _getLocalizedCategory(String cat, AppLocalizations l10n) {
    switch (cat) {
      case 'Noun': return l10n.posNoun;
      case 'Verb': return l10n.posVerb;
      case 'Adjective': return l10n.posAdjective;
      case 'Adverb': return l10n.posAdverb;
      case 'Pronoun': return l10n.posPronoun;
      case 'Preposition': return l10n.posPreposition;
      case 'Conjunction': return l10n.posConjunction;
      case 'Interjection': return l10n.posInterjection;
      case 'Statement': return l10n.typeStatement;
      case 'Question': return l10n.typeQuestion;
      case 'Exclamation': return l10n.typeExclamation;
      case 'Imperative': return l10n.typeImperative;
      case 'Infinitive': return l10n.formInfinitive;
      case 'Past': return l10n.formPast;
      case 'Past Participle': return l10n.formPastParticiple;
      case 'Present Participle': return l10n.formPresentParticiple;
      case '3rd Person Singular': return l10n.formThirdPersonSingular;
      case 'Plural': return l10n.formPlural;
      case 'Positive': return l10n.formPositive;
      case 'Comparative': return l10n.formComparative;
      case 'Superlative': return l10n.formSuperlative;
      case 'Subject': return l10n.caseSubject;
      case 'Object': return l10n.caseObject;
      case 'Possessive': return l10n.casePossessive;
      case 'PossessivePronoun': return l10n.casePossessivePronoun;
      case 'Reflexive': return l10n.caseReflexive;
      default: return cat;
    }
  }
}

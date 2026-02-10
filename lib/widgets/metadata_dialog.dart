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
  late TextEditingController _newSubjectController;
  late TextEditingController _tagController;
  late TextEditingController _noteController;
  late TextEditingController _rootController; // Restored
  late List<String> _tags;
  String? _selectedTitleTag;
  List<String> _availableTitleTags = [];

  @override
  void initState() {
    super.initState();
    _tags = List.from(widget.currentTags);
    _newSubjectController = TextEditingController();
    _tagController = TextEditingController();
    _noteController = TextEditingController();
    _rootController = TextEditingController(); // Restored

    // Initialize controllers with current AppState values
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final appState = Provider.of<AppState>(context, listen: false);
      _noteController.text = appState.note;
      _rootController.text = appState.sourceRoot; // Restored

      // Load available title tags (Subjects except 'Basic')
      final subjects = appState.studyMaterials
          .map((m) => m['subject'] as String)
          .where((s) => s != 'Basic')
          .toSet()
          .toList();
      subjects.sort();
      _availableTitleTags = subjects;

      // Set initial selected title tag from AppState
      if (appState.selectedSaveSubject != 'Basic' && _availableTitleTags.contains(appState.selectedSaveSubject)) {
        _selectedTitleTag = appState.selectedSaveSubject;
      }
      
      // Phase 83: Set default new subject name based on type if no valid selection
      if (_selectedTitleTag == null) {
          _newSubjectController.text = appState.recordTypeFilter == 'word' 
              ? AppLocalizations.of(context)!.myWordbook 
              : AppLocalizations.of(context)!.mySentenceCollection;
      }

      setState(() {});
    });
  }

  @override
  void dispose() {
    _newSubjectController.dispose();
    _tagController.dispose();
    _noteController.dispose();
    _rootController.dispose(); // Restored
    super.dispose();
  }

  void _addNewSubject() {
    final newSubject = _newSubjectController.text.trim();
    if (newSubject.isNotEmpty) {
      final appState = Provider.of<AppState>(context, listen: false);
      setState(() {
        if (!_availableTitleTags.contains(newSubject)) {
          _availableTitleTags.add(newSubject);
          _availableTitleTags.sort();
        }
        _selectedTitleTag = newSubject;
        _newSubjectController.clear();
      });
      // Update AppState immediately
      appState.setSelectedSaveSubject(newSubject);
    }
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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final appState = Provider.of<AppState>(context);

    return AlertDialog(
      title: Text(l10n.metadataDialogTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. New Subject Name (Row 1)
            Text(l10n.newSubjectName, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _newSubjectController,
                    decoration: InputDecoration(
                      hintText: l10n.enterNewSubjectName,
                      isDense: true,
                      border: const OutlineInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    ),
                    onSubmitted: (_) => _addNewSubject(),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.add_circle, color: Colors.blue),
                  onPressed: _addNewSubject,
                  tooltip: l10n.addNewSubject,
                ),
              ],
            ),
            const SizedBox(height: 16),

            // 2. Existing Title Tag (Row 2)
            Text(l10n.titleTagSelection, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: 4),
            DropdownButtonFormField<String>(
              value: _selectedTitleTag,
              decoration: const InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                prefixIcon: Icon(Icons.folder_open, size: 20),
              ),
              hint: Text(l10n.selectExistingSubject),
              items: _availableTitleTags.map((subject) {
                return DropdownMenuItem(
                  value: subject,
                  child: Text(subject, overflow: TextOverflow.ellipsis),
                );
              }).toList(),
              onChanged: (val) {
                if (val != null) {
                  setState(() {
                    _selectedTitleTag = val;
                  });
                  appState.setSelectedSaveSubject(val);
                }
              },
            ),
            const SizedBox(height: 16),

            // 3. General Tags (Row 3)
            Text(l10n.generalTags, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: 4),
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: _tags.map((tag) => Chip(
                label: Text(tag, style: const TextStyle(fontSize: 11)),
                onDeleted: () {
                  setState(() {
                    _tags.remove(tag);
                  });
                  widget.onTagsChanged(_tags);
                },
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.zero,
                labelPadding: const EdgeInsets.symmetric(horizontal: 8),
              )).toList(),
            ),
            const SizedBox(height: 4),
            TextField(
              controller: _tagController,
              decoration: InputDecoration(
                hintText: l10n.addTagHint,
                isDense: true,
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add, size: 20),
                  onPressed: _addTag,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
                ),
              ),
              onSubmitted: (_) => _addTag(),
            ),
            const SizedBox(height: 16),

            // 4. Note (Row 4)
            Text(l10n.labelNote, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: 4),
            TextField(
              controller: _noteController,
              decoration: InputDecoration(
                hintText: l10n.tutorialContextDesc,
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                prefixIcon: const Icon(Icons.description, size: 20),
              ),
              onChanged: (val) => appState.setNote(val),
              minLines: 1,
              maxLines: 3,
            ),
            const SizedBox(height: 16),

            // 5. Dynamic Fields based on Type & Mode (Restored)
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
                      Text(l10n.metadataRootWord, style: Theme.of(context).textTheme.labelMedium),
                      const SizedBox(height: 4),
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
                            decoration: const InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                              suffixIcon: Icon(Icons.search, size: 20),
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

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(l10n.metadataFormType, style: Theme.of(context).textTheme.labelMedium),
                       const SizedBox(height: 4),
                       DropdownButtonFormField<String>(
                        value: categories.contains(appState.sourceFormType) ? appState.sourceFormType : null,
                        decoration: const InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
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
                      ),
                    ],
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

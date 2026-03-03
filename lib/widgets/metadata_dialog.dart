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

  Future<void> _addNewSubject() async {
    String newSubject = _newSubjectController.text.trim();
    if (newSubject.isEmpty) return;

    final appState = Provider.of<AppState>(context, listen: false);
    final l10n = AppLocalizations.of(context)!;

    // Phase 17480: If the name matches the localized default names, use 'Basic'
    if (newSubject == l10n.myWordbook || newSubject == l10n.mySentenceCollection || newSubject == 'Basic') {
      setState(() {
        _selectedTitleTag = 'Basic';
        _newSubjectController.clear();
      });
      appState.setSelectedSaveSubject('Basic');
      return;
    }

    // Phase 17480: Check for duplicates before adding
    final duplicateType = await appState.checkTitleDuplicate(newSubject);
    
    if (!mounted) return;

    if (duplicateType == 'local') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('"$newSubject"는 이미 생성된 자료집입니다. 해당 자료집을 선택합니다.')),
      );
    } else if (duplicateType == 'online') {
      final navigator = Navigator.of(context);
      final bool? useOnline = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('온라인 자료실 중복'),
          content: Text('"$newSubject"와 동일한 제목의 자료가 온라인 자료실에 있습니다. 온라인에서 가져오시겠습니까?'),
          actions: [
            TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('그냥 만들기')),
            TextButton(onPressed: () => Navigator.pop(ctx, true), child: const Text('온라인 자료실로 이동')),
          ],
        ),
      );
      
      if (!mounted) return;
      
      if (useOnline == true) {
        navigator.pop(); // Close MetadataDialog
        return;
      }
    }

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

            // 4. Note (Row 4 - Dedicated Section)
            const Divider(height: 32),
            Row(
              children: [
                const Icon(Icons.description, size: 20, color: Colors.blueGrey),
                const SizedBox(width: 8),
                Text(l10n.labelNote, style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.blueGrey[800])),
              ],
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _noteController,
              decoration: InputDecoration(
                hintText: l10n.labelNote, 
                hintStyle: TextStyle(fontSize: 12, color: Colors.grey[400]),
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                fillColor: Colors.blueGrey[50],
                filled: true,
              ),
              onChanged: (val) => appState.setNote(val),
              minLines: 2,
              maxLines: 4,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4, left: 4),
              child: Text(
                "AI가 이 주석을 참고하여 정확한 의미로 번역합니다.",
                style: TextStyle(fontSize: 10, color: Colors.blueGrey),
              ),
            ),
            const SizedBox(height: 16),

            // 5. Dynamic Fields based on Type & Mode (Restored)
            // Root Word (Smart Autocomplete)
            if (appState.recordTypeFilter == 'word') ...[
               Builder(
                builder: (context) {
                  // Root Field Visibility: Show whenever in word mode to allow grouping
                  if (appState.recordTypeFilter != 'word') return const SizedBox.shrink();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l10n.metadataRootWord, style: Theme.of(context).textTheme.labelMedium),
                      const SizedBox(height: 4),
                      Autocomplete<String>(
                        optionsBuilder: (TextEditingValue textEditingValue) async {
                          if (textEditingValue.text.isEmpty) {
                            return const Iterable<String>.empty();
                          }
                          final results = await appState.searchMatchingRoots(textEditingValue.text);
                          return results.map((m) => m['text'] as String).toList();
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
                        initialValue: categories.contains(appState.sourceFormType) ? appState.sourceFormType : null,
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

            // Phase 105: Sentence Style Section
            if (appState.recordTypeFilter == 'sentence') ...[
              const SizedBox(height: 16),
              Text(l10n.labelType, style: Theme.of(context).textTheme.labelMedium), // Reuse labelType for Style header or add new
              const SizedBox(height: 4),
              DropdownButtonFormField<String>(
                initialValue: appState.sourceStyle.isNotEmpty ? appState.sourceStyle.toLowerCase() : null,
                decoration: const InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                ),
                hint: Text(l10n.notSelected),
                items: ['formal', 'informal', 'polite', 'slang'].map((style) {
                  return DropdownMenuItem(
                    value: style,
                    child: Text(_getLocalizedCategory(style, l10n)),
                  );
                }).toList(),
                onChanged: (val) {
                  if (val != null) {
                    // We need a setter for Style in AppState. AppState already has _sourceStyle.
                    // I'll use a direct assignment or add a setter if needed.
                    // Currently AppStateMode1 has direct access.
                    // But MetadataDialog is a widget, so I should call a method on AppState.
                    appState.setSourceStyle(val); 
                  }
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
    switch (cat.toLowerCase()) {
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
      // Phase 105: Styles
      case 'formal': return l10n.styleFormal;
      case 'informal': return l10n.styleInformal;
      case 'polite': return l10n.stylePolite;
      case 'slang': return l10n.styleSlang;
      default: return cat;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:talkie/widgets/mode2_card.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';

import 'package:talkie/widgets/search_filter_dialog.dart';


/// Mode 2: 학습 자료 및 복습 모드
/// - 기본적으로 학습 자료를 선택하여 학습
/// - '전체 복습' 선택 시 모든 저장된 문장 복습
class Mode2Widget extends StatefulWidget {
  final Key? materialDropdownKey;
  final Key? tutorialListKey;
  final Key? searchKey; // New

  const Mode2Widget({
    super.key,
    this.materialDropdownKey,
    this.tutorialListKey,
    this.searchKey,
    this.onSelectMaterial,
  });

  final VoidCallback? onSelectMaterial;

  @override
  State<Mode2Widget> createState() => _Mode2WidgetState();
}

class _Mode2WidgetState extends State<Mode2Widget> {
  final Set<int> _expandedCards = {};
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final appState = Provider.of<AppState>(context, listen: false);
      appState.loadTags(); // 태그 목록 로드
      appState.loadRecordsByTags(); // 초기 레코드 로드
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // final appState = Provider.of<AppState>(context); // Removed unused

    final l10n = AppLocalizations.of(context)!;
    return Consumer<AppState>(
      builder: (context, appState, child) {

        final selectedNotebookTitle = appState.selectedNotebookTitle;
        final materialRecords = appState.filteredMaterialRecords; // Use filtered records
        final studiedIds = materialRecords
            .where((r) => r['is_memorized'] == true)
            .map((r) => r['id'] as int? ?? 0)
            .toSet();
        


        return Column(
          children: [


            // Custom Header Row (mimicking AppBar)
            // Header removed per user request
            const SizedBox(height: 8),


            // 스마트 검색바 & 태그 필터
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  // Smart Autocomplete Search
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Autocomplete<Map<String, dynamic>>(
                        optionsBuilder: (TextEditingValue textEditingValue) {
                          if (textEditingValue.text.isEmpty) {
                             return const Iterable<Map<String, dynamic>>.empty();
                          }
                          // Tab-Specific Search
                          return appState.searchByType(textEditingValue.text);
                        },
                        displayStringForOption: (Map<String, dynamic> option) => option['text']!,
                        onSelected: (Map<String, dynamic> selection) {
                           // Just jump to result within current tab
                           final String type = selection['type'] as String? ?? appState.recordTypeFilter;
                           appState.jumpToSearchResult(selection['text']!, type);
                           FocusManager.instance.primaryFocus?.unfocus(); // Phase 113: Dismiss overlay using global focus manager
                        },
                        fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
                          // Phase 109: Robust Sync with AppState's query
                          if (appState.searchQuery.isEmpty) {
                            if (textEditingController.text.isNotEmpty) {
                              textEditingController.clear();
                            }
                          } else if (appState.searchQuery != textEditingController.text) {
                            textEditingController.text = appState.searchQuery;
                          }

                          return SearchBar(
                            key: widget.searchKey,
                            controller: textEditingController,
                            focusNode: focusNode,
                            backgroundColor: WidgetStateProperty.all(Colors.grey.shade900),
                            textStyle: WidgetStateProperty.all(const TextStyle(color: Colors.white)),
                            hintStyle: WidgetStateProperty.all(TextStyle(color: Colors.grey.shade400)),
                            hintText: appState.recordTypeFilter == 'word' 
                                ? '${l10n.tabWord} ${l10n.search}' 
                                : '${l10n.tabSentence} ${l10n.search}',
                            onChanged: (value) {
                               // 입력될 때마다 즉각 검색 목록 필터링
                               appState.setSearchQuery(value);
                            },
                            onSubmitted: (value) => appState.setSearchQuery(value),
                            leading: const Icon(Icons.search, color: Colors.white70),
                            padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 16)),
                            elevation: WidgetStateProperty.all(1),
                            trailing: [
                              if (textEditingController.text.isNotEmpty)
                                IconButton(
                                  icon: const Icon(Icons.clear, color: Colors.white70),
                                  onPressed: () {
                                    textEditingController.clear();
                                    appState.setSearchQuery('');
                                    focusNode.unfocus(); // Phase 113: Force collapse overlay
                                  },
                                ),
                            ],
                          );
                        },
                        optionsViewBuilder: (context, onSelected, options) {
                          return Align(
                            alignment: Alignment.topLeft,
                            child: Material(
                              elevation: 4.0,
                              child: SizedBox(
                                width: constraints.maxWidth,
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  itemCount: options.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    final option = options.elementAt(index);
                                    final String note = option['note'] ?? '';
                                    return ListTile(
                                      leading: const Icon(Icons.search, size: 20, color: Colors.grey),
                                      title: Text(option['text']!),
                                      subtitle: note.isNotEmpty ? Text(_getLocalizedTag(note, l10n), style: const TextStyle(fontSize: 12, color: Colors.blue)) : null,
                                      onTap: () => onSelected(option),
                                    );
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      );

                    }
                  ),
                  // Phase 94: Combined row for 4 controls
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // 1. Tag Selection Button (Search Conditions)
                        InkWell(
                          onTap: () => showDialog(
                            context: context,
                            builder: (context) => SearchFilterDialog(appState: appState),
                          ),
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                            decoration: BoxDecoration(
                              color: appState.selectedTags.isNotEmpty ? Colors.blue[50] : Colors.grey[100],
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: appState.selectedTags.isNotEmpty ? Colors.blue.shade200 : Colors.grey.shade300,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.tune, 
                                  size: 14, 
                                  color: appState.selectedTags.isNotEmpty || appState.filterLimit != null || appState.filterStartsWith != null ? Colors.blue.shade700 : Colors.grey.shade600,
                                ),
                                const SizedBox(width: 4),
                                  Text(
                                    appState.selectedTags.isEmpty && appState.filterLimit == null && appState.filterStartsWith == null
                                        ? l10n.searchConditions 
                                        : '${appState.selectedTags.length + (appState.filterLimit != null ? 1 : 0) + (appState.filterStartsWith != null ? 1 : 0)}',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: appState.selectedTags.isNotEmpty || appState.filterLimit != null || appState.filterStartsWith != null ? Colors.blue.shade800 : Colors.grey.shade700,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),

                        // 2. Show Memorized Switch (Finished)
                        InkWell(
                          onTap: () => appState.setShowMemorized(!appState.showMemorized),
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                            decoration: BoxDecoration(
                              color: appState.showMemorized ? Colors.green[50] : Colors.grey[100],
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: appState.showMemorized ? Colors.green.shade200 : Colors.grey.shade300,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  appState.showMemorized ? Icons.visibility : Icons.visibility_off, 
                                  size: 14, 
                                  color: appState.showMemorized ? Colors.green.shade700 : Colors.grey.shade600,
                                ),
                                const SizedBox(width: 2),
                                  Text(
                                    l10n.labelShowMemorized,
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: appState.showMemorized ? Colors.green.shade800 : Colors.grey.shade700,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),

                        // 3. Auto Play Button
                        TextButton.icon(
                          onPressed: () {
                            if (_isAutoPlaying) {
                              _stopAutoPlay();
                            } else {
                              final appState = Provider.of<AppState>(context, listen: false);
                              _startAutoPlay(appState);
                            }
                          },
                          icon: Icon(_isAutoPlaying ? Icons.stop_circle_outlined : Icons.play_circle_outline, size: 14),
                          label: Text(
                            _isAutoPlaying ? l10n.stopPractice : l10n.autoPlay,
                            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          style: TextButton.styleFrom(
                            foregroundColor: _isAutoPlaying ? Colors.red : Colors.green[700],
                            backgroundColor: Colors.grey[100],
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            minimumSize: Size.zero,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                        const SizedBox(width: 8),

                        // 4. Playback Delay (Thinking Time)
                        TextButton.icon(
                          onPressed: () => _showThinkingTimeSettings(context),
                          icon: const Icon(Icons.timer_outlined, size: 14),
                          label: Text(
                            '${l10n.thinkingTimeInterval}: ${_thinkingInterval}s',
                            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.grey[700],
                            backgroundColor: Colors.grey[100],
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            minimumSize: Size.zero,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
            
            // Progress indicator (Phase 160: notebook based)
            if (materialRecords.isNotEmpty && selectedNotebookTitle != null && selectedNotebookTitle.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Icon(Icons.bar_chart, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      l10n.progress(studiedIds.length, materialRecords.length),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '${((studiedIds.length / materialRecords.length) * 100).toStringAsFixed(0)}%',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              
            if ((selectedNotebookTitle == null || selectedNotebookTitle.isEmpty) && materialRecords.isNotEmpty)
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Icon(Icons.list, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      l10n.totalRecords(materialRecords.length),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            
            const SizedBox(height: 16),
            
            // Records list
            Expanded(
              // Key goes to Empty View if empty, otherwise it's handled inside the list
              key: materialRecords.isEmpty ? widget.tutorialListKey : null,
              child: materialRecords.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.library_books_outlined,
                            size: 64,
                            color: Colors.grey[300],
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32.0),
                            child: Text(
                              appState.languageMessage == 'noDataForLanguage'
                                  ? l10n.noDataForLanguage
                                  : ((selectedNotebookTitle == null || selectedNotebookTitle.isEmpty)
                                      ? l10n.selectMaterialPrompt 
                                      : l10n.noRecords),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.only(
                        left: 16, 
                        right: 16, 
                        top: 16, 
                        bottom: 100, // Add bottom padding for FAB/Ad/Nav Bar
                      ),
                      itemCount: materialRecords.length,
                      itemBuilder: (context, index) {
                        final record = materialRecords[index];
                        return _buildRecordCard(
                          appState, 
                          record, 
                          studiedIds,
                          key: index == 0 ? widget.tutorialListKey : null,
                          index: index, // Fix: Pass index
                        );
                      },
                    ),
            ),
          ],
        );
      },
    );
  }
  



  
  // Auto-play state
  bool _isAutoPlaying = false;
  int _currentPlayingIndex = -1;
  int _thinkingInterval = 2; // Default 2 seconds
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // Improved Scroll Logic: Use keys map
  final Map<int, GlobalKey> _itemKeys = {};

  Future<void> _startAutoPlay(AppState appState) async {
    if (_isAutoPlaying) return;

    setState(() {
      _isAutoPlaying = true;
    });

    final records = appState.filteredMaterialRecords;
    if (records.isEmpty) {
      setState(() => _isAutoPlaying = false);
      return;
    }

    // Start from current or first
    int startIndex = _currentPlayingIndex < 0 ? 0 : _currentPlayingIndex;
    if (startIndex >= records.length) startIndex = 0;

    for (int i = startIndex; i < records.length; i++) {
      if (!_isAutoPlaying) break; // Check cancel

      setState(() => _currentPlayingIndex = i);

      // Scroll to item
      final key = _itemKeys[i];
      if (key?.currentContext != null) {
        Scrollable.ensureVisible(
          key!.currentContext!, 
          duration: const Duration(milliseconds: 500), 
          curve: Curves.easeInOut,
          alignment: 0.3, // Top 30% of screen
        );
      }

      final record = records[i];
      final recordSourceLang = record['source_lang'];
      final recordTargetLang = record['target_lang'];
      // Check swap
      final isSwapped = appState.sourceLang == recordTargetLang;

      final firstText = isSwapped ? record['target_text'] : record['source_text'];
      final firstLang = isSwapped ? recordTargetLang : recordSourceLang;
      final secondText = isSwapped ? record['source_text'] : record['target_text'];
      final secondLang = isSwapped ? recordSourceLang : recordTargetLang;

      // 1. Speak First (Visible/Top)
      await appState.playMaterialTts(
        text: firstText, 
        lang: firstLang,
        // No recordId for general play to avoid 'studied' marking if not desired
      );

      if (!_isAutoPlaying) break;

      // 2. Wait Thinking Interval
      await Future.delayed(Duration(seconds: _thinkingInterval));

      if (!_isAutoPlaying) break;

      // 3. Auto Flip (Visual feedback)
      if (!_expandedCards.contains(record['id'])) {
         setState(() {
           _expandedCards.add(record['id']);
         });
      }

      // 4. Speak Second (Hidden/Bottom)
      await appState.playMaterialTts(
        text: secondText, 
        lang: secondLang,
      );

      if (!_isAutoPlaying) break;

      // 5. Fixed Wait 1s
      await Future.delayed(const Duration(seconds: 1));
    }

    if (mounted) {
      setState(() {
        _isAutoPlaying = false;
        _currentPlayingIndex = -1;
      });
    }
  }

  void _stopAutoPlay() {
    setState(() {
      _isAutoPlaying = false;
    });
  }

  void _showThinkingTimeSettings(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            return Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                   Text(
                    AppLocalizations.of(context)!.thinkingTimeInterval, 
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       IconButton(
                        icon: const Icon(Icons.remove_circle_outline, size: 40),
                        color: Colors.red[300],
                        onPressed: _thinkingInterval <= 1 
                            ? null 
                            : () {
                                setState(() => _thinkingInterval--);
                                setSheetState(() {});
                              },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Text(
                          '${_thinkingInterval}s',
                          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blueAccent),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline, size: 40),
                        color: Colors.green[300],
                        onPressed: _thinkingInterval >= 10 
                            ? null 
                            : () {
                                setState(() => _thinkingInterval++);
                                setSheetState(() {});
                              },
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(AppLocalizations.of(context)!.thinkingTimeDesc, style: const TextStyle(color: Colors.grey)),
                  const SizedBox(height: 32),
                ],
              ),
            );
          },
        );
      },
    );
  }


  Widget _buildRecordCard(
    AppState appState,
    Map<String, dynamic> record,
    Set<int> studiedIds, {
    Key? key,
    required int index,
  }) {
    if (!_itemKeys.containsKey(index)) {
      _itemKeys[index] = GlobalKey();
    }
    
    final translationId = record['id'] as int? ?? 0;
    final isStudied = studiedIds.contains(translationId);
    final isExpanded = _expandedCards.contains(translationId);
    final isPlaying = _isAutoPlaying && _currentPlayingIndex == index;
    return Mode2Card(
      appState: appState,
      record: record,
      isStudied: isStudied,
      isExpanded: isExpanded,
      isPlaying: isPlaying,
      index: index,
      itemKey: key ?? _itemKeys[index],
      onToggleExpand: (id) => setState(() => _expandedCards.contains(id) ? _expandedCards.remove(id) : _expandedCards.add(id)),
    );
  }




  // Unused dialog methods removed

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



}

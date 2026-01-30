import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';

/// Mode 2: 학습 자료 및 복습 모드
/// - 기본적으로 학습 자료를 선택하여 학습
/// - '전체 복습' 선택 시 모든 저장된 문장 복습
class Mode2Widget extends StatefulWidget {
  final Key? materialDropdownKey;
  final Key? tutorialListKey;

  const Mode2Widget({
    super.key,
    this.materialDropdownKey,
    this.tutorialListKey,
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
    final l10n = AppLocalizations.of(context)!;
    return Consumer<AppState>(
      builder: (context, appState, child) {

        final selectedMaterialId = appState.selectedMaterialId;
        final materialRecords = appState.filteredMaterialRecords; // Use filtered records
        final studiedIds = appState.studiedTranslationIds;
        


        return Column(
          children: [
            // Status Message
            if (appState.statusMessage.isNotEmpty)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                decoration: BoxDecoration(
                  color: Colors.amber.shade100,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.amber.shade300),
                ),
                child: Text(
                  appState.statusMessage,
                  style: TextStyle(color: Colors.brown.shade800),
                  textAlign: TextAlign.center,
                ),
              ),




            
            const SizedBox(height: 16),

            // 스마트 검색바 & 태그 필터
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  // Smart Autocomplete Search
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Autocomplete<Map<String, String>>(
                        optionsBuilder: (TextEditingValue textEditingValue) {
                          if (textEditingValue.text.isEmpty) {
                             return const Iterable<Map<String, String>>.empty();
                          }
                          // Tab-Specific Search
                          return appState.searchByType(textEditingValue.text);
                        },
                        displayStringForOption: (Map<String, String> option) => option['text']!,
                        onSelected: (Map<String, String> selection) {
                           // Just jump to result within current tab
                           appState.jumpToSearchResult(selection['text']!, selection['type']!);
                        },
                        fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
                          // Sync with AppState's query
                          if (appState.searchQuery != textEditingController.text && appState.searchQuery.isNotEmpty) {
                             if (textEditingController.text.isEmpty) { 
                                textEditingController.text = appState.searchQuery;
                             }
                          }
                          return SearchBar(
                            controller: textEditingController,
                            focusNode: focusNode,
                            hintText: appState.recordTypeFilter == 'word' 
                                ? '단어 검색 (현재 탭)...' 
                                : '문장 검색 (현재 탭)...',
                            onChanged: (value) {
                               if (value.isEmpty) {
                                  appState.setSearchQuery(''); 
                               }
                            },
                            onSubmitted: (value) => appState.setSearchQuery(value),
                            leading: const Icon(Icons.search),
                            padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 16)),
                            elevation: WidgetStateProperty.all(1),
                            trailing: [
                              if (textEditingController.text.isNotEmpty)
                                IconButton(
                                  icon: const Icon(Icons.clear),
                                  onPressed: () {
                                    textEditingController.clear();
                                    appState.setSearchQuery('');
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
                                    return ListTile(
                                      leading: const Icon(Icons.search, size: 20, color: Colors.grey),
                                      title: Text(option['text']!),
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
                  const SizedBox(height: 12),
                  // 태그 필터 칩 목록
                  if (appState.availableTags.isNotEmpty)
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: appState.availableTags.length,
                        itemBuilder: (context, index) {
                          final tag = appState.availableTags[index];
                          final isSelected = appState.selectedTags.contains(tag);
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: FilterChip(
                              label: Text(tag),
                              selected: isSelected,
                              onSelected: (_) => appState.toggleTag(tag),
                              visualDensity: VisualDensity.compact,
                              selectedColor: Colors.blue[100],
                              checkmarkColor: Colors.blue,
                            ),
                          );
                        },
                      ),
                    ),
                  
                  const SizedBox(height: 8),
                  
                  // Word/Sentence Toggle
                  Row(
                    children: [
                      Expanded(
                        child: SegmentedButton<String>(
                          segments: [
                            ButtonSegment<String>(
                              value: 'word',
                              label: Text(l10n.tabWord),
                              icon: const Icon(Icons.text_fields),
                            ),
                            ButtonSegment<String>(
                              value: 'sentence',
                              label: Text(l10n.tabSentence),
                              icon: const Icon(Icons.short_text),
                            ),
                            ButtonSegment<String>(
                              value: 'all',
                              label: const Text('전체'),
                              icon: const Icon(Icons.apps),
                            ),
                          ],
                          selected: {appState.recordTypeFilter},
                          onSelectionChanged: (Set<String> newSelection) {
                            appState.setRecordTypeFilter(newSelection.first);
                            appState.loadRecordsByTags(); // 재로드
                          },
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all(EdgeInsets.zero),
                            visualDensity: VisualDensity.compact,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Thinking Time Settings
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   // Auto Play Button
                   TextButton.icon(
                    onPressed: () {
                      if (_isAutoPlaying) {
                        _stopAutoPlay();
                      } else {
                        final appState = Provider.of<AppState>(context, listen: false);
                        _startAutoPlay(appState);
                      }
                    },
                    icon: Icon(_isAutoPlaying ? Icons.stop_circle_outlined : Icons.play_circle_outline, size: 16),
                    label: Text(
                      _isAutoPlaying ? l10n.stopPractice : l10n.autoPlay,
                      style: const TextStyle(fontSize: 12),
                    ),
                    style: TextButton.styleFrom(
                      foregroundColor: _isAutoPlaying ? Colors.red : Colors.green[700],
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                  const SizedBox(width: 16),
                   TextButton.icon(
                    onPressed: () => _showThinkingTimeSettings(context),
                    icon: const Icon(Icons.timer_outlined, size: 16),
                    label: Text(
                      '${l10n.thinkingTimeInterval}: ${_thinkingInterval}s',
                       style: const TextStyle(fontSize: 12),
                    ),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.grey[600],
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
            
            // Progress indicator
            if (materialRecords.isNotEmpty && selectedMaterialId != -1)
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
              
            if (selectedMaterialId == -1 && materialRecords.isNotEmpty)
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
                          Text(
                            selectedMaterialId == null 
                                ? l10n.selectMaterialPrompt 
                                : l10n.noRecords,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
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
    required int index, // Added index
  }) {
    // Register key for auto-scroll
    if (!_itemKeys.containsKey(index)) {
      _itemKeys[index] = GlobalKey();
    }
    
    final l10n = AppLocalizations.of(context)!;
    final translationId = record['id'] as int;
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
    final isStudied = studiedIds.contains(translationId);
    final isExpanded = _expandedCards.contains(translationId);
    final isPlaying = _isAutoPlaying && _currentPlayingIndex == index;

    return InkWell(
      key: key ?? _itemKeys[index], // Use tutorial key if provided (index == 0)
      onLongPress: () {
        _showDeleteDialog(context, appState, record, l10n);
      },
      child: Container( // Changed Card to Container for Border animation support if needed, but Card is fine.
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(12),
           border: isPlaying ? Border.all(color: Colors.blueAccent, width: 3) : null, // Highlight playing
           boxShadow: [
             if (isPlaying)
               BoxShadow(color: Colors.blue.withValues(alpha: 0.3), blurRadius: 10, spreadRadius: 2)
             else 
               const BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))
           ]
        ),
        child: Card(
          margin: EdgeInsets.zero, // Handle margin in Container
          elevation: 0, // Handle shadow in Container
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: isPlaying ? Colors.blue[50] : Colors.white, // Subtle bg change
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Source text
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        topLang.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (record['dialogue_id'] != null)
                             Padding(
                               padding: const EdgeInsets.only(bottom: 4),
                               child: Row(
                                 children: [
                                   Icon(Icons.chat_bubble_outline, size: 10, color: Colors.blue[300]),
                                   const SizedBox(width: 4),
                                   Text(
                                     l10n.chatFromConversation(record['speaker'] ?? "AI"),
                                     style: TextStyle(fontSize: 10, color: Colors.blue[300], fontWeight: FontWeight.bold),
                                   ),
                                 ],
                               ),
                             ),
                          Text(
                            topText,
                            style: TextStyle(
                              fontSize: (record['type'] == 'word') ? 24 : 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Toggle Memorized Button
                IconButton(
                  icon: Icon(
                    (record['is_memorized'] == true) 
                        ? Icons.check_circle 
                        : Icons.check_circle_outline,
                    color: (record['is_memorized'] == true) 
                        ? Colors.green 
                        : Colors.grey[400],
                  ),
                  tooltip: (record['is_memorized'] == true) 
                      ? '학습 완료 (다시 보이려면 클릭)' 
                      : '학습 완료 체크',
                  onPressed: () {
                     final appState = Provider.of<AppState>(context, listen: false);
                     // Toggle status logic
                     appState.toggleMemorizedStatus(
                         record['id'], 
                         record['is_memorized'] == true
                     );
                  },
                ),

                // Context Tag & Hint
                Builder(
                  builder: (context) {
                    final isWord = record['type'] == 'word';
                    // Show hint only if not expanded (answer hidden)
                    final showHint = isWord && !isExpanded;
                    String hintText = '';
                    
                    if (showHint) {
                      final answer = bottomText; // The hidden text
                      hintText = answer.split(' ').map((w) {
                        if (w.isEmpty) return '';
                        if (w.length <= 1) return w;
                        return w[0] + '-' * (w.length - 1);
                      }).join(' ');
                    }

                    if ((contextTag != null && contextTag.isNotEmpty) || (showHint && hintText.isNotEmpty)) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Row(
                          children: [
                            const SizedBox(width: 44),
                            if (contextTag != null && contextTag.isNotEmpty) ...[
                              Icon(Icons.info_outline, size: 12, color: Colors.grey[600]),
                              const SizedBox(width: 4),
                              Flexible( // Use Flexible to avoid overflow
                                child: Text(
                                  contextTag,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[700],
                                    fontStyle: FontStyle.italic,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              if (showHint && hintText.isNotEmpty) const SizedBox(width: 12),
                            ],
                            
                            if (showHint && hintText.isNotEmpty)
                              Text(
                                hintText,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.red[300],
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontFamily: 'monospace', // Ensure dashes align
                                ),
                              ),
                          ],
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  }
                ),
                
                const SizedBox(height: 12),
                
                // Target text (Hidden by default, expandable)
                if (isExpanded) ...[
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green[50], // Keep original or simple
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 2),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green[200],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            bottomLang.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            bottomText,
                            style: TextStyle(
                              fontSize: (record['type'] == 'word') ? 24 : 16,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF2c5282),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
                
                // Actions
                Row(
                  children: [
                    // Show/Hide Button
                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          if (isExpanded) {
                            _expandedCards.remove(translationId);
                          } else {
                            _expandedCards.add(translationId);
                          }
                        });
                      },
                      icon: Icon(
                        isExpanded ? Icons.visibility_off : Icons.visibility,
                        size: 18,
                      ),
                      label: Text(isExpanded ? l10n.hide : l10n.flip),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF667eea),
                        foregroundColor: Colors.white,
                      ),
                    ),
                    
                    const SizedBox(width: 8),
                    
                    // Listen Button
                    if (isExpanded)
                      OutlinedButton.icon(
                        onPressed: () {
                          appState.playMaterialTts(
                            text: bottomText,
                            lang: bottomLang,
                            recordId: record['target_id'] as int?,
                          );
                        },
                        icon: const Icon(Icons.volume_up, size: 18),
                        label: Text(l10n.listen),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFF667eea),
                        ),
                      ),
                      
                    const Spacer(),
                    
                    // Study Check Button
                    IconButton(
                      onPressed: isStudied
                          ? null
                          : () {
                              appState.markTranslationAsStudied(translationId);
                            },
                      icon: Icon(
                        isStudied ? Icons.check_circle : Icons.check_circle_outline,
                        color: isStudied ? Colors.green : Colors.grey,
                        size: 28,
                      ),
                      tooltip: isStudied ? l10n.studyComplete : l10n.markAsStudied,
                    ),
                  ],
                ),
            ],   // Column children
        ),     // Column
      ),       // Padding
    ),         // Card
    ),         // Container
    );         // InkWell
  }

  void _showDeleteDialog(BuildContext context, AppState appState, Map<String, dynamic> record, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('🗑️ ${l10n.deleteRecord}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.confirmDelete),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                record['source_text'] as String,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop();
              try {
                await appState.deleteRecord(record['id'] as int);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('✅ ${l10n.recordDeleted}')),
                  );
                }
              } catch (e) {
                // Error handling
              }
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
  }
}

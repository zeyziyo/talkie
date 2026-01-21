import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart'; // Changed to url_launcher

/// Mode 2: 학습 자료 및 복습 모드
/// - 기본적으로 학습 자료를 선택하여 학습
/// - '전체 복습' 선택 시 모든 저장된 문장 복습
class Mode2Widget extends StatefulWidget {
  final Key? materialDropdownKey;
  final Key? tutorialListKey;
  final Key? toggleButtonKey;

  const Mode2Widget({
    super.key,
    this.materialDropdownKey,
    this.tutorialListKey,
    this.toggleButtonKey,
  });

  @override
  State<Mode2Widget> createState() => _Mode2WidgetState();
}

class _Mode2WidgetState extends State<Mode2Widget> {
  final Set<int> _expandedCards = {};
  
  @override
  void initState() {
    super.initState();
    // Load study materials when widget is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final appState = Provider.of<AppState>(context, listen: false);
      appState.loadStudyMaterials();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Consumer<AppState>(
      builder: (context, appState, child) {
        final studyMaterials = appState.filteredStudyMaterials;
        final selectedMaterialId = appState.selectedMaterialId;
        final materialRecords = appState.filteredMaterialRecords; // Use filtered records
        final studiedIds = appState.studiedTranslationIds;
        
        // Prepare dropdown items
        final List<DropdownMenuItem<int>> dropdownItems = [];
        
        // 1. Add "Review All" option
        dropdownItems.add(
          DropdownMenuItem(
            value: -1,
            child: Row(
              children: [
                const Icon(Icons.all_inclusive, size: 16, color: Colors.indigo),
                const SizedBox(width: 8),
                Text(
                  l10n.reviewAll, // Could be localized if needed
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
        
        // 2. Add actual materials
        dropdownItems.addAll(studyMaterials.map((material) {
          final id = material['id'] as int;
          final subject = material['subject'] as String;
          // sourceLang and targetLang unused
          
          String label = subject;
          if (id == 0) {
             label = 'Basic';
          }

          return DropdownMenuItem<int>(
            value: id,
            child: Text(label),
          );
        }));

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

            // Word/Sentence Toggle (Added above Dropdown)
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                key: widget.toggleButtonKey,
                child: SegmentedButton<String>(
                  segments: [
                    ButtonSegment<String>(
                      value: 'word', 
                      label: Text(l10n.labelWord), 
                      icon: const Icon(Icons.abc)
                    ),
                    ButtonSegment<String>(
                      value: 'sentence', 
                      label: Text(l10n.labelSentence), 
                      icon: const Icon(Icons.short_text)
                    ),
                  ],
                  selected: {appState.recordTypeFilter == 'all' ? 'word' : appState.recordTypeFilter}, // Default 'all' to 'word'
                  onSelectionChanged: (Set<String> newSelection) {
                    appState.setRecordTypeFilter(newSelection.first); // This filters the records list
                  },
                  style: ButtonStyle(
                    visualDensity: VisualDensity.compact,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  showSelectedIcon: true,
                ),
              ),
            ),
            
            const SizedBox(height: 12),

            // Material selector
            Container(
              key: widget.materialDropdownKey,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Row(
                        children: [
                          IconButton(
                            icon: Icon(_isAutoPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled),
                            color: _isAutoPlaying ? Colors.orange : Colors.green,
                            iconSize: 32,
                            onPressed: () {
                              if (_isAutoPlaying) {
                                _stopAutoPlay();
                              } else {
                                _startAutoPlay(appState);
                              }
                            },
                            tooltip: _isAutoPlaying ? l10n.stopPractice : l10n.autoPlay, // Reusing stopPractice as 'Pause' roughly fits, or create new if needed. Let's use autoPlay for start.
                          ),
                          IconButton(
                            icon: const Icon(Icons.settings),
                            color: Colors.grey[700],
                            onPressed: () => _showThinkingTimeSettings(context),
                            tooltip: l10n.thinkingTimeInterval,
                          ),
                        ],
                      ),
                      // Website Link Button
                      TextButton.icon(
                        onPressed: () async {
                           final Uri url = Uri.parse('https://zeyziyo.github.io/talkie/');
                           if (await canLaunchUrl(url)) {
                             await launchUrl(url, mode: LaunchMode.externalApplication);
                           }
                        },
                        icon: const Icon(Icons.public, size: 18),
                        label: Text(l10n.getMaterials, style: const TextStyle(fontSize: 12)),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<int>(
                    value: selectedMaterialId,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                    ),
                    items: dropdownItems,
                    onChanged: (int? value) {
                      if (value != null) {
                        appState.selectMaterial(value);
                        // Clear expanded cards when material changes
                        _expandedCards.clear();
                      }
                    },
                  ),
                  
                  // Metadata (Collapsible) - Only show if specific material selected (not -1)
                  if (selectedMaterialId != null && selectedMaterialId != -1) ...[
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Card(
                        elevation: 0,
                        color: Colors.grey[50],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Colors.grey[200]!),
                        ),
                        child: Theme(
                          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text(
                              l10n.materialInfo,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF667eea),
                              ),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                child: _buildMaterialInfo(appState, selectedMaterialId),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            
            const SizedBox(height: 16),

            // Old Filter Selector REMOVED

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
  


  Widget _buildMaterialInfo(AppState appState, int materialId) {
    final l10n = AppLocalizations.of(context)!;
    
    // Find material might fail if lists changed, use safeguard
    final material = appState.studyMaterials.firstWhere(
      (m) => m['id'] == materialId,
      orElse: () => {},
    );
    
    if (material.isEmpty) return const SizedBox.shrink();
    
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.topic, size: 16, color: Color(0xFF667eea)),
              const SizedBox(width: 4),
              Text(
                l10n.subject,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              Text(
                material['subject'] as String? ?? 'N/A',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.source, size: 16, color: Color(0xFF667eea)),
              const SizedBox(width: 4),
              Text(
                l10n.source,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              Text(
                material['source'] as String? ?? 'N/A',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          if (material['file_name'] != null) ...[
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.insert_drive_file, size: 16, color: Color(0xFF667eea)),
                const SizedBox(width: 4),
                Text(
                  l10n.file,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
                Expanded(
                  child: Text(
                    material['file_name'] as String,
                    style: const TextStyle(fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
        ],
        ],
      ),
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
      key: _itemKeys[index], // Use local key
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
               BoxShadow(color: Colors.blue.withOpacity(0.3), blurRadius: 10, spreadRadius: 2)
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
                      child: Text(
                        topText,
                        style: TextStyle(
                          fontSize: (record['type'] == 'word') ? 24 : 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
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
              ],
            ),
          ),
        ),
      ),
    );
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

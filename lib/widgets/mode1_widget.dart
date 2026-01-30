import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' hide AppState;
import '../services/usage_service.dart';
import '../constants/language_constants.dart';
import 'recommendation_widget.dart';


/// Mode 1: 검색 모드 - STT → 번역 → TTS
class Mode1Widget extends StatefulWidget {
  final Key? micButtonKey;
  final Key? translateButtonKey;
  final Key? swapButtonKey;
  final Key? saveButtonKey;

  final Key? contextFieldKey;
  final Key? materialDropdownKey;
  final Key? toggleButtonKey;

  const Mode1Widget({
    super.key,
    this.micButtonKey,
    this.translateButtonKey,
    this.swapButtonKey,
    this.saveButtonKey,
    this.contextFieldKey,
    this.materialDropdownKey,
    this.toggleButtonKey,
    this.onSelectMaterial,
  });

  final VoidCallback? onSelectMaterial;

  @override
  State<Mode1Widget> createState() => _Mode1WidgetState();
}

class _Mode1WidgetState extends State<Mode1Widget> {
  // Persistent controllers to preserve Korean IME composition state
  late TextEditingController _sourceTextController;
  late TextEditingController _translatedTextController;
  late TextEditingController _noteController;
  late TextEditingController _tagController; // 신규 태그 입력용
  late TextEditingController _posController; 
  late TextEditingController _formTypeController;
  late TextEditingController _rootController;
  
  List<String> _currentTags = [];

  // Rewarded Ad
  RewardedAd? _rewardedAd;
  
  @override
  void initState() {
    super.initState();
    _loadRewardedAd();
    
    // Load materials for selection
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final appState = Provider.of<AppState>(context, listen: false);
      appState.loadStudyMaterials();
      
      // AI 추천 데이터 로드 (첫 진입 시)
      if (appState.recommendedItems.isEmpty) {
        appState.fetchRecommendations();
      }
    });

    _sourceTextController = TextEditingController();
    _translatedTextController = TextEditingController();
    _noteController = TextEditingController();
    _tagController = TextEditingController();
    _posController = TextEditingController();
    _formTypeController = TextEditingController();
    _rootController = TextEditingController();
  }

  void _loadRewardedAd() {
    // RewardedAd is not supported on web
    if (kIsWeb) return;
    
    RewardedAd.load(
      adUnitId: UsageService.adUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          debugPrint('$ad loaded.');
          _rewardedAd = ad;
        },
        onAdFailedToLoad: (LoadAdError error) {
          debugPrint('RewardedAd failed to load: $error');
          _rewardedAd = null;
        },
      ),
    );
  }

  @override
  void dispose() {
    // Clean up controllers and ads
    _sourceTextController.dispose();
    _translatedTextController.dispose();
    _noteController.dispose();
    _tagController.dispose();
    _posController.dispose();
    _formTypeController.dispose();
    _rootController.dispose();
    _rewardedAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Consumer<AppState>(
      builder: (context, appState, child) {
        // ... (monitor controllers code)
        if (_sourceTextController.text != appState.sourceText) {
           _sourceTextController.text = appState.sourceText;
           _sourceTextController.selection = TextSelection.collapsed(
            offset: appState.sourceText.length
           );
        }
        
        if (_translatedTextController.text != appState.translatedText) {
          _translatedTextController.text = appState.translatedText;
        }

        if (_noteController.text != appState.note) {
          _noteController.text = appState.note;
          _noteController.selection = TextSelection.collapsed(
            offset: appState.note.length
          );
        }
        
        return Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 100),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Column(
                  children: [
                    // ===================================
                    // Phase 10: AI Recommendations
                    // ===================================
                    const RecommendationWidget(),
                    const SizedBox(height: 12),
                    
                    // Input Card
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Source Language Label
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[50],
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.blue.shade200),
                                  ),
                                  child: Text(
                                    LanguageConstants.supportedLanguages.firstWhere(
                                      (l) => l['code'] == appState.sourceLang,
                                      orElse: () => {'name': appState.sourceLang},
                                    )['name']!,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue.shade800,
                                    ),
                                  ),
                                ),
                                // Swap Button
                                IconButton(
                                  key: widget.swapButtonKey,
                                  icon: const Icon(Icons.swap_horiz, color: Colors.blueAccent),
                                  onPressed: () => appState.swapLanguages(),
                                  tooltip: l10n.swapLanguages,
                                ),
                                // Target Language Label (Quick view)
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Colors.green[50],
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.green.shade200),
                                  ),
                                  child: Text(
                                    LanguageConstants.supportedLanguages.firstWhere(
                                      (l) => l['code'] == appState.targetLang,
                                      orElse: () => {'name': appState.targetLang},
                                    )['name']!,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green.shade800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                            // Context/Note Feedback
                            if (appState.note.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.amber[100],
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(Icons.lightbulb, size: 14, color: Colors.deepOrange),
                                      const SizedBox(width: 4),
                                      Text(
                                        'Note: ${appState.note}', 
                                        style: TextStyle(fontSize: 12, color: Colors.brown[800], fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                            TextField(
                              controller: _sourceTextController,
                              minLines: 2,
                              maxLines: null,
                              decoration: InputDecoration(
                                hintText: appState.recordTypeFilter == 'word' ? l10n.tabWord : l10n.enterTextHint,
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontStyle: FontStyle.italic,
                                ),
                                border: const OutlineInputBorder(),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (appState.sourceText.isNotEmpty)
                                      IconButton(
                                        icon: const Icon(Icons.clear, color: Colors.grey),
                                        onPressed: () {
                                          appState.clearTexts();
                                          setState(() => _currentTags = []);
                                        },
                                        tooltip: l10n.clearAll,
                                      ),
                                    IconButton(
                                      key: widget.micButtonKey,
                                      icon: Icon(
                                        appState.isListening ? Icons.mic : Icons.mic_none,
                                        color: appState.isListening ? Colors.red : Colors.blue,
                                      ),
                                      onPressed: appState.isListening
                                          ? () => appState.stopListening()
                                          : () => appState.startListening(),
                                      tooltip: l10n.micButtonTooltip,
                                    ),
                                  ],
                                ),
                              ),
                              onChanged: (text) {
                                appState.setSourceText(text);
                              },
                            ),

                            const SizedBox(height: 12),
                            
                            // Category Dropdown & Details Button
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: DropdownButtonFormField<String>(
                                    value: appState.recordTypeFilter == 'word' 
                                        ? (AppState.posCategories.contains(appState.sourcePos) ? appState.sourcePos : null)
                                        : (AppState.sentenceCategories.contains(appState.sourceFormType) ? appState.sourceFormType : null),
                                    decoration: InputDecoration(
                                      labelText: appState.recordTypeFilter == 'word' ? l10n.selectPOS : l10n.selectSentenceType,
                                      isDense: true,
                                      border: const OutlineInputBorder(),
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                    ),
                                    items: (appState.recordTypeFilter == 'word' 
                                            ? AppState.posCategories 
                                            : AppState.sentenceCategories)
                                        .map((cat) => DropdownMenuItem(
                                              value: cat,
                                              child: Text(_getLocalizedCategory(cat, l10n), style: const TextStyle(fontSize: 13)),
                                            ))
                                        .toList(),
                                    onChanged: (val) {
                                      if (val == null) return;
                                      if (appState.recordTypeFilter == 'word') {
                                        appState.setSourcePos(val);
                                      } else {
                                        appState.setSourceFormType(val);
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(width: 8),
                                ElevatedButton.icon(
                                  key: widget.contextFieldKey,
                                  onPressed: () => _showMetadataDialog(context, appState),
                                  icon: const Icon(Icons.add_circle_outline, size: 18),
                                  label: Text(l10n.metadataDialogTitle, style: const TextStyle(fontSize: 13)),
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                                    backgroundColor: Colors.grey[100],
                                    foregroundColor: Colors.blueGrey[800],
                                    elevation: 0,
                                    side: BorderSide(color: Colors.grey.shade300),
                                  ),
                                ),
                              ],
                            ),
                            
                             const SizedBox(height: 12),
                            
                            // New: Word/Sentence Toggle
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                children: [
                                  // Toggle Button (Word/Sentence)
                                  Expanded(
                                    child: SegmentedButton<String>(
                                      segments: [
                                        ButtonSegment<String>(
                                          value: 'word',
                                          label: Text(l10n.tabWord), // "Word"
                                          icon: const Icon(Icons.text_fields),
                                        ),
                                        ButtonSegment<String>(
                                          value: 'sentence',
                                          label: Text(l10n.tabSentence), // "Sentence"
                                          icon: const Icon(Icons.short_text),
                                        ),
                                      ],
                                      selected: {appState.recordTypeFilter},
                                      onSelectionChanged: (Set<String> newSelection) {
                                        appState.setRecordTypeFilter(newSelection.first);
                                        appState.selectMaterial(0); // Safest to reset to Basic for now
                                      },
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                                        visualDensity: VisualDensity.compact,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // Translate Button
                    ElevatedButton.icon(
                      key: widget.translateButtonKey,
                      onPressed: appState.isTranslating
                          ? null
                          : () async {
                              // Validation: Ensure Word or Sentence is selected
                              if (appState.recordTypeFilter == 'all') {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Text(l10n.error),
                                    content: Text(l10n.errorSelectCategory),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text(l10n.confirm),
                                      ),
                                    ],
                                  ),
                                );
                                return;
                              }
                              try {
                                final error = await appState.translate(context: context);
                                if (error != null && context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(error),
                                      backgroundColor: Colors.orange,
                                    ),
                                  );
                                }
                              } catch (e) {
                                if (e is LimitReachedException && context.mounted) {
                                  _showLimitDialog(context, appState);
                                } else if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('System Error: $e'),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                }
                              }
                            },
                      icon: appState.isTranslating
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                            )
                          : const Icon(Icons.translate),
                      label: Text(
                        appState.isTranslating ? l10n.translating : l10n.translate,
                        style: const TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF667eea),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16), 
                        minimumSize: const Size(double.infinity, 50),
                      ),
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // Translated Text Output
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.green[100],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    appState.languageNames[appState.targetLang] ?? '',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold, 
                                      color: Colors.green.shade800,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        appState.isSpeaking
                                            ? Icons.stop_circle
                                            : Icons.volume_up,
                                        color: appState.isSpeaking ? Colors.red : null,
                                      ),
                                      onPressed: appState.translatedText.isEmpty
                                          ? null
                                          : (appState.isSpeaking
                                              ? () => appState.stopSpeaking()
                                              : () => appState.speak()),
                                      tooltip: l10n.listen,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            
                            // Context/Note Feedback

                            TextField(
                              controller: _translatedTextController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              minLines: 2,
                              maxLines: null,
                              readOnly: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
            
            // Duplicate Detection Dialog
            if (appState.showDuplicateDialog)
              _buildDuplicateDialog(context, appState),

            // AI Disambiguation Dialog (New)
            if (appState.showDisambiguationDialog)
              _buildDisambiguationDialog(context, appState),
            
            // Bottom Save Button
            Positioned(
              left: 0, 
              right: 0, 
              bottom: 0,
              child: SafeArea(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 4,
                        offset: const Offset(0, -2),
                      ),
                    ],
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      key: widget.saveButtonKey,
                      onPressed: (appState.sourceText.isEmpty || 
                                  appState.translatedText.isEmpty ||
                                  appState.isSaved)
                          ? null
                          : () {
                              final allTags = List<String>.from(_currentTags);
                              // 품사 정보가 있으면 태그에 자동 포함 (옵션)
                              if (appState.sourcePos.isNotEmpty) allTags.add(appState.sourcePos);
                              appState.saveTranslation(tags: allTags);
                            },
                      icon: const Icon(Icons.save),
                      label: Text(
                        appState.isSaved ? l10n.saved : l10n.saveData,
                        style: const TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF667eea),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        disabledBackgroundColor: Colors.grey[300],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildDuplicateDialog(BuildContext context, AppState appState) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      color: Colors.black54,
      child: Center(
        child: Card(
          margin: const EdgeInsets.all(24),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.similarTextFound,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => appState.closeDuplicateDialog(),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  l10n.useExistingText,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      children: appState.similarSources.map((record) {
                        final text = record['text'] as String;
                        final id = record['id'] as int;
                        
                        return Card(
                          color: Colors.blue[50],
                          margin: const EdgeInsets.only(bottom: 8),
                          child: ListTile(
                            title: Text(
                              text,
                              style: const TextStyle(fontSize: 16),
                            ),
                            subtitle: Text('ID: $id'),
                            trailing: const Icon(Icons.arrow_forward),
                            onTap: () {
                              appState.selectExistingSource(id, text);
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                
                const SizedBox(height: 16),
                
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () => appState.createNewSource(),
                    icon: const Icon(Icons.add),
                    label: Text(l10n.createNew),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showLimitDialog(BuildContext context, AppState appState) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.translationLimitExceeded),
        content: Text(
          AppLocalizations.of(context)!.translationLimitMessage,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.play_arrow),
            label: Text(AppLocalizations.of(context)!.watchAdAndRefill),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
            ),
            onPressed: () async {
              Navigator.pop(context); // Close dialog
              
              if (_rewardedAd != null) {
                // Show Real Ad
                _rewardedAd!.show(
                  onUserEarnedReward: (AdWithoutView ad, RewardItem rewardItem) async {
                    // Reward the user
                    await appState.refill(5); // Refill the translation count
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(AppLocalizations.of(context)!.translationRefilled)),
                      );
                    }
                    if (appState.sourceText.trim().isNotEmpty) {
                      // Pass context and handle error
                      final error = await appState.translate(context: context);
                      if (error != null && context.mounted) {
                         // Show Error Dialog for Safety Violations
                         showDialog(
                           context: context,
                           builder: (context) => AlertDialog(
                             title: Text(AppLocalizations.of(context)!.error),
                             content: Text(error),
                             actions: [
                               TextButton(
                                 onPressed: () => Navigator.pop(context),
                                 child: Text(AppLocalizations.of(context)!.confirm),
                               ),
                             ],
                           ),
                         );
                      }
                    } else {
                      // Empty check logic passed to state or handled here
                      ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(content: Text(AppLocalizations.of(context)!.enterTextToTranslate)),
                      );
                    }
                    // Load next ad
                    _loadRewardedAd();

},
                );
              } else {
                // Ad not ready
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(AppLocalizations.of(context)!.adLoading)),
                );
                _loadRewardedAd(); // Retry load
              }
            },
          ),
        ],
      ),
    );
  }


  Widget _buildDisambiguationDialog(BuildContext context, AppState appState) {
    final l10n = AppLocalizations.of(context)!;
    
    return Container(
      color: Colors.black54,
      child: Center(
        child: Card(
          margin: const EdgeInsets.all(24),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.disambiguationTitle, 
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => appState.closeDisambiguationDialog(),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.disambiguationPrompt,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                
                Flexible(
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: appState.disambiguationOptions.map<Widget>((option) {
                        return ActionChip(
                          label: Text(option),
                          avatar: const Icon(Icons.check_circle_outline, size: 16),
                          backgroundColor: Colors.blue[50], 
                          onPressed: () {
                             appState.selectDisambiguationOption(option);
                             // Trigger re-translation with the selected context
                             appState.translate(context: context);
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
                
                const SizedBox(height: 16),
                
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      appState.selectDisambiguationOption(''); // Skip
                      appState.translate(context: context); // Re-translate as generic
                    },
                    child: Text(l10n.skip),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  // 상세 정보 팝업
  void _showMetadataDialog(BuildContext context, AppState appState) {
    final l10n = AppLocalizations.of(context)!;
    _rootController.text = appState.sourceRoot;
    _noteController.text = appState.note;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: Text(l10n.metadataDialogTitle),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Tags Section
                Text('Tags', style: Theme.of(context).textTheme.labelLarge),
                const SizedBox(height: 4),
                Wrap(
                  spacing: 4,
                  children: _currentTags.map((tag) => Chip(
                    label: Text(tag, style: const TextStyle(fontSize: 11)),
                    onDeleted: () => setState(() {
                      _currentTags.remove(tag);
                      setDialogState(() {});
                    }),
                    visualDensity: VisualDensity.compact,
                  )).toList(),
                ),
                TextField(
                  controller: _tagController,
                  decoration: InputDecoration(
                    hintText: '태그 입력',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        final t = _tagController.text.trim();
                        if (t.isNotEmpty && !_currentTags.contains(t)) {
                          setState(() => _currentTags.add(t));
                          setDialogState(() {});
                          _tagController.clear();
                        }
                      },
                    ),
                  ),
                  onSubmitted: (val) {
                    final t = val.trim();
                    if (t.isNotEmpty && !_currentTags.contains(t)) {
                      setState(() => _currentTags.add(t));
                      setDialogState(() {});
                      _tagController.clear();
                    }
                  },
                ),
                const SizedBox(height: 16),
                
                // Note Section
                TextField(
                  controller: _noteController,
                  decoration: InputDecoration(
                    labelText: l10n.tutorialContextTitle,
                    hintText: l10n.tutorialContextDesc,
                    border: const OutlineInputBorder(),
                  ),
                  onChanged: (val) => appState.setNote(val),
                ),
                const SizedBox(height: 16),

                // Root Word Section (Only for Words)
                if (appState.recordTypeFilter == 'word')
                  TextField(
                    controller: _rootController,
                    decoration: InputDecoration(
                      labelText: l10n.metadataRootWord,
                      border: const OutlineInputBorder(),
                    ),
                    onChanged: (val) => appState.setSourceRoot(val),
                  ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.confirm),
            ),
          ],
        ),
      ),
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
      default: return cat;
    }
  }
}

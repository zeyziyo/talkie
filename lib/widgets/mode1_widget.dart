import 'package:flutter/material.dart';
import 'dart:async'; // For Debounce Timer
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' hide AppState;
import '../services/usage_service.dart';
import 'recommendation_widget.dart';
import 'package:talkie/widgets/metadata_dialog.dart';


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
  
  // Phase 57: Debounce Timer for Autocomplete
  Timer? _debounceTimer;
  
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
        appState.fetchAiRecommendations();
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
    _debounceTimer?.cancel();
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
                            // 1. Top Bar (Horizontal Row)
                            Row(
                              children: [
                                // Word/Sentence Toggle
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.grey.shade300),
                                    ),
                                    child: Row(
                                      children: [
                                        _buildToggleButton(
                                          context, 
                                          label: l10n.tabWord, 
                                          isSelected: appState.recordTypeFilter == 'word',
                                          onTap: () => appState.setRecordTypeFilter('word'),
                                        ),
                                        _buildToggleButton(
                                          context, 
                                          label: l10n.tabSentence, 
                                          isSelected: appState.recordTypeFilter == 'sentence',
                                          onTap: () => appState.setRecordTypeFilter('sentence'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                // Language Switch Area (Simplified for Row)
                                Expanded(
                                  flex: 2,
                                  child: InkWell(
                                    onTap: () => appState.swapLanguages(),
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade50,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(color: Colors.blue.shade200),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.swap_horiz, color: Colors.blue, size: 20),
                                          const SizedBox(width: 4),
                                          Text(
                                            "${appState.sourceLang.toUpperCase()} ↔ ${appState.targetLang.toUpperCase()}",
                                            style: const TextStyle(
                                              fontSize: 12, 
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            
                            // 2. Note Display (Conditional)
                            if (appState.note.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[100],
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.amber.shade200),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.lightbulb, size: 16, color: Colors.amber),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          '💡 주석 표시: ${appState.note}', 
                                          style: TextStyle(fontSize: 13, color: Colors.brown[800]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                            Autocomplete<Map<String, dynamic>>(
                              optionsBuilder: (TextEditingValue textEditingValue) async {
                                if (textEditingValue.text.isEmpty) {
                                  return const Iterable<Map<String, dynamic>>.empty();
                                }
                                // Use existing search logic
                                await appState.searchSimilarSources(textEditingValue.text);
                                return appState.similarSources;
                              },
                              displayStringForOption: (option) => option['text'] as String,
                              onSelected: (option) {
                                appState.selectSource(option);
                                _sourceTextController.text = option['text'] as String;
                              },
                              fieldViewBuilder: (context, controller, focusNode, onFieldSubmitted) {
                                // Sync controller with AppState
                                if (controller.text != appState.sourceText) {
                                   controller.text = appState.sourceText;
                                }
                                return TextField(
                                  controller: controller,
                                  focusNode: focusNode,
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
                                              controller.clear();
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
                                );
                              },
                              optionsViewBuilder: (context, onSelected, options) {
                                return Align(
                                  alignment: Alignment.topLeft,
                                  child: Material(
                                    elevation: 4.0,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width - 64, // Margin adjusted
                                      constraints: const BoxConstraints(maxHeight: 250),
                                      child: ListView.separated(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        itemCount: options.length,
                                        separatorBuilder: (context, index) => const Divider(height: 1),
                                        itemBuilder: (BuildContext context, int index) {
                                          final option = options.elementAt(index);
                                          final text = option['text'] as String;
                                          final note = option['note'] as String? ?? '';
                                          
                                          return ListTile(
                                            dense: true,
                                            leading: const Icon(Icons.history, size: 18, color: Colors.grey),
                                            title: Text(text, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                                            subtitle: note.isNotEmpty 
                                                ? Text(_getLocalizedCategory(note, l10n), style: TextStyle(fontSize: 12, color: Colors.blueGrey[600]))
                                                : null,
                                            onTap: () => onSelected(option),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            
                            const SizedBox(height: 12),
                            
                            // 3. Action Line (Horizontal Row)
                            Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: DropdownButtonFormField<String>(
                                    key: widget.materialDropdownKey,
                                    value: appState.recordTypeFilter == 'word' 
                                        ? (AppState.posCategories.contains(appState.sourcePos) ? appState.sourcePos : null)
                                        : (AppState.sentenceCategories.contains(appState.sourceFormType) ? appState.sourceFormType : null),
                                    decoration: InputDecoration(
                                      labelText: appState.recordTypeFilter == 'word' ? l10n.selectPOS : l10n.selectSentenceType,
                                      isDense: true,
                                      border: const OutlineInputBorder(),
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
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
                                Expanded(
                                  flex: 4,
                                  child: ElevatedButton.icon(
                                    key: widget.contextFieldKey,
                                    onPressed: () => _showMetadataDialog(context, appState),
                                    icon: const Icon(Icons.settings_outlined, size: 18),
                                    label: const Text("👉 상세분류 설정", style: TextStyle(fontSize: 13)),
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(vertical: 14),
                                      backgroundColor: Colors.blueAccent, 
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                      elevation: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                            const SizedBox(height: 16),
                            
                            // 4. Translate Button
                            ElevatedButton.icon(
                              key: widget.translateButtonKey,
                              onPressed: appState.isTranslating
                                  ? null
                                  : () async {
                                      // ... same logic
                                      _performTranslation(context, appState, l10n);
                                    },
                              icon: appState.isTranslating
                                  ? const SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                                    )
                                  : const Icon(Icons.rocket_launch),
                              label: Text(
                                appState.isTranslating ? l10n.translating : "🚀 번역 실행 버튼",
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF667eea),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 16), 
                                minimumSize: const Size(double.infinity, 50),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
                            // 5. Result Header (Horizontal Row)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Colors.green[50],
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.green.shade200),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.flag, size: 16, color: Colors.green),
                                      const SizedBox(width: 6),
                                      Text(
                                        appState.languageNames[appState.targetLang] ?? '',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold, 
                                          color: Colors.green.shade900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    appState.isSpeaking
                                        ? Icons.stop_circle
                                        : Icons.volume_up,
                                    color: appState.isSpeaking ? Colors.red : Colors.blueGrey,
                                    size: 28,
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
                            const SizedBox(height: 8),
                            
                            // Context/Note Feedback + Root Badge (Phase 83)
                            Row(
                              children: [
                                if (appState.sourceRoot.isNotEmpty)
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Chip(
                                      label: Text(
                                        "🌱 ${appState.sourceRoot}", 
                                        style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.indigo),
                                      ),
                                      backgroundColor: Colors.indigo.shade50,
                                      side: BorderSide(color: Colors.indigo.shade100),
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      visualDensity: VisualDensity.compact,
                                    ),
                                  ),
                                Expanded(
                                  child: TextField(
                                    controller: _translatedTextController,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Translation result will appear here...",
                                      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                    ),
                                    minLines: 1,
                                    maxLines: null,
                                    readOnly: false, // Phase 83: Enable editing
                                    onChanged: (val) {
                                      // Phase 83: Allow user to refine translation
                                      appState.updateTranslatedText(val);
                                    },
                                  ),
                                ),
                              ],
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
                              
                              if (appState.isWordMode) {
                                // 단어 모드: 품사(POS)를 태그로 추가
                                if (appState.sourcePos.isNotEmpty) allTags.add(appState.sourcePos);
                              } else {
                                // 문장 모드: 문법 형태/문장 종류(FormType)를 태그로 추가
                                if (appState.sourceFormType.isNotEmpty) allTags.add(appState.sourceFormType);
                              }
                              
                              // 시스템 예약어("sentence", "word") 태그 필터링 (Phase 29)
                              allTags.removeWhere((t) => t.toLowerCase() == 'sentence' || t.toLowerCase() == 'word');
                              
                              appState.saveTranslation(tags: allTags);
                            },
                      icon: const Icon(Icons.save),
                      label: Text(
                        appState.isSaved ? l10n.saved : "💾 최종 저장 버튼",
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[700],
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        disabledBackgroundColor: Colors.grey[300],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
                    await appState.refillUsage(5); // Refill the translation count
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
    showDialog(
      context: context,
      builder: (context) => MetadataDialog(
        currentTags: _currentTags,
        onTagsChanged: (newTags) {
          setState(() {
            _currentTags = newTags;
          });
        },
      ),
    );
  }

  Widget _buildToggleButton(BuildContext context, {required String label, required bool isSelected, required VoidCallback onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            boxShadow: isSelected ? [
              BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 4, offset: const Offset(0, 2))
            ] : null,
          ),
          margin: const EdgeInsets.all(4),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? Colors.blue : Colors.grey.shade600,
            ),
          ),
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
      case 'Pronoun': return l110n.posPronoun;
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

      // 대명사 격 (Pronoun Cases)
      case 'Subject': return l10n.caseSubject;
      case 'Object': return l10n.caseObject;
      case 'Possessive': return l10n.casePossessive;
      case 'PossessivePronoun': return l10n.casePossessivePronoun;
      case 'Reflexive': return l10n.caseReflexive;
      
      default: return cat; // 일반 카테고리는 그대로 반환
    }
  }

  void _performTranslation(BuildContext context, AppState appState, AppLocalizations l10n) async {
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
          SnackBar(content: Text(error), backgroundColor: Colors.orange),
        );
      }
      if (context.mounted && appState.aiDetectedTags.isNotEmpty) {
        setState(() {
          for (final tag in appState.aiDetectedTags) {
            String tagToAdd = tag;
            if (tag == 'formal') tagToAdd = l10n.tagFormal;
            if (!_currentTags.contains(tagToAdd)) _currentTags.add(tagToAdd);
          }
        });
      }
    } catch (e) {
      if (e is LimitReachedException && context.mounted) {
        _showLimitDialog(context, appState);
      } else if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('System error: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' hide AppState;
import '../services/usage_service.dart';

/// Mode 1: 검색 모드 - STT → 번역 → TTS
class Mode1Widget extends StatefulWidget {
  final Key? micButtonKey;
  final Key? translateButtonKey;
  final Key? swapButtonKey;
  final Key? saveButtonKey;

  final Key? contextFieldKey;
  final Key? materialDropdownKey;

  const Mode1Widget({
    super.key,
    this.micButtonKey,
    this.translateButtonKey,
    this.swapButtonKey,
    this.saveButtonKey,
    this.contextFieldKey,
    this.materialDropdownKey,
  });

  @override
  State<Mode1Widget> createState() => _Mode1WidgetState();
}

class _Mode1WidgetState extends State<Mode1Widget> {
  // Persistent controllers to preserve Korean IME composition state
  late TextEditingController _sourceTextController;
  late TextEditingController _translatedTextController;
  late TextEditingController _noteController;

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
    });

    _sourceTextController = TextEditingController();
    _translatedTextController = TextEditingController();
    _noteController = TextEditingController();
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
                    // NEW: Type & Material Selectors
                    // ===================================

                    
                    // Input Card
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    appState.languageNames[appState.sourceLang] ?? '',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue.shade800,
                                    ),
                                  ),
                                ),
                                IconButton(
                                    key: widget.swapButtonKey,
                                    icon: const Icon(Icons.swap_horiz, color: Colors.deepOrange, size: 32),
                                    onPressed: () => appState.swapLanguages(),
                                    tooltip: l10n.swapLanguages,
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(minWidth: 40, minHeight: 40),
                                  ),
                                Row(
                                  children: [
                                    IconButton(
                                      key: widget.micButtonKey,
                                      icon: Icon(
                                        appState.isListening ? Icons.mic : Icons.mic_none,
                                        color: appState.isListening ? Colors.red : null,
                                      ),
                                      onPressed: appState.isListening
                                          ? () => appState.stopListening()
                                          : () => appState.startListening(),
                                      tooltip: l10n.micButtonTooltip,
                                    ),
                                    if (appState.sourceText.isNotEmpty)
                                      IconButton(
                                        icon: const Icon(Icons.clear),
                                        onPressed: () => appState.clearTexts(),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                            
                            TextField(
                              controller: _sourceTextController,
                              minLines: 2,
                              maxLines: null,
                              decoration: InputDecoration(
                                hintText: l10n.enterTextHint,
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontStyle: FontStyle.italic,
                                ),
                                border: const OutlineInputBorder(),
                              ),
                              onChanged: (text) {
                                appState.setSourceText(text);
                                // Trigger duplicate check? handled in setSourceText/translate
                              },
                            ),
                            
                            const Divider(),
                            
                            // New: Word/Sentence Toggle & Material Selection
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
                                        // Reset material selection when type changes?
                                        // Or just let the dialog filter it next time.
                                        // Strategy: Keep current material if valid, else reset to Basic.
                                        appState.selectMaterial(0); // Safest to reset to Basic for now
                                      },
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                                        visualDensity: VisualDensity.compact,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  
                                  // Material Selection Icon (Moved from AppBar)
                                  Ink(
                                    decoration: ShapeDecoration(
                                      color: Colors.blueAccent.withOpacity(0.1),
                                      shape: const CircleBorder(),
                                    ),
                                    child: IconButton(
                                      key: widget.materialDropdownKey,
                                      icon: const Icon(Icons.folder_open, color: Colors.blueAccent),
                                      tooltip: l10n.selectMaterialSet,
                                      onPressed: () => _showMaterialSelectionDialog(context),
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
                              try {
                                await appState.translate();
                              } catch (e) {
                                if (e is LimitReachedException && context.mounted) {
                                  _showLimitDialog(context, appState);
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
            
            // Top AppBar Actions
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Language Settings Button (Left)
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.translate_rounded, color: Color(0xFF667eea)), // Visual Marker
                          tooltip: l10n.languageSettings,
                          onPressed: () => _showLanguageSettings(context),
                        ),
                      ),
                      // Placeholder for potential right-aligned actions
                      // For now, it's just a spacer to push the left button to the left.
                      const SizedBox(width: 48), // Same width as the IconButton to balance
                    ],
                  ),
                ),
              ),
            ),
            
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
                        color: Colors.black.withOpacity(0.1),
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
                          : () => appState.saveTranslation(),
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
                             title: Text(AppLocalizations.of(context)!.error ?? 'Error'),
                             content: Text(error),
                             actions: [
                               TextButton(
                                 onPressed: () => Navigator.pop(context),
                                 child: Text(AppLocalizations.of(context)!.confirm ?? 'OK'),
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
  void _showMaterialSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        final appState = Provider.of<AppState>(context, listen: false);
        final l10n = AppLocalizations.of(context)!;
        
        final materials = appState.studyMaterials;
        final isWordMode = appState.recordTypeFilter == 'word';
        
        // Filter materials based on current Toggle
        final filteredMaterials = materials.where((m) {
           if (m['id'] == 0) return true; // Always show Basic
           final count = m[isWordMode ? 'word_count' : 'sentence_count'] as int? ?? 0;
           return count > 0;
        }).toList();

        return AlertDialog(
          title: Text(isWordMode ? l10n.tabWord : l10n.tabSentence), // "Word" or "Sentence"
          content: SizedBox(
            width: double.maxFinite,
            height: 400,
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.all_inclusive, color: Colors.indigo),
                  title: Text(l10n.reviewAll),
                  onTap: () {
                    // Filter is already set by toggle, so just select -1 (All)
                    appState.selectMaterial(-1);
                    Navigator.pop(context);
                  },
                ),
                const Divider(),
                ...filteredMaterials.map((m) {
                      String subject = m['subject'] as String;
                      // Localize Basic
                      if (m['id'] == 0) {
                        subject = isWordMode ? l10n.basicWords : l10n.basicSentences;
                      }
                      return ListTile(
                        leading: Icon(
                          isWordMode ? Icons.book : Icons.article, 
                          color: isWordMode ? Colors.blueAccent : Colors.deepOrangeAccent
                        ),
                        title: Text(subject),
                        subtitle: Text(
                          // Show count for current mode only
                          '${isWordMode ? l10n.wordModeLabel : l10n.labelSentence}: ${m[isWordMode ? 'word_count' : 'sentence_count']}'
                        ),
                        onTap: () {
                           // Filter is already set, just select ID
                           appState.selectMaterial(m['id'] as int);
                           Navigator.pop(context);
                        },
                      );
                }),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.cancel),
            ),
          ],
        );
      },
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
                      '의미 선택', // Using hardcoded fallback for new string until l10n update
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
                  '어떤 의미로 번역하시겠습니까?', // Fallback
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                
                Flexible(
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: appState.disambiguationOptions.map((option) {
                        return ActionChip(
                          label: Text(option),
                          avatar: const Icon(Icons.check_circle_outline, size: 16),
                          backgroundColor: Colors.blue[50], 
                          onPressed: () {
                             appState.selectDisambiguationOption(option);
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
                    onPressed: () => appState.selectDisambiguationOption(''), // Skip
                    child: Text('건너뛰기'), // Fallback
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

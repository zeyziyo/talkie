import 'package:google_mobile_ads/google_mobile_ads.dart' hide AppState;
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../widgets/mode1_widget.dart';
import '../widgets/mode2_widget.dart';
import '../widgets/mode3_widget.dart';
import '../widgets/mode4_widget.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import '../widgets/help_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Mode 1 Keys
  final GlobalKey _micButtonKey = GlobalKey();
  final GlobalKey _translateButtonKey = GlobalKey();
  final GlobalKey _saveButtonKey = GlobalKey();
  final GlobalKey _contextFieldKey = GlobalKey();
  final GlobalKey _mode1ToggleKey = GlobalKey(); // Mode 1 Toggle Key
  final GlobalKey _mode1DropdownKey = GlobalKey(); // Mode 1 Material Dropdown Key

  // Mode 2 Keys
  final GlobalKey _mode2DropdownKey = GlobalKey();

  final GlobalKey _mode2ListKey = GlobalKey();
  final GlobalKey _mode2ToggleKey = GlobalKey(); // Mode 2 Toggle Key

  // Mode 3 Keys
  final GlobalKey _mode3DropdownKey = GlobalKey();
  final GlobalKey _mode3IntervalKey = GlobalKey();
  final GlobalKey _mode3StartButtonKey = GlobalKey();
  
  final GlobalKey _mode3WordCheckKey = GlobalKey(); // Mode 3 Checkbox Key
  
  // Tutorial Keys - Fixed
  final GlobalKey _tabKey = GlobalKey();
  final GlobalKey _helpKey = GlobalKey();
  final GlobalKey _actionButtonKey = GlobalKey();

  // AdMob Banner
  BannerAd? _bannerAd;
  bool _isBannerAdReady = false;

  @override
  void initState() {
    super.initState();
    _loadBannerAd();
  }

  void _loadBannerAd() {
    _bannerAd = BannerAd(
      // Production Banner ID
      adUnitId: 'ca-app-pub-2281211992064241/7980228996', 
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('BannerAd failed to load: $error');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd?.load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  late TutorialCoachMark tutorialCoachMark;

  void _showTutorial(BuildContext context) {
    if (!mounted) return;
    final appState = Provider.of<AppState>(context, listen: false);
    
    // Create tutorial targets based on current mode
    tutorialCoachMark = TutorialCoachMark(
      targets: _createTargets(appState.currentMode),
      colorShadow: Colors.black,
      textSkip: "SKIP",
      paddingFocus: 5,
      opacityShadow: 0.8,
      onFinish: () {},
      onClickTarget: (target) {},
      onClickOverlay: (target) {},
      onSkip: () {
        return true;
      },
    );

    tutorialCoachMark.show(context: context);
  }

  List<TargetFocus> _createTargets(int modeIndex) {
    List<TargetFocus> targets = [];
    final l10n = AppLocalizations.of(context)!;

    // Common Target: Tab Selector
    // Common Target: Tab Selector
    targets.add(_buildTarget(
      _tabKey,
      l10n.helpTabModes,
      l10n.tutorialTabDesc,
      ContentAlign.bottom,
      radius: 12,
    ));

    // Mode-specific targets
    if (modeIndex == 0) {
      // Mode 1: Mic -> Translate -> Save
      targets.add(_buildTarget(
        _micButtonKey, 
        l10n.tutorialMicTitle, 
        l10n.tutorialMicDesc,
        ContentAlign.top, // Changed from bottom to top
        radius: 12,
      ));
      targets.add(_buildTarget(
        _translateButtonKey, 
        l10n.tutorialTransTitle, 
        l10n.tutorialTransDesc,
        ContentAlign.top,
        radius: 12,
      ));
      
      // Context Field Tutorial
      targets.add(_buildTarget(
        _contextFieldKey,
        l10n.tutorialContextTitle, 
        l10n.tutorialContextDesc,
        ContentAlign.top,
        radius: 12,
        keepWidgetSize: true, // Show full text field
        shape: ShapeLightFocus.RRect,
      ));

      targets.add(_buildTarget(
        _mode1ToggleKey,
        l10n.tutorialM1ToggleTitle,
        l10n.tutorialM1ToggleDesc,
        ContentAlign.bottom,
        radius: 12,
        keepWidgetSize: true, // Highlight full toggle
        shape: ShapeLightFocus.RRect,
      ));

      // New: Mode 1 Dropdown
      targets.add(_buildTarget(
        _mode1DropdownKey,
        l10n.tutorialM2DropdownDesc, // Use same desc as Mode 2
        l10n.tutorialM2SelectTitle,  // Use same title as Mode 2
        ContentAlign.bottom,
        radius: 12,
      ));

      targets.add(_buildTarget(
        _saveButtonKey, 
        l10n.tutorialSaveTitle, 
        l10n.tutorialSaveDesc,
        ContentAlign.top,
        radius: 12,
      ));
      // Language Settings (Action Button)
      targets.add(_buildTarget(
        _actionButtonKey, 
        l10n.tutorialLangSettingsTitle, 
        l10n.tutorialLangSettingsDesc,
        ContentAlign.bottom,
        radius: 12,
      ));
    } else if (modeIndex == 1) {
      // Mode 2: Toggle
      targets.add(_buildTarget(
        _mode2ToggleKey,
        l10n.tutorialM1ToggleTitle, // Reuse Mode 1 title
        l10n.tutorialM1ToggleDesc,  // Reuse Mode 1 desc
        ContentAlign.bottom,
        radius: 12,
        keepWidgetSize: true, // Highlight full toggle
        shape: ShapeLightFocus.RRect,
      ));

      // Mode 2: Dropdown
      targets.add(_buildTarget(
        _mode2DropdownKey, 
        l10n.tutorialM2SelectTitle, 
        l10n.tutorialM2DropdownDesc,
        ContentAlign.bottom,
        radius: 12,
      ));
      // Mode 2 List Target (Moved Up)
      targets.add(_buildTarget(
        _mode2ListKey, 
        l10n.tutorialM2ListTitle, 
        l10n.tutorialM2ListDesc,
        ContentAlign.bottom, // Changed to bottom to avoid clipping
        radius: 12,
        shape: ShapeLightFocus.Circle,
        keepWidgetSize: false, // Use fixed small size centered on widget
      ));
      // Action Button (Import) is also relevant in Mode 2
      targets.add(_buildTarget(
        _actionButtonKey, 
        l10n.importJsonFile, 
        l10n.tutorialM2ImportDesc,
        ContentAlign.bottom,
        radius: 12,
      ));
    } else if (modeIndex == 2) {
      // Mode 3: Dropdown -> Interval -> Start
      targets.add(_buildTarget(
        _mode3DropdownKey, 
        l10n.tutorialM3SelectTitle, 
        l10n.tutorialM3SelectDesc,
        ContentAlign.bottom,
        radius: 12,
      ));
      // Practice Words Only Checkbox
      targets.add(_buildTarget(
        _mode3WordCheckKey,
        l10n.tutorialM3WordsTitle,
        l10n.tutorialM3WordsDesc,
        ContentAlign.bottom,
      ));
      targets.add(_buildTarget(
        _mode3IntervalKey, 
        l10n.tutorialM3IntervalTitle, 
        l10n.tutorialM3IntervalDesc,
        ContentAlign.bottom,
        radius: 12,
      ));
      targets.add(_buildTarget(
        _mode3StartButtonKey, 
        l10n.tutorialM3StartTitle, 
        l10n.tutorialM3StartDesc,
        ContentAlign.top,
        radius: 12,
      ));

    }

    return targets;
  }

  TargetFocus _buildTarget(
    GlobalKey key, 
    String title, 
    String desc, 
    ContentAlign align, {
    double radius = 12,
    ShapeLightFocus shape = ShapeLightFocus.Circle,
    bool keepWidgetSize = false,
  }) {
    // Calculate target position manually to force a fixed small size highlight
    // regardless of the actual widget size.
    final RenderBox? renderBox = key.currentContext?.findRenderObject() as RenderBox?;
    TargetPosition? position;
    
    if (renderBox != null) {
      if (keepWidgetSize) {
        // Use the actual widget size and position
        final Offset offset = renderBox.localToGlobal(Offset.zero);
        final Size size = renderBox.size;
        position = TargetPosition(size, offset);
      } else {
        // Force tiny fixed size (default behavior for icons)
        final Offset offset = renderBox.localToGlobal(Offset.zero);
        final Size size = renderBox.size;
        // Center of the target widget
        final Offset center = Offset(offset.dx + size.width / 2, offset.dy + size.height / 2);
        
        // Define a tiny Fixed Size for the highlight target (so circle radius works from this small box)
        position = TargetPosition(
          const Size(24, 24), // Fixed size for radius 12
          Offset(center.dx - 12, center.dy - 12), // Centered
        );
      }
    }

    return TargetFocus(
      identify: title,
      keyTarget: position == null ? key : null, // Fallback to key if position calc fails
      targetPosition: position,
      alignSkip: Alignment.topRight,
      shape: shape,
      paddingFocus: 0,
      radius: radius,
      contents: [
        TargetContent(
          align: align,
          builder: (context, controller) {
            final l10n = AppLocalizations.of(context)!;
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 20.0, 
                    color: Colors.yellowAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    desc,
                    style: const TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    children: [
                      const Icon(Icons.touch_app, color: Colors.cyanAccent, size: 16),
                      const SizedBox(width: 8),
                      Text(
                        l10n.tutorialTapToContinue,
                        style: const TextStyle(
                          color: Colors.cyanAccent,
                          fontSize: 14.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '🌍 ${l10n.appTitle}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF667eea),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            key: _helpKey,
            icon: const Icon(Icons.help_outline),
            tooltip: '사용법 가이드',
            onPressed: () {
              // Get current mode from AppState to show relevant help page
              final currentMode = Provider.of<AppState>(context, listen: false).currentMode;
              showDialog(
                context: context,
                builder: (context) => HelpDialog(
                  initialModeIndex: currentMode,
                  onStartTutorial: () => _showTutorial(context),
                ),
              );
            },
          ),

          Consumer<AppState>(
            builder: (context, appState, child) {
              final buttonKey = _actionButtonKey; // Use key here
              
              if (appState.currentMode == 0) { // Search Mode
                return IconButton(
                  key: buttonKey,
                  icon: const Icon(Icons.translate),
                  onPressed: () => _showLanguageSettingsDialog(context),
                  tooltip: '언어 설정',
                );
              } else if (appState.currentMode == 1) { // Study Material Mode (Mode 2)
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.refresh),
                      onPressed: () => appState.loadStudyMaterials(),
                      tooltip: l10n.refresh,
                    ),
                    IconButton(
                      key: buttonKey,
                      icon: const Icon(Icons.arrow_downward),
                      onPressed: () => _handleImport(context),
                      tooltip: l10n.importJsonFile,
                    ),
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Tab Selector
          Consumer<AppState>(
            builder: (context, appState, child) {
              final l10n = AppLocalizations.of(context)!;
              return Container(
                key: _tabKey,
                margin: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      // Mode Selector (Flexible to take available space)
                      Expanded(
                        flex: 3,
                        child: SegmentedButton<int>(
                          showSelectedIcon: false,
                          segments: [
                            ButtonSegment<int>(
                              value: 0,
                              icon: const Icon(Icons.search),
                              tooltip: l10n.tooltipSearch,
                            ),
                            ButtonSegment<int>(
                              value: 1,
                              icon: const Icon(Icons.auto_stories),
                              tooltip: l10n.tooltipStudyReview,
                            ),
                            ButtonSegment<int>(
                              value: 2,
                              icon: const Icon(Icons.record_voice_over),
                              tooltip: l10n.tooltipSpeaking,
                            ),
                          ],
                          selected: {appState.currentMode},
                          onSelectionChanged: (Set<int> newSelection) {
                            appState.switchMode(newSelection.first);
                          },
                          style: ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            visualDensity: VisualDensity.compact,
                            backgroundColor: WidgetStateProperty.resolveWith((states) {
                              if (states.contains(WidgetState.selected)) {
                                return const Color(0xFF667eea);
                              }
                              return Colors.white;
                            }),
                            foregroundColor: WidgetStateProperty.resolveWith((states) {
                              if (states.contains(WidgetState.selected)) {
                                return Colors.white;
                              }
                              return const Color(0xFF667eea);
                            }),
                          ),
                        ),
                      ),
                      
                      const SizedBox(width: 8),
                      
                      // Word/Sentence Toggle (Text Only)
                      Expanded(
                        flex: 2,
                        child: SegmentedButton<String>(
                          showSelectedIcon: false,
                          segments: [
                            ButtonSegment<String>(
                              value: 'word', 
                              label: Text(l10n.labelWord, maxLines: 1, overflow: TextOverflow.ellipsis),
                              // No Icon
                            ),
                            ButtonSegment<String>(
                              value: 'sentence', 
                              label: Text(l10n.labelSentence, maxLines: 1, overflow: TextOverflow.ellipsis),
                              // No Icon
                            ),
                          ],
                          selected: {appState.recordTypeFilter == 'all' ? 'word' : appState.recordTypeFilter},
                          onSelectionChanged: (Set<String> newSelection) {
                            // This updates both filter and _isWordMode
                            appState.setRecordTypeFilter(newSelection.first); 
                          },
                          style: ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            visualDensity: VisualDensity.compact,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
            },
          ),
          
          // Mode Content
          Expanded(
            child: Consumer<AppState>(
              builder: (context, appState, child) {
                if (appState.currentMode == 0) {
                  return Mode1Widget(
                    micButtonKey: _micButtonKey,
                    translateButtonKey: _translateButtonKey,
                    saveButtonKey: _saveButtonKey,
                    contextFieldKey: _contextFieldKey,
                    toggleButtonKey: _mode1ToggleKey, // Pass Toggle Key
                    materialDropdownKey: _mode1DropdownKey, // New Key
                  );
                } else if (appState.currentMode == 1) {
                  return Mode2Widget(
                    materialDropdownKey: _mode2DropdownKey,
                    tutorialListKey: _mode2ListKey,
                    toggleButtonKey: _mode2ToggleKey, // New Key
                  ); 
                } else if (appState.currentMode == 2) {
                  return Mode3Widget(
                    materialDropdownKey: _mode3DropdownKey,
                    intervalSettingsKey: _mode3IntervalKey,
                    startStopButtonKey: _mode3StartButtonKey,
                    wordCheckKey: _mode3WordCheckKey, // Pass Checkbox Key
                  ); 
                } 
                return const SizedBox.shrink();
              },
            ),
          ),
          
          // Banner Ad Widget
          if (_isBannerAdReady)
            SafeArea(
              top: false,
              child: Container(
                color: Colors.white, // Background to ensure visibility
                width: _bannerAd!.size.width.toDouble(),
                height: _bannerAd!.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd!),
              ),
            ),
        ],
      ),
    );
  }



  Future<void> _handleImport(BuildContext context) async {
    final appState = Provider.of<AppState>(context, listen: false);
    final l10n = AppLocalizations.of(context)!;
    
    // Show loading indicator or simple simple logic
    final importResult = await appState.pickAndImportJson();
    
    if (importResult == null) return; // Canceled
    
    if (!context.mounted) return;
    
    if (importResult['success'] == true) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('✅ ${l10n.importComplete}'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Safe cast handling
              if (importResult['total'] != null) Text(l10n.importTotal(importResult['total'] as int)),
              if (importResult['imported'] != null) Text(l10n.importAdded(importResult['imported'] as int)),
              if (importResult['skipped'] != null) Text(l10n.importSkipped(importResult['skipped'] as int)),
              if (importResult['errors'] != null && (importResult['errors'] as List).isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(l10n.errors, style: const TextStyle(fontWeight: FontWeight.bold)),
                ...(importResult['errors'] as List).map((e) => Text('• $e', style: const TextStyle(fontSize: 12))),
              ],
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.confirm)),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('❌ ${l10n.error}'),
          content: Text(l10n.importErrorMessage(importResult['error'] ?? 'Unknown error')),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.confirm)),
          ],
        ),
      );
    }
  }
  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      if (mounted) {
         ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not launch $urlString')),
        );
      }
    }
  }

  void _showLanguageSettingsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        final appState = Provider.of<AppState>(context, listen: false); // Listen false to avoid rebuild loop inside dialog
        final l10n = AppLocalizations.of(context)!;
        
        // Local state for the dialog
        String tempSource = appState.sourceLang;
        String tempTarget = appState.targetLang;

        return StatefulBuilder(
          builder: (context, setDialogState) {
            return AlertDialog(
              title: Text(l10n.languageSettingsTitle),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Source Language (My Language)
                  Text(l10n.sourceLanguageLabel, style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    value: tempSource,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    items: const [
                       DropdownMenuItem(value: 'ko', child: Text('한국어 (Korean)')),
                       DropdownMenuItem(value: 'en', child: Text('English')),
                       DropdownMenuItem(value: 'ja', child: Text('日本語 (Japanese)')),
                       DropdownMenuItem(value: 'es', child: Text('Español (Spanish)')),
                       DropdownMenuItem(value: 'fr', child: Text('Français (French)')),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        setDialogState(() {
                          tempSource = value;
                          // If source and target are same, try to swap or reset target
                          if (tempSource == tempTarget) {
                             if (tempSource == 'ko') tempTarget = 'en';
                             else tempTarget = 'ko';
                          }
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  
                  // Target Language (Study Language)
                   Text(l10n.targetLanguageLabel, style: const TextStyle(fontWeight: FontWeight.bold)),
                   const SizedBox(height: 8),
                   DropdownButtonFormField<String>(
                    value: tempTarget,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                     items: const [
                       DropdownMenuItem(value: 'en', child: Text('English')),
                       DropdownMenuItem(value: 'ja', child: Text('日本語 (Japanese)')),
                       DropdownMenuItem(value: 'es', child: Text('Español (Spanish)')),
                       DropdownMenuItem(value: 'fr', child: Text('Français (French)')),
                       DropdownMenuItem(value: 'ko', child: Text('한국어 (Korean)')),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        setDialogState(() {
                          tempTarget = value;
                           if (tempSource == tempTarget) {
                             if (tempTarget == 'ko') tempSource = 'en';
                             else tempSource = 'ko';
                          }
                        });
                      }
                    },
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(l10n.cancel ?? 'Cancel'),
                ),
                FilledButton(
                  onPressed: () {
                    // Update AppState
                    appState.setSourceLang(tempSource);
                    appState.setTargetLang(tempTarget);
                    Navigator.pop(context);
                  },
                  child: Text(l10n.saveData ?? 'Save'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

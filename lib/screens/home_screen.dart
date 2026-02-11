import 'package:google_mobile_ads/google_mobile_ads.dart' hide AppState;
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../widgets/mode1_widget.dart';
import '../widgets/mode2_widget.dart';
import '../widgets/mode3_widget.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import '../widgets/help_dialog.dart';
import '../constants/language_constants.dart';
import 'chat_history_screen.dart';
import '../widgets/online_library_dialog.dart';

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
  final GlobalKey _swapButtonKey = GlobalKey(); // New: Swap Button Key
  final GlobalKey _contextFieldKey = GlobalKey();
  final GlobalKey _mode1DropdownKey = GlobalKey(); // Mode 1 Material Dropdown Key
  final GlobalKey _chatFabKey = GlobalKey(); // AI Chat FloatingActionButton Key
  final GlobalKey _mode1ToggleKey = GlobalKey(); // Mode 1 Word/Sentence Toggle Key

  // Mode 2 Keys
  final GlobalKey _mode2DropdownKey = GlobalKey();
  final GlobalKey _mode2ListKey = GlobalKey();

  // Mode 3 Keys
  final GlobalKey _mode3DropdownKey = GlobalKey();
  final GlobalKey _mode3SettingsKey = GlobalKey(); // Renamed from _mode3ResetKey
  
  // Tutorial Keys - Fixed
  final GlobalKey _menuKey = GlobalKey(); // Renamed from _tabKey
  final GlobalKey _actionButtonKey = GlobalKey();

  // AdMob Banner
  BannerAd? _bannerAd;
  bool _isBannerAdReady = false;

  // PageController for swipe navigation
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _loadBannerAd();
    
    // Initialize PageController with current mode
    final appState = Provider.of<AppState>(context, listen: false);
    _pageController = PageController(initialPage: appState.currentMode);
    appState.setPageController(_pageController);
  }

  void _loadBannerAd() {
    if (kIsWeb) return;
    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-2281211992064241/7980228996', 
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() => _isBannerAdReady = true);
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
    _pageController.dispose();
    super.dispose();
  }

  late TutorialCoachMark tutorialCoachMark;

  void _showTutorial(BuildContext context) {
    if (!mounted) return;
    final appState = Provider.of<AppState>(context, listen: false);
    
    tutorialCoachMark = TutorialCoachMark(
      targets: _createTargets(appState.currentMode),
      colorShadow: Colors.black,
      textSkip: "SKIP",
      paddingFocus: 5,
      opacityShadow: 0.8,
      onFinish: () {},
      onClickTarget: (target) {},
      onClickOverlay: (target) {},
      onSkip: () => true,
    );

    // Use a small delay or post-frame callback to ensure help dialog is fully popped
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        tutorialCoachMark.show(context: context);
      }
    });
  }

  List<TargetFocus> _createTargets(int modeIndex) {
    List<TargetFocus> targets = [];
    final l10n = AppLocalizations.of(context)!;

    // Common Target: Hamburger Menu (Mode Selector)
    targets.add(_buildTarget(
      _menuKey,
      l10n.tutorialTabDesc, // Description
      l10n.helpTabModes, // Title
      ContentAlign.bottom,
      radius: 12,
    ));

    // Mode-specific targets
    if (modeIndex == 0) {
      targets.add(_buildTarget(
        _micButtonKey, 
        l10n.tutorialMicTitle, 
        l10n.tutorialMicDesc,
        ContentAlign.top,
        radius: 12,
      ));
      targets.add(_buildTarget(
        _translateButtonKey, 
        l10n.tutorialTransTitle, 
        l10n.tutorialTransDesc,
        ContentAlign.top,
        radius: 12,
      ));
      targets.add(_buildTarget(
        _mode1ToggleKey, 
        l10n.word, 
        l10n.helpMode1Details.split('\n').firstWhere((l) => l.contains('Toggle'), orElse: () => 'Toggle Word/Sentence'),
        ContentAlign.bottom,
        radius: 8,
      ));
      targets.add(_buildTarget(
        _swapButtonKey, 
        l10n.swapLanguages, 
        l10n.tutorialSwapDesc,
        ContentAlign.top,
        radius: 12,
      ));
      targets.add(_buildTarget(
        _contextFieldKey,
        l10n.tutorialContextTitle, 
        l10n.tutorialContextDesc,
        ContentAlign.top,
        radius: 12,
        shape: ShapeLightFocus.RRect,
      ));
      targets.add(_buildTarget(
        _saveButtonKey, 
        l10n.tutorialSaveTitle, 
        l10n.tutorialSaveDesc,
        ContentAlign.top,
        radius: 12,
      ));
      targets.add(_buildTarget(
        _mode1DropdownKey, 
        l10n.menuSelectMaterialSet, 
        l10n.tutorialM2DropdownDesc,
        ContentAlign.top,
        radius: 12,
      ));
      targets.add(_buildTarget(
        _actionButtonKey, 
        l10n.tutorialLangSettingsTitle, 
        l10n.tutorialLangSettingsDesc,
        ContentAlign.bottom,
        radius: 12,
      ));
    } else if (modeIndex == 1) {
      targets.add(_buildTarget(
        _mode2DropdownKey, 
        l10n.menuSelectMaterialSet, 
        l10n.tutorialM2DropdownDesc,
        ContentAlign.top,
        radius: 12,
      ));
      targets.add(_buildTarget(
        _mode2ListKey, 
        l10n.tutorialM2ListTitle, 
        l10n.tutorialM2ListDesc,
        ContentAlign.bottom, 
        shape: ShapeLightFocus.RRect,
        radius: 12,
        paddingFocus: 8,
      ));
      targets.add(_buildTarget(
        _actionButtonKey, 
        l10n.importJsonFile, 
        l10n.tutorialM2ImportDesc,
        ContentAlign.bottom,
        paddingFocus: 4,
      ));
    } else if (modeIndex == 2) {
      targets.add(_buildTarget(
        _mode3DropdownKey, 
        l10n.menuSelectMaterialSet, 
        l10n.tutorialM3SelectDesc,
        ContentAlign.top,
        radius: 12,
      ));
      targets.add(_buildTarget(
        _mode3SettingsKey, 
        l10n.tutorialM3ResetTitle, 
        l10n.tutorialM3ResetDesc,
        ContentAlign.top,
        shape: ShapeLightFocus.RRect,
        radius: 8,
        paddingFocus: 4,
      ));
    } else if (modeIndex == 3) {
      targets.add(_buildTarget(
        _chatFabKey, 
        l10n.tutorialAiChatTitle, 
        l10n.tutorialAiChatDesc,
        ContentAlign.top,
        paddingFocus: 4,
      ));
    }

    return targets;
  }

  TargetFocus _buildTarget(
    GlobalKey key, 
    String title, 
    String desc, 
    ContentAlign align, {
    double radius = 10,
    ShapeLightFocus shape = ShapeLightFocus.Circle,
    double paddingFocus = 0,
  }) {
    return TargetFocus(
      identify: title,
      keyTarget: key,
      alignSkip: Alignment.topRight,
      shape: shape,
      paddingFocus: paddingFocus,
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
    final appState = Provider.of<AppState>(context);
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Consumer<AppState>(
          builder: (context, appState, child) {
                // Show Mode Name in Title instead of Material Name
                String modeName;
                switch (appState.currentMode) {
                  case 0:
                    modeName = l10n.inputModeTitle; // "입력"
                    break;
                  case 1:
                    modeName = l10n.reviewModeTitle; // "복습"
                    break;
                  case 2:
                    modeName = l10n.practiceModeTitle; // "발음 연습"
                    break;
                  case 3:
                    modeName = l10n.chatAiChat; // "AI 채팅"
                    break;
                  default:
                    modeName = l10n.appTitle;
                }

                if (appState.currentMode == 3) {
                  return Text(
                    modeName,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  );
                }

                return Text(
                  modeName,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                );
              },
            ),
            centerTitle: true,
            backgroundColor: const Color(0xFF667eea),
            foregroundColor: Colors.white,
            leading: Builder(
              builder: (context) => IconButton(
                key: _menuKey,
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            bottom: appState.currentMode <= 2 
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Row(
                              key: _mode1ToggleKey,
                              children: [
                                _buildToggleButton(
                                  context, 
                                  label: l10n.tabWord, 
                                  isSelected: appState.recordTypeFilter == 'word',
                                  onTap: () {
                                    appState.setRecordTypeFilter('word');
                                    appState.selectMaterial(0);
                                  },
                                ),
                                _buildToggleButton(
                                  context, 
                                  label: l10n.tabSentence, 
                                  isSelected: appState.recordTypeFilter == 'sentence',
                                  onTap: () {
                                    appState.setRecordTypeFilter('sentence');
                                    appState.selectMaterial(0);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Mini Language Swap Button
                        InkWell(
                          key: _swapButtonKey, // Attached Key
                          onTap: () => appState.swapLanguages(),
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue.shade200),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  appState.sourceLang.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade800,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Icon(Icons.swap_horiz, size: 16, color: Colors.blue.shade400),
                                const SizedBox(width: 4),
                                Text(
                                  appState.targetLang.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : null,
            actions: [
              
              PopupMenuButton<String>(
                key: _actionButtonKey,
                onSelected: (value) {
                  final appState = Provider.of<AppState>(context, listen: false);
                  switch (value) {
                    case 'refresh':
                      appState.loadStudyMaterials();
                      break;
                    case 'online_library':
                      OnlineLibraryDialog.show(context); // Open Online Tab
                      break;
                    case 'help':
                      showDialog(
                        context: context,
                        builder: (context) => HelpDialog(
                          initialModeIndex: appState.currentMode,
                          onStartTutorial: () => _showTutorial(context),
                        ),
                      );
                      break;
                    case 'downloads':
                      _launchURL('https://zeyziyo.github.io/talkie/index.html');
                      break;
                    case 'settings':
                      _showLanguageSettingsDialog(context);
                      break;
                    // select_material removed from menu as it's now an icon
                  }
                },
            itemBuilder: (BuildContext context) {
              final l10n = AppLocalizations.of(context)!;

              return [
                // 1. Get Materials Options (Unified)
                PopupMenuItem<String>(
                  value: 'downloads', // Maps to Web Link
                  child: Row(
                    children: [
                      const Icon(Icons.download_rounded, color: Colors.green),
                      const SizedBox(width: 8),
                      Text(l10n.menuWebDownload), // "Homepage..."
                    ],
                  ),
                ),
                
                PopupMenuItem<String>(
                  value: 'online_library',
                  child: Row(
                    children: [
                      const Icon(Icons.cloud_download, color: Colors.blueAccent),
                      const SizedBox(width: 8),
                      Text(l10n.menuOnlineLibrary),
                    ],
                  ),
                ),

                const PopupMenuDivider(),

                PopupMenuItem<String>(
                  value: 'settings',
                  child: Row(
                    children: [
                      const Icon(Icons.settings, color: Colors.grey),
                      const SizedBox(width: 8),
                      Text(l10n.menuSettings),
                    ],
                  ),
                ),

                PopupMenuItem<String>(
                  value: 'help',
                  child: Row(
                    children: [
                      const Icon(Icons.help_outline, color: Colors.blue),
                      const SizedBox(width: 8),
                      Text(l10n.menuHelp),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Consumer<AppState>(
          builder: (context, appState, child) {
            return ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color(0xFF667eea),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       const Icon(Icons.language, color: Colors.white, size: 48),
                       const SizedBox(height: 10),
                       Text(
                         l10n.appTitle,
                         style: const TextStyle(
                           color: Colors.white,
                           fontSize: 24,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.keyboard),
                  title: Text(l10n.inputModeTitle),
                  selected: appState.currentMode == 0,
                  selectedColor: const Color(0xFF667eea),
                  onTap: () {
                    appState.switchMode(0);
                    Navigator.pop(context); // Close drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.auto_stories),
                  title: Text(l10n.reviewModeTitle),
                  selected: appState.currentMode == 1,
                  selectedColor: const Color(0xFF667eea),
                  onTap: () {
                    appState.switchMode(1);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.record_voice_over),
                  title: Text(l10n.practiceModeTitle),
                  selected: appState.currentMode == 2,
                  selectedColor: const Color(0xFF667eea),
                  onTap: () {
                    appState.switchMode(2);
                    Navigator.pop(context);
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.chat_bubble),
                  title: Text(l10n.chatAiChat),
                  selected: appState.currentMode == 3,
                  selectedColor: const Color(0xFF667eea),
                  onTap: () {
                    appState.switchMode(3);
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                 final appState = Provider.of<AppState>(context, listen: false);
                 appState.switchMode(index, fromPage: true);
                 if (index == 3) {
                   // Ensure list is loaded for the AppBar Dropdown
                   appState.loadDialogueGroups();
                 }
              },
              children: [
                Mode1Widget(
                  micButtonKey: _micButtonKey,
                  translateButtonKey: _translateButtonKey,
                  swapButtonKey: _swapButtonKey,
                  saveButtonKey: _saveButtonKey,
                  contextFieldKey: _contextFieldKey,
                  materialDropdownKey: _mode1DropdownKey,
                  toggleButtonKey: _mode1ToggleKey,
                  onSelectMaterial: () => OnlineLibraryDialog.show(context),
                ),
                Mode2Widget(
                  materialDropdownKey: _mode2DropdownKey,
                  tutorialListKey: _mode2ListKey,
                  onSelectMaterial: () => OnlineLibraryDialog.show(context),
                ),
                Mode3Widget(
                  materialDropdownKey: _mode3DropdownKey,
                  settingsKey: _mode3SettingsKey,
                  onSelectMaterial: () => OnlineLibraryDialog.show(context),
                ),
                ChatHistoryScreen(
                  isWidget: true,
                  fabKey: _chatFabKey,
                ),
              ],
            ),
          ),
          
          if (_isBannerAdReady)
            SafeArea(
              top: false,
              child: Container(
                color: Colors.white,
                width: _bannerAd!.size.width.toDouble(),
                height: _bannerAd!.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd!),
              ),
            ),
        ],
      ),
    );
  }



  // Unused _handleImport removed
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
                    initialValue: tempSource,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    items: LanguageConstants.supportedLanguages.map((lang) {
                      return DropdownMenuItem<String>(
                        value: lang['code'],
                        child: Text(lang['name']!),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        setDialogState(() {
                          tempSource = value;
                          // If source and target are same, try to swap or reset target
                          if (tempSource == tempTarget) {
                            if (tempSource == 'ko') {
                              tempTarget = 'en';
                            } else {
                              tempTarget = 'ko';
                            }
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
                    initialValue: tempTarget,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    items: LanguageConstants.supportedLanguages.map((lang) {
                      return DropdownMenuItem<String>(
                        value: lang['code'],
                        child: Text(lang['name']!),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        setDialogState(() {
                          tempTarget = value;
                           if (tempSource == tempTarget) {
                             if (tempTarget == 'ko') {
                               tempSource = 'en';
                             } else {
                               tempSource = 'ko';
                             }
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
                  child: Text(l10n.cancel),
                ),
                FilledButton(
                  onPressed: () {
                    // Update AppState
                    appState.setSourceLang(tempSource);
                    appState.setTargetLang(tempTarget);
                    Navigator.pop(context);
                  },
                  child: Text(l10n.saveData),
                ),
              ],
            );
          },
        );
      },
    );
  }




// Methods removed. See lib/widgets/online_library_dialog.dart
  Widget _buildToggleButton(BuildContext context, {required String label, required bool isSelected, required VoidCallback onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            boxShadow: isSelected ? [
              BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 4, offset: const Offset(0, 2))
            ] : null,
          ),
          margin: const EdgeInsets.all(4),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16, // Increased as requested
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? Colors.blue : Colors.grey.shade600,
            ),
          ),
        ),
      ),
    );
  }
}

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
  final GlobalKey _mode3ResetKey = GlobalKey(); // New: Reset Button Key
  
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
        l10n.word ?? 'Word/Sentence', 
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
        _actionButtonKey, 
        l10n.tutorialLangSettingsTitle, 
        l10n.tutorialLangSettingsDesc,
        ContentAlign.bottom,
        radius: 12,
      ));
    } else if (modeIndex == 1) {
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
        _mode3ResetKey, 
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
            actions: [
              
              PopupMenuButton<String>(
                key: _actionButtonKey,
                onSelected: (value) {
                  final appState = Provider.of<AppState>(context, listen: false);
                  switch (value) {
                    case 'refresh':
                      appState.loadStudyMaterials();
                      break;
                    case 'import':
                      _handleImport(context);
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
                  value: 'import', // Maps to Device Import
                  child: Row(
                    children: [
                      const Icon(Icons.file_upload, color: Colors.blueGrey),
                      const SizedBox(width: 8),
                      Text(l10n.menuDeviceImport), // "Device..."
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
                  onSelectMaterial: () => _showMaterialSelectionDialog(context),
                ),
                Mode2Widget(
                  materialDropdownKey: _mode2DropdownKey,
                  tutorialListKey: _mode2ListKey,
                  onSelectMaterial: () => _showMaterialSelectionDialog(context),
                ),
                Mode3Widget(
                  materialDropdownKey: _mode3DropdownKey,
                  resetButtonKey: _mode3ResetKey,
                  onSelectMaterial: () => _showMaterialSelectionDialog(context),
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



  Future<void> _handleImport(BuildContext context) async {
    final appState = Provider.of<AppState>(context, listen: false);
    final l10n = AppLocalizations.of(context)!;
    
    final importResult = await appState.pickAndImportJson();
    
    if (importResult == null) return; // Canceled
    
    if (!context.mounted) return;
    
    if (importResult['success'] == true) {
      // Immediate Transition Logic
      final materialId = importResult['material_id'] as int? ?? 0;
      
      // 2. Select the new material
      await appState.selectMaterial(materialId);
      
      // Removed auto-switch to Mode 3 based on user feedback.
      // appState.switchMode(2); 

      // 3. Show non-blocking feedback
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.importAdded(importResult['imported'] as int)),
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 2),
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


  void _showMaterialSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        final appState = Provider.of<AppState>(context, listen: false); // Listen false
        final l10n = AppLocalizations.of(context)!;
        
        final materials = appState.studyMaterials;
        
        // Filter materials for each section
        // Note: material['id'] == 0 is Basic.
        // We can include Basic in both if it has content or is default.
        
        final wordMaterials = materials.where((m) {
           if (m['id'] == 0) return true; // Always show Basic
           final wCount = m['word_count'] as int? ?? 0;
           final sCount = m['sentence_count'] as int? ?? 0;
           return (wCount + sCount) > 0;
        }).toList();
        
        final sentenceMaterials = materials.where((m) {
           if (m['id'] == 0) return true; // Always show Basic
           final wCount = m['word_count'] as int? ?? 0;
           final sCount = m['sentence_count'] as int? ?? 0;
           return (wCount + sCount) > 0;
        }).toList();

        final dialogueGroups = appState.dialogueGroups;
        
        // Determine initial tab based on mode
        int initialTab = 0; // Word by default
        if (appState.currentMode == 3) { // AI Chat Mode
          initialTab = 2; // Dialogues Tab
        } else if (appState.currentMode == 1 || appState.currentMode == 2) {
          // If in review/practice, keep Word or Sentence based on filter
          initialTab = appState.isWordMode ? 0 : 1;
        }

        return DefaultTabController(
          length: 3,
          initialIndex: initialTab,
          child: AlertDialog(
            title: Text(appState.currentMode == 3 ? l10n.chatAiChat : l10n.menuSelectMaterialSet),
            content: SizedBox( // Constrain height
              width: double.maxFinite,
              height: 400, // Fixed height for TabView
              child: Column(
                children: [
                  TabBar(
                    labelColor: Colors.blueAccent,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: l10n.tabWord),
                      Tab(text: l10n.tabSentence),
                      Tab(text: l10n.chatHistoryTitle),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        // Word Tab
                        ListView(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.all_inclusive, color: Colors.indigo),
                              title: Text(l10n.reviewAll),
                              onTap: () {
                                appState.setRecordTypeFilter('word');
                                appState.selectMaterial(-1);
                                Navigator.pop(context);
                              },
                            ),
                            const Divider(),
                            ...wordMaterials.map((m) {
                                  String subject = m['subject'] as String;
                                  if (m['id'] == 0) subject = "기본 단어 저장소";
                                  return ListTile(
                                    leading: const Icon(Icons.book, color: Colors.blueAccent),
                                    title: Text(subject),
                                    subtitle: Text('${l10n.wordModeLabel}: ${m['word_count']} / ${l10n.labelSentence}: ${m['sentence_count']}'),
                                    onTap: () {
                                       appState.setRecordTypeFilter('word');
                                       appState.selectMaterial(m['id'] as int);
                                       Navigator.pop(context);
                                    },
                                  );
                            }),
                          ],
                        ),
                        // Sentence Tab
                        ListView(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.all_inclusive, color: Colors.indigo),
                              title: Text(l10n.reviewAll),
                              onTap: () {
                                appState.setRecordTypeFilter('sentence');
                                appState.selectMaterial(-1);
                                Navigator.pop(context);
                              },
                            ),
                            const Divider(),
                            ...sentenceMaterials.map((m) {
                                  String subject = m['subject'] as String;
                                  if (m['id'] == 0) subject = "기본 문장 저장소";
                                  return ListTile(
                                    leading: const Icon(Icons.article, color: Colors.deepOrangeAccent),
                                    title: Text(subject),
                                    subtitle: Text('${l10n.wordModeLabel}: ${m['word_count']} / ${l10n.labelSentence}: ${m['sentence_count']}'),
                                    onTap: () {
                                       appState.setRecordTypeFilter('sentence');
                                       appState.selectMaterial(m['id'] as int);
                                       Navigator.pop(context);
                                    },
                                  );
                            }),
                          ],
                        ),
                        // Dialogues Tab (Phase 11 Update)
                        ListView(
                          children: [
                            if (dialogueGroups.isEmpty)
                              Padding(
                                padding: const EdgeInsets.all(32),
                                child: Center(child: Text(l10n.chatNoConversations)),
                              ),
                            ...dialogueGroups.map((group) {
                                  return ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.blue[50],
                                      child: const Icon(Icons.chat, size: 16, color: Colors.blue),
                                    ),
                                    title: Text(group.title ?? l10n.chatUntitled),
                                    subtitle: Text(group.persona ?? ''),
                                    onTap: () async {
                                       await appState.loadExistingDialogue(group);
                                       if (context.mounted) {
                                         // Switch to Chat Mode if not already there
                                         appState.switchMode(3); 
                                         Navigator.pop(context);
                                       }
                                    },
                                  );
                            }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.cancel),
            ),
          ],
        ),
      );
      },
    );
  }

}

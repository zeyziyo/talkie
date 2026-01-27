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

  // Mode 2 Keys
  final GlobalKey _mode2DropdownKey = GlobalKey();
  final GlobalKey _mode2ListKey = GlobalKey();

  // Mode 3 Keys
  final GlobalKey _mode3DropdownKey = GlobalKey();
  final GlobalKey _mode3ResetKey = GlobalKey(); // New: Reset Button Key
  
  // Tutorial Keys - Fixed
  // final GlobalKey _globalToggleKey = GlobalKey(); // Removed
  final GlobalKey _tabKey = GlobalKey();
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
    // AdMob is not supported on web
    if (kIsWeb) return;
    
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
      
      // Swap Button Tutorial
      targets.add(_buildTarget(
        _swapButtonKey, 
        l10n.swapLanguages, 
        l10n.tutorialSwapDesc,
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



       // New: Mode 1 Dropdown -> Point to Menu
       targets.add(_buildTarget(
        _actionButtonKey, // Point to Menu Button
        l10n.tutorialM2SelectTitle, // "Select Material"
        l10n.tutorialM2DropdownDesc, // "Select materials..."
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


      // Mode 2: Dropdown -> Point to Menu
      targets.add(_buildTarget(
        _actionButtonKey, // Point to Menu
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
      // Mode 3: Dropdown -> Point to Menu
      targets.add(_buildTarget(
        _actionButtonKey, // Point to Menu
        l10n.tutorialM3SelectTitle, 
        l10n.tutorialM3SelectDesc,
        ContentAlign.bottom,
        radius: 12,
      ));
      
      // Mode 3: Reset Button
      targets.add(_buildTarget(
        _mode3ResetKey, 
        l10n.tutorialM3ResetTitle, 
        l10n.tutorialM3ResetDesc,
        ContentAlign.top,
        radius: 12,
        shape: ShapeLightFocus.RRect,
        keepWidgetSize: true, 
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
        title: Consumer<AppState>(
          builder: (context, appState, child) {
                // Get material name
                String materialName;
                if (appState.selectedMaterialId == 0) {
                  materialName = appState.recordTypeFilter == 'word'
                      ? l10n.basicWords
                      : l10n.basicSentences;
                } else {
                  final material = appState.studyMaterials.firstWhere(
                    (m) => m['id'] == appState.selectedMaterialId,
                    orElse: () => {},
                  );
                  materialName = material['subject'] as String? ?? l10n.basicWords;
                }

                return Text(
                  materialName,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                );
              },
            ),
            centerTitle: true,
            backgroundColor: const Color(0xFF667eea),
            foregroundColor: Colors.white,
            leading: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            actions: [
              // Material Selection moved to Mode1Widget
              
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
                      _launchURL('https://zeyziyo.github.io/talkie/index.html#downloads');
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
                  title: const Text('입력'),
                  selected: appState.currentMode == 0,
                  selectedColor: const Color(0xFF667eea),
                  onTap: () {
                    appState.switchMode(0);
                    Navigator.pop(context); // Close drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.auto_stories),
                  title: const Text('복습'),
                  selected: appState.currentMode == 1,
                  selectedColor: const Color(0xFF667eea),
                  onTap: () {
                    appState.switchMode(1);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.record_voice_over),
                  title: const Text('발음 연습'),
                  selected: appState.currentMode == 2,
                  selectedColor: const Color(0xFF667eea),
                  onTap: () {
                    appState.switchMode(2);
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
            child: Consumer<AppState>(
              builder: (context, appState, child) {
                if (appState.currentMode == 0) {
                  return Mode1Widget(
                    micButtonKey: _micButtonKey,
                    translateButtonKey: _translateButtonKey,
                    swapButtonKey: _swapButtonKey, 
                    saveButtonKey: _saveButtonKey,
                    contextFieldKey: _contextFieldKey,
                    materialDropdownKey: _mode1DropdownKey,
                  );
                } else if (appState.currentMode == 1) {
                  return Mode2Widget(
                    materialDropdownKey: _mode2DropdownKey,
                    tutorialListKey: _mode2ListKey,
                  ); 
                } else if (appState.currentMode == 2) {
                  return Mode3Widget(
                    materialDropdownKey: _mode3DropdownKey,
                    resetButtonKey: _mode3ResetKey,
                  );  
                } 
                return const SizedBox.shrink();
              },
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
           final count = m['word_count'] as int? ?? 0;
           return count > 0;
        }).toList();
        
        final sentenceMaterials = materials.where((m) {
           if (m['id'] == 0) return true; // Always show Basic
           final count = m['sentence_count'] as int? ?? 0;
           return count > 0;
        }).toList();

        return DefaultTabController(
          length: 2,
          child: AlertDialog(
            title: Text(l10n.menuSelectMaterialSet),
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
                                  if (m['id'] == 0) subject = l10n.basicWords;
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
                                  if (m['id'] == 0) subject = l10n.basicSentences;
                                  return ListTile(
                                    leading: const Icon(Icons.article, color: Colors.deepOrangeAccent),
                                    title: Text(subject),
                                    subtitle: Text('${l10n.wordModeLabel}: ${m['word_count']} / ${l10n.labelSentence}: ${m['sentence_count']}'),
                                    onTap: () {
                                       appState.setRecordTypeFilter('sentence'); // Auto switch to sentence
                                       appState.selectMaterial(m['id'] as int);
                                       Navigator.pop(context);
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

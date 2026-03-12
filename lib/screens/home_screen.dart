import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart' hide AppState;
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
// import '../widgets/mode1_widget.dart'; // Removed: Integrated into Home
import '../widgets/mode2_widget.dart';
import '../widgets/mode3_widget.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';
import '../widgets/help_dialog.dart';
import '../constants/language_constants.dart';
import 'chat_history_screen.dart';
import '../widgets/online_library_dialog.dart';
import '../constants/app_constants.dart';
import 'participant_manage_screen.dart';
import 'auth_screen.dart';
import 'package:flutter/services.dart';
import '../widgets/simplified_input_widget.dart';

class HomeScreen extends StatefulWidget {
  static const _channel = MethodChannel('com.zeyziyo.talkie/settings');
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  // Mode 1 Keys (Old Input Mode - Mostly unused now, kept for tutorial if needed)
  final GlobalKey _micButtonKey = GlobalKey();
  final GlobalKey _translateButtonKey = GlobalKey();
  final GlobalKey _saveButtonKey = GlobalKey();
  final GlobalKey _swapButtonKey = GlobalKey();
  final GlobalKey _contextFieldKey = GlobalKey();
  final GlobalKey _mode1DropdownKey = GlobalKey(); 
  final GlobalKey _mode1ToggleKey = GlobalKey(); 

  // Mode 2 Keys
  final GlobalKey _mode2DropdownKey = GlobalKey();
  final GlobalKey _mode2ListKey = GlobalKey();
  final GlobalKey _mode2SearchKey = GlobalKey(); // New: Mode 2 Search Key

  // Mode 3 Keys
  final GlobalKey _mode3DropdownKey = GlobalKey();
  final GlobalKey _mode3SettingsKey = GlobalKey(); // Renamed from _mode3ResetKey
  final GlobalKey _mode3SearchKey = GlobalKey(); // New: Mode 3 Search Key
  
  // Tutorial Keys - Fixed
  final GlobalKey _menuKey = GlobalKey(); // Renamed from _tabKey
  final GlobalKey _actionButtonKey = GlobalKey();
  final GlobalKey _chatFabKey = GlobalKey(); // Added: Fixed undefined identifier

  // AdMob Banner
  BannerAd? _bannerAd;
  bool _isBannerAdReady = false;

  // Navigation Controllers
  late PageController _pageController;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _loadBannerAd();
    
    // Initialize Controllers with current mode
    final appState = Provider.of<AppState>(context, listen: false);
    _pageController = PageController(initialPage: appState.currentMode);
    _tabController = TabController(length: 4, vsync: this, initialIndex: appState.currentMode);
    
    appState.setPageController(_pageController);

    // TTS Error Listener
    appState.ttsErrorNotifier.addListener(_showTtsInstallGuide);

    // v15.8.4: Show Kakao Key Hash removed (User Request)
  }

  void _showTtsInstallGuide() {
    if (!mounted) return;
    final appState = Provider.of<AppState>(context, listen: false);
    final errorData = appState.ttsErrorNotifier.value;
    if (errorData == null) return;

    // Reset the value immediately
    appState.ttsErrorNotifier.value = null;

    final l10n = AppLocalizations.of(context);
    if (l10n == null) return;

    final String langInfo = errorData.nativeName != null && errorData.nativeName != errorData.displayName
        ? '${errorData.displayName} (${errorData.nativeName})'
        : errorData.displayName;

    final bool isNativelyUnsupported = errorData.isNativelyUnsupported;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('[$langInfo] ${l10n.ttsMissing}', style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(
              isNativelyUnsupported ? l10n.ttsUnsupportedNatively : l10n.ttsInstallGuide, 
              style: const TextStyle(fontSize: 12)
            ),
          ],
        ),
        backgroundColor: Colors.orange.shade900,
        duration: Duration(seconds: isNativelyUnsupported ? 6 : 12),
        action: isNativelyUnsupported ? null : SnackBarAction(
          label: '설정 열기',
          textColor: Colors.white,
          onPressed: () async {
            if (Platform.isAndroid) {
              try {
                await HomeScreen._channel.invokeMethod('openTtsSettings');
              } catch (e) {
                // Fallback to url_launcher if MethodChannel fails
                final Uri altUrl = Uri.parse('intent:#Intent;action=android.settings.TTS_SETTINGS;end');
                await launchUrl(altUrl);
              }
            } else if (Platform.isIOS) {
              final Uri url = Uri.parse('App-Prefs:root=ACCESSIBILITY&path=SPOKEN_CONTENT/VOICES');
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              }
            }
          },
        ),
      ),
    );
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
    final appState = Provider.of<AppState>(context, listen: false);
    appState.ttsErrorNotifier.removeListener(_showTtsInstallGuide);
    _bannerAd?.dispose();
    _pageController.dispose();
    _tabController.dispose();
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
        _mode2SearchKey, 
        l10n.search, 
        l10n.tutorialM2SearchDesc,
        ContentAlign.bottom,
        radius: 12,
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
        _mode3SearchKey, 
        l10n.search, 
        l10n.tutorialM2SearchDesc,
        ContentAlign.bottom,
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
    final l10n = AppLocalizations.of(context)!;
    final appState = Provider.of<AppState>(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight((appState.currentMode >= 1 && appState.currentMode <= 2) ? 154.0 : 104.0),
        child: Consumer<AppState>(
          builder: (context, appState, child) {
            return AppBar(
              title: const Text('Talkie', style: TextStyle(
                fontWeight: FontWeight.w900, 
                fontSize: 32, 
                letterSpacing: -1.2, 
                color: Colors.black,
                shadows: [
                  Shadow(color: Colors.black26, offset: Offset(0, 0.5), blurRadius: 1),
                ],
              )),
              centerTitle: true,
              backgroundColor: Colors.grey.shade100,
              foregroundColor: Colors.blue.shade700,
              leading: Builder(
                builder: (context) => IconButton(
                  key: _menuKey,
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight((appState.currentMode >= 1 && appState.currentMode <= 2) ? 98.0 : 48.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      color: Colors.white,
                      child: TabBar(
                        controller: _tabController,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.indigo.shade300,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.indigo,
                        ),
                        onTap: (index) => appState.switchMode(index),
                        tabs: [
                          Tab(text: '홈', icon: const Icon(Icons.home_rounded, size: 20)),
                          Tab(text: l10n.reviewModeTitle, icon: const Icon(Icons.auto_stories, size: 20)),
                          Tab(text: l10n.practiceModeTitle, icon: const Icon(Icons.record_voice_over, size: 20)),
                          Tab(text: l10n.chatAiChat, icon: const Icon(Icons.chat_bubble, size: 20)),
                        ],
                      ),
                    ),
                    if (appState.currentMode >= 1 && appState.currentMode <= 2)
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
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
                                    _buildToggleButton(context, label: l10n.tabWord, isSelected: appState.recordTypeFilter == 'word', onTap: () { appState.setRecordTypeFilter('word'); appState.selectMaterial(null); }),
                                    _buildToggleButton(context, label: l10n.tabSentence, isSelected: appState.recordTypeFilter == 'sentence', onTap: () { appState.setRecordTypeFilter('sentence'); appState.selectMaterial(null); }),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              flex: 4,
                              child: InkWell(
                                key: _swapButtonKey,
                                onTap: () => appState.swapLanguages(),
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                                  decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.blue.shade200)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(child: Text(appState.languageNames[appState.sourceLang] ?? appState.sourceLang.toUpperCase(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue.shade800), overflow: TextOverflow.ellipsis)),
                                      const SizedBox(width: 4),
                                      Icon(Icons.swap_horiz, size: 16, color: Colors.blue.shade600),
                                      const SizedBox(width: 4),
                                      Flexible(child: Text(appState.languageNames[appState.targetLang] ?? appState.targetLang.toUpperCase(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue.shade800), overflow: TextOverflow.ellipsis)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),

            actions: [
              // Phase 15.6: Web-Friendly Login Action in AppBar
              if (appState.currentUser == null || appState.currentUser!.isAnonymous)
                appState.isLoggingIn
                  ? const SizedBox(width: 48, height: 48, child: Padding(padding: EdgeInsets.all(12), child: CircularProgressIndicator(strokeWidth: 2)))
                  : IconButton(
                      tooltip: l10n.login,
                      icon: const Icon(Icons.login_rounded, color: Colors.blueAccent),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AuthScreen()),
                      ),
                    ),
              
              PopupMenuButton<String>(
                key: _actionButtonKey,
                onSelected: (value) async {
                  final appState = Provider.of<AppState>(context, listen: false);
                  switch (value) {
                    case 'refresh':
                      appState.loadStudyMaterials();
                      break;
                    case 'online_library':
                      OnlineLibraryDialog.show(context); // Open Online Tab
                      break;
                    case 'device_import':
                      final result = await appState.pickAndImportJson();
                      if (result != null && context.mounted) {
                        if (result['success'] == true) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.importComplete)),
                          );
                        } else if (result['error'] == 'DuplicateTitle') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.importDuplicateTitleError)),
                          );
                        } else if (result['error'] != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(result['error'])),
                          );
                        }
                      }
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
                      final localeCode = Localizations.localeOf(context).languageCode;
                      final targetUrl = '${AppConstants.devWebsiteUrl}?lang=$localeCode';
                      _launchURL(targetUrl);
                      break;
                    case 'settings':
                      _showLanguageSettingsDialog(context);
                      break;
                    case 'manage_participants':
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ParticipantManageScreen()),
                      );
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

                PopupMenuItem<String>(
                  value: 'device_import',
                  child: Row(
                    children: [
                      const Icon(Icons.folder_open, color: Colors.orange),
                      const SizedBox(width: 8),
                      Text(l10n.menuDeviceImport),
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
                      Text(l10n.menuLanguageSettings),
                    ],
                  ),
                ),
                
                PopupMenuItem<String>(
                  value: 'manage_participants',
                  child: Row(
                    children: [
                      const Icon(Icons.people, color: Colors.purple),
                      const SizedBox(width: 8),
                      Text(l10n.manageParticipants),
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
      );
    },
  ),
),
      drawer: Drawer(
        child: Consumer<AppState>(
          builder: (context, appState, child) {
            return ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF667eea), Color(0xFF764ba2)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.language, color: Colors.white, size: 40),
                          const Spacer(),
                          if (appState.currentUser != null && !appState.currentUser!.isAnonymous)
                            ClipOval(
                              child: Image.network(
                                appState.currentUser!.userMetadata?['avatar_url'] ?? '',
                                width: 32,
                                height: 32,
                                errorBuilder: (c, e, s) => const Icon(Icons.account_circle, color: Colors.white, size: 32),
                              ),
                            )
                          else
                            const Icon(Icons.account_circle_outlined, color: Colors.white70, size: 32),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        l10n.appTitle,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (appState.currentUser != null && !appState.currentUser!.isAnonymous)
                        Text(
                          appState.currentUser!.email ?? '',
                          style: const TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                    ],
                  ),
                ),
                // Google Login Section (v15.5: Enhanced Feedback)
                if (appState.currentUser == null || appState.currentUser!.isAnonymous)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: appState.isLoggingIn 
                      ? const Center(child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(),
                        ))
                      : ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pop(context); // Close drawer
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const AuthScreen()),
                            );
                          },
                          icon: const Icon(Icons.login_rounded, size: 20, color: Colors.blueAccent),
                          label: Text(
                            l10n.login,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black87,
                            elevation: 2,
                            minimumSize: const Size(double.infinity, 48),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                  )
                else
                  Column(
                    children: [
                      if (appState.isSyncing)
                        ListTile(
                          dense: true,
                          leading: const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                          title: Text(
                            l10n.syncingData,
                            style: const TextStyle(fontSize: 12, color: Colors.blueAccent),
                          ),
                        ),
                      ListTile(
                        leading: const Icon(Icons.logout, color: Colors.redAccent),
                        title: Text(l10n.logout, style: const TextStyle(color: Colors.redAccent)),
                        onTap: () async {
                          final confirmed = await showDialog<bool>(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(l10n.logoutConfirmTitle),
                              content: Text(l10n.logoutConfirmMessage),
                              actions: [
                                TextButton(onPressed: () => Navigator.pop(context, false), child: Text(l10n.cancel)),
                                TextButton(onPressed: () => Navigator.pop(context, true), child: Text(l10n.confirm)),
                              ],
                            ),
                          );
                          if (confirmed == true) {
                            await appState.logout();
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(l10n.statusLogoutSuccess)),
                              );
                            }
                          }
                        },
                      ),
                    ],
                  ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.home_rounded),
                  title: const Text('홈'),
                  selected: appState.currentMode == 0,
                  selectedColor: const Color(0xFF667eea),
                  onTap: () {
                    appState.switchMode(0);
                    Navigator.pop(context);
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
          // Phase 9: Offline Banner
          if (appState.isOffline)
            Container(
              width: double.infinity,
              color: Colors.orange.shade800,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                children: [
                  const Icon(Icons.wifi_off, color: Colors.white, size: 18),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      '인터넷 연결이 없습니다. 저장된 내용으로 복습만 가능합니다.',
                      style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: PageView(
              controller: _pageController,
               onPageChanged: (index) {
                  final appState = Provider.of<AppState>(context, listen: false);
                  appState.switchMode(index, fromPage: true);
                  _tabController.animateTo(index); // Sync TabBar with swipe
                  if (index == 3) {
                    // Ensure list is loaded for the AI Chat
                    appState.loadDialogueGroups();
                  }
               },
              children: [
                const SimplifiedInputWidget(),
                Mode2Widget(
                  key: const ValueKey('mode2'),
                  materialDropdownKey: _mode2DropdownKey,
                  tutorialListKey: _mode2ListKey,
                  searchKey: _mode2SearchKey,
                  onSelectMaterial: () => OnlineLibraryDialog.show(context),
                ),
                Mode3Widget(
                  key: const ValueKey('mode3'),
                  materialDropdownKey: _mode3DropdownKey,
                  settingsKey: _mode3SettingsKey,
                  searchKey: _mode3SearchKey,
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
                      final code = lang['code']!;
                      final myLang = appState.sourceLang;
                      
                      final myLangMap = LanguageConstants.getLanguageMap(myLang);
                      final nativeMap = LanguageConstants.getLanguageMap(code);
                      
                      final nameInMyLang = myLangMap[code] ?? code.toUpperCase();
                      final nativeName = nativeMap[code] ?? nameInMyLang;
                      
                      final displayName = nameInMyLang == nativeName ? nameInMyLang : '$nameInMyLang($nativeName)';

                      return DropdownMenuItem<String>(
                        value: code,
                        child: Text(displayName),
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
                      final code = lang['code']!;
                      final myLang = appState.sourceLang;
                      
                      final myLangMap = LanguageConstants.getLanguageMap(myLang);
                      final nativeMap = LanguageConstants.getLanguageMap(code);
                      
                      final nameInMyLang = myLangMap[code] ?? code.toUpperCase();
                      final nativeName = nativeMap[code] ?? nameInMyLang;
                      
                      final displayName = nameInMyLang == nativeName ? nameInMyLang : '$nameInMyLang($nativeName)';

                      return DropdownMenuItem<String>(
                        value: code,
                        child: Text(displayName),
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
            color: isSelected ? Colors.indigoAccent : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            boxShadow: isSelected ? [
              BoxShadow(color: Colors.black.withValues(alpha: 0.1), blurRadius: 4, offset: const Offset(0, 2))
            ] : null,
          ),
          margin: const EdgeInsets.all(4),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16, // Increased as requested
              fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
              color: isSelected ? Colors.white : Colors.grey.shade700,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import '../services/database_service.dart';
import '../services/translation_service.dart';
import '../services/speech_service.dart';
import '../constants/language_constants.dart';
import '../services/usage_service.dart';
import '../services/database/sentence_repository.dart';
import '../services/database/unified_repository.dart';
import '../models/sentence.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:supabase_flutter/supabase_flutter.dart';
import '../services/supabase_service.dart';
import '../services/supabase/supabase_auth_service.dart';
import '../l10n/app_localizations.dart';
import '../constants/app_constants.dart';
import '../constants/scan_support_constants.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../services/folder_import_service.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'app_state_auth.dart';
part 'app_state_mode1.dart';
part 'app_state_mode2.dart';
part 'app_state_mode3.dart';
part 'app_state_scan.dart';
part 'app_state_settings.dart';

/// App-wide state management for Talkie (Modularized Hub)
class AppState extends ChangeNotifier {
  // Services
  final SpeechService _speechService = SpeechService();
  final UsageService _usageService = UsageService();
  final SharedPreferences? _prefs;

  AppState(this._prefs) {
    // [Phase 15.8.12] 인증 리스너를 가장 먼저 등록하여 리다이렉트 직후의 세션 감지 확률을 높입니다.
    _initAuthListener();
    
    _usageService.init(prefs: _prefs); 
    _initSettings();
    debugPrint('>>> APPSTATE [2] Settings Init Done');
    
    // [Phase 164] 중앙 집중식 초기화 및 구원 타이머 도입
    _initializeAll();
    
    _initConnectivity();
    debugPrint('>>> APPSTATE [3] Constructor Exit');
  }

  Future<void> _initializeAll() async {
    debugPrint('[AppState] >>> _initializeAll: START');
    
    try {
      // Phase 17500: Repair any records with 'auto' language code
      DatabaseService.repairAutoLanguageRecords(_sourceLang, _targetLang).catchError((e) {
        debugPrint('[AppState] Language repair failed: $e');
      });
    } catch (e) {
      debugPrint('[AppState] !!! _initializeAll Error: $e');
    } finally {
      isLoggingIn = false;
      notifyListeners();
      debugPrint('[AppState] >>> _initializeAll: FINISHED');
    }
  }

  /// Phase 33: Listen for Auth Changes to trigger data sync
  void _initAuthListener() {
    // 1. Listen for future changes
    SupabaseService.client.auth.onAuthStateChange.listen((data) async {
      final AuthChangeEvent event = data.event;
      final Session? session = data.session;
      final newUser = session?.user;
      
      debugPrint('[AppState] Auth Event: $event, UID: ${newUser?.id}');
      
      if (event == AuthChangeEvent.signedIn || event == AuthChangeEvent.initialSession || event == AuthChangeEvent.tokenRefreshed) {
        if (newUser != null) {
          // Phase 15.8.7: Notify immediately so login screens can pop while background sync starts
          isLoggingIn = false; // Always clear when signed in or session recovered
          notify(); 
          
          // CRITICAL: Handle both storing anon ID and merging to Google account
          await _handleAuthMerge(newUser);
        }
      } else if (event == AuthChangeEvent.signedOut) {
        isLoggingIn = false;
        notify();
      }
    });

    // 2. Immediate check for existing session on startup (Redirect Recovery)
    // 웹 환경에서는 페이지 새로고침 시 이 부분이 리다이렉트 결과를 잡아내는 핵심입니다.
    Future.delayed(Duration.zero, () async {
      final currentSession = SupabaseService.client.auth.currentSession;
      if (currentSession != null && !currentSession.user.isAnonymous) {
        debugPrint('[AppState] Found authenticated session on startup redirect. UID: ${currentSession.user.id}');
        isLoggingIn = false;
        notify();
        await _handleAuthMerge(currentSession.user);
      }
    });
  }

  /// Unified helper to handle data merging for both Native and Web (Redirect)
  Future<void> _handleAuthMerge(User newUser) async {
    final newId = newUser.id;

    if (newUser.isAnonymous) {
      // User is Anonymous, remember this ID for potential future merge
      await _prefs?.setString('last_anonymous_id', newId);
      debugPrint('[AppState] Storing Anonymous ID for potential merge: $newId');
      await _triggerAllSync(); 
      return;
    }

    // Now handling Authenticated (Google) User
    if (_isMerging) {
      debugPrint('[AppState] Merge/Sync already in progress. Skipping...');
      return;
    }
    
    final oldId = _prefs?.getString('last_anonymous_id');

    if (oldId != null && oldId != newId) {
      _isMerging = true;
      debugPrint('[AppState] Merge Triggered: $oldId -> $newId');
      
      try {
        isLoggingIn = true; // Show spinner during migration
        
        // [PHASE 1] Cloud Ownership Transfer (Priority)
        await SupabaseService.mergeUserSessions(oldId, newId);
        
        // [PHASE 2] Local Database Transfer
        await DatabaseService.mergeUserSessions(oldId, newId);
        
        // [PHASE 3] Final Data Sync
        await _triggerAllSync();
        
        // Clear persistence ONLY after successful complete chain
        await _prefs?.remove('last_anonymous_id');
        debugPrint('[AppState] Sequential Merge & Sync Complete.');
      } catch (e) {
        debugPrint('[AppState] Automated Merge Failed: $e');
        // Fallback sync to ensure user sees what's already theirs
        await _triggerAllSync(); 
      } finally {
        isLoggingIn = false;
        _isMerging = false;
      }
    } else {
      // If no merge needed, still ensure data is synced for the user
      await _triggerAllSync();
    }
    
    // Phase 15.8.7: Ensure ultimate state is visible (Spinner off, Data on)
    notify(); 
  }

  /// Automated merge helper for Web/Redirect flows (Phase 15.6)

  /// Trigger all cloud -> local syncs
  Future<void> _triggerAllSync() async {
    if (_isSyncing) return;
    isSyncing = true;
    try {
      await loadStudyMaterials();
      await loadRecordsByTags(); // Ensure Mode 2 UI updates
    } finally {
      isSyncing = false;
    }
  }

  // Helper for Extensions to notify listeners
  void notify() => notifyListeners();

  // Constants for Categories
  static const List<String> posCategories = [
    'Noun', 'Verb', 'Adjective', 'Adverb', 
    'Pronoun', 'Preposition', 'Conjunction', 'Interjection'
  ];
  static const List<String> sentenceCategories = [
    'Statement', 'Question', 'Exclamation', 'Imperative'
  ];
  static const List<String> verbFormCategories = [
    'Infinitive', 'Past', 'Past Participle', 'Present Participle', '3rd Person Singular', 'Plural'
  ];
  static const List<String> adjectiveFormCategories = [
    'Positive', 'Comparative', 'Superlative'
  ];
  static const List<String> pronounCaseCategories = [
    'Subject', 'Object', 'Possessive', 'PossessivePronoun', 'Reflexive'
  ];

  // Phase 125.5: Global Displayable Tags Whitelist (Strict Filtering)
  static final Set<String> displayableTags = {
    ...posCategories,
    ...sentenceCategories,
    ...verbFormCategories,
    ...adjectiveFormCategories,
    ...pronounCaseCategories,
  }.whereType<String>().map((e) => e.toLowerCase()).toSet();

  // ---------------------------------------------------------
  String? _languageMessage;
  String? get languageMessage => _languageMessage;
  void setLanguageMessage(String? msg) {
    _languageMessage = msg;
    notifyListeners();
  }

  // --- Auth & State Variables ---
  // ---------------------------------------------------------

  int _currentMode = 0;
  PageController? _pageController;

  // Mode 1 (Translation & Input)
  String _sourceText = '';
  String _translatedText = '';
  String _englishText = '';
  String _sourceLang = 'ko';
  String _targetLang = 'en';
  bool _isListening = false;
  bool _isTranslating = false;
  bool _isLoggingIn = false; // Phase 15.6: Dedicated login loading state
  bool _isSpeaking = false;
  bool _isSaved = false;
  String _note = '';
  bool _isWordMode = true;
  bool _useSimpleMic = false; // Internal flag for automatic eco-optimization (No UI)
  String _sourcePos = ''; 
  String _sourceFormType = ''; 
  String _sourceRoot = ''; 
  String _sourceStyle = ''; // Phase 98.1: Formality for sentences
  String _statusMessage = '';
  
  bool _showWelcomeBanner = false; // Phase: Onboarding Improvement
  
  bool _isSyncing = false; // Phase 33: Global sync status
  bool _isMerging = false; // Phase 15.6: Prevent race condition on post-login merge
  
  // Recommendations
  bool _isRecommendationLoading = false;
  List<Map<String, dynamic>> _recommendedItems = [];

  // Localized Defaults (Phase 17480)
  String _localizedWordbook = 'My Wordbook';
  String _localizedSentencebook = 'My Sentence Collection';

  // TTS Error Notification
  final ValueNotifier<TtsErrorData?> ttsErrorNotifier = ValueNotifier(null);
  
  void handleTtsError(Object e) {
    if (e is TtsEngineMissingException) {
      final langCode = e.langCode;
      
      // 기기 기본 지원 불가 언어 여부 확인 (예: 카자흐어 kk)
      final bool isUnsupported = LanguageConstants.unsupportedTtsLanguages.contains(langCode);
      
      // Get Native Name and Display Name
      String? nativeName;
      String? displayName;
      
      try {
        // Look up in LanguageConstants
        final match = LanguageConstants.supportedLanguages.firstWhere(
          (l) => l['code'] == langCode || (langCode.contains('-') && l['code'] == langCode.split('-')[0]),
          orElse: () => {},
        );
        
        if (match.isNotEmpty) {
          displayName = match['name'];
          // Try to get native name from localizations if available or just use display name
          // Since we don't have a direct "Native Name" field in supportedLanguages, 
          // we'll use the localized name from the lang's own map if possible.
          final nativeMap = LanguageConstants.getLanguageMap(match['code']!);
          nativeName = nativeMap[match['code']!]; 
        }
      } catch (_) {}

      ttsErrorNotifier.value = TtsErrorData(
        langCode: langCode,
        displayName: displayName ?? langCode,
        nativeName: nativeName,
        isNativelyUnsupported: isUnsupported,
      );
    } else {
      debugPrint('[TTS Error] $e');
    }
  }

  // Duplicate Check
  List<Map<String, dynamic>> _similarSources = [];
  int? _selectedSourceId;
  bool _showDuplicateDialog = false;
  bool _duplicateCheckTriggered = false;
  
  // Disambiguation
  List<String> _disambiguationOptions = [];
  bool _showDisambiguationDialog = false;

  // Save Subject
  String _selectedSaveSubject = 'Basic'; 

  // Mode 2 (Library & Records)
  List<Map<String, dynamic>> _studyRecords = [];
  String _selectedReviewLanguage = 'en';
  List<Map<String, dynamic>> _onlineMaterials = [];
  bool _isLoadingOnlineMaterials = false;
  List<Map<String, dynamic>> _studyMaterials = [];
  List<String> _availableTags = [];
  List<String> _selectedTags = [];
  int? _filterLimit;
  String? _filterStartsWith;
  String? _selectedNotebookTitle;
  List<Map<String, dynamic>> _materialRecords = [];
  String _recordTypeFilter = 'word';
  String _searchQuery = '';
  bool _showMemorized = false;

  // Mode 3 (Speaking Practice)
  bool _mode3SessionActive = false;
  Map<String, dynamic>? _currentMode3Question;
  String _mode3UserAnswer = '';
  double? _mode3Score;
  String _mode3Feedback = '';
  final Set<int> _mode3CompletedQuestionIds = {};
  bool _showRetryButton = false;
  bool _isEvaluating = false;
  Timer? _mode3Timer;
  Timer? _retryAutoSkipTimer;
  StreamSubscription? _speechStatusSubscription;
  bool _practiceWordsOnly = false;

  // Mode 3 (Scan)
  File? _scannedImage;
  String _scannedText = '';
  final String _scanDetectedLang = 'auto';
  List<Map<String, dynamic>> _scanReviewItems = []; // Phase 27: Multi-language segments
  final Map<int, bool> _isTranslatingSingleMap = {}; // Phase 17480: Per-segment loading

  // Mode 3 (Scan) Getters
  File? get scannedImage => _scannedImage;
  String get scannedText => _scannedText;
  String get scanDetectedLang => _scanDetectedLang;
  List<Map<String, dynamic>> get scanReviewItems => _scanReviewItems;

  void setScannedText(String text) {
    _scannedText = text;
    notify();
  }

  void setScannedImage(File? image) {
    _scannedImage = image;
    notify();
  }

  void setScanReviewItems(List<Map<String, dynamic>> items) {
    _scanReviewItems = items;
    notify();
  }

  void clearScanData() {
    _scannedImage = null;
    _scannedText = '';
    _scanReviewItems = [];
    _isSaved = false;
    notify();
  }

  // Phase 9: Offline State
  bool _isOffline = false;
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  // Legacy LifeCycle Guard Removed

  // ---------------------------------------------------------
  // Getters
  // ---------------------------------------------------------

  int get currentMode => _currentMode;
  bool get showWelcomeBanner => _showWelcomeBanner;
  String get sourceText => _sourceText;
  String get translatedText => _translatedText;
  String get sourceLang => _sourceLang;
  String get targetLang => _targetLang;
  bool get isListening => _isListening;
  bool get fetchPivot => _targetLang != 'en' && _sourceLang != 'en';
  bool get isTranslating => _isTranslating;
  set isTranslating(bool val) { _isTranslating = val; notifyListeners(); }

  bool get isLoggingIn => _isLoggingIn;
  set isLoggingIn(bool val) { _isLoggingIn = val; notifyListeners(); }

  bool get isSpeaking => _isSpeaking;
  bool get isSaved => _isSaved;
  String get note => _note;
  bool get isSyncing => _isSyncing;
  set isSyncing(bool val) { _isSyncing = val; notifyListeners(); }
  String get statusMessage => _statusMessage;
  // Removed Legacy Chat UI Getters
  bool get isWordMode => _isWordMode;
  List<Map<String, dynamic>> get studyRecords => _studyRecords;
  List<Map<String, dynamic>> get similarSources => _similarSources;
  int? get selectedSourceId => _selectedSourceId;
  bool get showDuplicateDialog => _showDuplicateDialog;
  String get selectedReviewLanguage => _selectedReviewLanguage;
  List<String> get disambiguationOptions => _disambiguationOptions;
  bool get showDisambiguationDialog => _showDisambiguationDialog;
  String get selectedSaveSubject => _selectedSaveSubject;
  List<Map<String, dynamic>> get onlineMaterials => _onlineMaterials;
  bool get isLoadingOnlineMaterials => _isLoadingOnlineMaterials;
  String? get selectedNotebookTitle => _selectedNotebookTitle;
  List<String> get availableTags => _availableTags;
  List<String> get selectedTags => _selectedTags;
  int? get filterLimit => _filterLimit;
  String? get filterStartsWith => _filterStartsWith;
  String get searchQuery => _searchQuery;
  bool get showMemorized => _showMemorized;
  String get sourcePos => _sourcePos;
  String get sourceFormType => _sourceFormType;
  String get sourceStyle => _sourceStyle;
  String get sourceRoot => _sourceRoot;
  bool get isOffline => _isOffline;
  
  bool get mode3SessionActive => _mode3SessionActive;
  Map<String, dynamic>? get currentMode3Question => _currentMode3Question;
  String get mode3UserAnswer => _mode3UserAnswer;
  double? get mode3Score => _mode3Score;
  String get mode3Feedback => _mode3Feedback;
  Set<int> get mode3CompletedQuestionIds => _mode3CompletedQuestionIds;
  bool get showRetryButton => _showRetryButton;
  bool get isEvaluating => _isEvaluating;
  bool get practiceWordsOnly => _practiceWordsOnly;
  
  // Essential Getters for UI
  String get recordTypeFilter => _recordTypeFilter;
  bool get useSimpleMic => _useSimpleMic;
  bool get isRecommendationLoading => _isRecommendationLoading;
  List<Map<String, dynamic>> get recommendedItems => _recommendedItems;
  List<Map<String, dynamic>> get studyMaterials => _studyMaterials;
  List<Map<String, dynamic>> get filteredMaterialRecords => _materialRecords;
  Map<String, String> get languageNames => LanguageConstants.getLanguageMap(_sourceLang);
  String get localizedWordbook => _localizedWordbook;
  String get localizedSentencebook => _localizedSentencebook;


  // Phase: Decoupled translation direction for Swap Button
  bool _isDirectionSwapped = false;
  bool get isDirectionSwapped => _isDirectionSwapped;
  String get currentInputLang => _isDirectionSwapped ? _targetLang : _sourceLang;
  String get currentOutputLang => _isDirectionSwapped ? _sourceLang : _targetLang;

  // Removed Global Participant Management - Legacy Chat Feature Purged

  // ---------------------------------------------------------
  // Controller / Hub Methods
  // ---------------------------------------------------------

  void setPageController(PageController controller) {
    _pageController = controller;
  }

  void switchMode(int mode, {bool fromPage = false}) {
    if (_currentMode == mode) return;
    _currentMode = mode;
    
    _speechService.stopSTT();
    _speechService.stopSpeaking();
    _isListening = false;
    _isSpeaking = false;
    
    if (!fromPage) {
      _pageController?.animateToPage(
        mode, 
        duration: const Duration(milliseconds: 300), 
        curve: Curves.easeInOut
      );
    }
    
    if (mode == 1) { // Review (New Index 1)
      loadStudyMaterials(); 
      loadRecordsByTags();
    } else if (mode == 2) { // Practice (New Index 2)
      loadStudyMaterials();
      _practiceWordsOnly = false;
    } else if (mode == 3) { // Scan (Index 3)
      // Any init for scan mode
    }

    notify();
  }

  void setSourceText(String text) {
    _sourceText = text;
    _duplicateCheckTriggered = false; 
    _selectedSourceId = null;
    _isSaved = false;
    notify();
  }

  void toggleWordMode() {
    _isWordMode = !_isWordMode;
    _recordTypeFilter = _isWordMode ? 'word' : 'sentence';
    clearTexts();
    notify();
  }

  void clearTexts() {
    _sourceText = '';
    _translatedText = '';
    _englishText = '';
    _isSaved = false;
    _statusMessage = '';
    _selectedSourceId = null;
    _duplicateCheckTriggered = false;

    _sourcePos = '';
    _sourceFormType = '';
    _sourceStyle = ''; // Phase 98.1
    _note = '';
    notify();
  }

  /// Update localized default names from UI (Phase 17480)
  void updateLocalizedDefaults({required String wordbook, required String sentencebook}) {
    if (_localizedWordbook != wordbook || _localizedSentencebook != sentencebook) {
      _localizedWordbook = wordbook;
      _localizedSentencebook = sentencebook;
      notify();
    }
  }

  void closeDisambiguationDialog() {
    _showDisambiguationDialog = false;
    notify();
  }
  
  void selectDisambiguationOption(String option) {
    _note = option;
    _showDisambiguationDialog = false;
    notify();
  }

  void setNote(String value) {
    _note = value;
    notify();
  }

  void setWordMode(bool value) {
    _isWordMode = value;
    _recordTypeFilter = value ? 'word' : 'sentence';
    notify();
  }

  void setSourcePos(String value) { _sourcePos = value; notify(); }
  void setSourceFormType(String value) { 
    _sourceFormType = value; 
    if (!_isWordMode) _applyAutoPunctuation();
    notify(); 
  }
  void setSourceStyle(String value) { _sourceStyle = value; notify(); } // Phase 105
  void setSourceRoot(String value) { _sourceRoot = value; notify(); }

  void setSelectedSaveSubject(String value) { _selectedSaveSubject = value; notify(); }

  Future<void> startListening({String? languageCode}) async {
    try {
      _isListening = true;
      notify();
      
      await _speechService.startSTT(
        lang: getServiceLocale(languageCode ?? _sourceLang),
        onResult: (text, isFinal, alternates) {
          _sourceText = text;
          if (isFinal) {
            _isListening = false;
          }
          notify();
        }
      );
    } catch (e) {
      debugPrint('[AppState] Listen Error: $e');
      _isListening = false;
      notify();
    }
  }

  Future<void> stopListening() async {
    await _speechService.stopSTT();
    _isListening = false;
    notify();
  }

  void _applyAutoPunctuation() {
    if (_sourceText.trim().isEmpty) return;

    String text = _sourceText.trim();
    final lang = _sourceLang.toLowerCase();

    text = text.replaceFirst(RegExp(r'[.?!;。？！]+$'), '');
    if (lang == 'es') {
      text = text.replaceFirst(RegExp(r'^[¿¡]+'), '');
    }

    String suffix = '';
    String prefix = '';

    switch (_sourceFormType) {
      case 'Statement':
      case 'Imperative':
        if (['ja', 'zh-cn', 'zh-tw'].contains(lang)) {
          suffix = '。';
        } else {
          suffix = '.';
        }
        break;
      case 'Question':
        if (lang == 'es') {
          prefix = '¿';
          suffix = '?';
        } else if (lang == 'el') {
          suffix = ';';
        } else if (['ja', 'zh-cn', 'zh-tw'].contains(lang)) {
          suffix = '？';
        } else if (['ar', 'fa', 'ur'].contains(lang)) {
          suffix = '؟';
        } else {
          suffix = '?';
        }
        break;
      case 'Exclamation':
        if (lang == 'es') {
          prefix = '¡';
          suffix = '!';
        } else if (['ja', 'zh-cn', 'zh-tw'].contains(lang)) {
          suffix = '！';
        } else {
          suffix = '!';
        }
        break;
      default:
        return;
    }

    _sourceText = prefix + text + suffix;
  }

  // ---------------------------------------------------------
  // Phase 9: Connectivity Logic
  // ---------------------------------------------------------

  void _initConnectivity() {
    // Initial check
    Connectivity().checkConnectivity().then(_updateConnectionStatus);
    
    // Listen for changes
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(List<ConnectivityResult> results) {
    // connectivity_plus v6.0.0+ returns a List.
    // Offline if the list contains only .none, or is empty (though usually it has .none)
    final bool offline = results.isEmpty || (results.length == 1 && results.contains(ConnectivityResult.none));
    
    if (_isOffline != offline) {
      _isOffline = offline;
      debugPrint('[AppState] Connectivity Changed: Offline=$_isOffline');
      notify();
    }
  }

  @override
  void dispose() {
    _speechStatusSubscription?.cancel();
    _connectivitySubscription?.cancel();
    _cancelMode3Timers();
    super.dispose();
  }
}

class TtsErrorData {
  final String langCode;
  final String displayName;
  final String? nativeName;
  final bool isNativelyUnsupported;

  TtsErrorData({
    required this.langCode,
    required this.displayName,
    this.nativeName,
    this.isNativelyUnsupported = false,
  });
}

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
import '../models/sentence.dart';
import '../services/database/sentence_repository.dart';
import '../services/database/dialogue_repository.dart';
import '../services/database/unified_repository.dart';
import '../models/dialogue_group.dart';
import '../models/chat_participant.dart';
import 'package:uuid/uuid.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:supabase_flutter/supabase_flutter.dart';
import '../services/supabase_service.dart';
import '../services/supabase/supabase_auth_service.dart';
import '../l10n/app_localizations.dart';
import '../constants/app_constants.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:geolocator/geolocator.dart';

part 'app_state_auth.dart';
part 'app_state_mode1.dart';
part 'app_state_mode2.dart';
part 'app_state_mode3.dart';
part 'app_state_chat.dart';
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
    
    // [Phase 164] 강제 구원 타이머: 15초 후 무조건 로딩 상태 해제 및 기본 데이터 주입
    Future.delayed(const Duration(seconds: 15), () async {
      if (_globalParticipantsLoading) {
        debugPrint('[AppState] !!! RESCUE TIMER fired: Force clearing loading state');
        _globalParticipantsLoading = false;
        
        // 만약 여전히 비어있다면 강제로 메모리 상에라도 '나/AI'를 주입하여 사용자 경험을 보호합니다.
        if (_globalParticipants.isEmpty) {
          debugPrint('[AppState] !!! RESCUE TIMER: Injecting default participants to memory as emergency fallback.');
          _globalParticipants = [
            ChatParticipant(id: 'me', dialogueId: '', name: '나', role: 'user', gender: _chatUserGender, langCode: _sourceLang),
            ChatParticipant(id: 'ai', dialogueId: '', name: 'AI', role: 'ai', gender: _chatAiGender, langCode: _targetLang),
          ];
        }
        notifyListeners();
      }
    });

    try {
      // loadGlobalParticipants 내부에서 cleanup 및 ensureDefault를 통합 처리합니다.
      await loadGlobalParticipants().timeout(const Duration(seconds: 12));
    } catch (e) {
      debugPrint('[AppState] !!! _initializeAll Error (caught): $e');
    } finally {
      // 에러 여부와 상관없이 초기 로딩 상태는 반드시 해제하여 화면이 멈추지 않게 합니다.
      _globalParticipantsLoading = false;
      if (_globalParticipants.isEmpty) {
        debugPrint('[AppState] Resetting to fallback participants due to init failure.');
        _globalParticipants = [
          ChatParticipant(id: 'me', dialogueId: '', name: '나', role: 'user', gender: _chatUserGender, langCode: _sourceLang),
          ChatParticipant(id: 'ai', dialogueId: '', name: 'AI', role: 'ai', gender: _chatAiGender, langCode: _targetLang),
        ];
      }
      isLoggingIn = false; // Phase 15.8.11: Ensure logging in flag is also cleared
      notifyListeners();
      debugPrint('[AppState] >>> _initializeAll: FINISHED (Loading Cleared)');
      
      // Phase 17480: Fetch online materials in the background to proactively repair local legacy titles
      fetchOnlineMaterialsList().catchError((e) {
        debugPrint('[AppState] Background online fetch failed: \$e');
      });

      // Phase 17500: Repair any records with 'auto' language code from legacy imports
      DatabaseService.repairAutoLanguageRecords(_sourceLang, _targetLang).catchError((e) {
        debugPrint('[AppState] Language repair failed: \$e');
      });
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
      await loadDialogueGroups();
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
  List<String> _aiDetectedTags = [];
  
  bool _showWelcomeBanner = false; // Phase: Onboarding Improvement
  
  bool _isSyncing = false; // Phase 33: Global sync status
  bool _isMerging = false; // Phase 15.6: Prevent race condition on post-login merge
  
  // Recommendations
  bool _isRecommendationLoading = false;
  List<Map<String, dynamic>> _recommendedItems = [];

  // Localized Defaults (Phase 17480)
  String _localizedWordbook = 'My Wordbook';
  String _localizedSentencebook = 'My Sentence Collection';

  // Settings & Voice
  String _chatUserGender = 'male'; 
  String _chatAiGender = 'female';
  
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

  // Mode 4 (AI Chat)
  String? _activeDialogueId;
  String? _activeDialogueTitle;
  String? _activeDialogueLocation;
  String? _activePersona;
  String? _activePersonaGender;
  int _currentDialogueSequence = 0;
  List<DialogueGroup> _dialogueGroups = [];
  List<String> _suggestedTitles = [];
  bool _isFetchingTitles = false;
  String _currentChatLocation = '';
  List<ChatParticipant> _activeParticipants = [];
  List<Map<String, dynamic>> _currentChatMessages = [];

  // Phase 9: Offline State
  bool _isOffline = false;
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  // Phase 1: Identity & Lifecycle Guard
  bool _globalParticipantsLoading = true;
  bool get globalParticipantsLoading => _globalParticipantsLoading;

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
  List<String> get aiDetectedTags => _aiDetectedTags;
  String get chatUserGender => _chatUserGender;
  String get chatAiGender => _chatAiGender;
  String? get activePersonaGender => _activePersonaGender;
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
  String? get activeDialogueId => _activeDialogueId;
  String? get activeDialogueTitle => _activeDialogueTitle;
  String? get activeDialogueLocation => _activeDialogueLocation;
  String? get activePersona => _activePersona;
  List<String> get suggestedTitles => _suggestedTitles;
  bool get isFetchingTitles => _isFetchingTitles;
  String get currentChatLocation => _currentChatLocation;
  String get sourcePos => _sourcePos;
  String get sourceFormType => _sourceFormType;
  String get sourceStyle => _sourceStyle;
  String get sourceRoot => _sourceRoot;
  List<DialogueGroup> get dialogueGroups => _dialogueGroups;
  List<ChatParticipant> get activeParticipants => _activeParticipants;
  List<Map<String, dynamic>> get currentChatMessages => _currentChatMessages;
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

  // ---------------------------------------------------------
  // Phase 4: Global Participant Management
  // ---------------------------------------------------------
  
  List<ChatParticipant> _globalParticipants = [];
  List<ChatParticipant> get globalParticipants => _globalParticipants;

  Future<void> loadGlobalParticipants({bool force = false}) async {
    if (_globalParticipantsLoading) {
      debugPrint('[AppState] loadGlobalParticipants: Already loading. Skipping.');
      return;
    }
    
    if (!force && _globalParticipants.isNotEmpty) {
      debugPrint('[AppState] loadGlobalParticipants: Already has ${_globalParticipants.length} participants. Skipping.');
      return;
    }

    _globalParticipantsLoading = true;
    notifyListeners();
    
    try {
      final startTime = DateTime.now();
      debugPrint('[AppState] Starting Optimized Global Participants Loading...');

      // 1. 1회 통합 조회 (타임아웃 적용)
      List<ChatParticipant> rawParticipants = await DialogueRepository.getAllUniqueParticipants().timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          debugPrint('[AppState] !!! Global Participants Loading TIMEOUT (10s).');
          return [];
        },
      );

      // 2. 메모리 상에서 자가 치유 (Self-healing: 이름이 없거나 중복된 항목 제거)
      final Set<String> seenIds = {};
      final List<ChatParticipant> cleanList = [];
      
      for (var p in rawParticipants) {
        if (p.name.trim().isEmpty || p.name == 'Group') continue;
        if (seenIds.contains(p.id)) continue;
        seenIds.add(p.id);
        cleanList.add(p);
      }
      
      _globalParticipants = cleanList;

      // 3. 기본 참가자 보장 (메모리 우선 처리 후 비동기 DB 삽입)
      await _ensureDefaultParticipants();
      
      final duration = DateTime.now().difference(startTime);
      debugPrint('[AppState] Participants load/clean finished in ${duration.inMilliseconds}ms. Count: ${_globalParticipants.length}');
      
    } catch (e) {
      debugPrint('[AppState] Global Participants Loading Error: $e');
      if (_globalParticipants.isEmpty) {
        await _ensureDefaultParticipants();
      }
    } finally {
      _globalParticipantsLoading = false;
      notifyListeners();
    }
  }

  /// 기본 참가자('나', 'AI')가 없으면 자동 생성 (앱 최초 구동 시 1회만 동작하도록 개선)
  Future<void> _ensureDefaultParticipants() async {
    final bool hasCreatedDefaults = _prefs?.getBool('hasDefaultParticipantsCreated') ?? false;
    if (hasCreatedDefaults) {
      // 이미 생성했던 이력이 있다면(사용자가 의도적으로 지웠더라도) 다시 강제 부활시키지 않음
      return;
    }

    // 1. role과 name 모두를 기준으로 중복 체크 (더 엄격하게)
    final hasUserMe = _globalParticipants.any((p) => p.role == 'user' && p.name == '나');
    final hasAiBot = _globalParticipants.any((p) => (p.role == 'ai' || p.role == 'assistant') && p.name == 'AI');

    debugPrint('[AppState] _ensureDefaultParticipants: hasUserMe=$hasUserMe, hasAiBot=$hasAiBot');

    if (!hasUserMe) {
      debugPrint('[AppState] Creating default user: me');
      final user = ChatParticipant(
        id: 'me',
        dialogueId: '',
        name: '나',
        role: 'user',
        gender: _chatUserGender,
        langCode: _sourceLang,
      );
      try {
        // DB에도 없는 경우에만 insert 시도하거나, 에러를 무시하도록 처리
        await DialogueRepository.insertParticipant(user.toJson());
      } catch (e) {
        debugPrint('[AppState] Default user might already exist in DB: $e');
      }
      _globalParticipants.removeWhere((p) => p.id == 'me'); // 메모리 내 중복 방지
      _globalParticipants.insert(0, user);
    }
    
    if (!hasAiBot) {
      debugPrint('[AppState] Creating default AI: ai');
      final ai = ChatParticipant(
        id: 'ai',
        dialogueId: '',
        name: 'AI',
        role: 'ai',
        gender: _chatAiGender,
        langCode: _targetLang,
      );
      try {
        await DialogueRepository.insertParticipant(ai.toJson());
      } catch (e) {
        debugPrint('[AppState] Default AI might already exist in DB: $e');
      }
      _globalParticipants.removeWhere((p) => p.id == 'ai'); // 메모리 내 중복 방지
      _globalParticipants.add(ai);
    }

    // 레거시 'assistant' 역할 정규화
    final assistants = _globalParticipants.where((p) => p.role == 'assistant').toList();
    for (var legacyAi in assistants) {
        final updatedAi = legacyAi.copyWith(role: 'ai');
        await DialogueRepository.updateParticipant(updatedAi.id, {'role': 'ai'});
        final idx = _globalParticipants.indexOf(legacyAi);
        if (idx != -1) _globalParticipants[idx] = updatedAi;
    }

    await _prefs?.setBool('hasDefaultParticipantsCreated', true);
  }

  Future<void> addGlobalParticipant(ChatParticipant participant) async {
    await DialogueRepository.insertParticipant({
      'id': participant.id,
      'name': participant.name,
      'role': participant.role,
      'gender': participant.gender,
      'lang_code': participant.langCode,
    });
    await loadGlobalParticipants(force: true);
  }

  Future<void> updateGlobalParticipant(ChatParticipant participant) async {
    await DialogueRepository.updateParticipant(participant.id, {
      'id': participant.id,
      'name': participant.name,
      'role': participant.role,
      'gender': participant.gender,
      'lang_code': participant.langCode,
    });
    
    // 현재 활성화된 채팅방(activeParticipants) 에도 변경 사항 동기화
    final index = _activeParticipants.indexWhere((p) => p.id == participant.id);
    if (index != -1) {
      final old = _activeParticipants[index];
      _activeParticipants[index] = ChatParticipant(
        id: old.id,
        dialogueId: old.dialogueId,
        name: participant.name,
        role: participant.role,
        gender: participant.gender,
        langCode: participant.langCode,
        avatarColor: old.avatarColor,
      );
    }

    await loadGlobalParticipants(force: true);
  }

  Future<void> deleteGlobalParticipant(String id) async {
    await DialogueRepository.deleteParticipant(id);
    
    // 현재 활성화된 채팅방에서도 삭제 처리
    _activeParticipants.removeWhere((p) => p.id == id);
    
    await loadGlobalParticipants(force: true);
  }

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
    
    if (mode == 2) {
      loadStudyMaterials(); 
      loadRecordsByTags();
    } else if (mode == 3) {
      loadStudyMaterials();
      _practiceWordsOnly = false;
    } else if (mode == 0) {
      loadDialogueGroups();
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
    _aiDetectedTags = [];
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

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
// Phase 119: Cleaned up unused sqflite import
import '../services/database_service.dart';
import '../services/translation_service.dart';
import '../services/speech_service.dart';
import '../constants/language_constants.dart';
import '../services/usage_service.dart';
import '../models/sentence.dart';
import '../services/database/sentence_repository.dart';
import '../services/database/dialogue_repository.dart';
import '../models/user_library.dart';
import '../models/dialogue_group.dart';
import '../models/chat_participant.dart';
import 'package:uuid/uuid.dart';
import 'dart:math';
import 'package:flutter/material.dart';

import 'package:supabase_flutter/supabase_flutter.dart';
import '../services/supabase_service.dart';
import '../services/supabase/supabase_auth_service.dart';
import '../l10n/app_localizations.dart';
import '../constants/app_constants.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

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
    debugPrint('>>> APPSTATE [1] Constructor Start');
    _usageService.init(prefs: _prefs); 
    _initSettings();
    debugPrint('>>> APPSTATE [2] Settings Init Done');
    loadGlobalParticipants();
    cleanupCorruptedParticipants(); // Phase 28: Clean ghost data on start
    _initConnectivity();
    _initAuthListener(); // Phase 33: Listen for Google Sign-in status
    debugPrint('>>> APPSTATE [3] Constructor Exit');
  }

  /// Phase 33: Listen for Auth Changes to trigger data sync
  void _initAuthListener() {
    SupabaseService.client.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      final Session? session = data.session;
      
      debugPrint('[AppState] Auth Event: $event, UID: ${session?.user.id}');
      
      if (event == AuthChangeEvent.signedIn) {
        // User logged in (Anonymous OR Google)
        loadDialogueGroups();
        loadStudyMaterials();
      }
    });
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
  }.map((e) => e.toLowerCase()).toSet();

  // ---------------------------------------------------------
  // Fields (State Variables)
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
  bool _isSpeaking = false;
  bool _isSaved = false;
  String _note = '';
  bool _isWordMode = true;
  String _sourcePos = ''; 
  String _sourceFormType = ''; 
  String _sourceRoot = ''; 
  String _sourceStyle = ''; // Phase 98.1: Formality for sentences
  String _statusMessage = '';
  List<String> _aiDetectedTags = [];
  
  bool _isSyncing = false; // Phase 33: Global sync status
  
  // Recommendations
  bool _isRecommendationLoading = false;
  List<Map<String, dynamic>> _recommendedItems = [];

  // Settings & Voice
  String _chatUserGender = 'male'; 
  String _chatAiGender = 'female';
  
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

  bool get isSyncing => _isSyncing;
  set isSyncing(bool value) {
    _isSyncing = value;
    notify();
  }

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
  Object? _selectedMaterialId;
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
  bool _mode4Active = false;
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
  String get sourceText => _sourceText;
  String get translatedText => _translatedText;
  String get sourceLang => _sourceLang;
  String get targetLang => _targetLang;
  bool get isListening => _isListening;
  bool get fetchPivot => _targetLang != 'en' && _sourceLang != 'en';
  bool get isTranslating => _isTranslating;
  bool get isSpeaking => _isSpeaking;
  bool get isSaved => _isSaved;
  String get statusMessage => _statusMessage;
  List<String> get aiDetectedTags => _aiDetectedTags;
  String get chatUserGender => _chatUserGender;
  String get chatAiGender => _chatAiGender;
  String? get activePersonaGender => _activePersonaGender;
  String get sourceLanguage => _sourceLang;
  String get note => _note;
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
  Object? get selectedMaterialId => _selectedMaterialId;
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
  bool get isRecommendationLoading => _isRecommendationLoading;
  List<Map<String, dynamic>> get recommendedItems => _recommendedItems;
  List<Map<String, dynamic>> get studyMaterials => _studyMaterials;
  List<Map<String, dynamic>> get filteredMaterialRecords => _materialRecords;
  Map<String, String> get languageNames => {
    for (var l in LanguageConstants.supportedLanguages) l['code']! : l['name']!
  };

  // ---------------------------------------------------------
  // Phase 4: Global Participant Management
  // ---------------------------------------------------------
  
  List<ChatParticipant> _globalParticipants = [];
  List<ChatParticipant> get globalParticipants => _globalParticipants;

  Future<void> loadGlobalParticipants() async {
    _globalParticipantsLoading = true;
    notifyListeners();
    
    try {
      debugPrint('>>> APPSTATE [4] loadGlobalParticipants Try Start');
      debugPrint('[AppState] Starting Sequential Global Participants Loading...');
      _globalParticipants = await DialogueRepository.getAllUniqueParticipants();
      debugPrint('>>> APPSTATE [5] Unique Participants fetched: ${_globalParticipants.length}');
      
      await _ensureDefaultParticipants();
      debugPrint('>>> APPSTATE [6] Default Participants ensured.');
      
    } catch (e) {
      debugPrint('[AppState] Global Participants Loading Error: $e');
    } finally {
      _globalParticipantsLoading = false;
      debugPrint('[AppState] Global Participants Loading Finished. Guard Disconnected.');
      notifyListeners();
    }
  }

  /// 기본 참가자('나', 'AI')가 없으면 자동 생성
  Future<void> _ensureDefaultParticipants() async {
    // Phase 10 Debug: 이름('나', 'AI')까지 확인하여 확실하게 생성 보장
    final hasUserMe = _globalParticipants.any((p) => p.role == 'user' && p.name == '나');
    final hasAiBot = _globalParticipants.any((p) => (p.role == 'ai' || p.role == 'assistant') && p.name == 'AI');

    if (!hasUserMe) {
      debugPrint('[AppState] Creating default user: 나');
      final user = ChatParticipant(
        id: const Uuid().v4(),
        dialogueId: '',
        name: '나',
        role: 'user',
        gender: _chatUserGender,
        langCode: _sourceLang,
      );
      await DialogueRepository.insertParticipant(user.toJson());
      _globalParticipants.insert(0, user);
    }
    
    if (!hasAiBot) {
      debugPrint('[AppState] Creating default AI: AI');
      final ai = ChatParticipant(
        id: const Uuid().v4(),
        dialogueId: '',
        name: 'AI',
        role: 'ai',
        gender: _chatAiGender,
        langCode: _targetLang,
      );
      await DialogueRepository.insertParticipant(ai.toJson());
      _globalParticipants.add(ai);
    }

    // 레거시 'assistant' 역할 정규화
    final assistantIndex = _globalParticipants.indexWhere((p) => p.role == 'assistant');
    if (assistantIndex != -1) {
      final legacyAi = _globalParticipants[assistantIndex];
      final updatedAi = legacyAi.copyWith(role: 'ai');
      await DialogueRepository.updateParticipant(updatedAi.id, {'role': 'ai'});
      _globalParticipants[assistantIndex] = updatedAi;
    }
  }

  Future<void> addGlobalParticipant(ChatParticipant participant) async {
    await DialogueRepository.insertParticipant({
      'id': participant.id,
      'name': participant.name,
      'role': participant.role,
      'gender': participant.gender,
      'lang_code': participant.langCode,
    });
    await loadGlobalParticipants();
  }

  Future<void> updateGlobalParticipant(ChatParticipant participant) async {
    await DialogueRepository.updateParticipant(participant.id, {
      'id': participant.id,
      'name': participant.name,
      'role': participant.role,
      'gender': participant.gender,
      'lang_code': participant.langCode,
    });
    await loadGlobalParticipants();
  }

  Future<void> deleteGlobalParticipant(String id) async {
    await DialogueRepository.deleteParticipant(id);
    await loadGlobalParticipants();
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
    
    if (mode == 0) {
      loadStudyRecords();
    } else if (mode == 1) {
      loadStudyMaterials(); 
      loadRecordsByTags();
    } else if (mode == 2) {
      loadStudyMaterials();
      _practiceWordsOnly = false;
    } else if (mode == 3) {
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

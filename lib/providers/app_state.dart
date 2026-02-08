import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async'; // Added for Timer
import 'package:sqflite/sqflite.dart'; // Added for Database/Transaction types
import '../services/database_service.dart';
import '../services/translation_service.dart';
import '../services/speech_service.dart';
import '../constants/language_constants.dart';
import '../services/usage_service.dart';
import '../models/sentence.dart';
import '../models/user_library.dart';
import '../models/dialogue_group.dart';
import '../models/chat_participant.dart'; // Phase 70
import 'package:uuid/uuid.dart'; // Phase 70
import 'dart:math'; // Phase 70
import 'package:flutter/material.dart'; // For Colors

import '../services/supabase_service.dart';
import '../l10n/app_localizations.dart';

/// App-wide state management for Talkie
class AppState extends ChangeNotifier {
  // Services
  final SpeechService _speechService = SpeechService();
  final UsageService _usageService = UsageService();

  SharedPreferences? _prefs;

  AppState(this._prefs) {
    _initSettings();
  }

  // Predefined categories for UI Dropdowns
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

  void _initSettings() {
    // Synchronous initialization from already-loaded prefs
    final savedSource = _prefs?.getString('sourceLang');
    final savedTarget = _prefs?.getString('targetLang');

    if (savedSource != null && savedSource.isNotEmpty) {
      _sourceLang = savedSource;
    }
    if (savedTarget != null && savedTarget.isNotEmpty) {
      _targetLang = savedTarget;
      _selectedReviewLanguage = savedTarget; // Sync review filter
    } else {
      // Default to English if no target language saved
      _targetLang = 'en';
      _selectedReviewLanguage = 'en';
    }
    
    // Chat Gender Settings
    _chatUserGender = _prefs?.getString('chatUserGender') ?? 'male';
    _chatAiGender = _prefs?.getString('chatAiGender') ?? 'female';
  }

  Future<void> _saveSettings() async {
    await _prefs?.setString('sourceLang', _sourceLang);
    await _prefs?.setString('targetLang', _targetLang);
    await _prefs?.setString('chatUserGender', _chatUserGender);
    await _prefs?.setString('chatAiGender', _chatAiGender);
  }

  
  // Current mode: 0 = 검색, 1 = 복습/학습, 2 = 말하기
  int _currentMode = 0;
  
  // Mode 1 (검색) State
  String _sourceText = '';
  String _translatedText = '';
  String _englishText = ''; // Phase 76: English pivot for shared dictionary
  String _sourceLang = 'ko';
  String _targetLang = 'en'; // Changed default from 'ja' to 'en'
  bool _isListening = false;
  bool _isTranslating = false;
  bool _isSpeaking = false;
  bool _isSaved = false; // Track if current translation is saved
  String _note = ''; // Note for ambiguous translations
  bool _isWordMode = true; // Toggle between Word and Sentence mode (Default: Word)
  String _sourcePos = ''; // 품사 (Verb, Noun 등)
  String _sourceFormType = ''; // 문법 형태 (Past, Comparative 등)
  String _sourceRoot = ''; // 단어 원형 (Go, Apple 등)
  String _statusMessage = ''; // Status message for UI feedback
  
  // Getter for status message
  String get statusMessage => _statusMessage;
  
  // Phase X: AI Detected Tags
  List<String> _aiDetectedTags = [];
  List<String> get aiDetectedTags => _aiDetectedTags;
  
  // Chat Voice Settings
  String _chatUserGender = 'male'; 
  String _chatAiGender = 'female';
  
  String get chatUserGender => _chatUserGender;
  String get chatAiGender => _chatAiGender;

  void setChatUserGender(String gender) {
    _chatUserGender = gender;
    _saveSettings();
    notifyListeners();
  }

  void setChatAiGender(String gender) {
    _chatAiGender = gender;
    _saveSettings();
    notifyListeners();
  }
  
  // Duplicate detection & translation reuse state
  List<Map<String, dynamic>> _similarSources = [];
  int? _selectedSourceId; // null = new entry
  bool _showDuplicateDialog = false;
  bool _duplicateCheckTriggered = false; // Flag to prevent repeated checks
  
  // Disambiguation State
  List<String> _disambiguationOptions = [];
  bool _showDisambiguationDialog = false; // Trigger UI dialog
  
  // Mode 2 (복습) State
  List<Map<String, dynamic>> _studyRecords = [];
  String _selectedReviewLanguage = 'en'; // Filter by target language, default 'en'
  
  // Online Materials State (Phase 75.9 Polish)
  List<Map<String, dynamic>> _onlineMaterials = [];
  bool _isLoadingOnlineMaterials = false;
  List<Map<String, dynamic>> get onlineMaterials => _onlineMaterials;
  bool get isLoadingOnlineMaterials => _isLoadingOnlineMaterials;
  
  // Mode 2 (학습 자료 & 복습) State
  List<Map<String, dynamic>> _studyMaterials = []; // Available study materials (Legacy)
  List<String> _availableTags = []; // 신규 태그 목록
  List<String> _selectedTags = []; // 현재 선택된 태그 필터
  int? _filterLimit; // Phase 59
  String? _filterStartsWith; // Phase 59

  // Getters
  int? get selectedMaterialId => _selectedMaterialId;
  List<String> get availableTags => _availableTags;
  List<String> get selectedTags => _selectedTags;
  int? get filterLimit => _filterLimit;
  String? get filterStartsWith => _filterStartsWith;
  int? _selectedMaterialId; // Currently selected material (Legacy/Backward compatibility)
  List<Map<String, dynamic>> _materialRecords = []; // Sentences in selected tags/material
  Set<int> _studiedTranslationIds = {}; // Reviewed items in current session
  String _recordTypeFilter = 'word'; // Default: Word, 'all' removed for standard modes
  String _searchQuery = ''; // 검색어 필터
  bool _showMemorized = false; // 외운 카드 포함 여부 (기본: 숨김)

  // Phase 11: Dialogue / Chat State
  String? _activeDialogueId;
  String? _activeDialogueTitle;
  String? _activeDialogueLocation;
  String? _activePersona; // Tracks current chat partner
  String? _activePersonaGender; // Phase 75.8
  String? get activePersonaGender => _activePersonaGender;
  int _currentDialogueSequence = 0;
  List<DialogueGroup> _dialogueGroups = [];
  
  List<String> _suggestedTitles = [];
  bool _isFetchingTitles = false;
  String _currentChatLocation = '';


  // Getters
  int get currentMode => _currentMode;
  String get sourceText => _sourceText;
  String get translatedText => _translatedText;
  String get sourceLang => _sourceLang;
  String get targetLang => _targetLang;
  bool get isListening => _isListening;
  bool get isTranslating => _isTranslating;
  bool get isSpeaking => _isSpeaking;
  bool get isSaved => _isSaved;

  // PageController for Swipe Navigation (Phase 8)
  PageController? _pageController;
  void setPageController(PageController controller) {
    _pageController = controller;
  }
  String get note => _note;
  bool get isWordMode => _isWordMode;
  List<Map<String, dynamic>> get studyRecords => _studyRecords;
  List<Map<String, dynamic>> get similarSources => _similarSources;
  int? get selectedSourceId => _selectedSourceId;
  bool get showDuplicateDialog => _showDuplicateDialog;
  String get selectedReviewLanguage => _selectedReviewLanguage;

  // Disambiguation Getters
  List<String> get disambiguationOptions => _disambiguationOptions;
  bool get showDisambiguationDialog => _showDisambiguationDialog;

  void closeDisambiguationDialog() {
    _showDisambiguationDialog = false;
    notifyListeners();
  }
  
  void selectDisambiguationOption(String option) {
    _note = option;
    _showDisambiguationDialog = false;
    notifyListeners();
  }

  void setNote(String value) {
    _note = value;
    notifyListeners();
  }
  
  void setWordMode(bool value) {
    _isWordMode = value;
    // Sync with Mode 2/3 filter
    _recordTypeFilter = value ? 'word' : 'sentence';
    notifyListeners();
  }

  

  String get searchQuery => _searchQuery;
  bool get showMemorized => _showMemorized;

  // Phase 11 Getters
  String? get activeDialogueId => _activeDialogueId;
  String? get activeDialogueTitle => _activeDialogueTitle;
  String? get activeDialogueLocation => _activeDialogueLocation;
  String? get activePersona => _activePersona;
  List<String> get suggestedTitles => _suggestedTitles;
  bool get isFetchingTitles => _isFetchingTitles;
  String get currentChatLocation => _currentChatLocation;
  String get sourcePos => _sourcePos;
  String get sourceFormType => _sourceFormType;
  String get sourceRoot => _sourceRoot;
  
  void setSourcePos(String value) { _sourcePos = value; notifyListeners(); }
  void setSourceFormType(String value) { 
    _sourceFormType = value; 
    if (!_isWordMode) _applyAutoPunctuation();
    notifyListeners(); 
  }
  void setSourceRoot(String value) { _sourceRoot = value; notifyListeners(); }

  /// 언어별/문장종류별 문장 부호 자동 삽입 (Phase 30)
  void _applyAutoPunctuation() {
    if (_sourceText.trim().isEmpty) return;

    String text = _sourceText.trim();
    final lang = _sourceLang.toLowerCase();

    // 1. 기존 문장 부호 제거 (앞/뒤)
    // 뒤쪽 부호 제거: . ? ! ; 。 ？ ！
    text = text.replaceFirst(RegExp(r'[.?!;。？！]+$'), '');
    // 스페인어 전용 앞쪽 부호 제거: ¿ ¡
    if (lang == 'es') {
      text = text.replaceFirst(RegExp(r'^[¿¡]+'), '');
    }

    // 2. 새로운 부호 결정
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
          suffix = ';'; // 그리스어 물음표
        } else if (['ja', 'zh-cn', 'zh-tw'].contains(lang)) {
          suffix = '？'; // 전각 물음표
        } else if (['ar', 'fa', 'ur'].contains(lang)) {
          suffix = '؟'; // RTL 물음표
        } else {
          suffix = '?';
        }
        break;
      case 'Exclamation':
        if (lang == 'es') {
          prefix = '¡';
          suffix = '!';
        } else if (['ja', 'zh-cn', 'zh-tw'].contains(lang)) {
          suffix = '！'; // 전각 느낌표
        } else {
          suffix = '!';
        }
        break;
      default:
        // 처리할 수 없는 종류는 부호 없이 반환
        return;
    }

    _sourceText = prefix + text + suffix;
  }
  
  // Usage / Quota Methods
  Future<void> checkUsageLimit() async => await _usageService.checkLimitOrThrow();
  Future<void> incrementUsage() async => await _usageService.incrementUsage();
  Future<int> getRemainingUsage() async => await _usageService.getRemainingCount();
  List<DialogueGroup> get dialogueGroups => _dialogueGroups;
  
  /// Search for similar source texts
  Future<void> searchSimilarSources(String text) async {
    _duplicateCheckTriggered = true;
    
    // 자동 완성을 위해 최소 1글자 이상일 때만 검색 실행 (너무 빈번한 호출 방지)
    if (text.trim().length < 1) {
      _similarSources = [];
      _showDuplicateDialog = false;
      notifyListeners();
      return;
    }

    try {
      // Phase 31: 시작 문구 기반의 자동 완성 검색으로 로직 변경
      final results = await DatabaseService.searchAutocompleteText(_sourceLang, text);
      _similarSources = results;
      
      // 입력창 근처에 목록을 띄우기 위해 상태 업데이트
      _showDuplicateDialog = false; // 자동 완성에서는 다이얼로그 대신 목록 UI 사용 예정
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Error searching similar sources: $e');
      _similarSources = [];
      notifyListeners();
    }
  }
  
  
  /// Check if translation exists, including note check
  Future<void> _checkDuplicate() async {
    if (_selectedSourceId == null) return;
    
    // Check if translation exists with same note
    final existing = await DatabaseService.getTranslationIfExists(
      _sourceLang, 
      _selectedSourceId!, 
      _targetLang, 
      note: _note
    );
    
    if (existing != null) {
      // Restore existing translation
      _translatedText = existing['target_text'];
      _isSaved = true; // Mark as saved since it exists
      
      // If note differs (was null vs empty?), update UI note?
      if (existing['note'] != null) {
        _note = existing['note'];
      }
      
      _statusMessage = 'Saved translation found.';
    } else {
       _isSaved = false;
    }
    notifyListeners();
  }
  
  
  void selectSource(Map<String, dynamic> source) {
    _selectedSourceId = source['id'] as int;
    _sourceText = source['text'] as String;
    
    // Reset translation state for new source selection? 
    // Or check if translation exists for this source + current note?
    // Let's trigger check.
    _duplicateCheckTriggered = false;
    _checkDuplicate(); 
    
    notifyListeners();
  }

  // ... (rest of the file)
  
  // Mode 2 Getters
  List<Map<String, dynamic>> get studyMaterials => _studyMaterials;

  List<Map<String, dynamic>> get materialRecords => _materialRecords;
  Set<int> get studiedTranslationIds => _studiedTranslationIds;
  String get recordTypeFilter => _recordTypeFilter;

  /// Get the name of the currently selected material set
  String get selectedMaterialName {
    if (_selectedMaterialId == null || _selectedMaterialId == 0) {
      return 'Basic'; // Or localized '기본'
    }
    final material = _studyMaterials.firstWhere(
      (m) => m['id'] == _selectedMaterialId,
      orElse: () => {'title': 'Unknown'},
    );
    return material['title'] as String? ?? 'Basic';
  }

  /// Get material records filtered by type (Word/Sentence) and memorized status
  List<Map<String, dynamic>> get filteredMaterialRecords {
    return _materialRecords.where((r) {
      // 1. 유형 필터 (Word/Sentence)
      if (_recordTypeFilter != 'all') {
        final type = r['type'] as String? ?? 'sentence';
        if (type != _recordTypeFilter) return false;
      }

      // 2. 학습 완료(외운 항목) 필터 (Phase 33)
      // showMemorized가 false(숨김)일 때, 이미 외운 항목은 제외
      if (!_showMemorized) {
        final isMemorized = r['is_memorized'] == true;
        if (isMemorized) return false;
      }

      return true;
    }).toList();
  }

  /// Get study materials filtered by current source/target languages AND record type
  List<Map<String, dynamic>> get filteredStudyMaterials {
    return _studyMaterials.where((material) {
      final id = material['id'] as int;
      if (id == 0) return true; // Always show default (Basic)

      final mSource = material['source_language'] as String;
      final mTarget = material['target_language'] as String;

      // 1. Language Check
      final langMatch = (mSource == _sourceLang && mTarget == _targetLang) ||
             (mSource == _targetLang && mTarget == _sourceLang) ||
             (mSource == 'auto' && mTarget == 'auto');
             
      if (!langMatch) return false;

      // 2. Type Check (Word/Sentence)
      if (_recordTypeFilter == 'word') {
        final count = material['word_count'] as int? ?? 0;
        if (count == 0) return false;
      } else if (_recordTypeFilter == 'sentence') {
        final count = material['sentence_count'] as int? ?? 0;
        if (count == 0) return false;
      }
      
      return true;
    }).toList();
  }

  /// Get study materials specifically for Mode 1 (Save Target Selection)
  /// Matches the 'Word/Sentence' toggle state.
  List<Map<String, dynamic>> get mode1StudyMaterials {
    return _studyMaterials.where((material) {
      final id = material['id'] as int;
      if (id == 0) return true; // Always show Basic

      final wordCount = material['word_count'] as int? ?? 0;
      final sentenceCount = material['sentence_count'] as int? ?? 0;
      final totalCount = wordCount + sentenceCount;

      // Show if material contains the selected type OR is empty
      if (_isWordMode) {
        // Word Mode: Show if has words or empty
        return wordCount > 0 || totalCount == 0;
      } else {
        // Sentence Mode: Show if has sentences or empty
        return sentenceCount > 0 || totalCount == 0;
      }
    }).toList();
  }
  
  // Language display names (Dynamic)
  // ALWAYS return English names as per user request to ensure readability
  Map<String, String> get languageNames => 
      LanguageConstants.getLanguageMap('en');

  
  // ==========================================
  // Mode Switching
  // ==========================================
  
  void switchMode(int mode, {bool fromPage = false}) {
    if (_currentMode == mode && !fromPage) return; // Only return if mode is same AND not from page swipe
    
    _currentMode = mode;
    
    // Sync PageController if changed from non-page source (Drawer)
    if (!fromPage && _pageController != null) {
      _pageController!.animateToPage(
        mode, 
        duration: const Duration(milliseconds: 300), 
        curve: Curves.easeInOut
      );
    }

    // Phase 11: AI Chat Mode (Mode index 4 - proposed or just a new screen?)
    // If we are adding a new mode for Chat, we handle it here.
    // For now, let's assume we might add a drawer item or special button to start chat.

    // Reset transient state
    _statusMessage = '';
    _isListening = false;
    _speechService.stopSTT();
    _speechService.stopSpeaking();
    
    if (mode == 1) {
      // 복습 모드 (Mode 2)
      if (_recordTypeFilter == 'all') _recordTypeFilter = 'word';
      loadRecordsByTags(); 
    } else if (mode == 2) {
      // 발음 연습 모드 (Mode 3)
      if (_recordTypeFilter == 'all') _recordTypeFilter = 'word';
      loadRecordsByTags();
    } else if (mode == 3) {
      // AI 채팅 모드
      _recordTypeFilter = 'all'; 
      loadStudyMaterials();
    }
    
    notifyListeners();
  }
  
  // ==========================================
  // Mode 1: Search (STT → Translation → TTS)
  // ==========================================
  
  /// Start speech-to-text
  Future<void> startListening({String? languageCode}) async {
    _isListening = true;
    notifyListeners(); // Update UI immediately

    try {
      await _speechService.startSTT(
        lang: _getServiceLocale(languageCode ?? _sourceLang),
        onResult: (text, isFinal, alternates) {
          setSourceText(text); // Update source text
          
          if (isFinal) {
             _isListening = false;
             notifyListeners();
             // Auto-translate logic can be here if desired
          }
        },
        listenFor: const Duration(seconds: 30),
        pauseFor: const Duration(seconds: 3),
      );
    } catch (e) {
      _statusMessage = '음성 인식 실패: $e';
      _isListening = false;
      notifyListeners();
    }
  }
  
  /// Stop speech-to-text
  void stopListening() {
    _speechService.stopSTT();
    _isListening = false;
    _statusMessage = '';
    notifyListeners();
  }
  
  
  /// User selects an existing source record
  void selectExistingSource(int sourceId, String sourceText) {
    _selectedSourceId = sourceId;
    _sourceText = sourceText;
    _showDuplicateDialog = false;
    notifyListeners();
  }
  
  /// User chooses to create a new source entry
  void createNewSource() {
    _selectedSourceId = null;
    _showDuplicateDialog = false;
    _duplicateCheckTriggered = true; // Skip check since user explicitly chose new
    notifyListeners();
    // Auto-resume translation
    translate();
  }
  
  /// Close duplicate dialog
  void closeDuplicateDialog() {
    _showDuplicateDialog = false;
    notifyListeners();
  }
  
  
  /// Translate text with duplicate detection and reuse
  /// Returns an error string if validation fails, or null if successful/loaded.
  Future<String?> translate({BuildContext? context}) async {
    if (_sourceText.isEmpty) {
      _statusMessage = '번역할 텍스트를 입력하세요';
      notifyListeners();
      return null;
    }
    
    try {
      _isTranslating = true;
      _statusMessage = '확인 중...';
      _showDisambiguationDialog = false;
      _disambiguationOptions = [];
      _showDuplicateDialog = false;
      notifyListeners();

      // 0. Check Limits (NEW)
      await _usageService.checkLimitOrThrow();
      
      // 0. Duplicate Check (Triggered ONLY once per text change)
      if (_selectedSourceId == null && !_duplicateCheckTriggered) {
        await searchSimilarSources(_sourceText);
        
        if (_similarSources.isNotEmpty) {
          _isTranslating = false;
          _duplicateCheckTriggered = true; 
          _statusMessage = '유사한 문장이 발견되었습니다';
          notifyListeners();
          return null; 
        }
      }

      // 1. Save or reuse source text
      int? sourceId;
      if (_selectedSourceId != null) {
        sourceId = _selectedSourceId!;
        debugPrint('[AppState] Reusing existing source: id=$sourceId');
      } else {
        // Phase 58: Prevent Orphaned Save. Check existence only.
        // sourceId = await DatabaseService.insertLanguageRecord(_sourceLang, _sourceText);
        sourceId = await DatabaseService.getLanguageRecordId(_sourceLang, _sourceText);
        if (sourceId != null) {
          _selectedSourceId = sourceId;
          debugPrint('[AppState] Found existing source: id=$sourceId');
        } else {
          debugPrint('[AppState] New source text (Not saved yet)');
        }
      }
      
      // 2. Check if translation already exists
      _statusMessage = '번역 확인 중...';
      notifyListeners();
      
      final existingTranslation = (sourceId != null) 
        ? await DatabaseService.getTranslationIfExists(
            _sourceLang,
            sourceId,
            _targetLang,
            note: _note
          ) 
        : null;
      
      if (existingTranslation != null) {
        final loadedText = existingTranslation['target_text'] as String;
        // Check for 'poisoned' cache (old error messages saved as text)
        if (!loadedText.startsWith('Filtered:') && !loadedText.startsWith('Error:')) {
          _translatedText = loadedText;
          _isTranslating = false;
          _statusMessage = '저장된 번역 불러옴';
          notifyListeners();
          return null;
        }
        debugPrint('[AppState] Invalid DB record ignored: $loadedText');
      }
      
      // 3. Translation doesn't exist - call API
      _statusMessage = '번역 중...';
      notifyListeners();
      
      final result = await TranslationService.translate(
        text: _sourceText,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
        note: _note.isNotEmpty ? _note : null,
      );
      
      // Handle Success or Failure
      final isValid = result['isValid'] as bool? ?? false;
      
      if (!isValid) {
        // Handle Error Logic with Localization
        final reason = result['reason'] as String? ?? 'OTHER';
        String errorMsg = reason;
        
        if (context != null) {
          final l10n = AppLocalizations.of(context);
          if (l10n != null) {
            switch (reason) {
              case 'PROFANITY':
                errorMsg = l10n.errorProfanity;
                break;
              case 'HATE_SPEECH':
                errorMsg = l10n.errorHateSpeech;
                break;
              case 'SEXUAL':
                errorMsg = l10n.errorSexualContent;
                break;
              case 'OTHER':
              default:
                // If it's a descriptive sentence (e.g., in Korean), use it directly
                // Standard internal codes start with uppercase or "Error:"
                if (reason.startsWith('Error:')) {
                  errorMsg = reason;
                } else if (reason.length > 20 || reason.contains(' ')) {
                   // This is likely the AI's descriptive NATIVE language reason
                   errorMsg = reason;
                } else {
                  errorMsg = l10n.errorOtherSafety;
                }
                break;
            }
          }
        }
        
        // Return error message for UI to display in dialog
        // DO NOT set _translatedText to error message
        _translatedText = ''; // Clear result to disable Save button
        _statusMessage = '번역 거부';
        _isTranslating = false;
        _isSaved = false;
        notifyListeners();
        return errorMsg;
      }

      _translatedText = result['text'] as String;
      // Phase 76: Store English pivot for shared dictionary linking
      _englishText = result['englishText'] as String? ?? '';
      
      // Handle Note / Disambiguation
      final autoNote = result['note'] as String?;
      final options = result['disambiguationOptions'] as List<String>?;
      
      if (options != null && options.isNotEmpty) {
        _disambiguationOptions = options;
        _showDisambiguationDialog = true;
        _note = ''; 
        if (autoNote != null) {
          _note = autoNote;
        }
      }

      // 4. AI 분석 결과 저장 (신설)
      // 4. AI 분석 결과 처리 (User Input 검증 및 별도 태그 처리)
      // Phase X: User Input Priority Logic
      final rawPos = result['pos'] as String? ?? '';
      final rawForm = result['formType'] as String? ?? '';
      final rawRoot = result['root'] as String? ?? '';

      // POS: Only fill if empty AND valid
      if (_sourcePos.isEmpty && AppState.posCategories.contains(rawPos)) {
        _sourcePos = rawPos;
      }

      // FormType: Check validity
      bool isValidForm = AppState.sentenceCategories.contains(rawForm) ||
                         AppState.verbFormCategories.contains(rawForm) ||
                         AppState.adjectiveFormCategories.contains(rawForm) ||
                         AppState.pronounCaseCategories.contains(rawForm);

      if (_sourceFormType.isEmpty && isValidForm) {
        _sourceFormType = rawForm;
      } else if (!isValidForm && rawForm.toLowerCase() == 'formal') {
        // Special Case: 'formal' -> Add to specialized tags, don't clobber FormType
        if (!_aiDetectedTags.contains('formal')) {
          _aiDetectedTags.add('formal');
        }
      }
      
      // Root: Only fill if empty
      if (_sourceRoot.isEmpty) {
        _sourceRoot = rawRoot;
      }
      
      // 5. Increment Usage (NEW)
      await _usageService.incrementUsage();
      
      // Auto-save translation (will be called in saveTranslation method)
      _isTranslating = false;
      _statusMessage = '번역 완료 (저장 필요)';
      _isSaved = false; // Reset save state for new translation
      notifyListeners();
    } catch (e) {
      _isTranslating = false;
      if (e is LimitReachedException) {
        _statusMessage = '일일 번역 한도 초과';
        debugPrint('[AppState] Limit reached: $e');
        // We rethrow so the UI can catch it and show the dialog
        rethrow;
      } else {
        _statusMessage = '번역 실패: $e';
      }
      notifyListeners();
      rethrow;
    }
    return null;
  }
  
  /// Helper to save to Supabase (Extracted for Dual Write)
  Future<void> _saveToSupabase({
    required String? dialogueId, 
    required String speaker, 
    required int sequenceOrder,
    String? pos,
    String? formType,
    String? root,
  }) async {
      final authorId = SupabaseService.client.auth.currentUser?.id;

      if (authorId == null) return;

      try {
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        
        // 1. Save Source
        await SupabaseService.client.from('sentences').insert({
          'lang_code': _targetLang,
          'text': _translatedText,
          'group_id': timestamp,
          'pos': pos,
          'form_type': formType,
          'root': root,
          'author_id': authorId,
          'status': 'approved',
        });

        // 2. Add to User Library (With Dialogue Metadata)
        await SupabaseService.client.from('user_library').insert({
          'user_id': authorId,
          'group_id': timestamp,
          'personal_note': _note.isNotEmpty ? _note : null,
          'dialogue_id': dialogueId,
          'speaker': speaker,
          'sequence_order': sequenceOrder,
        });

        debugPrint('[AppState] Supabase Cloud Sync Successful: groupId=$timestamp, dialogueId=$dialogueId');
      } catch (e) {
        debugPrint('[AppState] Supabase background save failed: $e');
      }
  }

  /// Save translation (Dual Write: Local DB Unified + Supabase)
  Future<void> saveTranslation({List<String>? tags}) async {
    if (_translatedText.isEmpty) {
      _statusMessage = '저장할 번역이 없습니다';
      notifyListeners();
      return;
    }
    
    _statusMessage = '저장 중...';
    notifyListeners();

    try {
      final db = await DatabaseService.database;
      
      // Phase 77: Pivot Strategy (Manual Input)
      // If we have an English translation (Pivot), try to find an existing Group ID
      int? pivotGroupId;
      if (_englishText.isNotEmpty) {
          pivotGroupId = await DatabaseService.findGroupIdByText(_englishText, 'en');
      } 
      // Fallback: Check source text if it is English
      if (pivotGroupId == null && _sourceLang == 'en') {
          pivotGroupId = await DatabaseService.findGroupIdByText(_sourceText, 'en');
      }
       // Fallback: Check target text if it is English
      if (pivotGroupId == null && _targetLang == 'en') {
          pivotGroupId = await DatabaseService.findGroupIdByText(_translatedText, 'en');
      }
      
      final timestamp = pivotGroupId ?? DateTime.now().millisecondsSinceEpoch;
      final createdAt = DateTime.now().toIso8601String();

      // 1. Local Save (Unified Schema)
      await db.transaction((txn) async {
        // 단어/문장 테이블 삽입
        final table = _isWordMode ? 'words' : 'sentences';
        
        // Source
        final sourceId = await txn.insert(table, {
          'group_id': timestamp,
          'text': _sourceText,
          'lang_code': _sourceLang,
          'pos': _sourcePos.isNotEmpty ? _sourcePos : null, // Added Phase 13
          'form_type': _sourceFormType.isNotEmpty ? _sourceFormType : null, // Added Phase 13
          'root': _sourceRoot.isNotEmpty ? _sourceRoot : null,
          'note': _note.isNotEmpty ? _note : null,
          'is_memorized': 0, // 신규 저장 시 학습 미완료로 명시적 설정
          'created_at': createdAt,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        // Target
        final targetId = await txn.insert(table, {
          'group_id': timestamp,
          'text': _translatedText,
          'lang_code': _targetLang,
          'is_memorized': 0, // 신규 저장 시 학습 미완료로 명시적 설정
          'created_at': createdAt,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        // Phase 76: English Pivot (for shared dictionary linking)
        // Store English translation if not already source/target language
        if (_englishText.isNotEmpty && _sourceLang != 'en' && _targetLang != 'en') {
          await txn.insert(table, {
            'group_id': timestamp,
            'text': _englishText,
            'lang_code': 'en',
            'is_memorized': 0,
            'created_at': createdAt,
          }, conflictAlgorithm: ConflictAlgorithm.ignore);
        }

        // 번역 연결 테이블
        if (_isWordMode) {
          await txn.insert('word_translations', {
            'source_word_id': sourceId > 0 ? sourceId : (await _getUnifiedId(txn, 'words', _sourceText, _sourceLang, _note)),
            'target_word_id': targetId > 0 ? targetId : (await _getUnifiedId(txn, 'words', _translatedText, _targetLang, null)),
          }, conflictAlgorithm: ConflictAlgorithm.ignore);
        } else {
          await txn.insert('sentence_translations', {
            'source_sentence_id': sourceId > 0 ? sourceId : (await _getUnifiedId(txn, 'sentences', _sourceText, _sourceLang, _note)),
            'target_sentence_id': targetId > 0 ? targetId : (await _getUnifiedId(txn, 'sentences', _translatedText, _targetLang, null)),
          }, conflictAlgorithm: ConflictAlgorithm.ignore);
        }

        // 태그 등록
        final itemType = _isWordMode ? 'word' : 'sentence';
        final finalTags = tags ?? [];
        if (_activeDialogueId != null) finalTags.add('Dialogue');
        
        for (var tag in finalTags) {
          await txn.insert('item_tags', {
            'item_id': sourceId > 0 ? sourceId : (await _getUnifiedId(txn, table, _sourceText, _sourceLang, _note)),
            'item_type': itemType,
            'tag': tag,
          }, conflictAlgorithm: ConflictAlgorithm.ignore);
          
          await txn.insert('item_tags', {
            'item_id': targetId > 0 ? targetId : (await _getUnifiedId(txn, table, _translatedText, _targetLang, null)),
            'item_type': itemType,
            'tag': tag,
          }, conflictAlgorithm: ConflictAlgorithm.ignore);
        }
      });

      debugPrint('[AppState] Local unified save successful');
      
      // 2. Supabase Save (Cloud Sync)
      try {
        await _saveToSupabase(
          dialogueId: _activeDialogueId,
          speaker: _activeDialogueId != null ? 'User' : '',
          sequenceOrder: _activeDialogueId != null ? _currentDialogueSequence : 0,
          pos: _sourcePos,
          formType: _sourceFormType,
          root: _sourceRoot,
        );
      } catch (e) {
        debugPrint('[AppState] Supabase Cloud Sync failed: $e');
      }

      // 3. Phase 58: Backfill Legacy Cache (Since we skipped it in translate)
      // This ensures 'reuse' works for future 'translate' calls on this word.
      try {
        final cachedSourceId = await DatabaseService.insertLanguageRecord(_sourceLang, _sourceText);
        final cachedTargetId = await DatabaseService.insertLanguageRecord(_targetLang, _translatedText);
        
        await DatabaseService.saveTranslationLink(
          sourceLang: _sourceLang,
          sourceId: cachedSourceId,
          targetLang: _targetLang,
          targetId: cachedTargetId,
          materialId: _selectedMaterialId ?? 0,
          note: _note
        );
        debugPrint('[AppState] Legacy cache backfilled for reuse');
      } catch (e) {
         debugPrint('[AppState] Legacy cache backfill failed: $e');
      }

      _statusMessage = '저장 완료!';
      _isSaved = true; 
      
      // Refresh Lists Immediately
      await loadTags(); // 가용 태그 목록 갱신
      await loadRecordsByTags(); // 통합 목록(복습/연습 모드 데이터) 즉시 갱신
      
      notifyListeners();
    } catch (e) {
      _statusMessage = '저장 실패: $e';
      notifyListeners();
      debugPrint('[AppState] Error saving translation: $e');
    }
  }

  /// 동일 텍스트 아이디 조회 헬퍼
  Future<int> _getUnifiedId(Transaction txn, String table, String text, String lang, String? note) async {
    final results = await txn.query(table, columns: ['id'], 
        where: 'text = ? AND lang_code = ? AND IFNULL(note, "") = ?', 
        whereArgs: [text, lang, note ?? ""]);
    if (results.isNotEmpty) return results.first['id'] as int;
    return 0;
  }


  
  /// Speak translated text with audio storage
  Future<void> speak() async {
    if (_translatedText.isEmpty) {
      _statusMessage = '재생할 텍스트가 없습니다';
      notifyListeners();
      return;
    }
    
    try {
      _isSpeaking = true;
      _statusMessage = '재생 중...';
      notifyListeners();
      
      // Check if audio file exists in database
      // Note: TTS audio storage is complex and platform-dependent
      // For now, we'll just play TTS directly
      // Future enhancement: Record TTS output and save to database
      
      await _speechService.speak(
        _translatedText,
        lang: _getServiceLocale(_targetLang),
      );
      
      _isSpeaking = false;
      _statusMessage = ''; // Clear status message instead of showing 'playback complete'
      notifyListeners();
    } catch (e) {
      _isSpeaking = false;
      _statusMessage = '재생 실패: $e';
      notifyListeners();
    }
  }
  
  /// Stop speaking
  Future<void> stopSpeaking() async {
    await _speechService.stopSpeaking();
    _isSpeaking = false;
    _statusMessage = '';
    notifyListeners();
  }


  
  // ==========================================
  // Mode 2: Review
  // ==========================================
  
  /// Load all study records from Supabase
  Future<void> loadStudyRecords() async {
    try {
      final userId = SupabaseService.client.auth.currentUser?.id;
      if (userId == null) {
        _studyRecords = [];
        notifyListeners();
        return;
      }

      // 1. Fetch User's Library (Groups)
      final libraryResponse = await SupabaseService.client
          .from('user_library')
          .select()
          .eq('user_id', userId)
          .order('created_at', ascending: false);

      final libraryEntries = (libraryResponse as List).map((e) => UserLibrary.fromJson(e)).toList();
      
      if (libraryEntries.isEmpty) {
        _studyRecords = [];
        notifyListeners();
        return;
      }

      // 2. Fetch Sentences for these groups
      final groupIds = libraryEntries.map((e) => e.groupId).toList();
      
      final sentencesResponse = await SupabaseService.client
          .from('sentences')
          .select()
          .filter('group_id', 'in', groupIds);
          
      final allSentences = (sentencesResponse as List).map((e) => Sentence.fromJson(e)).toList();

      // 3. Assemble Data (Map UserLibrary + Source Sentence + Target Sentence)
      // UI expects: { id, source_text, target_text, review_count, etc. }
      // We filter by _selectedReviewLanguage for the Target
      
      List<Map<String, dynamic>> combinedRecords = [];
      
      for (var entry in libraryEntries) {
        // Find sentences for this group
        final groupSentences = allSentences.where((s) => s.groupId == entry.groupId).toList();
        
        // Identify Source and Target
        // Source: _sourceLang (e.g. 'ko')
        // Target: _selectedReviewLanguage (e.g. 'en')
        
        final sourceSentence = groupSentences.firstWhere(
          (s) => s.langCode == _sourceLang,
          orElse: () => Sentence(id: -1, groupId: -1, langCode: 'unknown', text: 'Unknown', createdAt: DateTime.now()),
        );
        
        final targetSentence = groupSentences.firstWhere(
          (s) => s.langCode == _selectedReviewLanguage,
          orElse: () => Sentence(id: -1, groupId: -1, langCode: 'unknown', text: '', createdAt: DateTime.now()),
        );
        
        // Skip if target doesn't exist in the selected language 
        // (This effectively filters the list, effectively mimicking "WHERE target_lang = ?")
        if (targetSentence.id == -1) continue;
        
        // Also skip if source is missing to prevent later errors
        if (sourceSentence.id == -1) continue;

        // Construct Map for UI
        combinedRecords.add({
          'id': entry.groupId, // Use Group ID (int) to maintain compatibility with UI (old SQLite ID was int)
          'library_uuid': entry.id, // Keep real UUID if needed
          'group_id': entry.groupId,
          'source_lang': sourceSentence.langCode,
          'target_lang': targetSentence.langCode,
          'source_text': sourceSentence.text,
          'target_text': targetSentence.text,
          'personal_note': entry.personalNote,
          'created_at': entry.createdAt.toIso8601String(),
          'dialogue_id': entry.dialogueId,
          'speaker': entry.speaker,
          'sequence_order': entry.sequenceOrder,
          // Review stats from JSON B (default 0 if missing)
          'review_count': entry.reviewStats['count'] ?? 0,
          'last_reviewed': entry.reviewStats['last_reviewed'],
        });
      }

      _studyRecords = combinedRecords;
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Error loading study records (Supabase): $e');
      _studyRecords = []; 
      notifyListeners();
    }
  }
  
  /// Set review language filter
  void setReviewLanguage(String lang) {
    _selectedReviewLanguage = lang;
    loadStudyRecords(); // Reload with new filter
  }
  
  /// Play TTS for a study record
  Future<void> playRecordTts(String text, String lang) async {
    try {
      await _speechService.speak(text, lang: _getServiceLocale(lang));
    } catch (e) {
      debugPrint('[AppState] Error playing TTS: $e');
    }
  }
  
  /// Increment review count (Supabase)
  Future<void> reviewRecord(int groupId) async {
    try {
      final userId = SupabaseService.client.auth.currentUser?.id;
      if (userId == null) return;

      // Fetch current stats first (Supabase doesn't have simple atomic JSON update in all versions, 
      // but we can use an RPC or fetch-update pattern. Fetch-update is easier for now.)
      
      final response = await SupabaseService.client
          .from('user_library')
          .select('review_stats')
          .eq('user_id', userId)
          .eq('group_id', groupId)
          .single();
          
      Map<String, dynamic> stats = Map<String, dynamic>.from(response['review_stats'] ?? {});
      int count = (stats['count'] as int? ?? 0) + 1;
      stats['count'] = count;
      stats['last_reviewed'] = DateTime.now().toIso8601String();
      
      await SupabaseService.client
          .from('user_library')
          .update({'review_stats': stats})
          .eq('user_id', userId)
          .eq('group_id', groupId);

      await loadStudyRecords(); // Reload to update UI
    } catch (e) {
      print('Supabase Chat Function Error: $e');
      throw Exception('Chat Failed: $e');
    }
  }
  
  /// Call 'suggest-titles' Edge Function record (Unified Schema)
  /// Parameter [id] will match group_id for unified tables.
  Future<void> deleteRecord(int groupId) async {
    try {
       debugPrint('[AppState] Deleting unified record: groupId=$groupId');

       final db = await DatabaseService.database;
       
       await db.transaction((txn) async {
         // 1. 단어/문장 테이블에서 삭제 (해당 그룹 모두)
         await txn.delete('words', where: 'group_id = ?', whereArgs: [groupId]);
         await txn.delete('sentences', where: 'group_id = ?', whereArgs: [groupId]);
         
         // 2. 번역 연결 삭제는 Cascade가 아니므로 수동 처리? 
         // 사실 group_id로 묶여있으므로 word_translations 등은 FK 제약이 없으면 아이디 누락됨.
         // 위 테이블 삭제 전 아이디를 먼저 가져와야 함.
       });

       // 2. Supabase Delete
       final userId = SupabaseService.client.auth.currentUser?.id;
       if (userId != null) {
          try {
             await SupabaseService.client
                .from('user_library')
                .delete()
                .eq('user_id', userId)
                .eq('group_id', groupId);
          } catch (e) {
             debugPrint('[AppState] Supabase delete failed: $e');
          }
       }
      
      await loadStudyRecords(); 
      await loadRecordsByTags();
      await loadTags();
      
      debugPrint('[AppState] Unified record deletion complete: groupId=$groupId');
    } catch (e) {
      debugPrint('[AppState] Error deleting record: $e');
      rethrow;
    }
  }
  
  // ==========================================
  // Settings
  // ==========================================
  
  void setSourceText(String text) {
    _sourceText = text;
    _duplicateCheckTriggered = false; // Reset check when text changes
    notifyListeners();
  }
  
  void toggleWordMode(bool isWordMode) {
    _isWordMode = isWordMode;
    notifyListeners();
  }
  
  void setSourceLang(String lang) {
    _sourceLang = lang;
    _saveSettings(); // Save persistence
    _duplicateCheckTriggered = false; // Reset check
    // Reset selected source when language changes
    _selectedSourceId = null;
    
    // Cleanup: Consistency check (Mode 1, 2, 3)
    // 1. Clear Mode 1 text
    clearTexts();
    
    // 2. Clear Mode 2 records (incompatible source)
    _studyRecords = []; 
    
    // 3. Reset Mode 3 (incompatible source)
    selectMaterial(null);
    loadStudyMaterials(); // Refresh availability
    
    notifyListeners();
  }
  
  void setTargetLang(String lang) {
    _targetLang = lang;
    _saveSettings(); // Save persistence

    
    // Sync Review Tab Filter - ENABLED
    _selectedReviewLanguage = lang;
    
    // Cleanup: Consistency check
    // 1. Clear Mode 1 translation (output invalid)
    // We can keep source text, but maybe clearer to reset? 
    // Usually changing target while having source text is fine, just re-translate.
    // But keeping it simple as per plan: clear texts.
    clearTexts();
    
    // 2. Reload Mode 2 records (new target)
     loadStudyRecords(); 
    
    // 3. Reset Mode 3 (incompatible target)
    selectMaterial(null); 
    loadStudyMaterials(); // Refresh availability
    
    notifyListeners();
  }

  void swapLanguages() {
    final temp = _sourceLang;
    _sourceLang = _targetLang;
    _targetLang = temp;
    
    _saveSettings(); // Save persistence
    
     // Sync Review Tab Filter - ENABLED
     _selectedReviewLanguage = _targetLang;
    
    // Clear texts as direction flipped
    clearTexts();
    
    // Reload Mode 2/3 for consistency
    loadStudyRecords(); // Keep current list
    selectMaterial(null);
    loadStudyMaterials();
    
    notifyListeners();
  }
  
  void clearTexts() {
    _sourceText = '';
    _translatedText = '';
    _statusMessage = '';
    _selectedSourceId = null;
    _similarSources = [];
    _showDuplicateDialog = false;
    _duplicateCheckTriggered = false;
    _isSaved = false;
    _note = '';
    
    // 메타데이터 초기화 (Phase 29)
    _sourcePos = ''; 
    _sourceFormType = '';
    _sourceRoot = '';
    
    notifyListeners();
  }
  
  /// Import study materials from JSON file content
  Future<Map<String, dynamic>> importFromJsonFile(String jsonContent, {String? fileName}) async {
    try {
      // Pass null for fileName so DatabaseService uses 'subject' from JSON or default
      final result = await DatabaseService.importFromJson(jsonContent, fileName: fileName);
      
      if (result['success'] == true) {
         try {
           final data = json.decode(jsonContent) as Map<String, dynamic>;
           final targetLang = data['target_language'] as String?;
           if (targetLang != null) {
             _selectedReviewLanguage = targetLang;
           }
         } catch (e) {
           debugPrint('[AppState] Could not parse target language from JSON: $e');
         }
         
         // Force reload materials and select the new one
         await loadStudyMaterials();
         
         // Select the newly imported material directly if ID is available
         final newMaterialId = result['material_id'] as int? ?? 0;
         if (newMaterialId != 0) {
             await selectMaterial(newMaterialId);
         } else {
             await loadStudyRecords(); // Fallback
         }
      }
      
      return result;
    } catch (e) {
      debugPrint('[AppState] Error importing JSON file: $e');
      return {
        'success': false,
        'imported': 0,
        'skipped': 0,
        'total': 0,
        'errors': ['Import failed: $e'],
      };
    }
  }
  
  // ==========================================
  // Mode 3: Study Materials
  // ==========================================
  
  /// 태그 목록 로드
  Future<void> loadTags() async {
    try {
      final db = await DatabaseService.database;
      final results = await db.rawQuery('SELECT DISTINCT tag FROM item_tags ORDER BY tag ASC');
      // Filter out system tags 'word' and 'sentence'
      _availableTags = results
        .map((e) => e['tag'] as String)
        .where((tag) => tag != 'word' && tag != 'sentence')
        .toList();
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Error loading tags: $e');
    }
  }

  /// 태그 선택 토글
  void toggleTag(String tag) {
    if (_selectedTags.contains(tag)) {
      _selectedTags.remove(tag);
    } else {
      _selectedTags.add(tag);
    }
    loadRecordsByTags(); // 필터링된 레코드 로드
    notifyListeners();
  }

  // Removed duplicate setShowMemorized from here


  /// 모든 검색 조건 초기화 (태그, 제한, 시작문자)
  void clearSearchConditions() {
    _selectedTags.clear();
    _filterLimit = null;
    _filterStartsWith = null;
    loadRecordsByTags();
    notifyListeners();
  }

  /// Phase 59: 검색 한도 설정
  void setFilterLimit(int? limit) {
    _filterLimit = limit;
    loadRecordsByTags();
    notifyListeners();
  }

  /// Phase 59: 시작 문자 설정
  void setFilterStartsWith(String? text) {
    _filterStartsWith = text;
    loadRecordsByTags();
    notifyListeners();
  }

  /// 검색어 설정
  void setSearchQuery(String query) {
    _searchQuery = query;
    loadRecordsByTags();
    notifyListeners();
  }

  /// 태그 및 검색어 기반 레코드 로드
  Future<void> loadRecordsByTags() async {
    try {
      final db = await DatabaseService.database;
      
      // 검색 및 필터 쿼리 구성
      List<dynamic> whereArgs = [];
      

      // Simplified JOIN query for Tags + Search
      final String table = _recordTypeFilter == 'word' ? 'words' : 'sentences';
      
      String query = 'SELECT DISTINCT t.* FROM $table t ';
      
      if (_selectedTags.isNotEmpty) {
        query += 'INNER JOIN item_tags it ON t.id = it.item_id AND it.item_type = ? ';
        whereArgs.add(_recordTypeFilter == 'word' ? 'word' : 'sentence');
      }

      // WHERE Clause Construction
      List<String> conditions = [];
      
      // 1. Language Filter (Optimization: Only fetch current pair)
      conditions.add('t.lang_code IN (?, ?)');
      whereArgs.add(_sourceLang);
      whereArgs.add(_targetLang);
      
      // 2. Tags
      if (_selectedTags.isNotEmpty) {
        conditions.add('it.tag IN (${_selectedTags.map((_) => '?').join(',')})');
        whereArgs.addAll(_selectedTags);
      }
      
      // 3. Search Query
      if (_searchQuery.isNotEmpty) {
        conditions.add('t.text LIKE ?');
        whereArgs.add('%$_searchQuery%');
      }

      // 4. Phase 59: StartsWith
      if (_filterStartsWith != null && _filterStartsWith!.isNotEmpty) {
        conditions.add('t.text LIKE ?');
        whereArgs.add('${_filterStartsWith}%');
      }

      // 5. Memorized Status
      if (!_showMemorized) {
        conditions.add('(t.is_memorized IS NULL OR t.is_memorized = 0)');
      }
      
      // Apply WHERE conditions
      if (conditions.isNotEmpty) {
         query += 'WHERE ${conditions.join(' AND ')} ';
      }
      
      // 6. GROUP BY (Deduplication)
      query += 'GROUP BY t.group_id ';
      
      // 7. ORDER BY
      query += 'ORDER BY t.created_at DESC ';

      // 8. LIMIT
      if (_filterLimit != null) {
        query += 'LIMIT ? ';
        whereArgs.add(_filterLimit);
      }

      final List<Map<String, dynamic>> results = await db.rawQuery(query, whereArgs);
      
      // UI 호환성을 위한 데이터 가공 (source_text, target_text 페어링)
      // Unified Schema에서는 source/target 구분이 없으므로, 현재 언어 설정을 기반으로 매핑
      List<Map<String, dynamic>> pairedResults = [];
      final rowType = _recordTypeFilter == 'word' ? 'word' : 'sentence';
      
      for (var row in results) {
        final groupId = row['group_id'] as int?;
        if (groupId == null) continue;
        
        // 현재 설정된 sourceLang과 targetLang에 해당하는 텍스트들을 그룹에서 찾아냄
        final sourceRow = (row['lang_code'] == _sourceLang) ? row : await _getRowByGroup(db, table, groupId, _sourceLang);
        final targetRow = (row['lang_code'] == _targetLang) ? row : await _getRowByGroup(db, table, groupId, _targetLang);
        
        if (sourceRow == null || targetRow == null) continue;

        // 품사, 원형 등 상세 정보 추출 (Source 기준으로 표시)
        final pos = sourceRow['pos'] as String?;
        final formType = sourceRow['form_type'] as String?;
        final root = sourceRow['root'] as String?;
        
        // 해당 아이템의 태그들 가져오기
        final tagResults = await db.query('item_tags', 
            columns: ['tag'], 
            where: 'item_id = ? AND item_type = ?', 
            whereArgs: [sourceRow['id'], rowType]);
        final tags = tagResults.map((e) => e['tag'] as String).toList();

        pairedResults.add({
          'id': sourceRow['id'], 
          'target_id': targetRow['id'], // Added Phase 53
          'group_id': groupId,
          'type': rowType, // 단어/문장 구분
          'source_lang': _sourceLang,
          'target_lang': _targetLang,
          'source_text': sourceRow['text'],
          'target_text': targetRow['text'],
          'note': sourceRow['note'] ?? targetRow['note'],
          'pos': pos,
          'form_type': formType,
          'root': root,
          'tags': tags,
          'created_at': sourceRow['created_at'],
          'review_count': sourceRow['review_count'] ?? 0,
          'is_memorized': targetRow['is_memorized'] == 1, // Phase 53: Target status
        });
      }

      _materialRecords = pairedResults;
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Error loading records by tags: $e');
    }
  }

  Future<Map<String, dynamic>?> _getRowByGroup(Database db, String table, int groupId, String lang) async {
    final results = await db.query(table, 
        where: 'group_id = ? AND lang_code = ?', 
        whereArgs: [groupId, lang],
        limit: 1);
    if (results.isNotEmpty) return results.first;
    return null;
  }

  /// Toggle is_memorized status (Target Only)
  Future<void> toggleMemorizedStatus(int id, bool currentStatus) async {
    final type = _recordTypeFilter == 'word' ? 'word' : 'sentence';
    // Update only the specific record (Target)
    await DatabaseService.toggleMemorizedStatus(id, type, !currentStatus);
    
    // Sync with Mode 3 current question for immediate UI update
    if (_currentMode3Question != null) {
      // Check if the toggled ID matches the current Mode 3 target ID
      final currentTargetId = _currentMode3Question!['target_id'] as int? ?? _currentMode3Question!['id'] as int;
      if (currentTargetId == id) {
         final newMap = Map<String, dynamic>.from(_currentMode3Question!);
         newMap['is_memorized'] = !currentStatus;
         _currentMode3Question = newMap;
         notifyListeners(); 
      }
    }

    // Refresh list to update UI
    await loadRecordsByTags();
  }

  /// 기존 호환성 유지용 (Legacy)
  Future<void> loadStudyMaterials() async {
    await loadTags(); // 태그 로드로 대체
    _studyMaterials = await DatabaseService.getStudyMaterials(); // Restore legacy list population
    notifyListeners();
  }

  /// 학습 자료 선택 (Legacy & Tag Sync)
  Future<void> selectMaterial(int? id) async {
    _selectedMaterialId = id;
    if (id != null && id != 0) {
      await loadMaterialRecords(id);
    } else {
      // id가 0 또는 null이면 전체 레코드 로드 (Import 후 즉시 표시)
      await loadRecordsByTags();
    }
    notifyListeners();
  }

  Future<void> loadMaterialRecords(int materialId) async {
    if (materialId == 0) {
      await loadRecordsByTags(); // 기본 로드
    } else {
      // Legacy Material ID가 오면 해당 Material Subject를 태그로 간주
      final material = _studyMaterials.firstWhere((m) => m['id'] == materialId, orElse: () => {});
      if (material.isNotEmpty) {
        _selectedTags = [material['subject'] as String];
        await loadRecordsByTags();
      }
    }
  }
  
  void setRecordTypeFilter(String filter) {
    _recordTypeFilter = filter;
    // Sync with Mode 1 boolean
    if (filter == 'word') {
      _isWordMode = true;
    } else if (filter == 'sentence') {
      _isWordMode = false;
    }
    notifyListeners();
  }

  /// Import JSON file with metadata (Supabase)
  Future<Map<String, dynamic>> importJsonWithMetadata(
    String jsonContent,
    {String? fileName}
  ) async {
    try {
      final data = json.decode(jsonContent) as Map<String, dynamic>;
      final sourceLang = data['source_language'] as String;
      final targetLang = data['target_language'] as String;
      final entries = data['entries'] as List;
      
      int importedCount = 0;
      int skippedCount = 0;
      int duplicateCount = 0;
      List<String> errors = [];
      
      _statusMessage = 'Importing...';
      notifyListeners();

      // 1. Handle Dialogue Sets (Phase 11 Support)
      if (data.containsKey('dialogues') && data['dialogues'] is List) {
        final dialogues = data['dialogues'] as List;
        for (var d = 0; d < dialogues.length; d++) {
          try {
            final dialog = dialogues[d] as Map<String, dynamic>;
            final title = dialog['title'] as String?;
            final persona = dialog['persona'] as String?;
            final messages = dialog['messages'] as List;

            _statusMessage = 'Importing Dialogue: ${title ?? "..."}';
            notifyListeners();

            // Create Dialogue Group on Supabase
            final dialogueId = await SupabaseService.createDialogueGroup(
              title: title ?? 'Imported Conversation',
              persona: persona,
            );

            // Save locally
            await DatabaseService.insertDialogueGroup(
              id: dialogueId,
              title: title ?? 'Imported Conversation',
              persona: persona,
              createdAt: DateTime.now().toIso8601String(),
              userId: SupabaseService.client.auth.currentUser?.id,
            );

            for (var m = 0; m < messages.length; m++) {
              final msg = messages[m] as Map<String, dynamic>;
              final result = await SupabaseService.importDialogueMessage(
                dialogueId: dialogueId,
                sourceText: msg['source_text'] as String,
                sourceLang: sourceLang,
                targetText: msg['target_text'] as String,
                targetLang: targetLang,
                speaker: (msg['speaker'] ?? persona ?? 'AI') as String,
                sequenceOrder: m + 1,
              );
              
              if (result['success'] == true) {
                importedCount++;
              } else {
                errors.add('Dialogue "${title}": Post ${m+1} failed: ${result['reason']}');
              }
            }
          } catch (e) {
            errors.add('Dialogue ${d+1} failed: $e');
          }
        }
        await loadDialogueGroups();
      }

      // 2. Handle Regular Entries (Original logic)
      if (data.containsKey('entries') && data['entries'] is List) {
        final entries = data['entries'] as List;
        for (var i = 0; i < entries.length; i++) {
          try {
            final entry = entries[i] as Map<String, dynamic>;
            final sourceText = entry['source_text'] as String;
            final targetText = entry['target_text'] as String;
            
            if (sourceText.trim().isEmpty || targetText.trim().isEmpty) {
              skippedCount++;
              continue;
            }
            
            final note = (entry['note'] ?? entry['context']) as String?;
            final pos = entry['pos'] as String?;
            final formType = entry['form_type'] as String?;
            final root = entry['root'] as String?;

            // 1. Supabase Sync (Phase 13 updated)
            final result = await SupabaseService.importJsonEntry(
              sourceText: sourceText,
              sourceLang: sourceLang,
              targetText: targetText,
              targetLang: targetLang,
              note: note,
              pos: pos,
              formType: formType,
              root: root,
            );
            
            if (result['success'] == true) {
              importedCount++;
            } else {
              if (result['reason'] == 'Duplicate') {
                duplicateCount++;
              } else {
                errors.add('Entry ${i + 1}: ${result['reason']}');
                skippedCount++;
              }
            }
          } catch (e) {
            errors.add('Entry ${i + 1} failed: $e');
            skippedCount++;
          }
        }
      }
      
      await loadStudyRecords(); // Reload user library
      notifyListeners();
      
      return {
        'success': true,
        'imported': importedCount,
        'skipped': skippedCount,
        'duplicates': duplicateCount,
        'total': (data['entries'] as List?)?.length ?? 0,
        'errors': errors,
      };
    } catch (e) {
      debugPrint('[AppState] Error importing JSON (Supabase): $e');
      return {
        'success': false,
        'imported': 0,
        'skipped': 0,
        'total': 0,
        'errors': ['Import failed: $e'],
      };
    }
  }

  // ==========================================
  // AI recommendations
  // ==========================================

  Future<void> fetchRecommendations() async {
    try {
      _isRecommendationLoading = true;
      notifyListeners();

      // Get recent 10 items from local DB for context
      final db = await DatabaseService.database;
      final history = await db.query('words', limit: 10, orderBy: 'created_at DESC');
      
      final result = await SupabaseService.getRecommendations(
        history: history,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
      );

      _recommendedItems = List<Map<String, dynamic>>.from(result['recommendations'] ?? []);
      _isRecommendationLoading = false;
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Recommendation Error: $e');
      _isRecommendationLoading = false;
      notifyListeners();
    }
  }

  // Phase 34: Filter by memorized status
  void setShowMemorized(bool value) {
    if (_showMemorized == value) return;
    _showMemorized = value;
    notifyListeners();
    
    // Refresh list to reflect the new filter state
    loadRecordsByTags();

    // Mode 3 활성 상태라면 현재 문제 유효성 검사
    if (_mode3SessionActive) {
       _validateCurrentMode3Question();
    }
  }

  Future<void> saveRecommendedItem(Map<String, dynamic> item) async {
    try {
      _sourceText = item['sourceText'] as String;
      _translatedText = item['translatedText'] as String;
      _sourcePos = item['pos'] as String? ?? '';
      _sourceFormType = item['formType'] as String? ?? '';
      _sourceRoot = item['root'] as String? ?? '';
      _note = item['explanation'] as String? ?? '';
      
      // Auto-tag as #Recommendation
      _selectedTags = ['추천'];
      
      await saveTranslation();
      
      // Remove from recommended list after saving
      _recommendedItems.remove(item);
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Error saving recommended item: $e');
    }
  }
  
  /// Mark translation as studied in current session
  void markTranslationAsStudied(int translationId) {
    _studiedTranslationIds.add(translationId);
    notifyListeners();
  }
  
  /// Play TTS for material record (source or target)
  Future<void> playMaterialTts({
    required String text,
    required String lang,
    int? recordId,
  }) async {
    try {
      // TODO: Check for cached audio file in database
      // If recordId is provided, try to load audio from database first
      
      await _speechService.speak(text, lang: _getServiceLocale(lang));
      
      // TODO: Save generated TTS to database if recordId is provided
    } catch (e) {
      debugPrint('[AppState] Error playing material TTS: $e');
    }
  }
  
  // ==========================================
  // Mode 3: Speaking Practice
  // ==========================================
  
  int _mode3Interval = 5; // Seconds
  bool _mode3SessionActive = false;

  double? _mode3Score; // 0.0 to 100.0
  Map<String, dynamic>? _currentMode3Question;
  String _mode3UserAnswer = ''; // User's spoken text for feedback
  String _mode3Feedback = '';
  bool _practiceWordsOnly = false; // Filter for "Words Only" in Mode 3
  
  // Track completed questions (Perfect score) in current session to avoid repetition
  final Set<int> _mode3CompletedQuestionIds = {};
  
  // Timeout & Retry Logic
  bool _showRetryButton = false;
  Timer? _mode3Timer;
  Timer? _retryAutoSkipTimer;
  
  bool _isEvaluating = false; // Guard to prevent multiple evaluations 
  
  List<Map<String, dynamic>> _recommendedItems = [];
  bool _isRecommendationLoading = false;

  List<Map<String, dynamic>> get recommendedItems => _recommendedItems;
  bool get isRecommendationLoading => _isRecommendationLoading;

  int get mode3Interval => _mode3Interval;
  bool get mode3SessionActive => _mode3SessionActive;
  Map<String, dynamic>? get currentMode3Question => _currentMode3Question;
  String get mode3UserAnswer => _mode3UserAnswer;
  double? get mode3Score => _mode3Score;
  String get mode3Feedback => _mode3Feedback;
  bool get showRetryButton => _showRetryButton;
  bool get practiceWordsOnly => _practiceWordsOnly;
  

  
  void setMode3Interval(int seconds) {
    _mode3Interval = seconds;
    notifyListeners();
  }

  void setPracticeWordsOnly(bool value) {
    if (_mode3SessionActive) return;
    _practiceWordsOnly = value;
    notifyListeners();
  }
  
  Future<void> toggleMode3Session() async {
    _mode3SessionActive = !_mode3SessionActive;
    
    if (_mode3SessionActive) {
      // Start session
      if (_materialRecords.isEmpty) {
        _mode3SessionActive = false;
      } else {
        // Clear Score History
        _mode3Score = 0.0;
        _mode3Feedback = '';
        
        // Load First Question Immediately
        _nextMode3Question();
      }
    } else {
      // Stop session
      await _speechService.stopSTT();
      _currentMode3Question = null;
      _isListening = false;
    }
    notifyListeners();
  }


  // NEW: Direct Start Method for Dropdown
  Future<void> startMode3SessionDirectly() async {
      await _speechService.stopSTT(); // Ensure clean state
      _mode3SessionActive = true;

      // Smart Filter Check: If current filter hides all content, switch to 'all'
      if (_recordTypeFilter != 'all' && selectedMaterialId != null) {
         final currentMatches = _getAvailableQuestions(); 
         if (currentMatches.isEmpty) {
             // Check if ANY records exist for this material
             final allRecords = _materialRecords;
             if (allRecords.isNotEmpty) {
                 debugPrint('[AppState] Auto-switching filter to ALL for Mode 3 content');
                 _recordTypeFilter = 'all'; // Direct update to avoid extra notify loop
                 // or use setRecordTypeFilter('all') if we want side effects
             }
         }
      }

      await _nextMode3Question();
      notifyListeners();
  }

  void _cancelMode3Timers() {
    _mode3Timer?.cancel();
    _retryAutoSkipTimer?.cancel();
    _mode3Timer = null;
    _retryAutoSkipTimer = null;
  }
  
  /// Allow user to skip current question manually\n
  /// Manual Stop for Mode 3
  Future<void> stopMode3ListeningManual() async {
    if (!_isListening) return;
    
    // Stop STT explicitly. 
    // The status listener will catch 'done' or 'notListening' 
    // BUT we want to force check immediately to be responsive.
    await _speechService.stopSTT();
    _isListening = false;
    
    // Ensure we process what we have
    // If user pressed stop, they are done speaking.
    _checkMode3Answer();
  }

  Future<void> _startMode3Listening() async {
    try {
      _isListening = true;
      _mode3UserAnswer = ''; // Reset answer
      _mode3Score = null;    // Reset score
      _mode3Feedback = '';   // Reset feedback
      _showRetryButton = false;
      notifyListeners();
      
      final targetLang = _currentMode3Question!['target_lang'] as String;
      
      // Listen to status just for debug or error handling
      _speechStatusSubscription?.cancel();
      _speechStatusSubscription = _speechService.statusStream.listen((status) {
         if (status == 'done' || status == 'notListening') {
             // If stopped efficiently by manual button, we handled it there.
             // If stopped by system error (and we are still 'listening' in state), we might need to update UI.
             if (_isListening && _mode3SessionActive) {
                 debugPrint('[AppState] System stopped STT unexpectedly. Updating UI.');
                 // If we haven't started evaluating, do it now.
                 if (!_isEvaluating) {
                     _checkMode3Answer();
                 }
             }
         }
      });
      
      await _speechService.startSTT(
        lang: _getServiceLocale(targetLang),
        // OPTIMIZED FOR SENTENCES:
        // 30s: Long enough for any sentence.
        // 3s: Allows 3s pause for breathing/thinking, but stops before engine hangs.
        // 3s: Allows 3s pause for breathing/thinking, but stops before engine hangs.
        listenFor: const Duration(seconds: 30), 
        pauseFor: const Duration(seconds: 3),
        onResult: (text, isFinal, alternates) {
           _mode3UserAnswer = text;
           
           // EVALUATION TRIGGER: Check immediately if final result received
           if (isFinal && _mode3SessionActive && !_isEvaluating) {
              _checkMode3Answer();
           }
           
           notifyListeners();
        }
      );
      
    } catch (e) {
      debugPrint('[AppState] Mode 3 Listen Error: $e');
      _isListening = false;
      _mode3Feedback = 'Error: $e';
      _showRetryButton = true;
      notifyListeners();
    }
  }

  
  Future<void> _checkMode3Answer() async {
    if (!_mode3SessionActive || _isEvaluating) return;
    
    _isEvaluating = true;
    
    // Tiny delay to ensure final STT result is captured in _mode3UserAnswer
    await Future.delayed(const Duration(milliseconds: 200));

    // Ensure listening is stopped
    _speechService.stopSTT();
    _isListening = false;
    
    final targetText = _currentMode3Question!['target_text'] as String;
    
    // Unified Normalization
    final normalizedUser = _normalizeText(_mode3UserAnswer);
    final normalizedTarget = _normalizeText(targetText);
    
    // Mode 3 evaluation logic
    debugPrint('[AppState] Mode 3 Check:');
    debugPrint('  - Original User: "$_mode3UserAnswer"');
    debugPrint('  - Original Target: "$targetText"');
    debugPrint('  - Norm User: "$normalizedUser"');
    debugPrint('  - Norm Target: "$normalizedTarget"');

    // Calculate Score
    if (normalizedUser.isEmpty) {
        _mode3Score = 0.0;
        _mode3Feedback = 'TRY_AGAIN';
    } else {
        // use normalized strings for calculation
        final similarity = _calculateSimilarity(normalizedUser, normalizedTarget);
        _mode3Score = similarity * 100;
        
        debugPrint('  - Similarity: $_mode3Score');
        
        if (_mode3Score! >= 100) { // Threshold 100%
          _mode3Feedback = 'PERFECT';
          _mode3CompletedQuestionIds.add(_currentMode3Question!['id'] as int);
          await _speechService.speak("Perfect!", lang: "en-US");
        } else {
          _mode3Feedback = 'TRY_AGAIN'; 
        }
    }
    
    _showRetryButton = true; // Always show controls (Next/Retry depending on result logic in UI)
    _isEvaluating = false; 
    notifyListeners();
    // NO AUTO ADVANCE. User must click Next or Retry.
  }

  // Public wrapper for Next Button
  void skipMode3Question() {
      _nextMode3Question();
  }

  /// Select specific question for practice (From UI List)
  Future<void> selectMode3QuestionById(int id) async {
      await _speechService.stopSTT();
      _isListening = false;
      _cancelMode3Timers();
      
      final records = _materialRecords;
      final match = records.firstWhere(
          (r) => r['id'] == id,
          orElse: () => <String, dynamic>{}
      );
      
      if (match.isEmpty) return;
      
      _currentMode3Question = match;
      _mode3SessionActive = true;
      _mode3Score = null;
      _mode3UserAnswer = '';
      _showRetryButton = false;
      
      notifyListeners();
      await _startMode3Listening();
  }

     /// Mode 3: Reset current question practice state
  void resetMode3Question() {
    _mode3Score = null;
    _mode3UserAnswer = '';
    _showRetryButton = false;
    _isListening = false;
    notifyListeners();
  }

  /// Mode 3: Reset entire practice progress (Clear completed IDs)
  void resetMode3Progress() {
    _mode3CompletedQuestionIds.clear();
    _currentMode3Question = null;
    _mode3Score = null;
    _mode3UserAnswer = '';
    _showRetryButton = false;
    _isListening = false;
    _mode3SessionActive = false;
    notifyListeners();
  }

  /// Mode 3: Set current question (Starts new practice session for this item)
  void setMode3CurrentQuestion(Map<String, dynamic> record) {
     // If switching cards, stop any ongoing listening
     if (_isListening) {
       _speechService.stopSTT();
       _isListening = false;
     }

    _currentMode3Question = record;
    _mode3SessionActive = true;
    _mode3Score = null;
    _mode3UserAnswer = '';
    _showRetryButton = false;
    notifyListeners();
  }
  
  /// Mode 3: Clear current question (Collapses card)
  void clearMode3CurrentQuestion() {
     if (_isListening) {
       _speechService.stopSTT();
       _isListening = false;
     }
    _currentMode3Question = null;
    // _mode3SessionActive = false; // Keep session active? Or false? 
    // If we collapse, maybe we aren't in "Session" anymore in terms of having an active card.
    // But list is still there.
    // Let's keep session active true if it just means "Mode 3 is open". 
    // But typically session active means "Practicing".
    // I'll leave _mode3SessionActive as is, or maybe set to false if it implies "Has Active Card".
    // In Mode3Widget, we check `appState.mode3SessionActive && currentQuestion != null` for some logic.
    // If I clear question, `currentQuestion` becomes null.
    notifyListeners();
  }
  Future<void> _nextMode3Question() async {
    _cancelMode3Timers();
    _speechStatusSubscription?.cancel(); // Critical: Stop listening to old status events
    _speechStatusSubscription = null;
    
    await _speechService.stopSTT(); // Ensure stop
    _isListening = false;
    
    if (filteredStudyMaterials.isEmpty) {
       _mode3SessionActive = false;
       notifyListeners();
       return;
    }
    
    // Find next available question (not completed)
    // ... (Existing logic for picking question)
    
    // Basic random pick for now (Review existing logic upstream if needed, 
    // but here we just need to ensure we call the setup)
    
    // Use the same logic as ToggleSession to pick new q?
    // Actually, we can just pick a new one.
    
    final availableQuestions = _getAvailableQuestions();
     if (availableQuestions.isEmpty) {
      _mode3SessionActive = false;
      notifyListeners();
      return;
    }
    
    final randomIndex = DateTime.now().millisecondsSinceEpoch % availableQuestions.length;
    _currentMode3Question = availableQuestions[randomIndex];
    
    // Reset State for new question
    _mode3UserAnswer = '';
    _mode3Score = null;
    _mode3Feedback = '';
    _showRetryButton = false;
    
    notifyListeners();
    
    // Auto-play TTS
    final sourceText = _currentMode3Question!['source_text'] as String;
    final sourceLang = _currentMode3Question!['source_lang'] as String;
    await _speechService.speak(sourceText, lang: _getServiceLocale(sourceLang));
    
    // DO NOT Auto-Start Listening. User must press Start.
  }
  
  List<Map<String, Object?>> _getAvailableQuestions() {
      // Helper to reuse logic
      if (selectedMaterialId == null) return [];
      
      // final material = studyMaterials.firstWhere((m) => m['id'] == selectedMaterialId);

      final records = _materialRecords;
      
      
      // Filter by recordTypeFilter (Global Word/Sentence Toggle)
      // This ensures Mode 3 respects the top-bar selection like Mode 2.
      List<Map<String, Object?>> candidates = records;
      
      if (_recordTypeFilter != 'all') {
          candidates = candidates.where((r) => 
            (r['type'] as String? ?? 'sentence') == _recordTypeFilter
          ).toList();
      }

      // Phase 34: Filter by memorized status (Show/Hide)
      if (!_showMemorized) {
          candidates = candidates.where((r) => 
            r['is_memorized'] != true && r['is_memorized'] != 1
          ).toList();
      }
      
      if (candidates.isEmpty) return [];
      return candidates.cast<Map<String, Object?>>();
  }

  // Retry logic
  Future<void> retryMode3Question() async {
     // User clicked Retry.
     // Just Start Listening again.
     await _startMode3Listening();
  }

  
  /// Levenshtein distance based similarity (0.0 to 1.0)
  double _calculateSimilarity(String s1, String s2) {
    if (s1.isEmpty || s2.isEmpty) return 0.0;
    
    // Use consistent normalization
    String normal1 = _normalizeText(s1);
    String normal2 = _normalizeText(s2);
    
    if (normal1 == normal2) return 1.0;
    
    // Simple Levenshtein implementation
    List<List<int>> d = List.generate(
      normal1.length + 1,
      (i) => List<int>.filled(normal2.length + 1, 0),
    );

    for (int i = 0; i <= normal1.length; i++) d[i][0] = i;
    for (int j = 0; j <= normal2.length; j++) d[0][j] = j;

    for (int i = 1; i <= normal1.length; i++) {
      for (int j = 1; j <= normal2.length; j++) {
        int cost = (normal1[i - 1] == normal2[j - 1]) ? 0 : 1;
        d[i][j] = [
          d[i - 1][j] + 1, // deletion
          d[i][j - 1] + 1, // insertion
          d[i - 1][j - 1] + cost, // substitution
        ].reduce((curr, next) => curr < next ? curr : next);
      }
    }

    int maxLength = (normal1.length > normal2.length) ? normal1.length : normal2.length;
    int distance = d[normal1.length][normal2.length];
    
    return 1.0 - (distance / maxLength);
  }

  // Phase 37: Mode 3 현재 문제 유효성 검사 및 자동 전환
  void _validateCurrentMode3Question() {
    if (_currentMode3Question == null || !_mode3SessionActive) return;

    final available = _getAvailableQuestions();
    
    // 현재 문제가 가용 리스트에 없으면 다음 문제로
    final currentId = _currentMode3Question!['id'];
    final stillValid = available.any((r) => r['id'] == currentId);

    if (!stillValid) {
      print('Current Mode 3 question is no longer valid due to filter. Skipping...');
      _nextMode3Question();
    }
  }


  
  // Helper: Unified String Normalization
  String _normalizeText(String input) {
     return input
        .toLowerCase()
        .replaceAll(RegExp(r'[.,?!:;"\-]'), '') // Remove common punctuation
        .replaceAll(RegExp(r'\s+'), ' ')        // Collapse spaces
        .trim();
  }


  String _getServiceLocale(String lang) {
    // Map app language codes to STT/TTS language codes
    final map = {
      // East Asian
      'ko': 'ko-KR',
      'ja': 'ja-JP',
      'zh-CN': 'zh-CN',
      'zh-TW': 'zh-TW',
      
      // South Asian
      'hi': 'hi-IN',
      'bn': 'bn-IN',
      'ta': 'ta-IN',
      'te': 'te-IN',
      'mr': 'mr-IN',
      'ur': 'ur-PK',
      'gu': 'gu-IN',
      'kn': 'kn-IN',
      'ml': 'ml-IN',
      'pa': 'pa-IN',
      
      // European
      'en': 'en-US',
      'es': 'es-ES',
      'fr': 'fr-FR',
      'de': 'de-DE',
      'it': 'it-IT',
      'pt': 'pt-BR',
      'ru': 'ru-RU',
      'pl': 'pl-PL',
      'uk': 'uk-UA',
      'nl': 'nl-NL',
      'el': 'el-GR',
      'cs': 'cs-CZ',
      'ro': 'ro-RO',
      'sv': 'sv-SE',
      'da': 'da-DK',
      'fi': 'fi-FI',
      'no': 'no-NO',
      'hu': 'hu-HU',
      
      // Southeast Asian
      'id': 'id-ID',
      'vi': 'vi-VN',
      'th': 'th-TH',
      'fil': 'fil-PH',
      'ms': 'ms-MY',
      
      // Middle Eastern
      'ar': 'ar-SA',
      'tr': 'tr-TR',
      'fa': 'fa-IR',
      'he': 'he-IL',
      
      // African
      'sw': 'sw-KE',
      'af': 'af-ZA',
    };
    return map[lang] ?? lang;
  }
  
  @override
  void dispose() {
    _speechStatusSubscription?.cancel();
    _speechService.dispose();
    super.dispose();
  }

  // Stream Subscription for auto-restart
  StreamSubscription<String>? _speechStatusSubscription;
  bool _mode4Active = false; // Flag to track game active state

  /// Pick JSON file and import into database
  Future<Map<String, dynamic>?> pickAndImportJson() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.any, // Use 'any' to avoid the "disabled" file issue on some platforms
        withData: kIsWeb, 
      );
      
      if (result == null || result.files.isEmpty) {
        return null; // User canceled
      }
      
      final PlatformFile file = result.files.single;
      
      // Manual validation for JSON extension (Case-insensitive)
      if (!file.name.toLowerCase().endsWith('.json')) {
        return {
          'success': false, 
          'error': '잘못된 파일 형식입니다. .json 파일을 선택해주세요. (현재 파일: ${file.name})'
        };
      }

      final String fileName = file.name;
      String jsonContent;
      
      if (kIsWeb) {
        // On web, use bytes
        if (file.bytes != null) {
          jsonContent = utf8.decode(file.bytes!);
        } else {
          return {'success': false, 'error': 'Failed to read file content (Web)'};
        }
      } else {
        // On mobile/desktop, use path
        if (file.path != null) {
          jsonContent = await File(file.path!).readAsString();
        } else {
          return {'success': false, 'error': 'File path not found'};
        }
      }
      // Perform import
      final userId = SupabaseService.client.auth.currentUser?.id;
      final importResult = await DatabaseService.importFromJsonWithMetadata(
        jsonContent, 
        fileName: fileName,
        userId: userId,
      );
      
      // Refresh UI states
      await loadStudyMaterials();
      await loadDialogueGroups();
      await loadRecordsByTags();
      notifyListeners();
      
      return importResult;
      
    } catch (e) {
      return {'success': false, 'error': e.toString()};
    }
  }

  // Phase 75.9 Polish: Online Direct Import Logic
  Future<void> fetchOnlineMaterialsList() async {
    _isLoadingOnlineMaterials = true;
    notifyListeners();
    try {
      final response = await http.get(Uri.parse('https://zeyziyo.github.io/talkie/materials_v3.json'));
      if (response.statusCode == 200) {
        final data = json.decode(utf8.decode(response.bodyBytes));
        _onlineMaterials = List<Map<String, dynamic>>.from(data['materials'] ?? []);
        print('[Online] Found ${_onlineMaterials.length} materials.');
      }
    } catch (e) {
      print('[Online] Index Error: $e');
    } finally {
      _isLoadingOnlineMaterials = false;
      notifyListeners();
    }
  }

  Future<Map<String, dynamic>> importRemoteMaterial(Map<String, dynamic> material) async {
    final mId = material['id'];
    final mPath = material['path'];
    final mName = material['name'];
    
    _isTranslating = true; 
    _statusMessage = 'Fetching online data: $mName...';
    notifyListeners();

    try {
      final sName = _getLanguageFullName(_sourceLang);
      final tName = _getLanguageFullName(_targetLang);
      final baseUrl = 'https://zeyziyo.github.io/talkie/materials';
      
      // Prepare requests
      List<Future<http.Response>> requests = [
        http.get(Uri.parse('$baseUrl/$sName/$mPath')).timeout(const Duration(seconds: 15)),
        http.get(Uri.parse('$baseUrl/$tName/$mPath')).timeout(const Duration(seconds: 15)),
      ];

      // Phase 77: Auto-download Pivot Language (English)
      // If neither source nor target is English, fetch English version for linking
      bool fetchPivot = (_sourceLang != 'en' && _targetLang != 'en');
      if (fetchPivot) {
        requests.add(http.get(Uri.parse('$baseUrl/English/$mPath')).timeout(const Duration(seconds: 15)));
      }
      
      final results = await Future.wait<http.Response>(requests);

      if (results[0].statusCode != 200 || results[1].statusCode != 200) {
        throw Exception('Server data not found for $sName/$tName pair.');
      }

      final sJson = utf8.decode(results[0].bodyBytes);
      final tJson = utf8.decode(results[1].bodyBytes);

      // Pivot Strategy: Extract 'Subject' from English Data (Ground Truth)
      String? pivotSubject;
      String? englishJsonString;

      if (_sourceLang == 'en') {
        englishJsonString = sJson;
      } else if (_targetLang == 'en') {
        englishJsonString = tJson;
      } else if (fetchPivot && results.length > 2 && results[2].statusCode == 200) {
        englishJsonString = utf8.decode(results[2].bodyBytes);
      }

      if (englishJsonString != null) {
        try {
          final eData = json.decode(englishJsonString);
          final eMeta = eData['meta'] as Map<String, dynamic>? ?? {};
          pivotSubject = eMeta['title'] ?? eData['subject'];
          print('[Pivot Sync] Extracted Standard Subject: $pivotSubject');
        } catch (e) {
          print('[Pivot Sync] Failed to parse English JSON for subject: $e');
        }
      }
      
      // key: Use Pivot Subject if available, else fallback to Material Name
      final finalSubject = pivotSubject ?? mName;

      _statusMessage = 'Importing $finalSubject ($sName)...';
      notifyListeners();
      await DatabaseService.importFromJsonWithMetadata(
        sJson, 
        fileName: 'remote_${mId}_$_sourceLang.json',
        overrideSubject: finalSubject, // Standardized Subject
        userId: 'user', 
      );

      _statusMessage = 'Importing $finalSubject ($tName)...';
      notifyListeners();
      final importResult = await DatabaseService.importFromJsonWithMetadata(
        tJson, 
        fileName: 'remote_${mId}_$_targetLang.json',
        overrideSubject: finalSubject, // Standardized Subject
        userId: 'user', 
      );

      // Import Pivot (English) if fetched
      if (fetchPivot && results.length > 2 && results[2].statusCode == 200) {
        _statusMessage = 'Linking with English Pivot...';
        notifyListeners();
        final eJson = utf8.decode(results[2].bodyBytes);
        await DatabaseService.importFromJsonWithMetadata(
          eJson, 
          fileName: 'remote_${mId}_en.json',
          overrideSubject: mName, // Force Subject Alignment
          userId: 'user', // Ensure visible to default user
        );
      }

      await loadDialogueGroups();
      await loadStudyMaterials();
      await loadRecordsByTags();
      
      _statusMessage = '$mName Imported Successfully';
      notifyListeners();
      return importResult;
    } catch (e) {
      _statusMessage = 'Import Failed: $e';
      notifyListeners();
      return {'success': false, 'error': e.toString()};
    } finally {
      _isTranslating = false;
      notifyListeners();
    }
  }

  String _getLanguageFullName(String code) {
    final lang = LanguageConstants.supportedLanguages.firstWhere(
      (l) => l['code'] == code, orElse: () => {'name': code}
    );
    return lang['name']!;
  }


  /// Add refill amount (e.g. from Ad)
  Future<void> refill(int amount) async {
    await _usageService.addRefill(amount);
    notifyListeners();
  }
  // ==========================================
  // Phase 70: Multi-Persona Logic
  // ==========================================
  
  List<ChatParticipant> _activeParticipants = [];
  List<ChatParticipant> get activeParticipants => _activeParticipants;

  Future<void> loadParticipants() async {
    if (_activeDialogueId == null) return;
    
    final data = await DatabaseService.getParticipants(_activeDialogueId!);
    _activeParticipants = data.map((json) => ChatParticipant.fromJson(json)).toList();
    notifyListeners();
  }

  /// Find a participant or create a new one (e.g. Stranger)
  Future<ChatParticipant> getOrAddParticipant({
    required String name,
    required String role, 
    String? gender,
    String? langCode,
  }) async {
    // 1. Check Cache
    final existing = _activeParticipants.firstWhere(
      (p) => p.name == name && p.role == role,
      orElse: () => ChatParticipant(
        id: 'temp', 
        dialogueId: '', 
        name: '', 
        role: ''
      ),
    );

    if (existing.id != 'temp') return existing;

    // 2. Create New
    final newId = const Uuid().v4();
    final newParticipant = ChatParticipant(
      id: newId,
      dialogueId: _activeDialogueId!,
      name: name,
      role: role,
      gender: gender ?? (role == 'user' ? _chatUserGender : _chatAiGender),
      langCode: langCode ?? (role == 'user' ? _sourceLang : _targetLang),
      avatarColor: Colors.primaries[Random().nextInt(Colors.primaries.length)].value,
    );

    await DatabaseService.insertParticipant(newParticipant.toJson());
    _activeParticipants.add(newParticipant);
    notifyListeners();
    
    return newParticipant;
  }

  Future<void> updateParticipant(String id, {String? gender, String? langCode, String? name}) async {
    final index = _activeParticipants.indexWhere((p) => p.id == id);
    if (index == -1) return;

    final old = _activeParticipants[index];
    final updated = ChatParticipant(
      id: old.id,
      dialogueId: old.dialogueId,
      name: name ?? old.name, // Added Name
      role: old.role,
      gender: gender ?? old.gender,
      langCode: langCode ?? old.langCode,
      avatarColor: old.avatarColor,
    );

    _activeParticipants[index] = updated;
    await DatabaseService.updateParticipant(id, updated.toJson());
    notifyListeners();
  }
  
  // ==========================================
  // Mode 4: Game Support
  // ==========================================
  
  /// Start listening for Game Mode (Continuous-ish)
  /// Start listening for Game Mode (Continuous)
  Future<void> startMode4Listening({
    required String lang,
    required Function(String text, bool isFinal) onResult,
  }) async {
    try {
      _mode4Active = true;
      _isListening = true;
      notifyListeners();

      // Listen to status for auto-restart
      _speechStatusSubscription?.cancel();
      _speechStatusSubscription = _speechService.statusStream.listen((status) {
        if (_mode4Active && (status == 'done' || status == 'notListening')) {
             debugPrint('[AppState] Auto-restarting Mode 4 STT...');
             // Restart immediately
             _speechService.startContinuousSTT(
               lang: _getServiceLocale(lang),
               onResult: (text, isFinal, alternates) => onResult(text, isFinal),
             );
        }
      });
      
      await _speechService.startContinuousSTT(
        lang: _getServiceLocale(lang),
        onResult: (text, isFinal, alternates) {
          onResult(text, isFinal);
        },
      );
    } catch (e) {
      debugPrint('[AppState] Mode 4 Listen Error: $e');
      _isListening = false;
      notifyListeners();
    }
  }

  /// Stop Mode 4 Listening explicitly
  Future<void> stopMode4Listening() async {
    _mode4Active = false;
    _speechStatusSubscription?.cancel();
    await _speechService.stopSTT();
    _isListening = false;
    notifyListeners();
  }

  // ==========================================
  // Phase 11: AI Dialogue Management
  // ==========================================

  /// Create a new dialogue and set as active session (Phase 75.8: Added gender)
  Future<void> startNewDialogue({String? persona, String? gender}) async {
    try {
      _statusMessage = 'Starting new chat...';
      notifyListeners();

      // 1. Create on Supabase
      final dialogueId = await SupabaseService.createDialogueGroup(
        title: 'New Conversation', // Initial title
        persona: persona,
      );

      _activeDialogueId = dialogueId;
      _activeDialogueTitle = 'New Conversation';
      _activePersona = persona;
      _activePersonaGender = gender; // Assuming this field exists or adding it
      _currentDialogueSequence = 1;

      // 2. Save to local SQLite
      await DatabaseService.insertDialogueGroup(
        id: dialogueId,
        title: 'New Conversation',
        persona: persona,
        createdAt: DateTime.now().toIso8601String(),
        userId: SupabaseService.client.auth.currentUser?.id,
      );

      // Pre-create the Assistant participant with chosen gender
      if (persona != null) {
        await getOrAddParticipant(
          name: persona,
          role: 'assistant',
          gender: gender,
          langCode: _targetLang, // Use current target language
        );
      }

      // 3. Optimistic Update (Immediate List Insertion)
      _dialogueGroups.insert(0, DialogueGroup(
        id: dialogueId,
        userId: SupabaseService.client.auth.currentUser?.id ?? 'anonymous',
        title: 'New Conversation',
        persona: persona,
        createdAt: DateTime.now(),
      ));

      _statusMessage = 'Chat started';
      notifyListeners();
    } catch (e) {
      _statusMessage = 'Failed to start chat: $e';
      notifyListeners();
    }
  }

  /// Load dialogue groups (Offline-First Strategy)
  Future<void> loadDialogueGroups() async {
    final userId = SupabaseService.client.auth.currentUser?.id;
    
    // 1. Background Sync (If online)
    if (userId != null) {
      try {
        final response = await SupabaseService.client
            .from('dialogue_groups')
            .select()
            .eq('user_id', userId)
            .order('created_at', ascending: false);

        final cloudGroups = (response as List).map((json) => DialogueGroup.fromJson(json)).toList();
        
        // Upsert to Local DB
        for (var group in cloudGroups) {
          await DatabaseService.insertDialogueGroup(
            id: group.id,
            userId: group.userId,
            title: group.title,
            persona: group.persona,
            location: group.location,
            createdAt: group.createdAt.toIso8601String(),
          );
        }
      } catch (e) {
        debugPrint('[AppState] Supabase dialogue sync failed: $e');
        // Continue to load local data even if sync fails
      }
    }

    // 2. Load from Local DB (Single Source of Truth)
    try {
      final userId = SupabaseService.client.auth.currentUser?.id;
      final localData = await DatabaseService.getDialogueGroups(userId: userId);
      
      final List<DialogueGroup> loadedGroups = [];
      for (final m in localData) {
        try {
          loadedGroups.add(DialogueGroup(
            id: m['id'] as String,
            userId: m['user_id'] as String? ?? 'anonymous',
            title: m['title'] as String?,
            persona: m['persona'] as String?,
            location: m['location'] as String?,
            note: m['note'] as String?, // Phase 62
            createdAt: m['created_at'] != null 
              ? DateTime.tryParse(m['created_at'] as String) ?? DateTime.now() 
              : DateTime.now(),
          ));
        } catch (e) {
          debugPrint('[AppState] Failed to parse dialogue group ${m['id']}: $e');
        }
      }
      
      _dialogueGroups = loadedGroups;
      notifyListeners();
    } catch (e) {
       debugPrint('[AppState] Local dialogue load failed: $e');
    }
  }

  /// Reset active dialogue session
  void clearActiveDialogue() {
    _activeDialogueId = null;
    _activeDialogueTitle = null;
    _activePersona = null;
    _activePersonaGender = null; // Phase 75.8
    _currentDialogueSequence = 0;
    notifyListeners();
  }

  /// Delete a dialogue group (Phase 75.6)
  Future<void> deleteDialogue(String id) async {
    try {
      // 1. Delete from Local DB
      await DatabaseService.deleteDialogueGroup(id);
      
      // 2. Delete from Cloud (Supabase) - Added Phase 75.6
      try {
        await SupabaseService.deleteDialogueGroup(id);
      } catch (cloudError) {
        debugPrint('[AppState] Cloud delete failed (but local succeeded): $cloudError');
        // We don't rethrow here because the dialogue is already gone from local UI
      }
      
      // Update Local List
      _dialogueGroups.removeWhere((g) => g.id == id);
      
      // If active dialogue is deleted, clear it
      if (_activeDialogueId == id) {
        clearActiveDialogue();
      }
      
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Error deleting dialogue: $e');
      rethrow;
    }
  }

  Future<void> loadExistingDialogue(DialogueGroup group) async {
    _activeDialogueId = group.id;
    _activeDialogueTitle = group.title;
    _activePersona = group.persona;
    _activeDialogueLocation = group.location;
    _currentChatLocation = group.location ?? '';
    
    // Get records from local DB with current language settings (Phase 75.9)
    var records = await DatabaseService.getRecordsByDialogueId(
      group.id,
      sourceLang: _sourceLang,
      targetLang: _targetLang,
    );
    
    // Cross-device Sync: If local is empty, try fetching from Personal Cloud
    if (records.isEmpty) {
      final cloudMessages = await SupabaseService.getPrivateChatMessages(group.id);
      if (cloudMessages.isNotEmpty) {
        // Save to local DB for future use
        for (var msg in cloudMessages) {
          // Reconstruct the unified record locally
          await DatabaseService.saveUnifiedRecord(
            text: msg['source_text'],
            lang: 'auto', // Or determine from metadata if available
            translation: msg['target_text'],
            targetLang: 'auto',
            type: 'sentence', // Chat is sentences
            tags: ['Dialogue'],
          );
          
          // Link in chat_messages table
          // We need the group_id from cloud or local.
          final localGroupId = DateTime.now().millisecondsSinceEpoch; // New local group id
          
          final db = await DatabaseService.database;
          await db.insert('chat_messages', {
            'dialogue_id': group.id,
            'group_id': msg['group_id'], // Use cloud group_id
            'speaker': msg['speaker'],
            'sequence_order': msg['sequence_order'],
            'created_at': msg['created_at'],
          });
        }
        // Reload from local after sync
        records = await DatabaseService.getRecordsByDialogueId(
          group.id,
          sourceLang: _sourceLang,
          targetLang: _targetLang,
        );
      }
    }

    if (records.isNotEmpty) {
      _currentDialogueSequence = records.map((r) => (r['sequence_order'] as int? ?? 0)).reduce((a, b) => a > b ? a : b);
    } else {
      _currentDialogueSequence = 0;
    }
    
    notifyListeners();
  }

  void setCurrentChatLocation(String loc) {
    _currentChatLocation = loc;
    notifyListeners();
  }

  /// Request AI to suggest titles based on current chat history
  Future<void> fetchChatTitleSuggestions() async {
    if (_activeDialogueId == null) return;
    
    _isFetchingTitles = true;
    _suggestedTitles = [];
    notifyListeners();
    
    try {
      final records = await DatabaseService.getRecordsByDialogueId(
        _activeDialogueId!,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
      );
      
      // Convert to format required by service
      final history = records.map((r) => {
        'source_text': r['source_text'],
        'target_text': r['target_text'],
        'speaker': r['speaker'],
      }).toList();
      
      _suggestedTitles = await TranslationService.generateTitleSuggestions(history);
      
      // Fallback: Default titles if AI fails
      if (_suggestedTitles.isEmpty) {
        final dateStr = DateTime.now().toString().split('.')[0];
        _suggestedTitles = ["Conversation $dateStr", "Quick Chat", "Language Practice"];
      }
    } catch (e) {
      debugPrint('[AppState] Error fetching title suggestions: $e');
    } finally {
      _isFetchingTitles = false;
      notifyListeners();
    }
  }

  /// Finalize dialogue with user-defined title, location, and note
  Future<void> saveDialogueProgress(String title, String location, String? note) async {
    if (_activeDialogueId == null) return;
    
    _activeDialogueTitle = title;
    _activeDialogueLocation = location;
    
    try {
      // 1. Update Local SQLite
      await DatabaseService.insertDialogueGroup(
        id: _activeDialogueId!,
        title: title,
        location: location,
        persona: _activePersona,
        note: note,
        createdAt: DateTime.now().toIso8601String(), // This might reset creation time if not careful, but fine for 'last active'
        userId: SupabaseService.client.auth.currentUser?.id,
      );
      
      // 2. Update Supabase (Best effort)
      await SupabaseService.updateDialogueTitle(_activeDialogueId!, title);
      try {
        await SupabaseService.client.from('dialogue_groups').update({
          'location': location,
          'note': note
        }).eq('id', _activeDialogueId!);
      } catch (e) {
        debugPrint('[AppState] Supabase location sync failed: $e');
      }
      
      // 3. Optimistic Update of Local List (CRITICAL FIX for UI Lag)
      final index = _dialogueGroups.indexWhere((g) => g.id == _activeDialogueId);
      final updatedGroup = DialogueGroup(
          id: _activeDialogueId!,
          userId: SupabaseService.client.auth.currentUser?.id ?? 'anonymous',
          title: title,
          persona: _activePersona,
          location: location,
          note: note,
          createdAt: index != -1 ? _dialogueGroups[index].createdAt : DateTime.now(),
      );

      if (index != -1) {
        _dialogueGroups[index] = updatedGroup;
      } else {
        _dialogueGroups.insert(0, updatedGroup);
      }
      notifyListeners(); // Immediate UI Update

      // 4. Refresh lists silently
      await loadStudyMaterials();
      
    } catch (e) {
      debugPrint('[AppState] Error saving dialogue progress: $e');
    }
  }

  /// Save User's message to dialogue
  Future<void> saveUserMessage(String sourceText, String targetText) async {
    if (_activeDialogueId == null) return;

    final createdAt = DateTime.now().toIso8601String();
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    _currentDialogueSequence++;

    try {
      final db = await DatabaseService.database;
      await db.transaction((txn) async {
        const table = 'sentences';

        // 1. User Input (Source Language)
        final sourceId = await txn.insert(table, {
          'group_id': timestamp,
          'text': sourceText,
          'lang_code': _sourceLang,
          'created_at': createdAt,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        // 2. Translation (Target Language)
        final targetId = await txn.insert(table, {
          'group_id': timestamp,
          'text': targetText,
          'lang_code': _targetLang,
          'created_at': createdAt,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        // 3. Link Translation
        await txn.insert('sentence_translations', {
          'source_sentence_id': sourceId,
          'target_sentence_id': targetId,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        // 4. Chat Message Link
        await txn.insert('chat_messages', {
          'dialogue_id': _activeDialogueId,
          'group_id': timestamp,
          'speaker': 'user',
          'sequence_order': _currentDialogueSequence,
          'created_at': createdAt,
        });
      });

      notifyListeners();

      // Background Sync
      SupabaseService.savePrivateChatMessage(
        dialogueId: _activeDialogueId!,
        sourceText: sourceText,
        targetText: targetText,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
        speaker: 'user',
        sequenceOrder: _currentDialogueSequence,
      ).catchError((e) => debugPrint('[AppState] Cloud Sync Error: $e'));

    } catch (e) {
      debugPrint('[AppState] Error saving user message: $e');
    }
  }

  /// Save AI response to dialogue using Unified Schema (Phase 13 Refactored)
  Future<void> saveAiResponse(
    String sourceText, 
    String targetText, {
    String? speaker,
    String? pos,
    String? formType,
    String? root,
    String? explanation,
  }) async {
    if (_activeDialogueId == null) {
      await startNewDialogue();
    }
    
    final finalSpeaker = speaker ?? _activePersona ?? 'AI';
    final createdAt = DateTime.now().toIso8601String();
    final timestamp = DateTime.now().millisecondsSinceEpoch;

    _currentDialogueSequence++;
    
    try {
      final db = await DatabaseService.database;
      
      // 1. Local Save (Unified Schema)
      await db.transaction((txn) async {
        const table = 'sentences'; // AI chat always treated as sentences
        
        // Source (AI text in Target Language)
        // Wait, chat messages are stored as source(Speaker's original) -> target(Translation)
        // If AI speaks in English, English is source_text.
        
        final sourceId = await txn.insert(table, {
          'group_id': timestamp,
          'text': sourceText,
          'lang_code': _targetLang, // AI speaks in Target Lang
          'pos': pos,
          'form_type': formType,
          'root': root,
          'note': explanation,
          'created_at': createdAt,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        // Target (User's Mother Tongue Translation)
        final targetId = await txn.insert(table, {
          'group_id': timestamp,
          'text': targetText,
          'lang_code': _sourceLang, 
          'created_at': createdAt,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        // Translation Link
        await txn.insert('sentence_translations', {
          'source_sentence_id': sourceId > 0 ? sourceId : (await _getUnifiedId(txn, table, sourceText, _targetLang, explanation)),
          'target_sentence_id': targetId > 0 ? targetId : (await _getUnifiedId(txn, table, targetText, _sourceLang, null)),
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        // Tags
        await txn.insert('item_tags', {
          'item_id': sourceId > 0 ? sourceId : (await _getUnifiedId(txn, table, sourceText, _targetLang, explanation)),
          'item_type': 'sentence',
          'tag': 'Dialogue',
        }, conflictAlgorithm: ConflictAlgorithm.ignore);

        // Structural Link (NEW chat_messages table)
        await txn.insert('chat_messages', {
          'dialogue_id': _activeDialogueId,
          'group_id': timestamp,
          'speaker': finalSpeaker,
          'sequence_order': _currentDialogueSequence,
          'created_at': createdAt,
        });
      });

      // 2. Personal Cloud Sync (Background Backup for performance)
      SupabaseService.savePrivateChatMessage(
        dialogueId: _activeDialogueId!,
        sourceText: sourceText,
        targetText: targetText,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
        speaker: speaker ?? 'unknown',
        sequenceOrder: _currentDialogueSequence,
      ).catchError((e) => debugPrint('[AppState] Background Cloud Sync Error: $e'));
    } catch (e) {
      debugPrint('[AppState] Error saving AI response: $e');
    }
  }

  String getServiceLocale(String langCode) {
    switch (langCode) {
      case 'ko': return 'ko-KR';
      case 'en': return 'en-US';
      case 'ja': return 'ja-JP';
      case 'zh': return 'zh-CN';
      case 'es': return 'es-ES';
      case 'fr': return 'fr-FR';
      case 'de': return 'de-DE';
      default: return langCode;
    }
  }

  // Autocomplete Support
  Future<List<String>> searchMatchingRoots(String query) async {
    return await DatabaseService.searchWords(query);
  }

  // Phase 21: Tab-Specific Search & Memorized Status
  Future<List<Map<String, String>>> searchByType(String query) async {
    // Current Type (Word or Sentence)
    final type = _recordTypeFilter == 'word' ? 'word' : 'sentence';
    return await DatabaseService.searchByType(query, type);
  }

  /// Jump to result: Just set query and clear tags. 
  /// Type switching is NOT needed because we only search within the current tab.
  void jumpToSearchResult(String text, String type) {
    _selectedTags.clear(); // Clear tag filters to show result
    _selectedMaterialId = null; 
    setSearchQuery(text); // This calls loadRecordsByTags
    notifyListeners();
  }
  

}

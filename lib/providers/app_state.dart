import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async'; // Added for Timer
import '../services/database_service.dart';
import '../services/translation_service.dart';
import '../services/speech_service.dart';
import '../constants/language_constants.dart';
import '../services/usage_service.dart';

/// App-wide state management for Talkie
class AppState extends ChangeNotifier {
  // Services
  final SpeechService _speechService = SpeechService();
  final UsageService _usageService = UsageService();
  SharedPreferences? _prefs;

  AppState(this._prefs) {
    _initSettings();
  }

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
    }
  }

  Future<void> _saveSettings() async {
    await _prefs?.setString('sourceLang', _sourceLang);
    await _prefs?.setString('targetLang', _targetLang);
  }

  
  // Current mode: 0 = 검색, 1 = 복습/학습, 2 = 말하기
  int _currentMode = 0;
  
  // Mode 1 (검색) State
  String _sourceText = '';
  String _translatedText = '';
  String _sourceLang = 'ko';
  String _targetLang = 'ja';
  bool _isListening = false;
  bool _isTranslating = false;
  bool _isSpeaking = false;
  bool _isSaved = false; // Track if current translation is saved
  String _statusMessage = '';
  
  // Duplicate detection & translation reuse state
  List<Map<String, dynamic>> _similarSources = [];
  int? _selectedSourceId; // null = new entry
  bool _showDuplicateDialog = false;
  bool _duplicateCheckTriggered = false; // Flag to prevent repeated checks
  
  // Mode 2 (복습) State
  List<Map<String, dynamic>> _studyRecords = [];
  String _selectedReviewLanguage = 'ja'; // Filter by target language
  
  // Mode 2 (학습 자료 & 복습) State
  List<Map<String, dynamic>> _studyMaterials = []; // Available study materials
  int? _selectedMaterialId; // Currently selected material
  List<Map<String, dynamic>> _materialRecords = []; // Sentences in selected material
  Set<int> _studiedTranslationIds = {}; // Reviewed translations in current session
  
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
  String get statusMessage => _statusMessage;
  List<Map<String, dynamic>> get studyRecords => _studyRecords;
  List<Map<String, dynamic>> get similarSources => _similarSources;
  int? get selectedSourceId => _selectedSourceId;
  bool get showDuplicateDialog => _showDuplicateDialog;
  String get selectedReviewLanguage => _selectedReviewLanguage;
  
  // Mode 2 Getters
  List<Map<String, dynamic>> get studyMaterials => _studyMaterials;
  int? get selectedMaterialId => _selectedMaterialId;
  List<Map<String, dynamic>> get materialRecords => _materialRecords;
  Set<int> get studiedTranslationIds => _studiedTranslationIds;

  /// Get study materials filtered by current source/target languages
  List<Map<String, dynamic>> get filteredStudyMaterials {
    return _studyMaterials.where((material) {
      final id = material['id'] as int;
      if (id == 0) return true; // Always show default material (container)

      final mSource = material['source_language'] as String;
      final mTarget = material['target_language'] as String;

      // Show if languages match current app settings
      // Also handle 'auto' fallback just in case
      return (mSource == _sourceLang && mTarget == _targetLang) ||
             (mSource == 'auto' && mTarget == 'auto');
    }).toList();
  }
  
  // Language display names (Dynamic)
  // ALWAYS return English names as per user request to ensure readability
  Map<String, String> get languageNames => 
      LanguageConstants.getLanguageMap('en');

  
  // ==========================================
  // Mode Switching
  // ==========================================
  
  void switchMode(int mode) {
    _currentMode = mode;
    
    if (mode == 1) {
      // Study Material mode (Mode 2) - Load materials
      loadStudyMaterials();
    } else if (mode == 2) {
      // Speaking Mode (Mode 3)
      loadStudyMaterials(); // Ensure materials are loaded
      
      // Auto-select first material if none selected
      if (_studyMaterials.isNotEmpty && _selectedMaterialId == null) {
        selectMaterial(_studyMaterials.first['id'] as int);
      }
    }
    
    notifyListeners();
  }
  
  // ==========================================
  // Mode 1: Search (STT → Translation → TTS)
  // ==========================================
  
  /// Start speech-to-text
  Future<void> startListening() async {
    try {
      _isListening = true;
      _statusMessage = '듣는 중...';
      notifyListeners();
      
      await _speechService.startSTT(
        lang: _getLangCode(_sourceLang),
        onResult: (text, isFinal) {
          _sourceText = text;
          notifyListeners();
          
          // Only stop listening when final result is received
          if (isFinal && text.trim().isNotEmpty) {
            _statusMessage = '인식 완료';
            stopListening();
          }
        },
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
  
  /// Search for similar source texts (for duplicate detection)
  Future<void> searchSimilarSources(String text) async {
    if (text.trim().isEmpty) {
      _similarSources = [];
      _showDuplicateDialog = false;
      notifyListeners();
      return;
    }
    
    try {
      _similarSources = await DatabaseService.searchSimilarText(_sourceLang, text);
      _showDuplicateDialog = _similarSources.isNotEmpty;
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Error searching similar sources: $e');
      _similarSources = [];
      _showDuplicateDialog = false;
      notifyListeners();
    }
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
  Future<void> translate() async {
    if (_sourceText.isEmpty) {
      _statusMessage = '번역할 텍스트를 입력하세요';
      notifyListeners();
      return;
    }
    
    try {
      _isTranslating = true;
      _statusMessage = '확인 중...';
      notifyListeners();

      // 0. Check Limits (NEW)
      await _usageService.checkLimitOrThrow();
      
      // 0. Duplicate Check (Triggered ONLY once per text change)
      // Check only if:
      // - Creating new entry (selectedSourceId == null)
      // - Not yet checked (_duplicateCheckTriggered == false)
      if (_selectedSourceId == null && !_duplicateCheckTriggered) {
        await searchSimilarSources(_sourceText);
        
        if (_similarSources.isNotEmpty) {
          _isTranslating = false;
          _duplicateCheckTriggered = true; // Mark as checked so next attempt skips
          _statusMessage = '유사한 문장이 발견되었습니다';
          // _showDuplicateDialog is set to true by searchSimilarSources
          notifyListeners();
          return; // Halt translation to show dialog
        }
      }

      // 1. Save or reuse source text
      int sourceId;
      if (_selectedSourceId != null) {
        // Reuse existing source
        sourceId = _selectedSourceId!;
        debugPrint('[AppState] Reusing existing source: id=$sourceId');
      } else {
        // Create new source entry
        sourceId = await DatabaseService.insertLanguageRecord(_sourceLang, _sourceText);
        _selectedSourceId = sourceId;
        debugPrint('[AppState] Created new source: id=$sourceId');
      }
      
      // 2. Check if translation already exists
      _statusMessage = '번역 확인 중...';
      notifyListeners();
      
      final existingTranslation = await DatabaseService.getTranslationIfExists(
        _sourceLang,
        sourceId,
        _targetLang,
      );
      
      if (existingTranslation != null) {
        // Translation exists - load from database
        _translatedText = existingTranslation['target_text'] as String;
        _isTranslating = false;
        _statusMessage = '저장된 번역 불러옴';
        notifyListeners();
        debugPrint('[AppState] Loaded existing translation from database');
        return;
      }
      
      // 3. Translation doesn't exist - call API
      _statusMessage = '번역 중...';
      notifyListeners();
      
      _translatedText = await TranslationService.translate(
        text: _sourceText,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
      );
      
      // 4. Increment Usage (NEW)
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
  }
  
  /// Save translation to database
  Future<void> saveTranslation() async {
    if (_translatedText.isEmpty || _selectedSourceId == null) {
      _statusMessage = '저장할 번역이 없습니다';
      notifyListeners();
      return;
    }
    
    try {
      _statusMessage = '저장 중...';
      notifyListeners();
      
      // 1. Insert target text
      final targetId = await DatabaseService.insertLanguageRecord(
        _targetLang,
        _translatedText,
      );
      
      // 1.5 Get default material ID (0)
      final materialId = await DatabaseService.getOrCreateDefaultMaterial();
      
      // 2. Create translation link
      await DatabaseService.saveTranslationLink(
        sourceLang: _sourceLang,
        sourceId: _selectedSourceId!,
        targetLang: _targetLang,
        targetId: targetId,
        materialId: materialId,
      );
      
      // Clear status message after save
      _statusMessage = '';
      _isSaved = true; // Mark as saved
      
      // Reload study records to update review count in tab
      await loadStudyRecords();
      
      // Reload study materials to update counts and metadata
      await loadStudyMaterials();
      
      // If Mode 2 is currently viewing a specific material (or 'All'), reload it immediately
      if (_selectedMaterialId != null) {
        await loadMaterialRecords(_selectedMaterialId!);
      }
      
      notifyListeners();
      
      debugPrint('[AppState] Translation saved successfully');
    } catch (e) {
      _statusMessage = '저장 실패: $e';
      notifyListeners();
      debugPrint('[AppState] Error saving translation: $e');
    }
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
        lang: _getLangCode(_targetLang),
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
  
  /// Load all study records from database
  Future<void> loadStudyRecords() async {
    try {
      // Load records filtered by selected review language
      _studyRecords = await DatabaseService.getRecordsByTargetLanguage(
        _selectedReviewLanguage,
      );
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Error loading study records (web platform): $e');
      _studyRecords = []; // Empty list on web
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
      await _speechService.speak(text, lang: _getLangCode(lang));
    } catch (e) {
      debugPrint('[AppState] Error playing TTS: $e');
    }
  }
  
  /// Increment review count
  Future<void> reviewRecord(int id) async {
    try {
      await DatabaseService.incrementReviewCount(id);
      await loadStudyRecords(); // Reload to update UI
    } catch (e) {
      debugPrint('[AppState] Error incrementing review count: $e');
    }
  }
  
  /// Delete a translation record
  Future<void> deleteRecord(int id) async {
    try {
      await DatabaseService.deleteTranslationRecord(id);
      
      // Refresh global study records
      await loadStudyRecords(); 
      
      // Refresh Mode 3 list if active
      if (_currentMode == 1) { // Mode 3 (Index 1)
        if (_selectedMaterialId == -1) {
          await loadAllRecordsIntoMaterialView();
        } else if (_selectedMaterialId != null) {
          await loadMaterialRecords(_selectedMaterialId!);
        }
      }
      
      debugPrint('[AppState] Record deleted successfully: id=$id');
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

    
    // Sync Review Tab Filter
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
  
  void clearTexts() {
    _sourceText = '';
    _translatedText = '';
    _statusMessage = '';
    _selectedSourceId = null;
    _similarSources = [];
    _showDuplicateDialog = false;
    _duplicateCheckTriggered = false;
    _isSaved = false; // Reset save state
    notifyListeners();
  }
  
  /// Import study materials from JSON file content
  Future<Map<String, dynamic>> importFromJsonFile(String jsonContent) async {
    try {
      final result = await DatabaseService.importFromJson(jsonContent);
      
      // Reload study records after import
      // Reset filter to show all records by getting the target language from JSON
      if (result['success'] == true) {
        // Parse JSON to get target language and update filter
        try {
          final data = json.decode(jsonContent) as Map<String, dynamic>;
          final targetLang = data['target_language'] as String?;
          if (targetLang != null) {
            _selectedReviewLanguage = targetLang;
          }
        } catch (e) {
          debugPrint('[AppState] Could not parse target language from JSON: $e');
        }
        await loadStudyRecords();
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
  
  /// Load all study materials
  Future<void> loadStudyMaterials() async {
    try {
      _studyMaterials = await DatabaseService.getAllStudyMaterials();
      
      // Auto-select first material if none selected
      if (_studyMaterials.isNotEmpty && _selectedMaterialId == null) {
        _selectedMaterialId = _studyMaterials.first['id'] as int;
        await loadMaterialRecords(_selectedMaterialId!);
      }
      
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Error loading study materials: $e');
      _studyMaterials = [];
      notifyListeners();
    }
  }
  
  /// Select a study material and load its records
  Future<void> selectMaterial(int? materialId) async {
    _selectedMaterialId = materialId;
    
    // Reset Mode 3 State when material changes
    _currentMode3Question = null;
    _mode3UserAnswer = '';
    _mode3Score = null;
    _mode3Feedback = '';
    _mode3SessionActive = false;
    _mode3CompletedQuestionIds.clear(); // Optional: Clear history for clean start? Or keep?
    // Let's keep history if we switch back? No, user usually expects fresh context.
    // However, if they accidentally switch, they lose progress. 
    // But the request says "initialize state", implying clean slate.
    // Let's clear visual state but maybe keep completed IDs? 
    // The user requirement "Result area should clear" is visual.
    // Let's clear visual state.
    _cancelMode3Timers();
    
    if (materialId != null) {
      if (materialId == -1) {
        // Load ALL records (Review Mode functionality integrated here)
        await loadAllRecordsIntoMaterialView();
      } else {
        await loadMaterialRecords(materialId);
      }
    } else {
      _materialRecords = [];
    }
    notifyListeners();
  }

  /// Reset practice progress for current session
  void resetMode3Progress() {
    _mode3CompletedQuestionIds.clear();
    _currentMode3Question = null;
    _mode3UserAnswer = '';
    _mode3Score = null;
    _mode3Feedback = '';
    _mode3SessionActive = false;
    _cancelMode3Timers();
    _statusMessage = '연습 기록이 초기화되었습니다.';
    notifyListeners();
  }

  /// Load all records into the material view list (for "Review All" feature)
  Future<void> loadAllRecordsIntoMaterialView() async {
    try {
      final db = await DatabaseService.database;
      
      // Query identical to loadStudyRecords but storing in _materialRecords
      final List<Map<String, dynamic>> maps = await db.rawQuery('''
        SELECT 
          t.id, 
          t.source_lang, t.source_id, 
          t.target_lang, t.target_id,
          t.material_id,
          t.created_at,
          l1.text as source_text,
          l2.text as target_text,
          l2.review_count,
          l2.last_reviewed
        FROM translations t
        INNER JOIN lang_$_sourceLang l1 ON t.source_id = l1.id
        INNER JOIN lang_$_targetLang l2 ON t.target_id = l2.id
        WHERE t.source_lang = ? AND t.target_lang = ?
        ORDER BY t.created_at DESC
      ''', [_sourceLang, _targetLang]);

      _materialRecords = maps;
      notifyListeners();
      debugPrint('[AppState] Loaded ${_materialRecords.length} records for Review All view');
    } catch (e) {
      debugPrint('[AppState] Error loading all records for material view: $e');
    }
  }
  
  /// Load records for selected material
  Future<void> loadMaterialRecords(int materialId) async {
    try {
      _materialRecords = await DatabaseService.getRecordsByMaterialId(
        materialId,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
      );
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Error loading material records: $e');
      _materialRecords = [];
      notifyListeners();
    }
  }
  
  /// Import JSON file with metadata (Mode 3)
  Future<Map<String, dynamic>> importJsonWithMetadata(
    String jsonContent,
    {String? fileName}
  ) async {
    try {
      final result = await DatabaseService.importFromJsonWithMetadata(
        jsonContent,
        fileName: fileName,
      );
      
      // Reload study materials after import
      if (result['success'] == true) {
        await loadStudyMaterials();
        
        // Auto-select the newly imported material ONLY if it matches current languages
        final materialId = result['material_id'] as int?;
        if (materialId != null) {
          final newMat = _studyMaterials.firstWhere(
            (m) => m['id'] == materialId,
            orElse: () => {},
          );
          
          if (newMat.isNotEmpty) {
            final mSource = newMat['source_language'] as String;
            final mTarget = newMat['target_language'] as String;
            
            if ((mSource == _sourceLang && mTarget == _targetLang) || 
                (mSource == 'auto' && mTarget == 'auto')) {
              await selectMaterial(materialId);
            }
          }
        }
      }
      
      return result;
    } catch (e) {
      debugPrint('[AppState] Error importing JSON with metadata: $e');
      return {
        'success': false,
        'imported': 0,
        'skipped': 0,
        'total': 0,
        'errors': ['Import failed: $e'],
      };
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
      
      await _speechService.speak(text, lang: _getLangCode(lang));
      
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
  Map<String, dynamic>? _currentMode3Question;
  String _mode3UserAnswer = '';
  double? _mode3Score; // 0.0 to 100.0
  String _mode3Feedback = '';
  
  // Track completed questions (Perfect score) in current session to avoid repetition
  final Set<int> _mode3CompletedQuestionIds = {};
  
  // Timeout & Retry Logic
  bool _showRetryButton = false;
  Timer? _mode3Timer;
  Timer? _retryAutoSkipTimer;
  
  int get mode3Interval => _mode3Interval;
  bool get mode3SessionActive => _mode3SessionActive;
  Map<String, dynamic>? get currentMode3Question => _currentMode3Question;
  String get mode3UserAnswer => _mode3UserAnswer;
  double? get mode3Score => _mode3Score;
  String get mode3Feedback => _mode3Feedback;
  bool get showRetryButton => _showRetryButton;
  
  void setMode3Interval(int seconds) {
    _mode3Interval = seconds;
    notifyListeners();
  }
  
  Future<void> toggleMode3Session() async {
    _mode3SessionActive = !_mode3SessionActive;
    
    if (_mode3SessionActive) {
      // Start session
      if (_materialRecords.isEmpty) {
        _statusMessage = '먼저 학습 자료를 선택하세요';
        _mode3SessionActive = false;
      } else {
        await _nextMode3Question();
      }
    } else {
      // Stop session
      _cancelMode3Timers(); // Cancel any running timers
      _speechService.stopSTT();
      _isListening = false; // Ensure global listening state is reset
      _speechService.stopSpeaking();
    }
    notifyListeners();
  }

  void _cancelMode3Timers() {
    _mode3Timer?.cancel();
    _retryAutoSkipTimer?.cancel();
    _mode3Timer = null;
    _retryAutoSkipTimer = null;
  }

  Future<void> _nextMode3Question() async {
    _cancelMode3Timers(); // Reset timers before next question
    _showRetryButton = false;
    
    if (!_mode3SessionActive || _materialRecords.isEmpty) return;
    
    // Filter out completed questions
    final availableQuestions = _materialRecords.where((record) {
      final id = record['id'] as int;
      return !_mode3CompletedQuestionIds.contains(id);
    }).toList();
    
    if (availableQuestions.isEmpty) {
      _mode3SessionActive = false;
      _mode3Feedback = 'Completed All!';
      // _statusMessage = '모든 문장을 완벽하게 학습했습니다!'; // Removed as per user request
      notifyListeners();
      await _speechService.speak("All practice completed!", lang: "en-US");
      return;
    }
    
    // Pick random question from available ones
    final randomIndex = DateTime.now().millisecondsSinceEpoch % availableQuestions.length;
    _currentMode3Question = availableQuestions[randomIndex];
    _mode3UserAnswer = '';
    _mode3Score = null;
    _mode3Feedback = '';
    
    notifyListeners();
    
    // Auto-play TTS for source text
    final sourceText = _currentMode3Question!['source_text'] as String;
    final sourceLang = _currentMode3Question!['source_lang'] as String;
    
    await _speechService.speak(sourceText, lang: _getLangCode(sourceLang));
    
    // Start listening for answer
    _startMode3Listening();
  }
  
  /// Called when user clicks "Retry"
  Future<void> retryMode3Question() async {
    _cancelMode3Timers();
    _showRetryButton = false;
    _mode3UserAnswer = ''; // Clear previous bad answer
    notifyListeners();
    
    // Simple restart listening without playing TTS again (or should we play?)
    // Let's just listen.
    _startMode3Listening();
  }
  
  Future<void> _startMode3Listening() async {
    try {
      _isListening = true;
      notifyListeners();
      
      final targetLang = _currentMode3Question!['target_lang'] as String;
      
      await _speechService.startSTT(
        lang: _getLangCode(targetLang),
        onResult: (text, isFinal) {  // Added isFinal parameter
          _mode3UserAnswer = text;
          notifyListeners();
          
          // Mode 3: Immediately check answer when finalResult is detected
          // This prevents waiting for 5-second pauseFor timeout
          if (isFinal && text.trim().isNotEmpty) {
            _cancelMode3Timers();  // Cancel timeout timer
            _checkMode3Answer();   // Check answer immediately
          }
        },
      );
      
      // Start Timeout Timer (Respect configured interval + buffer for speech)
      // This is a fallback in case finalResult is not detected
      _mode3Timer = Timer(
        Duration(seconds: _mode3Interval + 10), 
        _handleMode3Timeout,
      );
      
    } catch (e) {
      debugPrint('[AppState] Mode 3 Listen Error: $e');
      _isListening = false;
      notifyListeners();
    }
  }
  
  void _handleMode3Timeout() {
    if (!_mode3SessionActive) return;
    
    // Stop listening
    _speechService.stopSTT();
    _isListening = false;
    
    // Fix: Check if we have any captured text before failing
    if (_mode3UserAnswer.trim().isNotEmpty) {
      _checkMode3Answer();
      return;
    }
    
    // Show Retry Button
    _showRetryButton = true;
    notifyListeners();
    
    // Start Auto-Skip Timer (2 seconds)
    _retryAutoSkipTimer = Timer(const Duration(seconds: 2), () {
      if (_mode3SessionActive && _showRetryButton) {
         // User didn't click retry -> Move next
         _nextMode3Question();
      }
    });
  }
  
  Future<void> _checkMode3Answer() async {
    if (!_mode3SessionActive) return;
    
    _cancelMode3Timers(); // Stop timeout since we got an answer (implied by this being called? Wait.)
    // Stop listening if technically still active
    _speechService.stopSTT();
    _isListening = false;

    
    final targetText = _currentMode3Question!['target_text'] as String;
    
    // Calculate Score
    final similarity = _calculateSimilarity(_mode3UserAnswer, targetText);
    _mode3Score = similarity * 100;
    
    // Feedback
    if (_mode3Score! >= 90) {
      _mode3Feedback = 'Perfect!';
      // Add to completed list so it doesn't show up again this session
      final currentId = _currentMode3Question!['id'] as int;
      _mode3CompletedQuestionIds.add(currentId);
      
    } else if (_mode3Score! >= 70) {
      _mode3Feedback = 'Good';
    } else {
      _mode3Feedback = 'Try Again';
    }
    
    notifyListeners();
    
    // Wait a bit to show result, then next question
    Future.delayed(const Duration(seconds: 3), () {
      if (_mode3SessionActive) {
        _nextMode3Question();
      }
    });
  }
  
  /// Levenshtein distance based similarity (0.0 to 1.0)
  double _calculateSimilarity(String s1, String s2) {
    if (s1.isEmpty || s2.isEmpty) return 0.0;
    
    String normal1 = s1.toLowerCase().replaceAll(RegExp(r'[^\w\s]'), '');
    String normal2 = s2.toLowerCase().replaceAll(RegExp(r'[^\w\s]'), '');
    
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


  
  String _getLangCode(String lang) {
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
    _speechService.dispose();
    super.dispose();
  }

  /// Pick JSON file and import into database
  Future<Map<String, dynamic>?> pickAndImportJson() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['json'],
        withData: kIsWeb, // Important for Web
      );
      
      if (result == null || result.files.isEmpty) {
        return null; // User canceled
      }
      
      final PlatformFile file = result.files.single;
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
      return await importJsonWithMetadata(jsonContent, fileName: fileName);
      
    } catch (e) {
      return {'success': false, 'error': e.toString()};
    }
  }


  /// Add refill amount (e.g. from Ad)
  Future<void> refill(int amount) async {
    await _usageService.addRefill(amount);
    notifyListeners();
  }
}

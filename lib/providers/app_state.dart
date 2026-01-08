import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import '../services/database_service.dart';
import '../services/translation_service.dart';
import '../services/speech_service.dart';

/// App-wide state management for Talkie
class AppState extends ChangeNotifier {
  // Services
  final SpeechService _speechService = SpeechService();
  
  // Current mode: 0 = 검색, 1 = 복습, 2 = 학습 자료
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
  
  // Mode 2 (복습) State
  List<Map<String, dynamic>> _studyRecords = [];
  String _selectedReviewLanguage = 'ja'; // Filter by target language
  
  // Mode 3 (학습 자료) State
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
  
  // Mode 3 Getters
  List<Map<String, dynamic>> get studyMaterials => _studyMaterials;
  int? get selectedMaterialId => _selectedMaterialId;
  List<Map<String, dynamic>> get materialRecords => _materialRecords;
  Set<int> get studiedTranslationIds => _studiedTranslationIds;
  
  // Language display names (Native + Korean name)
  static const Map<String, String> languageNames = {
    // East Asian
    'ko': '한국어',
    'ja': '日本語 (일본어)',
    'zh-CN': '中文简体 (중국어 간체)',
    'zh-TW': '中文繁體 (중국어 번체)',
    
    // South Asian
    'hi': 'हिन्दी (힌디어)',
    'bn': 'বাংলা (벵골어)',
    'ta': 'தமிழ் (타밀어)',
    'te': 'తెలుగు (텔루구어)',
    'mr': 'मराठी (마라티어)',
    'ur': 'اردو (우르두어)',
    'gu': 'ગુજરાતી (구자라트어)',
    'kn': 'ಕನ್ನಡ (칸나다어)',
    'ml': 'മലയാളം (말라얄람어)',
    'pa': 'ਪੰਜਾਬੀ (펀자브어)',
    
    // European
    'en': 'English (영어)',
    'es': 'Español (스페인어)',
    'fr': 'Français (프랑스어)',
    'de': 'Deutsch (독일어)',
    'it': 'Italiano (이탈리아어)',
    'pt': 'Português (포르투갈어)',
    'ru': 'Русский (러시아어)',
    'pl': 'Polski (폴란드어)',
    'uk': 'Українська (우크라이나어)',
    'nl': 'Nederlands (네덜란드어)',
    'el': 'Ελληνικά (그리스어)',
    'cs': 'Čeština (체코어)',
    'ro': 'Română (루마니아어)',
    'sv': 'Svenska (스웨덴어)',
    'da': 'Dansk (덴마크어)',
    'fi': 'Suomi (핀란드어)',
    'no': 'Norsk (노르웨이어)',
    'hu': 'Magyar (헝가리어)',
    
    // Southeast Asian
    'id': 'Bahasa Indonesia (인도네시아어)',
    'vi': 'Tiếng Việt (베트남어)',
    'th': 'ไทย (태국어)',
    'fil': 'Filipino (필리핀어)',
    'ms': 'Bahasa Melayu (말레이어)',
    
    // Middle Eastern
    'ar': 'العربية (아랍어)',
    'tr': 'Türkçe (터키어)',
    'fa': 'فارسی (페르시아어)',
    'he': 'עברית (히브리어)',
    
    // African
    'sw': 'Kiswahili (스와힐리어)',
    'af': 'Afrikaans (아프리칸스어)',
  };
  
  // ==========================================
  // Mode Switching
  // ==========================================
  
  void switchMode(int mode) {
    _currentMode = mode;
    
    if (mode == 1) {
      // Load review mode data
      loadStudyRecords();
    } else if (mode == 2) {
      // Load Mode 3 study materials
      loadStudyMaterials();
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
        onResult: (text) {
          _sourceText = text;
          _statusMessage = '인식 완료';
          notifyListeners();
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
      print('[AppState] Error searching similar sources: $e');
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
    notifyListeners();
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
      
      // 1. Save or reuse source text
      int sourceId;
      if (_selectedSourceId != null) {
        // Reuse existing source
        sourceId = _selectedSourceId!;
        print('[AppState] Reusing existing source: id=$sourceId');
      } else {
        // Create new source entry
        sourceId = await DatabaseService.insertLanguageRecord(_sourceLang, _sourceText);
        _selectedSourceId = sourceId;
        print('[AppState] Created new source: id=$sourceId');
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
        print('[AppState] Loaded existing translation from database');
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
      
      // Auto-save translation (will be called in saveTranslation method)
      _isTranslating = false;
      _statusMessage = '번역 완료 (저장 필요)';
      _isSaved = false; // Reset save state for new translation
      notifyListeners();
    } catch (e) {
      _isTranslating = false;
      _statusMessage = '번역 실패: $e';
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
      
      // 2. Create translation link
      await DatabaseService.saveTranslationLink(
        sourceLang: _sourceLang,
        sourceId: _selectedSourceId!,
        targetLang: _targetLang,
        targetId: targetId,
      );
      
      // Clear status message after save
      _statusMessage = '';
      _isSaved = true; // Mark as saved
      
      // Reload study records to update review count in tab
      await loadStudyRecords();
      
      notifyListeners();
      
      print('[AppState] Translation saved successfully');
    } catch (e) {
      _statusMessage = '저장 실패: $e';
      notifyListeners();
      print('[AppState] Error saving translation: $e');
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
      print('[AppState] Error loading study records (web platform): $e');
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
      print('[AppState] Error playing TTS: $e');
    }
  }
  
  /// Increment review count
  Future<void> reviewRecord(int id) async {
    try {
      await DatabaseService.incrementReviewCount(id);
      await loadStudyRecords(); // Reload to update UI
    } catch (e) {
      print('[AppState] Error incrementing review count: $e');
    }
  }
  
  /// Delete a translation record
  Future<void> deleteRecord(int id) async {
    try {
      await DatabaseService.deleteTranslationRecord(id);
      await loadStudyRecords(); // Reload to update UI
      print('[AppState] Record deleted successfully: id=$id');
    } catch (e) {
      print('[AppState] Error deleting record: $e');
      rethrow;
    }
  }
  
  // ==========================================
  // Settings
  // ==========================================
  
  void setSourceText(String text) {
    _sourceText = text;
    notifyListeners();
  }
  
  void setSourceLang(String lang) {
    _sourceLang = lang;
    // Reset selected source when language changes
    _selectedSourceId = null;
    notifyListeners();
  }
  
  void setTargetLang(String lang) {
    _targetLang = lang;
    notifyListeners();
  }
  
  void clearTexts() {
    _sourceText = '';
    _translatedText = '';
    _statusMessage = '';
    _selectedSourceId = null;
    _similarSources = [];
    _showDuplicateDialog = false;
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
          print('[AppState] Could not parse target language from JSON: $e');
        }
        await loadStudyRecords();
      }
      
      return result;
    } catch (e) {
      print('[AppState] Error importing JSON file: $e');
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
      print('[AppState] Error loading study materials: $e');
      _studyMaterials = [];
      notifyListeners();
    }
  }
  
  /// Select a study material and load its records
  Future<void> selectMaterial(int materialId) async {
    _selectedMaterialId = materialId;
    _studiedTranslationIds.clear(); // Reset studied items
    await loadMaterialRecords(materialId);
  }
  
  /// Load records for selected material
  Future<void> loadMaterialRecords(int materialId) async {
    try {
      _materialRecords = await DatabaseService.getRecordsByMaterialId(materialId);
      notifyListeners();
    } catch (e) {
      print('[AppState] Error loading material records: $e');
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
        
        // Auto-select the newly imported material
        final materialId = result['material_id'] as int?;
        if (materialId != null) {
          await selectMaterial(materialId);
        }
      }
      
      return result;
    } catch (e) {
      print('[AppState] Error importing JSON with metadata: $e');
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
      print('[AppState] Error playing material TTS: $e');
    }
  }
  
  // ==========================================
  // Helpers
  // ==========================================
  
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
}

import 'package:flutter/foundation.dart';
import '../services/database_service.dart';
import '../services/translation_service.dart';
import '../services/speech_service.dart';

/// App-wide state management for TalkLand
class AppState extends ChangeNotifier {
  // Services
  final SpeechService _speechService = SpeechService();
  
  // Current mode: 0 = 검색, 1 = 복습
  int _currentMode = 0;
  
  // Mode 1 (검색) State
  String _sourceText = '';
  String _translatedText = '';
  String _sourceLang = 'ko';
  String _targetLang = 'ja';
  bool _isListening = false;
  bool _isTranslating = false;
  bool _isSpeaking = false;
  String _statusMessage = '';
  
  // Mode 2 (복습) State
  List<Map<String, dynamic>> _studyRecords = [];
  
  // Getters
  int get currentMode => _currentMode;
  String get sourceText => _sourceText;
  String get translatedText => _translatedText;
  String get sourceLang => _sourceLang;
  String get targetLang => _targetLang;
  bool get isListening => _isListening;
  bool get isTranslating => _isTranslating;
  bool get isSpeaking => _isSpeaking;
  String get statusMessage => _statusMessage;
  List<Map<String, dynamic>> get studyRecords => _studyRecords;
  
  // Language display names (Top 20 by speakers)
  static const Map<String, String> languageNames = {
    'en': 'English',           // 영어
    'zh-CN': '中文(简体)',      // 중국어 간체
    'hi': 'हिन्दी',            // 힌디어
    'es': 'Español',           // 스페인어
    'fr': 'Français',          // 프랑스어
    'ar': 'العربية',           // 아랍어
    'bn': 'বাংলা',             // 벵골어
    'ru': 'Русский',           // 러시아어
    'pt': 'Português',         // 포르투갈어
    'id': 'Bahasa Indonesia',  // 인도네시아어
    'de': 'Deutsch',           // 독일어
    'ja': '日本語',            // 일본어
    'ko': '한국어',            // 한국어
    'vi': 'Tiếng Việt',        // 베트남어
    'tr': 'Türkçe',            // 터키어
    'it': 'Italiano',          // 이탈리아어
    'th': 'ไทย',               // 태국어
    'pl': 'Polski',            // 폴란드어
    'nl': 'Nederlands',        // 네덜란드어
    'uk': 'Українська',        // 우크라이나어
  };
  
  // ==========================================
  // Mode Switching
  // ==========================================
  
  void switchMode(int mode) {
    _currentMode = mode;
    
    if (mode == 1) {
      // Load review mode data
      loadStudyRecords();
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
  
  /// Translate text
  Future<void> translate() async {
    if (_sourceText.isEmpty) {
      _statusMessage = '번역할 텍스트를 입력하세요';
      notifyListeners();
      return;
    }
    
    try {
      _isTranslating = true;
      _statusMessage = '번역 중...';
      notifyListeners();
      
      _translatedText = await TranslationService.translate(
        text: _sourceText,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
      );
      
      // Auto-save to database (skip on web)
      try {
        await DatabaseService.saveStudyRecord(
          sourceText: _sourceText,
          translatedText: _translatedText,
          sourceLang: _sourceLang,
          targetLang: _targetLang,
        );
      } catch (e) {
        // Database not available on web
        print('[AppState] Could not save to database (web platform)');
      }
      
      _isTranslating = false;
      _statusMessage = '번역 완료';
      notifyListeners();
    } catch (e) {
      _isTranslating = false;
      _statusMessage = '번역 실패: $e';
      notifyListeners();
      rethrow;
    }
  }
  
  /// Speak translated text
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
      
      await _speechService.speak(
        _translatedText,
        lang: _getLangCode(_targetLang),
      );
      
      _isSpeaking = false;
      _statusMessage = '재생 완료';
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
      _studyRecords = await DatabaseService.getAllStudyRecords();
      notifyListeners();
    } catch (e) {
      print('[AppState] Error loading study records (web platform): $e');
      _studyRecords = []; // Empty list on web
      notifyListeners();
    }
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
  
  // ==========================================
  // Settings
  // ==========================================
  
  void setSourceText(String text) {
    _sourceText = text;
    notifyListeners();
  }
  
  void setSourceLang(String lang) {
    _sourceLang = lang;
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
    notifyListeners();
  }
  
  // ==========================================
  // Helpers
  // ==========================================
  
  String _getLangCode(String lang) {
    // Map app language codes to STT/TTS language codes
    final map = {
      'en': 'en-US',
      'zh-CN': 'zh-CN',
      'hi': 'hi-IN',
      'es': 'es-ES',
      'fr': 'fr-FR',
      'ar': 'ar-SA',
      'bn': 'bn-IN',
      'ru': 'ru-RU',
      'pt': 'pt-BR',
      'id': 'id-ID',
      'de': 'de-DE',
      'ja': 'ja-JP',
      'ko': 'ko-KR',
      'vi': 'vi-VN',
      'tr': 'tr-TR',
      'it': 'it-IT',
      'th': 'th-TH',
      'pl': 'pl-PL',
      'nl': 'nl-NL',
      'uk': 'uk-UA',
    };
    return map[lang] ?? lang;
  }
  
  @override
  void dispose() {
    _speechService.dispose();
    super.dispose();
  }
}

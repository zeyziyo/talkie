import 'package:flutter/material.dart';
import '../services/database_service.dart';
import '../services/translation_service.dart';
import '../services/speech_service.dart';
import '../services/util/log_service.dart';

class SimplifiedAppState extends ChangeNotifier {
  final SpeechService _speechService = SpeechService();

  // State Variables
  String _sourceText = '';
  String _translatedText = '';
  String _sourceLang = 'en';
  String _targetLang = 'ko';
  String _type = 'word'; 
  String _note = '';
  String _tags = '';
  String _selectedNotebook = ''; // 초기값 비움 (sync 시 설정)
  String _localizedWordbook = '';
  String _localizedSentencebook = '';
  List<String> _availableNotebooks = [];
  bool _isListening = false;
  bool _isTranslating = false;
  bool _isSettingsConfirmed = false;
  List<Map<String, dynamic>> _records = [];
  int _loadSeq = 0; // Sequence number to handle async races

  // Getters
  String get sourceText => _sourceText;
  String get translatedText => _translatedText;
  String get sourceLang => _sourceLang;
  String get targetLang => _targetLang;
  String get type => _type;
  String get note => _note;
  String get tags => _tags;
  String get selectedNotebook => _selectedNotebook;
  List<String> get availableNotebooks => _availableNotebooks;
  bool get isListening => _isListening;
  bool get isTranslating => _isTranslating;
  bool get isSettingsConfirmed => _isSettingsConfirmed;
  List<Map<String, dynamic>> get records => _records;

  SimplifiedAppState() {
    init();
  }

  Future<void> init() async {
    await loadNotebooks(type: _type, langCode: _sourceLang);
    notifyListeners();
  }

  Future<void> loadNotebooks({String? type, String? langCode}) async {
    if (type != null) _type = type;
    if (langCode != null) _sourceLang = langCode;
    
    final currentType = _type;
    final currentLang = _sourceLang;
    final seq = ++_loadSeq;
    
    try {
      final materials = await DatabaseService.getStudyMaterials(type: currentType, langCode: currentLang);
      
      // If a newer request has started, discard this result
      if (seq != _loadSeq) return;

      _availableNotebooks = materials.map((m) => m['subject'] as String).toList();
      
      final String defaultTitle = (currentType == 'sentence') ? _localizedSentencebook : _localizedWordbook;
      final String otherDefault = (currentType == 'sentence') ? _localizedWordbook : _localizedSentencebook;
      
      String effectiveDefault = defaultTitle;
      if (effectiveDefault.isEmpty) {
        effectiveDefault = (currentType == 'sentence') ? 'My Sentence Collection' : 'My Wordbook';
      }

      if (!_availableNotebooks.contains(effectiveDefault)) {
        _availableNotebooks.insert(0, effectiveDefault);
      }
      
      // Force update if:
      // 1. Explicit type switch request (type != null)
      // 2. No notebook selected
      // 3. Selected notebook is not in available list
      // 4. Selected notebook is the DEFAULT of the WRONG mode (Mismatched)
      bool isMismatched = otherDefault.isNotEmpty && _selectedNotebook == otherDefault;
      
      if (type != null || _selectedNotebook.isEmpty || !_availableNotebooks.contains(_selectedNotebook) || isMismatched) {
         _selectedNotebook = effectiveDefault;
      }
    } catch (e) {
      if (seq != _loadSeq) return;
      debugPrint('[SimplifiedAppState] Error loading notebooks: $e');
      _availableNotebooks = [(currentType == 'sentence') ? _localizedSentencebook : _localizedWordbook];
      _selectedNotebook = _availableNotebooks.first;
    }
    notifyListeners();
  }

  // Setters & Actions
  void setSourceText(String text) {
    _sourceText = text;
    // Automatic type detection: If it contains spaces or is longer than 15 chars, treat as sentence
    final detectedType = (text.trim().contains(' ') || text.trim().length > 15) ? 'sentence' : 'word';

    if (detectedType != _type) {
      _type = detectedType; // Update immediately to prevent race conditions during rebuild
      loadNotebooks(type: detectedType);
    }

    // Phase 17480: Reset confirmation when text changes
    _isSettingsConfirmed = false;
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

  void setType(String type) {
    if (_type != type) {
      _type = type; // Update immediately
      loadNotebooks(type: type); 
    }
    notifyListeners();
  }

  void setNote(String note) {
    _note = note;
    notifyListeners();
  }

  void setTags(String tags) {
    _tags = tags;
    notifyListeners();
  }

  void setSelectedNotebook(String notebook) {
    _selectedNotebook = notebook;
    notifyListeners();
  }

  void setSettingsConfirmed(bool confirmed) {
    _isSettingsConfirmed = confirmed;
    notifyListeners();
  }

  Future<void> startListening() async {
    _isListening = true;
    notifyListeners();
    try {
      await _speechService.startSTT(
        lang: _sourceLang,
        onResult: (text, isFinal, alternates) {
          if (text.trim().isEmpty && !isFinal) return; // Ignore empty partial results
          
          if (text.trim().isNotEmpty) {
            setSourceText(text); // Use helper to trigger type detection and confirm reset
          }
          
          if (isFinal) {
            _isListening = false;
            notifyListeners();
          }
        },
      );
    } catch (e) {
      _isListening = false;
      notifyListeners();
    }
  }

  Future<void> stopListening() async {
    await _speechService.stopSTT();
    _isListening = false;
    notifyListeners();
  }

  Future<void> translate() async {
    if (_sourceText.isEmpty) return;
    _isTranslating = true;
    notifyListeners();

    try {
      final result = await TranslationService.translate(
        text: _sourceText,
        sourceLang: _sourceLang,
        targetLang: _targetLang,
      );
      _translatedText = result['text'] ?? '';
    } catch (e) {
      _translatedText = 'Error: $e';
    } finally {
      _isTranslating = false;
      notifyListeners();
    }
  }

  void setTranslatedText(String text) {
    _translatedText = text;
    notifyListeners();
  }

  Future<void> saveRecord() async {
    if (_sourceText.isEmpty || _translatedText.isEmpty) return;

    try {
      // Phase 15.6: Enhanced Tag & Note saving
      List<String> tagList = _tags.isNotEmpty 
          ? _tags.split(',').map((e) => e.trim()).where((e) => e.isNotEmpty).toList() 
          : [];

      await DatabaseService.saveUnifiedRecord(
        text: _sourceText,
        lang: _sourceLang,
        translation: _translatedText,
        targetLang: _targetLang,
        type: _type,
        note: _note,
        tags: tagList,
        notebookTitle: _selectedNotebook,
      );

      LogService.info('Card Save: SUCCESS');

      // Refresh notebooks list in case a new one was added
      await loadNotebooks();
      
      notifyListeners();
    } catch (e, stack) {
      LogService.error('Card Save: FAILED', e, stack);
    }
  }

  // Clear UI method
  void clearAll() {
    _sourceText = '';
    _translatedText = '';
    _note = '';
    _tags = '';
    _isSettingsConfirmed = false;
    notifyListeners();
  }

  Future<void> loadRecords() async {
    // This is optional if we want to show history in the simplified UI.
    // Since we now use the main DB, we could fetch from UnifiedRepository if needed.
    // For now, let's keep it empty or remove if not used.
    _records = [];
    notifyListeners();
  }

  Future<void> deleteRecord(int id) async {
    // Not implemented for main DB here, but could be added if needed.
  }

  // The local swap function is no longer needed since direction is managed 
  // globally via AppState's _isDirectionSwapped flag.
  void swapLanguages() {
    // Left empty or removed, global AppState handles logic now.
    // To trigger UI update, rely on Global State change.
  }

  void syncWithGlobalState({
    required String inputLang, 
    required String outputLang,
    required String wordbookName,
    required String sentencebookName,
  }) {
    bool changed = false;
    
    if (_sourceLang != inputLang) {
      _sourceLang = inputLang;
      changed = true;
    }
    if (_targetLang != outputLang) {
      _targetLang = outputLang;
      changed = true;
    }
    
    // 로컬라이즈된 이름 업데이트
    if (_localizedWordbook != wordbookName || _localizedSentencebook != sentencebookName) {
      _localizedWordbook = wordbookName;
      _localizedSentencebook = sentencebookName;
      changed = true;
      // 기본 자료집 경로 재로딩
      loadNotebooks(type: _type);
    }

    if (changed) {
      notifyListeners();
    }
  }
}


import 'package:flutter/material.dart';
import '../services/database_service.dart';
import '../services/translation_service.dart';
import '../services/speech_service.dart';

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
  String _selectedNotebook = '나의 단어장'; // Default notebook
  List<String> _availableNotebooks = [];
  bool _isListening = false;
  bool _isTranslating = false;
  List<Map<String, dynamic>> _records = [];

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
  List<Map<String, dynamic>> get records => _records;

  SimplifiedAppState() {
    init();
  }

  Future<void> init() async {
    await loadNotebooks(type: _type);
    notifyListeners();
  }

  Future<void> loadNotebooks({String? type}) async {
    try {
      final materials = await DatabaseService.getStudyMaterials(type: type);
      _availableNotebooks = materials.map((m) => m['subject'] as String).toList();
      
      String defaultTitle = (type == 'sentence') ? '나의 문장집' : '나의 단어장';
      if (!_availableNotebooks.contains(defaultTitle)) {
        _availableNotebooks.insert(0, defaultTitle);
      }
      
      // Reset selected if it's no longer in the list or if we're switching modes
      if (!_availableNotebooks.contains(_selectedNotebook)) {
         _selectedNotebook = defaultTitle;
      }
    } catch (e) {
      debugPrint('[SimplifiedAppState] Error loading notebooks: $e');
      _availableNotebooks = [(type == 'sentence') ? '나의 문장집' : '나의 단어장'];
    }
    notifyListeners();
  }

  // Setters & Actions
  void setSourceText(String text) {
    _sourceText = text;
    // Automatic type detection: If it contains spaces or is longer than 15 chars, treat as sentence
    if (text.trim().contains(' ') || text.trim().length > 15) {
      _type = 'sentence';
    } else {
      _type = 'word';
    }
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
      _type = type;
      loadNotebooks(type: type); // Auto-reload on type change
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

  Future<void> startListening() async {
    _isListening = true;
    notifyListeners();
    try {
      await _speechService.startSTT(
        lang: _sourceLang,
        onResult: (text, isFinal, alternates) {
          _sourceText = text;
          if (isFinal) _isListening = false;
          notifyListeners();
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

      // Refresh notebooks list in case a new one was added
      await loadNotebooks();
      
      notifyListeners();
    } catch (e) {
      debugPrint('[SimplifiedAppState] Error saving record: $e');
    }
  }

  // Clear UI method
  void clearAll() {
    _sourceText = '';
    _translatedText = '';
    _note = '';
    _tags = '';
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

  void swapLanguages() {
    final temp = _sourceLang;
    _sourceLang = _targetLang;
    _targetLang = temp;
    notifyListeners();
  }

  void syncWithGlobalState(String source, String target) {
    bool changed = false;
    if (_sourceLang != source) {
      _sourceLang = source;
      changed = true;
    }
    if (_targetLang != target) {
      _targetLang = target;
      changed = true;
    }
    if (changed) {
      notifyListeners();
    }
  }
}

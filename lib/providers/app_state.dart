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
import '../models/sentence.dart';
import '../models/user_library.dart';
import '../models/dialogue_group.dart';

import '../services/supabase_service.dart';
import 'package:flutter/widgets.dart';
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
  String _targetLang = 'en'; // Changed default from 'ja' to 'en'
  bool _isListening = false;
  bool _isTranslating = false;
  bool _isSpeaking = false;
  bool _isSaved = false; // Track if current translation is saved
  String _statusMessage = '';
  String _note = ''; // Note for ambiguous translations
  bool _isWordMode = false; // Toggle between Word and Sentence mode
  
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
  
  // Mode 2 (학습 자료 & 복습) State
  List<Map<String, dynamic>> _studyMaterials = []; // Available study materials
  int? _selectedMaterialId; // Currently selected material
  List<Map<String, dynamic>> _materialRecords = []; // Sentences in selected material
  Set<int> _studiedTranslationIds = {}; // Reviewed translations in current session
  String _recordTypeFilter = 'all'; // 'all', 'word', 'sentence'

  // Phase 11: Dialogue / Chat State
  String? _activeDialogueId;
  String? _activeDialogueTitle;
  String? _activePersona; // Tracks current chat partner
  int _currentDialogueSequence = 0;
  List<DialogueGroup> _dialogueGroups = [];
  
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
  String get statusMessage => _statusMessage;
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

  // Phase 11 Getters
  String? get activeDialogueId => _activeDialogueId;
  String? get activeDialogueTitle => _activeDialogueTitle;
  String? get activePersona => _activePersona;
  List<DialogueGroup> get dialogueGroups => _dialogueGroups;
  
  /// Search for similar source texts
  Future<void> searchSimilarSources(String text) async {
    _duplicateCheckTriggered = true;
    
    if (text.trim().isEmpty) {
      _similarSources = [];
      _showDuplicateDialog = false;
      notifyListeners();
      return;
    }

    try {
      final results = await DatabaseService.searchSimilarText(_sourceLang, text);
      _similarSources = results;
      _showDuplicateDialog = _similarSources.isNotEmpty;
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
  int? get selectedMaterialId => _selectedMaterialId;
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

  /// Get material records filtered by type (Word/Sentence)
  List<Map<String, dynamic>> get filteredMaterialRecords {
    if (_recordTypeFilter == 'all') return _materialRecords;
    return _materialRecords.where((r) {
      final type = r['type'] as String? ?? 'sentence';
      return type == _recordTypeFilter;
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
      // Study Material mode (Mode 2) - Load materials
      loadStudyMaterials();
      loadStudyRecords(); // Load records for review tab
    } else if (mode == 2) {
      // Speaking Mode (Mode 3)
      loadStudyMaterials(); // Ensure materials are loaded
      
      // Auto-select first material if none selected
      if (_studyMaterials.isNotEmpty && _selectedMaterialId == null) {
        selectMaterial(_studyMaterials.first['id'] as int);
      }
    } else if (mode == 3) {
      // Game Mode (Mode 4)
      _recordTypeFilter = 'all'; // Reset filter so all materials are visible
      loadStudyMaterials();
       // Auto-select first material
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
        lang: _getServiceLocale(_sourceLang),
        onResult: (text, isFinal, alternates) {
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
      int sourceId;
      if (_selectedSourceId != null) {
        sourceId = _selectedSourceId!;
        debugPrint('[AppState] Reusing existing source: id=$sourceId');
      } else {
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
        note: _note
      );
      
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
                errorMsg = l10n.errorProfanity ?? reason;
                break;
              case 'HATE_SPEECH':
                errorMsg = l10n.errorHateSpeech ?? reason;
                break;
              case 'SEXUAL':
                errorMsg = l10n.errorSexualContent ?? reason;
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
                  errorMsg = l10n.errorOtherSafety ?? reason;
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
      
      // Handle Note / Disambiguation
      final autoNote = result['note'] as String?;
      final options = result['disambiguationOptions'] as List<String>?;
      
      if (options != null && options.isNotEmpty) {
        _disambiguationOptions = options;
        _showDisambiguationDialog = true;
        _note = ''; 
        debugPrint('[AppState] Ambiguity detected: $options');
      } else {
        _disambiguationOptions = [];
        _showDisambiguationDialog = false;
        if (autoNote != null) {
          _note = autoNote;
        }
      }
      
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
  
  /// Helper to save to Supabase (Extracted for Dual Write)
  Future<void> _saveToSupabase({String? dialogueId, String? speaker, int? sequenceOrder}) async {
      final authorId = SupabaseService.client.auth.currentUser?.id;

      if (authorId == null) return;

      try {
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        
        // 1. Save Source
        await SupabaseService.client.from('sentences').insert({
          'lang_code': _sourceLang,
          'text': _sourceText,
          'group_id': timestamp,
          'author_id': authorId,
          'status': 'approved',
        });

        // 2. Save Target
        await SupabaseService.client.from('sentences').insert({
          'lang_code': _targetLang,
          'text': _translatedText,
          'group_id': timestamp,
          'author_id': authorId,
          'status': 'approved',
        });

        // 3. Add to User Library (With Dialogue Metadata)
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

  /// Save translation (Dual Write: Local DB + Supabase)
  Future<void> saveTranslation() async {
    if (_translatedText.isEmpty) {
      _statusMessage = '저장할 번역이 없습니다';
      notifyListeners();
      return;
    }
    
    _statusMessage = '저장 중...';
    notifyListeners();

    try {
      // 1. Local Save (Primary - for Offline & Mode 2)
      // Save source text
      final sourceId = await DatabaseService.insertLanguageRecord(
        _sourceLang, 
        _sourceText
      );
      
      // Save target text
      final targetId = await DatabaseService.insertLanguageRecord(
        _targetLang, 
        _translatedText
      );
      
      // Link them in translations table
      await DatabaseService.saveTranslationLinkWithMaterial(
        sourceLang: _sourceLang,
        sourceId: sourceId,
        targetLang: _targetLang,
        targetId: targetId,
        materialId: 0, // Default material for now
        note: _note.isNotEmpty ? _note : null,
        dialogueId: _activeDialogueId,
        speaker: _activeDialogueId != null ? 'User' : null,
        sequenceOrder: _activeDialogueId != null ? _currentDialogueSequence : null,
      );

      debugPrint('[AppState] Local save successful');
      
      // 2. Supabase Save (Secondary - for Cloud Sync)
      // AWAIT sync before loading records to ensure Mode 2 sees the new data
      try {
        await _saveToSupabase(
          dialogueId: _activeDialogueId,
          speaker: _activeDialogueId != null ? 'User' : null,
          sequenceOrder: _activeDialogueId != null ? _currentDialogueSequence : null,
        );
        debugPrint('[AppState] Supabase Cloud Sync finished');
      } catch (e) {
        debugPrint('[AppState] Supabase Cloud Sync failed (Offline?): $e');
        // We continue even if cloud sync fails as local save succeeded
      }

      // 3. Update UI Success immediately
      _statusMessage = '저장 완료!';
      _isSaved = true; 
      
      // Reload Study Records and Materials so Mode 2 is updated immediately
      await loadStudyRecords(); 
      await loadStudyMaterials(); 
      
      notifyListeners();
      
      notifyListeners();
      return; // Stop here! Old logic below is ignored.

    } catch (e) {
      _statusMessage = '저장 실패: $e';
      notifyListeners();
      debugPrint('[AppState] Error saving translation (Local): $e');
      return;
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
      debugPrint('[AppState] Error incrementing review count: $e');
    }
  }
  
  /// Delete a translation record (Dual Write: Local + Supabase)
  /// Parameter [id] can be Local ID or Supabase Group ID depending on view.
  Future<void> deleteRecord(int id) async {
    try {
       debugPrint('[AppState] Deleting record: id=$id');

       // 1. Delete from Local Database (Match ID or Group ID)
       // We try to delete by ID first (Local Material Mode)
       await DatabaseService.deleteTranslationRecord(id);
       
       // 2. Delete from Supabase (Match id as group_id)
       final userId = SupabaseService.client.auth.currentUser?.id;
       if (userId != null) {
          try {
             // In "Review All", id passed is the groupId.
             // In other modes, it's local ID, but we try anyway or could lookup.
             // To be safe, we delete from user_library where user_id matches.
             await SupabaseService.client
                .from('user_library')
                .delete()
                .eq('user_id', userId)
                .eq('group_id', id);
             
             debugPrint('[AppState] Supabase delete executed for group_id: $id');
          } catch (e) {
             debugPrint('[AppState] Supabase delete failed: $e');
          }
       }
      
      // Refresh global study records (Supabase/Mixed)
      await loadStudyRecords(); 
      
      // Refresh Local List (Mode 2)
      if (_selectedMaterialId == -1) {
        await loadAllRecordsIntoMaterialView();
      } else if (_selectedMaterialId != null) {
        await loadMaterialRecords(_selectedMaterialId!);
      }
      
      debugPrint('[AppState] Record deletion process complete: id=$id');
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
    _showDuplicateDialog = false;
    _duplicateCheckTriggered = false;
    _isSaved = false; // Reset save state
    _note = '';
    notifyListeners();
  }
  
  /// Import study materials from JSON file content
  Future<Map<String, dynamic>> importFromJsonFile(String jsonContent, {String? fileName}) async {
    try {
      // Pass null for fileName so DatabaseService uses 'subject' from JSON or default
      final result = await DatabaseService.importFromJson(jsonContent, fileName: null);
      
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
        await loadStudyMaterials(); // Refresh materials list too
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
      
      // Auto-start for Mode 3 if active
      if (_currentMode == 2) { // 2 is Speaking Mode
         await startMode3SessionDirectly();
      }
    } else {
      _materialRecords = [];
    }
    notifyListeners();
  }

  /// Reset practice progress for current session
  void resetMode3Progress() async {
    _mode3CompletedQuestionIds.clear();
    _currentMode3Question = null;
    _mode3UserAnswer = '';
    _mode3Score = null;
    _mode3Feedback = '';
    _mode3SessionActive = false;
    _cancelMode3Timers();
    
    // Select first material from filtered list if available
    final filtered = filteredStudyMaterials;
    if (filtered.isNotEmpty) {
      await selectMaterial(filtered.first['id'] as int);
      await startMode3SessionDirectly();
    }
    
    _statusMessage = '연습을 다시 시작합니다.';
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
        WHERE (t.source_lang = ? AND t.target_lang = ?) 
           OR (t.source_lang = ? AND t.target_lang = ?)
        ORDER BY t.created_at DESC
      ''', [_sourceLang, _targetLang, _targetLang, _sourceLang]);

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
      // 1. Find material metadata to check language direction
      final material = _studyMaterials.firstWhere(
        (m) => m['id'] == materialId,
        orElse: () => {},
      );

      bool needSwap = false;
      String queryTargetLang = _targetLang;

      if (material.isNotEmpty) {
        final mSource = material['source_language'] as String;
        final mTarget = material['target_language'] as String;

        // Check if material direction matches current App settings
        // Case 1: Match (En->Ko == En->Ko)
        if (mSource == _sourceLang && mTarget == _targetLang) {
          needSwap = false;
          queryTargetLang = _targetLang;
        }
        // Case 2: Swap (Ko->En == En->Ko) -> Need to fetch Ko target and swap
        else if (mSource == _targetLang && mTarget == _sourceLang) {
          needSwap = true;
          queryTargetLang = _sourceLang; // Fetch original target (which is our source)
        }
        // Case 3: Auto or mismatch - Default to simple query
      }

      var records = await DatabaseService.getRecordsByMaterialId(
        materialId,
        sourceLang: needSwap ? _targetLang : _sourceLang, 
        targetLang: queryTargetLang,
      );

      // 2. Perform Swap if needed
      if (needSwap) {
        records = records.map((r) {
          return {
            ...r,
            'source_lang': r['target_lang'],
            'source_text': r['target_text'],
            'target_lang': r['source_lang'],
            'target_text': r['source_text'],
            // ID references might be tricky if used for editing, 
            // but for Display/Practice (Mode 2/3), text is primary.
            // If editing, we might need original IDs. 
            // But Mode 3 just uses text.
          };
        }).toList();
      }

      _materialRecords = records;
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Error loading material records: $e');
      _materialRecords = [];
      notifyListeners();
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
            
            final result = await SupabaseService.importJsonEntry(
              sourceText: sourceText,
              sourceLang: sourceLang,
              targetText: targetText,
              targetLang: targetLang,
              note: (entry['note'] ?? entry['context']) as String?,
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
            
            if (i % 5 == 0) {
              _statusMessage = 'Importing Entries... ($importedCount/${entries.length})';
              notifyListeners();
            }
          } catch (e) {
            errors.add('Entry ${i + 1}: $e');
            skippedCount++;
          }
        }
      }
      
      _statusMessage = 'Import complete';
      await loadStudyRecords(); // Reload user library
      notifyListeners();
      
      return {
        'success': true,
        'imported': importedCount,
        'skipped': skippedCount,
        'duplicates': duplicateCount,
        'total': entries.length,
        'errors': errors,
        // 'material_id': ... // We don't distinctly separate materials in Supabase yet (all in library), 
        // but could add to a 'Collection' later. For now, flattened.
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
        _statusMessage = '먼저 학습 자료를 선택하세요';
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
      _cancelMode3Timers(); // Cancel any running timers
      _speechService.stopSTT();
      _isListening = false; // Ensure global listening state is reset
      // _speechService.stopSpeaking(); // Optional: Stop TTS if needed
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
      _statusMessage = 'All questions completed!';
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
      // Legacy "practiceWordsOnly" is now obsolete and replaced by _recordTypeFilter logic above.
      
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
        type: FileType.custom, // Restrict to specific extensions
        allowedExtensions: ['json'],
        withData: kIsWeb, // Important for Web
      );
      
      if (result == null || result.files.isEmpty) {
        return null; // User canceled
      }
      
      final PlatformFile file = result.files.single;
      
      // Manual validation for JSON extension
      if (!file.name.toLowerCase().endsWith('.json')) {
        return {'success': false, 'error': '잘못된 파일 형식입니다. .json 파일을 선택해주세요.'};
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

  /// Create a new dialogue and set as active session
  Future<void> startNewDialogue({String? persona}) async {
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
      _currentDialogueSequence = 1;

      // 2. Save to local SQLite
      await DatabaseService.insertDialogueGroup(
        id: dialogueId,
        title: 'New Conversation',
        persona: persona,
        createdAt: DateTime.now().toIso8601String(),
        userId: SupabaseService.client.auth.currentUser?.id,
      );

      _statusMessage = 'Chat started';
      await loadDialogueGroups();
      notifyListeners();
    } catch (e) {
      _statusMessage = 'Failed to start chat: $e';
      notifyListeners();
    }
  }

  /// Load dialogue groups from both cloud and local
  Future<void> loadDialogueGroups() async {
    try {
      final userId = SupabaseService.client.auth.currentUser?.id;
      if (userId == null) return;

      // 1. Fetch from Supabase
      final response = await SupabaseService.client
          .from('dialogue_groups')
          .select()
          .eq('user_id', userId)
          .order('created_at', ascending: false);

      final cloudGroups = (response as List).map((json) {
        final group = DialogueGroup.fromJson(json);
        // Sync to local while we are here
        DatabaseService.insertDialogueGroup(
          id: group.id,
          userId: group.userId,
          title: group.title,
          persona: group.persona,
          createdAt: group.createdAt.toIso8601String(),
        );
        return group;
      }).toList();

      _dialogueGroups = cloudGroups;
      notifyListeners();
    } catch (e) {
      debugPrint('[AppState] Error loading dialogues: $e');
      // Fallback: load from local
      final localData = await DatabaseService.getDialogueGroups();
      _dialogueGroups = localData.map((m) => DialogueGroup(
        id: m['id'] as String,
        userId: m['user_id'] as String,
        title: m['title'] as String?,
        persona: m['persona'] as String?,
        createdAt: DateTime.parse(m['created_at'] as String),
      )).toList();
      notifyListeners();
    }
  }

  /// Reset active dialogue session
  void clearActiveDialogue() {
    _activeDialogueId = null;
    _activeDialogueTitle = null;
    _activePersona = null;
    _currentDialogueSequence = 0;
    notifyListeners();
  }

  /// Load an existing dialogue into the active session
  Future<void> loadExistingDialogue(DialogueGroup group) async {
    _activeDialogueId = group.id;
    _activeDialogueTitle = group.title;
    _activePersona = group.persona;
    
    // Get max sequence order from local DB
    final records = await DatabaseService.getRecordsByDialogueId(group.id);
    if (records.isNotEmpty) {
      _currentDialogueSequence = records.map((r) => (r['sequence_order'] as int? ?? 0)).reduce((a, b) => a > b ? a : b);
    } else {
      _currentDialogueSequence = 0;
    }
    
    notifyListeners();
  }

  /// Save AI response to dialogue
  Future<void> saveAiResponse(String sourceText, String targetText, {String? speaker}) async {
    if (_activeDialogueId == null) return;
    
    final finalSpeaker = speaker ?? _activePersona ?? 'AI';

    _currentDialogueSequence++;
    
    // Create translation link (Normally AI responses are already translated concepts)
    // For simplicity, we just insert them as validated items in this dialogue.
    
    // Local
    final sId = await DatabaseService.insertLanguageRecord(_sourceLang, sourceText);
    final tId = await DatabaseService.insertLanguageRecord(_targetLang, targetText);
    
    await DatabaseService.saveTranslationLinkWithMaterial(
      sourceLang: _sourceLang,
      sourceId: sId,
      targetLang: _targetLang,
      targetId: tId,
      materialId: 0,
      dialogueId: _activeDialogueId,
      speaker: speaker,
      sequenceOrder: _currentDialogueSequence,
    );

    // Sync to Supabase
    // We treat AI response as a concept too. 
    // Usually AI response doesn't need 'translation' from user, but we store it as a 'hub' for consistency.
    _saveToSupabase(
      dialogueId: _activeDialogueId,
      speaker: finalSpeaker,
      sequenceOrder: _currentDialogueSequence,
    );
  }
}

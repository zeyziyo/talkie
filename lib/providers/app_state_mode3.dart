part of 'app_state.dart';

extension AppStateMode3 on AppState {
  void setPracticeWordsOnly(bool value) {
    if (_mode3SessionActive) return;
    _practiceWordsOnly = value;
    notify();
  }

  /// Refresh recommendations or lists (Phase 81.4)
  Future<void> refill() async {
    await fetchAiRecommendations();
    notify();
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
    notify();
  }


  // NEW: Direct Start Method for Dropdown
  Future<void> startMode3SessionDirectly() async {
      await _speechService.stopSTT(); // Ensure clean state
      _mode3SessionActive = true;

      // Smart Filter Check: If current filter hides all content, switch to 'all'
      if (_recordTypeFilter != 'all' && _selectedMaterialId != null) {
         final currentMatches = _getAvailableQuestions(); 
         if (currentMatches.isEmpty) {
             final allRecords = _materialRecords;
             if (allRecords.isNotEmpty) {
                 debugPrint('[AppState] Auto-switching filter to ALL for Mode 3 content');
                 _recordTypeFilter = 'all';
             }
         }
      }

      await _nextMode3Question();
      notify();
  }

  void _cancelMode3Timers() {
    _mode3Timer?.cancel();
    _retryAutoSkipTimer?.cancel();
    _mode3Timer = null;
    _retryAutoSkipTimer = null;
  }
  
  /// Allow user to skip current question manually
  /// Manual Stop for Mode 3
  Future<void> stopMode3ListeningManual() async {
    if (!_isListening) return;
    
    await _speechService.stopSTT();
    _isListening = false;
    
    _checkMode3Answer();
  }

  Future<void> _startMode3Listening() async {
    try {
      _isListening = true;
      _mode3UserAnswer = ''; // Reset answer
      _mode3Score = null;    // Reset score
      _mode3Feedback = '';   // Reset feedback
      _showRetryButton = false;
      notify();
      
      final targetLang = _currentMode3Question!['target_lang'] as String;
      
      _speechStatusSubscription?.cancel();
      _speechStatusSubscription = _speechService.statusStream.listen((status) {
         if (status == 'done' || status == 'notListening') {
             if (_isListening && _mode3SessionActive) {
                 debugPrint('[AppState] System stopped STT unexpectedly. Updating UI.');
                 if (!_isEvaluating) {
                     _checkMode3Answer();
                 }
             }
         }
      });
      
      await _speechService.startSTT(
        lang: getServiceLocale(targetLang),
        listenFor: const Duration(seconds: 30), 
        pauseFor: const Duration(seconds: 3),
        onResult: (text, isFinal, alternates) {
           _mode3UserAnswer = text;
           
           if (isFinal && _mode3SessionActive && !_isEvaluating) {
              _checkMode3Answer();
           }
           
           notify();
        }
      );
      
    } catch (e) {
      debugPrint('[AppState] Mode 3 Listen Error: $e');
      _isListening = false;
      _mode3Feedback = 'Error: $e';
      _showRetryButton = true;
      notify();
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
    
    final normalizedUser = _normalizeText(_mode3UserAnswer);
    final normalizedTarget = _normalizeText(targetText);
    
    if (normalizedUser.isEmpty) {
        _mode3Score = 0.0;
        _mode3Feedback = 'TRY_AGAIN';
    } else {
        final similarity = _calculateSimilarity(normalizedUser, normalizedTarget);
        _mode3Score = similarity * 100;
        
        if (_mode3Score! >= 100) { // Threshold 100%
          _mode3Feedback = 'PERFECT';
          
          final qId = _currentMode3Question!['id'] as int;
          if (!_mode3CompletedQuestionIds.contains(qId)) {
             _mode3CompletedQuestionIds.add(qId);
             
             // Phase 129: Persist Review Stats
             final type = _currentMode3Question!['type'] as String? ?? 'sentence'; // default to sentence if missing
             // Fire and forget to avoid UI delay
             DatabaseService.updateReviewStats(qId, type, 1);
          }
          
          await _speechService.speak("Perfect!", lang: "en-US");
        } else {
          _mode3Feedback = 'TRY_AGAIN'; 
        }
    }
    
    _showRetryButton = true; 
    _isEvaluating = false; 
    notify();
  }

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
      
      notify();
      await _startMode3Listening();
  }

  /// Mode 3: Reset current question practice state
  void resetMode3Question() {
    _mode3Score = null;
    _mode3UserAnswer = '';
    _showRetryButton = false;
    _isListening = false;
    notify();
  }

  /// Mode 3: Reset entire practice progress
  void resetMode3Progress() {
    _mode3CompletedQuestionIds.clear();
    _currentMode3Question = null;
    _mode3Score = null;
    _mode3UserAnswer = '';
    _showRetryButton = false;
    _isListening = false;
    _mode3SessionActive = false;
    notify();
  }

  /// Mode 3: Set current question
  void setMode3CurrentQuestion(Map<String, dynamic> record) {
     if (_isListening) {
       _speechService.stopSTT();
       _isListening = false;
     }

    _currentMode3Question = record;
    _mode3SessionActive = true;
    _mode3Score = null;
    _mode3UserAnswer = '';
    _showRetryButton = false;
    notify();
  }
  
  /// Mode 3: Clear current question
  void clearMode3CurrentQuestion() {
     if (_isListening) {
       _speechService.stopSTT();
       _isListening = false;
     }
    _currentMode3Question = null;
    notify();
  }

  Future<void> _nextMode3Question() async {
    _cancelMode3Timers();
    _speechStatusSubscription?.cancel();
    _speechStatusSubscription = null;
    
    await _speechService.stopSTT();
    _isListening = false;
    
    final availableQuestions = _getAvailableQuestions();
    
    if (availableQuestions.isEmpty) {
       _mode3SessionActive = false;
       notify();
       return;
    }
    
    final uncompleted = availableQuestions.where((q) => !_mode3CompletedQuestionIds.contains(q['id'])).toList();
    final candidates = uncompleted.isNotEmpty ? uncompleted : availableQuestions;
    
    final randomIndex = Random().nextInt(candidates.length);
    _currentMode3Question = candidates[randomIndex];
    
    _mode3UserAnswer = '';
    _mode3Score = null;
    _mode3Feedback = '';
    _showRetryButton = false;
    
    notify();
    
    final sourceText = _currentMode3Question!['source_text'] as String;
    final sourceLang = _currentMode3Question!['source_lang'] as String;
    await _speechService.speak(sourceText, lang: getServiceLocale(sourceLang));
  }
  
  List<Map<String, Object?>> _getAvailableQuestions() {
      if (_selectedMaterialId == null) return [];
      
      final records = _materialRecords;
      List<Map<String, Object?>> candidates = records;
      
      if (_recordTypeFilter != 'all') {
          candidates = candidates.where((r) => 
            (r['type'] as String? ?? 'sentence') == _recordTypeFilter
          ).toList();
      }

      if (!_showMemorized) {
          candidates = candidates.where((r) => 
            r['is_memorized'] != true && r['is_memorized'] != 1
          ).toList();
      }
      
      if (candidates.isEmpty) return [];
      return candidates.cast<Map<String, Object?>>();
  }

  Future<void> retryMode3Question() async {
     await _startMode3Listening();
  }

  double _calculateSimilarity(String s1, String s2) {
    if (s1.isEmpty || s2.isEmpty) return 0.0;
    
    String normal1 = _normalizeText(s1);
    String normal2 = _normalizeText(s2);
    
    if (normal1 == normal2) return 1.0;
    
    List<List<int>> d = List.generate(
      normal1.length + 1,
      (i) => List<int>.filled(normal2.length + 1, 0),
    );

    for (int i = 0; i <= normal1.length; i++) {
       d[i][0] = i;
    }
    for (int j = 0; j <= normal2.length; j++) {
       d[0][j] = j;
    }

    for (int i = 1; i <= normal1.length; i++) {
      for (int j = 1; j <= normal2.length; j++) {
        int cost = (normal1[i - 1] == normal2[j - 1]) ? 0 : 1;
        d[i][j] = [
          d[i - 1][j] + 1, 
          d[i][j - 1] + 1, 
          d[i - 1][j - 1] + cost, 
        ].reduce((curr, next) => curr < next ? curr : next);
      }
    }

    int maxLength = (normal1.length > normal2.length) ? normal1.length : normal2.length;
    int distance = d[normal1.length][normal2.length];
    
    return 1.0 - (distance / maxLength);
  }

  void _validateCurrentMode3Question() {
    if (_currentMode3Question == null || !_mode3SessionActive) return;

    final available = _getAvailableQuestions();
    
    final currentId = _currentMode3Question!['id'];
    final stillValid = available.any((r) => r['id'] == currentId);

    if (!stillValid) {
      debugPrint('Current Mode 3 question is no longer valid due to filter. Skipping...');
      _nextMode3Question();
    }
  }

  String _normalizeText(String input) {
     return input
        .toLowerCase()
        .replaceAll(RegExp(r'[.,?!:;"\-]'), '') 
        .replaceAll(RegExp(r'\s+'), ' ')        
        .trim();
  }
}

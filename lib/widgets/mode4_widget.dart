import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';

class Mode4Widget extends StatefulWidget {
  final Key? gameStartButtonKey;
  final Key? gameSpeedKey;
  final Key? gameDirectionKey;

  const Mode4Widget({
    super.key,
    this.gameStartButtonKey,
    this.gameSpeedKey,
    this.gameDirectionKey,
  });

  @override
  State<Mode4Widget> createState() => _Mode4WidgetState();
}

class FallingWord {
  final String id;
  final String text; // Display text (falling)
  final String answer; // Expected speech
  final String correctMeaning; // For feedback
  double x;
  double y;
  double speed;
  Color color;

  FallingWord({
    required this.id,
    required this.text,
    required this.answer,
    required this.correctMeaning,
    required this.x,
    required this.y,
    required this.speed,
    required this.color,
  });
}

class _Mode4WidgetState extends State<Mode4Widget> with TickerProviderStateMixin {
  // Game State
  bool _isPlaying = false;
  bool _isGameOver = false;
  int _score = 0;
  int _lives = 3;
  int _level = 1;

  // Settings
  bool _nativeToForeign = true; // Source -> Target (Speak Target)
  double _gameSpeed = 1.0; // Multiplier
  
  // Entities
  List<FallingWord> _fallingWords = [];
  Timer? _spawnTimer;
  Timer? _gameLoopTimer;
  
  // Game Loop
  static const int _fps = 60;
  static const double _spawnRate = 2.0; // Seconds
  double _timeSinceLastSpawn = 0;

  // Screen
  double _screenWidth = 0;
  double _screenHeight = 0;

  @override
  void dispose() {
    _stopGame();
    super.dispose();
  }

  void _startGame(AppState appState) {
    if (appState.filteredMaterialRecords.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.noStudyMaterial)),
      );
      return;
    }

    setState(() {
      _isPlaying = true;
      _isGameOver = false;
      _score = 0;
      _lives = 3;
      _level = 1;
      _fallingWords.clear();
      _timeSinceLastSpawn = 0;
    });

    // Start STT
    _startContinuousSTT(appState);

    // Start Game Loop
    _gameLoopTimer = Timer.periodic(const Duration(milliseconds: 1000 ~/ _fps), (timer) {
      _updateGame(appState);
    });
  }

  void _stopGame() {
    _gameLoopTimer?.cancel();
    _spawnTimer?.cancel();
    
    // Stop STT handled globally by AppState usually, but we need to ensure it stops
    // We can call stopListening if we started it.
    // However, AppState.stopListening() notifies listeners.
    final appState = Provider.of<AppState>(context, listen: false);
    if (appState.isListening) {
      appState.stopListening();
    }

    setState(() {
      _isPlaying = false;
    });
  }

  void _gameOver() {
    _stopGame();
    setState(() {
      _isGameOver = true;
      _isPlaying = false; // Show Game Over Screen
    });
  }

  void _startContinuousSTT(AppState appState) async {
    // Determine language based on direction
    // Native -> Foreign: Speak Target
    // Foreign -> Native: Speak Source
    final targetLangCode = _nativeToForeign 
        ? appState.targetLang 
        : appState.sourceLang;
    
    // We need a way to listen continuously or restart listening.
    // AppState.startListening() stops on final result.
    // We need to hook into onResult and restart.
    
    _listenLoop(appState, targetLangCode);
  }

  Future<void> _listenLoop(AppState appState, String langCode) async {
    if (!_isPlaying) return;

    // Use a custom start listening method or modified one?
    // We can't easily modify AppState to support "Game Mode" continuous listening without changing it.
    // But we can just call startListening repeatedly.
    
    // However, AppState uses `_speechService`.
    // Let's use `appState.startListening` but we need to intercept results.
    // AppState updates `sourceText` (or adds answer logic?).
    // Actually, AppState.startListening updates `_sourceText`. 
    // BUT, Mode 4 logic needs to check this text.
    
    // IMPORTANT: AppState's startListening is designed for Mode 1 (sets _sourceText).
    // Mode 3 has its own `_startMode3Listening`.
    // We should implement `_startMode4Listening` in AppState OR
    // expose `SpeechService` or just use `appState` generic listening and monitor `sourceText`?
    // Monitoring `sourceText` is tricky because of race conditions.
    
    // BETTER: Add `startGameListening` to AppState or use SpeechService directly?
    // I cannot use SpeechService directly easily as it is private in AppState.
    // I should add `startGameListening` to AppState.
    // OR, I can use `startListening` and use a Listener on `appState.sourceText`.
    
    // Let's assume for now I will add `startMode4Listening` to AppState later. 
    // For now I'll write the UI code assuming it exists or verify current AppState APIs.
    // AppState has `startListening`. It sets `_sourceText`.
    // I can listen to `appState` changes.
    
    // Wait, let's look at `Mode3`. It calls `_speechService.startSTT` directly inside AppState.
    // I should add a method in AppState for Mode 4.
    
    // Let's rely on adding `startMode4Listening` to `AppState`.
    // It will take a callback `onResult`.
    
    appState.startMode4Listening(
      (result) {
        // Handle result
        _checkAnswer(result, appState);
        
        // Restart listening for continuous effect if game is still on
        // Note: Do this after a short delay or immediately depending on engine
        // Assuming result is final. If partial, we check but don't restart.
        // AppState wrapper simplifies this, let's assume it returns final.
        // To be safe, re-trigger loop.
        if (_isPlaying) {
             _listenLoop(appState, langCode);
        }
      },
      langCode: langCode,
    );
  }      lang: langCode,
      onResult: (text, isFinal) {
        _checkAnswer(text);
        
         // Restart if stopped and still playing
        if (isFinal && _isPlaying) {
           Future.delayed(const Duration(milliseconds: 500), () {
             if (_isPlaying) _listenLoop(appState, langCode);
           });
        }
      },
    );
  }

  void _checkAnswer(String spokenText) {
    if (spokenText.isEmpty) return;
    
    // Check against all falling words
    // Simple matching
    final normalizedSpoken = _normalize(spokenText);
    
    bool hit = false;
    List<String> hitIds = [];

    for (var word in _fallingWords) {
      final normalizedAnswer = _normalize(word.answer);
      // Determine match (exact or loose?)
      // Use Levenshtein or contains?
      // "Apple" vs "an apple"
      if (normalizedAnswer == normalizedSpoken || 
          (normalizedAnswer.length > 2 && normalizedSpoken.contains(normalizedAnswer)) ||
          (normalizedSpoken.length > 2 && normalizedAnswer.contains(normalizedSpoken))) {
        
        // Correct!
        hit = true;
        hitIds.add(word.id);
        
        // Visual effect?
      }
    }

    if (hit) {
      setState(() {
        _score += hitIds.length * 10 * _level;
        _fallingWords.removeWhere((w) => hitIds.contains(w.id));
      });
    }
  }
  
  String _normalize(String text) {
    return text.toLowerCase().replaceAll(RegExp(r'[^\w\s가-힣]'), '').trim();
  }

  void _updateGame(AppState appState) {
    if (!_isPlaying) return;

    final dt = 1.0 / _fps;
    _timeSinceLastSpawn += dt;

    // Spawn
    if (_timeSinceLastSpawn > (_spawnRate / _gameSpeed)) {
      _spawnWord(appState);
      _timeSinceLastSpawn = 0;
    }

    // Update positions
    setState(() {
      for (var word in _fallingWords) {
        word.y += word.speed * _gameSpeed;
      }

      // Check collisions (bottom)
      // Height is usually passed via LayoutBuilder or Mediaquery.
      // Let's assume height is handled visually, but logic needs a value.
      // I'll grab context size.
      final height = MediaQuery.of(context).size.height;
      
      final missed = _fallingWords.where((w) => w.y > height - 150).toList(); // -150 for bottom area
      if (missed.isNotEmpty) {
        _lives -= missed.length;
        _fallingWords.removeWhere((w) => w.y > height - 150);
        
        if (_lives <= 0) {
          _gameOver();
        }
      }
    });
  }

  void _spawnWord(AppState appState) {
    final records = appState.filteredMaterialRecords;
    if (records.isEmpty) return;

    // Filter out words that are already falling to prevent duplicates on screen
    final activeTexts = _fallingWords.map((w) => w.text).toSet();
    final availableRecords = records.where((r) {
      final sText = r['source_text'] as String;
      final tText = r['target_text'] as String;
      final checkText = _nativeToForeign ? sText : tText;
      return !activeTexts.contains(checkText);
    }).toList();

    // If all words are on screen, don't spawn new ones yet (or spawn duplicates if strictly needed, but user asked not to)
    if (availableRecords.isEmpty) return;

    final randomRecord = availableRecords[Random().nextInt(availableRecords.length)];
    
    final sourceText = randomRecord['source_text'] as String;
    final targetText = randomRecord['target_text'] as String;
    
    final fallingText = _nativeToForeign ? sourceText : targetText;
    final answerText = _nativeToForeign ? targetText : sourceText;
    
    final screenW = MediaQuery.of(context).size.width;
    final x = Random().nextDouble() * (screenW - 100) + 20; // Padding
    
    _fallingWords.add(FallingWord(
      id: DateTime.now().millisecondsSinceEpoch.toString() + Random().nextInt(1000).toString(), // Unique ID
      text: fallingText,
      answer: answerText,
      correctMeaning: answerText,
      x: x,
      y: -50,
      speed: 1.0 + (_level * 0.2) + Random().nextDouble(),
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
    ));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Consumer<AppState>(
      builder: (context, appState, child) {
        if (_isGameOver) {
          return _buildGameOverScreen(l10n, appState);
        }
        
        if (!_isPlaying) {
          return _buildStartScreen(l10n, appState);
        }

        return _buildGameScreen(l10n, appState);
      },
    );
  }

  Widget _buildStartScreen(AppLocalizations l10n, AppState appState) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.videogame_asset, size: 80, color: Colors.indigo),
            const SizedBox(height: 24),
            Text(
              l10n.rainDropGame, 
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.indigo[800]),
            ),
            const SizedBox(height: 8),
            Text(
              l10n.rainDropGameDesc,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            
            // Settings Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Direction
                    SwitchListTile(
                        key: widget.gameDirectionKey,
                        title: Text(_nativeToForeign 
                          ? '${appState.languageNames[appState.sourceLang]} → ${appState.languageNames[appState.targetLang]}'
                          : '${appState.languageNames[appState.targetLang]} → ${appState.languageNames[appState.sourceLang]}'
                      ),
                      subtitle: Text(l10n.gameDirection),
                      value: _nativeToForeign,
                      onChanged: (val) => setState(() => _nativeToForeign = val),
                      secondary: const Icon(Icons.swap_horiz),
                    ),
                    const Divider(),
                    // Speed (Buttons)
                    ListTile(
                      key: widget.gameSpeedKey,
                      title: Text('${l10n.speed}: ${_gameSpeed.toStringAsFixed(1)}x'),
                      subtitle: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove_circle_outline, size: 28),
                            color: Colors.indigo[300],
                            onPressed: _gameSpeed <= 0.5 
                                ? null 
                                : () => setState(() => _gameSpeed = (_gameSpeed - 0.5).clamp(0.5, 3.0)),
                            tooltip: l10n.tooltipDecrease,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                _gameSpeed.toStringAsFixed(1),
                                style: TextStyle(
                                  fontSize: 18, 
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo[700]
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add_circle_outline, size: 28),
                            color: Colors.indigo[300],
                            onPressed: _gameSpeed >= 3.0 
                                ? null 
                                : () => setState(() => _gameSpeed = (_gameSpeed + 0.5).clamp(0.5, 3.0)),
                            tooltip: l10n.tooltipIncrease,
                          ),
                        ],
                      ),
                      leading: const Icon(Icons.speed),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            
            ElevatedButton.icon(
              key: widget.gameStartButtonKey,
              onPressed: () => _startGame(appState),
              icon: const Icon(Icons.play_arrow),
              label: Text(l10n.startGame),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGameOverScreen(AppLocalizations l10n, AppState appState) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.mood_bad, size: 80, color: Colors.grey),
          const SizedBox(height: 24),
          Text(
            l10n.gameOver,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          const SizedBox(height: 16),
          Text(
            '${l10n.finalScore}: $_score',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 40),
          ElevatedButton.icon(
            onPressed: () {
               setState(() {
                 _isGameOver = false;
                 // Return to start screen
                 _isPlaying = false; 
               });
            },
            icon: const Icon(Icons.replay),
            label: Text(l10n.playAgain),
          ),
        ],
      ),
    );
  }

  Widget _buildGameScreen(AppLocalizations l10n, AppState appState) {
    return Stack(
      children: [
        // Game Area
        Positioned.fill(
          child: GestureDetector(
            onTap: () {
               FocusScope.of(context).unfocus();
            },
            child: Container(
              color: Colors.blue[50],
              child: Stack(
                children: [
                   // Words
                   ..._fallingWords.map((word) => Positioned(
                     left: word.x,
                     top: word.y,
                     child: Container(
                       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                       decoration: BoxDecoration(
                         color: word.color.withOpacity(0.9),
                         borderRadius: BorderRadius.circular(20),
                         boxShadow: [
                           BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(2, 2))
                         ],
                       ),
                       child: Text(
                         word.text,
                         style: const TextStyle(
                           color: Colors.white, 
                           fontWeight: FontWeight.bold,
                           fontSize: 18,
                         ),
                       ),
                     ),
                   )).toList(),

                   // Bottom Zone Line
                   Positioned(
                     bottom: 100,
                     left: 0,
                     right: 0,
                     child: Container(
                       height: 2,
                       color: Colors.red.withOpacity(0.3),
                     ),
                   ),
                ],
              ),
            ),
          ),
        ),

        // HUD (Heads Up Display)
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.white.withOpacity(0.9),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite, color: Colors.red),
                    const SizedBox(width: 4),
                    Text('x $_lives', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
                Text(
                  '${l10n.scoreLabel}: $_score', 
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo),
                ),
                IconButton(
                  icon: const Icon(Icons.pause),
                  onPressed: _stopGame,
                ),
              ],
            ),
          ),
        ),
        
        // Mic Indicator
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Center(
             child: Container(
               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
               decoration: BoxDecoration(
                 color: Colors.white.withOpacity(0.9),
                 borderRadius: BorderRadius.circular(30),
                 boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
               ),
               child: Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Icon(Icons.mic, color: Colors.red),
                   SizedBox(width: 8),
                   Text(
                     l10n.speakNow,
                     style: TextStyle(fontWeight: FontWeight.bold),
                   ),
                 ],
               ),
             ),
          ),
        ),
      ],
    );
  }
}

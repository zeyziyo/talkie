import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';
import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'dart:async';

/// Speech service for STT and TTS across platforms
class SpeechService {
  static final SpeechService _instance = SpeechService._internal();
  factory SpeechService() => _instance;
  SpeechService._internal();

  final stt.SpeechToText _speechToText = stt.SpeechToText();
  final FlutterTts _flutterTts = FlutterTts();
  
  bool _isInitialized = false;
  bool _isListening = false;
  bool _isRestarting = false; // Flag to prevent audio session reset during restart
  String _lastRecognizedText = '';
  
  final ValueNotifier<String?> currentlySpeakingText = ValueNotifier(null);
  
  // Cache for voice list
  List<dynamic>? _cachedVoices;
  
  // Stream for status events
  final _statusController = StreamController<String>.broadcast();
  Stream<String> get statusStream => _statusController.stream;

  // Callback for silence detection (auto-stop after speech ends)
  Function? onSilenceDetected;
  
  bool get isListening => _isListening;
  String get lastRecognizedText => _lastRecognizedText;
  
  /// Initialize speech services
  Future<bool> initialize() async {
    if (_isInitialized) return true;
    
    try {
      final available = await _speechToText.initialize(
        onError: (error) => print('STT Error: $error'),
        onStatus: (status) async {
          print('STT Status: $status');
          _statusController.add(status); // Broadcast status
          
          // Fix: Automatically reset audio session when listening stops naturally
          // But allow 'restart' logic (flag checked inside startSTT)
          if ((status == 'done' || status == 'notListening') && !_isRestarting) {
            await _configureForPlayback();
            _isListening = false;
          }
        },
      );
      
      if (!available) {
        print('Speech recognition not available');
        return false;
      }
      
      // Configure TTS
      await _flutterTts.setVolume(1.0);
      await _flutterTts.setSpeechRate(0.5);
      await _flutterTts.setPitch(1.0);
      // Critical Fix: Wait for completion to ensure UI sync
      await _flutterTts.awaitSpeakCompletion(true);

      // TTS Handlers for UI Sync
      _flutterTts.setStartHandler(() {
        // Note: FlutterTts doesn't always pass the text to the start handler
        // but we can rely on our 'speak' method setting it.
        // However, some platforms might not trigger this reliably.
      });

      _flutterTts.setCompletionHandler(() {
        currentlySpeakingText.value = null;
      });

      _flutterTts.setCancelHandler(() {
        currentlySpeakingText.value = null;
      });

      _flutterTts.setErrorHandler((msg) {
        currentlySpeakingText.value = null;
      });
      
      // Initial configuration
      await _configureForPlayback();
      
      _isInitialized = true;
      return true;
    } catch (e) {
      print('Speech service initialization error: $e');
      return false;
    }
  }

  /// Configure Audio Session for Recording (STT)
  Future<void> _configureForRecording() async {
    try {
      final session = await AudioSession.instance;
      await session.configure(AudioSessionConfiguration(
        avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
        avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.allowBluetooth | 
                                      AVAudioSessionCategoryOptions.defaultToSpeaker |
                                      AVAudioSessionCategoryOptions.allowAirPlay, // Added AirPlay
        avAudioSessionMode: AVAudioSessionMode.measurement, // 'measurement' is often recommended for STT to minimize processing
        androidAudioAttributes: const AndroidAudioAttributes(
          contentType: AndroidAudioContentType.speech, // Explicitly speech
          flags: AndroidAudioFlags.none,
          usage: AndroidAudioUsage.media, // Revert to media as assistance is not defined
        ),
        androidAudioFocusGainType: AndroidAudioFocusGainType.gainTransientExclusive, // Exclusive focus
        androidWillPauseWhenDucked: true,
      ));
    } catch (e) {
      print('Error configuring audio for recording: $e');
    }
  }

  /// Configure Audio Session for Playback (TTS)
  Future<void> _configureForPlayback() async {
    try {
      final session = await AudioSession.instance;
      // Use 'speech' preset base but optimize for robust playback
      await session.configure(AudioSessionConfiguration(
        avAudioSessionCategory: AVAudioSessionCategory.playback,
        avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.duckOthers | 
                                      AVAudioSessionCategoryOptions.defaultToSpeaker,
        avAudioSessionMode: AVAudioSessionMode.defaultMode,
        androidAudioAttributes: const AndroidAudioAttributes(
          contentType: AndroidAudioContentType.music,
          flags: AndroidAudioFlags.none,
          usage: AndroidAudioUsage.media, 
        ),
        androidAudioFocusGainType: AndroidAudioFocusGainType.gainTransientMayDuck, // Critical Fix: Allow ducking instead of pausing/stopping
        androidWillPauseWhenDucked: false,
      ));

      // Ensure iOS category is also set correctly
      await _flutterTts.setIosAudioCategory(
        IosTextToSpeechAudioCategory.playback,
        [
          IosTextToSpeechAudioCategoryOptions.defaultToSpeaker,
          IosTextToSpeechAudioCategoryOptions.allowBluetooth,
          IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
        ],
      );
      
      // Explicitly activate the session
      await session.setActive(true);
    } catch (e) {
      print('Error configuring audio for playback: $e');
    }
  }

  /// Start speech-to-text recognition
  /// 
  /// Parameters:
  /// - lang: Language code (e.g., 'ko_KR', 'en_US')
  /// - onResult: Callback when text is recognized (text, isFinal)
  Future<void> startSTT({
    required String lang,
    required Function(String, bool, List<String>) onResult,  // Added List<String> for alternates
    Duration? listenFor,
    Duration? pauseFor,
  }) async {
    if (!_isInitialized) {
      final initialized = await initialize();
      if (!initialized) {
        throw Exception('Speech service not available');
      }
    }
    
    // Ensure clean state by cancelling any previous session
    if (_isListening) {
      _isRestarting = true; // Prevent onStatus from resetting audio session
      await _speechToText.cancel();
      _isListening = false;
      _isRestarting = false;
    }
    
    // Configure audio session specifically for speech recognition
    // Use smaller buffer or specific mode if possible, but basic config is usually safer
    await _configureForRecording();
    
    _lastRecognizedText = '';
    _isListening = true;
    
    /* 
      Stability Improvement: 
      Sometimes onDevice: false can be slow. 
      But onDevice: true fails if no offline pack.
      We stick to onDevice: false as requested, but ensure other parameters are optimal.
    */

    await _speechToText.listen(
      onResult: (result) {
        _lastRecognizedText = result.recognizedWords;
        // Extract all alternative transcriptions
        final alternates = result.alternates
            .map((alt) => alt.recognizedWords)
            .toList();
        onResult(result.recognizedWords, result.finalResult, alternates);  
      },
      localeId: lang,
      listenFor: listenFor ?? const Duration(seconds: 30), // Default 30s
      
      listenOptions: stt.SpeechListenOptions(
        listenMode: stt.ListenMode.dictation, // Dictation is best for phrases
        cancelOnError: true, // true is better for reliability - allows auto-restart on error
        partialResults: true,
        autoPunctuation: true,
        onDevice: false, 
      ),
      pauseFor: pauseFor ?? const Duration(seconds: 3), // Default 3s
    );
  }

  /// Start continuous speech recognition (for Game Mode)
  Future<void> startContinuousSTT({
    required String lang,
    required Function(String, bool, List<String>) onResult,
  }) async {
    if (!_isInitialized) await initialize();
    
    // Ensure clean state
    if (_isListening) {
      _isRestarting = true;
      await _speechToText.cancel();
      _isListening = false;
      _isRestarting = false;
    }
    
    await _configureForRecording();
    _lastRecognizedText = '';
    _isListening = true;

    await _speechToText.listen(
      onResult: (result) {
        _lastRecognizedText = result.recognizedWords;
        final alternates = result.alternates.map((a) => a.recognizedWords).toList();
        onResult(result.recognizedWords, result.finalResult, alternates);  
      },
      localeId: lang,
      listenFor: const Duration(seconds: 60), // Longer duration
      listenOptions: stt.SpeechListenOptions(
        listenMode: stt.ListenMode.dictation,
        cancelOnError: true,
        partialResults: true,
        autoPunctuation: false, // Less processing for game
        onDevice: false,
      ),
      pauseFor: const Duration(seconds: 10), // Long pause allowed (10s)
    );
  }
  
  /// Stop speech-to-text recognition
  Future<void> stopSTT() async {
    if (!_isListening) return;
    
    await _speechToText.stop();
    _isListening = false;
    
    // Critical: Reset audio session to media mode so volume buttons work correctly
    await _configureForPlayback();
  }

  /// Speak text using TTS with Retry Logic
  Future<void> speak(String text, {String lang = 'ko-KR', bool slow = false, String? gender}) async {
    if (!_isInitialized) {
      await initialize();
    }
    
    // 1. Language Detection (Fix for Konglish)
    // Heuristic: Check if the text actually matches the requested language
    if (RegExp(r'[가-힣]').hasMatch(text)) {
      lang = 'ko-KR';
    } else if (RegExp(r'[\u3040-\u309F\u30A0-\u30FF]').hasMatch(text)) {
      lang = 'ja-JP';
    } else if (RegExp(r'[\u4E00-\u9FFF]').hasMatch(text)) {
      // Basic check for Chinese, prioritize zh-CN if not specified
      if (!lang.startsWith('zh')) lang = 'zh-CN';
    } else {
      // If it's mostly Latin/ASCII and specified lang is Korean/Japanese/etc, 
      // it's likely a translation or English phrase that should be read in English accent.
      final latinPattern = RegExp(r'^[a-zA-Z0-9\s.,?!;:()"\-]+$');
      if (latinPattern.hasMatch(text.trim())) {
        // Force English if specified lang is an Asian language or not set
        if (lang.startsWith('ko') || lang.startsWith('ja') || lang.startsWith('zh')) {
          lang = 'en-US';
        }
      }
    }
    
    // Retry mechanism: Try up to 2 times
    int attempts = 0;
    bool success = false;
    
    while (!success && attempts < 2) {
      attempts++;
      try {
        // Stop any previous playback to clear buffers
        await _flutterTts.stop();
        
        // Configuration for playback (Force reset every time)
        await _configureForPlayback();
        
        // Check if language is available
        bool isAvailable = await _flutterTts.isLanguageAvailable(lang);
        if (!isAvailable) {
          print('TTS Language not available: $lang');
          
          if (lang.contains('-')) {
            final baseLang = lang.split('-')[0];
            if (await _flutterTts.isLanguageAvailable(baseLang)) {
              print('Falling back to: $baseLang');
              lang = baseLang; 
            } else {
               print('TTS Language and fallback unavailable.');
               return;
            }
          } else {
             return;
          }
        }

        await _flutterTts.setLanguage(lang);
        
        // Gender Tuning (Voice Selection Only)
        // Critical: Set Voice AFTER Language to ensure the engine knows context, 
        // though setVoice usually overrides.
        
        if (gender != null) {
          await _setBestVoice(lang, gender);
        } else {
           // Even if gender is null, ensure we pick a voice for this language
           // to avoid using previous language's voice (Konglish issue)
           await _setBestVoice(lang, 'any');
        }
        
        await _flutterTts.setSpeechRate(slow ? 0.3 : 0.5);
        await _flutterTts.setVolume(1.0);
        await _flutterTts.setPitch(1.0); // Always use default pitch for natural sound
 
        
        // Small delay after configuration
        await Future.delayed(const Duration(milliseconds: 100)); // Increased delay slightly

        currentlySpeakingText.value = text;
        await _flutterTts.speak(text);
        success = true;
      } catch (e) {
        print('TTS Error (Attempt $attempts): $e');
        if (attempts >= 2) {
          print('TTS failed after 2 attempts.');
        } else {
          // Wait briefly before retrying
          await Future.delayed(const Duration(milliseconds: 300));
        }
      }
    }
  }

  /// Helper to find best voice for gender
  Future<void> _setBestVoice(String lang, String gender) async {
    try {
      _cachedVoices ??= await _flutterTts.getVoices;
      if (_cachedVoices == null) return;
      
      // Normalize target: ko-KR -> ko-kr
      final targetLocale = lang.replaceAll('_', '-').toLowerCase();
      final targetLangShort = targetLocale.split('-')[0];

      // Filter candidates for this language
      final candidates = _cachedVoices!.where((v) {
        try {
          final vMap = Map<String, dynamic>.from(v as Map);
          // Normalize voice locale: en_US -> en-us
          var locale = (vMap['locale'] as String).replaceAll('_', '-').toLowerCase();
          
          // Debug check for exact match or language match
          if (locale == targetLocale) return true;
          if (locale.startsWith(targetLangShort)) return true;
          
          return false;
        } catch (e) {
          return false;
        }
      }).toList();
      
      if (candidates.isEmpty) {
          print('[SpeechService] No voices found for $lang');
          return;
      }

      dynamic bestVoice;
      final targetGender = gender.toLowerCase();
      
      // 1. Try to match Gender if specified
      // 1. Try to match Gender if specified
      if (targetGender != 'any') {
          // Attempt 1: Name Match (Explicit)
          try {
             bestVoice = candidates.firstWhere((v) {
                final vMap = Map<String, dynamic>.from(v as Map);
                final name = (vMap['name'] as String).toLowerCase();
                if (targetGender == 'male') {
                   return name.contains('male') || name.contains('david') || name.contains('arthur') || name.contains('james');
                } else {
                   return name.contains('female') || name.contains('sara') || name.contains('samantha') || name.contains('ava') || name.contains('minji'); 
                }
             });
          } catch (_) {}
          
          // Attempt 2: Index Heuristic (For engines like Google TTS with opaque names)
          // Heuristic: Often Voice 1 is Female, Voice 2 (or higher) is Male
          if (bestVoice == null && candidates.length >= 2) {
             if (targetGender == 'male') {
                // Try to pick the second one (often Male in minimal sets like en-US-x-iol vs iom)
                // Or check for odd/even? No, just picking a different one from default (0) is good enough for a toggle.
                bestVoice = candidates[1]; 
             } else {
                bestVoice = candidates[0];
             }
          }
      }
      
      // 2. Fallback: Prefer exact locale match (e.g. en-US over en-GB)
      if (bestVoice == null) {
         try {
           bestVoice = candidates.firstWhere((v) {
               final vMap = Map<String, dynamic>.from(v as Map);
               final locale = (vMap['locale'] as String).replaceAll('_', '-').toLowerCase();
               return locale == targetLocale;
           });
         } catch (_) {}
      }
      
      // 3. Last Result: Just take the first valid voice
      bestVoice ??= candidates.first;
      
      // CRITICAL: Always set the voice if we found a candidate.
      // This forces the engine to switch from the default (e.g., Korean) to this specific voice.
      if (bestVoice != null) {
        final vMap = Map<String, dynamic>.from(bestVoice as Map);
        // print('[SpeechService] Setting voice: ${vMap['name']} (${vMap['locale']})');
        await _flutterTts.setVoice({"name": vMap['name'], "locale": vMap['locale']});
      }
      
    } catch (e) {
      print('Voice setting error: $e');
    }
  }
  


  /// Stop TTS playback
  Future<void> stopSpeaking() async {
    await _flutterTts.stop();
  }
  
  /// Dispose resources
  void dispose() {
    _speechToText.cancel();
    _flutterTts.stop();
  }
}

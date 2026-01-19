import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';
import 'package:audio_session/audio_session.dart';
import 'dart:async';

/// Speech service for STT and TTS across platforms
class SpeechService {
  final stt.SpeechToText _speechToText = stt.SpeechToText();
  final FlutterTts _flutterTts = FlutterTts();
  
  bool _isInitialized = false;
  bool _isListening = false;
  bool _isRestarting = false; // Flag to prevent audio session reset during restart
  String _lastRecognizedText = '';
  
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
    required Function(String, bool) onResult,  // Added bool for finalResult
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
        onResult(result.recognizedWords, result.finalResult);  
      },
      localeId: lang,
      onDevice: false, 
      listenFor: const Duration(seconds: 30), // Reduce max duration to avoid deep timeouts
      
      listenOptions: stt.SpeechListenOptions(
        listenMode: stt.ListenMode.dictation, // Dictation is best for phrases
        cancelOnError: true, // true is better for reliability - allows auto-restart on error
        partialResults: true,
        autoPunctuation: true, 
      ),
      pauseFor: const Duration(seconds: 3), // Reduce to 3s for snappier end-of-speech detection
    );
  }

  /// Start continuous speech recognition (for Game Mode)
  Future<void> startContinuousSTT({
    required String lang,
    required Function(String, bool) onResult,
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
        onResult(result.recognizedWords, result.finalResult);  
      },
      localeId: lang,
      onDevice: false,
      listenFor: const Duration(seconds: 60), // Longer duration
      listenOptions: stt.SpeechListenOptions(
        listenMode: stt.ListenMode.dictation,
        cancelOnError: true,
        partialResults: true,
        autoPunctuation: false, // Less processing for game
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
  Future<void> speak(String text, {String lang = 'ko-KR', bool slow = false}) async {
    if (!_isInitialized) {
      await initialize();
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
        await _flutterTts.setSpeechRate(slow ? 0.3 : 0.5);
        await _flutterTts.setVolume(1.0);
        
        // Small delay after configuration
        await Future.delayed(const Duration(milliseconds: 100)); // Increased delay slightly

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

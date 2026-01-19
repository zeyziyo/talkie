import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';
import 'package:audio_session/audio_session.dart';

/// Speech service for STT and TTS across platforms
class SpeechService {
  final stt.SpeechToText _speechToText = stt.SpeechToText();
  final FlutterTts _flutterTts = FlutterTts();
  
  bool _isInitialized = false;
  bool _isListening = false;
  String _lastRecognizedText = '';
  
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
          // Fix: Automatically reset audio session when listening stops naturally
          if (status == 'done' || status == 'notListening') {
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
                                      AVAudioSessionCategoryOptions.defaultToSpeaker,
        avAudioSessionMode: AVAudioSessionMode.videoRecording, // Changed to videoRecording to avoid Voice Call volume mode
        androidAudioAttributes: const AndroidAudioAttributes(
          contentType: AndroidAudioContentType.music, 
          flags: AndroidAudioFlags.none,
          usage: AndroidAudioUsage.media,
        ),
        androidAudioFocusGainType: AndroidAudioFocusGainType.gainTransient,
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
                                      AVAudioSessionCategoryOptions.defaultToSpeaker, // Fix: Force speaker
        avAudioSessionMode: AVAudioSessionMode.defaultMode, // Fix: Use default mode instead of spokenAudio to avoid voice processing effects
        androidAudioAttributes: const AndroidAudioAttributes(
          contentType: AndroidAudioContentType.music, // Force Music type
          flags: AndroidAudioFlags.none,
          usage: AndroidAudioUsage.media, 
        ),
        androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
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
    
    // Always configure for recording before starting listener
    await _configureForRecording();
    
    if (_isListening) return;
    
    _lastRecognizedText = '';
    _isListening = true;
    
    await _speechToText.listen(
      onResult: (result) {
        _lastRecognizedText = result.recognizedWords;
        onResult(result.recognizedWords, result.finalResult);  // Pass finalResult to callback
        
        // Note: Removed auto-stop on finalResult to allow users to speak complete sentences
        // Users must manually tap the mic button to stop, or wait for timeout
      },
      localeId: lang,
      onDevice: false, // Changed to false to allow network-based recognition for better accuracy
      // Android: Force on-device recognition (offline) was causing issues where offline packs are missing
      listenFor: const Duration(seconds: 60),
      
      listenOptions: stt.SpeechListenOptions(
        // Use dictation for better sentence recognition and handling of pauses
        listenMode: stt.ListenMode.dictation, 
        cancelOnError: false, // Fix: Don't stop on minor errors
        partialResults: true,
      ),
      // Increase pause duration to prevent cutting off too early
      pauseFor: const Duration(seconds: 5), // Fix: Increased from 3s to 5s
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

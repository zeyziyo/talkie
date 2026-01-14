import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';
import 'package:audio_session/audio_session.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

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
      // Critical Fix: Do not wait for completion to avoid blocking execution
      await _flutterTts.awaitSpeakCompletion(false);
      
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
        avAudioSessionMode: AVAudioSessionMode.voiceChat,
        androidAudioAttributes: const AndroidAudioAttributes(
          contentType: AndroidAudioContentType.speech,
          flags: AndroidAudioFlags.none,
          usage: AndroidAudioUsage.voiceCommunication,
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
      await session.configure(AudioSessionConfiguration(
        avAudioSessionCategory: AVAudioSessionCategory.playback,
        avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.duckOthers,
        avAudioSessionMode: AVAudioSessionMode.spokenAudio,
        androidAudioAttributes: const AndroidAudioAttributes(
          contentType: AndroidAudioContentType.speech,
          flags: AndroidAudioFlags.none,
          usage: AndroidAudioUsage.media,
        ),
        androidAudioFocusGainType: AndroidAudioFocusGainType.gainTransientMayDuck, // Better for TTS
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
      // Android: Force on-device recognition (offline) if available for better performance
      // Explicitly set a long listen duration to avoid default 30s timeout if needed
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
  
  /// Speak text using TTS
  /// 
  /// Parameters:
  /// - text: Text to speak
  /// - lang: Language code (e.g., 'ko-KR', 'es-ES')
  /// - slow: Whether to speak slowly
  Future<void> speak(String text, {String lang = 'ko-KR', bool slow = false}) async {
    if (!_isInitialized) {
      await initialize();
    }
    
    try {
      // Configuration for playback
      await _configureForPlayback();
      
      // Check if language is available
      bool isAvailable = await _flutterTts.isLanguageAvailable(lang);
      if (!isAvailable) {
        print('TTS Language not available: $lang');
        
        // Try fallback to base language (e.g. 'ko-KR' -> 'ko')
        if (lang.contains('-')) {
          final baseLang = lang.split('-')[0];
          if (await _flutterTts.isLanguageAvailable(baseLang)) {
            print('Falling back to: $baseLang');
            lang = baseLang; // Use base language
          } else {
             // If base language also failed, try English as last resort or just return?
             // Returning might be better than speaking English for Korean text.
             // But let's try to proceed, maybe 'en-US' can pronounce some things?
             // No, that's bad UX. Just return.
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
      
      // Small delay to ensure audio session is ready
      await Future.delayed(const Duration(milliseconds: 100));

      await _flutterTts.speak(text);
    } catch (e) {
      print('TTS Error: $e');
    }
  }
  
  /// Synthesize text to audio file and return bytes
  Future<Uint8List?> synthesizeToByteArray(String text, String lang) async {
    try {
      if (!_isInitialized) await initialize();

      // Ensure language is set (added fallback check from speak method)
       bool isAvailable = await _flutterTts.isLanguageAvailable(lang);
      if (!isAvailable && lang.contains('-')) {
          final baseLang = lang.split('-')[0];
          if (await _flutterTts.isLanguageAvailable(baseLang)) {
            lang = baseLang;
          } else {
             return null;
          }
      }

      await _flutterTts.setLanguage(lang);
      
      // Use a unique filename
      String fileName = 'tts_${DateTime.now().millisecondsSinceEpoch}.wav';
      String filePath = '';

      if (Platform.isAndroid) {
        // Android: flutter_tts saves to getExternalFilesDir(null)
        final dir = await getExternalStorageDirectory();
        if (dir != null) {
           filePath = path.join(dir.path, fileName);
           // flutter_tts expects just the filename for Android
           await _flutterTts.synthesizeToFile(text, fileName);
        } else {
           // Fallback if external storage is null (unlikely but possible)
           return null;
        }
      } else if (Platform.isIOS) {
        // iOS: flutter_tts saves to NSDocumentDirectory
        final dir = await getApplicationDocumentsDirectory();
        filePath = path.join(dir.path, fileName);
        // iOS expects just the filename too usually, but let's check
        // flutter_tts ios implementation: uses `NSSearchPathForDirectoriesInDomains(NSDocumentDirectory...`
        await _flutterTts.synthesizeToFile(text, fileName);
      } else {
        return null; // Not supported on other platforms yet
      }
      
      final file = File(filePath);
      
      // Wait for file to exist (polling)
      int attempts = 0;
      while (!await file.exists() && attempts < 20) {
        await Future.delayed(const Duration(milliseconds: 100));
        attempts++;
      }
      
      if (await file.exists()) {
        // Wait a small extra buffer to ensure write completion
        await Future.delayed(const Duration(milliseconds: 100));
        
        final bytes = await file.readAsBytes();
        
        // Clean up
        try {
          await file.delete();
        } catch (e) {
          print('Error deleting temp TTS file: $e');
        }
        
        return bytes;
      }
      
      print('TTS File generated but not found at: $filePath');
      return null;

    } catch (e) {
      print('Synthesize Error: $e');
      return null;
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

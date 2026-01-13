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
      // Critical Fix: Wait for completion so we don't start listening while speaking
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
      
      await _flutterTts.setLanguage(lang);
      await _flutterTts.setSpeechRate(slow ? 0.3 : 0.5);
      await _flutterTts.setVolume(1.0);

      await _flutterTts.speak(text);
    } catch (e) {
      print('TTS Error: $e');
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

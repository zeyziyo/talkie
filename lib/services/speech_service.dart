import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';

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
        onStatus: (status) => print('STT Status: $status'),
      );
      
      if (!available) {
        print('Speech recognition not available');
        return false;
      }
      
      // Configure TTS
      await _flutterTts.setVolume(1.0);
      await _flutterTts.setSpeechRate(0.5);
      await _flutterTts.setPitch(1.0);
      
      // Fix for Volume Control: Force Media Stream
      // iOS: AVAudioSessionCategoryPlayback (ignores silent switch, uses media volume)
      // Android: AudioAttributes USAGE_MEDIA
      await _flutterTts.setIosAudioCategory(
        IosTextToSpeechAudioCategory.playback,
        [
          IosTextToSpeechAudioCategoryOptions.defaultToSpeaker,
          IosTextToSpeechAudioCategoryOptions.allowBluetooth,
          IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
        ],
      );
      
      _isInitialized = true;
      return true;
    } catch (e) {
      print('Speech service initialization error: $e');
      return false;
    }
  }
  
  /// Start speech-to-text recognition
  /// 
  /// Parameters:
  /// - lang: Language code (e.g., 'ko_KR', 'en_US')
  /// - onResult: Callback when text is recognized
  Future<void> startSTT({
    required String lang,
    required Function(String) onResult,
  }) async {
    if (!_isInitialized) {
      final initialized = await initialize();
      if (!initialized) {
        throw Exception('Speech service not available');
      }
    }
    
    if (_isListening) return;
    
    _lastRecognizedText = '';
    _isListening = true;
    
    await _speechToText.listen(
      onResult: (result) {
        _lastRecognizedText = result.recognizedWords;
        onResult(result.recognizedWords);
        
        // Auto-stop when final result is received
        if (result.finalResult) {
          stopSTT();
        }
      },
      localeId: lang,
      listenOptions: stt.SpeechListenOptions(
        // Use dictation for better sentence recognition and handling of pauses
        listenMode: stt.ListenMode.dictation, 
        cancelOnError: true,
        partialResults: true,
      ),
      // Increase pause duration to prevent cutting off too early
      pauseFor: const Duration(seconds: 3),
    );
  }
  
  /// Stop speech-to-text recognition
  void stopSTT() {
    if (!_isListening) return;
    
    _speechToText.stop();
    _isListening = false;
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
      await _flutterTts.setLanguage(lang);
      await _flutterTts.setSpeechRate(slow ? 0.3 : 0.5);
      await _flutterTts.setVolume(1.0);
      
      // Ensure we are using the correct mode before speaking
      await _flutterTts.setIosAudioCategory(
        IosTextToSpeechAudioCategory.playback,
        [
          IosTextToSpeechAudioCategoryOptions.defaultToSpeaker,
           IosTextToSpeechAudioCategoryOptions.allowBluetooth,
           IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
        ]
      );

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

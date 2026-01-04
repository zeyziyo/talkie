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
        listenMode: stt.ListenMode.confirmation,
        cancelOnError: true,
        partialResults: true,
      ),
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

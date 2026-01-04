import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:permission_handler/permission_handler.dart';
import '../providers/app_state.dart';
import '../services/speech_service.dart';
import '../services/translation_service.dart';

class Mode1Widget extends StatefulWidget {
  const Mode1Widget({super.key});

  @override
  State<Mode1Widget> createState() => _Mode1WidgetState();
}

class _Mode1WidgetState extends State<Mode1Widget> {
  final SpeechService _speechService = SpeechService();
  final TranslationService _translationService = TranslationService();
  final TextEditingController _inputController = TextEditingController();
  final TextEditingController _translatedController = TextEditingController();
  
  bool _isRecording = false;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeSpeech();
  }

  Future<void> _initializeSpeech() async {
    try {
      // Request microphone permission
      final status = await Permission.microphone.request();
      if (!status.isGranted) {
        if (mounted) {
          context.read<AppState>().addLog('Microphone permission denied');
        }
        return;
      }

      // Initialize speech service
      final initialized = await _speechService.initialize();
      setState(() {
        _isInitialized = initialized;
      });
      
      if (mounted) {
        if (initialized) {
          context.read<AppState>().addLog('Speech service initialized');
        } else {
          context.read<AppState>().addLog('Speech service initialization failed');
        }
      }
    } catch (e) {
      if (mounted) {
        context.read<AppState>().addLog('Init error: $e');
      }
    }
  }

  Future<void> _startRecording() async {
    if (!_isInitialized) {
      context.read<AppState>().addLog('Speech service not initialized');
      return;
    }

    setState(() {
      _isRecording = true;
      _inputController.text = '';
    });

    try {
      await _speechService.startSTT(
        lang: 'ko_KR',
        onResult: (text) {
          setState(() {
            _inputController.text = text;
          });
        },
      );
      
      if (mounted) {
        context.read<AppState>().addLog('Recording started');
      }
    } catch (e) {
      setState(() {
        _isRecording = false;
      });
      if (mounted) {
        context.read<AppState>().addLog('STT error: $e');
      }
    }
  }

  void _stopRecording() {
    _speechService.stopSTT();
    setState(() {
      _isRecording = false;
    });
    
    if (mounted) {
      context.read<AppState>().addLog('Recording stopped');
    }
  }

  Future<void> _translateText() async {
    final text = _inputController.text.trim();
    if (text.isEmpty) return;

    try {
      context.read<AppState>().addLog('Translating...');
      
      final translated = await _translationService.translate(
        text,
        context.read<AppState>().sourceLang,
        context.read<AppState>().targetLang,
      );
      
      setState(() {
        _translatedController.text = translated;
      });
      
      if (mounted) {
        context.read<AppState>().addLog('Translation complete');
      }
    } catch (e) {
      if (mounted) {
        context.read<AppState>().addLog('Translation error: $e');
      }
    }
  }

  Future<void> _playTTS() async {
    final text = _translatedController.text.trim();
    if (text.isEmpty) return;

    try {
      await _speechService.speak(text, lang: 'es-ES');
      if (mounted) {
        context.read<AppState>().addLog('Playing TTS');
      }
    } catch (e) {
      if (mounted) {
        context.read<AppState>().addLog('TTS error: $e');
      }
    }
  }

  @override
  void dispose() {
    _speechService.dispose();
    _inputController.dispose();
    _translatedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          
          // Input Row: Mic Button + TextField
          Row(
            children: [
              // Mic button container (fixed width)
              SizedBox(
                width: 60,
                child: IconButton(
                  icon: Icon(_isRecording ? Icons.stop : Icons.mic),
                  iconSize: 32,
                  color: Colors.green,
                  tooltip: _isRecording ? '녹음 종료' : '말하기 시작',
                  onPressed: _isRecording ? _stopRecording : _startRecording,
                ),
              ),
              
              // Input TextField
              Expanded(
                child: TextField(
                  controller: _inputController,
                  decoration: const InputDecoration(
                    hintText: '한국어로 말하거나 입력하세요',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                  minLines: 1,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 20),
          
          // Translation Row: Translate Button + TextField
          Row(
            children: [
              // Translate button container (fixed width)
              SizedBox(
                width: 60,
                child: IconButton(
                  icon: const Icon(Icons.g_translate),
                  iconSize: 30,
                  color: Colors.green,
                  tooltip: '스페인어로 번역하기',
                  onPressed: _translateText,
                ),
              ),
              
              // Translation TextField
              Expanded(
                child: TextField(
                  controller: _translatedController,
                  decoration: const InputDecoration(
                    hintText: '번역된 텍스트가 여기에 표시됩니다',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                  minLines: 1,
                  readOnly: true,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 20),
          
          // TTS Button (centered)
          SizedBox(
            width: 60,
            child: IconButton(
              icon: const Icon(Icons.volume_up),
              iconSize: 32,
              color: Colors.green,
              tooltip: '스페인어 듣기',
              onPressed: _playTTS,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';
import 'audio_session_helper.dart';

class SpeechTtsService {
  final FlutterTts _flutterTts = FlutterTts();
  bool _isInitialized = false;
  final ValueNotifier<String?> currentlySpeakingText = ValueNotifier(null);
  List<dynamic>? _cachedVoices;

  Future<bool> initialize() async {
    if (_isInitialized) return true;
    try {
      await _flutterTts.setVolume(1.0);
      await _flutterTts.setSpeechRate(0.5);
      await _flutterTts.setPitch(1.0);
      await _flutterTts.awaitSpeakCompletion(true);

      _flutterTts.setCompletionHandler(() => currentlySpeakingText.value = null);
      _flutterTts.setCancelHandler(() => currentlySpeakingText.value = null);
      _flutterTts.setErrorHandler((msg) => currentlySpeakingText.value = null);

      await AudioSessionHelper.configureForPlayback();
      _isInitialized = true;
      return true;
    } catch (e) {
      print('TTS Initialization Error: $e');
      return false;
    }
  }

  Future<void> speak(String text, {String lang = 'ko-KR', bool slow = false, String? gender}) async {
    if (!_isInitialized) await initialize();

    // Unified Language Normalization (Phase 119: Anti-Konglish)
    if (lang == 'en') {
      lang = 'en-US';
    } else if (lang == 'ko') {
      lang = 'ko-KR';
    } else if (lang == 'ja') {
      lang = 'ja-JP';
    } else if (lang == 'es') {
      lang = 'es-ES';
    }

    // Language Detection Heuristic (Fallback if lang wasn't explicitly set to a handled code)
    if (RegExp(r'[가-힣]').hasMatch(text)) {
      lang = 'ko-KR';
    } else if (RegExp(r'[\u3040-\u309F\u30A0-\u30FF]').hasMatch(text)) {
      lang = 'ja-JP';
    } else if (RegExp(r'[\u4E00-\u9FFF]').hasMatch(text)) {
      if (!lang.startsWith('zh')) lang = 'zh-CN';
    } else {
      // Enhanced Latin Pattern: Allow common punctuation, numbers, and emojis, but ensure Latin letters exist.
      // Checks if text contains Latin letters and does NOT contain CJK characters.
      final hasLatin = RegExp(r'[a-zA-Z]').hasMatch(text);
      final hasCJK = RegExp(r'[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FFF\uAC00-\uD7AF]').hasMatch(text);
      
      if (hasLatin && !hasCJK) {
        // Force English if it looks consistently Latin (plus symbols)
        if (lang.startsWith('ko') || lang.startsWith('ja') || lang.startsWith('zh')) {
          lang = 'en-US';
        }
      }
    }

    int attempts = 0;
    while (attempts < 2) {
      attempts++;
      try {
        await _flutterTts.stop();
        await AudioSessionHelper.configureForPlayback();

        bool isAvailable = await _flutterTts.isLanguageAvailable(lang);
        if (!isAvailable && lang.contains('-')) {
          lang = lang.split('-')[0];
          isAvailable = await _flutterTts.isLanguageAvailable(lang);
        }
        if (!isAvailable) return;

        await _flutterTts.setLanguage(lang);
        await _setBestVoice(lang, gender ?? 'any');
        await _flutterTts.setSpeechRate(slow ? 0.3 : 0.5);
        await _flutterTts.setIosAudioCategory(
          IosTextToSpeechAudioCategory.playback,
          [
            IosTextToSpeechAudioCategoryOptions.defaultToSpeaker,
            IosTextToSpeechAudioCategoryOptions.allowBluetooth,
            IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
          ],
        );

        currentlySpeakingText.value = text;
        await _flutterTts.speak(text);
        return;
      } catch (e) {
        if (attempts >= 2) rethrow;
        await Future.delayed(const Duration(milliseconds: 300));
      }
    }
  }

  Future<void> _setBestVoice(String lang, String gender) async {
    _cachedVoices ??= await _flutterTts.getVoices;
    if (_cachedVoices == null) return;

    final targetLocale = lang.replaceAll('_', '-').toLowerCase();
    final targetLangShort = targetLocale.split('-')[0];

    final candidates = _cachedVoices!.where((v) {
      final vMap = Map<String, dynamic>.from(v as Map);
      var locale = (vMap['locale'] as String).replaceAll('_', '-').toLowerCase();
      return locale == targetLocale || locale.startsWith(targetLangShort);
    }).toList();

    if (candidates.isEmpty) return;

    dynamic bestVoice;
    final targetGender = gender.toLowerCase();

    if (targetGender != 'any') {
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
      
      if (bestVoice == null && candidates.length >= 2) {
        bestVoice = (targetGender == 'male') ? candidates[1] : candidates[0];
      }
    }

    if (bestVoice == null) {
      try {
        bestVoice = candidates.firstWhere((v) {
          final vMap = Map<String, dynamic>.from(v as Map);
          return (vMap['locale'] as String).replaceAll('_', '-').toLowerCase() == targetLocale;
        });
      } catch (_) {}
    }

    bestVoice ??= candidates.first;
    final vMap = Map<String, dynamic>.from(bestVoice as Map);
    await _flutterTts.setVoice({"name": vMap['name'], "locale": vMap['locale']});
  }

  Future<void> stop() async {
    await _flutterTts.stop();
    currentlySpeakingText.value = null;
  }
}

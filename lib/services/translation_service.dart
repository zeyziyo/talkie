import 'package:translator/translator.dart';
import 'database_service.dart';

/// Translation service using Google Translate
class TranslationService {
  static final _translator = GoogleTranslator();
  
  /// Convert language code to translator package format
  /// 
  /// translator package uses lowercase codes
  static String _normalizeLanguageCode(String langCode) {
    final map = {
      // East Asian
      'ko': 'ko',
      'ja': 'ja',
      'zh-CN': 'zh-cn',
      'zh-TW': 'zh-tw',
      
      // South Asian
      'hi': 'hi',
      'bn': 'bn',
      'ta': 'ta',
      'te': 'te',
      'mr': 'mr',
      'ur': 'ur',
      'gu': 'gu',
      'kn': 'kn',
      'ml': 'ml',
      'pa': 'pa',
      
      // European
      'en': 'en',
      'es': 'es',
      'fr': 'fr',
      'de': 'de',
      'it': 'it',
      'pt': 'pt',
      'ru': 'ru',
      'pl': 'pl',
      'uk': 'uk',
      'nl': 'nl',
      'el': 'el',
      'cs': 'cs',
      'ro': 'ro',
      'sv': 'sv',
      'da': 'da',
      'fi': 'fi',
      'no': 'no',
      'hu': 'hu',
      
      // Southeast Asian
      'id': 'id',
      'vi': 'vi',
      'th': 'th',
      'fil': 'tl', // Filipino uses Tagalog code
      'ms': 'ms',
      
      // Middle Eastern
      'ar': 'ar',
      'tr': 'tr',
      'fa': 'fa',
      'he': 'iw', // Hebrew uses 'iw' in Google Translate
      
      // African
      'sw': 'sw',
      'af': 'af',
    };
    return map[langCode] ?? langCode.toLowerCase();
  }
  
  /// Translate text from source language to target language
  /// 
  /// Parameters:
  /// - text: Text to translate
  /// - sourceLang: Source language code (e.g., 'ko', 'zh-CN')
  /// - targetLang: Target language code (e.g., 'ja', 'zh-CN')
  /// 
  /// Returns translated text or throws exception
  static Future<String> translate({
    required String text,
    required String sourceLang,
    required String targetLang,
  }) async {
    final normalized = text.trim();
    if (normalized.isEmpty) {
      return '';
    }
    
    final cacheKey = '$sourceLang-$targetLang-$normalized';
    
    // 1. Check cache first (skip on web)
    try {
      final cached = await DatabaseService.getCachedTranslation(cacheKey);
      
      if (cached != null) {
        print('[Translation] Cache hit');
        return cached;
      }
    } catch (e) {
      // Database not available (web platform) - skip caching
      print('[Translation] Cache unavailable (web platform)');
    }
    
    // 2. Normalize language codes for translator package
    final normalizedSourceLang = _normalizeLanguageCode(sourceLang);
    final normalizedTargetLang = _normalizeLanguageCode(targetLang);
    
    // 3. Call Google Translate API directly
    try {
      print('[Translation] Calling Google Translate: $sourceLang($normalizedSourceLang) -> $targetLang($normalizedTargetLang)');
      print('[Translation] Text: ${normalized.substring(0, normalized.length > 20 ? 20 : normalized.length)}...');
      
      final translation = await _translator.translate(
        normalized,
        from: normalizedSourceLang,
        to: normalizedTargetLang,
      );
      
      final translatedText = translation.text;
      
      // 4. Cache the result (skip on web)
      try {
        await DatabaseService.cacheTranslation(cacheKey, translatedText);
      } catch (e) {
        // Database not available - skip
        print('[Translation] Could not cache (web platform)');
      }
      
      print('[Translation] Translation successful: $translatedText');
      return translatedText;
    } catch (e) {
      print('[Translation] Error: $e');
      rethrow;
    }
  }
}

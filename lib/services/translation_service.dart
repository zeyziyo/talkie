import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'database_service.dart';

/// Translation service using Google Cloud Translation API (REST)
class TranslationService {
  static const String _baseUrl = 'https://translation.googleapis.com/language/translate/v2';
  
  static String? get _apiKey => dotenv.env['GOOGLE_CLOUD_API_KEY'];
  
  /// Helper to decode HTML entities returned by Google API
  static String _htmlDecode(String text) {
    return text
      .replaceAll('&quot;', '"')
      .replaceAll('&#39;', "'")
      .replaceAll('&amp;', '&')
      .replaceAll('&lt;', '<')
      .replaceAll('&gt;', '>');
  }

  /// Convert language code to Google Cloud API format
  /// 
  /// Google API generally uses ISO-639-1 (2-letter) codes
  static String _normalizeLanguageCode(String langCode) {
    final map = {
      // East Asian
      'ko': 'ko',
      'ja': 'ja',
      'zh-CN': 'zh-CN',  // Google API uses zh-CN
      'zh-TW': 'zh-TW',  // Google API uses zh-TW
      
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
      'fil': 'fil', // Google uses 'fil' for Filipino
      'ms': 'ms',
      
      // Middle Eastern
      'ar': 'ar',
      'tr': 'tr',
      'fa': 'fa',
      'he': 'iw', // Google API legacy code for Hebrew
      
      // African
      'sw': 'sw',
      'af': 'af',
    };
    
    // Default fallback: extract first part if contains separator (e.g. en-US -> en)
    // unless it's Chinese (zh-CN/TW) which we handled above or specific map entry
    if (map.containsKey(langCode)) {
      return map[langCode]!;
    }
    
    if (langCode.contains('-')) {
      final parts = langCode.split('-');
      if (parts[0].toLowerCase() == 'zh') {
        // Special handling for zh variants if not mapped above
        return langCode; 
      }
      return parts[0].toLowerCase();
    }
    
    return langCode;
  }
  
  /// Translate text from source language to target language using REST API
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

    if (_apiKey == null || _apiKey!.isEmpty) {
      print('[Translation] Error: Google Cloud API Key is missing');
      return 'Error: API Key Missing. Check .env';
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
    
    // 2. Normalize language codes for Google API
    final normalizedSourceLang = _normalizeLanguageCode(sourceLang);
    final normalizedTargetLang = _normalizeLanguageCode(targetLang);
    
    // 3. Call Google Cloud Translation API (REST)
    try {
      print('[Translation] Calling Google Cloud API: $sourceLang($normalizedSourceLang) -> $targetLang($normalizedTargetLang)');
      
      final response = await http.post(
        Uri.parse('$_baseUrl?key=$_apiKey'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'q': normalized,
          'source': normalizedSourceLang,
          'target': normalizedTargetLang,
          'format': 'text', // 'text' or 'html'
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        // Response format: { "data": { "translations": [ { "translatedText": "..." } ] } }
        final translations = data['data']['translations'] as List;
        
        if (translations.isNotEmpty) {
          final rawTranslatedText = translations[0]['translatedText'] as String;
          final translatedText = _htmlDecode(rawTranslatedText);
          
          print('[Translation] Success: $translatedText');

          // 4. Cache the result (skip on web)
          try {
            await DatabaseService.cacheTranslation(cacheKey, translatedText);
          } catch (e) {
            print('[Translation] Could not cache (web platform)');
          }
          
          return translatedText;
        } else {
          throw Exception('No translation returned in response');
        }
      } else {
        final error = jsonDecode(response.body);
        final errorMessage = error['error']?['message'] ?? response.body;
        print('[Translation] API Error (${response.statusCode}): $errorMessage');
        return 'Translation Error: $errorMessage';
      }
      
    } catch (e) {
      print('[Translation] Network/Parsing Error: $e');
      return 'Error: Migration in progress'; // Fallback message
    }
  }
}

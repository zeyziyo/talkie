import 'dart:convert';
import 'package:http/http.dart' as http;

/// Translation service using Google Translate API
class TranslationService {
  static const String _baseUrl = 'https://translate.googleapis.com/translate_a/single';
  
  /// Translate text from source language to target language
  /// 
  /// Parameters:
  /// - text: Text to translate
  /// - sourceLang: Source language code (e.g., 'ko')
  /// - targetLang: Target language code (e.g., 'es')
  /// 
  /// Returns translated text or error message
  Future<String> translate(String text, String sourceLang, String targetLang) async {
    final normalized = text.trim();
    if (normalized.isEmpty) {
      return '';
    }
    
    try {
      final uri = Uri.parse(_baseUrl).replace(queryParameters: {
        'client': 'gtx',
        'sl': sourceLang,
        'tl': targetLang,
        'dt': 't',
        'q': normalized,
      });
      
      final response = await http.get(uri);
      
      if (response.statusCode == 200) {
        final decoded = json.decode(response.body);
        // Google Translate API returns: [[[translated_text, original_text, ...]]]
        if (decoded != null && decoded is List && decoded.isNotEmpty) {
          final translations = decoded[0] as List;
          if (translations.isNotEmpty) {
            final translatedText = translations[0][0] as String;
            return translatedText;
          }
        }
        return 'Translation failed: Invalid response format';
      } else {
        return 'Translation error: ${response.statusCode}';
      }
    } catch (e) {
      print('Translation Error: $e');
      return 'Translation error: $e';
    }
  }
}

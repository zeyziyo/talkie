import 'dart:convert';
import 'package:http/http.dart' as http;
import 'database_service.dart';

/// Translation service using TalkLand server API
class TranslationService {
  static const String _baseUrl = 'https://talkland.onrender.com';
  
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
    
    // 2. Call server API
    try {
      final uri = Uri.parse('$_baseUrl/api/translate');
      
      print('[Translation] Calling API: $sourceLang -> $targetLang');
      print('[Translation] Text: ${normalized.substring(0, normalized.length > 20 ? 20 : normalized.length)}...');
      
      final response = await http.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'text': normalized,
          'source_lang': sourceLang,
          'target_lang': targetLang,
        }),
      ).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw Exception('Translation timeout after 10 seconds');
        },
      );
      
      print('[Translation] Response status: ${response.statusCode}');
      
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        
        if (data['error'] != null) {
          throw Exception('Translation API error: ${data['error']}');
        }
        
        final translation = data['translated_text'] as String;
        
        // 3. Cache the result (skip on web)
        try {
          await DatabaseService.cacheTranslation(cacheKey, translation);
        } catch (e) {
          // Database not available - skip
          print('[Translation] Could not cache (web platform)');
        }
        
        print('[Translation] API call successful: $translation');
        return translation;
      } else {
        print('[Translation] Error response: ${response.body}');
        throw Exception('Translation failed: HTTP ${response.statusCode}');
      }
    } catch (e) {
      print('[Translation] Error: $e');
      rethrow;
    }
  }
  
  /// Health check for server availability
  static Future<bool> checkServerHealth() async {
    try {
      final uri = Uri.parse('$_baseUrl/api/health');
      final response = await http.get(uri).timeout(
        const Duration(seconds: 5),
      );
      
      return response.statusCode == 200;
    } catch (e) {
      print('[Translation] Health check failed: $e');
      return false;
    }
  }
}

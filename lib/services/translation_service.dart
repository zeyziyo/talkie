import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'database_service.dart';

import 'supabase_service.dart';


class TranslationService {
  /// Translate text using Supabase Edge Function (Gemini)
  ///
  /// Parameters:
  /// - text: Text to translate
  /// - sourceLang: Source language code (e.g., 'ko', 'en')
  /// - targetLang: Target language code (e.g., 'ja', 'es')
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

    // 1. Check local cache first
    try {
      final cached = await DatabaseService.getCachedTranslation(cacheKey);
      if (cached != null) {
        print('[Translation] Cache hit');
        return cached;
      }
    } catch (e) {
      print('[Translation] Cache unavailable (web/error)');
    }

    // 2. Call Supabase Edge Function
    try {
      print('[Translation] Calling Supabase Edge Function...');
      
      final result = await SupabaseService.translateAndValidate(
        text: normalized,
        sourceLang: sourceLang,
        targetLang: targetLang,
      );

      final translatedText = result['translatedText'] as String;
      final isValid = result['isValid'] as bool? ?? false;
      final note = result['note'] as String?;

      if (!isValid) {
        final reason = result['reason'] ?? 'Unknown reason';
        print('[Translation] Blocked by AI: $reason');
        return 'Filtered: $reason';
      }

      print('[Translation] Success: $translatedText (Note: $note)');

      // 3. Cache the result locally
      try {
        await DatabaseService.cacheTranslation(cacheKey, translatedText);
      } catch (e) {
        print('[Translation] Could not cache locally');
      }

      // TODO: Future - Insert into public 'sentences' table here or in a separate flow
      
      return translatedText;

    } catch (e) {
      print('[Translation] Error: $e');
      return 'Error: $e';
    }
  }
}

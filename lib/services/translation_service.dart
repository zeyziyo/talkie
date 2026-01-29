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
  static Future<Map<String, dynamic>> translate({
    required String text,
    required String sourceLang,
    required String targetLang,
    String? note,
  }) async {
    final normalized = text.trim();
    if (normalized.isEmpty) {
      return {'text': '', 'isValid': true};
    }

    final cacheKey = '$sourceLang-$targetLang-$normalized';

    // 1. Check local cache first
    try {
      final cached = await DatabaseService.getCachedTranslation(cacheKey);
      if (cached != null) {
        // Validation check: Ignore cached errors or filters
        if (!cached.startsWith('Filtered:') && !cached.startsWith('Error:')) {
           print('[Translation] Cache hit');
           return {'text': cached, 'isValid': true};
        }
        print('[Translation] Invalid cache ignored: $cached');
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
        note: note,
      );

      final translatedText = (result['translatedText'] ?? result['text'] ?? '') as String;
      final isValid = result['isValid'] as bool? ?? false;
      final reason = result['reason'] as String? ?? (isValid ? null : 'OTHER');
      final disambiguationOptions = result['disambiguationOptions'] as List<dynamic>?;

      if (!isValid) {
        print('[Translation] Blocked by AI: $reason');
        return {'text': '', 'isValid': false, 'reason': reason};
      }

      print('[Translation] Success: $translatedText (Note: $note)');

      // 3. Cache the result locally (Text only for now)
      try {
        await DatabaseService.cacheTranslation(cacheKey, translatedText);
      } catch (e) {
        print('[Translation] Could not cache locally');
      }
      
      return {
        'text': translatedText,
        'isValid': true,
        'note': note,
        'disambiguationOptions': disambiguationOptions?.cast<String>(),
      };

    } catch (e) {
      print('[Translation] Error: $e');
      return {'text': '', 'isValid': false, 'reason': 'Error: $e'};
    }
  }
  /// Request title suggestions for a conversation from AI
  static Future<List<String>> generateTitleSuggestions(List<Map<String, dynamic>> history) async {
    if (history.isEmpty) return [];
    
    try {
      return await SupabaseService.suggestTitles(history: history);
    } catch (e) {
      print('[Translation] Error generating title suggestions: $e');
      return [];
    }
  }
}

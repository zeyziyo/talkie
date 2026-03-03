import 'database_service.dart';
import 'supabase_service.dart';
import '../l10n/app_localizations.dart';

class TranslationService {
  /// Maps error reasons to localized messages
  static String getErrorMessage(String reason, AppLocalizations l10n) {
    switch (reason) {
      case 'PROFANITY':
        return l10n.errorProfanity;
      case 'HATE_SPEECH':
        return l10n.errorHateSpeech;
      case 'SEXUAL':
        return l10n.errorSexualContent;
      default:
        // If it looks like a descriptive message, return as is
        if (reason.startsWith('Error:') || reason.length > 20 || reason.contains(' ')) {
          return reason;
        }
        return l10n.errorOtherSafety;
    }
  }

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

    // Include note in cache key to avoid context-free cache hits
    final cacheKey = note != null && note.isNotEmpty 
        ? '$sourceLang-$targetLang-$normalized-$note'
        : '$sourceLang-$targetLang-$normalized';

    // 1. Check local cache first (WITH TIMEOUT)
    try {
      print('[Translation] Checking cache with timeout...');
      final cached = await DatabaseService.getCachedTranslation(cacheKey)
          .timeout(const Duration(milliseconds: 800)); // 0.8s max for cache
      if (cached != null) {
        if (!cached.startsWith('Filtered:') && !cached.startsWith('Error:')) {
           print('[Translation] Cache hit');
           return {'text': cached, 'isValid': true};
        }
        print('[Translation] Invalid cache ignored: $cached');
      }
    } catch (e) {
      print('[Translation] Cache SKIP/Error/Timeout: $e');
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

      // Phase 17480: Accept translation even if AI flagged it out of ambiguity caution
      if (!isValid && translatedText.isEmpty) {
        print('[Translation] Blocked by AI: $reason');
        return {'text': '', 'isValid': false, 'reason': reason};
      }

      print('[Translation] Success: $translatedText (Note: $note)');

      // 3. Cache the result locally (Non-blocking timeout)
      try {
        await DatabaseService.cacheTranslation(cacheKey, translatedText)
            .timeout(const Duration(milliseconds: 500));
      } catch (e) {
        print('[Translation] Could not cache locally: $e');
      }
      
      return {
        'text': translatedText,
        'isValid': true,
        'note': note ?? result['note'],
        'disambiguationOptions': disambiguationOptions?.cast<String>(),
        'pos': result['pos'] as String?,
        'formType': result['formType'] as String?,
        'root': result['root'] as String?,
        'style': result['style'] as String?,
        'englishText': result['englishText'] as String?, // Phase 106: Preserve pivot
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

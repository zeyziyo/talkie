import 'supabase_helper.dart';

class SupabaseEdgeService {
  static Future<Map<String, dynamic>> translateAndValidate({
    required String text,
    required String sourceLang,
    required String targetLang,
    String? note,
  }) async {
    try {
      final response = await SupabaseHelper.client.functions.invoke(
        'translate-and-validate',
        body: {
          'text': text,
          'sourceLang': sourceLang,
          'targetLang': targetLang,
          'note': note,
        },
      ).timeout(const Duration(seconds: 20));
      return Map<String, dynamic>.from(response.data);
    } catch (e) {
      throw Exception('Translation Failed (Timeout or Network Error): $e');
    }
  }

  static Future<Map<String, dynamic>> processChat({
    required String text,
    required String context,
    required String targetLang,
    String? sourceLang, // Phase 180: Use user's UI language for translation target
    List<Map<String, dynamic>>? history,
  }) async {
    try {
      final response = await SupabaseHelper.client.functions.invoke(
        'process-chat',
        body: {
          'text': text,
          'context': context,
          'targetLang': targetLang,
          'sourceLang': sourceLang, // UI language
          'history': history,
        },
      ).timeout(const Duration(seconds: 20));
      return Map<String, dynamic>.from(response.data);
    } catch (e) {
      throw Exception('Chat Failed (Timeout or Network Error): $e');
    }
  }

  static Future<List<String>> suggestTitles({
    required List<Map<String, dynamic>> history,
  }) async {
    try {
      final response = await SupabaseHelper.client.functions.invoke(
        'suggest-titles',
        body: {'history': history},
      ).timeout(const Duration(seconds: 15));
      final data = response.data as Map<String, dynamic>;
      final titles = data['titles'] as List<dynamic>?;
      return titles?.cast<String>() ?? [];
    } catch (e) {
      return [];
    }
  }

  static Future<Map<String, dynamic>> getRecommendations({
    required List<Map<String, dynamic>> history,
    required String sourceLang,
    required String targetLang,
  }) async {
    try {
      final response = await SupabaseHelper.client.functions.invoke(
        'get-recommendations',
        body: {
          'history': history,
          'sourceLang': sourceLang,
          'targetLang': targetLang,
        },
      ).timeout(const Duration(seconds: 20));
      return Map<String, dynamic>.from(response.data);
    } catch (e) {
      throw Exception('Recommendations Failed: $e');
    }
  }
}

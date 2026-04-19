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

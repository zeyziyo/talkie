import '../models/sentence.dart';
import '../services/supabase_service.dart';

class SentenceRepository {
  /// Fetch all translations for a specific group
  Future<List<Sentence>> getSentencesByGroup(int groupId) async {
    final response = await SupabaseService.client
        .from('sentences')
        .select()
        .eq('group_id', groupId);

    final data = response as List<dynamic>;
    return data.map((json) => Sentence.fromJson(json)).toList();
  }

  /// Search for sentences by text and language
  Future<List<Sentence>> searchSentences(String query, String langCode) async {
    final response = await SupabaseService.client
        .from('sentences')
        .select()
        .eq('lang_code', langCode)
        .ilike('text', '%$query%'); // Case-insensitive partial match

    final data = response as List<dynamic>;
    return data.map((json) => Sentence.fromJson(json)).toList();
  }

  /// Add a new confirmed sentence
  Future<Sentence> addSentence(Sentence sentence) async {
    final response = await SupabaseService.client
        .from('sentences')
        .insert(sentence.toJson()..remove('id')) // ID is auto-generated
        .select()
        .single();

    return Sentence.fromJson(response);
  }
}

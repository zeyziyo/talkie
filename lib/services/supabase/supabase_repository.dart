import 'supabase_helper.dart';
import 'supabase_auth_service.dart';

class SupabaseRepository {
  static String _getTable(String type) => type == 'word' ? 'public_words' : 'public_sentences';

  static Future<void> saveEntry({
    required int groupId,
    required String text,
    required String langCode,
    required String type,
    String? note,
    String? root,
    List<String>? tags,
  }) async {
    final data = <String, dynamic>{
      'group_id': groupId,
      'text': text,
      'lang_code': langCode,
      'note': note,
      'tags': tags,
      'status': 'approved',
      'author_id': SupabaseAuthService.currentUser?.id,
    };

    if (type == 'word') {
      data['root'] = root;
    }

    await SupabaseHelper.client.from(_getTable(type)).insert(data);
  }

  static Future<int?> findGroupId(String text, String langCode) async {
    final wordRes = await SupabaseHelper.client
        .from('public_words')
        .select('group_id')
        .eq('text', text)
        .eq('lang_code', langCode)
        .maybeSingle();
    if (wordRes != null) return wordRes['group_id'] as int;

    final sentRes = await SupabaseHelper.client
        .from('public_sentences')
        .select('group_id')
        .eq('text', text)
        .eq('lang_code', langCode)
        .maybeSingle();
    if (sentRes != null) return sentRes['group_id'] as int;

    return null;
  }

  /// Phase 106: Intelligent group ID search using source, target and pivot
  static Future<int?> findGroupIdWithPivot({
    required String sourceText,
    required String sourceLang,
    required String targetText,
    required String targetLang,
    String? englishText,
  }) async {
    // 1. Check Source
    int? groupId = await findGroupId(sourceText, sourceLang);
    if (groupId != null) return groupId;
    
    // 2. Check Target
    groupId = await findGroupId(targetText, targetLang);
    if (groupId != null) return groupId;
    
    // 3. Check English Pivot (Shared Dictionary Point)
    if (englishText != null && sourceLang != 'en' && targetLang != 'en') {
      groupId = await findGroupId(englishText, 'en');
      if (groupId != null) return groupId;
    }
    
    return null;
  }

  static Future<int> getNextGroupId() async {
    try {
      final response = await SupabaseHelper.client.rpc('next_group_id');
      if (response != null) return response as int;
    } catch (_) {}
    return DateTime.now().millisecondsSinceEpoch;
  }

  static Future<void> addToLibrary({
    required int groupId,
    required String type,
    String? note,
    String? sourceLang,
    String? targetLang,
    List<String>? tags,
    int? reviewCount,
    bool? isMemorized,
    String? lastReviewed,
    String? notebookTitle,
  }) async {
    final userId = SupabaseAuthService.currentUser?.id;
    if (userId == null) return;
    
    final table = type == 'word' ? 'words_meta' : 'sentences_meta';
    
    await SupabaseHelper.client.from(table).upsert({
      'user_id': userId,
      'group_id': groupId,
      'notebook_title': notebookTitle ?? 'My Collection',
      'source_lang': sourceLang,
      'target_lang': targetLang,
      'tags': tags,
      'is_memorized': (isMemorized == true) ? 1 : 0,
      'review_count': reviewCount ?? 0,
      'last_reviewed': lastReviewed,
    }, onConflict: 'user_id, group_id, notebook_title');
  }

  /// Phase 33: Merge anonymous data to permanent user ID on Supabase server
  static Future<void> mergeUserSessions(String oldId, String newId) async {
    if (oldId == newId) return;
    
    // 1. Update Meta ownership
    await SupabaseHelper.client
        .from('words_meta')
        .update({'user_id': newId})
        .eq('user_id', oldId);
    await SupabaseHelper.client
        .from('sentences_meta')
        .update({'user_id': newId})
        .eq('user_id', oldId);
    
    print('[SupabaseRepo] Cloud data ownership transferred: $oldId -> $newId');
  }
}

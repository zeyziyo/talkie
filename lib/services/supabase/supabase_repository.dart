import 'supabase_helper.dart';
import 'supabase_auth_service.dart';

class SupabaseRepository {
  static String _getTable(String type) => type == 'word' ? 'words' : 'sentences';

  static Future<void> saveEntry({
    required int groupId,
    required String text,
    required String langCode,
    required String type,
    String? note,
    String? pos,
    String? formType,
    String? root,
    String? style,
    List<String>? tags,
  }) async {
    final data = <String, dynamic>{
      'group_id': groupId,
      'text': text,
      'lang_code': langCode,
      'note': note,
      'pos': pos,
      'tags': tags,
      'status': 'approved',
      'author_id': SupabaseAuthService.currentUser?.id,
    };

    if (type == 'word') {
      data['form_type'] = formType;
      data['root'] = root;
    } else {
      data['style'] = style;
    }

    await SupabaseHelper.client.from(_getTable(type)).insert(data);
  }

  static Future<int?> findGroupId(String text, String langCode) async {
    final wordRes = await SupabaseHelper.client
        .from('words')
        .select('group_id')
        .eq('text', text)
        .eq('lang_code', langCode)
        .maybeSingle();
    if (wordRes != null) return wordRes['group_id'] as int;

    final sentRes = await SupabaseHelper.client
        .from('sentences')
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

  static Future<void> addToLibrary(int groupId, String? note, {String? dialogueId, String? speaker, int? sequenceOrder, List<String>? materialTags}) async {
    final userId = SupabaseAuthService.currentUser?.id;
    if (userId == null) return;
    
    await SupabaseHelper.client.from('user_library').upsert({
      'user_id': userId,
      'group_id': groupId,
      'dialogue_id': dialogueId,
      'speaker': speaker,
      'sequence_order': sequenceOrder,
      'personal_note': note,
      'material_tags': materialTags,
    }, onConflict: 'user_id, group_id, dialogue_id');
  }

  // Dialogue Operations
  static Future<String> createDialogueGroup({String? title, String? persona}) async {
    final userId = SupabaseAuthService.currentUser?.id;
    if (userId == null) throw Exception('User not authenticated');

    final response = await SupabaseHelper.client.from('dialogue_groups').insert({
      'user_id': userId,
      'title': title,
      'persona': persona,
    }).select('id').single();

    return response['id'] as String;
  }

  static Future<void> updateDialogueTitle(String id, String title) async {
    await SupabaseHelper.client.from('dialogue_groups').update({'title': title}).eq('id', id);
  }

  static Future<void> deleteDialogueGroup(String id) async {
    final userId = SupabaseAuthService.currentUser?.id;
    if (userId == null) return;

    await SupabaseHelper.client.from('dialogue_groups').delete().eq('id', id).eq('user_id', userId);
    await SupabaseHelper.client.from('user_library').delete().eq('dialogue_id', id).eq('user_id', userId);
  }

  // Phase 131: Chat Isolation - Use dedicated 'chat_messages' table
  static Future<void> saveChatMessage({
    required String dialogueId,
    required String sourceText,
    required String targetText,
    required String sourceLang,
    required String targetLang,
    required String speaker,
    required int sequenceOrder,
  }) async {
    final userId = SupabaseAuthService.currentUser?.id;
    if (userId == null) return;

    await SupabaseHelper.client.from('chat_messages').insert({
      'user_id': userId,
      'dialogue_id': dialogueId,
      'speaker': speaker,
      'source_text': sourceText,
      'target_text': targetText,
      'source_lang': sourceLang,
      'target_lang': targetLang,
      'sequence_order': sequenceOrder,
    });
  }

  static Future<List<Map<String, dynamic>>> getChatMessages(String dialogueId) async {
    final userId = SupabaseAuthService.currentUser?.id;
    if (userId == null) return [];

    final response = await SupabaseHelper.client
        .from('chat_messages')
        .select() // Select all fields
        .eq('user_id', userId)
        .eq('dialogue_id', dialogueId)
        .order('sequence_order', ascending: true);

    return (response as List).map((msg) {
      return {
        'id': msg['id'],
        'dialogue_id': msg['dialogue_id'],
        'source_text': msg['source_text'],
        'target_text': msg['target_text'],
        'source_lang': msg['source_lang'],
        'target_lang': msg['target_lang'],
        'speaker': msg['speaker'],
        'sequence_order': msg['sequence_order'],
        'created_at': msg['created_at'],
      };
    }).toList();
  }
}

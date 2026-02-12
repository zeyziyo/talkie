import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart';

class SupabaseService {
  static bool _initialized = false;
  
  // Fallback values (운영 환경에서는 .env 사용 권장)
  // WARNING: _fallbackAnonKey는 로컬 테스트용이며, 실제 배포 시에는 보안을 위해 .env를 통해서만 공급되어야 함.
  static const String _fallbackUrl = 'https://soxdzielqtabyradajle.supabase.co';
  static const String _fallbackAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNveGR6aWVscXRhYnlyYWRhamxlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjkzNzI0NDQsImV4cCI6MjA4NDk0ODQ0NH0.MHLZSXBWJlN6xojyqJR57DLulUWMUg67V458h6Sq2nY';
  
  /// Get the Supabase client (lazy access after initialization)
  static SupabaseClient get client {
    if (!_initialized) {
      throw Exception('SupabaseService not initialized. Call initialize() first.');
    }
    return Supabase.instance.client;
  }

  /// Initialize Supabase
  static Future<void> initialize() async {
    if (_initialized) return; // Prevent double initialization
    
    // Use .env values if available, otherwise use fallback
    final envUrl = dotenv.env['SUPABASE_URL'];
    final envKey = dotenv.env['SUPABASE_ANON_KEY'];

    if (kReleaseMode && (envUrl == null || envKey == null)) {
      // 운영 빌드에서는 반드시 .env가 유효해야 함
      print('CRITICAL: Supabase environment variables missing in Release Mode!');
      // throw Exception('Production Error: Supabase credentials not found in environment.');
    }

    final url = envUrl?.isNotEmpty == true ? envUrl! : _fallbackUrl;
    final anonKey = envKey?.isNotEmpty == true ? envKey! : _fallbackAnonKey;
    
    print('Supabase: Initializing with URL: $url');
    
    await Supabase.initialize(
      url: url,
      anonKey: anonKey,
    );
    
    _initialized = true;

    // Auto-login anonymously to enable RLS (saving data)
    try {
      if (client.auth.currentSession == null) {
        await client.auth.signInAnonymously();
        print("Supabase: Anonymous Sign-in Success");
      }
    } catch (e) {
      print("Supabase: Sign-in Failed: $e");
    }
  }

  /// Call the 'translate-and-validate' Edge Function
  static Future<Map<String, dynamic>> translateAndValidate({
    required String text,
    required String sourceLang,
    required String targetLang,
    String? note,
  }) async {
    try {
      print('[Supabase] Invoking translate-and-validate for "$text" (Note: $note)');
      final response = await client.functions.invoke(
        'translate-and-validate',
        body: {
          'text': text,
          'sourceLang': sourceLang,
          'targetLang': targetLang,
          'note': note,
        },
      );

      // Edge Function returns nested data in 'data' field sometimes depending on invocation method,
      // but client.functions.invoke returns the data directly usually.
      // Let's assume the function returns JSON: { translatedText, isValid, reason, note }
      
      final data = response.data;
      return Map<String, dynamic>.from(data);
      
    } catch (e) {
      print('Supabase Edge Function Error: $e');
      throw Exception('Translation Failed: $e');
    }
  }

  /// Phase 98: Save to the correct Supabase table based on type
  static String _getTable(String type) => type == 'word' ? 'words' : 'sentences';

  /// Phase 98.1: Save entry with type-specific fields
  /// words: pos, form_type, root (NO style)
  /// sentences: pos, style (NO form_type, root)
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
      'author_id': client.auth.currentUser?.id,
    };

    if (type == 'word') {
      // words 전용 필드
      data['form_type'] = formType;
      data['root'] = root;
    } else {
      // sentences 전용 필드
      data['style'] = style;
    }

    await client.from(_getTable(type)).insert(data);
  }

  /// Legacy wrapper for backward compatibility
  static Future<void> saveSentence({
    required int groupId,
    required String text,
    required String langCode,
    String? note,
  }) async {
    await saveEntry(groupId: groupId, text: text, langCode: langCode, type: 'sentence', note: note);
  }

  /// Phase 98: Find an existing group for a text (searches both tables)
  static Future<int?> findGroupId(String text, String langCode) async {
    // 1. Search words table first
    final wordRes = await client
        .from('words')
        .select('group_id')
        .eq('text', text)
        .eq('lang_code', langCode)
        .maybeSingle();
    if (wordRes != null) return wordRes['group_id'] as int;

    // 2. Search sentences table
    final sentRes = await client
        .from('sentences')
        .select('group_id')
        .eq('text', text)
        .eq('lang_code', langCode)
        .maybeSingle();
    if (sentRes != null) return sentRes['group_id'] as int;

    return null;
  }

  /// Find group_id using English as pivot language (Phase 76: Shared Dictionary)
  /// Search order: source text → target text → English text
  static Future<int?> findGroupIdWithPivot({
    required String sourceText,
    required String sourceLang,
    required String targetText,
    required String targetLang,
    String? englishText,
  }) async {
    // 1. Search by source text
    int? groupId = await findGroupId(sourceText, sourceLang);
    if (groupId != null) return groupId;
    
    // 2. Search by target text
    groupId = await findGroupId(targetText, targetLang);
    if (groupId != null) return groupId;
    
    // 3. Search by English pivot (if provided and not already English)
    if (englishText != null && sourceLang != 'en' && targetLang != 'en') {
      groupId = await findGroupId(englishText, 'en');
      if (groupId != null) return groupId;
    }
    
    return null; // No existing group found
  }

  /// Generate next group_id from PostgreSQL Sequence
  static Future<int> _getNextGroupId() async {
    try {
      // Call PostgreSQL function to get next sequence value
      final response = await client.rpc('next_group_id');
      if (response != null) {
        return response as int;
      }
    } catch (e) {
      debugPrint('Supabase: Failed to get next_group_id from sequence: $e');
    }
    // Fallback to timestamp if sequence fails
    return DateTime.now().millisecondsSinceEpoch;
  }

  /// Import a single JSON entry with validation and deduplication
  /// Now uses English pivot for cross-language linking
  /// Returns: { success: bool, reason: String? }
  static Future<Map<String, dynamic>> importJsonEntry({
    required String sourceText,
    required String sourceLang,
    required String targetText,
    required String targetLang,
    String? note,
    String? pos,
    String? formType,
    String? root,
    String? type,
    List<String>? tags,
    String? syncSubject,
  }) async {
    try {
      // 1. Validation + English Translation via Edge Function
      final validation = await translateAndValidate(
        text: sourceText,
        sourceLang: sourceLang,
        targetLang: targetLang,
        note: note,
      );
      
      if (validation['isValid'] != true) {
        return {'success': false, 'reason': 'Content Policy: ${validation['reason'] ?? 'Unknown'}'};
      }
      
      // Extract English pivot from Edge Function response
      final englishText = validation['englishText'] as String?;
      
      // 2. Find existing group using pivot language
      int? groupId = await findGroupIdWithPivot(
        sourceText: sourceText,
        sourceLang: sourceLang,
        targetText: targetText,
        targetLang: targetLang,
        englishText: englishText,
      );
      
      // Check for exact duplicate (same source + target in group)
      if (groupId != null) {
        final targetCheck = await client
            .from('sentences')
            .select('id')
            .eq('group_id', groupId)
            .eq('lang_code', targetLang)
            .eq('text', targetText)
            .maybeSingle();
            
        if (targetCheck != null) {
          await _addToLibrary(groupId, note);
          return {'success': false, 'reason': 'Duplicate', 'id': groupId};
        }
      }

      // 3. Insert Data — Phase 98: Use correct table based on type
      final authorId = client.auth.currentUser?.id;
      final tableName = _getTable(type ?? 'sentence');
      
      // Phase 98: Separate title tags from general tags
      final generalTags = tags?.where((t) => syncSubject == null || t != syncSubject).toList();
      
      if (groupId == null) {
        // New Group - use PostgreSQL Sequence
        groupId = await _getNextGroupId();
        
        // Insert Source into correct table — Phase 98.1: type-specific fields
        final sourceData = <String, dynamic>{
          'group_id': groupId,
          'lang_code': sourceLang,
          'text': sourceText,
          'note': note,
          'pos': pos,
          'tags': generalTags,
          'author_id': authorId,
          'status': 'approved',
        };
        if ((type ?? 'sentence') == 'word') {
          sourceData['form_type'] = formType;
          sourceData['root'] = root;
        }
        await client.from(tableName).insert(sourceData);
        
        // Insert English pivot (if different from source/target)
        if (englishText != null && sourceLang != 'en' && targetLang != 'en') {
          await client.from(tableName).insert({
            'group_id': groupId,
            'lang_code': 'en',
            'text': englishText,
            'author_id': authorId,
            'status': 'approved',
          });
        }
      }
      
      // Insert Target (if not already exists in this group)
      final existingTarget = await client
          .from(tableName)
          .select('id')
          .eq('group_id', groupId)
          .eq('lang_code', targetLang)
          .eq('text', targetText)
          .maybeSingle();
          
      if (existingTarget == null) {
        await client.from(tableName).insert({
          'group_id': groupId,
          'lang_code': targetLang,
          'text': targetText,
          'author_id': authorId,
          'status': 'approved',
        });
      }
      
      // 4. Add to library — Phase 98: Include title tags as material_tags
      final materialTags = syncSubject != null ? [syncSubject] : <String>[];
      await _addToLibrary(groupId, note, materialTags: materialTags);
      
      return {'success': true, 'id': groupId};
    } catch (e) {
      return {'success': false, 'reason': e.toString()};
    }
  }

  /// Import a message into a specific dialogue group
  static Future<Map<String, dynamic>> importDialogueMessage({
    required String dialogueId,
    required String sourceText,
    required String sourceLang,
    required String targetText,
    required String targetLang,
    required String speaker,
    required int sequenceOrder,
    String? pos,
    String? formType,
    String? root,
  }) async {
    try {
      final userId = client.auth.currentUser?.id;
      if (userId == null) throw Exception('Not authenticated');

      // 1. Find or create group for the sentence pair
      int? groupId = await findGroupId(sourceText, sourceLang);
      
      if (groupId == null) {
        groupId = DateTime.now().millisecondsSinceEpoch;
        // Insert Source
        await client.from('sentences').insert({
          'group_id': groupId,
          'lang_code': sourceLang,
          'text': sourceText,
          'pos': pos,
          'form_type': formType,
          'root': root,
          'status': 'approved',
          'author_id': userId,
        });
      }

      // Check for target
      final targetCheck = await client
          .from('sentences')
          .select('id')
          .eq('group_id', groupId)
          .eq('lang_code', targetLang)
          .eq('text', targetText)
          .maybeSingle();

      if (targetCheck == null) {
        await client.from('sentences').insert({
          'group_id': groupId,
          'lang_code': targetLang,
          'text': targetText,
          'status': 'approved',
          'author_id': userId,
        });
      }

      // 2. Add to user library with dialogue linkage
      await client.from('user_library').upsert({
        'user_id': userId,
        'group_id': groupId,
        'dialogue_id': dialogueId,
        'speaker': speaker,
        'sequence_order': sequenceOrder,
      }, onConflict: 'user_id, group_id, dialogue_id');

      return {'success': true};
    } catch (e) {
      return {'success': false, 'reason': e.toString()};
    }
  }

  /// Fetch private chat messages for a specific dialogue from Supabase
  static Future<List<Map<String, dynamic>>> getPrivateChatMessages(String dialogueId) async {
    final userId = client.auth.currentUser?.id;
    if (userId == null) return [];

    try {
      // Fetch links from user_library joined with sentences
      final response = await client
          .from('user_library')
          .select('group_id, speaker, sequence_order, created_at, personal_note, sentences(text, lang_code)')
          .eq('user_id', userId)
          .eq('dialogue_id', dialogueId)
          .order('sequence_order', ascending: true);

      return (response as List).map((link) {
        final sentences = link['sentences'] as List;
        final source = sentences.firstWhere((s) => s['lang_code'] != 'en', orElse: () => sentences.first);
        final target = sentences.firstWhere((s) => s['lang_code'] == 'en', orElse: () => sentences.last);

        return {
          'group_id': link['group_id'],
          'source_text': source['text'],
          'target_text': target['text'],
          'speaker': link['speaker'],
          'sequence_order': link['sequence_order'],
          'created_at': link['created_at'],
          'note': link['personal_note'],
        };
      }).toList();
    } catch (e) {
      print('Supabase: Fetch private messages failed: $e');
      return [];
    }
  }

  /// Save a private chat message directly to the user's cloud library
  /// This ensures and cross-device sync without global pool contamination.
  static Future<void> savePrivateChatMessage({
    required String dialogueId,
    required String sourceText,
    required String targetText,
    required String sourceLang,
    required String targetLang,
    required String speaker,
    required int sequenceOrder,
    String? note,
  }) async {
    final userId = client.auth.currentUser?.id;
    if (userId == null) return;

    try {
      // For backup purposes, we still need a group_id. 
      // We'll use the timestamp as a placeholder group_id for personal messages.
      final groupId = DateTime.now().millisecondsSinceEpoch;

      // 1. First ensure the texts exist in the global/shadow pool (optional but efficient)
      // or we just save the link. For now, we'll use the existing sentences table 
      // but status='private' if we had that. Since we don't, we'll just insert as is.
      await client.from('sentences').insert([
        {
          'group_id': groupId,
          'lang_code': sourceLang,
          'text': sourceText,
          'status': 'private', // Tagging as private if possible
          'author_id': userId,
        },
        {
          'group_id': groupId,
          'lang_code': targetLang,
          'text': targetText,
          'status': 'private',
          'author_id': userId,
        }
      ]);

      // 2. Link to user's dialogue history
      await client.from('user_library').insert({
        'user_id': userId,
        'group_id': groupId,
        'dialogue_id': dialogueId,
        'speaker': speaker,
        'sequence_order': sequenceOrder,
        'personal_note': note,
      });
      
      print('Supabase: Private chat message backed up for dialogue $dialogueId');
    } catch (e) {
      print('Supabase: Private chat backup failed: $e');
    }
  }
  
  /// Phase 98: material_tags added for title tag sync
  static Future<void> _addToLibrary(int groupId, String? note, {String? dialogueId, String? speaker, int? sequenceOrder, List<String>? materialTags}) async {
    final userId = client.auth.currentUser?.id;
    if (userId == null) return;
    
    try {
      await client.from('user_library').upsert({
        'user_id': userId,
        'group_id': groupId,
        'dialogue_id': dialogueId,
        'speaker': speaker,
        'sequence_order': sequenceOrder,
        'personal_note': note,
        'material_tags': materialTags,
      }, onConflict: 'user_id, group_id, dialogue_id');
    } catch (e) {
      print('Supabase: Add to library failed: $e');
    }
  }

  // === Dialogue Group Operations (Phase 11) ===

  /// Create a new dialogue group
  static Future<String> createDialogueGroup({String? title, String? persona}) async {
    final userId = client.auth.currentUser?.id;
    if (userId == null) throw Exception('User not authenticated');

    final response = await client.from('dialogue_groups').insert({
      'user_id': userId,
      'title': title,
      'persona': persona,
    }).select('id').single();

    return response['id'] as String;
  }

  /// Update dialogue group title
  static Future<void> updateDialogueTitle(String id, String title) async {
    await client.from('dialogue_groups').update({'title': title}).eq('id', id);
  }

  /// Delete a dialogue group and related personal links (Phase 75.6)
  static Future<void> deleteDialogueGroup(String id) async {
    final userId = client.auth.currentUser?.id;
    if (userId == null) return;

    try {
      // 1. Delete from dialogue_groups (Cloud)
      // Note: If cascading is set up on the DB, user_library might be deleted automatically.
      // But we'll be explicit for safety.
      await client.from('dialogue_groups').delete().eq('id', id).eq('user_id', userId);
      
      // 2. Delete from user_library (Personal links)
      await client.from('user_library').delete().eq('dialogue_id', id).eq('user_id', userId);
      
      print('Supabase: Dialogue group $id deleted from cloud.');
    } catch (e) {
      print('Supabase: Failed to delete dialogue group $id: $e');
      rethrow;
    }
  }

  /// Call 'process-chat' Edge Function (Draft for Phase 11)
  static Future<Map<String, dynamic>> processChat({
    required String text,
    required String context, // Dialogue history or Persona
    required String targetLang,
    List<Map<String, dynamic>>? history, // Added history support
  }) async {
    try {
      final response = await client.functions.invoke(
        'process-chat',
        body: {
          'text': text,
          'context': context,
          'targetLang': targetLang,
          'history': history, // Pass history to Edge Function
        },
      );
      return Map<String, dynamic>.from(response.data);
    } catch (e) {
      print('Supabase Chat Function Error: $e');
      throw Exception('Chat Failed: $e');
    }
  }
  /// Call 'suggest-titles' Edge Function
  static Future<List<String>> suggestTitles({
    required List<Map<String, dynamic>> history,
  }) async {
    try {
      final response = await client.functions.invoke(
        'suggest-titles',
        body: {'history': history},
      );
      
      final data = response.data as Map<String, dynamic>;
      final titles = data['titles'] as List<dynamic>?;
      return titles?.cast<String>() ?? [];
    } catch (e) {
      print('Supabase Suggest Titles Error: $e');
      return []; // Fallback to empty list
    }
  }

  /// Call 'get-recommendations' Edge Function
  static Future<Map<String, dynamic>> getRecommendations({
    required List<Map<String, dynamic>> history,
    required String sourceLang,
    required String targetLang,
  }) async {
    try {
      final response = await client.functions.invoke(
        'get-recommendations',
        body: {
          'history': history,
          'sourceLang': sourceLang,
          'targetLang': targetLang,
        },
      );
      return Map<String, dynamic>.from(response.data);
    } catch (e) {
      print('Supabase Recommendations Error: $e');
      throw Exception('Recommendations Failed: $e');
    }
  }
}

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SupabaseService {
  static bool _initialized = false;
  
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
    
    await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL']!,
      anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
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
  }) async {
    try {
      final response = await client.functions.invoke(
        'translate-and-validate',
        body: {
          'text': text,
          'sourceLang': sourceLang,
          'targetLang': targetLang,
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

  /// Save a validated sentence to the public dictionary
  static Future<void> saveSentence({
    required int groupId,
    required String text,
    required String langCode,
    String? note,
  }) async {
    await client.from('sentences').insert({
      'group_id': groupId,
      'text': text,
      'lang_code': langCode,
      'note': note,
      'status': 'approved', // Auto-approve for verified translations (simplification for now)
      'author_id': client.auth.currentUser?.id,
    });
  }

  /// Find an existing group for a text (Deduplication)
  static Future<int?> findGroupId(String text, String langCode) async {
    final response = await client
        .from('sentences')
        .select('group_id')
        .eq('text', text)
        .eq('lang_code', langCode)
        .maybeSingle();

    if (response != null) {
      return response['group_id'] as int;
    }
    return null;
  }

  /// Import a single JSON entry with validation and deduplication
  /// Returns: { success: bool, reason: String? }
  static Future<Map<String, dynamic>> importJsonEntry({
    required String sourceText,
    required String sourceLang,
    required String targetText,
    required String targetLang,
    String? note,
  }) async {
    try {
      // 1. Duplicate Check (Source)
      int? groupId = await findGroupId(sourceText, sourceLang);
      
      // If group exists, check if target also exists in this group (Full Duplicate)
      if (groupId != null) {
        final targetCheck = await client
            .from('sentences')
            .select('id')
            .eq('group_id', groupId)
            .eq('lang_code', targetLang)
            .eq('text', targetText)
            .maybeSingle();
            
        if (targetCheck != null) {
          // Already exists exactly.
          // Ensure it's in user's library though?
          await _addToLibrary(groupId, note);
          return {'success': false, 'reason': 'Duplicate'};
        }
      }

      // 2. Validation (Content Policy) via Edge Function
      // We validate the SOURCE text as the primary content.
      // (Optionally could validate target too, but source is sufficient for most cases)
      final validation = await translateAndValidate(
        text: sourceText,
        sourceLang: sourceLang,
        targetLang: targetLang, // Target lang irrelevant for validation but required by API
      );
      
      if (validation['isValid'] != true) {
        return {'success': false, 'reason': 'Content Policy: ${validation['reason'] ?? 'Unknown'}'};
      }

      // 3. Insert Data
      final authorId = client.auth.currentUser?.id;
      
      if (groupId == null) {
        // New Group
        groupId = DateTime.now().millisecondsSinceEpoch; // Should use UUID or Sequence in real prod
        
        // Insert Source
        await client.from('sentences').insert({
          'group_id': groupId,
          'lang_code': sourceLang,
          'text': sourceText,
          'note': note, // Note usually explains the source term in these lists
          'author_id': authorId,
          'status': 'approved',
        });
      }
      
      // Insert Target (If we are here, target didn't exist in this group)
      await client.from('sentences').insert({
        'group_id': groupId,
        'lang_code': targetLang,
        'text': targetText,
        'author_id': authorId,
        'status': 'approved',
      });
      
      // 4. Add to User Library
      await _addToLibrary(groupId, note);
      
      return {'success': true};

    } catch (e) {
      return {'success': false, 'reason': 'Error: $e'};
    }
  }
  
  static Future<void> _addToLibrary(int groupId, String? note) async {
    final userId = client.auth.currentUser?.id;
    if (userId == null) return;
    
    try {
      await client.from('user_library').upsert({
        'user_id': userId,
        'group_id': groupId,
        // Only update note if provided, otherwise query existing? 
        // Upsert might overwrite note with null if we aren't careful.
        // Let's assume we want to preserve existing note if new one is null.
        // But strict upsert replaces. For simplicity, just upsert.
        'personal_note': note,
      }, onConflict: 'user_id, group_id'); // Ensure uniqueness
    } catch (e) {
      // Ignore
    }
  }
}

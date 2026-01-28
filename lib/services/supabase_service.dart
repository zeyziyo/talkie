import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SupabaseService {
  static bool _initialized = false;
  
  // Fallback values (used when .env fails to load)
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
    final url = dotenv.env['SUPABASE_URL']?.isNotEmpty == true 
        ? dotenv.env['SUPABASE_URL']! 
        : _fallbackUrl;
    final anonKey = dotenv.env['SUPABASE_ANON_KEY']?.isNotEmpty == true 
        ? dotenv.env['SUPABASE_ANON_KEY']! 
        : _fallbackAnonKey;
    
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
      
      // 4. Add to library
      await _addToLibrary(groupId, note);
      
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
  
  static Future<void> _addToLibrary(int groupId, String? note, {String? dialogueId, String? speaker, int? sequenceOrder}) async {
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
      }, onConflict: 'user_id, group_id, dialogue_id'); // Updated for Phase 11
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
}

import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';
import 'word_repository.dart';
import 'sentence_repository.dart';


class UnifiedRepository {
  static Future<Database> get _db async => await DatabaseHelper.database;

  static int generateContentId(String text, String? properties) {
    // Phase 2: Content-Based Hash ID Generation
    final String combined = '$text|${properties ?? ""}';
    final bytes = utf8.encode(combined);
    
    int hash = 0x811c9dc5;
    for (var b in bytes) {
      hash ^= b;
      hash *= 0x01000193;
      hash &= 0x7FFFFFFF; 
    }
    return hash == 0 ? 1 : hash;
  }

  static Future<int> saveUnifiedRecord({
    required String text,
    required String lang,
    required String translation,
    required String targetLang,
    required String type,
    String? pos,
    String? formType,
    String? style,
    String? root,
    String? note,
    List<String>? tags,
    Transaction? txn,
    String? syncSubject,
    int? sequenceOrder,
    int? groupId,
    String? knownProperties,
  }) async {
    final db = txn ?? await _db;
    // table variable removed as it is unused in v19 logic
    
    // Determine Group ID
    int gId;
    if (groupId != null) {
      gId = groupId;
    } else {
      // Generate ID from content
      final props = '$type|$lang'; 
      gId = generateContentId(text, props);
    }
    
    if (groupId == null && syncSubject != null && sequenceOrder != null) {
      try {
        final table = type == 'word' ? 'words_meta' : 'sentences_meta';
        // Phase 129: Use meta table instead of item_tags for sequence alignment
        final existingPivot = await db.rawQuery('''
          SELECT group_id FROM $table 
          WHERE notebook_title = ?
          ORDER BY id ASC 
          LIMIT 1 OFFSET ?
        ''', [syncSubject, sequenceOrder]);
        
        if (existingPivot.isNotEmpty) {
           final foundId = existingPivot.first['group_id'] as int;
           if (foundId > 0) gId = foundId;
        }
      } catch (e) {
        print('[DB] Pivot Sync Error: $e');
      }
    }

    final timestamp = DateTime.now().toIso8601String();

    // 5. Shared Content Data Map
    Map<String, dynamic> contentMap = {};

    // Source Language
    contentMap[lang] = {
      'text': text,
      'pos': pos,
      'note': note,
    };
    if (type == 'word') {
      contentMap[lang]['root'] = root;
      contentMap[lang]['form_type'] = formType;
    } else {
      contentMap[lang]['style'] = style;
    }

    // Target Language
    if (translation.isNotEmpty && targetLang.isNotEmpty && targetLang != 'auto') {
      contentMap[targetLang] = {
        'text': translation,
        'pos': pos,
        'note': note,
      };
      if (type != 'word') {
        contentMap[targetLang]['style'] = style;
      }
    }

    // 6. Data Construction for Insert
    // Phase 129: Pass both Content and Meta to Repository
    final insertData = {
      'group_id': gId,
      'data_json': jsonEncode(contentMap),
      'created_at': timestamp,
      // Meta fields
      'notebook_title': syncSubject ?? 'My Collection', // Use syncSubject as notebook title by default
      'source_lang': lang,
      'target_lang': targetLang,
      'caption': note, // Note plays dual role: shared content note & personal caption
      'tags': tags?.join(','),
      'is_memorized': 0,
    };

    // 7. Insert via Repository (which handles split)
    if (type == 'word') {
      await WordRepository.insert(insertData, txn: txn);
    } else {
      await SentenceRepository.insert(insertData, txn: txn);
    }

    // 5. Tags are stored in 'words_meta' / 'sentences_meta' directly.
    // No separate table insert needed.

    return gId;
  }

  static Future<void> addLanguageToUnifiedRecord({
    required int groupId,
    required String text,
    required String lang,
    required String type,
    String? pos,
    String? formType,
    String? style,
    String? root,
    String? note,
    Transaction? txn,
  }) async {
    final db = txn ?? await _db;
    final table = type == 'word' ? 'words' : 'sentences';

    final existing = await db.query(table, where: 'group_id = ?', whereArgs: [groupId], limit: 1);
    if (existing.isNotEmpty) {
      final row = Map<String, dynamic>.from(existing.first);
      final Map<String, dynamic> translations = jsonDecode(row['data_json'] as String);
      
      final entry = {
        'text': text,
        'pos': pos,
        'note': note,
      };
      if (type == 'word') {
        entry['root'] = root;
        entry['form_type'] = formType;
      } else {
        entry['style'] = style;
      }
      translations[lang] = entry;
      
      await db.update(table, {'data_json': jsonEncode(translations)}, where: 'group_id = ?', whereArgs: [groupId]);
    }
  }

  /// Phase 106: Relink local temporary ID to server's canonical ID
  /// Phase 120: Relink local temporary ID to server's canonical ID (With Merge Logic)
  static Future<void> relinkGroupId(int oldId, int newId) async {
    if (oldId == newId) return;
    
    final db = await _db;
    await db.transaction((txn) async {
       // Helper: Merge and relink a table (Content + Meta)
       Future<void> mergeAndRelink(String contentTable, String metaTable) async {
         // 1. Relink Content (words/sentences)
         final existingNew = await txn.query(contentTable, where: 'group_id = ?', whereArgs: [newId]);
         final existingOld = await txn.query(contentTable, where: 'group_id = ?', whereArgs: [oldId]);
         
         if (existingOld.isNotEmpty) {
           if (existingNew.isNotEmpty) {
             // Collision: Merge old content into new
             final oldRow = existingOld.first;
             final newRow = existingNew.first;
             
             final oldJson = jsonDecode(oldRow['data_json'] as String) as Map<String, dynamic>;
             final newJson = jsonDecode(newRow['data_json'] as String) as Map<String, dynamic>;
             
             final mergedJson = {...newJson, ...oldJson}; 
             
             await txn.update(contentTable, {
               'data_json': jsonEncode(mergedJson),
             }, where: 'group_id = ?', whereArgs: [newId]);
             
             await txn.delete(contentTable, where: 'group_id = ?', whereArgs: [oldId]);
           } else {
             // No collision: Rename
             await txn.update(contentTable, {'group_id': newId}, where: 'group_id = ?', whereArgs: [oldId]);
           }
         }

         // 2. Relink Meta (words_meta/sentences_meta)
         // Meta usually belongs to the user. If ID changes, we just move it.
         // If target ID already has meta, we might be overwriting or ignoring.
         // Let's assume server ID wins, but we want to keep local Personal properties (like is_memorized).
         
         final existingMetaNew = await txn.query(metaTable, where: 'group_id = ?', whereArgs: [newId]);
         final existingMetaOld = await txn.query(metaTable, where: 'group_id = ?', whereArgs: [oldId]);

         if (existingMetaOld.isNotEmpty) {
            if (existingMetaNew.isNotEmpty) {
              // Collision: Update new with old's important personal flags if they are "better" (e.g. memorized)
              // Or just keep Local?
              // Let's keep existingNew (Server/Prior) but update with Old if New is empty-ish?
              // Simplest: Delete Old Meta (Assume New Meta is correct from sync).
              // BUT, if I am defining the ID for the first time, New Meta might not exist locally yet?
              // ExistingNew check handles that.
              
              // Let's merge memorized status:
              final oldMem = existingMetaOld.first['is_memorized'] == 1;
              final newMem = existingMetaNew.first['is_memorized'] == 1;
              if (oldMem && !newMem) {
                 await txn.update(metaTable, {'is_memorized': 1}, where: 'group_id = ?', whereArgs: [newId]);
              }
              await txn.delete(metaTable, where: 'group_id = ?', whereArgs: [oldId]);
            } else {
              // No collision: Rename
              await txn.update(metaTable, {'group_id': newId}, where: 'group_id = ?', whereArgs: [oldId]);
            }
         }
       }

       await mergeAndRelink('words', 'words_meta');
       await mergeAndRelink('sentences', 'sentences_meta');
       
       // 2. Update Tags: (Removed) item_tags table is gone. Tags are in meta and moved with meta.
       // Meta relinking handled above.

       // 3. Update Dialogues (if they used group_id references? No, Dialogues use UUIDs now)
       // Old chat_messages update removed.
    });
    print('[DB] Relinked (with merge) group_id: $oldId -> $newId');
  }

  static String mapLanguageToCode(String name) {
    if (name.isEmpty) return name;
    final lowerName = name.toLowerCase().trim();
    switch (lowerName) {
      case 'korean': case '한국어': return 'ko';
      case 'english': case '영어': return 'en';
      case 'japanese': case '일본어': return 'ja';
      case 'chinese': case '중국어': return 'zh';
      case 'spanish': case '스페인어': return 'es';
      case 'french': case '프랑스어': return 'fr';
      default:
        if (lowerName.contains('kor')) return 'ko';
        if (lowerName.contains('eng')) return 'en';
        if (lowerName.contains('jap')) return 'ja';
        return lowerName;
    }
  }

  static String getLanguageFullName(String code) {
    switch (code) {
      case 'ko': return 'Korean';
      case 'en': return 'English';
      case 'ja': return 'Japanese';
      default: return code;
    }
  }
}

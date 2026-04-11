import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';
import 'word_repository.dart';
import 'sentence_repository.dart';


class UnifiedRepository {
  static Future<Database> get _db async => await DatabaseHelper.database;

  /// 내용 기반 해시 ID 생성 (integrated_data_structure.md 3.1 준수)
  static int generateContentId(String text, {required String type}) {
    // 1. 정규화 (소문자 + 앞뒤 공백 제거)
    String normalizedText = text.trim().toLowerCase();
    
    // 2. 부호 보정 (문장의 경우) - integrated_data_structure.md 3.1.B 준수
    // (여기서는 간단히 공백 처리 위주로 하며, 명시적인 form_type이 들어오면 호출부에서 보정 권장)
    
    // 3. 구성 요소 결합
    String combined;
    // Rule 3.1: hash(텍스트 내용)
    combined = normalizedText;
    
    // 4. FNV-1a Hash 알고리즘 (31비트 안전 범위)
    final bytes = utf8.encode(combined);
    int hash = 0x811c9dc5;
    for (var b in bytes) {
      hash ^= b;
      hash *= 0x01000193; // FNV Prime
      hash &= 0x7FFFFFFF; // Phase 115: 일부 구형 32비트 SQLite 환경 호환성을 위해 31비트 양수 범위로 제한
    }
    
    return hash == 0 ? 1 : hash;
  }

  /// AppState 등에서 사용하기 편리한 래퍼
  static int generateGroupId({
    required String text, 
    required String type,
  }) {
    String standardText = text.trim();
    return generateContentId(standardText, type: type);
  }

  static Future<int> saveUnifiedRecord({
    required String text,
    required String lang,
    required String translation,
    required String targetLang,
    required String type,
    String? root,
    String? note,
    List<String>? tags,
    Transaction? txn,
    String? syncSubject,
    int? sequenceOrder,
    int? groupId,
    int? reviewCount,
    String? notebookTitle,
  }) async {
    final db = txn ?? await _db;
    // table variable removed as it is unused in v19 logic
    
    // Determine Group ID
    int gId;
    if (groupId != null) {
      gId = groupId;
    } else {
      // Phase 160: Generate Content-Based ID (Standard Rule)
      gId = generateGroupId(
        text: text, 
        type: type, 
      );
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
      'note': note,
    };
    if (type == 'word') {
      contentMap[lang]['root'] = root;
    }

    // Target Language
    if (translation.isNotEmpty && targetLang.isNotEmpty && targetLang != 'auto') {
      contentMap[targetLang] = {
        'text': translation,
        'note': note,
      };
    }

    final insertData = {
      'group_id': gId,
      'data_json': jsonEncode(contentMap),
      'created_at': timestamp,
      // Meta fields
      'notebook_title': notebookTitle ?? (syncSubject ?? 'My Collection'),
      'source_lang': lang,
      'target_lang': targetLang,
      'review_count': reviewCount ?? 0,
      'tags': tags?.join(','),
      'is_memorized': 0,
      'created_at_meta': timestamp,
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
        'note': note,
      };
      if (type == 'word') {
        entry['root'] = root;
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
       // Old user_dialogue_messages update removed.
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

  /// Phase 17500: Repair records with 'auto' language code
  static Future<void> repairAutoLanguageRecords(String currentLang, String targetLang) async {
    final db = await _db;
    await db.transaction((txn) async {
      // 1. Repair meta tables (Safe SQL)
      await txn.update('words_meta', 
        {'source_lang': currentLang, 'target_lang': targetLang}, 
        where: "source_lang = 'auto' OR target_lang = 'auto'");
      await txn.update('sentences_meta', 
        {'source_lang': currentLang, 'target_lang': targetLang}, 
        where: "source_lang = 'auto' OR target_lang = 'auto'");

      // 2. Repair content tables (Use Dart for JSON manipulation for maximum compatibility)
      for (var table in ['words', 'sentences']) {
        final rows = await txn.query(table, where: "data_json LIKE '%\"auto\":%'");
        for (var row in rows) {
          final gId = row['group_id'] as int;
          try {
            final jsonStr = row['data_json'] as String;
            final Map<String, dynamic> data = jsonDecode(jsonStr);
            if (data.containsKey('auto')) {
              final autoData = data.remove('auto');
              data[currentLang] = autoData;
              await txn.update(table, {'data_json': jsonEncode(data)}, where: 'group_id = ?', whereArgs: [gId]);
            }
          } catch (e) {
            print('[DB] Error repairing row $gId in $table: $e');
          }
        }
      }
    });
    print('[DB] Repaired records with "auto" language code to "$currentLang"');
  }
}

import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';
import 'word_repository.dart';
import 'sentence_repository.dart';
import 'tag_repository.dart';

class UnifiedRepository {
  static Future<Database> get _db async => await DatabaseHelper.database;

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
  }) async {
    final db = txn ?? await _db;
    final table = type == 'word' ? 'words' : 'sentences';
    
    // Determine Group ID (Pivot Strategy)
    int gId = groupId ?? DateTime.now().millisecondsSinceEpoch;
    
    if (groupId == null && syncSubject != null && sequenceOrder != null) {
      try {
        final existing = await db.rawQuery('''
          SELECT w.group_id 
          FROM item_tags t 
          JOIN $table w ON t.item_id = w.id 
          WHERE t.tag = ? 
          ORDER BY w.created_at ASC 
          LIMIT 1 OFFSET ?
        ''', [syncSubject, sequenceOrder]);
        
        if (existing.isNotEmpty) {
           final foundId = existing.first['group_id'] as int;
           if (foundId > 0) gId = foundId;
        }
      } catch (e) {
        print('[DB] Pivot Sync Error: $e');
      }
    }

    final timestamp = DateTime.now().toIso8601String();

    final row = {
      'group_id': gId,
      'text': text,
      'lang_code': lang,
      'pos': pos,
      'note': note,
      'created_at': timestamp,
    };

    int id;
    if (type == 'word') {
      row['form_type'] = formType;
      row['root'] = root;
      id = await WordRepository.insert(row, txn: txn);
    } else {
      row['style'] = style;
      id = await SentenceRepository.insert(row, txn: txn);
    }

    if (tags != null) {
      for (var t in tags) {
        await TagRepository.addTag(id, type, t, txn: txn);
      }
    }
    
    // Target 저장
    if (translation.isNotEmpty && targetLang.isNotEmpty && targetLang != 'auto') {
      final targetRow = {
        'group_id': gId,
        'text': translation,
        'lang_code': targetLang,
        // Phase 116: Sync ONLY shared metadata. Linguistic fields (root, form_type) must remain isolated.
        'pos': pos,  // POS is generally shared conceptually in translations
        'note': note,
        'created_at': timestamp,
      };

      if (type != 'word') {
        targetRow['style'] = style; // Sentence style is shared
      }

      int tId;
      if (type == 'word') {
        tId = await WordRepository.insert(targetRow, txn: txn);
      } else {
        tId = await SentenceRepository.insert(targetRow, txn: txn);
      }
      if (tags != null) {
        for (var t in tags) {
          await TagRepository.addTag(tId, type, t, txn: txn);
        }
      }
    }

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

    final existing = await db.query(
      table,
      where: 'group_id = ? AND lang_code = ?',
      whereArgs: [groupId, lang],
      limit: 1,
    );

    if (existing.isEmpty) {
      final row = {
        'group_id': groupId,
        'text': text,
        'lang_code': lang,
        'pos': pos,
        'form_type': formType,
        'style': style,
        'root': root,
        'note': note,
        'created_at': DateTime.now().toIso8601String(),
      };
      if (type == 'word') {
        await WordRepository.insert(row, txn: txn);
      } else {
        await SentenceRepository.insert(row, txn: txn);
      }
    }
  }

  /// Phase 106: Relink local temporary ID to server's canonical ID
  static Future<void> relinkGroupId(int oldId, int newId) async {
    if (oldId == newId) return;
    
    final db = await _db;
    await db.transaction((txn) async {
       // 1. Update Entries
       await txn.update('words', {'group_id': newId}, where: 'group_id = ?', whereArgs: [oldId]);
       await txn.update('sentences', {'group_id': newId}, where: 'group_id = ?', whereArgs: [oldId]);
       
       // 2. Update User Library Links
       await txn.update('user_library', {'group_id': newId}, where: 'group_id = ?', whereArgs: [oldId]);
       
       // 3. Update Sync Logs if any (words or sentences have is_synced)
       // Those were already updated in step 1.
    });
    print('[DB] Relinked group_id: $oldId -> $newId');
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

import 'dart:convert';
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
    
    // Determine Group ID
    int gId = groupId ?? DateTime.now().millisecondsSinceEpoch;
    
    if (groupId == null && syncSubject != null && sequenceOrder != null) {
      try {
        final existingPivot = await db.rawQuery('''
          SELECT item_id as group_id FROM item_tags 
          WHERE tag = ? AND item_type = ?
          ORDER BY item_id ASC 
          LIMIT 1 OFFSET ?
        ''', [syncSubject, type, sequenceOrder]);
        
        if (existingPivot.isNotEmpty) {
           final foundId = existingPivot.first['group_id'] as int;
           if (foundId > 0) gId = foundId;
        }
      } catch (e) {
        print('[DB] Pivot Sync Error: $e');
      }
    }

    final timestamp = DateTime.now().toIso8601String();

    // 1. 기존 레코드 유무 확인 및 데이터 준비
    final existing = await db.query(table, where: 'group_id = ?', whereArgs: [gId], limit: 1);
    Map<String, dynamic> translations = {};
    Map<String, dynamic> row;

    if (existing.isNotEmpty) {
      row = Map.from(existing.first);
      translations = jsonDecode(row['data_json'] as String);
    } else {
      row = {
        'group_id': gId,
        'created_at': timestamp,
      };
    }

    // 2. 소스 데이터 병합
    final sourceEntry = {
      'text': text,
      'pos': pos,
      'note': note,
    };
    if (type == 'word') {
      sourceEntry['root'] = root;
      sourceEntry['form_type'] = formType;
    } else {
      sourceEntry['style'] = style;
    }
    translations[lang] = sourceEntry;

    // 3. 타겟 데이터 병합
    if (translation.isNotEmpty && targetLang.isNotEmpty && targetLang != 'auto') {
      final targetEntry = {
        'text': translation,
        'pos': pos,
        'note': note,
      };
      if (type != 'word') {
        targetEntry['style'] = style;
      }
      translations[targetLang] = targetEntry;
    }

    row['data_json'] = jsonEncode(translations);

    // 4. 단일 레코드로 저장 (Upsert)
    if (type == 'word') {
      await WordRepository.insert(row, txn: txn);
    } else {
      await SentenceRepository.insert(row, txn: txn);
    }

    // 5. 태그 저장 (언어별로 구분하여 저장)
    if (tags != null) {
      for (var t in tags) {
        await TagRepository.addTag(gId, type, t, lang, txn: txn);
        if (translation.isNotEmpty) {
           await TagRepository.addTag(gId, type, t, targetLang, txn: txn);
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

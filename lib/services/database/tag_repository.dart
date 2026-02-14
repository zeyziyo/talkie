import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';

class TagRepository {
  static Future<Database> get _db async => await DatabaseHelper.database;

  static Future<void> addTag(int itemId, String itemType, String tag, String langCode, {Transaction? txn}) async {
    final executor = txn ?? await _db;
    await executor.insert('item_tags', {
      'item_id': itemId, // Phase 120: group_id
      'item_type': itemType,
      'tag': tag,
      'lang_code': langCode,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<String>> getTagsForItem(int itemId, String itemType, {String? langCode}) async {
    final db = await _db;
    String where = 'item_id = ? AND item_type = ?';
    List<dynamic> args = [itemId, itemType];
    
    if (langCode != null) {
      where += ' AND lang_code = ?';
      args.add(langCode);
    }
    
    final result = await db.query('item_tags', 
      where: where, 
      whereArgs: args);
    return result.map((e) => e['tag'] as String).toList();
  }

  static Future<List<String>> getAllTags() async {
    final db = await _db;
    final result = await db.rawQuery('SELECT DISTINCT tag FROM item_tags ORDER BY tag ASC');
    return result.map((e) => e['tag'] as String).toList();
  }

  static Future<List<String>> getAllTagsForLanguage(String langCode) async {
    final db = await _db;
    final result = await db.rawQuery('SELECT DISTINCT tag FROM item_tags WHERE lang_code = ? OR lang_code = "auto"', [langCode]);
    return result.map((e) => e['tag'] as String).toList();
  }

  static Future<List<Map<String, dynamic>>> getItemsByTag(String tag, {String? targetLang}) async {
    final db = await _db;
    // Phase 120: JSON 통합 스키마에 맞춘 간결한 쿼리
    return await db.rawQuery('''
      SELECT *, 'words' as origin_table
      FROM words
      WHERE group_id IN (SELECT item_id FROM item_tags WHERE tag = ? AND item_type = 'word')
      UNION ALL
      SELECT *, 'sentences' as origin_table
      FROM sentences
      WHERE group_id IN (SELECT item_id FROM item_tags WHERE tag = ? AND item_type = 'sentence')
      ORDER BY created_at ASC
    ''', [tag, tag]);
  }

  static Future<void> renameTags(String oldTag, String newTag, {Transaction? txn}) async {
    final executor = txn ?? await _db;
    await executor.update(
      'item_tags',
      {'tag': newTag},
      where: 'tag = ?',
      whereArgs: [oldTag],
    );
  }
}

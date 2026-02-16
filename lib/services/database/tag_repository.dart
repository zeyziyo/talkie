import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';

class TagRepository {
  static Future<Database> get _db async => await DatabaseHelper.database;

  static Future<void> addTag(int itemId, String itemType, String tag, String langCode, {Transaction? txn}) async {
    final executor = txn ?? await _db;
    final metaTable = itemType == 'word' ? 'words_meta' : 'sentences_meta';
    
    // 1. Get existing tags
    final List<Map<String, dynamic>> result = await executor.query(
      metaTable,
      columns: ['tags'],
      where: 'group_id = ?',
      whereArgs: [itemId],
    );

    if (result.isEmpty) return;

    String currentTags = result.first['tags'] as String? ?? '';
    List<String> tagList = currentTags.split(',')
        .map((t) => t.trim())
        .where((t) => t.isNotEmpty)
        .toList();

    // 2. Add if not exists
    final trimmedTag = tag.trim();
    if (trimmedTag.isNotEmpty && !tagList.contains(trimmedTag)) {
      tagList.add(trimmedTag);
      await executor.update(
        metaTable,
        {'tags': tagList.join(',')},
        where: 'group_id = ?',
        whereArgs: [itemId],
      );
    }
  }

  static Future<List<String>> getTagsForItem(int itemId, String itemType, {String? langCode}) async {
    final db = await _db;
    final metaTable = itemType == 'word' ? 'words_meta' : 'sentences_meta';
    
    final result = await db.query(
      metaTable,
      columns: ['tags'],
      where: 'group_id = ?',
      whereArgs: [itemId],
    );

    if (result.isEmpty) return [];

    String tagsStr = result.first['tags'] as String? ?? '';
    return tagsStr.split(',').where((t) => t.isNotEmpty).toList();
  }

  static Future<List<String>> getAllTags() async {
    final db = await _db;
    final Set<String> allTags = {};

    // Get from words
    final wordRows = await db.query('words_meta', columns: ['tags']);
    for (var row in wordRows) {
      final t = row['tags'] as String?;
      if (t != null && t.isNotEmpty) {
        allTags.addAll(t.split(',').where((s) => s.isNotEmpty));
      }
    }

    // Get from sentences
    final sentenceRows = await db.query('sentences_meta', columns: ['tags']);
    for (var row in sentenceRows) {
      final t = row['tags'] as String?;
      if (t != null && t.isNotEmpty) {
        allTags.addAll(t.split(',').where((s) => s.isNotEmpty));
      }
    }

    final sorted = allTags.toList()..sort();
    return sorted;
  }

  static Future<List<String>> getAllTagsForLanguage(String langCode) async {
    // Tags in meta are not strictly language-bound anymore (shared per item).
    // We just return all tags effectively, or filter by source/target lang of the item?
    // User requested remove item_tags. 'lang_code' column in item_tags is gone.
    // We will just return all tags for now, or maybe filter by item's language?
    // For simplicity and correctness with new schema, we return all tags.
    return getAllTags();
  }

  static Future<List<Map<String, dynamic>>> getItemsByTag(String tag, {String? targetLang}) async {
    final db = await _db;
    final searchPattern = '%,$tag,%'; // Match specific tag in comma-csv

    return await db.rawQuery('''
      SELECT w.*, wm.caption, 'words' as origin_table, wm.notebook_title
      FROM words w
      JOIN words_meta wm ON w.group_id = wm.group_id
      WHERE ',' || wm.tags || ',' LIKE ?
      UNION ALL
      SELECT s.*, sm.caption, 'sentences' as origin_table, sm.notebook_title
      FROM sentences s
      JOIN sentences_meta sm ON s.group_id = sm.group_id
      WHERE ',' || sm.tags || ',' LIKE ?
      ORDER BY created_at ASC
    ''', [searchPattern, searchPattern]);
  }

  static Future<void> renameTags(String oldTag, String newTag, {Transaction? txn}) async {
    final executor = txn ?? await _db;
    // Reads all metas with oldTag, modifies, updates.
    // Safe approach.
    
    // 1. Words
    final words = await executor.rawQuery("SELECT group_id, tags FROM words_meta WHERE ',' || tags || ',' LIKE ?", ['%,$oldTag,%']);
    for (var row in words) {
      final id = row['group_id'] as int;
      final tagsStr = row['tags'] as String;
      final tags = tagsStr.split(',').map((t) => t.trim()).where((t) => t.isNotEmpty).toList();
      final newTags = tags.map((t) => t == oldTag ? newTag.trim() : t).join(',');
      await executor.update('words_meta', {'tags': newTags}, where: 'group_id = ?', whereArgs: [id]);
    }

    // 2. Sentences
    final sentences = await executor.rawQuery("SELECT group_id, tags FROM sentences_meta WHERE ',' || tags || ',' LIKE ?", ['%,$oldTag,%']);
    for (var row in sentences) {
      final id = row['group_id'] as int;
      final tagsStr = row['tags'] as String;
      final tags = tagsStr.split(',').map((t) => t.trim()).where((t) => t.isNotEmpty).toList();
      final newTags = tags.map((t) => t == oldTag ? newTag.trim() : t).join(',');
      await executor.update('sentences_meta', {'tags': newTags}, where: 'group_id = ?', whereArgs: [id]);
    }
  }
}

import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';

class MaterialRepository {
  static Future<Database> get _db async => await DatabaseHelper.database;

  static Future<int> create({
    required String subject,
    required String source,
    required String sourceLanguage,
    required String targetLanguage,
    String? fileName,
    required String createdAt,
    Transaction? txn,
  }) async {
    final db = txn ?? await _db;
    
    // Check for duplicates
    final existing = await db.query(
      'study_materials',
      where: 'subject = ? AND source_language = ? AND target_language = ?',
      whereArgs: [subject, sourceLanguage, targetLanguage],
      limit: 1,
    );
    
    if (existing.isNotEmpty) {
      final id = existing.first['id'] as int;
      await db.update(
        'study_materials',
        {'imported_at': DateTime.now().toIso8601String()},
        where: 'id = ?',
        whereArgs: [id],
      );
      return id;
    }

    return await db.insert('study_materials', {
      'subject': subject,
      'source': source,
      'source_language': sourceLanguage,
      'target_language': targetLanguage,
      'file_name': fileName,
      'created_at': createdAt,
      'imported_at': DateTime.now().toIso8601String(),
    });
  }

  static Future<Map<String, dynamic>?> getById(int id) async {
    final db = await _db;
    final result = await db.query('study_materials', where: 'id = ?', whereArgs: [id]);
    return result.isNotEmpty ? result.first : null;
  }

  static Future<List<Map<String, dynamic>>> getAll() async {
    final db = await _db;
    // Enhanced query with counts
    return await db.rawQuery('''
      SELECT m.*, 
        COALESCE((SELECT COUNT(DISTINCT it.item_id) FROM item_tags it 
         JOIN words w ON it.item_id = w.group_id AND it.item_type = 'word'
         WHERE it.tag = m.subject), 0) as word_count,
        COALESCE((SELECT COUNT(DISTINCT it.item_id) FROM item_tags it
         JOIN sentences s ON it.item_id = s.group_id AND it.item_type = 'sentence'
         WHERE it.tag = m.subject), 0) as sentence_count
      FROM study_materials m 
      ORDER BY m.imported_at DESC
    ''');
  }

  static Future<bool> existsBySubject(String subject, String sourceLanguage, String targetLanguage) async {
    final db = await _db;
    final res = await db.query(
      'study_materials',
      where: 'subject = ? AND source_language = ? AND target_language = ?',
      whereArgs: [subject, sourceLanguage, targetLanguage],
      limit: 1,
    );
    return res.isNotEmpty;
  }

  static Future<void> delete(int id) async {
    final db = await _db;
    await db.transaction((txn) async {
      // 1. Get Subject to identify items
      final material = await txn.query('study_materials', columns: ['subject'], where: 'id = ?', whereArgs: [id], limit: 1);
      if (material.isEmpty) return;
      
      final subject = material.first['subject'] as String;

      // 2. Delete Words (Cascade deletes meta)
      // Use efficient subquery delete
      await txn.rawDelete('''
        DELETE FROM words 
        WHERE group_id IN (SELECT group_id FROM words_meta WHERE notebook_title = ?)
      ''', [subject]);

      // 3. Delete Sentences (Cascade deletes meta)
      await txn.rawDelete('''
        DELETE FROM sentences 
        WHERE group_id IN (SELECT group_id FROM sentences_meta WHERE notebook_title = ?)
      ''', [subject]);

      // 4. Delete Material
      await txn.delete('study_materials', where: 'id = ?', whereArgs: [id]);
    });
  }
}

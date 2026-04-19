import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';

class ScannedRepository {
  static Future<Database> get _db async => await DatabaseHelper.database;

  static Future<int> insert(Map<String, dynamic> data, {Transaction? txn}) async {
    final executor = txn ?? await _db;
    
    final int groupId = data['group_id'] ?? DateTime.now().millisecondsSinceEpoch;
    final String? dataJson = data['data_json'];
    
    // 1. Insert Content (scanned_records)
    if (dataJson != null) {
      await executor.insert('scanned_records', {
        'group_id': groupId,
        'data_json': dataJson,
        'created_at': data['created_at'] ?? DateTime.now().toIso8601String(),
      }, conflictAlgorithm: ConflictAlgorithm.replace);
    }
    
    // 2. Insert or Update Meta (scanned_meta)
    final String notebookTitle = data['notebook_title'] ?? 'Scanned History';
    
    final existingMeta = await executor.query('scanned_meta', 
      where: 'group_id = ? AND notebook_title = ?', 
      whereArgs: [groupId, notebookTitle]
    );
    
    Map<String, dynamic> metaValues = {
      'group_id': groupId,
      'notebook_title': notebookTitle,
      'type': data['type'],
      'source_lang': data['source_lang'] ?? 'auto',
      'target_lang': data['target_lang'] ?? 'auto',
      'tags': data['tags'],
      'is_memorized': (data['is_memorized'] == true || data['is_memorized'] == 1) ? 1 : 0,
      'is_synced': (data['is_synced'] == true || data['is_synced'] == 1) ? 1 : 0,
      'review_count': data['review_count'] ?? 0,
      'last_reviewed': data['last_reviewed'],
      'created_at': data['created_at_meta'] ?? data['created_at'] ?? DateTime.now().toIso8601String(),
    };

    if (existingMeta.isNotEmpty) {
      final old = existingMeta.first;
      metaValues['is_memorized'] = old['is_memorized'];
      metaValues['review_count'] = old['review_count'];
      metaValues['last_reviewed'] = old['last_reviewed'];
      metaValues['is_synced'] = old['is_synced'];
      
      return await executor.update('scanned_meta', metaValues, 
        where: 'group_id = ? AND notebook_title = ?', 
        whereArgs: [groupId, notebookTitle]
      );
    } else {
      return await executor.insert('scanned_meta', metaValues);
    }
  }

  static Future<List<Map<String, dynamic>>> getScannedRecords() async {
    final db = await _db;
    final rows = await db.rawQuery('''
      SELECT r.group_id, r.data_json, r.created_at,
             m.notebook_title, m.type, m.source_lang, m.target_lang, m.tags,
             m.is_memorized, m.review_count, m.last_reviewed
      FROM scanned_records r
      JOIN scanned_meta m ON r.group_id = m.group_id
      ORDER BY r.created_at DESC
    ''');

    return rows.map((row) {
      final Map<String, dynamic> data = jsonDecode(row['data_json'] as String);
      final firstEntry = data.values.first as Map<String, dynamic>;
      return <String, dynamic>{
        ...row,
        ...firstEntry,
      };
    }).toList();
  }

  static Future<void> delete(int groupId) async {
    final db = await _db;
    await db.transaction((txn) async {
      await txn.delete('scanned_records', where: 'group_id = ?', whereArgs: [groupId]);
      await txn.delete('scanned_meta', where: 'group_id = ?', whereArgs: [groupId]);
    });
  }
}

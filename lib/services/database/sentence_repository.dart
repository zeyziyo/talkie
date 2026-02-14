import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';

class SentenceRepository {
  static Future<Database> get _db async => await DatabaseHelper.database;

  static Future<int> insert(Map<String, dynamic> data, {Transaction? txn}) async {
    final executor = txn ?? await _db;
    // Phase 120: group_id가 PK이므로 replace 전략 사용
    return await executor.insert('sentences', data, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> getSentencesByGroupId(int groupId) async {
    final db = await _db;
    final results = await db.query('sentences', where: 'group_id = ?', whereArgs: [groupId], limit: 1);
    if (results.isEmpty) return [];
    
    final row = results.first;
    final Map<String, dynamic> data = jsonDecode(row['data_json'] as String);
    
    return data.entries.map((e) {
      return {
        ...row,
        'lang_code': e.key,
        ...e.value as Map<String, dynamic>,
      };
    }).toList();
  }

  static Future<List<Map<String, dynamic>>> search(String query, {int limit = 10}) async {
    if (query.isEmpty) return [];
    final db = await _db;
    // Phase 120: JSON 내부 텍스트 검색
    return await db.rawQuery('''
      SELECT * FROM sentences 
      WHERE data_json LIKE ? 
      ORDER BY created_at DESC 
      LIMIT ?
    ''', ['%$query%', limit]);
  }

  static Future<List<Map<String, dynamic>>> searchAutocompleteText(String langCode, String text) async {
    final db = await _db;
    final results = await db.rawQuery('''
      SELECT * FROM sentences 
      WHERE json_extract(data_json, '\$.' || ? || '.text') LIKE ?
      LIMIT 10
    ''', [langCode, '$text%']);
    
    return results.map((row) {
      final data = jsonDecode(row['data_json'] as String);
      final langData = data[langCode] ?? {};
      return {
        ...row,
        'text': langData['text'],
        'pos': langData['pos'],
        'style': langData['style'],
        'note': langData['note'],
      };
    }).toList();
  }

  static Future<void> updateMemorizedStatus(int groupId, bool status) async {
    final db = await _db;
    await db.update('sentences', {'is_memorized': status ? 1 : 0}, where: 'group_id = ?', whereArgs: [groupId]);
  }

  static Future<Map<String, dynamic>?> getTranslationIfExists(int groupId, String targetLang, {String? note}) async {
    final db = await _db;
    final results = await db.query('sentences', where: 'group_id = ?', whereArgs: [groupId], limit: 1);
    if (results.isEmpty) return null;
    
    final row = results.first;
    final Map<String, dynamic> data = jsonDecode(row['data_json'] as String);
    if (!data.containsKey(targetLang)) return null;
    
    final langData = data[targetLang] as Map<String, dynamic>;
    if (note != null && langData['note'] != note) return null;
    
    return {
      ...row,
      'lang_code': targetLang,
      ...langData,
    };
  }
}

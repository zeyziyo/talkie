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
    final results = await db.rawQuery('''
      SELECT * FROM sentences 
      WHERE data_json LIKE ? 
      ORDER BY created_at DESC 
      LIMIT ?
    ''', ['%$query%', limit]);

    // Phase 124: Flattening for UI compatibility
    return results.map((row) {
      final jsonStr = row['data_json'] as String?;
      if (jsonStr == null) return row; 

      final data = jsonDecode(jsonStr) as Map<String, dynamic>;
      
      Map<String, dynamic>? bestMatch;
      String bestLang = 'en'; 
      
      for (var entry in data.entries) {
        final content = entry.value as Map<String, dynamic>;
        final text = content['text'] as String?;
        if (text != null && text.toLowerCase().contains(query.toLowerCase())) {
          bestMatch = content;
          bestLang = entry.key;
          break;
        }
      }
      
      if (bestMatch == null && data.isNotEmpty) {
         final first = data.entries.first;
         bestMatch = first.value as Map<String, dynamic>;
         bestLang = first.key;
      }
      
      return {
        ...row,
        'lang_code': bestLang,
        'text': bestMatch?['text'] ?? '',
        'pos': bestMatch?['pos'],
        'style': bestMatch?['style'],
        'note': bestMatch?['note'],
      };
    }).toList();
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

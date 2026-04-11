import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';

class SentenceRepository {
  static Future<Database> get _db async => await DatabaseHelper.database;

  static Future<int> insert(Map<String, dynamic> data, {Transaction? txn}) async {
    final executor = txn ?? await _db;
    
    // Phase 129: Split data into Content and Meta
    final int groupId = data['group_id'] ?? DateTime.now().millisecondsSinceEpoch;
    final String? dataJson = data['data_json'];
    
    // 1. Insert Content
    if (dataJson != null) {
      await executor.insert('sentences', {
        'group_id': groupId,
        'data_json': dataJson,
        'created_at': data['created_at'] ?? DateTime.now().toIso8601String(),
      }, conflictAlgorithm: ConflictAlgorithm.replace);
    }
    
    // 2. Insert or Update Meta (Preserving User Stats)
    final String notebookTitle = data['notebook_title'] ?? 'My Sentencebook';
    final existingMeta = await executor.query('sentences_meta', 
      where: 'group_id = ? AND notebook_title = ?', 
      whereArgs: [groupId, notebookTitle]
    );
    
    Map<String, dynamic> metaValues = {
      'group_id': groupId,
      'notebook_title': data['notebook_title'] ?? 'My Sentencebook',
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
      if (old.containsKey('is_memorized')) {
          metaValues['is_memorized'] = old['is_memorized'];
          metaValues['review_count'] = old['review_count'];
          metaValues['last_reviewed'] = old['last_reviewed'];
          metaValues['is_synced'] = old['is_synced'];
      }
      
      // Update existing meta
      return await executor.update('sentences_meta', metaValues, 
        where: 'group_id = ? AND notebook_title = ?', 
        whereArgs: [groupId, notebookTitle]
      );
    } else {
      // Insert new meta
      return await executor.insert('sentences_meta', metaValues);
    }
  }

  static Future<List<Map<String, dynamic>>> getSentencesByGroupId(int groupId) async {
    final db = await _db;
    // Phase 129: JOIN sentences and sentences_meta
    final results = await db.rawQuery('''
      SELECT s.group_id, s.data_json, s.created_at,
             sm.notebook_title, sm.source_lang, sm.target_lang, sm.tags,
             sm.is_memorized, sm.review_count, sm.last_reviewed, sm.id as meta_id
      FROM sentences s
      JOIN sentences_meta sm ON s.group_id = sm.group_id
      WHERE s.group_id = ?
      LIMIT 1
    ''', [groupId]);

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
    // v115: Remove json_each/json_extract for 100% Android compatibility.
    final results = await db.rawQuery('''
      SELECT s.group_id, s.data_json, s.created_at,
             sm.notebook_title, sm.source_lang, sm.target_lang, sm.tags,
             sm.is_memorized, sm.review_count, sm.last_reviewed
      FROM sentences s
      JOIN sentences_meta sm ON s.group_id = sm.group_id
      WHERE s.data_json LIKE ?
      ORDER BY s.created_at DESC 
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
        'note': bestMatch?['note'],
      };
    }).toList();
  }

  static Future<List<Map<String, dynamic>>> searchAutocompleteText(String langCode, String text) async {
    final db = await _db;
    // v115: Standard SQL for Autocomplete
    final results = await db.rawQuery('''
      SELECT s.group_id, s.data_json, s.created_at,
             sm.notebook_title, sm.source_lang, sm.target_lang, sm.tags,
             sm.is_memorized, sm.review_count, sm.last_reviewed
      FROM sentences s
      JOIN sentences_meta sm ON s.group_id = sm.group_id
      WHERE s.data_json LIKE ?
      LIMIT 10
    ''', ['%$text%']);
    
    return results.map((row) {
      final data = jsonDecode(row['data_json'] as String);
      final langData = data[langCode] ?? {};
      return {
        ...row,
        'text': langData['text'],
        'note': langData['note'],
      };
    }).toList();
  }

  static Future<void> updateMemorizedStatus(int groupId, bool status) async {
    final db = await _db;
    // Update sentences_meta
    await db.update('sentences_meta', {'is_memorized': status ? 1 : 0}, where: 'group_id = ?', whereArgs: [groupId]);
  }

  static Future<Map<String, dynamic>?> getTranslationIfExists(int groupId, String targetLang, {String? note}) async {
    final db = await _db;
    final results = await db.rawQuery('''
      SELECT s.group_id, s.data_json, s.created_at,
             sm.notebook_title, sm.source_lang, sm.target_lang, sm.tags,
             sm.is_memorized, sm.review_count, sm.last_reviewed
      FROM sentences s
      JOIN sentences_meta sm ON s.group_id = sm.group_id
      WHERE s.group_id = ?
      LIMIT 1
    ''', [groupId]);

    if (results.isEmpty) return null;
    
    final row = results.first;
    final Map<String, dynamic> data = jsonDecode(row['data_json'] as String);
    if (!data.containsKey(targetLang)) return null;
    
    final langData = data[targetLang] as Map<String, dynamic>;
    
    // Check shared note if provided
    final String? currentNote = langData['note'];
    if (note != null && currentNote != note) return null;
    
    return {
      ...row,
      'lang_code': targetLang,
      ...langData,
    };
  }
  static Future<void> updateReviewStats(int groupId, int increment, String lastReviewed) async {
    final db = await _db;
    // Update sentences_meta
    await db.rawUpdate('''
      UPDATE sentences_meta 
      SET review_count = review_count + ?, last_reviewed = ? 
      WHERE group_id = ?
    ''', [increment, lastReviewed, groupId]);
  }
}

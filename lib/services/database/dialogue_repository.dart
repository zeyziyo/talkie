import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';

class DialogueRepository {
  static Future<Database> get _db async => await DatabaseHelper.database;

  static Future<void> insertGroup({
    required String id,
    String? userId,
    String? title,
    String? persona,
    String? location,
    String? note,
    required String createdAt,
    Transaction? txn,
  }) async {
    final executor = txn ?? await _db;
    await executor.insert('dialogue_groups', {
      'id': id,
      'user_id': userId,
      'title': title,
      'persona': persona,
      'location': location,
      'note': note,
      'created_at': createdAt,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<void> deleteGroup(String id) async {
    final db = await _db;
    await db.transaction((txn) async {
      final group = await txn.query('dialogue_groups', columns: ['title'], where: 'id = ?', whereArgs: [id], limit: 1);
      if (group.isNotEmpty) {
        final title = group.first['title'] as String?;
        if (title != null) {
          await txn.delete('item_tags', where: 'tag = ?', whereArgs: [title]);
        }
      }
      await txn.delete('chat_messages', where: 'dialogue_id = ?', whereArgs: [id]);
      await txn.delete('dialogue_participants', where: 'dialogue_id = ?', whereArgs: [id]);
      await txn.delete('dialogue_groups', where: 'id = ?', whereArgs: [id]);
    });
  }

  static Future<List<Map<String, dynamic>>> getGroupsWithCounts({String? userId}) async {
    final db = await _db;
    String whereClause = '';
    List<dynamic> whereArgs = [];
    
    if (userId != null && userId.isNotEmpty) {
      whereClause = 'WHERE user_id = ? OR user_id IS NULL OR user_id = ?';
      whereArgs = [userId, 'anonymous'];
    }

    return await db.rawQuery('''
      SELECT d.*,
        (SELECT COUNT(*) FROM chat_messages m WHERE m.dialogue_id = d.id AND LOWER(m.speaker) = 'user') as sentence_count,
        (SELECT COUNT(*) FROM chat_messages m WHERE m.dialogue_id = d.id AND LOWER(m.speaker) != 'user') as ai_count
      FROM dialogue_groups d
      $whereClause
      ORDER BY d.created_at DESC
    ''', whereArgs);
  }

  static Future<List<Map<String, dynamic>>> getGroups({String? userId}) async {
    final db = await _db;
    if (userId != null && userId.isNotEmpty) {
      return await db.query(
        'dialogue_groups', 
        where: 'user_id = ? OR user_id IS NULL OR user_id = ?',
        whereArgs: [userId, 'anonymous'],
        orderBy: 'created_at DESC'
      );
    }
    return await db.query('dialogue_groups', orderBy: 'created_at DESC');
  }

  static Future<void> insertMessage(Map<String, dynamic> data, {Transaction? txn}) async {
    final executor = txn ?? await _db;
    await executor.insert('chat_messages', data);
  }

  static Future<int> getDialogueCount() async {
    final db = await _db;
    final result = await db.rawQuery('SELECT COUNT(*) as count FROM dialogue_groups');
    return Sqflite.firstIntValue(result) ?? 0;
  }

  static Future<List<Map<String, dynamic>>> getParticipants(String dialogueId) async {
    final db = await _db;
    return await db.query('dialogue_participants', where: 'dialogue_id = ?', whereArgs: [dialogueId]);
  }

  static Future<void> insertParticipant(Map<String, dynamic> data) async {
    final db = await _db;
    await db.insert('dialogue_participants', data, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<void> updateParticipant(String id, Map<String, dynamic> data) async {
    final db = await _db;
    await db.update('dialogue_participants', data, where: 'id = ?', whereArgs: [id]);
  }

  static Future<List<Map<String, dynamic>>> getRecordsByDialogueId(
    String dialogueId, {
    String? sourceLang,
    String? targetLang,
  }) async {
    final db = await _db;
    
    final List<Map<String, dynamic>> messages = await db.rawQuery('''
      SELECT m.*, p.gender, p.lang_code as participant_lang, p.name as p_name
      FROM chat_messages m
      LEFT JOIN dialogue_participants p ON m.participant_id = p.id
      WHERE m.dialogue_id = ?
      ORDER BY m.sequence_order ASC
    ''', [dialogueId]);
    
    List<Map<String, dynamic>> results = [];
    
    for (var msg in messages) {
      final groupId = msg['group_id'] as int;
      
      // Get all sentences in this group (including words/sentences)
      final words = await db.query('words', where: 'group_id = ?', whereArgs: [groupId]);
      final sents = await db.query('sentences', where: 'group_id = ?', whereArgs: [groupId]);
      final allItems = [...words, ...sents];
      
      if (allItems.isNotEmpty) {
        Map<String, dynamic>? source;
        Map<String, dynamic>? target;

        // Try exact match with provided languages
        if (sourceLang != null) {
          source = allItems.where((s) => (s['lang_code'] as String).startsWith(sourceLang.substring(0, 2))).firstOrNull;
        }
        if (targetLang != null) {
          target = allItems.where((s) => (s['lang_code'] as String).startsWith(targetLang.substring(0, 2))).firstOrNull;
        }

        // Fallbacks
        source ??= allItems.first;
        if (allItems.length > 1) {
           target ??= allItems.firstWhere((s) => s['id'] != source!['id'], orElse: () => allItems[1]);
        } else {
           target ??= source;
        }

        results.add({
          'id': msg['id'],
          'group_id': groupId,
          'source_text': source['text'] ?? '',
          'target_text': target['text'] ?? '',
          'source_lang': source['lang_code'] ?? 'en',
          'target_lang': target['lang_code'] ?? 'en',
          'speaker': msg['speaker'] ?? msg['p_name'] ?? 'Unknown',
          'participant_id': msg['participant_id'],
          'gender': msg['gender'], 
          'participant_lang': msg['participant_lang'], 
          'sequence_order': msg['sequence_order'],
          'created_at': msg['created_at'],
          'note': source['note'] ?? target['note'],
          'is_memorized': (source['is_memorized'] == 1 || target['is_memorized'] == 1),
        });
      }
    }
    return results;
  }
}

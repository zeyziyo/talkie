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
        // Phase 129: item_tags removed. No action needed.
      }
      // Phase 129: Delete from new dialogues table
      await txn.delete('dialogues', where: 'session_id = ?', whereArgs: [id]);
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

    // Phase 129: Count from dialogues table
    return await db.rawQuery('''
      SELECT d.*,
        (SELECT COUNT(*) FROM dialogues m WHERE m.session_id = d.id AND LOWER(m.speaker) = 'user') as sentence_count,
        (SELECT COUNT(*) FROM dialogues m WHERE m.session_id = d.id AND LOWER(m.speaker) != 'user') as ai_count
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
    // Phase 129: Insert into dialogues table
    // Mapping: dialogue_id -> session_id, source_text -> content, target_text -> translation
    
    final row = {
      'session_id': data['dialogue_id'] ?? data['session_id'],
      'speaker': data['speaker'],
      'content': data['source_text'] ?? data['content'] ?? '',
      'translation': data['target_text'] ?? data['translation'] ?? '',
      'created_at': data['created_at'] ?? DateTime.now().toIso8601String(),
    };
    
    await executor.insert('dialogues', row);
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
    
    // Phase 129: Query from 'dialogues' table
    // No participants join needed for basic chat display unless we really need participant metadata inline.
    // Assuming speaker name is enough or we fetch participants separately.
    // However, existing code might expect 'participant_id' etc.
    // The new table `dialogues` does NOT have `participant_id` linked directly unless we added it?
    // In migration: CREATE TABLE dialogues (id, session_id, speaker, content, translation, created_at)
    // So 'participant_id' is lost in direct message table. Speaker name is preserved.
    
    final List<Map<String, dynamic>> messages = await db.rawQuery('''
      SELECT m.* 
      FROM dialogues m
      WHERE m.session_id = ?
      ORDER BY m.id ASC
    ''', [dialogueId]);
    
    List<Map<String, dynamic>> results = [];
    
    for (var msg in messages) {
      results.add({
        'id': msg['id'],
        'group_id': 0, // No group_id for dialogues
        'source_text': msg['content'] ?? '',
        'target_text': msg['translation'] ?? '',
        'source_lang': sourceLang ?? 'auto', // Dialogues might not store per-msg lang anymore
        'target_lang': targetLang ?? 'auto',
        'speaker': msg['speaker'] ?? 'Unknown',
        // 'participant_id': ... deprecated or lost
        'sequence_order': msg['id'], // Use ID as sequence
        'created_at': msg['created_at'],
        'note': null, 
        'is_memorized': false,
      });
    }
    return results;
  }
}

import 'package:sqflite/sqflite.dart';
import '../../models/chat_participant.dart';
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
    
    // Phase 130 Fix: Avoid ConflictAlgorithm.replace because it triggers ON DELETE CASCADE
    // causing all messages in 'dialogues' table to be deleted when updating a group.
    final existing = await executor.query(
      'dialogue_groups', 
      columns: ['id'], 
      where: 'id = ?', 
      whereArgs: [id],
      limit: 1
    );

    if (existing.isNotEmpty) {
      await executor.update('dialogue_groups', {
        'user_id': userId,
        'title': title,
        'persona': persona,
        'location': location,
        'note': note,
        // created_at should typically NOT be updated, but if needed:
        // 'created_at': createdAt, 
      }, where: 'id = ?', whereArgs: [id]);
    } else {
      await executor.insert('dialogue_groups', {
        'id': id,
        'user_id': userId,
        'title': title,
        'persona': persona,
        'location': location,
        'note': note,
        'created_at': createdAt,
      });
    }
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
    // Phase 1 Step 1: Join Helper
    return await db.rawQuery('''
      SELECT p.* 
      FROM participants p
      INNER JOIN dialogue_participants dp ON p.id = dp.participant_id
      WHERE dp.dialogue_id = ?
    ''', [dialogueId]);
  }

  static Future<void> insertParticipant(Map<String, dynamic> data) async {
    final db = await _db;
    await db.transaction((txn) async {
      // 1. Prepare Master Participant Data
      // data might come in as old flat format {id, dialogue_id, name...}
      // We need to extract Master data.
      
      final String id = data['id'] ?? '${data['role']}_${data['name'].hashCode}'; // Fallback generation
      final String name = data['name'];
      final String role = data['role'];
      
      // Upsert into participants (Master)
      // SQLite REPLACE works as Upsert here
      await txn.insert('participants', {
        'id': id,
        'name': name,
        'role': role,
        'gender': data['gender'],
        'lang_code': data['lang_code'],
        'created_at': DateTime.now().toIso8601String(),
      }, conflictAlgorithm: ConflictAlgorithm.replace);

      // 2. Insert Link if dialogue_id is present
      if (data.containsKey('dialogue_id')) {
        await txn.insert('dialogue_participants', {
          'dialogue_id': data['dialogue_id'],
          'participant_id': id,
          'joined_at': DateTime.now().toIso8601String(),
        }, conflictAlgorithm: ConflictAlgorithm.ignore);
      }
    });
  }

  static Future<void> updateParticipant(String id, Map<String, dynamic> data) async {
    final db = await _db;
    // Logic change: updating a participant (e.g. name change) updates the Master record.
    // This affects ALL dialogues they are in, which is the intended behavior of Normalization.
    
    // Filter out link-table specific fields if any
    final masterData = Map<String, dynamic>.from(data);
    masterData.remove('dialogue_id');
    masterData.remove('joined_at');
    
    await db.update('participants', masterData, where: 'id = ?', whereArgs: [id]);
  }

  static Future<List<Map<String, dynamic>>> getRecordsByDialogueId(
    String dialogueId, {
    String? sourceLang,
    String? targetLang,
  }) async {
    final db = await _db;
    
    // Phase 137 Fix: Return ALL messages for the dialogue, regardless of speaker.
    // The previous implementation might have implicitly filtered or joined incorrectly.
    // We strictly select by session_id (dialogue_id).
    return await db.query( 
      'dialogues', 
      columns: ['*'], // Select all columns: session_id, speaker, content, translation, created_at
      where: 'session_id = ?', 
      whereArgs: [dialogueId],
      orderBy: 'created_at ASC, rowid ASC' // Ensure proper chronological order
    );
  }
  /// Phase 4: Get all unique participants for management UI
  static Future<List<ChatParticipant>> getAllUniqueParticipants() async {
    final db = await _db;
    final List<Map<String, dynamic>> maps = await db.query('participants');
    return List.generate(maps.length, (i) {
      return ChatParticipant(
        id: maps[i]['id'],
        dialogueId: '', // Global list doesn't need dialogue context here
        name: maps[i]['name'],
        role: maps[i]['role'],
        gender: maps[i]['gender'] ?? 'female',
        langCode: maps[i]['lang_code'] ?? 'en-US',
      );
    });
  }

  static Future<void> deleteParticipant(String id) async {
    final db = await _db;
    await db.delete('participants', where: 'id = ?', whereArgs: [id]);
    // Also delete links? Or keep history? 
    // If we delete from master, we should probably delete links or set to null?
    // Foreign key constraint might handle it or we leave it.
    // For now, let's just delete the master record.
  }
}

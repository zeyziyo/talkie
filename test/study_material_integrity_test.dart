import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:convert';

// Mock DataTransferService relevant logic
Future<void> simulateImport(Database db, String subject, Map<String, dynamic> data) async {
  await db.transaction((txn) async {
    // 1. Insert Study Material (Mimics MaterialRepository.create)
    await txn.insert('study_materials', {
      'subject': subject,
      'source': 'Test Source',
      'source_language': 'en',
      'target_language': 'ko',
      'file_name': 'test.json',
      'created_at': DateTime.now().toIso8601String(),
      'imported_at': DateTime.now().toIso8601String(),
    });

    // 2. Insert Entries (Mimics DataTransferService Loop)
    final entries = data['entries'] as List;
    final batch = txn.batch();
    
    for (var i = 0; i < entries.length; i++) {
      final entry = entries[i];
      final gId = i + 1; // Simple ID
      final type = entry['type'] ?? 'word';
      final table = type == 'word' ? 'words' : 'sentences';
      
      batch.insert(table, {
        'group_id': gId,
        'data_json': jsonEncode({'text': entry['text']}), // Reduced schema v17/18
        'created_at': DateTime.now().toIso8601String(),
      });

      // Insert Tags
      final tags = [subject, ...(entry['tags'] as List? ?? [])];
      for (var t in tags) {
        batch.insert('item_tags', {
          'item_id': gId,
          'item_type': type,
          'tag': t,
          'lang_code': 'en',
        });
      }
    }
    await batch.commit(noResult: true);
  });
}

void main() {
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  test('Study Material Import & Query Integrity Test', () async {
    final db = await openDatabase(inMemoryDatabasePath, version: 1, onCreate: (db, version) async {
      // Create Schema (Mimics DatabaseHelper v18)
      await db.execute('CREATE TABLE words (group_id INTEGER PRIMARY KEY, data_json TEXT, created_at TEXT)');
      await db.execute('CREATE TABLE sentences (group_id INTEGER PRIMARY KEY, data_json TEXT, created_at TEXT)');
      
      // item_tags PK: item_id, item_type, tag, lang_code
      await db.execute('''
        CREATE TABLE item_tags (
          item_id INTEGER NOT NULL,
          item_type TEXT NOT NULL,
          tag TEXT NOT NULL,
          lang_code TEXT NOT NULL DEFAULT 'auto',
          PRIMARY KEY (item_id, item_type, tag, lang_code)
        )
      ''');
      
      await db.execute('''
        CREATE TABLE study_materials (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          subject TEXT NOT NULL,
          source TEXT,
          source_language TEXT,
          target_language TEXT,
          file_name TEXT,
          created_at TEXT NOT NULL,
          imported_at TEXT NOT NULL
        )
      ''');
    });

    // 1. Simulate Import "Noun 1"
    const subject = "Noun 1";
    final data = {
      'entries': [
        {'text': 'Apple', 'type': 'word', 'tags': ['Fruit']},
        {'text': 'Banana', 'type': 'word'},
      ]
    };
    
    await simulateImport(db, subject, data);

    // 2. verify data existence
    final materials = await db.query('study_materials');
    expect(materials.length, 1);
    expect(materials.first['subject'], subject);

    final tags = await db.query('item_tags');
    expect(tags.length, 3); // Apple: [Noun 1, Fruit], Banana: [Noun 1]
    
    // 3. Test MaterialRepository.getAll Query
    final result = await db.rawQuery('''
      SELECT m.*, 
        COALESCE((SELECT COUNT(DISTINCT it.item_id) FROM item_tags it 
         JOIN words w ON it.item_id = w.group_id AND it.item_type = 'word'
         WHERE it.tag = m.subject), 0) as word_count
      FROM study_materials m 
    ''');
    
    print('Query Result: $result');

    expect(result.length, 1);
    expect(result.first['subject'], subject);
    expect(result.first['word_count'], 2); // Should be 2 (Apple, Banana)

    await db.close();
  });
}

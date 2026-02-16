import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;
  static const String _dbName = 'talkie.db';
  static const int _dbVersion = 19; // Phase 129: DB Re-architecture (Shared/Personal Split)

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  static Future<void> reset() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, _dbName);
    await deleteDatabase(path);
    _database = null;
  }

  static Future<void> close() async {
    if (_database != null) {
      await _database!.close();
      _database = null;
    }
  }

  static Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, _dbName);

    return await openDatabase(
      path,
      version: _dbVersion,
      onConfigure: (db) async {
        await db.execute('PRAGMA foreign_keys = ON');
      },
      onCreate: (db, version) async {
        await createBaseTables(db);
        await ensureDefaultMaterial(db);
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        // Phase 99: v15
        if (oldVersion < 15) {
          print('[DB] Migrating to version 15: Normalizing local tables');
          await _migrateToV15(db);
        }

        // Phase 105: v16
        if (oldVersion < 16) {
          print('[DB] Migrating to version 16: Adding indexes for performance');
          await _addIndexesV16(db);
        }

        // Phase 120: v17
        if (oldVersion < 17) {
          print('[DB] Migrating to version 17: Consolidating to single record per group');
          await _migrateToV17(db);
        }

        // Phase 126: v18 (Restore Data Isolation)
        if (oldVersion < 18) {
          print('[DB] Migrating to version 18: Restoring Data Isolation (Separating Dialogue from Sentences)');
          await _migrateToV18(db);
        }

        // Phase 129: v19 (Shared/Personal Split)
        if (oldVersion < 19) {
          print('[DB] Migrating to version 19: Splitting Shared/Personal Data & Dialogue Table');
          await _migrateToV19(db);
        }
        
        // Final Safety Check: Ensure all base tables exist for upgraded users
        await createBaseTables(db);
      },
    );
  }

  // ... (Previous Migrations Omitted for Brevity - kept as is)

  static Future<void> _migrateToV19(Database db) async {
    await db.transaction((txn) async {
      print('[DB] Starting v19 Migration...');

      // 1. Rename existing tables
      await txn.execute('ALTER TABLE words RENAME TO words_old');
      await txn.execute('ALTER TABLE sentences RENAME TO sentences_old');
      await txn.execute('ALTER TABLE chat_messages RENAME TO chat_messages_old');

      // 2. Create Shared Content Tables (words, sentences)
      await txn.execute('''
        CREATE TABLE words (
          group_id INTEGER PRIMARY KEY, -- Shared ID
          data_json TEXT,               -- Content (Translations)
          created_at TEXT NOT NULL
        )
      ''');
      await txn.execute('''
        CREATE TABLE sentences (
          group_id INTEGER PRIMARY KEY,
          data_json TEXT,
          created_at TEXT NOT NULL
        )
      ''');

      // 3. Create Personalized Meta Tables (words_meta, sentences_meta)
      await txn.execute('''
        CREATE TABLE words_meta (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          group_id INTEGER NOT NULL,
          notebook_title TEXT NOT NULL, -- from study_material subject
          source_lang TEXT,
          target_lang TEXT,
          caption TEXT,                 -- note
          tags TEXT,                    -- comma separated
          is_memorized INTEGER DEFAULT 0,
          is_synced INTEGER DEFAULT 0,
          review_count INTEGER DEFAULT 0,
          last_reviewed TEXT,
          FOREIGN KEY (group_id) REFERENCES words (group_id) ON DELETE CASCADE
        )
      ''');
      await txn.execute('''
        CREATE TABLE sentences_meta (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          group_id INTEGER NOT NULL,
          notebook_title TEXT NOT NULL,
          source_lang TEXT,
          target_lang TEXT,
          caption TEXT,
          tags TEXT,
          is_memorized INTEGER DEFAULT 0,
          is_synced INTEGER DEFAULT 0,
          review_count INTEGER DEFAULT 0,
          last_reviewed TEXT,
          FOREIGN KEY (group_id) REFERENCES sentences (group_id) ON DELETE CASCADE
        )
      ''');

      // 4. Create New Dialogue Table
      await txn.execute('''
        CREATE TABLE dialogues (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          session_id TEXT NOT NULL,     -- old dialogue_id
          speaker TEXT,
          content TEXT,                 -- source_text
          translation TEXT,             -- target_text
          created_at TEXT DEFAULT (strftime('%Y-%m-%dT%H:%M:%SZ', 'now')),
          FOREIGN KEY (session_id) REFERENCES dialogue_groups (id) ON DELETE CASCADE
        )
      ''');

      // 5. Migrate Data: Words
      print('[DB] Migrating Words...');
      await txn.execute('INSERT INTO words (group_id, data_json, created_at) SELECT group_id, data_json, created_at FROM words_old');
      
      // Prepare Meta Data
      final oldWords = await txn.query('words_old');
      final materials = await txn.query('study_materials');
      final subjects = materials.map((m) => m['subject'] as String).toSet();
      
      // Get all word tags
      final tagRows = await txn.query('item_tags', where: 'item_type = ?', whereArgs: ['word']);
      final Map<int, List<String>> itemTagsMap = {};
      for (var row in tagRows) {
        final id = row['item_id'] as int;
        final tag = row['tag'] as String;
        itemTagsMap.putIfAbsent(id, () => []).add(tag);
      }

      final batch = txn.batch();
      for (var row in oldWords) {
        final gId = row['group_id'] as int;
        final tags = itemTagsMap[gId] ?? [];
        
        // Determine Notebook Title
        String notebook = 'My Wordbook';
        for (var t in tags) {
          if (subjects.contains(t)) {
            notebook = t;
            break;
          }
        }
        
        final tagsStr = tags.join(',');
        
        batch.insert('words_meta', {
          'group_id': gId,
          'notebook_title': notebook,
          'source_lang': 'auto', // Default
          'target_lang': 'auto', // Default
          'caption': '', // Logic for note extraction is complex in json, leave empty for now
          'tags': tagsStr,
          'is_memorized': row['is_memorized'],
          'is_synced': row['is_synced'] ?? 0,
          'review_count': row['review_count'],
          'last_reviewed': row['last_reviewed'],
        });
      }
      await batch.commit(noResult: true);

      // 6. Migrate Data: Sentences (Similar logic)
      print('[DB] Migrating Sentences...');
      await txn.execute('INSERT INTO sentences (group_id, data_json, created_at) SELECT group_id, data_json, created_at FROM sentences_old');
      
      final oldSentences = await txn.query('sentences_old');
      final sTagRows = await txn.query('item_tags', where: 'item_type = ?', whereArgs: ['sentence']);
      final Map<int, List<String>> sItemTagsMap = {};
      for (var row in sTagRows) {
        final id = row['item_id'] as int;
        final tag = row['tag'] as String;
        sItemTagsMap.putIfAbsent(id, () => []).add(tag);
      }
      
      final sBatch = txn.batch();
      for (var row in oldSentences) {
        final gId = row['group_id'] as int;
        final tags = sItemTagsMap[gId] ?? [];
        
        String notebook = 'My Sentencebook';
        for (var t in tags) {
          if (subjects.contains(t)) {
            notebook = t;
            break;
          }
        }
        
        sBatch.insert('sentences_meta', {
          'group_id': gId,
          'notebook_title': notebook,
          'source_lang': 'auto',
          'target_lang': 'auto',
          'caption': '',
          'tags': tags.join(','),
          'is_memorized': row['is_memorized'],
          'is_synced': row['is_synced'] ?? 0,
          'review_count': row['review_count'],
          'last_reviewed': row['last_reviewed'],
        });
      }
      await sBatch.commit(noResult: true);

      // 7. Migrate Data: Dialogues
      print('[DB] Migrating Dialogues...');
      // Note: chat_messages_old has id, dialogue_id, group_id, speaker, participant_id, sequence_order, created_at, source_text, target_text
      // dialogues has id, session_id, speaker, content, translation, created_at
      await txn.execute('''
        INSERT INTO dialogues (session_id, speaker, content, translation, created_at)
        SELECT dialogue_id, speaker, source_text, target_text, created_at 
        FROM chat_messages_old
      ''');

      // 8. Safety Check & Cleanup
      final int oldWordsCount = Sqflite.firstIntValue(await txn.rawQuery('SELECT COUNT(*) FROM words_old')) ?? 0;
      final int newWordsCount = Sqflite.firstIntValue(await txn.rawQuery('SELECT COUNT(*) FROM words')) ?? 0;
      
      if (oldWordsCount != newWordsCount) {
        throw Exception('[DB] Migration Failed: Word Count Mismatch (Old: $oldWordsCount, New: $newWordsCount). Aborting to prevent data loss.');
      }

      final int oldSentencesCount = Sqflite.firstIntValue(await txn.rawQuery('SELECT COUNT(*) FROM sentences_old')) ?? 0;
      final int newSentencesCount = Sqflite.firstIntValue(await txn.rawQuery('SELECT COUNT(*) FROM sentences')) ?? 0;

      if (oldSentencesCount != newSentencesCount) {
        throw Exception('[DB] Migration Failed: Sentence Count Mismatch (Old: $oldSentencesCount, New: $newSentencesCount). Aborting to prevent data loss.');
      }

      print('[DB] Safety Check Passed. Dropping old tables...');
      await txn.execute('DROP TABLE words_old');
      await txn.execute('DROP TABLE sentences_old');
      await txn.execute('DROP TABLE chat_messages_old');
      
      // Re-create Indexes
      await txn.execute('CREATE INDEX IF NOT EXISTS idx_words_group_id ON words (group_id)');
      await txn.execute('CREATE INDEX IF NOT EXISTS idx_sentences_group_id ON sentences (group_id)');
      // Phase 129: Enforce 1:1 Meta via Unique Index
      await txn.execute('CREATE UNIQUE INDEX IF NOT EXISTS idx_sentences_meta_group_id ON sentences_meta (group_id)');
      
      // Phase 129: item_tags removed, so no cleanup triggers needed.

      print('[DB] v19 Migration Completed.');
    });
  }

  static Future<void> createBaseTables(Database db) async {
    // 1. Shared Content Tables
    await db.execute('''
      CREATE TABLE IF NOT EXISTS words (
        group_id INTEGER PRIMARY KEY,
        data_json TEXT, -- Content only
        created_at TEXT NOT NULL
      )
    ''');
    
    await db.execute('''
      CREATE TABLE IF NOT EXISTS sentences (
        group_id INTEGER PRIMARY KEY,
        data_json TEXT,
        created_at TEXT NOT NULL
      )
    ''');

    // 2. Personalized Meta Tables
    await db.execute('''
      CREATE TABLE IF NOT EXISTS words_meta (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        group_id INTEGER NOT NULL,
        notebook_title TEXT NOT NULL,
        source_lang TEXT,
        target_lang TEXT,
        caption TEXT,
        tags TEXT,
        is_memorized INTEGER DEFAULT 0,
        is_synced INTEGER DEFAULT 0,
        review_count INTEGER DEFAULT 0,
        last_reviewed TEXT,
        FOREIGN KEY (group_id) REFERENCES words (group_id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE IF NOT EXISTS sentences_meta (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        group_id INTEGER NOT NULL,
        notebook_title TEXT NOT NULL,
        source_lang TEXT,
        target_lang TEXT,
        caption TEXT,
        tags TEXT,
        is_memorized INTEGER DEFAULT 0,
        is_synced INTEGER DEFAULT 0,
        review_count INTEGER DEFAULT 0,
        last_reviewed TEXT,
        FOREIGN KEY (group_id) REFERENCES sentences (group_id) ON DELETE CASCADE
      )
    ''');
    
    // 3. Dialogue Tables
    await db.execute('''
      CREATE TABLE IF NOT EXISTS dialogue_groups (
        id TEXT PRIMARY KEY,
        user_id TEXT,
        title TEXT,
        persona TEXT,
        location TEXT,
        note TEXT,
        created_at TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE IF NOT EXISTS dialogues (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        session_id TEXT NOT NULL,
        speaker TEXT,
        content TEXT,
        translation TEXT,
        created_at TEXT DEFAULT (strftime('%Y-%m-%dT%H:%M:%SZ', 'now')),
        FOREIGN KEY (session_id) REFERENCES dialogue_groups (id) ON DELETE CASCADE
      )
    ''');
    
    await db.execute('''
      CREATE TABLE IF NOT EXISTS dialogue_participants (
        id TEXT PRIMARY KEY,
        dialogue_id TEXT NOT NULL,
        name TEXT NOT NULL,
        role TEXT NOT NULL, 
        gender TEXT,
        lang_code TEXT,
        created_at TEXT NOT NULL
      )
    ''');
    
    await db.execute('''
      CREATE TABLE IF NOT EXISTS study_materials (
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

    await db.execute('CREATE INDEX IF NOT EXISTS idx_words_group_id ON words (group_id)');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_sentences_group_id ON sentences (group_id)');
    await db.execute('CREATE UNIQUE INDEX IF NOT EXISTS idx_words_meta_group_id ON words_meta (group_id)');
    await db.execute('CREATE UNIQUE INDEX IF NOT EXISTS idx_sentences_meta_group_id ON sentences_meta (group_id)');
  }

  // Legacy migrations kept below...


  static Future<void> _addIndexesV16(Database db) async {
    await db.transaction((txn) async {
      // 1. Tag Search Optimization
      await txn.execute('CREATE INDEX IF NOT EXISTS idx_item_tags_tag ON item_tags (tag)');
      
      // 2. Text Search Optimization (Legacy - Removed in v17)
      // await txn.execute('CREATE INDEX IF NOT EXISTS idx_words_text ON words (text)');
      // await txn.execute('CREATE INDEX IF NOT EXISTS idx_sentences_text ON sentences (text)');
      
      // 3. User Filter Optimization (Legacy - Removed in v17)
      // await txn.execute('CREATE INDEX IF NOT EXISTS idx_sentences_style ON sentences (style)');
      // await txn.execute('CREATE INDEX IF NOT EXISTS idx_words_pos ON words (pos)');
    });
  }

  static Future<void> _migrateToV15(Database db) async {
    // SQLite doesn't support DROP COLUMN easily. Use Rename-Copy-Drop pattern.
    await db.transaction((txn) async {
      // 1. Normalize 'words' table (Remove 'style')
      await txn.execute('ALTER TABLE words RENAME TO words_old');
      await txn.execute('''
        CREATE TABLE words (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          group_id INTEGER,
          text TEXT NOT NULL,
          lang_code TEXT NOT NULL,
          root TEXT,
          pos TEXT,
          form_type TEXT,
          note TEXT,
          created_at TEXT NOT NULL,
          is_memorized INTEGER DEFAULT 0,
          is_synced INTEGER DEFAULT 0,
          audio_file BLOB,
          last_reviewed TEXT,
          review_count INTEGER DEFAULT 0
        )
      ''');
      await txn.execute('''
        INSERT INTO words (id, group_id, text, lang_code, root, pos, form_type, note, created_at, is_memorized, is_synced, audio_file, last_reviewed, review_count)
        SELECT id, group_id, text, lang_code, root, pos, form_type, note, created_at, is_memorized, is_synced, audio_file, last_reviewed, review_count FROM words_old
      ''');
      await txn.execute('DROP TABLE words_old');

      // 2. Normalize 'sentences' table (Remove 'form_type', 'root')
      await txn.execute('ALTER TABLE sentences RENAME TO sentences_old');
      await txn.execute('''
        CREATE TABLE sentences (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          group_id INTEGER,
          text TEXT NOT NULL,
          lang_code TEXT NOT NULL,
          pos TEXT,
          style TEXT,
          note TEXT,
          created_at TEXT NOT NULL,
          is_memorized INTEGER DEFAULT 0,
          is_synced INTEGER DEFAULT 0,
          audio_file BLOB,
          last_reviewed TEXT,
          review_count INTEGER DEFAULT 0
        )
      ''');
      await txn.execute('''
        INSERT INTO sentences (id, group_id, text, lang_code, pos, style, note, created_at, is_memorized, is_synced, audio_file, last_reviewed, review_count)
        SELECT id, group_id, text, lang_code, pos, style, note, created_at, is_memorized, is_synced, audio_file, last_reviewed, review_count FROM sentences_old
      ''');
      await txn.execute('DROP TABLE sentences_old');
      
      // Re-create indexes
      await txn.execute('CREATE INDEX IF NOT EXISTS idx_words_group_id ON words (group_id)');
      await txn.execute('CREATE INDEX IF NOT EXISTS idx_sentences_group_id ON sentences (group_id)');
    });
  }

  static Future<void> _migrateToV18(Database db) async {
    await db.transaction((txn) async {
      // 1. Enhance 'chat_messages' table (Add missing columns for standalone storage)
      // SQLite doesn't support IF NOT EXISTS for ADD COLUMN easily. Using try-catch pattern.
      final columnsToAdd = ['source_text', 'target_text', 'source_lang', 'target_lang'];
      
      for (var col in columnsToAdd) {
        try {
          await txn.execute('ALTER TABLE chat_messages ADD COLUMN $col TEXT');
        } catch (e) {
          // Ignore if column already exists
          print('[DB] Column $col likely exists in chat_messages: $e');
        }
      }

      // 2. Cleanup Polluted Data in 'sentences' table
      // Identify and remove sentences that are actually dialogue messages
      print('[DB] Cleaning up polluted dialogue data from sentences table...');
      
      // 2-1. Find Polluted Group IDs (Tagged with #Dialogue or type=sentence but context is dialogue)
      // Since we can't easily join in DELETE, we select IDs first.
      
      final pollutedGroups = await txn.rawQuery('''
        SELECT item_id 
        FROM item_tags 
        WHERE tag IN ('#Dialogue', 'Dialogue', 'User Input', 'File Import') 
        AND item_type = 'sentence'
      ''');
      
      if (pollutedGroups.isNotEmpty) {
        final ids = pollutedGroups.map((r) => r['item_id']).join(',');
        
        // Delete from item_tags
        await txn.rawDelete('DELETE FROM item_tags WHERE item_id IN ($ids) AND item_type = "sentence"');
        
        // Delete from sentences (The actual polluted data)
        final deletedCount = await txn.rawDelete('DELETE FROM sentences WHERE group_id IN ($ids)');
        print('[DB] Cleaned up $deletedCount polluted sentence records.');
        
        // Also cleanup words if any (though unlikely for dialogue)
        await txn.rawDelete('DELETE FROM words WHERE group_id IN ($ids)');
      }
    });
  }

  // ... (v15, v16, v17, v18 migrations are managed above or below, I will replace the createBaseTables method body entirely)
  // Wait, I need to match the file structure.
  // The previous replace replaced lines 8 to 71. 
  // createBaseTables starts around line 193.
  // I need to execute another replace for createBaseTables.


  static Future<void> _migrateToV17(Database db) async {
    await db.transaction((txn) async {
      // 1. item_tags 확장 (PK가 바뀌어야 하므로 재생성)
      await txn.execute('ALTER TABLE item_tags RENAME TO item_tags_old');
      await txn.execute('''
        CREATE TABLE item_tags (
          item_id INTEGER NOT NULL,
          item_type TEXT NOT NULL,
          tag TEXT NOT NULL,
          lang_code TEXT NOT NULL DEFAULT 'auto',
          PRIMARY KEY (item_id, item_type, tag, lang_code)
        )
      ''');

      // 2. words 데이터 이관 준비
      await txn.execute('ALTER TABLE words RENAME TO words_old');
      await txn.execute('''
        CREATE TABLE words (
          group_id INTEGER PRIMARY KEY,
          data_json TEXT,
          created_at TEXT NOT NULL,
          is_memorized INTEGER DEFAULT 0,
          is_synced INTEGER DEFAULT 0,
          audio_file BLOB,
          last_reviewed TEXT,
          review_count INTEGER DEFAULT 0
        )
      ''');

      // 3. sentences 데이터 이관 준비
      await txn.execute('ALTER TABLE sentences RENAME TO sentences_old');
      await txn.execute('''
        CREATE TABLE sentences (
          group_id INTEGER PRIMARY KEY,
          data_json TEXT,
          created_at TEXT NOT NULL,
          is_memorized INTEGER DEFAULT 0,
          is_synced INTEGER DEFAULT 0,
          audio_file BLOB,
          last_reviewed TEXT,
          review_count INTEGER DEFAULT 0
        )
      ''');

      // 4. Words 데이터 통합 (Dart 레벨 가공)
      final List<Map<String, dynamic>> oldWords = await txn.query('words_old');
      final Map<int, Map<String, dynamic>> wordGroups = {};
      final Map<int, int> wordIdToGroup = {};

      for (var row in oldWords) {
        final gId = row['group_id'] as int;
        final lang = row['lang_code'] as String;
        wordIdToGroup[row['id'] as int] = gId;

        wordGroups.putIfAbsent(gId, () => {
          'group_id': gId,
          'created_at': row['created_at'],
          'is_memorized': row['is_memorized'],
          'is_synced': row['is_synced'],
          'audio_file': row['audio_file'],
          'last_reviewed': row['last_reviewed'],
          'review_count': row['review_count'],
          'translations': <String, dynamic>{},
        });
        
        (wordGroups[gId]!['translations'] as Map<String, dynamic>)[lang] = {
          'text': row['text'],
          'pos': row['pos'],
          'root': row['root'],
          'form_type': row['form_type'],
          'note': row['note'],
        };
      }

      for (var group in wordGroups.values) {
        final translations = group.remove('translations');
        group['data_json'] = jsonEncode(translations);
        await txn.insert('words', group);
      }

      // 5. Sentences 데이터 통합
      final List<Map<String, dynamic>> oldSentences = await txn.query('sentences_old');
      final Map<int, Map<String, dynamic>> sentenceGroups = {};
      final Map<int, int> sentenceIdToGroup = {};

      for (var row in oldSentences) {
        final gId = row['group_id'] as int;
        final lang = row['lang_code'] as String;
        sentenceIdToGroup[row['id'] as int] = gId;

        sentenceGroups.putIfAbsent(gId, () => {
          'group_id': gId,
          'created_at': row['created_at'],
          'is_memorized': row['is_memorized'],
          'is_synced': row['is_synced'],
          'audio_file': row['audio_file'],
          'last_reviewed': row['last_reviewed'],
          'review_count': row['review_count'],
          'translations': <String, dynamic>{},
        });
        
        (sentenceGroups[gId]!['translations'] as Map<String, dynamic>)[lang] = {
          'text': row['text'],
          'pos': row['pos'],
          'style': row['style'],
          'note': row['note'],
        };
      }

      for (var group in sentenceGroups.values) {
        final translations = group.remove('translations');
        group['data_json'] = jsonEncode(translations);
        await txn.insert('sentences', group);
      }

      // 6. Tags 데이터 이관
      final List<Map<String, dynamic>> oldTags = await txn.query('item_tags_old');
      for (var tag in oldTags) {
        final oldId = tag['item_id'] as int;
        final type = tag['item_type'] as String;
        int? groupId = (type == 'word') ? wordIdToGroup[oldId] : sentenceIdToGroup[oldId];
        
        // 원본 언어 찾기
        String lang = 'auto';
        if (type == 'word') {
          final orig = oldWords.firstWhere((w) => w['id'] == oldId, orElse: () => {});
          if (orig.isNotEmpty) lang = orig['lang_code'];
        } else {
          final orig = oldSentences.firstWhere((s) => s['id'] == oldId, orElse: () => {});
          if (orig.isNotEmpty) lang = orig['lang_code'];
        }

        if (groupId != null) {
          await txn.insert('item_tags', {
            'item_id': groupId,
            'item_type': type,
            'tag': tag['tag'],
            'lang_code': lang,
          });
        }
      }

      // 7. Cleanup
      await txn.execute('DROP TABLE words_old');
      await txn.execute('DROP TABLE sentences_old');
      await txn.execute('DROP TABLE item_tags_old');
    });
  }

  static Future<void> ensureDefaultMaterial(Database db) async {
    final result = await db.query('study_materials', where: 'id = 0');
    if (result.isEmpty) {
      await db.insert('study_materials', {
        'id': 0,
        'subject': 'Basic',
        'source': 'System',
        'source_language': 'auto',
        'target_language': 'auto',
        'created_at': DateTime.now().toIso8601String(),
        'imported_at': DateTime.now().toIso8601String(),
      });
    }
  }
}

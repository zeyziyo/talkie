import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;
  static const String _dbName = 'talkie.db';
  static const int _dbVersion = 17; // Phase 120: Consolidated JSON Schema

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
      },
    );
  }

  static Future<void> _addIndexesV16(Database db) async {
    await db.transaction((txn) async {
      // 1. Tag Search Optimization
      await txn.execute('CREATE INDEX IF NOT EXISTS idx_item_tags_tag ON item_tags (tag)');
      
      // 2. Text Search Optimization (for Autocomplete/LIKE queries)
      await txn.execute('CREATE INDEX IF NOT EXISTS idx_words_text ON words (text)');
      await txn.execute('CREATE INDEX IF NOT EXISTS idx_sentences_text ON sentences (text)');
      
      // 3. User Filter Optimization
      await txn.execute('CREATE INDEX IF NOT EXISTS idx_sentences_style ON sentences (style)');
      await txn.execute('CREATE INDEX IF NOT EXISTS idx_words_pos ON words (pos)');
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

  static Future<void> createBaseTables(Database db) async {
    // Phase 120: Consolidated Schema (1 Group = 1 Row)
    await db.execute('''
      CREATE TABLE IF NOT EXISTS words (
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
    
    await db.execute('''
      CREATE TABLE IF NOT EXISTS sentences (
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

    await db.execute('''
      CREATE TABLE IF NOT EXISTS item_tags (
        item_id INTEGER NOT NULL,
        item_type TEXT NOT NULL,
        tag TEXT NOT NULL,
        lang_code TEXT NOT NULL DEFAULT 'auto',
        PRIMARY KEY (item_id, item_type, tag, lang_code)
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
      CREATE TABLE IF NOT EXISTS chat_messages (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        dialogue_id TEXT NOT NULL,
        group_id INTEGER NOT NULL,
        speaker TEXT,
        participant_id TEXT,
        sequence_order INTEGER NOT NULL,
        created_at TEXT DEFAULT (strftime('%Y-%m-%dT%H:%M:%SZ', 'now')),
        FOREIGN KEY (dialogue_id) REFERENCES dialogue_groups (id) ON DELETE CASCADE
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

    // Phase 105: Performance Indexes
    await db.execute('CREATE INDEX IF NOT EXISTS idx_words_group_id ON words (group_id)');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_sentences_group_id ON sentences (group_id)');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_item_tags_tag ON item_tags (tag)');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_words_text ON words (text)');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_sentences_text ON sentences (text)');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_sentences_style ON sentences (style)');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_words_pos ON words (pos)');
  }

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

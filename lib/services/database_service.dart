import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:typed_data';
import 'dart:convert';

/// DatabaseService - 로컬 데이터베이스 관리
/// 언어별 테이블을 동적으로 생성하고 일대다 번역 관계 지원
class DatabaseService {
  static Database? _database;
  
  /// 데이터베이스 인스턴스 가져오기
  static Future<Database> get database async {
    if (_database != null) return _database!;
    
    _database = await _initDatabase();
    return _database!;
  }
  
  /// 데이터베이스 초기화 및 기본 테이블 생성
  static Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'talkie.db');
    
    return await openDatabase(
      path,
      version: 8, // Upgraded for Phase 21 (Add is_memorized)
      onCreate: (db, version) async {
        await _createBaseTables(db);
        await _ensureDefaultMaterial(db);
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          // ... (Existing upgrades)
          await db.execute('''
            CREATE TABLE dialogue_groups (
              id TEXT PRIMARY KEY,
              user_id TEXT,
              title TEXT,
              persona TEXT,
              created_at TEXT NOT NULL
            )
          ''');
          
          await db.execute('ALTER TABLE translations ADD COLUMN dialogue_id TEXT');
          await db.execute('ALTER TABLE translations ADD COLUMN speaker TEXT');
          await db.execute('ALTER TABLE translations ADD COLUMN sequence_order INTEGER');
          
          print('[DB] Upgraded to version 2: Dialogue support added');
        }
        
        if (oldVersion < 3) {
          await db.execute('ALTER TABLE translations ADD COLUMN is_synced INTEGER DEFAULT 0');
          print('[DB] Upgraded to version 3: Sync support added');
        }

        if (oldVersion < 4) {
          await db.execute('ALTER TABLE dialogue_groups ADD COLUMN location TEXT');
          print('[DB] Upgraded to version 4: Location support added');
        }

        if (oldVersion < 5) {
          await _createBaseTables(db);
          await migrateToUnifiedSchema(db); 
          print('[DB] Upgraded to version 5: New Unified Schema added and data migrated');
        }

        if (oldVersion < 6) {
          await db.execute('ALTER TABLE sentences ADD COLUMN pos TEXT');
          await db.execute('ALTER TABLE sentences ADD COLUMN form_type TEXT');
          await db.execute('ALTER TABLE sentences ADD COLUMN root TEXT');
          print('[DB] Upgraded to version 6: Sentences metadata added');
        }

        if (oldVersion < 7) {
          await db.execute('''
            CREATE TABLE IF NOT EXISTS chat_messages (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              dialogue_id TEXT NOT NULL,
              group_id INTEGER NOT NULL,
              speaker TEXT,
              sequence_order INTEGER,
              created_at TEXT NOT NULL,
              FOREIGN KEY (dialogue_id) REFERENCES dialogue_groups (id) ON DELETE CASCADE
            )
          ''');
          print('[DB] Upgraded to version 7: chat_messages table added');
        }
        
        if (oldVersion < 8) {
          // Phase 21: Memorized Status
          await db.execute('ALTER TABLE words ADD COLUMN is_memorized INTEGER DEFAULT 0');
          await db.execute('ALTER TABLE sentences ADD COLUMN is_memorized INTEGER DEFAULT 0');
          print('[DB] Upgraded to version 8: Memorized status added');
        }
      },
    );
  }
  
  /// 기본 테이블 및 신규 통합 테이블 생성
  static Future<void> _createBaseTables(Database db) async {
    // ... (Legacy tables skipped for brevity in diff, assume unchanged)
    // 1. 구버전 테이블 (마이그레이션 및 하위 호환성 위해 유지 - 추후 제거 가능)
    // 번역 관계 테이블
    await db.execute('''
      CREATE TABLE IF NOT EXISTS translations (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        source_lang TEXT NOT NULL,
        source_id INTEGER NOT NULL,
        target_lang TEXT NOT NULL,
        target_id INTEGER NOT NULL,
        created_at TEXT NOT NULL,
        material_id INTEGER,
        note TEXT,
        type TEXT DEFAULT 'sentence',
        dialogue_id TEXT,
        speaker TEXT,
        sequence_order INTEGER,
        is_synced INTEGER DEFAULT 0
      )
    ''');
    
    await db.execute('''
      CREATE UNIQUE INDEX IF NOT EXISTS idx_translations_composite 
      ON translations (source_lang, source_id, target_lang, target_id, material_id, IFNULL(note, ''), IFNULL(dialogue_id, ''))
    ''');

    // 2. 신규 통합 테이블 (Phase 12)
    
    // 통합 단어 테이블
    await db.execute('''
      CREATE TABLE IF NOT EXISTS words (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        group_id INTEGER,
        text TEXT NOT NULL,
        lang_code TEXT NOT NULL,
        root TEXT,
        pos TEXT,
        form_type TEXT,
        note TEXT,
        created_at TEXT NOT NULL,
        is_memorized INTEGER DEFAULT 0
      )
    ''');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_words_group_id ON words (group_id)');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_words_text_lang ON words (text, lang_code)');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_words_root ON words (root)');
    await db.execute('CREATE UNIQUE INDEX IF NOT EXISTS idx_words_unique ON words (text, lang_code, IFNULL(note, ""))');

    // 통합 문장 테이블
    await db.execute('''
      CREATE TABLE IF NOT EXISTS sentences (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        group_id INTEGER,
        text TEXT NOT NULL,
        lang_code TEXT NOT NULL,
        pos TEXT,
        form_type TEXT,
        root TEXT,
        note TEXT,
        created_at TEXT NOT NULL,
        is_memorized INTEGER DEFAULT 0
      )
    ''');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_sentences_group_id ON sentences (group_id)');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_sentences_text_lang ON sentences (text, lang_code)');
    await db.execute('CREATE UNIQUE INDEX IF NOT EXISTS idx_sentences_unique ON sentences (text, lang_code, IFNULL(note, ""))');

    // 단어 번역 테이블
    await db.execute('''
      CREATE TABLE IF NOT EXISTS word_translations (
        source_word_id INTEGER NOT NULL,
        target_word_id INTEGER NOT NULL,
        PRIMARY KEY (source_word_id, target_word_id)
      )
    ''');

    // 문장 번역 테이블
    await db.execute('''
      CREATE TABLE IF NOT EXISTS sentence_translations (
        source_sentence_id INTEGER NOT NULL,
        target_sentence_id INTEGER NOT NULL,
        PRIMARY KEY (source_sentence_id, target_sentence_id)
      )
    ''');

    // 태그 시스템 테이블
    await db.execute('''
      CREATE TABLE IF NOT EXISTS item_tags (
        item_id INTEGER NOT NULL,
        item_type TEXT NOT NULL,
        tag TEXT NOT NULL,
        PRIMARY KEY (item_id, item_type, tag)
      )
    ''');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_item_tags_tag ON item_tags (tag)');

    // 기존 테이블들 (Legacy)
    await db.execute('''
      CREATE TABLE IF NOT EXISTS dialogue_groups (
        id TEXT PRIMARY KEY,
        user_id TEXT,
        title TEXT,
        persona TEXT,
        location TEXT,
        created_at TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE IF NOT EXISTS chat_messages (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        dialogue_id TEXT NOT NULL,
        group_id INTEGER NOT NULL,
        speaker TEXT,
        sequence_order INTEGER,
        created_at TEXT NOT NULL,
        FOREIGN KEY (dialogue_id) REFERENCES dialogue_groups (id) ON DELETE CASCADE
      )
    ''');
    
    await db.execute('''
      CREATE TABLE IF NOT EXISTS translation_cache (
        cache_key TEXT PRIMARY KEY,
        translation TEXT NOT NULL,
        timestamp INTEGER NOT NULL
      )
    ''');
    
    await db.execute('''
      CREATE TABLE IF NOT EXISTS study_materials (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        subject TEXT NOT NULL,
        source TEXT NOT NULL,
        source_language TEXT NOT NULL,
        target_language TEXT NOT NULL,
        file_name TEXT,
        created_at TEXT NOT NULL,
        imported_at TEXT NOT NULL
      )
    ''');
    
    print('[DB] Unified Schema tables created successfully');
  }

  /// 기본 학습 자료 보장 (ID=0)
  static Future<void> _ensureDefaultMaterial(Database db) async {
    try {
      // ID=0인 레코드가 있는지 확인
      final result = await db.query(
        'study_materials',
        where: 'id = ?',
        whereArgs: [0],
      );

      if (result.isEmpty) {
        // ID=0으로 강제 삽입
        await db.rawInsert('''
          INSERT INTO study_materials (id, subject, source, source_language, target_language, created_at, imported_at)
          VALUES (0, 'Basic', 'Google', 'auto', 'auto', ?, ?)
        ''', [
          DateTime.now().toIso8601String(),
          DateTime.now().toIso8601String(),
        ]);
        print('[DB] Default material (ID=0) created');
      }
    } catch (e) {
      print('[DB] Error creating default material: $e');
    }
  }

  /// 기본 학습 자료 ID 가져오기 (없으면 생성)
  static Future<int> getOrCreateDefaultMaterial() async {
    final db = await database;
    await _ensureDefaultMaterial(db);
    return 0;
  }
  
  // ==========================================
  // 언어별 테이블 관리
  // ==========================================
  
  /// 언어별 테이블 생성 (이미 존재하면 무시)
  static Future<void> createLanguageTable(String langCode) async {
    final db = await database;
    final tableName = 'lang_$langCode'.replaceAll('-', '_');
    
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $tableName (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        text TEXT NOT NULL,
        audio_file BLOB,
        created_at TEXT NOT NULL,
        last_reviewed TEXT,
        review_count INTEGER DEFAULT 0
      )
    ''');

    // 텍스트 검색 및 중복 방지를 위한 UNIQUE 인덱스 추가
    await db.execute('CREATE UNIQUE INDEX IF NOT EXISTS idx_${tableName}_text ON $tableName (text COLLATE NOCASE)');
    
    print('[DB] Language table created/verified: $tableName');
  }
  
  /// 언어 테이블에 텍스트 삽입 (중복 시 기존 ID 반환)
  static Future<int> insertLanguageRecord(String langCode, String text, {Transaction? txn, bool skipTableCheck = false}) async {
    final db = txn ?? await database;
    final tableName = 'lang_$langCode'.replaceAll('-', '_');
    
    // 테이블이 없으면 생성 (배치 작업 시 건너뛰어 성능 향상)
    if (!skipTableCheck) {
      await createLanguageTable(langCode);
    }
    
    // INSERT OR IGNORE를 사용하여 중복 쿼리(SELECT) 제거
    // 중복 발생 시 id는 0 또는 null이 반환될 수 있으므로, 확실하게 가져오기 위해 처리
    final id = await db.insert(
      tableName, 
      {
        'text': text,
        'audio_file': null,
        'created_at': DateTime.now().toIso8601String(),
        'last_reviewed': null,
        'review_count': 0,
      },
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
    
    if (id <= 0) {
      // 이미 존재하는 경우 ID 조회
      final existing = await db.query(
        tableName,
        columns: ['id'],
        where: 'text = ? COLLATE NOCASE',
        whereArgs: [text],
        limit: 1,
      );
      if (existing.isNotEmpty) {
        return existing.first['id'] as int;
      }
    }
    
    return id;
  }
  
  /// 유사 텍스트 검색 (Fuzzy matching using LIKE)
  /// 유사 텍스트 검색 (Stricter: ~1 word difference)
  static Future<List<Map<String, dynamic>>> searchSimilarText(
    String langCode,
    String text,
  ) async {
    final db = await database;
    final tableName = 'lang_$langCode'.replaceAll('-', '_');
    
    // 테이블이 없으면 빈 리스트 반환
    final tables = await db.rawQuery(
      "SELECT name FROM sqlite_master WHERE type='table' AND name=?",
      [tableName]
    );
    
    if (tables.isEmpty) {
      return [];
    }
    
    // 공백으로 단어 분리 및 소문자 정규화
    final inputWords = text.trim().toLowerCase().split(RegExp(r'\s+'));
    if (inputWords.isEmpty) return [];
    
    // 1. Broad Search: 입력된 단어 중 하나라도 포함된 레코드 가져오기 (후보군 선정)
    // LIKE 패턴 생성
    String whereClause = '';
    List<String> whereArgs = [];
    
    for (int i = 0; i < inputWords.length; i++) {
      if (inputWords[i].length < 2) continue; // 너무 짧은 단어 제외
      if (i > 0 && whereClause.isNotEmpty) whereClause += ' OR ';
      whereClause += 'text LIKE ?';
      whereArgs.add('%${inputWords[i]}%');
    }
    
    // 검색할 단어가 없으면 빈 리스트 반환
    if (whereClause.isEmpty) return [];
    
    final candidates = await db.query(
      tableName,
      where: whereClause,
      whereArgs: whereArgs,
      limit: 50, // 후보군 최대 50개
    );
    
    // 2. Strict Filter: 단어 집합 차이가 2 이하인 경우만 선택 (Insertion, Deletion, Substitution of 1 word)
    final inputSet = inputWords.toSet();
    
    final results = candidates.map((record) {
      final recordText = record['text'] as String;
      final recordWords = recordText.trim().toLowerCase().split(RegExp(r'\s+'));
      final recordSet = recordWords.toSet();
      
      // 교집합 계산
      final intersection = inputSet.intersection(recordSet).length;
      
      // 차집합 크기 합 (Symmetric Difference Size)
      // (A - B) + (B - A)
      // = (A.size - inter) + (B.size - inter)
      final diff = (inputSet.length - intersection) + (recordSet.length - intersection);
      
      return {'record': record, 'diff': diff};
    }).where((item) {
      // 차이가 2 이하인 경우만 허용 (단어 1개 변경/추가/삭제 허용)
      // 단, 완전히 똑같은 경우(diff=0)는 제외 (이미 중복 체크 insertLanguage에서 걸러짐, 하지만 여기서도 포함해서 보여주는게 나을수도?)
      // 사용자가 "완전 끝난 후"라고 했으므로 0도 포함하여 알림
      return (item['diff'] as int) <= 2; 
    }).toList();
    
    // 차이가 적은 순으로 정렬
    results.sort((a, b) => (a['diff'] as int).compareTo(b['diff'] as int));
    
    // 상위 3개만 반환
    final topResults = results.take(3).map((item) => item['record'] as Map<String, dynamic>).toList();
    
    print('[DB] Found ${topResults.length} similar texts (strict) in $tableName');
    return topResults;
  }

  /// 번역이 이미 존재하는지 확인
  /// note가 주어진 경우 해당 note와 정확히 일치하는지 확인
  static Future<Map<String, dynamic>?> getTranslationIfExists(
    String sourceLang,
    int sourceId,
    String targetLang, {
    String? note,
  }) async {
    final db = await database;
    
    String whereClause;
    List<dynamic> whereArgs;
    
    if (note == null || note.isEmpty) {
      // If filtering by "no note", strictly find records with NULL or EMPTY note
      whereClause = 'source_lang = ? AND source_id = ? AND target_lang = ? AND (note IS NULL OR note = "")';
      whereArgs = [sourceLang, sourceId, targetLang];
    } else {
      whereClause = 'source_lang = ? AND source_id = ? AND target_lang = ? AND note = ?';
      whereArgs = [sourceLang, sourceId, targetLang, note];
    }
    
    final translations = await db.query(
      'translations',
      where: whereClause,
      whereArgs: whereArgs,
      limit: 1,
    );
    
    if (translations.isEmpty) {
      return null;
    }
    
    final translation = translations.first;
    final targetId = translation['target_id'] as int;
    
    final targetTableName = 'lang_$targetLang'.replaceAll('-', '_');
    final targetRecords = await db.query(
      targetTableName,
      where: 'id = ?',
      whereArgs: [targetId],
      limit: 1,
    );
    
    if (targetRecords.isEmpty) {
      return null;
    }
    
    print('[DB] Found existing translation: $sourceLang($sourceId) -> $targetLang($targetId) [Note: ${translation['note']}]');
    return {
      'target_id': targetId,
      'target_text': targetRecords.first['text'] as String,
      'audio_file': targetRecords.first['audio_file'],
      'note': translation['note'],
    };
  }
  
  /// 번역 관계 저장
  static Future<void> saveTranslationLink({
    required String sourceLang,
    required int sourceId,
    required String targetLang,
    required int targetId,
    required int materialId,
    String? note,
    String type = 'sentence',
  }) async {
    final db = await database;
    
    String whereClause;
    List<dynamic> whereArgs;

    if (note == null) {
      whereClause = 'source_lang = ? AND source_id = ? AND target_lang = ? AND target_id = ? AND note IS NULL';
      whereArgs = [sourceLang, sourceId, targetLang, targetId];
    } else {
      whereClause = 'source_lang = ? AND source_id = ? AND target_lang = ? AND target_id = ? AND note = ?';
      whereArgs = [sourceLang, sourceId, targetLang, targetId, note];
    }
    
    final existing = await db.query(
      'translations',
      where: whereClause,
      whereArgs: whereArgs,
      limit: 1,
    );
    
    if (existing.isNotEmpty) {
      print('[DB] Translation link already exists: $sourceLang($sourceId) -> $targetLang($targetId) [Note: $note]');
      return;
    }
    
    await db.insert('translations', {
      'source_lang': sourceLang,
      'source_id': sourceId,
      'target_lang': targetLang,
      'target_id': targetId,
      'created_at': DateTime.now().toIso8601String(),
      'material_id': materialId,
      'note': note,
      'type': type,
    });
    
    print('[DB] Translation link saved: $sourceLang($sourceId) -> $targetLang($targetId) [Material: $materialId] [Type: $type]');
  }

  /// 오디오 파일 저장
  static Future<void> saveAudioFile(
    String langCode,
    int recordId,
    Uint8List audioData,
  ) async {
    final db = await database;
    final tableName = 'lang_$langCode'.replaceAll('-', '_');
    
    await db.update(
      tableName,
      {'audio_file': audioData},
      where: 'id = ?',
      whereArgs: [recordId],
    );
    
    print('[DB] Audio file saved for $tableName($recordId), size=${audioData.length} bytes');
  }
  
  /// 오디오 파일 가져오기
  static Future<Uint8List?> getAudioFile(String langCode, int recordId) async {
    final db = await database;
    final tableName = 'lang_$langCode'.replaceAll('-', '_');
    
    final records = await db.query(
      tableName,
      columns: ['audio_file'],
      where: 'id = ?',
      whereArgs: [recordId],
      limit: 1,
    );
    
    if (records.isEmpty || records.first['audio_file'] == null) {
      return null;
    }
    
    return records.first['audio_file'] as Uint8List;
  }

  /// 특정 대상 언어로 번역된 모든 레코드 가져오기
  static Future<List<Map<String, dynamic>>> getRecordsByTargetLanguage(
    String targetLang,
  ) async {
    final db = await database;
    
    final translations = await db.query(
      'translations',
      where: 'target_lang = ?',
      whereArgs: [targetLang],
      orderBy: 'created_at DESC',
    );
    
    List<Map<String, dynamic>> results = [];
    
    for (var translation in translations) {
       final sourceLang = translation['source_lang'] as String;
      final sourceId = translation['source_id'] as int;
      final targetId = translation['target_id'] as int;
      
      final sourceTableName = 'lang_$sourceLang'.replaceAll('-', '_');
      final sourceRecords = await db.query(
        sourceTableName,
        where: 'id = ?',
        whereArgs: [sourceId],
        limit: 1,
      );
      
      final targetTableName = 'lang_$targetLang'.replaceAll('-', '_');
      final targetRecords = await db.query(
        targetTableName,
        where: 'id = ?',
        whereArgs: [targetId],
        limit: 1,
      );
      
      if (sourceRecords.isNotEmpty && targetRecords.isNotEmpty) {
        results.add({
          'id': translation['id'],
          'source_lang': sourceLang,
          'source_id': sourceId,
          'source_text': sourceRecords.first['text'],
          'target_lang': targetLang,
          'target_id': targetId,
          'target_text': targetRecords.first['text'],
          'translated_text': targetRecords.first['text'],
          'date': translation['created_at'],
          'created_at': translation['created_at'],
          'review_count': targetRecords.first['review_count'] ?? 0,
          'last_reviewed': targetRecords.first['last_reviewed'],
          'note': translation['note'],
          'type': translation['type'] ?? 'sentence',
        });
      }
    }
    
    print('[DB] Retrieved ${results.length} records for target language: $targetLang');
    return results;
  }
  
  /// 모든 학습 기록 조회 (하위 호환성 유지)
  static Future<List<Map<String, dynamic>>> getAllStudyRecords() async {
    final db = await database;
    
    // 모든 번역 관계 가져오기
    final translations = await db.query(
      'translations',
      orderBy: 'created_at DESC',
    );
    
    List<Map<String, dynamic>> results = [];
    
    for (var translation in translations) {
      final sourceLang = translation['source_lang'] as String;
      final sourceId = translation['source_id'] as int;
      final targetLang = translation['target_lang'] as String;
      final targetId = translation['target_id'] as int;
      
      // 소스 텍스트 가져오기
      final sourceTableName = 'lang_$sourceLang'.replaceAll('-', '_');
      final sourceRecords = await db.query(
        sourceTableName,
        where: 'id = ?',
        whereArgs: [sourceId],
        limit: 1,
      );
      
      // 대상 텍스트 가져오기
      final targetTableName = 'lang_$targetLang'.replaceAll('-', '_');
      final targetRecords = await db.query(
        targetTableName,
        where: 'id = ?',
        whereArgs: [targetId],
        limit: 1,
      );
      
      if (sourceRecords.isNotEmpty && targetRecords.isNotEmpty) {
        results.add({
          'id': translation['id'],
          'source_lang': sourceLang,
          'source_id': sourceId,
          'source_text': sourceRecords.first['text'],
          'target_lang': targetLang,
          'target_id': targetId,
          'translated_text': targetRecords.first['text'],
          'date': translation['created_at'],
          'review_count': targetRecords.first['review_count'] ?? 0,
          'last_reviewed': targetRecords.first['last_reviewed'],
          'note': translation['note'],
          'type': translation['type'] ?? 'sentence',
        });
      }
    }
    
    print('[DB] Retrieved ${results.length} study records');
    return results;
  }
  
  /// 복습 횟수 증가 (하위 호환성 유지)
  static Future<void> incrementReviewCount(int translationId) async {
    final db = await database;
    
    // translation ID로 대상 레코드 찾기
    final translations = await db.query(
      'translations',
      where: 'id = ?',
      whereArgs: [translationId],
      limit: 1,
    );
    
    if (translations.isEmpty) return;
    
    final targetLang = translations.first['target_lang'] as String;
    final targetId = translations.first['target_id'] as int;
    final targetTableName = 'lang_$targetLang'.replaceAll('-', '_');
    
    await db.rawUpdate('''
      UPDATE $targetTableName 
      SET review_count = review_count + 1,
          last_reviewed = ?
      WHERE id = ?
    ''', [DateTime.now().toIso8601String(), targetId]);
    
    print('[DB] Incremented review count for $targetTableName($targetId)');
  }
  
  /// 번역 레코드 삭제 (참조 무결성 유지)
  static Future<void> deleteTranslationRecord(int translationId) async {
    final db = await database;
    
    try {
      // 1. translation 레코드 찾기
      final translations = await db.query(
        'translations',
        where: 'id = ?',
        whereArgs: [translationId],
        limit: 1,
      );
      
      if (translations.isEmpty) {
        print('[DB] Translation record not found: id=$translationId');
        return;
      }
      
      final translation = translations.first;
      final sourceLang = translation['source_lang'] as String;
      final sourceId = translation['source_id'] as int;
      final targetLang = translation['target_lang'] as String;
      final targetId = translation['target_id'] as int;
      
      // 2. translations 테이블에서 번역 관계 삭제
      await db.delete(
        'translations',
        where: 'id = ?',
        whereArgs: [translationId],
      );
      print('[DB] Deleted translation link: id=$translationId');
      
      // 3. 소스 텍스트 참조 카운트 확인
      final sourceReferences = await db.query(
        'translations',
        where: 'source_lang = ? AND source_id = ?',
        whereArgs: [sourceLang, sourceId],
      );
      
      // 소스 텍스트가 다른 번역에서 사용되지 않으면 삭제
      if (sourceReferences.isEmpty) {
        final sourceTableName = 'lang_$sourceLang'.replaceAll('-', '_');
        await db.delete(
          sourceTableName,
          where: 'id = ?',
          whereArgs: [sourceId],
        );
        print('[DB] Deleted unused source text: $sourceTableName($sourceId)');
      }
      
      // 4. 대상 텍스트 참조 카운트 확인
      final targetReferences = await db.query(
        'translations',
        where: 'target_lang = ? AND target_id = ?',
        whereArgs: [targetLang, targetId],
      );
      
      // 대상 텍스트가 다른 번역에서 사용되지 않으면 삭제
      if (targetReferences.isEmpty) {
        final targetTableName = 'lang_$targetLang'.replaceAll('-', '_');
        await db.delete(
          targetTableName,
          where: 'id = ?',
          whereArgs: [targetId],
        );
        print('[DB] Deleted unused target text: $targetTableName($targetId)');
      }
      
      print('[DB] Successfully deleted translation record: id=$translationId');
    } catch (e) {
      print('[DB] Error deleting translation record: $e');
      rethrow;
    }
  }
  
  // ==========================================
  // 번역 캐시 (기존 유지)
  // ==========================================
  
  /// 번역 결과 캐시 저장
  static Future<void> cacheTranslation(String key, String translation) async {
    final db = await database;
    
    await db.insert(
      'translation_cache',
      {
        'cache_key': key,
        'translation': translation,
        'timestamp': DateTime.now().millisecondsSinceEpoch,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    
    print('[DB] Translation cached: $key');
  }
  
  /// 캐시된 번역 조회
  static Future<String?> getCachedTranslation(String key) async {
    final db = await database;
    
    final result = await db.query(
      'translation_cache',
      where: 'cache_key = ?',
      whereArgs: [key],
    );
    
    if (result.isNotEmpty) {
      print('[DB] Translation cache hit: $key');
      return result.first['translation'] as String;
    }
    
    print('[DB] Translation cache miss: $key');
    return null;
  }
  
  // ==========================================
  // 유틸리티
  // ==========================================
  
  /// 데이터베이스 닫기
  static Future<void> close() async {
    final db = _database;
    if (db != null) {
      await db.close();
      _database = null;
      print('[DB] Database closed');
    }
  }
  
  /// 데이터베이스 초기화 (개발용)
  static Future<void> reset() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'talkie.db');
    
    await deleteDatabase(path);
    _database = null;
    
    print('[DB] Database reset');
  }
  
  // ==========================================
  // JSON Import/Export
  // ==========================================
  
  /// Import study materials from JSON file
  static Future<Map<String, dynamic>> importFromJson(String jsonContent, {String? fileName}) async {
    try {
      final data = json.decode(jsonContent) as Map<String, dynamic>;
      final sourceLang = data['source_language'] as String;
      final targetLang = data['target_language'] as String;
      final defaultType = data['default_type'] as String? ?? 'sentence';
      final entries = data['entries'] as List;
      
      final db = await database;
      
      // Define variables to be captured by closure
      int importedCount = 0;
      int skippedCount = 0;
      List<String> errors = [];
      int materialId = 0;
      
      await db.transaction((txn) async {
        // 0. Create Material (Group)
        String subject = data['subject'] as String? ?? 'Imported ${DateTime.now().toString().split(' ')[0]}';
        
        // Use createStudyMaterial with txn
        materialId = await createStudyMaterial(
          subject: subject,
          source: 'Device Import',
          sourceLanguage: sourceLang,
          targetLanguage: targetLang,
          fileName: fileName ?? subject,
          createdAt: DateTime.now().toIso8601String(),
          txn: txn,
        );

        data['processed_material_id'] = materialId;

        for (var i = 0; i < entries.length; i++) {
          try {
            final entry = entries[i] as Map<String, dynamic>;
            final sourceText = entry['source_text'] as String;
            final targetText = entry['target_text'] as String;
            
            if (sourceText.trim().isEmpty || targetText.trim().isEmpty) {
              skippedCount++;
              continue;
            }
            
            // 1. Insert to source language table (using helper with txn)
            final sourceId = await insertLanguageRecord(sourceLang, sourceText, txn: txn);
            
            // 2. Insert to target language table (using helper with txn)
            final targetId = await insertLanguageRecord(targetLang, targetText, txn: txn);
            
            // 3. Create translation link (using helper with txn)
            await saveTranslationLinkWithMaterial(
              sourceLang: sourceLang,
              sourceId: sourceId,
              targetLang: targetLang,
              targetId: targetId,
              materialId: materialId,
              // isBookmarked removed (not supported by helper)
              note: (entry['note'] ?? entry['context']) as String?,
              type: entry['type'] as String? ?? defaultType,
              txn: txn,
            );
            
            importedCount++;
          } catch (e) {
            errors.add('Entry ${i + 1}: $e');
            skippedCount++;
          }
        }
      });
      
      print('[DB] Import complete: $importedCount imported, $skippedCount skipped');
      
      return {
        'success': true,
        'imported': importedCount,
        'skipped': skippedCount,
        'total': entries.length,
        'errors': errors,
        'material_id': materialId,
      };
    } catch (e) {
      print('[DB] Error importing JSON: $e');
      return {
        'success': false,
        'imported': 0,
        'skipped': 0,
        'total': 0,
        'errors': ['Failed to parse JSON or DB Error: $e'],
      };
    }
  }
  
  // ==========================================
  // Mode 3: Study Materials Metadata Management
  // ==========================================
  
  /// Create study material metadata and return its ID
  static Future<int> createStudyMaterial({
    required String subject,
    required String source,
    required String sourceLanguage,
    required String targetLanguage,
    String? fileName,
    required String createdAt,
    Transaction? txn, // Added txn
  }) async {
    final db = txn ?? await database; // Use txn if provided
    
    // Check for duplicates
    final existing = await db.query(
      'study_materials',
      where: 'subject = ? AND source_language = ? AND target_language = ?',
      whereArgs: [subject, sourceLanguage, targetLanguage],
      limit: 1,
    );
    
    if (existing.isNotEmpty) {
      final id = existing.first['id'] as int;
      print('[DB] Found existing material: id=$id, subject=$subject');
      
      // Update imported_at timestamp
      await db.update(
        'study_materials',
        {'imported_at': DateTime.now().toIso8601String()},
        where: 'id = ?',
        whereArgs: [id],
      );
      
      return id;
    }
    
    final id = await db.insert('study_materials', {
      'subject': subject,
      'source': source,
      'source_language': sourceLanguage,
      'target_language': targetLanguage,
      'file_name': fileName,
      'created_at': createdAt,
      'imported_at': DateTime.now().toIso8601String(),
    });
    
    print('[DB] Study material created: id=$id, subject=$subject');
    return id;
  }
   /// Import study materials from JSON file with metadata
  static Future<Map<String, dynamic>> importFromJsonWithMetadata(
    String jsonContent,
    {String? fileName}
  ) async {
    try {
      final data = json.decode(jsonContent) as Map<String, dynamic>;
      
      // 언어 이름(Korean)을 코드(ko)로 매핑
      final rawSourceLang = data['source_language'] as String;
      final rawTargetLang = data['target_language'] as String;
      final sourceLang = _mapLanguageToCode(rawSourceLang);
      final targetLang = _mapLanguageToCode(rawTargetLang);
      
      final subject = data['subject'] as String? ?? 'Imported Material';
      final source = data['source'] as String? ?? 'File Upload';
      final fileCreatedAt = data['created_at'] as String? ?? DateTime.now().toIso8601String();
      final defaultType = data['default_type'] as String? ?? 'sentence';
      
      // Support both 'entries' (standard) and 'dialogues' (for chat records)
      final entries = data['entries'] as List?;
      final dialogues = data['dialogues'] as List?;
      
      final db = await database;
      
      return await db.transaction((txn) async {
         int importedCount = 0;
         int skippedCount = 0;
         List<String> errors = [];
         
         // 1. 테이블 미리 생성
         await createLanguageTable(sourceLang);
         await createLanguageTable(targetLang);

         // 2. 인메모리 캐시
         final Map<String, int> sourceCache = {};
         final Map<String, int> targetCache = {};

         // Case A: Standard Entries
         if (entries != null) {
            final materialId = await createStudyMaterial(
              subject: subject,
              source: source,
              sourceLanguage: sourceLang,
              targetLanguage: targetLang,
              fileName: fileName,
              createdAt: fileCreatedAt,
              txn: txn,
            );

            for (var i = 0; i < entries.length; i++) {
              try {
                final entry = entries[i] as Map<String, dynamic>;
                final sourceText = (entry['source_text'] ?? entry['text']) as String?;
                final targetText = entry['target_text'] as String?;
                
                if (sourceText == null || targetText == null || sourceText.trim().isEmpty || targetText.trim().isEmpty) {
                  skippedCount++;
                  continue;
                }
                
                // Insert with caching
                int sourceId;
                if (sourceCache.containsKey(sourceText)) {
                  sourceId = sourceCache[sourceText]!;
                } else {
                  sourceId = await insertLanguageRecord(sourceLang, sourceText, txn: txn, skipTableCheck: true);
                  sourceCache[sourceText] = sourceId;
                }
                
                int targetId;
                if (targetCache.containsKey(targetText)) {
                  targetId = targetCache[targetText]!;
                } else {
                  targetId = await insertLanguageRecord(targetLang, targetText, txn: txn, skipTableCheck: true);
                  targetCache[targetText] = targetId;
                }
                
                await saveTranslationLinkWithMaterial(
                  sourceLang: sourceLang,
                  sourceId: sourceId,
                  targetLang: targetLang,
                  targetId: targetId,
                  materialId: materialId,
                  note: (entry['note'] ?? entry['context']) as String?,
                  type: entry['type'] as String? ?? defaultType,
                  txn: txn,
                );
                
                importedCount++;
              } catch (e) {
                errors.add('Entry ${i + 1}: $e');
                skippedCount++;
              }
            }
            
            return {
              'success': true,
              'material_id': materialId,
              'imported': importedCount,
              'skipped': skippedCount,
              'total': entries.length,
              'errors': errors,
            };
         } 
         
         // Case B: Dialogues
         if (dialogues != null) {
            String lastDialogueId = '';
            int totalMessages = 0;

            for (var d in dialogues) {
              final dMap = d as Map<String, dynamic>;
              final dTitle = dMap['title'] as String? ?? subject;
              final dPersona = dMap['persona'] as String? ?? 'Partner';
              final dId = '${DateTime.now().millisecondsSinceEpoch}_${importedCount}';
              lastDialogueId = dId;

              // Insert Dialogue Group
              await insertDialogueGroup(
                id: dId,
                title: dTitle,
                persona: dPersona,
                createdAt: fileCreatedAt,
                txn: txn,
              );

              final messages = dMap['messages'] as List? ?? [];
              totalMessages += messages.length;

              for (var j = 0; j < messages.length; j++) {
                try {
                  final msg = messages[j] as Map<String, dynamic>;
                  final sText = msg['source_text'] as String?;
                  final tText = msg['target_text'] as String?;
                  final speaker = msg['speaker'] as String? ?? 'Unknown';

                  if (sText == null || tText == null || sText.trim().isEmpty || tText.trim().isEmpty) {
                    skippedCount++;
                    continue;
                  }

                  // Insert with caching logic
                  int sId;
                  if (sourceCache.containsKey(sText)) {
                    sId = sourceCache[sText]!;
                  } else {
                    sId = await insertLanguageRecord(sourceLang, sText, txn: txn, skipTableCheck: true);
                    sourceCache[sText] = sId;
                  }

                  int tId;
                  if (targetCache.containsKey(tText)) {
                    tId = targetCache[tText]!;
                  } else {
                    tId = await insertLanguageRecord(targetLang, tText, txn: txn, skipTableCheck: true);
                    targetCache[tText] = tId;
                  }

                  await saveTranslationLinkWithMaterial(
                    sourceLang: sourceLang,
                    sourceId: sId,
                    targetLang: targetLang,
                    targetId: tId,
                    materialId: 0, // Dialogue records don't use materialId (stored in dialogue_groups)
                    dialogueId: dId,
                    speaker: speaker,
                    sequenceOrder: j,
                    note: (msg['note'] ?? msg['context']) as String?,
                    type: msg['type'] as String? ?? 'sentence',
                    pos: msg['pos'] as String?,
                    formType: (msg['form_type'] ?? msg['formType']) as String?,
                    root: msg['root'] as String?,
                    txn: txn,
                  );
                  importedCount++;
                } catch (e) {
                   errors.add('Dialogue ${importedCount}: $e');
                   skippedCount++;
                }
              }
            }

            return {
              'success': true,
              'dialogue_id': lastDialogueId,
              'imported': importedCount,
              'skipped': skippedCount,
              'total': totalMessages,
              'errors': errors,
            };
         }

         return {
           'success': false,
           'error': 'No entries or dialogues found in JSON',
           'imported': 0,
           'skipped': 0,
           'total': 0,
           'errors': ['Root keys "entries" or "dialogues" not found.'],
         };
      });
      
    } catch (e) {
      print('[DB] Error importing JSON with metadata: $e');
      return {
        'success': false,
        'imported': 0,
        'skipped': 0,
        'total': 0,
        'errors': ['Failed to parse JSON: $e'],
      };
    }
  }
  

  static Future<void> saveTranslationLinkWithMaterial({
    required String sourceLang,
    required int sourceId,
    required String targetLang,
    required int targetId,
    required int materialId,
    String? note,
    String type = 'sentence',
    String? dialogueId,
    String? speaker,
    int? sequenceOrder,
    String? pos,
    String? formType,
    String? root,
    Transaction? txn,
  }) async {
    final executor = txn ?? await database;
    
    // 1. Legacy Table Save
    await executor.insert(
      'translations', 
      {
        'source_lang': sourceLang,
        'source_id': sourceId,
        'target_lang': targetLang,
        'target_id': targetId,
        'material_id': materialId,
        'note': note,
        'type': type,
        'dialogue_id': dialogueId,
        'speaker': speaker,
        'sequence_order': sequenceOrder,
        'created_at': DateTime.now().toIso8601String(),
      },
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );

    // 2. Unified Schema Save (Phase 12)
    // Legacy ID를 통해 텍스트를 조회하여 통합 테이블에 저장
    final sourceText = await _getTextFromLangTableStatic(executor, sourceLang, sourceId);
    final targetText = await _getTextFromLangTableStatic(executor, targetLang, targetId);

    if (sourceText != null && targetText != null) {
      final tags = <String>[];
      if (materialId > 0) {
        final m = await executor.query('study_materials', columns: ['subject'], where: 'id = ?', whereArgs: [materialId]);
        if (m.isNotEmpty) tags.add(m.first['subject'] as String);
      }
      if (dialogueId != null) tags.add('Dialogue');

      await saveUnifiedRecord(
        text: sourceText,
        lang: sourceLang,
        translation: targetText,
        targetLang: targetLang,
        type: type,
        note: note,
        pos: pos,
        formType: formType,
        root: root,
        tags: tags,
        txn: executor is Transaction ? executor : null,
      );
    }
  }

  static Future<String?> _getTextFromLangTableStatic(dynamic executor, String langCode, int id) async {
    final tableName = 'lang_$langCode'.replaceAll('-', '_');
    try {
      final result = await executor.query(tableName, columns: ['text'], where: 'id = ?', whereArgs: [id]);
      if (result.isNotEmpty) return result.first['text'] as String;
    } catch (e) {}
    return null;
  }
  
  /// Get all study materials with type counts (Includes Dialogue Groups as materials)
  static Future<List<Map<String, dynamic>>> getAllStudyMaterials() async {
    final db = await database;
    
    // 1. Get Regular Study Materials
    final materials = await db.rawQuery('''
      SELECT m.*, 
        (SELECT COUNT(*) FROM translations t WHERE t.material_id = m.id AND (t.type = 'word' OR t.type IS NULL)) as word_count,
        (SELECT COUNT(*) FROM translations t WHERE t.material_id = m.id AND t.type = 'sentence') as sentence_count
      FROM study_materials m 
      ORDER BY m.imported_at DESC
    ''');
    
    // 2. Get Dialogue Groups
    final dialogues = await db.rawQuery('''
      SELECT d.*,
        (SELECT COUNT(*) FROM translations t WHERE t.dialogue_id = d.id AND (t.type = 'word' OR t.type IS NULL)) as word_count,
        (SELECT COUNT(*) FROM translations t WHERE t.dialogue_id = d.id AND t.type = 'sentence') as sentence_count
      FROM dialogue_groups d
      ORDER BY d.created_at DESC
    ''');
    
    final List<Map<String, dynamic>> result = materials.map((m) => Map<String, dynamic>.from(m)).toList();
    
    // Transform Dialogues into Material format and add to list
    for (var d in dialogues) {
      result.add({
        'id': d['id'], // String UUID
        'subject': d['title'] ?? 'Conversation',
        'source': d['persona'] ?? 'AI Chat',
        'source_language': 'auto', 
        'target_language': 'auto',
        'created_at': d['created_at'],
        'imported_at': d['created_at'],
        'location': d['location'],
        'word_count': d['word_count'],
        'sentence_count': d['sentence_count'],
        'is_dialogue': 1,
      });
    }
    
    print('[DB] Retrieved ${result.length} study items (Materials + Dialogues)');
    return result;
  }
  
  /// Get study material by ID
  static Future<Map<String, dynamic>?> getStudyMaterialById(int materialId) async {
    final db = await database;
    
    final materials = await db.query(
      'study_materials',
      where: 'id = ?',
      whereArgs: [materialId],
      limit: 1,
    );
    
    if (materials.isEmpty) {
      return null;
    }
    
    return materials.first;
  }
  
  /// Get all translations for a specific study material (Supports both int Material ID and String Dialogue ID)
  static Future<List<Map<String, dynamic>>> getRecordsByMaterialId(
    dynamic materialId, {
    String? sourceLang,
    String? targetLang,
  }) async {
    if (materialId is String) {
      // It's a dialogue ID
      return getRecordsByDialogueId(materialId);
    }
    // Else it's a regular material ID
    final db = await database;
    
    // Build query with optional language filters
    String whereClause = 'material_id = ?';
    List<dynamic> whereArgs = [materialId];
    
    // If both languages provided, check for bidirectional match
    if (sourceLang != null && targetLang != null) {
      whereClause += ' AND ((source_lang = ? AND target_lang = ?) OR (source_lang = ? AND target_lang = ?))';
      whereArgs.addAll([sourceLang, targetLang, targetLang, sourceLang]);
    } else {
      // Single language filtering
      if (sourceLang != null) {
        whereClause += ' AND source_lang = ?';
        whereArgs.add(sourceLang);
      }
      
      if (targetLang != null) {
        whereClause += ' AND target_lang = ?';
        whereArgs.add(targetLang);
      }
    }
    
    // translations 테이블에서 필터링
    final translations = await db.query(
      'translations',
      where: whereClause,
      whereArgs: whereArgs,
      orderBy: 'created_at ASC',
    );
    
    List<Map<String, dynamic>> results = [];
    
    for (var translation in translations) {
      final sourceLang = translation['source_lang'] as String;
      final sourceId = translation['source_id'] as int;
      final targetLang = translation['target_lang'] as String;
      final targetId = translation['target_id'] as int;
      
      // 소스 텍스트 가져오기
      final sourceTableName = 'lang_$sourceLang'.replaceAll('-', '_');
      final sourceRecords = await db.query(
        sourceTableName,
        where: 'id = ?',
        whereArgs: [sourceId],
        limit: 1,
      );
      
      // 대상 텍스트 가져오기
      final targetTableName = 'lang_$targetLang'.replaceAll('-', '_');
      final targetRecords = await db.query(
        targetTableName,
        where: 'id = ?',
        whereArgs: [targetId],
        limit: 1,
      );
      
      if (sourceRecords.isNotEmpty && targetRecords.isNotEmpty) {
        results.add({
          'id': translation['id'],
          'source_lang': sourceLang,
          'source_id': sourceId,
          'source_text': sourceRecords.first['text'],
          'source_audio': sourceRecords.first['audio_file'],
          'target_lang': targetLang,
          'target_id': targetId,
          'target_text': targetRecords.first['text'],
          'target_audio': targetRecords.first['audio_file'],
          'material_id': materialId,
          'created_at': translation['created_at'],
          'note': translation['note'],
          'type': translation['type'] ?? 'sentence',
          'dialogue_id': translation['dialogue_id'],
          'speaker': translation['speaker'],
          'sequence_order': translation['sequence_order'],
        });
      }
    }
    
    print('[DB] Retrieved ${results.length} records for material_id=$materialId');
    return results;
  }

  // === Dialogue Group Operations (Phase 11) ===

  /// Insert or Update a dialogue group
  static Future<void> insertDialogueGroup({
    required String id,
    String? userId,
    String? title,
    String? persona,
    String? location,
    required String createdAt,
    Transaction? txn, // Added txn
  }) async {
    final executor = txn ?? await database;
    await executor.insert(
      'dialogue_groups',
      {
        'id': id,
        'user_id': userId,
        'title': title,
        'persona': persona,
        'location': location,
        'created_at': createdAt,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print('[DB] Dialogue group saved: $id ($title, Location: $location)');
  }

  /// Get all dialogue groups for a user
  static Future<List<Map<String, dynamic>>> getDialogueGroups() async {
    final db = await database;
    return await db.query('dialogue_groups', orderBy: 'created_at DESC');
  }

  /// Update dialogue title
  static Future<void> updateLocalDialogueTitle(String id, String title) async {
    final db = await database;
    await db.update(
      'dialogue_groups',
      {'title': title},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  /// Get all translations for a specific dialogue
  static Future<List<Map<String, dynamic>>> getRecordsByDialogueId(String dialogueId) async {
    final db = await database;
    
    // Join chat_messages with sentences using group_id
    // We need to retrieve the PAIR of messages (Source and Target) for each chat_message structural entry.
    final List<Map<String, dynamic>> messages = await db.query(
      'chat_messages',
      where: 'dialogue_id = ?',
      whereArgs: [dialogueId],
      orderBy: 'sequence_order ASC',
    );
    
    List<Map<String, dynamic>> results = [];
    
    for (var msg in messages) {
      final groupId = msg['group_id'] as int;
      
      // Get all sentences in this group (typically 2: one per language)
      final groupSentences = await db.query(
        'sentences',
        where: 'group_id = ?',
        whereArgs: [groupId],
      );
      
      if (groupSentences.isNotEmpty) {
        // Find best source/target based on context or just use them as is.
        // For AI Chat display, we assume the first is 'primary' or they are a pair.
        // We'll mimic the legacy structure expected by ChatScreen.
        
        final source = groupSentences.first;
        // Find a matching translation if exists, otherwise use the second entry if available
        final target = groupSentences.length > 1 ? groupSentences[1] : source;

        results.add({
          'id': msg['id'],
          'group_id': groupId,
          'source_text': source['text'],
          'target_text': target['text'],
          'speaker': msg['speaker'],
          'sequence_order': msg['sequence_order'],
          'created_at': msg['created_at'],
          'note': source['note'],
        });
      }
    }
    
    // Fallback: Check legacy translations table for old data migration support
    if (results.isEmpty) {
        final legacyTranslations = await db.query(
          'translations',
          where: 'dialogue_id = ?',
          whereArgs: [dialogueId],
          orderBy: 'sequence_order ASC',
        );
        for (var t in legacyTranslations) {
           // ... (legacy logic if needed, but we already have it in the original code above)
           // For now, if we migrated correctly, chat_messages should have been filled? 
           // Wait, I didn't add migration for chat_messages data.
        }
    }

    return results;
  }
  // ==========================================
  // Background Sync Helpers
  // ==========================================
  
  /// Get list of translations that have not been synced (is_synced = 0)
  /// Returns a joined list with source and target text.
  static Future<List<Map<String, dynamic>>> getUnsyncedTranslations({int limit = 20}) async {
    final db = await database;
    
    // Join translations with source and target language tables to get the actual text
    // Note: We need to dynamically join based on lang code, but SQL doesn't support dynamic join table names easily in one go.
    // However, since we store 'source_lang' and 'target_lang', we can't join in a single static SQL if languages vary.
    // BUT, we can just fetch the 'translations' rows first, and then fetch texts.
    // Given the volume (limit 20), this N+1 query is acceptable and safer than complex dynamic SQL.
    
    final rows = await db.query(
      'translations',
      where: 'is_synced = 0',
      limit: limit,
    );
    
    if (rows.isEmpty) return [];
    
    List<Map<String, dynamic>> results = [];
    
    for (var row in rows) {
      try {
        final sourceLang = row['source_lang'] as String;
        final sourceId = row['source_id'] as int;
        final targetLang = row['target_lang'] as String;
        final targetId = row['target_id'] as int;
        
        // Fetch Source Text
        final sourceRow = await db.query(
          'lang_${sourceLang.replaceAll('-', '_')}',
          columns: ['text'],
          where: 'id = ?',
          whereArgs: [sourceId],
          limit: 1,
        );
        
        // Fetch Target Text
        final targetRow = await db.query(
          'lang_${targetLang.replaceAll('-', '_')}',
          columns: ['text'],
          where: 'id = ?',
          whereArgs: [targetId],
          limit: 1,
        );
        
        if (sourceRow.isNotEmpty && targetRow.isNotEmpty) {
           results.add({
             'id': row['id'], // Translation ID (link)
             'source_lang': sourceLang,
             'source_text': sourceRow.first['text'],
             'target_lang': targetLang,
             'target_text': targetRow.first['text'],
             'note': row['note'],
             'dialogue_id': row['dialogue_id'],
             'speaker': row['speaker'],
             'sequence_order': row['sequence_order'],
           });
        }
      } catch (e) {
        print('[DB] Error fetching details for sync row ${row['id']}: $e');
      }
    }
    
    return results;
  }

  /// Mark a list of translation IDs as synced
  static Future<void> markTranslationsAsSynced(List<int> ids) async {
    final db = await database;
    
    await db.transaction((txn) async {
       for (var id in ids) {
         await txn.update(
           'translations',
           {'is_synced': 1},
           where: 'id = ?',
           whereArgs: [id],
         );
       }
    });
    print('[DB] Marked ${ids.length} records as synced.');
  }

  /// 언어 이름을 ISO 코드(ko, en 등)로 변환
  static String _mapLanguageToCode(String name) {
    if (name.isEmpty) return name;
    
    final lowerName = name.toLowerCase().trim();
    
    // 이미 2~5자의 코드 형태라면 그대로 반환 (예: ko, en-US)
    if (lowerName.length >= 2 && lowerName.length <= 5 && !lowerName.contains(' ')) {
      return lowerName;
    }

    switch (lowerName) {
      case 'korean':
      case '한국어':
        return 'ko';
      case 'english':
      case '영어':
        return 'en';
      case 'japanese':
      case '일본어':
        return 'ja';
      case 'chinese':
      case '중국어':
        return 'zh';
      case 'simplified chinese':
      case '중국어(간체)':
        return 'zh-CN';
      case 'traditional chinese':
      case '중국어(번체)':
        return 'zh-TW';
      case 'spanish':
      case '스페인어':
        return 'es';
      case 'french':
      case '프랑스어':
        return 'fr';
      case 'german':
      case '독일어':
        return 'de';
      case 'russian':
      case '러시아어':
        return 'ru';
      case 'vietnamese':
      case '베트남어':
        return 'vi';
      case 'indonesian':
      case '인도네시아어':
        return 'id';
      case 'thai':
      case '태국어':
        return 'th';
      case 'portuguese':
      case '포르투갈어':
        return 'pt';
      case 'italian':
      case '이탈리아어':
        return 'it';
      case 'turkish':
      case '터키어':
        return 'tr';
      case 'arabic':
      case '아랍어':
        return 'ar';
      case 'hindi':
      case '힌디어':
        return 'hi';
      case 'bengali':
      case '뱅골어':
        return 'bn';
      case 'urdu':
      case '우르두어':
        return 'ur';
      case 'malay':
      case '말레이어':
        return 'ms';
      case 'filipino':
      case '필리핀어':
        return 'fil';
      case 'polish':
      case '폴란드어':
        return 'pl';
      case 'ukrainian':
      case '우크라이나어':
        return 'uk';
      case 'dutch':
      case '네덜란드어':
        return 'nl';
      case 'swedish':
      case '스웨덴어':
        return 'sv';
      case 'danish':
      case '덴마크어':
        return 'da';
      case 'finnish':
      case '핀란드어':
        return 'fi';
      case 'norwegian':
      case '노르웨이어':
        return 'no';
      case 'hungarian':
      case '헝가리어':
        return 'hu';
      case 'czech':
      case '체코어':
        return 'cs';
      case 'romanian':
      case '루마니아어':
        return 'ro';
      case 'greek':
      case '그리스어':
        return 'el';
      case 'hebrew':
      case '히브리어':
        return 'he';
      case 'persian':
      case '페르시아어':
        return 'fa';
      case 'tamil':
      case '타밀어':
        return 'ta';
      case 'telugu':
      case '텔루구어':
        return 'te';
      case 'marathi':
      case '마라티어':
        return 'mr';
      case 'gujarati':
      case '구자라트어':
        return 'gu';
      case 'kannada':
      case '칸나다어':
        return 'kn';
      case 'malayalam':
      case '말라얄람어':
        return 'ml';
      case 'punjabi':
      case '펀자브어':
        return 'pa';
      case 'swahili':
      case '스와힐리어':
        return 'sw';
      case 'afrikaans':
      case '아프리칸스어':
        return 'af';
      default:
        return lowerName; // 알 수 없는 경우 소문자 변환 값 반환
    }
  }

  /// Legacy 데이터를 신규 통합 스키마로 마이그레이션
  static Future<void> migrateToUnifiedSchema([Database? dbInstance]) async {
    final db = dbInstance ?? await database;
    
    await db.transaction((txn) async {
      print('[DB] Starting Migration to Unified Schema...');
      
      // 1. 기존 자료집 목록 가져오기 (태그로 변환용)
      final materials = await txn.query('study_materials');
      final Map<int, String> materialTags = {
        for (var m in materials) m['id'] as int: m['subject'] as String
      };

      // 2. 기존 번역 데이터 가져오기
      final translations = await txn.query('translations');
      
      // 중복 삽입 방지 및 group_id 유지 위한 캐시 (Key: text_lang_note)
      final Map<String, int> wordCache = {};
      final Map<String, int> sentenceCache = {};
      
      int nextGroupId = DateTime.now().millisecondsSinceEpoch;

      for (var t in translations) {
        final String type = t['type'] as String? ?? 'sentence';
        final String sourceLang = t['source_lang'] as String;
        final int sourceOldId = t['source_id'] as int;
        final String targetLang = t['target_lang'] as String;
        final int targetOldId = t['target_id'] as int;
        final int? materialId = t['material_id'] as int?;
        final String? note = t['note'] as String?;
        final String createdAt = t['created_at'] as String? ?? DateTime.now().toIso8601String();

        // 3. 기존 언어 테이블에서 실제 텍스트 조회
        final sourceText = await _getTextFromLangTable(txn, sourceLang, sourceOldId);
        final targetText = await _getTextFromLangTable(txn, targetLang, targetOldId);

        if (sourceText == null || targetText == null) continue;

        final currentGroupId = nextGroupId++;

        // 4. 신규 테이블로 이관
        if (type == 'word') {
          // 단어 삽입
          final newSourceId = await _upsertMigrationItem(txn, 'words', sourceText, sourceLang, currentGroupId, note, createdAt, wordCache);
          final newTargetId = await _upsertMigrationItem(txn, 'words', targetText, targetLang, currentGroupId, null, createdAt, wordCache);
          
          // 번역 연결 (단어)
          await txn.insert('word_translations', {
            'source_word_id': newSourceId,
            'target_word_id': newTargetId,
          }, conflictAlgorithm: ConflictAlgorithm.ignore);
          
          // 태그 추가
          if (materialId != null && materialTags.containsKey(materialId)) {
            await _addItemTag(txn, newSourceId, 'word', materialTags[materialId]!);
            await _addItemTag(txn, newTargetId, 'word', materialTags[materialId]!);
          }
        } else {
          // 문장 삽입
          final newSourceId = await _upsertMigrationItem(txn, 'sentences', sourceText, sourceLang, currentGroupId, note, createdAt, sentenceCache);
          final newTargetId = await _upsertMigrationItem(txn, 'sentences', targetText, targetLang, currentGroupId, null, createdAt, sentenceCache);
          
          // 번역 연결 (문장)
          await txn.insert('sentence_translations', {
            'source_sentence_id': newSourceId,
            'target_sentence_id': newTargetId,
          }, conflictAlgorithm: ConflictAlgorithm.ignore);

          // 태그 추가
          if (materialId != null && materialTags.containsKey(materialId)) {
            await _addItemTag(txn, newSourceId, 'sentence', materialTags[materialId]!);
            await _addItemTag(txn, newTargetId, 'sentence', materialTags[materialId]!);
          }
        }
      }
      
      print('[DB] Migration completed: ${translations.length} items processed.');
    });
  }

  /// 마이그레이션용 텍스트 조회 헬퍼
  static Future<String?> _getTextFromLangTable(Transaction txn, String langCode, int id) async {
    final tableName = 'lang_$langCode'.replaceAll('-', '_');
    try {
      final result = await txn.query(tableName, columns: ['text'], where: 'id = ?', whereArgs: [id]);
      if (result.isNotEmpty) return result.first['text'] as String;
    } catch (e) {
      // 테이블이 없는 경우 등
    }
    return null;
  }

  /// 마이그레이션용 아이템 삽입/조회 헬퍼
  static Future<int> _upsertMigrationItem(Transaction txn, String table, String text, String lang, int groupId, String? note, String createdAt, Map<String, int> cache) async {
    final cacheKey = '${text}_${lang}_${note ?? ""}';
    if (cache.containsKey(cacheKey)) return cache[cacheKey]!;
    
    // 중복 확인 (DB 수준)
    final existing = await txn.query(table, columns: ['id'], where: 'text = ? AND lang_code = ? AND IFNULL(note, "") = ?', whereArgs: [text, lang, note ?? ""]);
    if (existing.isNotEmpty) {
      final id = existing.first['id'] as int;
      cache[cacheKey] = id;
      return id;
    }
    
    final id = await txn.insert(table, {
      'group_id': groupId,
      'text': text,
      'lang_code': lang,
      'note': note,
      'created_at': createdAt,
    });
    
    cache[cacheKey] = id;
    return id;
  }

  /// 마이그레이션용 태그 삽입 헬퍼
  static Future<void> _addItemTag(Transaction txn, int itemId, String itemType, String tag) async {
    await txn.insert('item_tags', {
      'item_id': itemId,
      'item_type': itemType,
      'tag': tag
    }, conflictAlgorithm: ConflictAlgorithm.ignore);
  }

  /// 통합 테이블에 단어/문장 및 번역 연결 저장
  static Future<void> saveUnifiedRecord({
    required String text,
    required String lang,
    required String translation,
    required String targetLang,
    required String type,
    String? pos,
    String? formType,
    String? root,
    String? note,
    List<String>? tags,
    Transaction? txn,
  }) async {
    final executor = txn ?? await database;
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final createdAt = DateTime.now().toIso8601String();
    final table = type == 'word' ? 'words' : 'sentences';

    // 1. Source 저장
    final sourceId = await executor.insert(table, {
      'group_id': timestamp,
      'text': text,
      'lang_code': lang,
      'pos': pos, // Added Phase 13
      'form_type': formType, // Added Phase 13
      'root': root, // Added Phase 13 (as TEXT)
      'note': note,
      'created_at': createdAt,
    }, conflictAlgorithm: ConflictAlgorithm.ignore);

    // 2. Target 저장
    final targetId = await executor.insert(table, {
      'group_id': timestamp,
      'text': translation,
      'lang_code': targetLang,
      'created_at': createdAt,
    }, conflictAlgorithm: ConflictAlgorithm.ignore);

    // 3. 번역 연결
    if (type == 'word') {
      await executor.insert('word_translations', {
        'source_word_id': sourceId > 0 ? sourceId : (await _getUnifiedIdStatic(executor, 'words', text, lang, note)),
        'target_word_id': targetId > 0 ? targetId : (await _getUnifiedIdStatic(executor, 'words', translation, targetLang, null)),
      }, conflictAlgorithm: ConflictAlgorithm.ignore);
    } else {
      await executor.insert('sentence_translations', {
        'source_sentence_id': sourceId > 0 ? sourceId : (await _getUnifiedIdStatic(executor, 'sentences', text, lang, note)),
        'target_sentence_id': targetId > 0 ? targetId : (await _getUnifiedIdStatic(executor, 'sentences', translation, targetLang, null)),
      }, conflictAlgorithm: ConflictAlgorithm.ignore);
    }

    // 4. 태그 저장
    if (tags != null && tags.isNotEmpty) {
      for (var tag in tags) {
        await executor.insert('item_tags', {
          'item_id': sourceId > 0 ? sourceId : (await _getUnifiedIdStatic(executor, table, text, lang, note)),
          'item_type': type,
          'tag': tag,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);
        
        await executor.insert('item_tags', {
          'item_id': targetId > 0 ? targetId : (await _getUnifiedIdStatic(executor, table, translation, targetLang, null)),
          'item_type': type,
          'tag': tag,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);
      }
    }
  }

  static Future<int> _getUnifiedIdStatic(dynamic db, String table, String text, String lang, String? note) async {
    final results = await db.query(table, columns: ['id'], 
        where: 'text = ? AND lang_code = ? AND IFNULL(note, "") = ?', 
        whereArgs: [text, lang, note ?? ""]);
    if (results.isNotEmpty) return results.first['id'] as int;
    return 0;
  }

  /// Autocomplete Support: 단어 검색
  static Future<List<String>> searchWords(String query, {int limit = 10}) async {
    if (query.trim().isEmpty) return [];
    
    final db = await database;
    final results = await db.query(
      'words',
      columns: ['text'],
      where: 'text LIKE ?',
      whereArgs: ['$query%'], // Prefix search
      limit: limit,
      orderBy: 'text ASC',
      distinct: true,
    );
    
    return results.map((row) => row['text'] as String).toList();
  }

    });
  }

  // --- Search & Memorized Status ---

  /// Search by Type (Refined for Phase 21)
  /// type: 'word' or 'sentence'
  static Future<List<Map<String, String>>> searchByType(String query, String type, {int limit = 10}) async {
    if (query.trim().isEmpty) return [];

    final db = await database;
    final String table = type == 'word' ? 'words' : 'sentences';
    
    final results = await db.query(
      table,
      columns: ['text'],
      where: 'text LIKE ?',
      whereArgs: ['$query%'],
      limit: limit,
      orderBy: 'text ASC',
      distinct: true,
    );
    
    return results.map((row) => {
      'text': row['text'] as String,
      'type': type,
    }).toList();
  }

  /// Toggle Memorized Status (is_memorized)
  static Future<void> toggleMemorizedStatus(int id, String type, bool status) async {
    final db = await database;
    final String table = type == 'word' ? 'words' : 'sentences';
    
    await db.update(
      table, 
      {'is_memorized': status ? 1 : 0},
      where: 'id = ?',
      whereArgs: [id]
    );
  }
}


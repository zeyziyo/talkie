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
      version: 3, // Version 3: Added study_materials table for Mode 3
      onCreate: (db, version) async {
        await _createBaseTables(db);
        await _ensureDefaultMaterial(db);
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          // Migrate from old schema to new schema
          await _migrateToV2(db);
        }
        if (oldVersion < 3) {
          // Migrate to v3: Add study_materials table
          await _migrateToV3(db);
        }
      },
    );
  }
  
  /// 기본 테이블 생성 (언어별 테이블은 동적 생성)
  static Future<void> _createBaseTables(Database db) async {
    // 번역 관계 테이블
    await db.execute('''
      CREATE TABLE translations (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        source_lang TEXT NOT NULL,
        source_id INTEGER NOT NULL,
        target_lang TEXT NOT NULL,
        target_id INTEGER NOT NULL,
        created_at TEXT NOT NULL,
        material_id INTEGER
      )
    ''');
    
    // 번역 캐시 테이블
    await db.execute('''
      CREATE TABLE translation_cache (
        cache_key TEXT PRIMARY KEY,
        translation TEXT NOT NULL,
        timestamp INTEGER NOT NULL
      )
    ''');
    
    // 학습 자료 메타데이터 테이블 (모드3용)
    await db.execute('''
      CREATE TABLE study_materials (
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
    
    print('[DB] Base tables created successfully');
  }
  
  /// V1에서 V2로 마이그레이션
  static Future<void> _migrateToV2(Database db) async {
    try {
      // 1. 새 테이블 생성
      await _createBaseTables(db);
      
      // 2. 기존 study_records 데이터가 있으면 마이그레이션
      final tables = await db.rawQuery(
        "SELECT name FROM sqlite_master WHERE type='table' AND name='study_records'"
      );
      
      if (tables.isNotEmpty) {
        final oldRecords = await db.query('study_records', orderBy: 'date DESC');
        
        for (var record in oldRecords) {
          final sourceText = record['source_text'] as String;
          final translatedText = record['translated_text'] as String;
          final sourceLang = record['source_lang'] as String;
          final targetLang = record['target_lang'] as String;
          final date = record['date'] as String;
          final reviewCount = record['review_count'] as int? ?? 0;
          
          // 언어별 테이블 생성 (없으면)
          await createLanguageTable(sourceLang);
          await createLanguageTable(targetLang);
          
          // 소스 텍스트 삽입
          final sourceId = await db.insert('lang_$sourceLang', {
            'text': sourceText,
            'audio_file': null,
            'created_at': date,
            'last_reviewed': record['last_reviewed'],
            'review_count': reviewCount,
          });
          
          // 번역 텍스트 삽입
          final targetId = await db.insert('lang_$targetLang', {
            'text': translatedText,
            'audio_file': null,
            'created_at': date,
            'last_reviewed': null,
            'review_count': 0,
          });
          
          // 번역 관계 생성
          await db.insert('translations', {
            'source_lang': sourceLang,
            'source_id': sourceId,
            'target_lang': targetLang,
            'target_id': targetId,
            'created_at': date,
          });
        }
        
        // 3. 기존 테이블 삭제 (선택적)
        // await db.execute('DROP TABLE study_records');
        
        print('[DB] Migrated ${oldRecords.length} records to new schema');
      }
    } catch (e) {
      print('[DB] Migration error: $e');
    }
  }
  
  /// V2에서 V3로 마이그레이션
  static Future<void> _migrateToV3(Database db) async {
    try {
      print('[DB] Starting migration to v3...');
      
      // 1. study_materials 테이블 생성
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
      
      // 2. translations 테이블에 material_id 컬럼 추가
      await db.execute('''
        ALTER TABLE translations ADD COLUMN material_id INTEGER
      ''');
      
      // 3. 기본 학습 자료(ID=0) 생성 - V3 마이그레이션 시 함께 생성
      await _ensureDefaultMaterial(db);
      
      print('[DB] Migration to v3 completed successfully');
    } catch (e) {
      print('[DB] Migration to v3 error: $e');
      // ALTER TABLE은 이미 존재하면 에러가 발생하므로 무시
    }
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
          VALUES (0, 'No', 'Google', 'auto', 'auto', ?, ?)
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
    
    print('[DB] Language table created/verified: $tableName');
  }
  
  /// 언어 테이블에 텍스트 삽입 (중복 시 기존 ID 반환)
  static Future<int> insertLanguageRecord(String langCode, String text) async {
    final db = await database;
    final tableName = 'lang_$langCode'.replaceAll('-', '_');
    
    // 테이블이 없으면 생성
    await createLanguageTable(langCode);
    
    // 중복 검사: 동일한 텍스트가 이미 존재하는지 확인 (대소문자 무시)
    final existing = await db.query(
      tableName,
      where: 'LOWER(text) = LOWER(?)',
      whereArgs: [text],
      limit: 1,
    );
    
    if (existing.isNotEmpty) {
      final existingId = existing.first['id'] as int;
      print('[DB] Found existing text in $tableName: id=$existingId, text=${text.substring(0, text.length > 20 ? 20 : text.length)}...');
      return existingId;
    }
    
    // 새 레코드 삽입
    final id = await db.insert(tableName, {
      'text': text,
      'audio_file': null,
      'created_at': DateTime.now().toIso8601String(),
      'last_reviewed': null,
      'review_count': 0,
    });
    
    print('[DB] Inserted into $tableName: id=$id, text=${text.substring(0, text.length > 20 ? 20 : text.length)}...');
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
  static Future<Map<String, dynamic>?> getTranslationIfExists(
    String sourceLang,
    int sourceId,
    String targetLang,
  ) async {
    final db = await database;
    
    // translations 테이블에서 관계 찾기
    final translations = await db.query(
      'translations',
      where: 'source_lang = ? AND source_id = ? AND target_lang = ?',
      whereArgs: [sourceLang, sourceId, targetLang],
      limit: 1,
    );
    
    if (translations.isEmpty) {
      print('[DB] No existing translation found');
      return null;
    }
    
    final translation = translations.first;
    final targetId = translation['target_id'] as int;
    
    // 대상 언어 테이블에서 텍스트 가져오기
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
    
    print('[DB] Found existing translation: $sourceLang($sourceId) -> $targetLang($targetId)');
    return {
      'target_id': targetId,
      'target_text': targetRecords.first['text'] as String,
      'audio_file': targetRecords.first['audio_file'],
    };
  }
  
  /// 번역 관계 저장 (중복 시 무시)
  static Future<void> saveTranslationLink({
    required String sourceLang,
    required int sourceId,
    required String targetLang,
    required int targetId,
    required int materialId,
  }) async {
    final db = await database;
    
    // 중복 검사: 동일한 번역 관계가 이미 존재하는지 확인
    final existing = await db.query(
      'translations',
      where: 'source_lang = ? AND source_id = ? AND target_lang = ? AND target_id = ?',
      whereArgs: [sourceLang, sourceId, targetLang, targetId],
      limit: 1,
    );
    
    if (existing.isNotEmpty) {
      print('[DB] Translation link already exists: $sourceLang($sourceId) -> $targetLang($targetId)');
      return;
    }
    
    // 새 번역 관계 생성
    await db.insert('translations', {
      'source_lang': sourceLang,
      'source_id': sourceId,
      'target_lang': targetLang,
      'target_id': targetId,
      'created_at': DateTime.now().toIso8601String(),
      'material_id': materialId,
    });
    
    print('[DB] Translation link saved: $sourceLang($sourceId) -> $targetLang($targetId) [Material: $materialId]');
  }
  
  // ==========================================
  // 오디오 파일 저장
  // ==========================================
  
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
  
  // ==========================================
  // 복습 모드용 조회
  // ==========================================
  
  /// 특정 대상 언어로 번역된 모든 레코드 가져오기
  static Future<List<Map<String, dynamic>>> getRecordsByTargetLanguage(
    String targetLang,
  ) async {
    final db = await database;
    
    // translations 테이블에서 대상 언어로 필터링
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
          'target_text': targetRecords.first['text'],
          'translated_text': targetRecords.first['text'], // Alias for Mode2Widget compatibility
          'date': translation['created_at'], // Alias for compatibility
          'created_at': translation['created_at'],
          'review_count': targetRecords.first['review_count'] ?? 0,
          'last_reviewed': targetRecords.first['last_reviewed'],
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
  /// 
  /// Expected JSON format:
  /// {
  ///   "source_language": "ko",
  ///   "target_language": "ja",
  ///   "entries": [
  ///     {"source_text": "안녕하세요", "target_text": "こんにちは"},
  ///     ...
  ///   ]
  /// }
  static Future<Map<String, dynamic>> importFromJson(String jsonContent) async {
    try {
      final data = json.decode(jsonContent) as Map<String, dynamic>;
      final sourceLang = data['source_language'] as String;
      final targetLang = data['target_language'] as String;
      final entries = data['entries'] as List;
      
      int importedCount = 0;
      int skippedCount = 0;
      List<String> errors = [];
      
      for (var i = 0; i < entries.length; i++) {
        try {
          final entry = entries[i] as Map<String, dynamic>;
          final sourceText = entry['source_text'] as String;
          final targetText = entry['target_text'] as String;
          
          if (sourceText.trim().isEmpty || targetText.trim().isEmpty) {
            skippedCount++;
            continue;
          }
          
          // 1. Insert to source language table
          final sourceId = await insertLanguageRecord(sourceLang, sourceText);
          
          // 2. Insert to target language table
          final targetId = await insertLanguageRecord(targetLang, targetText);
          
          // 3. Create translation link
          await saveTranslationLink(
            sourceLang: sourceLang,
            sourceId: sourceId,
            targetLang: targetLang,
            targetId: targetId,
            materialId: 0, // Default to 0 for generic imports if no specific material
          );
          
          importedCount++;
        } catch (e) {
          errors.add('Entry ${i + 1}: $e');
          skippedCount++;
        }
      }
      
      print('[DB] Import complete: $importedCount imported, $skippedCount skipped');
      
      return {
        'success': true,
        'imported': importedCount,
        'skipped': skippedCount,
        'total': entries.length,
        'errors': errors,
      };
    } catch (e) {
      print('[DB] Error importing JSON: $e');
      return {
        'success': false,
        'imported': 0,
        'skipped': 0,
        'total': 0,
        'errors': ['Failed to parse JSON: $e'],
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
  }) async {
    final db = await database;
    
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
      final sourceLang = data['source_language'] as String;
      final targetLang = data['target_language'] as String;
      final subject = data['subject'] as String? ?? 'Unknown';
      final source = data['source'] as String? ?? 'Unknown';
      final fileCreatedAt = data['created_at'] as String? ?? DateTime.now().toIso8601String();
      final entries = data['entries'] as List;
      
      // 1. Create study material metadata
      final materialId = await createStudyMaterial(
        subject: subject,
        source: source,
        sourceLanguage: sourceLang,
        targetLanguage: targetLang,
        fileName: fileName,
        createdAt: fileCreatedAt,
      );
      
      int importedCount = 0;
      int skippedCount = 0;
      List<String> errors = [];
      
      for (var i = 0; i < entries.length; i++) {
        try {
          final entry = entries[i] as Map<String, dynamic>;
          final sourceText = entry['source_text'] as String;
          final targetText = entry['target_text'] as String;
          
          if (sourceText.trim().isEmpty || targetText.trim().isEmpty) {
            skippedCount++;
            continue;
          }
          
          // 2. Insert to source language table
          final sourceId = await insertLanguageRecord(sourceLang, sourceText);
          
          // 3. Insert to target language table
          final targetId = await insertLanguageRecord(targetLang, targetText);
          
          // 4. Create translation link with material_id
          await saveTranslationLinkWithMaterial(
            sourceLang: sourceLang,
            sourceId: sourceId,
            targetLang: targetLang,
            targetId: targetId,
            materialId: materialId,
          );
          
          importedCount++;
        } catch (e) {
          errors.add('Entry ${i + 1}: $e');
          skippedCount++;
        }
      }
      
      print('[DB] Import with metadata complete: $importedCount imported, $skippedCount skipped, material_id=$materialId');
      
      return {
        'success': true,
        'material_id': materialId,
        'imported': importedCount,
        'skipped': skippedCount,
        'total': entries.length,
        'errors': errors,
      };
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
  
  /// Save translation link with material_id
  static Future<void> saveTranslationLinkWithMaterial({
    required String sourceLang,
    required int sourceId,
    required String targetLang,
    required int targetId,
    required int materialId,
  }) async {
    final db = await database;
    
    // 중복 검사: 동일한 번역 관계가 이미 존재하는지 확인
    final existing = await db.query(
      'translations',
      where: 'source_lang = ? AND source_id = ? AND target_lang = ? AND target_id = ?',
      whereArgs: [sourceLang, sourceId, targetLang, targetId],
      limit: 1,
    );
    
    if (existing.isNotEmpty) {
      print('[DB] Translation link already exists: $sourceLang($sourceId) -> $targetLang($targetId)');
      return;
    }
    
    // 새 번역 관계 생성 (material_id 포함)
    await db.insert('translations', {
      'source_lang': sourceLang,
      'source_id': sourceId,
      'target_lang': targetLang,
      'target_id': targetId,
      'material_id': materialId,
      'created_at': DateTime.now().toIso8601String(),
    });
    
    print('[DB] Translation link with material saved: $sourceLang($sourceId) -> $targetLang($targetId), material_id=$materialId');
  }
  
  /// Get all study materials
  static Future<List<Map<String, dynamic>>> getAllStudyMaterials() async {
    final db = await database;
    
    final materials = await db.query(
      'study_materials',
      orderBy: 'imported_at DESC',
    );
    
    print('[DB] Retrieved ${materials.length} study materials');
    return materials;
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
  
  /// Get all translations for a specific study material
  static Future<List<Map<String, dynamic>>> getRecordsByMaterialId(int materialId) async {
    final db = await database;
    
    // translations 테이블에서 material_id로 필터링
    final translations = await db.query(
      'translations',
      where: 'material_id = ?',
      whereArgs: [materialId],
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
        });
      }
    }
    
    print('[DB] Retrieved ${results.length} records for material_id=$materialId');
    return results;
  }
}

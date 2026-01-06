import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

/// DatabaseService - 로컬 데이터베이스 관리
/// 학습 기록, 번역 캐시, 음성 캐시를 SQLite에 저장
class DatabaseService {
  static Database? _database;
  
  /// 데이터베이스 인스턴스 가져오기
  static Future<Database> get database async {
    if (_database != null) return _database!;
    
    _database = await _initDatabase();
    return _database!;
  }
  
  /// 데이터베이스 초기화 및 테이블 생성
  static Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'talkland.db');
    
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // 학습 기록 테이블
        await db.execute('''
          CREATE TABLE study_records (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            source_text TEXT NOT NULL,
            translated_text TEXT NOT NULL,
            source_lang TEXT NOT NULL,
            target_lang TEXT NOT NULL,
            date TEXT NOT NULL,
            review_count INTEGER DEFAULT 0,
            last_reviewed TEXT
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
        
        print('[DB] Database initialized successfully');
      },
    );
  }
  
  // ==========================================
  // 학습 기록 (Study Records)
  // ==========================================
  
  /// 학습 기록 저장
  static Future<int> saveStudyRecord({
    required String sourceText,
    required String translatedText,
    required String sourceLang,
    required String targetLang,
  }) async {
    final db = await database;
    
    final id = await db.insert('study_records', {
      'source_text': sourceText,
      'translated_text': translatedText,
      'source_lang': sourceLang,
      'target_lang': targetLang,
      'date': DateTime.now().toIso8601String(),
      'review_count': 0,
    });
    
    print('[DB] Study record saved: #$id');
    return id;
  }
  
  /// 모든 학습 기록 조회 (최신순)
  static Future<List<Map<String, dynamic>>> getAllStudyRecords() async {
    final db = await database;
    final records = await db.query(
      'study_records',
      orderBy: 'date DESC',
    );
    
    print('[DB] Retrieved ${records.length} study records');
    return records;
  }
  
  /// 복습 횟수 증가
  static Future<void> incrementReviewCount(int id) async {
    final db = await database;
    
    await db.rawUpdate('''
      UPDATE study_records 
      SET review_count = review_count + 1,
          last_reviewed = ?
      WHERE id = ?
    ''', [DateTime.now().toIso8601String(), id]);
    
    print('[DB] Incremented review count for record #$id');
  }
  
  // ==========================================
  // 번역 캐시 (Translation Cache)
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
    final path = join(databasesPath, 'talkland.db');
    
    await deleteDatabase(path);
    _database = null;
    
    print('[DB] Database reset');
  }
}

import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import '../util/log_service.dart';

class DatabaseHelper {
  static Database? _database;
  static const String _dbName = 'talkie.db';
  static const int _dbVersion = 26; // Phase 26: Remove unused fields (pos, style, form_type, caption)

  static Future<Database>? _initFuture;

  static Future<Database> get database async {
    if (_database != null && _database!.isOpen) return _database!;
    
    if (_initFuture != null) {
      debugPrint('[DB] Database is already initializing... waiting for existing Future.');
      return await _initFuture!;
    }
    
    debugPrint('[DB] Starting new database initialization Future.');
    _initFuture = _initDatabase();
    try {
      LogService.info('DB Init: Waiting for Future...');
      _database = await _initFuture!;
      LogService.info('DB Init: SUCCESS (Open: ${_database?.isOpen})');
      return _database!;
    } catch (e, stack) {
      LogService.error('DB Init: FAILED', e, stack);
      _initFuture = null; // Allow retry
      rethrow;
    }
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
    String path;
    if (kIsWeb) {
      path = _dbName;
    } else {
      final standardDatabasesPath = await getDatabasesPath();
      
      // v115: Recovery/Revert migration. 
      // If the user was on v112, their DB might be in the 'documents' folder.
      // We check and move it back to the standard system databases folder.
      if (io.Platform.isAndroid) {
        final docDir = await getApplicationDocumentsDirectory();
        final ffiDbPath = join(docDir.path, _dbName);
        final standardDbPath = join(standardDatabasesPath, _dbName);
        
        if (await io.File(ffiDbPath).exists() && !await io.File(standardDbPath).exists()) {
          debugPrint('[DB] Recovery: Found DB in doc folder. Moving back to system path...');
          await io.File(ffiDbPath).copy(standardDbPath);
          // Optional: we could delete the old one, but keeping it as backup for safety in this session.
        }
      }
      
      path = join(standardDatabasesPath, _dbName);
    }

    LogService.info('DB Path: $path (Native SQLite)');
    return await openDatabase(
      path,
      version: _dbVersion,
      onConfigure: (db) async {
        LogService.info('DB Config: Setting foreign_keys = ON');
        await db.execute('PRAGMA foreign_keys = ON');
        
        try {
          final res = await db.rawQuery('SELECT sqlite_version()');
          LogService.info('DB Check: SQLite Version ${res.first.values.first}');
        } catch(e) {
          LogService.error('DB Check: Version check failed', e);
        }
      },
      onCreate: (db, version) async {
        LogService.info('DB Create: Triggered (Version: $version)');
        await createBaseTables(db);
        await ensureDefaultMaterial(db);
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        debugPrint('[DB] onUpgrade triggered ($oldVersion -> $newVersion)');
        if (oldVersion < _dbVersion) {
          debugPrint('[DB] Old version detected ($oldVersion). Running safe migration.');
          // Phase 26: 이전의 모든 테이블 드롭 로직(_dropAllTables)은 위험하므로 제거함.
          // 대신 필요한 테이블만 생성하거나 기존 데이터를 보존하는 방식으로 진행.
          await createBaseTables(db);
          await ensureDefaultMaterial(db);
        }
      },
    );
  }

  static Future<void> createBaseTables(Database db) async {
    debugPrint('[DB] Creating base tables...');
    // 1. Shared Content Tables
    await db.execute('''
      CREATE TABLE IF NOT EXISTS words (
        group_id INTEGER PRIMARY KEY,
        data_json TEXT, -- Content only
        created_at TEXT NOT NULL
      )
    ''');
    debugPrint('[DB] Table "words" created.');
    
    await db.execute('''
      CREATE TABLE IF NOT EXISTS sentences (
        group_id INTEGER PRIMARY KEY,
        data_json TEXT,
        created_at TEXT NOT NULL
      )
    ''');
    debugPrint('[DB] Table "sentences" created.');

    // 2. Personalized Meta Tables
    await db.execute('''
      CREATE TABLE IF NOT EXISTS words_meta (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        group_id INTEGER NOT NULL,
        notebook_title TEXT NOT NULL,
        source_lang TEXT,
        target_lang TEXT,
        tags TEXT,
        is_memorized INTEGER DEFAULT 0,
        is_synced INTEGER DEFAULT 0,
        review_count INTEGER DEFAULT 0,
        last_reviewed TEXT,
        created_at TEXT NOT NULL,
        FOREIGN KEY (group_id) REFERENCES words (group_id) ON DELETE CASCADE
      )
    ''');
    debugPrint('[DB] Table "words_meta" created.');

    await db.execute('''
      CREATE TABLE IF NOT EXISTS sentences_meta (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        group_id INTEGER NOT NULL,
        notebook_title TEXT NOT NULL,
        source_lang TEXT,
        target_lang TEXT,
        tags TEXT,
        is_memorized INTEGER DEFAULT 0,
        is_synced INTEGER DEFAULT 0,
        review_count INTEGER DEFAULT 0,
        last_reviewed TEXT,
        created_at TEXT NOT NULL,
        FOREIGN KEY (group_id) REFERENCES sentences (group_id) ON DELETE CASCADE
      )
    ''');
    debugPrint('[DB] Table "sentences_meta" created.');
    
    // 3. Translation Cache
    await db.execute('''
      CREATE TABLE IF NOT EXISTS translation_cache (
        cache_key TEXT PRIMARY KEY,
        translation TEXT NOT NULL,
        timestamp INTEGER NOT NULL
      )
    ''');
    debugPrint('[DB] Table "translation_cache" created.');

    // Indexes
    await db.execute('CREATE INDEX IF NOT EXISTS idx_words_group_id ON words (group_id)');
    await db.execute('CREATE INDEX IF NOT EXISTS idx_sentences_group_id ON sentences (group_id)');
    
    // Fixed Composite Unique Index per 설계 3.4 (같은 단어라도 다른 단어장에 중복 저장 허용)
    await db.execute('CREATE UNIQUE INDEX IF NOT EXISTS idx_words_meta_composite ON words_meta (group_id, notebook_title)');
    await db.execute('CREATE UNIQUE INDEX IF NOT EXISTS idx_sentences_meta_composite ON sentences_meta (group_id, notebook_title)');
    
    debugPrint('[DB] All indexes created.');
  }

  static Future<void> ensureDefaultMaterial(Database db) async {
    // Phase 160: study_materials table removed. 
    // Default materials/notebooks should be managed via words_meta/sentences_meta.
  }
}

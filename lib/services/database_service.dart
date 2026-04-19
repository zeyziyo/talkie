import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'database/database_helper.dart';
import 'database/word_repository.dart';
import 'database/sentence_repository.dart';
import 'database/tag_repository.dart';
import 'database/data_transfer_service.dart';
import 'database/unified_repository.dart';
import 'database/scanned_repository.dart';


/// DatabaseService - 로컬 데이터베이스 관리 (Facade)
class DatabaseService {
  static Future<Database> get database => DatabaseHelper.database;

  // --- Database Helper Delegation ---
  static Future<void> reset() => DatabaseHelper.reset();
  static Future<void> close() => DatabaseHelper.close();

  /// Check if a notebook (subject) already exists in meta tables
  static Future<bool> materialExistsBySubject(String subject) async {
    final db = await database;
    final wRes = await db.query('words_meta', where: 'notebook_title = ?', whereArgs: [subject], limit: 1);
    if (wRes.isNotEmpty) return true;
    final sRes = await db.query('sentences_meta', where: 'notebook_title = ?', whereArgs: [subject], limit: 1);
    return sRes.isNotEmpty;
  }

  /// Global title check
  static Future<bool> notebookTitleExists(String title) async {
    return await materialExistsBySubject(title);
  }

  // --- Word Repository Delegation ---
  static Future<int> insertWord(Map<String, dynamic> data) => WordRepository.insert(data);
  static Future<List<Map<String, dynamic>>> searchWords(String query, {int limit = 10}) => WordRepository.search(query, limit: limit);
  static Future<void> toggleWordMemorized(int id, bool status) => WordRepository.updateMemorizedStatus(id, status);

  // --- Sentence Repository Delegation ---
  static Future<int> insertSentence(Map<String, dynamic> data) => SentenceRepository.insert(data);
  static Future<List<Map<String, dynamic>>> searchSentences(String query, {int limit = 10}) => SentenceRepository.search(query, limit: limit);
  static Future<void> toggleSentenceMemorized(int id, bool status) => SentenceRepository.updateMemorizedStatus(id, status);

  // --- Scanned Repository Delegation (Phase 27) ---
  static Future<int> insertScannedRecord(Map<String, dynamic> data) => ScannedRepository.insert(data);
  static Future<List<Map<String, dynamic>>> getScannedRecords() => ScannedRepository.getScannedRecords();
  static Future<void> deleteScannedRecord(int groupId) => ScannedRepository.delete(groupId);

  // --- Tag Repository Delegation ---
  static Future<List<String>> getAllTags() => TagRepository.getAllTags();
  static Future<List<String>> getAllTagsForLanguage(String langCode) => TagRepository.getAllTagsForLanguage(langCode);
  static Future<void> addTag(int itemId, String itemType, String tag, {String langCode = 'auto'}) => TagRepository.addTag(itemId, itemType, tag, langCode);

  // --- Search & Autocomplete Delegation ---
  static Future<List<Map<String, dynamic>>> searchAutocompleteText(String langCode, String text) async {
    final wRes = await WordRepository.searchAutocompleteText(langCode, text);
    final sRes = await SentenceRepository.searchAutocompleteText(langCode, text);
    
    // Deduplicate by text using a map
    final Map<String, Map<String, dynamic>> unique = {};
    for (var item in wRes) {
      unique[item['text']] = item;
    }
    for (var item in sRes) {
      unique[item['text']] = item;
    }
    
    return unique.values.toList();
  }

  static Future<Map<String, dynamic>?> getTranslationIfExists(String lang, int groupId, String targetLang, {String? note}) async {
    final wRes = await WordRepository.getTranslationIfExists(groupId, targetLang, note: note);
    if (wRes != null) return wRes;
    return await SentenceRepository.getTranslationIfExists(groupId, targetLang, note: note);
  }

  static Future<void> toggleMemorizedStatus(int id, String type, bool status) async {
    if (type == 'word') {
      await WordRepository.updateMemorizedStatus(id, status);
    } else {
      await SentenceRepository.updateMemorizedStatus(id, status);
    }
  }

  static Future<List<Map<String, dynamic>>> searchByType(String query, String type, {String? langCode, int limit = 10}) async {
    if (type == 'word') {
      return await WordRepository.search(query, limit: limit);
    } else {
      return await SentenceRepository.search(query, limit: limit);
    }
  }

  static Future<void> updateReviewStats(int id, String type, int increment) async {
    final lastReviewed = DateTime.now().toIso8601String();
    if (type == 'word') {
      await WordRepository.updateReviewStats(id, increment, lastReviewed);
    } else {
      await SentenceRepository.updateReviewStats(id, increment, lastReviewed);
    }
  }

  // --- Material Management (Notebook based - Phase 160) ---
  // Material IDs are now strings (notebook titles)
  // getStudyMaterialById removed as it was for legacy table
  static Future<List<Map<String, dynamic>>> getStudyMaterials({String? type, required String langCode}) async {
    final db = await database;
    // Extract unique notebook titles from meta tables with type filtering
    if (type == 'word') {
      return await db.rawQuery('''
        SELECT notebook_title as subject, 'Notebook' as source 
        FROM words_meta
        WHERE source_lang = ?
        GROUP BY notebook_title
        ORDER BY MAX(created_at) DESC
      ''', [langCode]);
    } else if (type == 'sentence') {
      return await db.rawQuery('''
        SELECT notebook_title as subject, 'Notebook' as source 
        FROM sentences_meta
        WHERE source_lang = ?
        GROUP BY notebook_title
        ORDER BY MAX(created_at) DESC
      ''', [langCode]);
    }
    
    // Legacy/Unified fallback
    final List<Map<String, dynamic>> results = await db.rawQuery('''
      SELECT notebook_title as subject, 'Notebook' as source 
      FROM (
        SELECT notebook_title, created_at, source_lang, target_lang FROM words_meta
        UNION ALL
        SELECT notebook_title, created_at, source_lang, target_lang FROM sentences_meta
      )
      WHERE source_lang = ? OR target_lang = ?
      GROUP BY notebook_title
      ORDER BY MAX(created_at) DESC
    ''', [langCode, langCode]);
    return results;
  }

  static Future<void> deleteStudyMaterial(String subject) async {
    final db = await database;
    await db.transaction((txn) async {
      // Cascade delete items belonging to this notebook (handled by meta delete if we want to delete ALL items)
      // For now, removing meta entries is enough to "remove from notebook"
      await txn.delete('words_meta', where: 'notebook_title = ?', whereArgs: [subject]);
      await txn.delete('sentences_meta', where: 'notebook_title = ?', whereArgs: [subject]);
      
      // Cleanup orphan content (optional performance, but keep for now to avoid bloat)
      await txn.rawDelete('''
        DELETE FROM words WHERE group_id NOT IN (SELECT group_id FROM words_meta)
      ''');
      await txn.rawDelete('''
        DELETE FROM sentences WHERE group_id NOT IN (SELECT group_id FROM sentences_meta)
      ''');
    });
  }

  // --- Data Transfer Delegation ---
  static Future<Map<String, dynamic>> importFromJsonWithMetadata(
    String jsonContent, {
    String? overrideSubject,
    String? syncKey,
    String? defaultType,
    String? defaultSourceLang,
    String? defaultTargetLang,
    String? fileName,
    String? userId,
    bool checkDuplicate = false,
  }) => DataTransferService.importFromJsonWithMetadata(
    jsonContent,
    overrideSubject: overrideSubject,
    syncKey: syncKey,
    defaultType: defaultType,
    defaultSourceLang: defaultSourceLang,
    defaultTargetLang: defaultTargetLang,
    fileName: fileName,
    userId: userId,
    checkDuplicate: checkDuplicate,
  );

  static Future<Map<String, dynamic>> importFromJson(String content, {String? fileName}) {
    return DataTransferService.importFromJsonWithMetadata(content, fileName: fileName);
  }

  static Future<String> exportMaterialToJson(String subject, {String? targetLang}) async {
    return DataTransferService.exportMaterialToJson(
      subject,
      getRows: (s, {targetLang}) async {
        // Fetch raw rows with Method that Joins Meta
        final rawItems = await TagRepository.getItemsByTag(s, targetLang: targetLang);
        
        // Parse & Flatten
         return rawItems.map((row) {
            final Map<String, dynamic> data = jsonDecode(row['data_json'] as String);
            // Phase 160: When exporting by title, we assume the first language as default source if auto
            const sourceLang = 'auto'; 
            
            // Simple export logic:
            // text = data[sourceLang]['text']
            // translation = data[targetLang]['text']
            
            // We need robust selection.
            String bestKey = data.keys.first;
            if (sourceLang != 'auto' && data.containsKey(sourceLang)) bestKey = sourceLang;
            
            final content = data[bestKey] as Map<String, dynamic>;
            String trans = '';
            if (targetLang != null && data.containsKey(targetLang)) {
               trans = data[targetLang]['text'];
            }
           
           return {
             ...row,
             'text': content['text'],
             'translation': trans,
             'note': content['note'], // Use shared note
             'root': content['root'],
           };
        }).toList();
      },
      getTags: (id, type) => TagRepository.getTagsForItem(id, type),
      targetLang: targetLang,
    );
  }

  // --- Sync & Utility ---
  static Future<List<int>> getUnsyncedGroupIds({int limit = 50}) async {
    final db = await database;
    // Phase 129: is_synced is now in meta tables
    final List<Map<String, dynamic>> result = await db.rawQuery('''
      SELECT DISTINCT group_id FROM words_meta WHERE is_synced = 0
      UNION
      SELECT DISTINCT group_id FROM sentences_meta WHERE is_synced = 0
      LIMIT ?
    ''', [limit]);
    return result.map((row) => row['group_id'] as int).toList();
  }

  static Future<Map<String, dynamic>?> fetchGroupSyncData(int groupId) async {
    final db = await database;
    
    // Phase 129: JOIN with Meta to get User Progress & Personal Notes
    final List<Map<String, dynamic>> rawWords = await db.rawQuery('''
      SELECT w.*, wm.notebook_title, wm.source_lang, wm.target_lang, wm.tags,
             wm.is_memorized, wm.is_synced, wm.review_count, wm.last_reviewed
      FROM words w
      LEFT JOIN words_meta wm ON w.group_id = wm.group_id
      WHERE w.group_id = ?
    ''', [groupId]);

    final List<Map<String, dynamic>> rawSentences = await db.rawQuery('''
      SELECT s.*, sm.notebook_title, sm.source_lang, sm.target_lang, sm.tags,
             sm.is_memorized, sm.is_synced, sm.review_count, sm.last_reviewed
      FROM sentences s
      LEFT JOIN sentences_meta sm ON s.group_id = sm.group_id
      WHERE s.group_id = ?
    ''', [groupId]);
    
    final List<Map<String, dynamic>> flattenedWords = [];
    final List<Map<String, dynamic>> flattenedSentences = [];

    // Parse JSON into flattened records for Supabase sync compatibility
    for (var row in rawWords) {
      if (row['data_json'] != null) {
        final Map<String, dynamic> data = jsonDecode(row['data_json'] as String);
        for (var entry in data.entries) {
          final lang = entry.key;
          final content = entry.value as Map<String, dynamic>;
          flattenedWords.add({
            ...row,
            'lang_code': lang,
            'text': content['text'],
            'note': content['note'],
            'root': content['root'],
            // Meta fields are already in row from JOIN
          });
        }
      }
    }

    for (var row in rawSentences) {
      if (row['data_json'] != null) {
        final Map<String, dynamic> data = jsonDecode(row['data_json'] as String);
        for (var entry in data.entries) {
          final lang = entry.key;
          final content = entry.value as Map<String, dynamic>;
          flattenedSentences.add({
            ...row,
            'lang_code': lang,
            'text': content['text'],
            'note': content['note'],
            // Meta fields are already in row from JOIN
          });
        }
      }
    }

    // Get tags for the whole group
    final List<String> tags = [];
    if (rawWords.isNotEmpty) {
      tags.addAll(await TagRepository.getTagsForItem(groupId, 'word'));
    }
    if (rawSentences.isNotEmpty) {
      tags.addAll(await TagRepository.getTagsForItem(groupId, 'sentence'));
    }

    return {
      'words': flattenedWords,
      'sentences': flattenedSentences,
      'tags': tags.toSet().toList(), // Deduplicate
    };
  }

  static Future<void> markGroupAsSynced(int groupId) async {
    final db = await database;
    await db.transaction((txn) async {
      // Phase 129: Update meta tables
      await txn.update('words_meta', {'is_synced': 1}, where: 'group_id = ?', whereArgs: [groupId]);
      await txn.update('sentences_meta', {'is_synced': 1}, where: 'group_id = ?', whereArgs: [groupId]);
    });
  }

  static String getLanguageFullName(String code) => UnifiedRepository.getLanguageFullName(code);

  static String mapLanguageToCode(String name) => UnifiedRepository.mapLanguageToCode(name);

  // --- Cache Delegation ---
  static Future<void> cacheTranslation(String key, String trans) async {
    final db = await database;
    await db.insert('translation_cache', {'cache_key': key, 'translation': trans, 'timestamp': DateTime.now().millisecondsSinceEpoch}, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<String?> getCachedTranslation(String key) async {
    final db = await database;
    final res = await db.query('translation_cache', where: 'cache_key = ?', whereArgs: [key]);
    return res.isNotEmpty ? res.first['translation'] as String : null;
  }

  // --- Unified Record ---
  static Future<int> saveUnifiedRecord({
    required String text,
    required String lang,
    required String translation,
    required String targetLang,
    required String type,
    String? root,
    String? note,
    List<String>? tags,
    Transaction? txn,
    String? syncSubject,
    int? sequenceOrder,
    int? groupId,
    String? notebookTitle,
  }) => UnifiedRepository.saveUnifiedRecord(
    text: text,
    lang: lang,
    translation: translation,
    targetLang: targetLang,
    type: type,
    root: root,
    note: note,
    tags: tags,
    txn: txn,
    syncSubject: syncSubject,
    sequenceOrder: sequenceOrder,
    groupId: groupId,
    notebookTitle: notebookTitle,
  );

  static Future<void> addLanguageToUnifiedRecord({
    required int groupId,
    required String text,
    required String lang,
    required String type,
    String? root,
    String? note,
    Transaction? txn,
  }) => UnifiedRepository.addLanguageToUnifiedRecord(
    groupId: groupId,
    text: text,
    lang: lang,
    type: type,
    root: root,
    note: note,
    txn: txn,
  );

  static Future<void> relinkGroupId(int oldId, int newId) => UnifiedRepository.relinkGroupId(oldId, newId);


  static Future<void> repairAutoLanguageRecords(String currentLang, String targetLang) => 
      UnifiedRepository.repairAutoLanguageRecords(currentLang, targetLang);

  static Future<List<String>> getTagsForNotebook(String notebookTitle, String langCode, {String? type}) =>
      TagRepository.getTagsForNotebook(notebookTitle, langCode, type: type);

  /// Phase 15.6: Merge Anonymous data to Google User
  static Future<void> mergeUserSessions(String oldUid, String newUid) async {
    // This method is a placeholder if we need to do DB level UID updates.
    // However, with Phase 129 architecture, records are mapped via notebook_title/groupId
    // which are currently not tied to a specific UID in local SQLite.
    // If we add user_id column to meta tables later, we handle it here.
    debugPrint('[DB] mergeUserSessions: $oldUid -> $newUid (No-op in current local schema)');
  }
}

import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'database/database_helper.dart';
import 'database/word_repository.dart';
import 'database/sentence_repository.dart';
import 'database/tag_repository.dart';
import 'database/dialogue_repository.dart';
import 'database/material_repository.dart';
import 'database/data_transfer_service.dart';
import 'database/unified_repository.dart';

/// DatabaseService - 로컬 데이터베이스 관리 (Facade)
class DatabaseService {
  static Future<Database> get database => DatabaseHelper.database;

  // --- Database Helper Delegation ---
  static Future<void> reset() => DatabaseHelper.reset();
  static Future<void> close() => DatabaseHelper.close();

  // --- Word Repository Delegation ---
  static Future<int> insertWord(Map<String, dynamic> data) => WordRepository.insert(data);
  static Future<List<Map<String, dynamic>>> searchWords(String query, {int limit = 10}) => WordRepository.search(query, limit: limit);
  static Future<void> toggleWordMemorized(int id, bool status) => WordRepository.updateMemorizedStatus(id, status);

  // --- Sentence Repository Delegation ---
  static Future<int> insertSentence(Map<String, dynamic> data) => SentenceRepository.insert(data);
  static Future<List<Map<String, dynamic>>> searchSentences(String query, {int limit = 10}) => SentenceRepository.search(query, limit: limit);
  static Future<void> toggleSentenceMemorized(int id, bool status) => SentenceRepository.updateMemorizedStatus(id, status);

  // --- Tag Repository Delegation ---
  static Future<List<String>> getAllTags() => TagRepository.getAllTags();
  static Future<List<String>> getAllTagsForLanguage(String langCode) => TagRepository.getAllTagsForLanguage(langCode);
  static Future<void> addTag(int itemId, String itemType, String tag, {String langCode = 'auto'}) => TagRepository.addTag(itemId, itemType, tag, langCode);

  // --- Dialogue Repository Delegation ---
  static Future<List<Map<String, dynamic>>> getDialogueGroups({String? userId}) => DialogueRepository.getGroups(userId: userId);
  static Future<void> insertDialogueGroup({
    required String id,
    String? userId,
    String? title,
    String? persona,
    String? location,
    String? note,
    required String createdAt,
    Transaction? txn,
  }) => DialogueRepository.insertGroup(
    id: id,
    userId: userId,
    title: title,
    persona: persona,
    location: location,
    note: note,
    createdAt: createdAt,
    txn: txn,
  );
  static Future<void> deleteDialogueGroup(String id) => DialogueRepository.deleteGroup(id);
  static Future<int> getDialogueCount() => DialogueRepository.getDialogueCount();

  // --- Dialogue Participants Delegation ---
  static Future<List<Map<String, dynamic>>> getParticipants(String dialogueId) => DialogueRepository.getParticipants(dialogueId);
  static Future<void> insertParticipant(Map<String, dynamic> data) => DialogueRepository.insertParticipant(data);
  static Future<void> updateParticipant(String id, Map<String, dynamic> data) => DialogueRepository.updateParticipant(id, data);
  static Future<List<Map<String, dynamic>>> getRecordsByDialogueId(String dialogueId, {String? sourceLang, String? targetLang}) => DialogueRepository.getRecordsByDialogueId(dialogueId, sourceLang: sourceLang, targetLang: targetLang);

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

  // --- Material Repository Delegation ---
  static Future<List<Map<String, dynamic>>> getStudyMaterials() async {
    return await MaterialRepository.getAll();
  }

  static Future<int> createStudyMaterial({
    required String subject,
    required String source,
    required String sourceLanguage,
    required String targetLanguage,
    String? fileName,
    required String createdAt,
    Transaction? txn,
  }) => MaterialRepository.create(
    subject: subject,
    source: source,
    sourceLanguage: sourceLanguage,
    targetLanguage: targetLanguage,
    fileName: fileName,
    createdAt: createdAt,
    txn: txn,
  );

  static Future<Map<String, dynamic>?> getStudyMaterialById(int id) => MaterialRepository.getById(id);

  static Future<void> deleteStudyMaterial(int id) => MaterialRepository.delete(id);

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

  static Future<String> exportMaterialToJson(int materialId, {String? targetLang}) async {
    final material = await getStudyMaterialById(materialId);
    if (material == null) return '{}';

    return DataTransferService.exportMaterialToJson(
      materialId,
      getRows: (s, {targetLang}) async {
        // Fetch raw rows with Method that Joins Meta
        final rawItems = await TagRepository.getItemsByTag(s, targetLang: targetLang);
        
        // Parse & Flatten
        return rawItems.map((row) {
           final Map<String, dynamic> data = jsonDecode(row['data_json'] as String);
           // Determine which language to export as 'text'? 
           // Usually source language of material.
           final sourceLang = material['source_language'] as String? ?? 'auto';
           // If auto, pick first key?
           // Or search for matching lang?
           
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
             'pos': content['pos'],
             'note': row['caption'] ?? content['note'], // Phase 129: Use personal caption
             'root': content['root'],
             'form_type': content['form_type'],
             'style': content['style'],
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
      SELECT w.*, wm.notebook_title, wm.source_lang, wm.target_lang, wm.caption, wm.tags,
             wm.is_memorized, wm.is_synced, wm.review_count, wm.last_reviewed
      FROM words w
      LEFT JOIN words_meta wm ON w.group_id = wm.group_id
      WHERE w.group_id = ?
    ''', [groupId]);

    final List<Map<String, dynamic>> rawSentences = await db.rawQuery('''
      SELECT s.*, sm.notebook_title, sm.source_lang, sm.target_lang, sm.caption, sm.tags,
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
            'pos': content['pos'],
            'note': row['caption'] ?? content['note'], // Prioritize personal caption
            'root': content['root'],
            'form_type': content['form_type'],
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
            'pos': content['pos'],
            'note': row['caption'] ?? content['note'], // Prioritize personal caption
            'style': content['style'],
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
    String? pos,
    String? formType,
    String? style,
    String? root,
    String? note,
    List<String>? tags,
    Transaction? txn,
    String? syncSubject,
    int? sequenceOrder,
    int? groupId,
  }) => UnifiedRepository.saveUnifiedRecord(
    text: text,
    lang: lang,
    translation: translation,
    targetLang: targetLang,
    type: type,
    pos: pos,
    formType: formType,
    style: style,
    root: root,
    note: note,
    tags: tags,
    txn: txn,
    syncSubject: syncSubject,
    sequenceOrder: sequenceOrder,
    groupId: groupId,
  );

  static Future<void> addLanguageToUnifiedRecord({
    required int groupId,
    required String text,
    required String lang,
    required String type,
    String? pos,
    String? formType,
    String? style,
    String? root,
    String? note,
    Transaction? txn,
  }) => UnifiedRepository.addLanguageToUnifiedRecord(
    groupId: groupId,
    text: text,
    lang: lang,
    type: type,
    pos: pos,
    formType: formType,
    style: style,
    root: root,
    note: note,
    txn: txn,
  );

  static Future<void> relinkGroupId(int oldId, int newId) => UnifiedRepository.relinkGroupId(oldId, newId);
}

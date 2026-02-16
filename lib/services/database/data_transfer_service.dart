import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';
import 'material_repository.dart';
import 'dialogue_repository.dart';
import 'unified_repository.dart';

class DataTransferService {
  static Future<Database> get _db async => await DatabaseHelper.database;

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
  }) async {
    try {
      final data = json.decode(jsonContent) as Map<String, dynamic>;
      final meta = data['meta'] as Map<String, dynamic>? ?? {};
      
      final rawSourceLang = (meta['source_language'] ?? data['source_language'] ?? defaultSourceLang) as String? ?? 'auto';
      final rawTargetLang = (meta['target_language'] ?? data['target_language'] ?? defaultTargetLang) as String? ?? 'auto';
      final sourceLang = UnifiedRepository.mapLanguageToCode(rawSourceLang);
      final targetLang = UnifiedRepository.mapLanguageToCode(rawTargetLang);
      
      final nativeSubject = (meta['title'] ?? data['subject']) as String?;
      final materialSubject = overrideSubject ?? nativeSubject ?? fileName ?? 'Imported Material';
      final syncSubject = syncKey ?? materialSubject;
      final source = (meta['source'] ?? data['source']) as String? ?? 'File Upload';
      final fileCreatedAt = (meta['created_at'] ?? data['created_at']) as String? ?? DateTime.now().toIso8601String();
      final batchCreatedAt = DateTime.now().toIso8601String();
      final entryDefaultType = (data['default_type'] ?? meta['default_type'] ?? defaultType) as String? ?? 'sentence';
      final entryPos = (data['pos'] ?? meta['pos']) as String?;
      
      final fileTags = (meta['tags'] as List?)?.map((e) => e.toString().trim()).where((e) => e.isNotEmpty).toList() ?? [];

      if (checkDuplicate) {
        final exists = await MaterialRepository.existsBySubject(materialSubject, sourceLang, targetLang);
        if (exists) {
          return {
            'success': false,
            'error': 'DuplicateTitle',
            'imported': 0,
            'skipped': 0,
            'total': 0,
            'errors': ['A material with the same title already exists.'],
          };
        }
      }

      final entries = data['entries'] as List?;
      final dialogues = data['dialogues'] as List?;
      
      final participantsList = data['participants'] as List?;
      final Map<String, Map<String, dynamic>> participantMap = {};
      if (participantsList != null) {
        for (var p in participantsList) {
          final pMap = p as Map<String, dynamic>;
          if (pMap['id'] != null) participantMap[pMap['id']] = pMap;
        }
      }
      
      final db = await _db;
      
      return await db.transaction((txn) async {
         int importedCount = 0;
         int skippedCount = 0;
         int totalMessages = 0;
         List<String> errors = [];

          // Case A: Standard Entries
          if (entries != null) {
            await MaterialRepository.create(
              subject: materialSubject,
              source: source,
              sourceLanguage: sourceLang,
              targetLanguage: targetLang,
              fileName: fileName,
              createdAt: fileCreatedAt,
              txn: txn,
            );

            // Pre-fetch existing items for deduplication (to enable Upsert)
            final Map<String, int> existingItems = {}; 
            // If checkDuplicate is true, we return early anyway. 
            // So we only run this if we are merging/updating.
            
             // Fetch Words
             final words = await txn.rawQuery('''
                SELECT w.group_id, w.data_json 
                FROM words w 
                JOIN words_meta wm ON w.group_id = wm.group_id 
                WHERE wm.notebook_title = ?
             ''', [materialSubject]);
             
             for (var w in words) {
                try {
                  final data = jsonDecode(w['data_json'] as String);
                  // Check sourceLang first
                  if (data[sourceLang] != null) {
                     final text = data[sourceLang]['text'] as String;
                     existingItems[text.trim()] = w['group_id'] as int;
                  }
                } catch (_) {}
             }

             // Fetch Sentences
             final sentences = await txn.rawQuery('''
                SELECT s.group_id, s.data_json 
                FROM sentences s 
                JOIN sentences_meta sm ON s.group_id = sm.group_id 
                WHERE sm.notebook_title = ?
             ''', [materialSubject]);
             for (var s in sentences) {
                try {
                   final data = jsonDecode(s['data_json'] as String);
                   if (data[sourceLang] != null) {
                     final text = data[sourceLang]['text'] as String;
                     existingItems[text.trim()] = s['group_id'] as int;
                   }
                } catch (_) {}
             }

            final batch = txn.batch();
            for (var i = 0; i < entries.length; i++) {
              try {
                final entry = entries[i] as Map<String, dynamic>;
                
                final sText = (entry['source_text'] ?? entry['text']) as String?;
                final tText = (entry['target_text'] ?? entry['translation']) as String?;
                
                if (sText == null || sText.trim().isEmpty) {
                  skippedCount++;
                  continue;
                }

                final bool hasTarget = tText != null && tText.trim().isNotEmpty && targetLang != 'auto';
                final entryTags = (entry['tags'] as List?)?.map((e) => e.toString().trim()).where((e) => e.isNotEmpty).toList() ?? [];
                
                // Phase 129: NoteBook Title uses materialSubject
                // Use Set to remove duplicates and Trim everything
                final Set<String> uniqueTags = {
                   ...fileTags, 
                   ...entryTags, 
                   materialSubject.trim(), 
                   syncSubject.trim()
                };
                final List<String> allTags = uniqueTags.where((t) => t.isNotEmpty).toList();
                
                // Deduplication Logic: Reuse ID if text matches
                final int gId = existingItems[sText.trim()] ?? (DateTime.now().millisecondsSinceEpoch + i); 
                
                // Phase 117: Metadata Extraction
                String? getVal(dynamic item, String key, [String? topLevelDefault]) {
                   final val = item[key] as String?;
                   if (val == null || val.trim().isEmpty) return (topLevelDefault?.trim().isEmpty ?? true) ? null : topLevelDefault;
                   return val.trim();
                }

                // Phase 129: Construct data_json (Shared Content)
                final Map<String, dynamic> contentMap = {};
                
                // Source Language Data
                contentMap[sourceLang] = {
                  'text': sText,
                  'pos': getVal(entry, 'pos', entryPos),
                  'note': getVal(entry, 'note'),
                };
                
                final type = entry['type'] as String? ?? entryDefaultType;
                final tableContent = type == 'word' ? 'words' : 'sentences';

                if (type == 'word') {
                  contentMap[sourceLang]['form_type'] = getVal(entry, 'form_type');
                  contentMap[sourceLang]['root'] = getVal(entry, 'root');
                } else {
                  contentMap[sourceLang]['style'] = getVal(entry, 'style');
                }

                // Target Language Data (if exists)
                if (hasTarget) {
                  contentMap[targetLang] = {
                    'text': tText,
                    'pos': getVal(entry, 'target_pos') ?? getVal(entry, 'pos', entryPos),
                    'note': getVal(entry, 'note'), // Note usually shared
                  };
                  if (type == 'word') {
                    contentMap[targetLang]['form_type'] = getVal(entry, 'target_form_type');
                    contentMap[targetLang]['root'] = getVal(entry, 'target_root');
                  } else {
                    contentMap[targetLang]['style'] = getVal(entry, 'target_style') ?? getVal(entry, 'style');
                  }
                }

                // 1. Insert Shared Content
                batch.insert(tableContent, {
                  'group_id': gId,
                  'data_json': jsonEncode(contentMap),
                  'created_at': batchCreatedAt,
                }, conflictAlgorithm: ConflictAlgorithm.replace);

                // 2. Insert Personal Meta (Upsert with Logic)
                final metaTable = type == 'word' ? 'words_meta' : 'sentences_meta';
                
                // Using rawInsert for complex Upsert logic (Preserve user stats)
                // Note: We use rawInsert directly on batch, but batch in sqflite is a bit different.
                // batch.rawInsert(sql, arguments)
                
                batch.rawInsert('''
                  INSERT INTO $metaTable (
                    group_id, notebook_title, source_lang, target_lang, caption, tags,
                    is_memorized, is_synced, review_count, last_reviewed
                  ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
                  ON CONFLICT(group_id) DO UPDATE SET
                    notebook_title = excluded.notebook_title,
                    source_lang = excluded.source_lang,
                    target_lang = excluded.target_lang,
                    tags = excluded.tags,
                    is_synced = MAX($metaTable.is_synced, excluded.is_synced),
                    is_memorized = MAX($metaTable.is_memorized, excluded.is_memorized),
                    review_count = MAX($metaTable.review_count, excluded.review_count),
                    last_reviewed = MAX($metaTable.last_reviewed, excluded.last_reviewed),
                    caption = COALESCE(NULLIF(excluded.caption, ''), $metaTable.caption)
                ''', [
                  gId,
                  materialSubject,
                  sourceLang,
                  targetLang,
                  getVal(entry, 'note') ?? '',
                  allTags.join(','),
                  0, // is_memorized default for import (safe to merge with MAX)
                  0, // is_synced default
                  0, // review_count default
                  null // last_reviewed default
                ]);

                // 3. (Removed) item_tags table is deprecated/removed. Tags are stored in meta.

                importedCount++;
              } catch (e) {
                errors.add('Entry ${i + 1}: $e');
                skippedCount++;
              }
            }
            await batch.commit(noResult: true);
          } 
          
          // Case B: Dialogues
          if (dialogues != null) {
            for (var d in dialogues) {
              final dMap = d as Map<String, dynamic>;
              final dMeta = dMap['meta'] as Map<String, dynamic>? ?? {};
              
              final dTitle = (dMap['title'] ?? dMeta['title']) as String? ?? nativeSubject ?? syncSubject;
              final dPersona = (dMap['persona'] ?? dMeta['persona']) as String? ?? 'Partner';
              
              final existingGroup = await txn.query(
                'dialogue_groups',
                where: '(title = ? OR note = ?) AND user_id = ?',
                whereArgs: [syncSubject, syncSubject, userId],
                limit: 1,
              );

              String? dId;
              if (existingGroup.isNotEmpty) {
                dId = existingGroup.first['id'] as String;
              } else {
                dId = '${DateTime.now().millisecondsSinceEpoch}_$importedCount';
                await DialogueRepository.insertGroup(
                  id: dId,
                  userId: userId, 
                  title: dTitle,
                  persona: dPersona,
                  note: syncSubject, 
                  createdAt: fileCreatedAt,
                  txn: txn,
                );
              }
              
              // Prevent Duplicate Messages: Clear existing messages for this session
              await txn.delete('dialogues', where: 'session_id = ?', whereArgs: [dId]);

              final messages = dMap['messages'] as List? ?? [];
              totalMessages += messages.length;

              for (var j = 0; j < messages.length; j++) {
                try {
                  final msg = messages[j] as Map<String, dynamic>;
                  final sText = msg['source_text'] as String?;
                  final tText = msg['target_text'] as String?;
                  
                  final primaryText = sText ?? tText;
                  if (primaryText == null || primaryText.trim().isEmpty) {
                    skippedCount++;
                    continue;
                  }
                  
                  // Phase 129: Use 'dialogues' table
                  // Check existing message by session_id (exact match might differ by logic, simplify for import)
                  // For import robustness, we probably insert new. Duplicate checking is minimal here.
                  
                  // Phase 129: Remove UnifiedRepository dependency for dialogues!
                  // Dialogues are PERSONAL data now. No need to save to words/sentences unless explicit.
                  
                  await txn.insert('dialogues', {
                    'session_id': dId,
                    'speaker': msg['speaker'] ?? 'Unknown',
                    'content': sText ?? '', // content is source
                    'translation': tText ?? '', // translation is target
                    'created_at': batchCreatedAt,
                  });
                  
                  importedCount++;
                } catch (e) {
                  errors.add('Dialogue $importedCount: $e');
                  skippedCount++;
                }
              }
            }
          }

          if (entries == null && dialogues == null) {
            return {
              'success': false,
              'error': 'No entries or dialogues found in JSON',
              'imported': 0,
              'skipped': 0,
              'total': 0,
              'errors': ['Root keys "entries" or "dialogues" not found.'],
            };
          }

          return {
            'success': errors.isEmpty,
            'imported': importedCount,
            'skipped': skippedCount,
            'total': (entries?.length ?? 0) + totalMessages,
            'errors': errors,
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



  static Future<String> exportMaterialToJson(int materialId, {
    required Future<List<Map<String, dynamic>>> Function(String subject, {String? targetLang}) getRows,
    required Future<List<String>> Function(int itemId, String type) getTags,
    String? targetLang,
  }) async {
    final db = await _db;
    final materialRes = await db.query('study_materials', where: 'id = ?', whereArgs: [materialId]);
    if (materialRes.isEmpty) return '{}';
    
    final material = materialRes.first;
    final subject = material['subject'] as String;
    final items = await getRows(subject, targetLang: targetLang);
    
    final List<Map<String, dynamic>> entries = [];
    for (var item in items) {
      final id = item['group_id'] as int;
      final type = item['origin_table'] == 'words' ? 'word' : 'sentence';
      final tags = await getTags(id, type);
      
      entries.add({
        'text': item['text'],
        'translation': item['translation'] ?? '',
        'type': type,
        'pos': item['pos'],
        'form_type': item['form_type'],
        'style': item['style'],
        'root': item['root'],
        'note': item['note'],
        'tags': tags,
      });
    }

    return jsonEncode({
      'meta': {
        'title': subject,
        'source': material['source'],
        'source_language': material['source_language'],
        'target_language': material['target_language'],
        'created_at': material['created_at'],
        'exported_at': DateTime.now().toIso8601String(),
      },
      'entries': entries,
    });
  }
}

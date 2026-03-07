import 'dart:convert';
import '../database_service.dart';
import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';
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
      final fileCreatedAt = (meta['created_at'] ?? data['created_at']) as String? ?? DateTime.now().toIso8601String();
      final batchCreatedAt = DateTime.now().toIso8601String();
      final entryDefaultType = (data['default_type'] ?? meta['default_type'] ?? defaultType) as String? ?? 'sentence';
      final entryPos = (data['pos'] ?? meta['pos']) as String?;
      
      final fileTags = (meta['tags'] as List?)?.map((e) => e.toString().trim()).where((e) => e.isNotEmpty).toList() ?? [];

      if (checkDuplicate) {
        final exists = await DatabaseService.materialExistsBySubject(materialSubject);
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
         dynamic importId; // To store material_id or dId

          // Case A & C: Standard Entries OR Single Dialogue Session via default_type: dialogue
          if (entries != null) {
            // Case C: Handle default_type: dialogue using entries
            if (entryDefaultType == 'dialogue') {
               final dId = '${DateTime.now().millisecondsSinceEpoch}_0';
               // Create Dialogue Group
               await DialogueRepository.insertGroup(
                 id: dId,
                 userId: userId,
                 title: materialSubject,
                 persona: participantMap.values.where((p) => p['role']?.toString().toLowerCase() == 'ai').firstOrNull?['name'] ?? 'Partner',
                 note: syncSubject,
                 createdAt: fileCreatedAt,
                 txn: txn,
               );
               importId = dId; // Assign dId to importId

               for (var i = 0; i < entries.length; i++) {
                 try {
                   final entry = entries[i] as Map<String, dynamic>;
                   final sText = (entry['source_text'] ?? entry['text']) as String?;
                   final tText = (entry['target_text'] ?? entry['translation']) as String?;
                   
                   if (sText == null || sText.trim().isEmpty) {
                     skippedCount++;
                     continue;
                   }

                   await txn.insert('dialogues', {
                     'session_id': dId,
                     'speaker': entry['speaker'] ?? (i % 2 == 0 ? 'User' : 'AI'),
                     'content': sText,
                     'translation': tText ?? '',
                     'created_at': batchCreatedAt,
                   });
                   importedCount++;
                 } catch (e) {
                   errors.add('Dialogue Entry ${i + 1}: $e');
                   skippedCount++;
                 }
               }
            } else {
              // Standard words/sentences
              // Phase 160: study_materials table removed. 
              // Notebooks are identified by notebook_title in meta tables.
              importId = materialSubject;

              // Phase 160: existingItems is no longer needed as we use Deterministic Hash IDs

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
                  final Set<String> uniqueTags = {
                     ...fileTags, 
                     ...entryTags, 
                     materialSubject.trim(), 
                     syncSubject.trim()
                  };
                  final List<String> allTags = uniqueTags.where((t) => t.isNotEmpty).toList();
                  final type = entry['type'] as String? ?? entryDefaultType;
                  final tableContent = type == 'word' ? 'words' : 'sentences';

                  // Phase 160: Deterministic ID Generation (Content-Based)
                  // If English is present, use it as pivot. Default to sourceText.
                  final String idBaseText = (sourceLang == 'en') ? sText : (tText != null && targetLang == 'en' ? tText : sText);
                  
                  final int gId = UnifiedRepository.generateGroupId(
                    text: idBaseText,
                    type: type,
                    pos: _getVal(entry, 'pos', entryPos),
                    style: _getVal(entry, 'style'),
                    formType: _getVal(entry, 'form_type'),
                  );

                  // Phase 160: Multilingual Merge (Upsert) Logic
                  final existing = await txn.query(tableContent, where: 'group_id = ?', whereArgs: [gId], limit: 1);
                  Map<String, dynamic> finalContentMap = {};
                  
                  if (existing.isNotEmpty) {
                    // Load existing and merge
                    finalContentMap = jsonDecode(existing.first['data_json'] as String);
                  }

                  // Removed Phase 17500 data_json_map handling based on user request

                  // Add/Update Source Data (Ensure latest from entry overrides or supplements)
                  finalContentMap[sourceLang] = {
                    'text': sText,
                    'pos': _getVal(entry, 'pos', entryPos),
                    'note': _getVal(entry, 'note'),
                  };
                  if (type == 'word') {
                    finalContentMap[sourceLang]['form_type'] = _getVal(entry, 'form_type');
                    finalContentMap[sourceLang]['root'] = _getVal(entry, 'root');
                  } else {
                    finalContentMap[sourceLang]['style'] = _getVal(entry, 'style');
                  }

                  // Add/Update Target Data
                  if (hasTarget) {
                    finalContentMap[targetLang] = {
                      'text': tText,
                      'pos': _getVal(entry, 'target_pos') ?? _getVal(entry, 'pos', entryPos),
                      'note': _getVal(entry, 'note'),
                    };
                    if (type == 'word') {
                      finalContentMap[targetLang]['form_type'] = _getVal(entry, 'target_form_type');
                      finalContentMap[targetLang]['root'] = _getVal(entry, 'target_root');
                    } else {
                      finalContentMap[targetLang]['style'] = _getVal(entry, 'target_style') ?? _getVal(entry, 'style');
                    }
                  }

                  await txn.insert(tableContent, {
                    'group_id': gId,
                    'data_json': jsonEncode(finalContentMap),
                    'created_at': batchCreatedAt,
                  }, conflictAlgorithm: ConflictAlgorithm.replace);

                  final metaTable = type == 'word' ? 'words_meta' : 'sentences_meta';
                  batch.rawInsert('''
                    INSERT INTO $metaTable (
                      group_id, notebook_title, source_lang, target_lang, caption, tags,
                      is_memorized, is_synced, review_count, last_reviewed, created_at
                    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
                    ON CONFLICT(group_id, notebook_title) DO UPDATE SET
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
                    _getVal(entry, 'note') ?? '',
                    allTags.join(','),
                    0, 0, 0, null,
                    batchCreatedAt
                  ]);

                  importedCount++;
                } catch (e) {
                  errors.add('Entry ${i + 1}: $e');
                  skippedCount++;
                }
              }
              await batch.commit(noResult: true);
            }
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
              importId = dId; // Assign dId to importId
              
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
            'notebook_title': importId, // Dialogue dId or Notebook Title
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



  static Future<String> exportMaterialToJson(String subject, {
    required Future<List<Map<String, dynamic>>> Function(String subject, {String? targetLang}) getRows,
    required Future<List<String>> Function(int itemId, String type) getTags,
    String? targetLang,
  }) async {
    // Phase 160: Export by subject (notebook_title) directly
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
        'source': 'Local Export',
        'exported_at': DateTime.now().toIso8601String(),
      },
      'entries': entries,
    });
  }

  static String? _getVal(dynamic item, String key, [String? topLevelDefault]) {
    final val = item[key] as String?;
    if (val == null || val.trim().isEmpty) return (topLevelDefault?.trim().isEmpty ?? true) ? null : topLevelDefault;
    return val.trim();
  }
}

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
      
      final fileTags = (meta['tags'] as List?)?.map((e) => e.toString()).toList() ?? [];

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
                final entryTags = (entry['tags'] as List?)?.map((e) => e.toString()).toList() ?? [];
                final List<String> allTags = [...fileTags, ...entryTags, materialSubject, syncSubject];
                
                final int gId = DateTime.now().millisecondsSinceEpoch + i; 
                
                // Phase 117: Intelligent Metadata Extraction with Default Inheritance
                String? getVal(dynamic item, String key, [String? topLevelDefault]) {
                   final val = item[key] as String?;
                   if (val == null || val.trim().isEmpty) return (topLevelDefault?.trim().isEmpty ?? true) ? null : topLevelDefault;
                   return val.trim();
                }

                final row = {
                  'group_id': gId,
                  'text': sText,
                  'lang_code': sourceLang,
                  'pos': getVal(entry, 'pos', entryPos), // Inherit from top-level if entry pos is empty
                  'note': getVal(entry, 'note'),
                  'created_at': batchCreatedAt,
                };
                
                final type = entry['type'] as String? ?? entryDefaultType;
                final table = type == 'word' ? 'words' : 'sentences';
                if (type == 'word') {
                  row['form_type'] = getVal(entry, 'form_type');
                  row['root'] = getVal(entry, 'root');
                } else {
                  row['style'] = getVal(entry, 'style');
                }

                batch.insert(table, row);
                
                if (hasTarget) {
                  final targetRow = {
                    'group_id': gId,
                    'text': tText,
                    'lang_code': targetLang,
                    'created_at': batchCreatedAt,
                    // Phase 117: Use target-specific metadata if available, fallback to source/top-level defaults
                    'pos': getVal(entry, 'target_pos') ?? getVal(entry, 'pos', entryPos),
                    'note': getVal(entry, 'note'), // Note is shared context
                  };

                  if (type == 'word') {
                    targetRow['form_type'] = getVal(entry, 'target_form_type');
                    targetRow['root'] = getVal(entry, 'target_root');
                  } else {
                    targetRow['style'] = getVal(entry, 'target_style') ?? getVal(entry, 'style');
                  }

                  batch.insert(table, targetRow);
                }

                for (var t in allTags) {
                  batch.insert('item_tags', {
                    'item_id': gId,
                    'item_type': type,
                    'tag': t,
                    'lang_code': sourceLang, // Phase 120: 소스 언어 코드 명시
                  }, conflictAlgorithm: ConflictAlgorithm.ignore);
                }

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

                  final existingMessage = await txn.query(
                    'chat_messages',
                    where: 'dialogue_id = ? AND sequence_order = ?',
                    whereArgs: [dId, j],
                    limit: 1,
                  );

                  int gId;
                  if (existingMessage.isNotEmpty) {
                    gId = existingMessage.first['group_id'] as int;
                    await UnifiedRepository.addLanguageToUnifiedRecord(
                      groupId: gId,
                      text: primaryText,
                      lang: (sText != null) ? sourceLang : targetLang,
                      type: msg['type'] as String? ?? 'sentence',
                      pos: msg['pos'] as String?,
                      formType: (msg['form_type'] ?? msg['formType']) as String?,
                      style: msg['style'] as String?,
                      root: msg['root'] as String?,
                      note: (msg['note'] ?? msg['context']) as String?,
                      txn: txn,
                    );
                    
                    if (sText != null && tText != null && sText != tText) {
                      await UnifiedRepository.addLanguageToUnifiedRecord(
                        groupId: gId,
                        text: tText,
                        lang: targetLang,
                        type: msg['type'] as String? ?? 'sentence',
                        txn: txn,
                      );
                    }
                  } else {
                    gId = await UnifiedRepository.saveUnifiedRecord(
                      text: sText ?? tText!,
                      lang: (sText != null) ? sourceLang : targetLang,
                      translation: tText ?? sText!,
                      targetLang: (tText != null) ? targetLang : sourceLang,
                      type: msg['type'] as String? ?? 'sentence',
                      pos: msg['pos'] as String?,
                      formType: (msg['form_type'] ?? msg['formType']) as String?,
                      style: msg['style'] as String?,
                      root: msg['root'] as String?,
                      note: (msg['note'] ?? msg['context']) as String?,
                      syncSubject: syncSubject,
                      tags: ['Dialogue', dTitle, materialSubject, ...fileTags],
                      txn: txn,
                    );
                    await txn.insert('chat_messages', {
                      'dialogue_id': dId,
                      'group_id': gId,
                      'speaker': msg['speaker'] ?? 'Unknown',
                      'sequence_order': j,
                      'created_at': batchCreatedAt,
                    });
                  }
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

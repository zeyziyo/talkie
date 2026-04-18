import 'dart:convert';
import '../database_service.dart';
import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';
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
      final batchCreatedAt = DateTime.now().toIso8601String();
      final entryDefaultType = (data['default_type'] ?? meta['default_type'] ?? defaultType) as String? ?? 'sentence';
      
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
      
      final db = await _db;
      
      return await db.transaction((txn) async {
         int importedCount = 0;
         int skippedCount = 0;
         List<String> errors = [];
         dynamic importId; 

      // Standard words/sentences
      // Phase 160: study_materials table removed. 
      // Notebooks are identified by notebook_title in meta tables.
      importId = materialSubject;

      if (entries != null) {
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
            };
            final List<String> allTags = uniqueTags.where((t) {
              final lowerT = t.toLowerCase().trim();
              if (lowerT.isEmpty) return false;
              // v59.5: Enhanced Blacklist Filter for Tags (System keywords/Filenames)
              if (lowerT.endsWith('.json') || lowerT.endsWith('.csv')) return false;
              if (lowerT == materialSubject.toLowerCase().trim()) return false;
              if (lowerT == syncSubject.toLowerCase().trim()) return false;
              if (fileName != null && lowerT == fileName.toLowerCase().trim()) return false;
              if (lowerT.startsWith('remote_') && lowerT.endsWith('_merged.json')) return false;
              if (lowerT.contains('uuid')) return false; 
              return true;
            }).toList();
            final type = entry['type'] as String? ?? entryDefaultType;
            final tableContent = type == 'word' ? 'words' : 'sentences';

            final String idBaseText = (sourceLang == 'en') ? sText : (tText != null && targetLang == 'en' ? tText : sText);
            
            final int gId = UnifiedRepository.generateGroupId(
              text: idBaseText,
              type: type,
            );

            final existing = await txn.query(tableContent, where: 'group_id = ?', whereArgs: [gId], limit: 1);
            Map<String, dynamic> finalContentMap = {};
            
            if (existing.isNotEmpty) {
              finalContentMap = jsonDecode(existing.first['data_json'] as String);
            }

            finalContentMap[sourceLang] = {
              'text': sText,
              'note': _getVal(entry, 'note'),
            };
            if (type == 'word') {
              finalContentMap[sourceLang]['root'] = _getVal(entry, 'root');
            }

            if (hasTarget) {
              finalContentMap[targetLang] = {
                'text': tText,
                'note': _getVal(entry, 'note'),
              };
              if (type == 'word') {
                finalContentMap[targetLang]['root'] = _getVal(entry, 'target_root');
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
                group_id, notebook_title, source_lang, target_lang, tags,
                is_memorized, is_synced, review_count, last_reviewed, created_at
              ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
              ON CONFLICT(group_id, notebook_title) DO UPDATE SET
                source_lang = excluded.source_lang,
                target_lang = excluded.target_lang,
                tags = excluded.tags,
                is_synced = MAX($metaTable.is_synced, excluded.is_synced),
                is_memorized = MAX($metaTable.is_memorized, excluded.is_memorized),
                review_count = MAX($metaTable.review_count, excluded.review_count),
                last_reviewed = MAX($metaTable.last_reviewed, excluded.last_reviewed)
            ''', [
              gId,
              materialSubject,
              sourceLang,
              targetLang,
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

          if (entries == null) {
            return {
              'success': false,
              'error': 'No entries found in JSON',
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
            'total': skippedCount + importedCount,
            'notebook_title': importId, // Notebook Title
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

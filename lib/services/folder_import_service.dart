import 'dart:convert';
import 'dart:io';
import 'package:archive/archive.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'database_service.dart';

/// FolderImportService - 폴더 구조(언어/유형/파일)를 유지한 채 학습 자료를 병합 수입하는 서비스
class FolderImportService {
  
  /// ZIP 파일로부터 폴더 구조를 인식하여 임포트
  static Future<Map<String, dynamic>> importFromZip(Uint8List zipBytes, {
    required String nativeLang,
    required String studyLang,
  }) async {
    final archive = ZipDecoder().decodeBytes(zipBytes);
    final Map<String, Map<String, Map<String, dynamic>>> fileDataMap = {};

    _status('ZIP 파일 구조 분석 중...');

    for (final file in archive) {
      if (!file.isFile || !file.name.endsWith('.json')) continue;

      // 경로 분해 결과에서 언어명이 발견되는 위치 찾기 (Root-Agnostic)
      final parts = p.split(file.name);
      int langIdx = -1;
      for (int i = 0; i <= parts.length - 3; i++) {
        if (_getLangCodeFromName(parts[i]) != null) {
          langIdx = i;
          break;
        }
      }
      if (langIdx == -1) continue;

      final langName = parts[langIdx];
      // final type = parts[langIdx + 1]; // words, sentences, dialogues
      final fileName = parts.last;
      final langCode = _getLangCodeFromName(langName);

      if (langCode == null) continue;

      try {
        final content = utf8.decode(file.content as List<int>);
        final data = json.decode(content) as Map<String, dynamic>;
        
        fileDataMap.putIfAbsent(fileName, () => {});
        fileDataMap[fileName]![langCode] = data;
      } catch (e) {
        debugPrint('[FolderImport] Error parsing ${file.name}: $e');
      }
    }

    return await _processMergedImport(fileDataMap, nativeLang, studyLang);
  }

  /// 폴더 경로로부터 직접 임포트 (모바일 Directory Picker 대응)
  static Future<Map<String, dynamic>> importFromDirectory(String rootPath, {
    required String nativeLang,
    required String studyLang,
  }) async {
    final directory = Directory(rootPath);
    if (!await directory.exists()) return {'success': false, 'error': 'Directory not found'};

    final Map<String, Map<String, Map<String, dynamic>>> fileDataMap = {};
    _status('폴더 스캔 중...');

    final List<File> jsonFiles = directory
        .listSync(recursive: true)
        .whereType<File>()
        .where((f) => f.path.endsWith('.json'))
        .toList();

    for (final file in jsonFiles) {
      final relative = p.relative(file.path, from: rootPath);
      final parts = p.split(relative);
      
      int langIdx = -1;
      for (int i = 0; i <= parts.length - 3; i++) {
        if (_getLangCodeFromName(parts[i]) != null) {
          langIdx = i;
          break;
        }
      }
      if (langIdx == -1) continue;

      final langName = parts[langIdx];
      final langCode = _getLangCodeFromName(langName);
      final fileName = parts.last;

      if (langCode == null) continue;

      try {
        final content = await file.readAsString();
        final data = json.decode(content) as Map<String, dynamic>;
        
        fileDataMap.putIfAbsent(fileName, () => {});
        fileDataMap[fileName]![langCode] = data;
      } catch (e) {
        debugPrint('[FolderImport] Error reading ${file.path}: $e');
      }
    }

    return await _processMergedImport(fileDataMap, nativeLang, studyLang);
  }

  /// 병합된 데이터 맵을 순회하며 DB에 저장
  static Future<Map<String, dynamic>> _processMergedImport(
    Map<String, Map<String, Map<String, dynamic>>> dataMap,
    String nativeLang,
    String studyLang,
  ) async {
    int totalFiles = dataMap.length;
    int importedFiles = 0;
    int totalEntries = 0;

    for (final entry in dataMap.entries) {
      final fileName = entry.key;
      final langMap = entry.value;

      // Native(출발어)와 Study(목표어) 데이터가 모두 있는지 확인
      if (!langMap.containsKey(nativeLang) || !langMap.containsKey(studyLang)) {
        debugPrint('[FolderImport] Skipping $fileName: Missing required lang pairs ($nativeLang-$studyLang)');
        continue;
      }

      final sourceData = langMap[nativeLang]!;
      final targetData = langMap[studyLang]!;
      final subject = sourceData['subject'] ?? fileName.replaceAll('.json', '');
      final type = sourceData['default_type'] ?? 'sentence';

      // 데이터 병합 (Source의 인덱스를 기준으로 Target 매칭)
      final List sourceEntries = sourceData['entries'] ?? [];
      final List targetEntries = targetData['entries'] ?? [];
      final List<Map<String, dynamic>> mergedEntries = [];

      for (int i = 0; i < sourceEntries.length; i++) {
        final sEntry = sourceEntries[i] as Map<String, dynamic>;
        // 타겟에서 동일 인덱스 추출 (또는 group_id 매칭 가능)
        Map<String, dynamic>? tEntry;
        if (targetEntries.length > i) {
          tEntry = targetEntries[i] as Map<String, dynamic>;
        }

        mergedEntries.add({
          'source_text': sEntry['source_text'] ?? sEntry['text'] ?? '',
          'target_text': tEntry?['target_text'] ?? tEntry?['text'] ?? '',
          'note': sEntry['note'] ?? sEntry['context'] ?? '',
          'type': sEntry['type'] ?? type,
          'tags': (sEntry['tags'] as List? ?? [])..add(subject),
        });
      }

      final Map<String, dynamic> finalJson = {
        'subject': subject,
        'source_language': nativeLang,
        'target_language': studyLang,
        'default_type': type,
        'entries': mergedEntries,
      };

      final result = await DatabaseService.importFromJsonWithMetadata(
        json.encode(finalJson),
        overrideSubject: subject,
        defaultSourceLang: nativeLang,
        defaultTargetLang: studyLang,
      );

      if (result['success'] == true) {
        importedFiles++;
        totalEntries += mergedEntries.length;
      }
    }

    return {
      'success': true,
      'imported_files': importedFiles,
      'total_files': totalFiles,
      'total_entries': totalEntries,
    };
  }

  /// 언어 이름(English, Korean 등)을 코드로 매칭
  static String? _getLangCodeFromName(String name) {
    final Map<String, String> nameToCode = {
      'English': 'en',
      'Korean': 'ko',
      'Japanese': 'ja',
      'Spanish': 'es',
      'French': 'fr',
      'German': 'de',
      'Chinese': 'zh',
    };
    return nameToCode[name];
  }

  static void _status(String msg) => debugPrint('[FolderImport] $msg');
}

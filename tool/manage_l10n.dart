import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

/// Configuration
const String kMasterFile = 'lib/l10n/app_ko.arb';
const String kL10nDir = 'lib/l10n';
const String kEnvFile = '.env';
const String kGeminiKeyEnv = 'GEMINI_API_KEY';
const String kGeminiUrl = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent';

void main(List<String> args) async {
  print('🚀 Starting High-Speed L10n Manager (Batch Mode)...');
  
  final env = await _loadEnv();
  final geminiKey = env[kGeminiKeyEnv];

  if (geminiKey == null) {
    print('❌ Error: $kGeminiKeyEnv not found in $kEnvFile.');
    exit(1);
  }

  final masterFile = File(kMasterFile);
  final masterMap = _parseArb(masterFile);
  print('📦 Master loaded: ${masterMap.length} keys.');

  final dir = Directory(kL10nDir);
  final files = dir.listSync().whereType<File>().where((f) => f.path.endsWith('.arb')).toList();
  files.sort((a, b) => a.path.compareTo(b.path));

  for (final file in files) {
    if (file.path == masterFile.path) continue;
    await _processFileBatch(file, masterMap, geminiKey);
  }

  print('✨ L10n Update Complete. Run "flutter gen-l10n" to apply changes.');
}

Future<void> _processFileBatch(File file, Map<String, dynamic> masterMap, String apiKey) async {
  final langCode = _extractLangCode(file.path);
  final targetMap = _parseArb(file);
  
  final sortedKeys = masterMap.keys.toList();
  final batchToTranslate = <String, String>{};
  
  for (final key in sortedKeys) {
    if (key.startsWith('@')) continue;
    bool isMissing = !targetMap.containsKey(key);
    bool needsTranslation = !isMissing && targetMap[key].toString().contains('(TODO: Translate)');
    if (isMissing || needsTranslation) {
      batchToTranslate[key] = masterMap[key];
    }
  }

  // Check for obsolete keys (keys in target but not in master)
  final targetKeys = targetMap.keys.where((k) => !k.startsWith('@') && k != '@@locale').toSet();
  final masterKeys = masterMap.keys.where((k) => !k.startsWith('@')).toSet();
  final hasObsoleteKeys = targetKeys.difference(masterKeys).isNotEmpty;

  if (batchToTranslate.isEmpty && !hasObsoleteKeys) {
    print('✅ $langCode: Up to date.');
    return;
  }

  print('🌐 $langCode: Batch translating ${batchToTranslate.length} keys...');
  
  try {
    final translations = await _translateBatch(batchToTranslate, 'Korean', langCode, apiKey);
    
    final newMap = <String, dynamic>{};
    if (targetMap.containsKey('@@locale')) newMap['@@locale'] = targetMap['@@locale'];

    for (final key in sortedKeys) {
      if (key.startsWith('@')) continue;
      
      if (translations.containsKey(key)) {
        newMap[key] = translations[key];
      } else if (targetMap.containsKey(key)) {
        newMap[key] = targetMap[key];
      } else {
        newMap[key] = masterMap[key] + ' (TODO: Manual Translate)';
      }

      if (masterMap.containsKey('@$key')) {
        newMap['@$key'] = masterMap['@$key'];
      }
    }

    const encoder = JsonEncoder.withIndent('  ');
    await file.writeAsString(encoder.convert(newMap));
    print('   📝 Updated ${file.path}');
    // Delay to respect rate limits (free tier)
    await Future.delayed(const Duration(seconds: 5)); 
  } catch (e) {
    print('   ❌ Error batch translating $langCode: $e');
  }
}

Future<Map<String, String>> _translateBatch(Map<String, String> batch, String sourceLang, String targetLang, String apiKey, {int retryCount = 0}) async {
  // Normalize target lang for prompt
  String displayTarget = targetLang;
  if (targetLang == 'ko') displayTarget = 'Korean';
  if (targetLang == 'en') displayTarget = 'English';
  if (targetLang == 'ja') displayTarget = 'Japanese';

  final prompt = '''
Translate the following JSON object values from $sourceLang to $displayTarget (Locale code: $targetLang).
Return ONLY a valid JSON object with the same keys. 
Keep the meaning natural and appropriate for a mobile app UI.

Input JSON:
${jsonEncode(batch)}
''';

  final response = await http.post(
    Uri.parse('$kGeminiUrl?key=$apiKey'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'contents': [
        {
          'parts': [{'text': prompt}]
        }
      ],
      'generationConfig': {
        'response_mime_type': 'application/json',
      }
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    var text = data['candidates'][0]['content']['parts'][0]['text'];
    text = text.replaceAll('```json', '').replaceAll('```', '').trim();
    return Map<String, String>.from(jsonDecode(text));
  } else if (response.statusCode == 429 && retryCount < 5) {
      print('   ⚠️ Rate limited. Retrying in ${5 + retryCount * 2}s...');
      await Future.delayed(Duration(seconds: 5 + retryCount * 2));
      return _translateBatch(batch, sourceLang, targetLang, apiKey, retryCount: retryCount + 1);
  } else {
    // print('Gemini API Error: ${response.statusCode} - ${response.body}');
    throw Exception('Gemini Error (${response.statusCode}): ${response.body}');
  }
}

Map<String, dynamic> _parseArb(File file) {
  try {
    return jsonDecode(file.readAsStringSync());
  } catch (e) {
    return {};
  }
}

String _extractLangCode(String path) {
  final filename = path.split(Platform.pathSeparator).last;
  final parts = filename.split('_');
  return parts.length >= 2 ? parts.sublist(1).join('_').replaceAll('.arb', '') : 'en';
}

Future<Map<String, String>> _loadEnv() async {
  final file = File(kEnvFile);
  if (!file.existsSync()) return {};
  final env = <String, String>{};
  for (final line in await file.readAsLines()) {
    if (line.trim().startsWith('#') || !line.contains('=')) continue;
    final parts = line.split('=');
    var val = parts.sublist(1).join('=').trim();
    if (val.startsWith('"') && val.endsWith('"')) val = val.substring(1, val.length - 1);
    env[parts[0].trim()] = val;
  }
  return env;
}

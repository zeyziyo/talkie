import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

/// Configuration
const String kMasterFile = 'lib/l10n/app_ko.arb'; // Master is Korean
const String kL10nDir = 'lib/l10n';
const String kEnvFile = '.env';
const String kApiKeyEnvName = 'GOOGLE_CLOUD_API_KEY';
const String kTranslationApiUrl = 'https://translation.googleapis.com/language/translate/v2';

/// Main Entry Point
void main(List<String> args) async {
  print('🌐 Starting L10n Manager...');
  
  // 1. Load API Key
  final apiKey = await _loadApiKey();
  if (apiKey == null) {
    print('⚠️  Warning: $kApiKeyEnvName not found in $kEnvFile.');
    print('   Translation will be skipped, and keys will be added with [TODO] markers.');
  } else {
    print('✅ API Key loaded.');
  }

  // 2. Load Master ARB
  final masterFile = File(kMasterFile);
  if (!masterFile.existsSync()) {
    print('❌ Master file not found: $kMasterFile');
    exit(1);
  }
  
  final masterMap = _parseArb(masterFile);
  print('📦 Master (${masterFile.path}) loaded: ${masterMap.length} keys.');

  // 3. Process All ARB Files
  final dir = Directory(kL10nDir);
  final files = dir.listSync().whereType<File>().where((f) => f.path.endsWith('.arb')).toList();

  for (final file in files) {
    if (file.path == masterFile.path) continue; // Skip master
    
    await _processFile(file, masterMap, apiKey);
  }

  print('✨ L10n Update Complete.');
}

/// Process individual ARB file
Future<void> _processFile(File file, Map<String, dynamic> masterMap, String? apiKey) async {
  final langCode = _extractLangCode(file.path);
  final targetMap = _parseArb(file);
  bool modified = false;
  int addedCount = 0;

  print('running process for $langCode...');
  
  final sortedKeys = masterMap.keys.toList(); // Maintain master order if possible
  
  // Create a new map to enforce order (optional, but good for git diffs)
  // Logic: Iterate master keys. If existing in target, keep. If missing, add.
  // Note: This might reorder existing files. For safety, let's just append missing ones for now
  // or insert carefully. Actually, re-creating the map based on Master order is cleaner.
  
  final newMap = <String, dynamic>{};
  
  // Preserve meta keys first (@@locale etc)
  if (targetMap.containsKey('@@locale')) newMap['@@locale'] = targetMap['@@locale'];
  
  for (final key in sortedKeys) {
    if (key.startsWith('@')) continue; // Skip metadata keys for now, handle with main key
    
    if (targetMap.containsKey(key)) {
      newMap[key] = targetMap[key];
      // Also copy metadata if exists
      if (targetMap.containsKey('@$key')) {
        newMap['@$key'] = targetMap['@$key'];
      }
    } else {
      // Key Missing!
      final masterValue = masterMap[key] as String;
      String translatedValue;
      
      if (apiKey != null) {
        // Auto-Translate
        print('   Translating "$key" to ($langCode)...');
        try {
          translatedValue = await _translate(masterValue, 'ko', langCode, apiKey);
        } catch (e) {
          print('   ❌ Translation failed: $e');
          translatedValue = '$masterValue (TODO: Translate)';
        }
      } else {
        translatedValue = '$masterValue (TODO: Translate)';
      }
      
      newMap[key] = translatedValue;
      modified = true;
      addedCount++;
    }
  }
  
  // Add any extra keys that exist in target but not master? (Obsolete keys)
  // For strict sync, we might want to keep them or warn. Let's keep them at end.
  for (final key in targetMap.keys) {
    if (!newMap.containsKey(key) && !key.startsWith('@')) {
       newMap[key] = targetMap[key];
    }
  }

  if (modified) {
    const encoder = JsonEncoder.withIndent('  ');
    await file.writeAsString(encoder.convert(newMap));
    print('   📝 Updated ${file.path} (Added $addedCount keys)');
  }
}

/// Parse ARB (JSON)
Map<String, dynamic> _parseArb(File file) {
  try {
    return jsonDecode(file.readAsStringSync());
  } catch (e) {
    print('❌ Invalid JSON in ${file.path}: $e');
    return {};
  }
}

/// Extract language code from filename (app_ko.arb -> ko)
String _extractLangCode(String path) {
  final filename = path.split(Platform.pathSeparator).last;
  final parts = filename.split('_');
  if (parts.length >= 2) {
    return parts.sublist(1).join('_').replaceAll('.arb', '');
  }
  return 'en';
}

/// Load API Key from .env
Future<String?> _loadApiKey() async {
  final file = File(kEnvFile);
  if (!file.existsSync()) return null;
  
  final lines = await file.readAsLines();
  for (final line in lines) {
    if (line.trim().startsWith(kApiKeyEnvName)) {
      // Format: KEY=VALUE or KEY="VALUE"
      final parts = line.split('=');
      if (parts.length >= 2) {
        var val = parts.sublist(1).join('=').trim();
        if (val.startsWith('"') && val.endsWith('"')) {
          val = val.substring(1, val.length - 1);
        }
        return val;
      }
    }
  }
  return null;
}

/// Call Google Cloud Translation API
Future<String> _translate(String text, String source, String target, String apiKey) async {
  // Normalize codes (same logic as app)
  if (target == 'he') target = 'iw';
  if (target == 'fil') target = 'tl'; // Google uses 'tl' for Tagalog/Filipino usually, check docs
  
  final url = Uri.parse('$kTranslationApiUrl?key=$apiKey');
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'q': text,
      'source': source,
      'target': target,
      'format': 'text'
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data['data']['translations'][0]['translatedText'];
  } else {
    throw Exception('API Error: ${response.body}');
  }
}

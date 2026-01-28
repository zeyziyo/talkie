import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

const String kEnvFile = '.env';
const String kGeminiKeyEnv = 'GEMINI_API_KEY';

void main() async {
  final env = await _loadEnv();
  final apiKey = env[kGeminiKeyEnv];

  if (apiKey == null) {
    print('Error: API Key not found');
    exit(1);
  }

  print('Checking available models for provided API Key...');
  final url = 'https://generativelanguage.googleapis.com/v1beta/models?key=$apiKey';
  
  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('Found ${data['models'].length} models:');
      for (var model in data['models']) {
        if (model['name'].contains('gemini')) {
          print('- ${model['name']} (Methods: ${model['supportedGenerationMethods']})');
        }
      }
    } else {
      print('Error ${response.statusCode}: ${response.body}');
    }
  } catch (e) {
    print('Exception: $e');
  }
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

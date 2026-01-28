import 'dart:io';
import 'dart:convert';

void main() {
  final l10nDir = Directory(r'c:\FlutterProjects\talkie\lib\l10n');
  final enFile = File('${l10nDir.path}\\app_en.arb');
  
  if (!enFile.existsSync()) {
    print('Error: app_en.arb not found');
    return;
  }

  final enContent = enFile.readAsStringSync();
  final Map<String, dynamic> enJson = jsonDecode(enContent);

  l10nDir.listSync().forEach((entity) {
    if (entity is File && entity.path.endsWith('.arb') && !entity.path.endsWith('app_en.arb')) {
      print('Processing ${entity.path}...');
      try {
        final content = entity.readAsStringSync();
        final Map<String, dynamic> json = jsonDecode(content);
        bool changed = false;

        enJson.forEach((key, value) {
          if (!key.startsWith('@') && !json.containsKey(key)) {
            json[key] = value; // Add missing key with English value
            changed = true;
            print('  Added: $key');
          }
          // Also copy meta key if exists and missing
          if (enJson.containsKey('@$key') && !json.containsKey('@$key')) {
             json['@$key'] = enJson['@$key'];
             changed = true;
          }
        });

        if (changed) {
          entity.writeAsStringSync(const JsonEncoder.withIndent('  ').convert(json));
          print('  Saved.');
        }
      } catch (e) {
        print('  Error processing ${entity.path}: $e');
      }
    }
  });
}

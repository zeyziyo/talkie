import 'dart:io';
import 'dart:convert';

void main() {
  final dir = Directory('lib/l10n');
  if (!dir.existsSync()) {
    print('Directory not found: lib/l10n');
    return;
  }
  
  dir.listSync().forEach((file) {
    if (file is File && 
        file.path.endsWith('.arb') && 
        !file.path.endsWith('app_ko.arb') && 
        !file.path.endsWith('app_en.arb')) {
      
      try {
        final content = file.readAsStringSync();
        final Map<String, dynamic> json = jsonDecode(content);
        
        if (json.containsKey('homeTab')) {
          json.remove('homeTab');
          final encoder = JsonEncoder.withIndent('  ');
          file.writeAsStringSync(encoder.convert(json));
          print('✅ Removed homeTab from ${file.path}');
        }
      } catch (e) {
        print('❌ Error processing ${file.path}: $e');
      }
    }
  });
}

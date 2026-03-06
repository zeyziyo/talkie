import 'dart:io';
import 'dart:convert';

void main() {
  final dir = Directory('lib/l10n');
  final files = dir.listSync().whereType<File>().where((f) => f.path.endsWith('.arb')).toList();
  
  int count = 0;
  for (final file in files) {
    if (file.path.endsWith('app_ko.arb') || file.path.endsWith('app_en.arb')) continue;
    
    final content = file.readAsStringSync();
    try {
      final Map<String, dynamic> map = jsonDecode(content);
      if (map.containsKey('helpMode2Details') && !map['helpMode2Details'].toString().contains('(TODO: Translate)')) {
        map['helpMode2Details'] = map['helpMode2Details'].toString() + ' (TODO: Translate)';
        final encoder = JsonEncoder.withIndent('  ');
        file.writeAsStringSync(encoder.convert(map));
        count++;
      }
    } catch (e) {
      print('Error parsing ${file.path}');
    }
  }
  print('Successfully marked helpMode2Details in $count language files.');
}

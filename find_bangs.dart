import 'dart:io';

void main() {
  final dir = Directory('lib');
  final slash = Platform.isWindows ? '\\' : '/';
  
  dir.listSync(recursive: true).forEach((file) {
    if (file is File && file.path.endsWith('.dart')) {
      final lines = file.readAsLinesSync();
      for (var i = 0; i < lines.length; i++) {
        final line = lines[i];
        if (line.contains('!') && !line.trim().startsWith('//')) {
          // Check for null assertion specifically: var!, object!, function()!
          // Filter out !=, !bool
          final regex = RegExp(r'[a-zA-Z0-9)\]]\!($|[^=])');
          if (regex.hasMatch(line)) {
            print('${file.path}:${i + 1}: $line');
          }
        }
      }
    }
  });
}

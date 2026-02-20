import 'dart:io';
import 'dart:convert';

void main() async {
  final materialsDir = Directory('docs/materials/English');
  final outputFile = File('docs/materials_v3.json');

  if (!await materialsDir.exists()) {
    print('Error: materials directory not found at ${materialsDir.path}');
    return;
  }

  List<Map<String, dynamic>> materials = [];

  // Scanners for each category
  await _scanCategory(materialsDir, 'words', 'word', materials);
  await _scanCategory(materialsDir, 'sentences', 'sentence', materials);
  await _scanCategory(materialsDir, 'dialogues', 'dialogue', materials);

  final outputData = {'materials': materials};
  
  await outputFile.writeAsString(json.encode(outputData));
  print('Successfully generated ${outputFile.path} with ${materials.length} items.');
}

Future<void> _scanCategory(
  Directory baseDir, 
  String subDirName, 
  String type, 
  List<Map<String, dynamic>> materials
) async {
  final dir = Directory('${baseDir.path}/$subDirName');
  if (!await dir.exists()) return;

  await for (final entity in dir.list()) {
    if (entity is File && entity.path.endsWith('.json')) {
      try {
        final content = await entity.readAsString();
        final jsonContent = json.decode(content);
        
        // Use subject as name, fallback to filename
        String name = jsonContent['subject'] ?? 
                      entity.uri.pathSegments.last.replaceAll('.json', '');
        
        // Construct path relative to docs/materials/English
        // The app expects "words/filename.json" format relative to language folder
        String relativePath = '$subDirName/${entity.uri.pathSegments.last}';

        // Extract ID if available, or generate from filename
        String id = jsonContent['id']?.toString() ?? 
                    entity.uri.pathSegments.last.replaceAll('.json', '');

        materials.add({
          'id': id,
          'name': name,
          'path': relativePath,
          'category': _capitalize(subDirName),
          'type': type,
        });
        
        print('Added: $name ($type)');
      } catch (e) {
        print('Error parsing ${entity.path}: $e');
      }
    }
  }
}

String _capitalize(String s) {
  if (s.isEmpty) return s;
  return s[0].toUpperCase() + s.substring(1);
}

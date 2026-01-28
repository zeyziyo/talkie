import 'dart:convert';
import 'dart:io';

void main() {
  final translations = {
    'ja': {
      'basicWordRepository': '基本単語リポジトリ',
      'basicSentenceRepository': '基本文リポジトリ',
    },
    'zh': {
      'basicWordRepository': '基础词汇库',
      'basicSentenceRepository': '基础句库',
    },
    'zh_CN': {
      'basicWordRepository': '基础词汇库',
      'basicSentenceRepository': '基础句库',
    },
    'zh_TW': {
      'basicWordRepository': '基礎詞彙庫',
      'basicSentenceRepository': '基礎句庫',
    },
    'es': {
      'basicWordRepository': 'Repositorio de palabras básicas',
      'basicSentenceRepository': 'Repositorio de oraciones básicas',
    },
    'fr': {
      'basicWordRepository': 'Référentiel de mots de base',
      'basicSentenceRepository': 'Référentiel de phrases de base',
    },
    'de': {
      'basicWordRepository': 'Grundwortschatz',
      'basicSentenceRepository': 'Grundsatz-Repository',
    },
    'ru': {
      'basicWordRepository': 'Базовый репозиторий слов',
      'basicSentenceRepository': 'Базовый репозиторий предложений',
    },
    'it': {
      'basicWordRepository': 'Repository di parole di base',
      'basicSentenceRepository': 'Repository di frasi di base',
    },
    'pt': {
      'basicWordRepository': 'Repositório de palavras básicas',
      'basicSentenceRepository': 'Repositório de frases básicas',
    },
  };

  final dir = Directory('lib/l10n');
  if (!dir.existsSync()) return;

  for (final file in dir.listSync().whereType<File>().where((f) => f.path.endsWith('.arb'))) {
    final fileName = file.path.split(Platform.pathSeparator).last;
    final langCode = fileName.replaceAll('app_', '').replaceAll('.arb', '');
    
    if (translations.containsKey(langCode)) {
      try {
        final content = file.readAsStringSync();
        final map = jsonDecode(content) as Map<String, dynamic>;
        
        map['basicWordRepository'] = translations[langCode]!['basicWordRepository'];
        map['basicSentenceRepository'] = translations[langCode]!['basicSentenceRepository'];
        
        const encoder = JsonEncoder.withIndent('  ');
        file.writeAsStringSync(encoder.convert(map));
        print('✅ Updated $langCode');
      } catch (e) {
        print('❌ Error updating $langCode: $e');
      }
    }
  }
}

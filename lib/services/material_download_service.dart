import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/foundation.dart';

class MaterialDownloadService {
  static const String _baseUrl = 'https://zeyziyo.github.io/talkie/downloads';

  static final List<Map<String, String>> availableMaterials = [
    {
      'label': '🇰🇷 Korean → 🇺🇸 English (Words)',
      'fileName': 'talkie_ko_en_words.json',
      'subject': 'Basic Words',
      'source': 'Talkie Sample',
    },
    {
      'label': '🇰🇷 Korean → 🇺🇸 English (Sentences)',
      'fileName': 'talkie_ko_en_sentences.json',
      'subject': 'Basic Sentences',
      'source': 'Talkie Sample',
    },
    {
      'label': '🇰🇷 Korean → 🇪🇸 Spanish (Words)',
      'fileName': 'talkie_ko_es_words.json',
      'subject': 'Basic Words',
      'source': 'Talkie Sample',
    },
    {
      'label': '🇰🇷 Korean → 🇪🇸 Spanish (Sentences)',
      'fileName': 'talkie_ko_es_sentences.json',
      'subject': 'Basic Sentences',
      'source': 'Talkie Sample',
    },
    {
      'label': '🇰🇷 Korean → 🇯🇵 Japanese (Words)',
      'fileName': 'talkie_ko_ja_words.json',
      'subject': 'Basic Words',
      'source': 'Talkie Sample',
    },
    {
      'label': '🇰🇷 Korean → 🇯🇵 Japanese (Sentences)',
      'fileName': 'talkie_ko_ja_sentences.json',
      'subject': 'Basic Sentences',
      'source': 'Talkie Sample',
    },
  ];

  /// Download JSON content from the server
  static Future<Map<String, dynamic>> downloadMaterial(String fileName) async {
    try {
      final url = Uri.parse('$_baseUrl/$fileName');
      debugPrint('Downloading material from: $url');
      
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // Decode UTF-8 explicitly to handle Korean characters correctly
        final String jsonString = utf8.decode(response.bodyBytes);
        return {
          'success': true,
          'content': jsonString,
        };
      } else {
        return {
          'success': false,
          'error': 'Failed to download file. Status code: ${response.statusCode}',
        };
      }
    } catch (e) {
      debugPrint('Error downloading material: $e');
      return {
        'success': false,
        'error': 'Network error: $e',
      };
    }
  }
}

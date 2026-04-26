part of 'app_state.dart';

mixin AppStateScan on ChangeNotifier {
  // Fields are in main app_state.dart for shared access
  // _scannedImage, _scannedText, _scanDetectedLang
}

extension AppStateScanExtension on AppState {
  Future<void> pickImageAndRecognizeText() async {
    final ImagePicker picker = ImagePicker();
    // 최대 1280px로 제한하여 OOM 방지
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1280,
      maxHeight: 1280,
      imageQuality: 85,
    );

    if (image == null) return;

    clearScanData(); 
    setScannedImage(File(image.path));
    isTranslating = true;
    notify();

    try {
      final inputImage = InputImage.fromFilePath(image.path);
      
      // 스크립트별로 순차 처리하여 메모리 동시 점유 방지
      // Latin, Chinese, Devanagari, Japanese, Korean 5개 스크립트 지원
      final scripts = ScanSupportConstants.allScripts;

      List<Map<String, dynamic>> allBlocks = [];

      for (var script in scripts) {
        TextRecognizer? recognizer;
        try {
          debugPrint('[OCR] Processing script: ${script.name}');
          recognizer = TextRecognizer(script: script);
          final RecognizedText recognizedText = await recognizer.processImage(inputImage);
          
          for (var block in recognizedText.blocks) {
            String lang = 'auto';
            if (block.recognizedLanguages.isNotEmpty) {
              lang = block.recognizedLanguages.first;
            } else {
              if (script == TextRecognitionScript.korean) { lang = 'ko'; }
              else if (script == TextRecognitionScript.japanese) { lang = 'ja'; }
              else if (script == TextRecognitionScript.chinese) { lang = 'zh'; }
              else if (script == TextRecognitionScript.latin) { lang = 'en'; }
            }

            allBlocks.add({
              'lang': lang,
              'text': block.text,
              'rect': block.boundingBox,
            });
          }
        } catch (e) {
          debugPrint('[OCR] Error processing script ${script.name}: $e');
          // 특정 스크립트 실패 시 계속 진행
        } finally {
          await recognizer?.close();
        }
      }

      // Deduplicate blocks based on Rect overlap (> 70%)
      List<Map<String, dynamic>> dedupedSegments = [];
      for (var block in allBlocks) {
        bool isDuplicate = false;
        final rect = block['rect'] as ui.Rect;
        
        for (var existing in dedupedSegments) {
          final existingRect = existing['rect'] as ui.Rect;
          final intersection = rect.intersect(existingRect);
          if (intersection.width > 0 && intersection.height > 0) {
             final overlapArea = intersection.width * intersection.height;
             final rectArea = rect.width * rect.height;
             if (overlapArea / rectArea > 0.7) {
               isDuplicate = true;
               break;
             }
          }
        }
        if (!isDuplicate) {
          dedupedSegments.add(block);
        }
      }

      // Group by language
      Map<String, List<String>> langGroups = {};
      for (var seg in dedupedSegments) {
        final lang = seg['lang'] as String;
        langGroups.putIfAbsent(lang, () => []).add(seg['text']);
      }

      List<Map<String, dynamic>> finalSegments = [];
      for (var entry in langGroups.entries) {
        finalSegments.add({
          'lang': entry.key,
          'original': entry.value.join('\n'),
          'translated': '',
        });
      }

      setScanReviewItems(finalSegments);
      await _translateAllSegments();

    } catch (e) {
      debugPrint('[Scan] OCR/Process Error: $e');
    } finally {
      isTranslating = false;
      notify();
    }
  }

  Future<void> _translateAllSegments() async {
    for (int i = 0; i < _scanReviewItems.length; i++) {
        final item = _scanReviewItems[i];
        if (item['original'].toString().trim().isEmpty) continue;

        // Skip translation if it's already in the native language
        if (item['lang'] == _sourceLang) {
          _scanReviewItems[i]['translated'] = item['original'];
          continue;
        }

        try {
          final result = await TranslationService.translate(
            text: item['original'],
            sourceLang: item['lang'],
            targetLang: _sourceLang, // Native language
          );

          if (result['isValid'] == true) {
            _scanReviewItems[i]['translated'] = result['text'];
          } else {
             _scanReviewItems[i]['translated'] = 'Translation rejected: AI safety';
          }
        } catch (e) {
          _scanReviewItems[i]['translated'] = 'Error: $e';
        }
    }
    notify();
  }

  Future<void> saveScannedItem() async {
    if (_scanReviewItems.isEmpty) return;

    try {
      // Build data_json map: { "en": { "text": "...", "translation": "..." }, ... }
      Map<String, dynamic> dataJson = {};
      for (var item in _scanReviewItems) {
        dataJson[item['lang']] = {
          'text': item['original'],
          'translation': item['translated'],
        };
      }
      
      await DatabaseService.insertScannedRecord({
        'data_json': jsonEncode(dataJson),
        'notebook_title': 'Scanned History',
        'tags': 'Scanned',
        'type': 'mixed', // Structured multi-lang
        'source_lang': _scanReviewItems.first['lang'], // Primary detect or mixed
        'target_lang': _sourceLang, // Native lang
        'created_at': DateTime.now().toIso8601String(),
      });
      
      _isSaved = true;
      notify();
    } catch (e) {
      debugPrint('[Scan] Save Error: $e');
    }
  }
}

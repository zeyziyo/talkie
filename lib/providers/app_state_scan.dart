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
      // 학습 언어(Target)의 스크립트 확인
      final targetScript = ScanSupportConstants.getScriptForLanguage(_targetLang);
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
              // ML Kit이 언어를 명시하지 않은 경우, 현재 스크립트가 학습 언어의 스크립트와 같다면 학습 언어로 간주
              if (script == targetScript) {
                lang = _targetLang;
              } else {
                // 그 외 기본 매핑
                if (script == TextRecognitionScript.korean) { lang = 'ko'; }
                else if (script == TextRecognitionScript.japanese) { lang = 'ja'; }
                else if (script == TextRecognitionScript.chinese) { lang = 'zh'; }
                else if (script == TextRecognitionScript.latin) { lang = 'en'; }
              }
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

      // 학습 언어(Target)와 내 언어(Source) 식별
      final learningLang = _targetLang.split('-')[0]; // e.g. 'en'

      // 1. 학습 언어(targetLang)와 일치하는 블록만 필터링
      List<Map<String, dynamic>> filteredBlocks = [];
      for (var block in allBlocks) {
        final blockLang = block['lang'].toString().split('-')[0];
        
        // 학습 언어와 일치하는 경우만 추가
        if (blockLang == learningLang) {
          filteredBlocks.add(block);
        } else if (block['lang'] == 'auto') {
          // 언어 감지가 안 된 경우, 현재 스크립트가 지원하는 언어와 일치하는지 확인 (추가 로직 필요 시)
          // 여기서는 안전하게 학습 언어와 명확히 일치하는 것만 우선 처리
          // 단, 라틴 스크립트인데 학습 언어가 영어인 경우 등은 위 루프에서 이미 처리됨
        }
      }

      // 2. 중복 제거 (Rect overlap > 70%)
      List<Map<String, dynamic>> dedupedSegments = [];
      for (var block in filteredBlocks) {
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

      // 3. 그룹화 및 최종 세그먼트 생성
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
      
      // 언어 불일치 안내 처리
      if (finalSegments.isEmpty && allBlocks.isNotEmpty) {
        // 텍스트는 인식되었으나 학습 언어와 일치하는 것이 없음
        setScannedText('NO_MATCH'); 
      } else if (allBlocks.isEmpty) {
        // 아예 인지된 텍스트가 없음
        setScannedText('NO_TEXT');
      } else {
        setScannedText(''); // 정상 처리
      }

      // 4. 내 언어(sourceLang)로 번역
      if (finalSegments.isNotEmpty) {
        await _translateAllSegmentsToNative();
      }

    } catch (e) {
      debugPrint('[Scan] OCR/Process Error: $e');
      setScannedText('ERROR: $e');
    } finally {
      isTranslating = false;
      notify();
    }
  }

  Future<void> _translateAllSegmentsToNative() async {
    for (int i = 0; i < _scanReviewItems.length; i++) {
        final item = _scanReviewItems[i];
        final originalText = item['original'].toString().trim();
        if (originalText.isEmpty) continue;

        try {
          // 학습 언어 -> 내 언어 번역
          final result = await TranslationService.translate(
            text: originalText,
            sourceLang: item['lang'], // detected lang (should be targetLang)
            targetLang: _sourceLang, // My Language
          );

          if (result['isValid'] == true) {
            _scanReviewItems[i]['translated'] = result['text'];
          } else {
             _scanReviewItems[i]['translated'] = 'Rejected: AI safety policy';
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

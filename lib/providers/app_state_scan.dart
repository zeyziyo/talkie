part of 'app_state.dart';

mixin AppStateScan on ChangeNotifier {
  // Fields are in main app_state.dart for shared access
}

extension AppStateScanExtension on AppState {
  Future<void> pickImageAndRecognizeText() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    _isTranslating = true;
    _isSaved = false;
    notify();

    try {
      final inputImage = InputImage.fromFilePath(image.path);
      
      final List<TextRecognitionScript> scripts = [
        TextRecognitionScript.latin,
        TextRecognitionScript.korean,
        TextRecognitionScript.chinese,
        TextRecognitionScript.japanese,
      ];

      List<Map<String, dynamic>> allBlocks = [];
      final targetScript = ScanSupportConstants.getScriptForLanguage(_targetLang);

      for (var script in scripts) {
        TextRecognizer? recognizer;
        try {
          recognizer = TextRecognizer(script: script);
          final RecognizedText recognizedText = await recognizer.processImage(inputImage);

          for (var block in recognizedText.blocks) {
            String lang = 'auto';
            if (block.recognizedLanguages.isNotEmpty) {
              lang = block.recognizedLanguages.first; // languageCode does not exist on String
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
              'script': script,
            });
          }
        } catch (e) {
          debugPrint('[OCR] Error processing script ${script.name}: $e');
        } finally {
          await recognizer?.close();
        }
      }

      final learningLang = _targetLang.split('-')[0];

      List<Map<String, dynamic>> filteredBlocks = [];
      for (var block in allBlocks) {
        final blockLang = block['lang'].toString().split('-')[0];
        final blockScript = block['script'] as TextRecognitionScript;
        
        if (blockLang == learningLang || blockScript == targetScript) {
          filteredBlocks.add(block);
          if (blockLang != learningLang) {
            block['lang'] = _targetLang;
          }
        }
      }

      List<Map<String, dynamic>> dedupedSegments = [];
      for (var block in filteredBlocks) {
        bool isDuplicate = false;
        final rect1 = block['rect'] as Rect;
        for (var existing in dedupedSegments) {
          final rect2 = existing['rect'] as Rect;
          final intersection = rect1.intersect(rect2);
          if (intersection.width > 0 && intersection.height > 0) {
            final area1 = rect1.width * rect1.height;
            final area2 = rect2.width * rect2.height;
            final overlapArea = intersection.width * intersection.height;
            if (overlapArea / area1 > 0.7 || overlapArea / area2 > 0.7) {
              isDuplicate = true;
              break;
            }
          }
        }
        if (!isDuplicate) {
          dedupedSegments.add({
            'text': block['text'],
            'lang': block['lang'],
            'rect': block['rect'],
          });
        }
      }

      List<Map<String, dynamic>> finalSegments = [];
      if (dedupedSegments.isNotEmpty) {
        final combinedOriginal = dedupedSegments.map((seg) => seg['text']).join('\n');
        finalSegments.add({
          'lang': _targetLang,
          'original': combinedOriginal,
          'translated': '',
        });
      }
      if (finalSegments.isEmpty && allBlocks.isNotEmpty) {
        setScannedText('NO_MATCH'); 
      } else if (allBlocks.isEmpty) {
        setScannedText('NO_TEXT');
      } else {
        setScannedText('');
      }

      setScanReviewItems(finalSegments);
      _isTranslatingSingleMap.clear();

    } catch (e) {
      debugPrint('[Scan] OCR/Process Error: $e');
      setScannedText('ERROR: $e');
    } finally {
      isTranslating = false;
      notify();
    }
  }

  bool isSegmentTranslating(int index) => _isTranslatingSingleMap[index] ?? false;

  Future<void> translateSingleSegment(int index) async {
    if (index < 0 || index >= _scanReviewItems.length) return;
    if (isSegmentTranslating(index)) return;

    final item = _scanReviewItems[index];
    final originalText = item['original'].toString().trim();
    if (originalText.isEmpty) return;

    _isTranslatingSingleMap[index] = true;
    notify();

    try {
      // 1. 번역 한도 체크 (5회 제한)
      await _usageService.checkLimitOrThrow();

      final cleanText = originalText.replaceAll('\n', ' ');
      final result = await TranslationService.translate(
        text: cleanText,
        sourceLang: item['lang'],
        targetLang: _sourceLang,
      );

      final translatedText = result['text']?.toString() ?? '';
      if (result['isValid'] == true || translatedText.isNotEmpty) {
        _scanReviewItems[index]['translated'] = translatedText;
        
        // 2. 번역 성공 시에만 횟수 차감
        await _usageService.incrementUsage();
      } else {
        final reason = result['reason']?.toString() ?? 'ERROR';
        if (reason.contains('429') || reason.contains('Resource exhausted') || reason.contains('Max retries')) {
          _splitSegmentIntoChunks(index);
          return;
        }
        _scanReviewItems[index]['translated'] = reason;
      }
    } catch (e) {
      if (e is LimitReachedException) {
        _scanReviewItems[index]['translated'] = 'LIMIT';
      } else {
        final errorStr = e.toString();
        if (errorStr.contains('429') || errorStr.contains('Resource exhausted')) {
          _splitSegmentIntoChunks(index);
          return;
        }
        _scanReviewItems[index]['translated'] = 'Error: $e';
      }
    } finally {
      _isTranslatingSingleMap[index] = false;
      notify();
    }
  }

  void _splitSegmentIntoChunks(int index) {
    final item = _scanReviewItems[index];
    final originalText = item['original'].toString();
    
    final lines = originalText.split('\n');
    if (lines.length <= 1) {
      // Cannot split further
      _scanReviewItems[index]['translated'] = 'Error: 429 Resource Exhausted. Please try again later.';
      return;
    }

    List<Map<String, dynamic>> newChunks = [];
    for (int i = 0; i < lines.length; i += 5) {
      final chunkLines = lines.skip(i).take(5).join('\n');
      if (chunkLines.trim().isNotEmpty) {
        newChunks.add({
          'lang': item['lang'],
          'original': chunkLines,
          'translated': '',
        });
      }
    }

    _scanReviewItems.replaceRange(index, index + 1, newChunks);
    _isTranslatingSingleMap.clear();
    notify();
  }

  String get combinedOriginal => _scanReviewItems.map((e) => e['original']).join('\n\n');

  String get combinedTranslated {
    return _scanReviewItems.map((e) {
      final t = e['translated']?.toString() ?? '';
      return t.isEmpty ? '[...]' : t;
    }).join('\n\n');
  }

  Future<void> saveScannedItem() async {
    if (_scanReviewItems.isEmpty) return;
    _isSaved = true;
    notify();

    try {
      await UnifiedRepository.saveUnifiedRecord(
        text: combinedOriginal,
        translation: combinedTranslated,
        lang: _targetLang,
        targetLang: _sourceLang,
        type: 'sentence',
      );
    } catch (e) {
      _isSaved = false;
    } finally {
      notify();
    }
  }

  /// 광고를 시청하고 번역 횟수 10회 충전 (AdMob 연동)
  Future<void> watchAdAndRefillInScan(BuildContext context) async {
    _statusMessage = 'Loading Ad...';
    notify();

    try {
      // 1. 보상형 광고 로드
      await RewardedAd.load(
        adUnitId: UsageService.adUnitId,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) {
            ad.fullScreenContentCallback = FullScreenContentCallback(
              onAdDismissedFullScreenContent: (ad) => ad.dispose(),
              onAdFailedToShowFullScreenContent: (ad, error) => ad.dispose(),
            );

            // 2. 광고 표시
            ad.show(onUserEarnedReward: (ad, reward) async {
              // 3. 보상 지급 (10회 충전)
              await _usageService.addRefill(10);
              
              _statusMessage = 'Refilled! +10 translations';
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Recharged! +10 translation credits'),
                    backgroundColor: Colors.green,
                  ),
                );
              }
              notify();
            });
          },
          onAdFailedToLoad: (error) {
            debugPrint('RewardedAd failed to load: $error');
            _statusMessage = 'Ad failed to load';
            notify();
          },
        ),
      );
    } catch (e) {
      _statusMessage = 'Ad error: $e';
      notify();
    }
  }
}

part of 'app_state.dart';

mixin AppStateScan on ChangeNotifier {
  // Fields are in main app_state.dart for shared access
}

extension AppStateScanExtension on AppState {
  Future<void> pickImageAndRecognizeText(
      {ImageSource source = ImageSource.gallery}) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: source);

    if (image == null) return;

    await recognizeTextFromImage(File(image.path));
  }

  Future<void> recognizeTextFromImage(File imageFile) async {
    _isTranslating = true;
    _isSaved = false;
    _scannedImage = imageFile;
    _scannedText = '';
    _scanReviewItems = [];
    _isTranslatingSingleMap.clear();
    notify();

    try {
      if (!ScanSupportConstants.isSupported(_targetLang)) {
        setScannedText('NO_MATCH');
        setScanReviewItems([]);
        return;
      }

      final inputImage = InputImage.fromFilePath(imageFile.path);
      final targetScript =
          ScanSupportConstants.getScriptForLanguage(_targetLang);
      final scripts = <TextRecognitionScript>[targetScript];

      final List<Map<String, dynamic>> allBlocks = [];
      for (final script in scripts) {
        TextRecognizer? recognizer;
        try {
          recognizer = TextRecognizer(script: script);
          final RecognizedText recognizedText =
              await recognizer.processImage(inputImage);

          for (var block in recognizedText.blocks) {
            String lang = 'auto';
            if (block.recognizedLanguages.isNotEmpty) {
              lang = block.recognizedLanguages
                  .first; // languageCode does not exist on String
            } else {
              if (script == TextRecognitionScript.korean) {
                lang = 'ko';
              } else if (script == TextRecognitionScript.japanese) {
                lang = 'ja';
              } else if (script == TextRecognitionScript.chinese) {
                lang = 'zh';
              } else if (script == TextRecognitionScript.devanagiri) {
                lang = _targetLang;
              } else if (script == TextRecognitionScript.latin) {
                lang = 'en';
              }
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

      final List<Map<String, dynamic>> filteredBlocks = [];
      for (final block in allBlocks) {
        final blockLang = block['lang'].toString().split('-')[0];
        final blockScript = block['script'] as TextRecognitionScript;

        if (blockLang == learningLang || blockScript == targetScript) {
          filteredBlocks.add(block);
          if (blockLang != learningLang) {
            block['lang'] = _targetLang;
          }
        }
      }
      filteredBlocks.sort((a, b) {
        final rectA = a['rect'] as Rect;
        final rectB = b['rect'] as Rect;
        final vertical = rectA.top.compareTo(rectB.top);
        return vertical != 0 ? vertical : rectA.left.compareTo(rectB.left);
      });

      final List<Map<String, dynamic>> dedupedSegments = [];
      for (final block in filteredBlocks) {
        bool isDuplicate = false;
        final rect1 = block['rect'] as Rect;
        for (final existing in dedupedSegments) {
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

      final List<Map<String, dynamic>> finalSegments = [];
      if (dedupedSegments.isNotEmpty) {
        for (final segment in dedupedSegments) {
          final lines = segment['text']
              .toString()
              .split('\n')
              .map((line) => line.trim())
              .where((line) => line.isNotEmpty);

          for (final line in lines) {
            if (finalSegments.any((item) => item['original'] == line)) continue;
            finalSegments.add({
              'lang': _targetLang,
              'original': line,
              'translated': '',
            });
          }
        }
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

  bool isSegmentTranslating(int index) =>
      _isTranslatingSingleMap[index] ?? false;

  bool get isTranslatingAll => _isTranslatingAll;


  bool get canSaveScannedItem {
    return _scanReviewItems.isNotEmpty &&
        _scanReviewItems.every((item) {
          final translated = item['translated']?.toString().trim() ?? '';
          return _isUsableScanTranslation(translated);
        });
  }

  bool _isUsableScanTranslation(String translated) {
    if (translated.isEmpty || translated == '[...]') return false;
    if (translated == 'LIMIT' || translated == 'OTHER') return false;
    if (translated.startsWith('Error:')) return false;
    if (translated.contains('Policy') || translated.contains('exhausted')) {
      return false;
    }
    return true;
  }

  /// 모든 세그먼트를 한 번에 번역 (일괄 번역)
  /// - 사전에 잔여 횟수가 세그먼트 수 이상인지 확인
  /// - 전체 원문을 "\n\n" 구분자로 합쳐 API 1회 호출
  /// - 번역 성공 시 세그먼트 수만큼 incrementUsage() 호출
  Future<Map<String, int>?> checkBulkLimit() async {
    final needed = _scanReviewItems.length;
    final remaining = await _usageService.getRemainingCount();
    if (remaining < needed) {
      return {'needed': needed, 'remaining': remaining};
    }
    return null;
  }

  Future<void> translateAllSegments() async {
    if (_scanReviewItems.isEmpty) return;
    if (_isTranslatingAll) return;

    final needed = _scanReviewItems.length;
    _isTranslatingAll = true;
    _isSaved = false;
    notify();

    try {
      // 전체 원문 합산 (개행으로 구분)
      final combinedText = _scanReviewItems
          .map((e) => e['original'].toString().trim())
          .join('\n');
      final sourceLangCode = _scanReviewItems.first['lang'] as String;

      final result = await TranslationService.translate(
        text: combinedText,
        sourceLang: sourceLangCode,
        targetLang: _sourceLang,
      );

      final translatedText = result['text']?.toString() ?? '';
      if (result['isValid'] == true || translatedText.isNotEmpty) {
        // 일괄 번역 전용 필드에 저장 (세그먼트에는 미저장)
        _bulkOriginal = combinedText;
        _bulkTranslated = translatedText;
        // 세그먼트 수만큼 usage 차감
        for (int i = 0; i < needed; i++) {
          await _usageService.incrementUsage();
        }
      } else {
        final reason = result['reason']?.toString() ?? 'ERROR';
        _bulkOriginal = combinedText;
        _bulkTranslated = reason;
      }
    } catch (e) {
      _bulkOriginal = _scanReviewItems
          .map((e) => e['original'].toString().trim())
          .join('\n');
      _bulkTranslated = 'Error: $e';
    } finally {
      _isTranslatingAll = false;
      _isTranslatingSingleMap.clear();
      notify();
    }
  }

  Future<void> translateSingleSegment(int index) async {
    if (index < 0 || index >= _scanReviewItems.length) return;
    if (isSegmentTranslating(index)) return;

    final item = _scanReviewItems[index];
    final originalText = item['original'].toString().trim();
    if (originalText.isEmpty) return;

    _isTranslatingSingleMap[index] = true;
    _isSaved = false;
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
        if (reason.contains('429') ||
            reason.contains('Resource exhausted') ||
            reason.contains('Max retries')) {
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
        if (errorStr.contains('429') ||
            errorStr.contains('Resource exhausted')) {
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
      _scanReviewItems[index]['translated'] =
          'Error: 429 Resource Exhausted. Please try again later.';
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

  /// 일괄 번역 결과가 존재하는지 여부
  bool get hasBulkResult => _bulkTranslated.isNotEmpty;

  String get combinedOriginal => _bulkOriginal.isNotEmpty
      ? _bulkOriginal
      : _scanReviewItems.map((e) => e['original']).join('\n');

  String get combinedTranslated => _bulkTranslated.isNotEmpty
      ? _bulkTranslated
      : _scanReviewItems.map((e) {
          final t = e['translated']?.toString() ?? '';
          return t.isEmpty ? '[...]' : t;
        }).join('\n');

  Future<void> saveScannedItem() async {
    if (_scanReviewItems.isEmpty) return;
    if (!canSaveScannedItem) return;
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

  /// 광고를 시청하고 번역 횟수 10회 충전 (Global)
  Future<void> watchAdAndRefill(BuildContext context) async {
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

part of 'app_state.dart';

mixin AppStateScan on ChangeNotifier {
  // Fields are in main app_state.dart for shared access
  // _scannedImage, _scannedText, _scanDetectedLang
}

extension AppStateScanExtension on AppState {
  Future<void> pickImageAndRecognizeText() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    setScannedImage(File(image.path));
    setScannedText('Recognizing...'); // Initial state

    try {
      final inputImage = InputImage.fromFilePath(image.path);
      final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin); // Latin as default, can be adjusted
      
      // For multi-language support (Auto-detect requested)
      // Google ML Kit automatically handles many languages in Latin script.
      // For Korean/Japanese/Chinese, specific recognizers might be needed if they are separate modules,
      // but the latest ML Kit often combines them or allows multi-script.
      // Based on google_mlkit_text_recognition 0.13.0, scripts are specified.
      
      final RecognizedText recognizedText = await textRecognizer.processImage(inputImage);
      String text = recognizedText.text;
      
      if (text.trim().isEmpty) {
        setScannedText('No text found in the image.');
      } else {
        setScannedText(text);
      }
      
      await textRecognizer.close();
    } catch (e) {
      debugPrint('[Scan] OCR Error: $e');
      setScannedText('Error recognizing text: $e');
    }
  }

  Future<void> translateScannedText() async {
    if (_scannedText.isEmpty || _scannedText == 'Recognizing...') return;

    isTranslating = true;
    notify();

    try {
      final result = await TranslationService.translate(
        text: _scannedText,
        sourceLang: 'auto', // Let AI detect the language
        targetLang: _targetLang,
      );

      if (result['isValid'] == true) {
        setScannedText(result['text']);
        // Store the original scanned text as note for context if needed?
        // Actually, we usually want to KEEP the original and SHOW the translation.
        // Let's adjust the UI logic to show both.
      }
    } catch (e) {
      debugPrint('[Scan] Translation Error: $e');
    } finally {
      isTranslating = false;
      notify();
    }
  }

  Future<void> saveScannedItem({required String text, required String translation, required String type}) async {
    try {
      await DatabaseService.saveUnifiedRecord(
        text: text,
        lang: 'auto', // Will be detected during save or use detected if available
        translation: translation,
        targetLang: _targetLang,
        type: type,
        tags: ['Scanned'], // Auto-add tag as requested
        notebookTitle: type == 'word' ? _localizedWordbook : _localizedSentencebook,
      );
      
      _isSaved = true;
      notify();
    } catch (e) {
      debugPrint('[Scan] Save Error: $e');
    }
  }
}

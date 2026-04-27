import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

/// ML Kit Text Recognition이 오프라인으로 지원하는 언어 코드 집합.
/// 지원 스크립트: Latin, Chinese, Devanagari, Japanese, Korean
class ScanSupportConstants {
  ScanSupportConstants._();

  /// OCR이 지원되는 언어 코드 목록
  static const Set<String> supportedOcrLanguages = {
    // Latin script (~40개 언어)
    'en', 'es', 'fr', 'de', 'it', 'pt', 'nl', 'sv', 'da', 'fi',
    'no', 'nb', 'pl', 'cs', 'ro', 'hu', 'id', 'ms', 'fil', 'tp',
    'vi', 'tr', 'af', 'sq', 'az', 'bs', 'ca', 'cy', 'et', 'eu',
    'gl', 'hr', 'is', 'lt', 'lv', 'sk', 'sl', 'sw', 'uz', 'zu',
    // Chinese script
    'zh', 'zh-CN', 'zh-TW',
    // Japanese
    'ja',
    // Korean
    'ko',
  };

  /// 주어진 언어 코드가 OCR 지원 언어인지 확인
  static bool isSupported(String langCode) =>
      supportedOcrLanguages.contains(langCode.split('-')[0]);

  /// 언어 코드에 해당하는 스크립트 반환
  static TextRecognitionScript getScriptForLanguage(String langCode) {
    final base = langCode.split('-')[0];
    if (base == 'ko') return TextRecognitionScript.korean;
    if (base == 'ja') return TextRecognitionScript.japanese;
    if (base == 'zh') return TextRecognitionScript.chinese;
    // 기본적으로 나머지는 Latin 스크립트로 간주 (en, es, fr 등)
    return TextRecognitionScript.latin;
  }

  /// 지원되는 모든 OCR 스크립트 목록 반환
  static List<TextRecognitionScript> get allScripts => [
        TextRecognitionScript.latin,
        TextRecognitionScript.chinese,
        TextRecognitionScript.japanese,
        TextRecognitionScript.korean,
      ];
}

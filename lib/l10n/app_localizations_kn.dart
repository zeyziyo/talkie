// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'పరిశీలన ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'పాఠ్యాంశం ($count)';
  }

  @override
  String get mode2Title => 'ಪರಿಶೀಲನೆ';

  @override
  String get search => 'ಹುಡುಕಿ';

  @override
  String get translate => 'ಅನುವಾದಿಸಿ';

  @override
  String get listen => 'ಆಲಿಸಿ';

  @override
  String get saveData => 'ಉಳಿಸಿ';

  @override
  String get saved => 'ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get delete => 'ಅಳಿಸಿ';

  @override
  String get materialInfo => 'ವಿಷಯ ಮಾಹಿತಿ';

  @override
  String get cancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get confirm => 'ಸರಿ';

  @override
  String get refresh => 'ರಿಫ್ರೆಶ್';

  @override
  String studyRecords(int count) {
    return 'ದಾಖಲೆಗಳು ($count)';
  }

  @override
  String get targetLanguageFilter => 'ಗುರಿ ಭಾಷೆ ಫಿಲ್ಟರ್:';

  @override
  String get noRecords => 'ಆಯ್ದ ಭಾಷೆಗೆ ಯಾವುದೇ ದಾಖಲೆಗಳಿಲ್ಲ';

  @override
  String get saveTranslationsFromSearch =>
      'ಹುಡುಕಾಟ ಮೋಡ್‌ನಿಂದ ಅನುವಾದಗಳನ್ನು ಉಳಿಸಿ';

  @override
  String get flip => 'ತಿರುಗಿಸಿ';

  @override
  String get hide => 'ಮರೆಮಾಡಿ';

  @override
  String get deleteRecord => 'ದಾಖಲೆ ಅಳಿಸಿ';

  @override
  String get confirmDelete =>
      'ನೀವು ಖಂಡಿತವಾಗಿಯೂ ಈ ದಾಖಲೆಯನ್ನು ಅಳಿಸಲು ಬಯಸುತ್ತೀರಾ?';

  @override
  String get recordDeleted => 'ದಾಖಲೆ ಯಶಸ್ವಿಯಾಗಿ ಅಳಿಸಲಾಗಿದೆ';

  @override
  String deleteFailed(String error) {
    return 'ಅಳಿಸುವಿಕೆ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get importJsonFile => 'JSON ಆಮದು';

  @override
  String get importing => 'ಆಮದು ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get importComplete => 'ಆಮದು ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String get importFailed => 'ಆಮದು ವಿಫಲವಾಗಿದೆ';

  @override
  String importFile(String fileName) {
    return 'ಫೈಲ್: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'ಒಟ್ಟು: $count';
  }

  @override
  String importAdded(int count) {
    return 'ಸೇರಿಸಲಾಗಿದೆ: $count';
  }

  @override
  String importSkipped(int count) {
    return 'ಬಿಟ್ಟುಬಿಡಲಾಗಿದೆ: $count';
  }

  @override
  String get errors => 'ದೋಷಗಳು:';

  @override
  String get error => 'ದೋಷ';

  @override
  String importErrorMessage(String error) {
    return 'ಫೈಲ್ ಆಮದು ಮಾಡಲು ವಿಫಲವಾಗಿದೆ:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'ವಸ್ತು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get subject => 'ವಿಷಯ:';

  @override
  String get source => 'ಮೂಲ:';

  @override
  String get file => 'ಫೈಲ್:';

  @override
  String progress(int current, int total) {
    return 'ಪ್ರಗತಿ: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'ದಯವಿಟ್ಟು JSON ಫೈಲ್ ಆಮದು ಮಾಡಿ';

  @override
  String get selectMaterialPrompt => 'ದಯವಿಟ್ಟು ಅಧ್ಯಯನ ಸಾಮಗ್ರಿಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get studyComplete => 'ಅಧ್ಯಯನ ಮಾಡಲಾಗಿದೆ';

  @override
  String get markAsStudied => 'ಅಧ್ಯಯನ ಮಾಡಲಾಗಿದೆ ಎಂದು ಗುರುತಿಸಿ';

  @override
  String get listening => 'ಆಲಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get recognized => 'ಗುರುತಿಸುವಿಕೆ ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String recognitionFailed(String error) {
    return 'ಧ್ವನಿ ಗುರುತಿಸುವಿಕೆ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get checking => 'ಪರಿಶೀಲಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get translating => 'ಅನುವಾದಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get translationComplete => 'ಅನುವಾದ ಪೂರ್ಣಗೊಂಡಿದೆ (ಉಳಿಸಬೇಕಾಗಿದೆ)';

  @override
  String get translationLoaded => 'ಉಳಿಸಿದ ಅನುವಾದ ಲೋಡ್ ಆಗಿದೆ';

  @override
  String translationFailed(String error) {
    return 'ಅನುವಾದ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get enterTextToTranslate => 'ಅನುವಾದಿಸಲು ಪಠ್ಯವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get saving => 'ಉಳಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get noTranslationToSave => 'ಉಳಿಸಲು ಯಾವುದೇ ಅನುವಾದವಿಲ್ಲ';

  @override
  String saveFailed(String error) {
    return 'ಉಳಿಸುವಿಕೆ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get playing => 'ಪ್ಲೇ ಆಗುತ್ತಿದೆ...';

  @override
  String get noTextToPlay => 'ಪ್ಲೇ ಮಾಡಲು ಪಠ್ಯವಿಲ್ಲ';

  @override
  String playbackFailed(String error) {
    return 'ಪ್ಲೇಬ್ಯಾಕ್ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get sourceLanguage => 'ಮೂಲ ಭಾಷೆ';

  @override
  String get targetLanguage => 'ಗುರಿ ಭಾಷೆ';

  @override
  String get similarTextFound => 'ಅದೇ ರೀತಿಯ ಪಠ್ಯ ಕಂಡುಬಂದಿದೆ';

  @override
  String get useExistingText => 'ಅಸ್ತಿತ್ವದಲ್ಲಿರುವುದನ್ನು ಬಳಸಿ';

  @override
  String get createNew => 'ಹೊಸದನ್ನು ರಚಿಸಿ';

  @override
  String reviewCount(int count) {
    return '$count ಬಾರಿ ಪರಿಶೀಲಿಸಲಾಗಿದೆ';
  }

  @override
  String get tabSpeaking => 'ಮಾತನಾಡುವಿಕೆ';

  @override
  String get speakingPractice => 'ಮಾತನಾಡುವ ಅಭ್ಯಾಸ';

  @override
  String intervalSeconds(int seconds) {
    return 'ಅಂತರ: $secondsಸೆಕೆಂಡುಗಳು';
  }

  @override
  String get yourPronunciation => 'ನಿಮ್ಮ ಉಚ್ಚಾರಣೆ';

  @override
  String get correctAnswer => 'ಸರಿಯಾದ ಉತ್ತರ';

  @override
  String score(String score) {
    return 'ನಿಖರತೆ: $score%';
  }

  @override
  String get perfect => 'ಪರಿಪೂರ್ಣ!';

  @override
  String get good => 'ಚೆನ್ನಾಗಿದೆ';

  @override
  String get tryAgain => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get startPractice => 'ಅಭ್ಯಾಸ ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get stopPractice => 'ನಿಲ್ಲಿಸಿ';

  @override
  String get helpTitle => 'ಸಹಾಯ ಮತ್ತು ಮಾರ್ಗದರ್ಶಿ';

  @override
  String get helpTabModes => 'ಮೋಡ್‌ಗಳು';

  @override
  String get helpTabJson => 'JSON ಸ್ವರೂಪ';

  @override
  String get helpTabTour => 'ಪ್ರವಾಸ';

  @override
  String get helpMode1Desc =>
      'ಧ್ವನಿಯನ್ನು ಗುರುತಿಸಿ, ಅನುವಾದಿಸಿ ಮತ್ತು ಫಲಿತಾಂಶವನ್ನು ಆಲಿಸಿ.';

  @override
  String get helpMode1Details =>
      '• ಧ್ವನಿ: ಪ್ರಾರಂಭಿಸಲು/ನಿಲ್ಲಿಸಲು ಮೈಕ್ ಟ್ಯಾಪ್ ಮಾಡಿ\n• ಪಠ್ಯ: ಅನುವಾದಿಸಲು ನೇರವಾಗಿ ಟೈಪ್ ಮಾಡಿ\n• ಸ್ವಯಂ-ಹುಡುಕಾಟ: ಇದೇ ರೀತಿಯ ವಾಕ್ಯಗಳನ್ನು ಪತ್ತೆ ಮಾಡುತ್ತದೆ\n• ಅನುವಾದ: ತ್ವರಿತ ಅನುವಾದ ಬಟನ್\n• ಆಲಿಸಿ: TTS ಗಾಗಿ ಸ್ಪೀಕರ್ ಐಕಾನ್\n• ಉಳಿಸಿ: ಇತಿಹಾಸಕ್ಕೆ ಸೇರಿಸುತ್ತದೆ\n• ಅಳಿಸಿ: ಎಲ್ಲವನ್ನೂ ಮರುಹೊಂದಿಸಿ';

  @override
  String get helpMode2Desc =>
      'ಮರೆಯಾದ ಅನುವಾದದೊಂದಿಗೆ ಉಳಿಸಿದ ವಾಕ್ಯಗಳನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get helpMode2Details =>
      '• ಆಯ್ಕೆಮಾಡಿ: ಸೆಟ್ ಅಥವಾ \'ಎಲ್ಲಾ ಪರಿಶೀಲಿಸಿ\' ಆಯ್ಕೆಮಾಡಿ\n• ತಿರುಗಿಸಿ: \'ತೋರಿಸು/ಮರೆಮಾಡು\' ಅನುವಾದ\n• ಆಲಿಸಿ: ವಾಕ್ಯಕ್ಕಾಗಿ TTS ಪ್ಲೇ ಮಾಡಿ\n• ಗುರುತಿಸಿ: ಪೂರ್ಣಗೊಂಡಿದ್ದಕ್ಕೆ ಟಿಕ್ (V)\n• ಅಳಿಸಿ: ಅಳಿಸಲು ಕಾರ್ಡ್ ಅನ್ನು ದೀರ್ಘವಾಗಿ ಒತ್ತಿರಿ\n• ಫಿಲ್ಟರ್: ಎಲ್ಲವನ್ನೂ ಅಥವಾ ವಸ್ತುವಿನ ಮೂಲಕ ವೀಕ್ಷಿಸಿ';

  @override
  String get helpMode3Desc =>
      'ಆಲಿಸುವ ಮತ್ತು ಪುನರಾವರ್ತಿಸುವ ಮೂಲಕ ಮಾತನಾಡುವುದನ್ನು ಅಭ್ಯಾಸ ಮಾಡಿ (Shadowing).';

  @override
  String get helpMode3Details =>
      '• ಆಯ್ಕೆಮಾಡಿ: ಪ್ಯಾಕೇಜ್ ಆಯ್ಕೆಮಾಡಿ\n• ಅಂತರ: [-] [+] ಕಾಯುವ ಸಮಯ (3ಸೆ-60ಸೆ)\n• ಪ್ರಾರಂಭಿಸಿ/ನಿಲ್ಲಿಸಿ: ಸೆಷನ್ ನಿಯಂತ್ರಿಸಿ\n• ಮಾತನಾಡಿ: ಆಡಿಯೋ ಆಲಿಸಿ ಮತ್ತು ಪುನರಾವರ್ತಿಸಿ\n• ಸ್ಕೋರ್: ನಿಖರತೆ (0-100)\n• ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ: ಧ್ವನಿ ಪತ್ತೆಯಾಗದಿದ್ದರೆ ಬಟನ್';

  @override
  String get helpJsonDesc => 'ಮೋಡ್ 3 ರಲ್ಲಿ ಆಮದು ಮಾಡಲು, JSON ರಚಿಸಿ:';

  @override
  String get helpTourDesc =>
      'ಪ್ರಮುಖ ವೈಶಿಷ್ಟ್ಯಗಳನ್ನು ಕಲಿಯಲು ಸಂವಾದಾತ್ಮಕ ಪ್ರವಾಸವನ್ನು ಪ್ರಾರಂಭಿಸಿ.';

  @override
  String get startTutorial => 'ಪ್ರವಾಸ ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get tutorialMicTitle => 'ಧ್ವನಿ ಇನ್ಪುಟ್';

  @override
  String get tutorialMicDesc => 'ಧ್ವನಿ ಇನ್ಪುಟ್ಗಾಗಿ ಮೈಕ್ ಬಟನ್ ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get tutorialTabDesc =>
      'ನೀವು ಇಲ್ಲಿ ನಿಮ್ಮ ಬಯಸಿದ ಕಲಿಕೆಯ ವಿಧಾನವನ್ನು ಆಯ್ಕೆ ಮಾಡಬಹುದು.';

  @override
  String get tutorialTapToContinue => 'ಮುಂದುವರಿಸಲು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get tutorialTransTitle => 'ಅನುವಾದಿಸಿ';

  @override
  String get tutorialTransDesc =>
      'ನಿಮ್ಮ ಪಠ್ಯವನ್ನು ಅನುವಾದಿಸಲು ಇಲ್ಲಿ ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get tutorialSaveTitle => 'ಉಳಿಸಿ';

  @override
  String get tutorialSaveDesc => 'ನಿಮ್ಮ ಅನುವಾದವನ್ನು ಉಳಿಸಿ.';

  @override
  String get tutorialM2SelectTitle => 'ಆಯ್ಕೆ ಮತ್ತು ಫಿಲ್ಟರ್';

  @override
  String get tutorialM2SelectDesc =>
      'ವಸ್ತುಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ ಅಥವಾ \'ಎಲ್ಲಾ ಪರಿಶೀಲಿಸಿ\' ಗೆ ಬದಲಿಸಿ.';

  @override
  String get tutorialM2ListTitle => 'ಅಧ್ಯಯನ ಪಟ್ಟಿ';

  @override
  String get tutorialM2ListDesc =>
      'ನಿಮ್ಮ ಕಾರ್ಡ್‌ಗಳನ್ನು ಪರಿಶೀಲಿಸಿ ಮತ್ತು ಅವುಗಳನ್ನು ತಿರುಗಿಸಿ.';

  @override
  String get tutorialM3SelectTitle => 'ವಸ್ತು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get tutorialM3SelectDesc => 'ಮಾತನಾಡುವ ಅಭ್ಯಾಸಕ್ಕಾಗಿ ಸೆಟ್ ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String get tutorialM3IntervalTitle => 'ಅಂತರ';

  @override
  String get tutorialM3IntervalDesc => 'ವಾಕ್ಯಗಳ ನಡುವಿನ ಕಾಯುವ ಸಮಯವನ್ನು ಹೊಂದಿಸಿ.';

  @override
  String get tutorialM3StartTitle => 'ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get tutorialM3StartDesc => 'ಪ್ರಾರಂಭಿಸಲು ಪ್ಲೇ ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get startWarning => 'ಎಚ್ಚರಿಕೆ';

  @override
  String get noVoiceDetected => 'ಯಾವುದೇ ಧ್ವನಿ ಪತ್ತೆಯಾಗಿಲ್ಲ';

  @override
  String get tooltipSearch => 'ಹುಡುಕಿ';

  @override
  String get tooltipStudyReview => 'ಅಧ್ಯಯನ+ಪರಿಶೀಲನೆ';

  @override
  String get tooltipSpeaking => 'ಮಾತನಾಡುವುದು';

  @override
  String get tooltipDecrease => 'ಕಡಿಮೆ';

  @override
  String get tooltipIncrease => 'ಹೆಚ್ಚಿಸು';

  @override
  String get languageSettings => 'ಭಾಷಾ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';
}

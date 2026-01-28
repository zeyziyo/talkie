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
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

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
      'ನಿಮ್ಮ ಕಾರ್ಡ್‌ಗಳನ್ನು ಪರಿಶೀಲಿಸಿ ಮತ್ತು ಅವುಗಳನ್ನು ತಿರುಗಿಸಿ. (Long-press to delete)';

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

  @override
  String get tutorialM2DropdownDesc => 'ಅಧ್ಯಯನ ವಸ್ತುಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String get tutorialM2ImportDesc => 'ಸಾಧನ ಫೋಲ್ಡರ್‌ನಿಂದ JSON ಫೈಲ್ ಆಮದು ಮಾಡಿ.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'ಸಂದರ್ಭ ಟ್ಯಾಗ್';

  @override
  String get tutorialContextDesc =>
      'ಒಂದೇ ರೀತಿಯ ವಾಕ್ಯಗಳನ್ನು ಪ್ರತ್ಯೇಕಿಸಲು ಸಂದರ್ಭವನ್ನು (ಉದಾ. ಬೆಳಿಗ್ಗೆ) ಸೇರಿಸಿ.';

  @override
  String get thinkingTimeInterval => 'Thinking Time Interval';

  @override
  String get thinkingTimeDesc => 'Time to think before the answer is revealed.';

  @override
  String get autoPlay => 'Auto-Play';

  @override
  String get timeUp => 'Time Up!';

  @override
  String get gameModeTitle => 'Game Mode';

  @override
  String get gameModeDesc => 'Choose your practice mode';

  @override
  String get wordDefenseTitle => 'Word Defense';

  @override
  String get wordDefenseDesc =>
      'Defend your base by speaking words correctly before enemies reach you.';

  @override
  String get dialogueQuestTitle => 'Dialogue Quest';

  @override
  String get dialogueQuestDesc =>
      'Roleplay in scenarios. Choose the right response and speak it aloud.';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Word';

  @override
  String get labelSentence => 'Sentence';

  @override
  String get contextTagLabel =>
      'Context/Situation (Optional) - Ex: Morning greeting, polite form';

  @override
  String get contextTagHint =>
      'Describe situation for easier classification later';

  @override
  String get translationLimitExceeded => 'Translation Limit Exceeded';

  @override
  String get translationLimitMessage =>
      'You have used all your free daily translations (5). Watch an ad to refill 5 immediately?';

  @override
  String get watchAdAndRefill => 'Watch Ad & Refill (+5)';

  @override
  String get translationRefilled => 'Translations refilled by 5!';

  @override
  String get adLoading => 'Loading ad, please try again in a moment.';

  @override
  String get reviewAll => 'Review All';

  @override
  String totalRecords(int count) {
    return 'Total $count records (View All)';
  }

  @override
  String get filterAll => 'All';

  @override
  String get practiceWordsOnly => 'Practice Words Only';

  @override
  String get resetPracticeHistory => 'Reset Practice History';

  @override
  String get retry => 'Retry?';

  @override
  String get noStudyMaterial => 'No study material found.';

  @override
  String get gameOver => 'Game Over';

  @override
  String get playAgain => 'Play Again';

  @override
  String get speakNow => 'Speak now!';

  @override
  String get scoreLabel => 'Score';

  @override
  String get viewOnlineGuide => 'View Online User Guide';

  @override
  String get getMaterials => 'Get Materials';

  @override
  String get swapLanguages => 'Swap Languages';

  @override
  String get next => 'Next';

  @override
  String get wordModeLabel => 'Word Mode';

  @override
  String get accuracy => 'Accuracy';

  @override
  String get basicDefault => 'Basic (Default)';

  @override
  String get basic => 'Basic';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc =>
      'Check this to practice only your saved words.';

  @override
  String get enterTextHint => 'Enter text to translate';

  @override
  String get micButtonTooltip => 'Start Listening';

  @override
  String get menuHelp => 'Help';

  @override
  String get menuWebDownload => 'Get Material from Web';

  @override
  String get menuDeviceImport => 'Import from Device';

  @override
  String get menuSettings => 'Settings';

  @override
  String get basicWords => 'Basic Word Repository';

  @override
  String get basicSentences => 'Basic Sentence Repository';

  @override
  String get selectMaterialSet => '학습 자료집 선택 (TODO: Translate)';

  @override
  String get sectionWords => '단어 (TODO: Translate)';

  @override
  String get sectionSentences => '문장 (TODO: Translate)';

  @override
  String get languageSettingsTitle => 'Language Settings';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get mode3Start => 'Start';

  @override
  String get mode3Stop => 'Stop';

  @override
  String get mode3Next => 'Next';

  @override
  String get mode3TryAgain => 'Try Again';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialSwapDesc =>
      'ನಾನು ನನ್ನ ಭಾಷೆಯನ್ನು ಕಲಿಯುತ್ತಿರುವ ಭಾಷೆಯೊಂದಿಗೆ ಬದಲಾಯಿಸುತ್ತೇನೆ.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get menuSelectMaterialSet => 'ಅಧ್ಯಯನ ಸಾಮಗ್ರಿಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get sectionWord => 'ಪದ ವಿಭಾಗ';

  @override
  String get sectionSentence => 'ವಾಕ್ಯ ವಿಭಾಗ';

  @override
  String get tabWord => 'ಪದ';

  @override
  String get tabSentence => 'ವಾಕ್ಯ';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorSexualContent =>
      '선정적인 내용이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다. (TODO: Translate)';

  @override
  String get clearAll => '모두 지우기 (TODO: Translate)';

  @override
  String get disambiguationTitle => '의미 선택 (TODO: Translate)';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까? (TODO: Translate)';

  @override
  String get skip => '건너뛰기 (TODO: Translate)';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Conversation History';

  @override
  String get chatNewChat => 'New Chat';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String chatFailed(Object error) {
    return '채팅 실패: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return '대화 발췌 ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => '제목 없는 대화';

  @override
  String get chatAiChat => 'AI Chat';

  @override
  String get helpModeChatDesc => 'AI 페르소나와 대화하며 실전 회화를 연습하고 유용한 문장을 저장하세요.';

  @override
  String get helpModeChatDetails =>
      '• 채팅 시작: 상단 메뉴의 말풍선 아이콘 클릭\n• 페르소나 선택: 선생님, 가이드, 친구 중 선택\n• 대화 및 저장: AI 응답은 자동 번역됩니다. 메시지를 클릭하여 복습 모드로 저장하세요\n• 2개 국어 표시: 모든 메시지에 대해 모국어와 학습 언어를 함께 표시합니다\n• 듣기 기능 (TTS): 스피커 아이콘을 눌러 각 언어의 발음을 들어보세요\n• 자동 제목: 대화 주제에 따라 AI가 제목을 추천합니다\n• 이력 관리: 과거 대화 내용을 언제든 다시 확인할 수 있습니다';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String get me => 'Me';

  @override
  String get helpDialogueImportDesc => '완성된 대화문 세트를 JSON 파일로 한 번에 가져올 수 있습니다.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON 구조: `entries` 대신 `dialogues` 배열을 사용합니다.\n• 자동 생성: 대화 제목, 페르소나, 메시지 순서가 자동으로 구성됩니다.\n• 확인 위치: 가져온 대화는 AI 채팅 모드의 \'대화 기록\' 탭에서 확인할 수 있습니다.';

  @override
  String mode1SelectedMaterial(Object name) {
    return '현재 선택된 자료집: $name';
  }

  @override
  String get basicWordRepository => 'ಮೂಲ ಪದ ಭಂಡಾರ';

  @override
  String get basicSentenceRepository => 'ಮೂಲ ವಾಕ್ಯ ಭಂಡಾರ';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'Save & Exit';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

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
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'ಮೋಡ್ 3 ರಲ್ಲಿ ಆಮದು ಮಾಡಲು, JSON ರಚಿಸಿ:';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get partnerMode => 'Partner Mode';

  @override
  String get manual => 'Manual';

  @override
  String get speaker => 'Speaker';

  @override
  String get switchToAi => 'Switch to AI';

  @override
  String get switchToPartner => 'Switch to Partner';

  @override
  String get currentLocation => 'Current Location';

  @override
  String get location => 'ಸ್ಥಳ';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Me';

  @override
  String get currentMaterialLabel => 'Current Selected Material:';

  @override
  String get basicMaterialRepository => 'Basic Repository';

  @override
  String get word => 'Word';

  @override
  String get sentence => 'Sentence';

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
  String get usageLimitTitle => 'ಮಿತಿ ತಲುಪಿದೆ';

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
  String get selectMaterialSet => 'ಅಧ್ಯಯನ ಸಾಮಗ್ರಿಗಳ ಗುಂಪನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get sectionWords => 'ಪದಗಳು';

  @override
  String get sectionSentences => 'ವಾಕ್ಯಗಳು';

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
  String get errorProfanity =>
      'ಅಶ್ಲೀಲ ಪದಗಳನ್ನು ಒಳಗೊಂಡಿರುವುದರಿಂದ ಅನುವಾದಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ.';

  @override
  String get errorHateSpeech =>
      'ದ್ವೇಷ ಭಾಷಣವನ್ನು ಒಳಗೊಂಡಿರುವುದರಿಂದ ಅನುವಾದಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ.';

  @override
  String get errorSexualContent =>
      'ಲೈಂಗಿಕ ವಿಷಯವನ್ನು ಒಳಗೊಂಡಿರುವುದರಿಂದ ಅನುವಾದಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ.';

  @override
  String get errorOtherSafety =>
      'AI ಸುರಕ್ಷತಾ ನೀತಿಗಳಿಂದಾಗಿ ಅನುವಾದವನ್ನು ನಿರಾಕರಿಸಲಾಗಿದೆ.';

  @override
  String get clearAll => 'ಎಲ್ಲವನ್ನು ತೆರವುಗೊಳಿಸಿ';

  @override
  String get disambiguationTitle => 'ಅರ್ಥವನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get disambiguationPrompt =>
      'ಯಾವ ಅರ್ಥದಲ್ಲಿ ಅನುವಾದಿಸಬೇಕೆಂದು ನೀವು ಬಯಸುತ್ತೀರಿ?';

  @override
  String get skip => 'ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Conversation History';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => 'New Chat';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return 'From Conversation ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => 'Untitled Conversation';

  @override
  String get chatAiChat => 'AI Chat';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Current Material Set: $name';
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

  @override
  String get metadataDialogTitle => 'Details';

  @override
  String get selectPOS => 'Select POS';

  @override
  String get selectSentenceType => 'Select Sentence Type';

  @override
  String get metadataRootWord => 'Root Word';

  @override
  String get posNoun => 'Noun';

  @override
  String get posVerb => 'Verb';

  @override
  String get posAdjective => 'Adjective';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posPronoun => 'Pronoun';

  @override
  String get posPreposition => 'Preposition';

  @override
  String get posConjunction => 'Conjunction';

  @override
  String get posInterjection => 'Interjection';

  @override
  String get typeStatement => 'Statement';

  @override
  String get typeQuestion => 'Question';

  @override
  String get typeExclamation => 'Exclamation';

  @override
  String get typeImperative => 'Imperative';

  @override
  String get labelNote => 'Note';

  @override
  String get labelShowMemorized => '외운것';

  @override
  String get tagSelection => '태그 선택';

  @override
  String get metadataFormType => 'Form Type';

  @override
  String get formInfinitive => 'Infinitive/Present';

  @override
  String get formPast => 'Past';

  @override
  String get formPastParticiple => 'Past Participle';

  @override
  String get formPresentParticiple => 'Present Participle';

  @override
  String get formPresent => '현재형';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get caseSubject => '주격';

  @override
  String get caseObject => '목적격';

  @override
  String get casePossessive => '소유격';

  @override
  String get casePossessivePronoun => '소유대명사';

  @override
  String get caseReflexive => '재귀대명사';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';
}

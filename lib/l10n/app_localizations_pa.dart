// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'ਸਮੀਖਿਆ ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'ਸਮੱਗਰੀ ($count)';
  }

  @override
  String get mode2Title => 'ਸਮੀਖਿਆ';

  @override
  String get search => 'ਖੋਜ';

  @override
  String get translate => 'ਅਨੁਵਾਦ';

  @override
  String get listen => 'ਸੁਣੋ';

  @override
  String get saveData => 'ਸੇਵ ਕਰੋ';

  @override
  String get saved => 'ਸੇਵ ਕੀਤਾ';

  @override
  String get delete => 'ਹਟਾਓ';

  @override
  String get materialInfo => 'ਸਮੱਗਰੀ ਜਾਣਕਾਰੀ';

  @override
  String get cancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get confirm => 'ਠੀਕ ਹੈ';

  @override
  String get refresh => 'ਰੀਫ੍ਰੈਸ਼';

  @override
  String studyRecords(int count) {
    return 'ਰਿਕਾਰਡ ($count)';
  }

  @override
  String get targetLanguageFilter => 'ਟੀਚਾ ਭਾਸ਼ਾ ਫਿਲਟਰ:';

  @override
  String get noRecords => 'ਚੁਣੀ ਗਈ ਭਾਸ਼ਾ ਲਈ ਕੋਈ ਰਿਕਾਰਡ ਨਹੀਂ';

  @override
  String get saveTranslationsFromSearch => 'ਖੋਜ ਮੋਡ ਤੋਂ ਅਨੁਵਾਦ ਸੇਵ ਕਰੋ';

  @override
  String get flip => 'ਪਲਟੋ';

  @override
  String get hide => 'ਲੁਕਾਓ';

  @override
  String get deleteRecord => 'ਰਿਕਾਰਡ ਹਟਾਓ';

  @override
  String get confirmDelete =>
      'ਕੀ ਤੁਸੀਂ ਸੱਚਮੁੱਚ ਇਸ ਰਿਕਾਰਡ ਨੂੰ ਹਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ?';

  @override
  String get recordDeleted => 'ਰਿਕਾਰਡ ਸਫਲਤਾਪੂਰਵਕ ਹਟਾਇਆ ਗਿਆ';

  @override
  String deleteFailed(String error) {
    return 'ਹਟਾਉਣਾ ਅਸਫਲ: $error';
  }

  @override
  String get importJsonFile => 'JSON ਇੰਪੋਰਟ';

  @override
  String get importing => 'ਇੰਪੋਰਟ ਹੋ ਰਿਹਾ ਹੈ...';

  @override
  String get importComplete => 'ਇੰਪੋਰਟ ਪੂਰਾ';

  @override
  String get importFailed => 'ਇੰਪੋਰਟ ਅਸਫਲ';

  @override
  String importFile(String fileName) {
    return 'ਫਾਈਲ: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'ਕੁੱਲ: $count';
  }

  @override
  String importAdded(int count) {
    return 'ਸ਼ਾਮਲ ਕੀਤਾ: $count';
  }

  @override
  String importSkipped(int count) {
    return 'ਛੱਡਿਆ: $count';
  }

  @override
  String get errors => 'ਗਲਤੀਆਂ:';

  @override
  String get error => 'ਗਲਤੀ';

  @override
  String importErrorMessage(String error) {
    return 'ਫਾਈਲ ਇੰਪੋਰਟ ਕਰਨ ਵਿੱਚ ਅਸਫਲ:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'ਸਮੱਗਰੀ ਚੁਣੋ';

  @override
  String get subject => 'ਵਿਸ਼ਾ:';

  @override
  String get source => 'ਸਰੋਤ:';

  @override
  String get file => 'ਫਾਈਲ:';

  @override
  String progress(int current, int total) {
    return 'ਤਰੱਕੀ: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'ਕਿਰਪਾ ਕਰਕੇ JSON ਫਾਈਲ ਇੰਪੋਰਟ ਕਰੋ';

  @override
  String get selectMaterialPrompt => 'ਕਿਰਪਾ ਕਰਕੇ ਅਧਿਐਨ ਸਮੱਗਰੀ ਚੁਣੋ';

  @override
  String get studyComplete => 'ਅਧਿਐਨ ਕੀਤਾ';

  @override
  String get markAsStudied => 'ਅਧਿਐਨ ਕੀਤਾ ਵਜੋਂ ਨਿਸ਼ਾਨ ਲਗਾਓ';

  @override
  String get listening => 'ਸੁਣ ਰਿਹਾ ਹੈ...';

  @override
  String get recognized => 'ਪਛਾਣ ਪੂਰੀ';

  @override
  String recognitionFailed(String error) {
    return 'ਆਵਾਜ਼ ਪਛਾਣ ਅਸਫਲ: $error';
  }

  @override
  String get checking => 'ਜਾਂਚ ਕਰ ਰਿਹਾ ਹੈ...';

  @override
  String get translating => 'ਅਨੁਵਾਦ ਕਰ ਰਿਹਾ ਹੈ...';

  @override
  String get translationComplete => 'ਅਨੁਵਾਦ ਪੂਰਾ (ਸੇਵ ਕਰਨਾ ਜ਼ਰੂਰੀ)';

  @override
  String get translationLoaded => 'ਸੇਵ ਕੀਤਾ ਅਨੁਵਾਦ ਲੋਡ ਕੀਤਾ ਗਿਆ';

  @override
  String translationFailed(String error) {
    return 'ਅਨੁਵਾਦ ਅਸਫਲ: $error';
  }

  @override
  String get enterTextToTranslate => 'ਅਨੁਵਾਦ ਲਈ ਟੈਕਸਟ ਦਰਜ ਕਰੋ';

  @override
  String get saving => 'ਸੇਵ ਕਰ ਰਿਹਾ ਹੈ...';

  @override
  String get noTranslationToSave => 'ਸੇਵ ਕਰਨ ਲਈ ਕੋਈ ਅਨੁਵਾਦ ਨਹੀਂ';

  @override
  String saveFailed(String error) {
    return 'ਸੇਵ ਕਰਨਾ ਅਸਫਲ: $error';
  }

  @override
  String get playing => 'ਚਲਾ ਰਿਹਾ ਹੈ...';

  @override
  String get noTextToPlay => 'ਚਲਾਉਣ ਲਈ ਕੋਈ ਟੈਕਸਟ ਨਹੀਂ';

  @override
  String playbackFailed(String error) {
    return 'ਪਲੇਬੈਕ ਅਸਫਲ: $error';
  }

  @override
  String get sourceLanguage => 'ਸਰੋਤ ਭਾਸ਼ਾ';

  @override
  String get targetLanguage => 'ਟੀਚਾ ਭਾਸ਼ਾ';

  @override
  String get similarTextFound => 'ਇਕੋ ਜਿਹਾ ਟੈਕਸਟ ਮਿਲਿਆ';

  @override
  String get useExistingText => 'ਮੌਜੂਦਾ ਵਰਤੋ';

  @override
  String get createNew => 'ਨਵਾਂ ਬਣਾਓ';

  @override
  String reviewCount(int count) {
    return '$count ਵਾਰ ਸਮੀਖਿਆ ਕੀਤੀ';
  }

  @override
  String get tabSpeaking => 'ਬੋਲਣਾ';

  @override
  String get speakingPractice => 'ਬੋਲਣ ਦਾ ਅਭਿਆਸ';

  @override
  String intervalSeconds(int seconds) {
    return 'ਅੰਤਰਾਲ: $secondsਸਕਿੰਟ';
  }

  @override
  String get yourPronunciation => 'ਤੁਹਾਡਾ ਉਚਾਰਨ';

  @override
  String get correctAnswer => 'ਸਹੀ ਜਵਾਬ';

  @override
  String score(String score) {
    return 'ਸ਼ੁੱਧਤਾ: $score%';
  }

  @override
  String get perfect => 'ਬਹੁਤ ਵਧੀਆ!';

  @override
  String get good => 'ਚੰਗਾ';

  @override
  String get tryAgain => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get startPractice => 'ਅਭਿਆਸ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get stopPractice => 'ਰੋਕੋ';

  @override
  String get helpTitle => 'ਮਦਦ ਅਤੇ ਗਾਈਡ';

  @override
  String get helpTabModes => 'ਮੋਡ';

  @override
  String get helpTabJson => 'JSON ਫਾਰਮੈਟ';

  @override
  String get helpTabTour => 'ਟੂਰ';

  @override
  String get helpMode1Desc => 'ਆਵਾਜ਼ ਪਛਾਣੋ, ਅਨੁਵਾਦ ਕਰੋ ਅਤੇ ਨਤੀਜਾ ਸੁਣੋ।';

  @override
  String get helpMode1Details =>
      '• ਆਵਾਜ਼: ਸ਼ੁਰੂ/ਬੰਦ ਕਰਨ ਲਈ ਮਾਈਕ ਦਬਾਓ\n• ਟੈਕਸਟ: ਅਨੁਵਾਦ ਲਈ ਸਿੱਧਾ ਟਾਈਪ ਕਰੋ\n• ਆਟੋ-ਸਰਚ: ਸਮਾਨ ਵਾਕਾਂ ਨੂੰ ਲੱਭਦਾ ਹੈ\n• ਅਨੁਵਾਦ: ਤੁਰੰਤ ਅਨੁਵਾਦ ਦਾ ਬਟਨ\n• ਸੁਣੋ: TTS ਲਈ ਸਪੀਕਰ ਆਈਕਨ\n• ਸੇਵ: ਇਤਿਹਾਸ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰਦਾ ਹੈ\n• ਸਾਫ਼ ਕਰੋ: ਸਭ ਰੀਸੈਟ ਕਰੋ';

  @override
  String get helpMode2Desc =>
      'ਲੁਕੇ ਹੋਏ ਅਨੁਵਾਦ ਨਾਲ ਸੇਵ ਕੀਤੇ ਵਾਕਾਂ ਦੀ ਸਮੀਖਿਆ ਕਰੋ।';

  @override
  String get helpMode2Details =>
      '• ਚੁਣੋ: ਸੈੱਟ ਜਾਂ \'ਸਭ ਸਮੀਖਿਆ ਕਰੋ\' ਚੁਣੋ\n• ਪਲਟੋ: ਅਨੁਵਾਦ \'ਦਿਖਾਓ/ਲੁਕਾਓ\'\n• ਸੁਣੋ: ਵਾਕ ਲਈ TTS ਚਲਾਓ\n• ਨਿਸ਼ਾਨ ਲਗਾਓ: ਪੂਰਾ ਹੋਣ ਲਈ ਟਿੱਕ (V)\n• ਹਟਾਓ: ਹਟਾਉਣ ਲਈ ਕਾਰਡ ਨੂੰ ਦਬਾ ਕੇ ਰੱਖੋ\n• ਫਿਲਟਰ: ਸਭ ਦੇਖੋ ਜਾਂ ਸਮੱਗਰੀ ਦੁਆਰਾ';

  @override
  String get helpMode3Desc =>
      'ਸੁਣ ਕੇ ਅਤੇ ਦੁਹਰਾ ਕੇ ਬੋਲਣ ਦਾ ਅਭਿਆਸ ਕਰੋ (Shadowing)।';

  @override
  String get helpMode3Details =>
      '• ਚੁਣੋ: ਪੈਕੇਜ ਚੁਣੋ\n• ਅੰਤਰਾਲ: [-] [+] ਉਡੀਕ ਦਾ ਸਮਾਂ (3ਸਕਿੰਟ-60ਸਕਿੰਟ)\n• ਸ਼ੁਰੂ/ਬੰਦ: ਸੈਸ਼ਨ ਕੰਟਰੋਲ ਕਰੋ\n• ਬੋਲੋ: ਆਡੀਓ ਸੁਣੋ ਅਤੇ ਦੁਹਰਾਓ\n• ਸਕੋਰ: ਸ਼ੁੱਧਤਾ (0-100)\n• ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼: ਜੇ ਆਵਾਜ਼ ਨਹੀਂ ਮਿਲਦੀ ਤਾਂ ਬਟਨ';

  @override
  String get helpJsonDesc => 'ਮੋਡ 3 ਵਿੱਚ ਇੰਪੋਰਟ ਕਰਨ ਲਈ, JSON ਬਣਾਓ:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'ਟੂਰ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get tutorialMicTitle => 'ਵੌਇਸ ਇਨਪੁਟ';

  @override
  String get tutorialMicDesc => 'ਵੌਇਸ ਇਨਪੁਟ ਲਈ ਮਾਈਕ ਬਟਨ ਦਬਾਓ।';

  @override
  String get tutorialTabDesc =>
      'ਤੁਸੀਂ ਇੱਥੇ ਆਪਣੀ ਲੋੜੀਂਦੀ ਸਿੱਖਣ ਦੀ ਵਿਧੀ ਚੁਣ ਸਕਦੇ ਹੋ।';

  @override
  String get tutorialTapToContinue => 'ਜਾਰੀ ਰੱਖਣ ਲਈ ਟੈਪ ਕਰੋ';

  @override
  String get tutorialTransTitle => 'ਅਨੁਵਾਦ';

  @override
  String get tutorialTransDesc => 'ਆਪਣਾ ਟੈਕਸਟ ਅਨੁਵਾਦ ਕਰਨ ਲਈ ਇੱਥੇ ਦਬਾਓ।';

  @override
  String get tutorialSaveTitle => 'ਸੇਵ';

  @override
  String get tutorialSaveDesc => 'ਆਪਣਾ ਅਨੁਵਾਦ ਸੇਵ ਕਰੋ।';

  @override
  String get tutorialM2SelectTitle => 'ਚੁਣੋ ਅਤੇ ਫਿਲਟਰ';

  @override
  String get tutorialM2SelectDesc =>
      'ਸਮੱਗਰੀ ਚੁਣੋ ਜਾਂ \'ਸਭ ਸਮੀਖਿਆ ਕਰੋ\' \'ਤੇ ਜਾਓ।';

  @override
  String get tutorialM2ListTitle => 'ਅਧਿਐਨ ਸੂਚੀ';

  @override
  String get tutorialM2ListDesc =>
      'ਆਪਣੇ ਕਾਰਡ ਚੈੱਕ ਕਰੋ ਅਤੇ ਉਹਨਾਂ ਨੂੰ ਪਲਟੋ। (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'ਸਮੱਗਰੀ ਚੁਣੋ';

  @override
  String get tutorialM3SelectDesc => 'ਬੋਲਣ ਦੇ ਅਭਿਆਸ ਲਈ ਸੈੱਟ ਚੁਣੋ।';

  @override
  String get tutorialM3IntervalTitle => 'ਅੰਤਰਾਲ';

  @override
  String get tutorialM3IntervalDesc =>
      'ਵਾਕਾਂ ਦੇ ਵਿਚਕਾਰ ਉਡੀਕ ਦਾ ਸਮਾਂ ਅਨੁਕੂਲ ਕਰੋ।';

  @override
  String get tutorialM3StartTitle => 'ਸ਼ੁਰੂ';

  @override
  String get tutorialM3StartDesc => 'ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਪਲੇ ਦਬਾਓ।';

  @override
  String get startWarning => 'ਚੇਤਾਵਨੀ';

  @override
  String get noVoiceDetected => 'ਕੋਈ ਆਵਾਜ਼ ਨਹੀਂ ਮਿਲੀ';

  @override
  String get tooltipSearch => 'ਖੋਜੋ';

  @override
  String get tooltipStudyReview => 'ਅਧਿਐਨ+ਸਮੀਖਿਆ';

  @override
  String get tooltipSpeaking => 'ਬੋਲਣਾ';

  @override
  String get tooltipDecrease => 'ਘਟਾਓ';

  @override
  String get tooltipIncrease => 'ਵਧਾਓ';

  @override
  String get languageSettings => 'ਭਾਸ਼ਾ ਸੈਟਿੰਗਾਂ';

  @override
  String get tutorialM2DropdownDesc => 'ਅਧਿਐਨ ਸਮੱਗਰੀ ਚੁਣੋ।';

  @override
  String get tutorialM2ImportDesc => 'ਡਿਵਾਈਸ ਫੋਲਡਰ ਤੋਂ JSON ਫਾਈਲ ਆਯਾਤ ਕਰੋ।';

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
  String get tutorialContextTitle => 'ਪ੍ਰਸੰਗ ਟੈਗ';

  @override
  String get tutorialContextDesc =>
      'ਸਮਾਨ ਵਾਕਾਂ ਨੂੰ ਵੱਖਰਾ ਕਰਨ ਲਈ ਪ੍ਰਸੰਗ (ਜਿਵੇਂ: ਸਵੇਰ) ਸ਼ਾਮਲ ਕਰੋ।';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc =>
      'Check this to practice only your saved words.';

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
  String get micButtonTooltip => 'Start Listening';

  @override
  String get enterTextHint => 'Enter text to translate';

  @override
  String get wordModeLabel => 'Word Mode';

  @override
  String get accuracy => 'Accuracy';

  @override
  String get basicDefault => 'Basic (Default)';

  @override
  String get basic => 'Basic';

  @override
  String get menuHelp => 'Help';

  @override
  String get menuWebDownload => 'Get Material from Web';

  @override
  String get menuDeviceImport => 'Import from Device';

  @override
  String get menuSettings => 'Settings';

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
  String get tutorialSwapDesc => 'Switch between source and target languages.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';
}

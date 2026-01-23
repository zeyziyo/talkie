// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'جائزہ ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'مواد ($count)';
  }

  @override
  String get mode2Title => 'جائزہ';

  @override
  String get search => 'تلاش';

  @override
  String get translate => 'ترجمہ';

  @override
  String get listen => 'سنیں';

  @override
  String get saveData => 'محفوظ کریں';

  @override
  String get saved => 'محفوظ ہو گیا';

  @override
  String get delete => 'حذف';

  @override
  String get materialInfo => 'مواد کی معلومات';

  @override
  String get cancel => 'منسوخ';

  @override
  String get confirm => 'ٹھیک ہے';

  @override
  String get refresh => 'تازہ کریں';

  @override
  String studyRecords(int count) {
    return 'ریکارڈز ($count)';
  }

  @override
  String get targetLanguageFilter => 'ہدف زبان فلٹر:';

  @override
  String get noRecords => 'منتخب زبان کے لیے کوئی ریکارڈ نہیں';

  @override
  String get saveTranslationsFromSearch => 'تلاش موڈ سے ترجمے محفوظ کریں';

  @override
  String get flip => 'پلٹیں';

  @override
  String get hide => 'چھپائیں';

  @override
  String get deleteRecord => 'ریکارڈ حذف کریں';

  @override
  String get confirmDelete => 'کیا آپ واقعی اس ریکارڈ کو حذف کرنا چاہتے ہیں؟';

  @override
  String get recordDeleted => 'ریکارڈ کامیابی سے حذف ہو گیا';

  @override
  String deleteFailed(String error) {
    return 'حذف ناکام: $error';
  }

  @override
  String get importJsonFile => 'JSON درآمد کریں';

  @override
  String get importing => 'درآمد ہو رہا ہے...';

  @override
  String get importComplete => 'درآمد مکمل';

  @override
  String get importFailed => 'درآمد ناکام';

  @override
  String importFile(String fileName) {
    return 'فائل: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'کل: $count';
  }

  @override
  String importAdded(int count) {
    return 'شامل کیا گیا: $count';
  }

  @override
  String importSkipped(int count) {
    return 'چھوڑا گیا: $count';
  }

  @override
  String get errors => 'غلطیاں:';

  @override
  String get error => 'غلطی';

  @override
  String importErrorMessage(String error) {
    return 'فائل درآمد کرنے میں ناکام:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'مواد منتخب کریں';

  @override
  String get subject => 'موضوع:';

  @override
  String get source => 'ذریعہ:';

  @override
  String get file => 'فائل:';

  @override
  String progress(int current, int total) {
    return 'پیش رفت: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'براہ کرم JSON فائل درآمد کریں';

  @override
  String get selectMaterialPrompt => 'براہ کرم مطالعہ کا مواد منتخب کریں';

  @override
  String get studyComplete => 'مطالعہ کیا';

  @override
  String get markAsStudied => 'مطالعہ شدہ کے طور پر نشان زد کریں';

  @override
  String get listening => 'سن رہا ہے...';

  @override
  String get recognized => 'شناخت مکمل';

  @override
  String recognitionFailed(String error) {
    return 'آواز کی شناخت ناکام: $error';
  }

  @override
  String get checking => 'جانچ رہا ہے...';

  @override
  String get translating => 'ترجمہ ہو رہا ہے...';

  @override
  String get translationComplete => 'ترجمہ مکمل (محفوظ کرنا ضروری)';

  @override
  String get translationLoaded => 'محفوظ شدہ ترجمہ لوڈ ہو گیا';

  @override
  String translationFailed(String error) {
    return 'ترجمہ ناکام: $error';
  }

  @override
  String get enterTextToTranslate => 'ترجمہ کے لیے متن درج کریں';

  @override
  String get saving => 'محفوظ ہو رہا ہے...';

  @override
  String get noTranslationToSave => 'محفوظ کرنے کے لیے کوئی ترجمہ نہیں';

  @override
  String saveFailed(String error) {
    return 'محفوظ کرنا ناکام: $error';
  }

  @override
  String get playing => 'چل رہا ہے...';

  @override
  String get noTextToPlay => 'چلانے کے لیے کوئی متن نہیں';

  @override
  String playbackFailed(String error) {
    return 'پلے بیک ناکام: $error';
  }

  @override
  String get sourceLanguage => 'ماخذ زبان';

  @override
  String get targetLanguage => 'ہدف زبان';

  @override
  String get similarTextFound => 'مماثل متن مل گیا';

  @override
  String get useExistingText => 'موجودہ استعمال کریں';

  @override
  String get createNew => 'نیا بنائیں';

  @override
  String reviewCount(int count) {
    return '$count بار جائزہ لیا گیا';
  }

  @override
  String get tabSpeaking => 'بولنا';

  @override
  String get speakingPractice => 'بولنے کی مشق';

  @override
  String intervalSeconds(int seconds) {
    return 'وقفہ: $secondsسیکنڈ';
  }

  @override
  String get yourPronunciation => 'آپ کا تلفظ';

  @override
  String get correctAnswer => 'صحیح جواب';

  @override
  String score(String score) {
    return 'درستگی: $score%';
  }

  @override
  String get perfect => 'بہترین!';

  @override
  String get good => 'اچھا';

  @override
  String get tryAgain => 'دوبارہ کوشش کریں';

  @override
  String get startPractice => 'مشق شروع کریں';

  @override
  String get stopPractice => 'روکیں';

  @override
  String get helpTitle => 'مدد اور رہنما';

  @override
  String get helpTabModes => 'موڈز';

  @override
  String get helpTabJson => 'JSON فارمیٹ';

  @override
  String get helpTabTour => 'ٹور';

  @override
  String get helpMode1Desc => 'آواز پہچانیں، ترجمہ کریں اور نتیجہ سنیں۔';

  @override
  String get helpMode1Details =>
      '• آواز: شروع/بند کرنے کے لیے مائک دبائیں\n• متن: ترجمہ کے لیے براہ راست ٹائپ کریں\n• آٹو سرچ: ملتے جلتے جملے تلاش کرتا ہے\n• ترجمہ: فوری ترجمہ کا بٹن\n• سنیں: TTS کے لیے اسپیکر آئیکن\n• محفوظ کریں: تاریخ میں شامل کرتا ہے\n• صاف کریں: سب ری سیٹ کریں';

  @override
  String get helpMode2Desc => 'محفوظ شدہ جملوں کا جائزہ لیں (ترجمہ چھپا کر)۔';

  @override
  String get helpMode2Details =>
      '• منتخب کریں: سیٹ یا \'سب کا جائزہ لیں\' منتخب کریں\n• پلٹیں: ترجمہ \'دکھائیں/چھپائیں\'\n• سنیں: جملے کے لیے TTS چلائیں\n• نشان زد کریں: مکمل کے لیے ٹک (V)\n• حذف کریں: حذف کرنے کے لیے کارڈ کو دبا کر رکھیں\n• فلٹر: سب دیکھیں یا مواد کے لحاظ سے';

  @override
  String get helpMode3Desc =>
      'سن کر اور دہرا کر بولنے کی مشق کریں (Shadowing)۔';

  @override
  String get helpMode3Details =>
      '• منتخب کریں: پیکیج منتخب کریں\n• وقفہ: [-] [+] انتظار کا وقت (3سیکنڈ-60سیکنڈ)\n• شروع/بند: سیشن کنٹرول کریں\n• بولیں: آڈیو سنیں اور دہرائیں\n• سکور: درستگی (0-100)\n• دوبارہ کوشش: اگر آواز نہ ملے تو بٹن';

  @override
  String get helpJsonDesc => 'موڈ 3 میں درآمد کرنے کے لیے، JSON بنائیں:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'ٹور شروع کریں';

  @override
  String get tutorialMicTitle => 'وائس ان پٹ';

  @override
  String get tutorialMicDesc => 'وائس ان پٹ کے لیے مائک بٹن دبائیں۔';

  @override
  String get tutorialTabDesc =>
      'آپ یہاں اپنی مطلوبہ سیکھنے کا طریقہ منتخب کر سکتے ہیں۔';

  @override
  String get tutorialTapToContinue => 'جاری رکھنے کے لیے تھپتھپائیں';

  @override
  String get tutorialTransTitle => 'ترجمہ';

  @override
  String get tutorialTransDesc => 'اپنا متن ترجمہ کرنے کے لیے یہاں دبائیں۔';

  @override
  String get tutorialSaveTitle => 'محفوظ کریں';

  @override
  String get tutorialSaveDesc => 'اپنا ترجمہ محفوظ کریں۔';

  @override
  String get tutorialM2SelectTitle => 'منتخب اور فلٹر';

  @override
  String get tutorialM2SelectDesc => 'مواد منتخب کریں یا \'سب کا جائزہ لیں\'۔';

  @override
  String get tutorialM2ListTitle => 'مطالعہ کی فہرست';

  @override
  String get tutorialM2ListDesc =>
      'اپنے کارڈز چیک کریں اور انہیں پلٹیں۔ (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'مواد منتخب کریں';

  @override
  String get tutorialM3SelectDesc => 'بولنے کی مشق کے لیے سیٹ منتخب کریں۔';

  @override
  String get tutorialM3IntervalTitle => 'وقفہ';

  @override
  String get tutorialM3IntervalDesc =>
      'جملوں کے درمیان انتظار کا وقت ایڈجسٹ کریں۔';

  @override
  String get tutorialM3StartTitle => 'شروع';

  @override
  String get tutorialM3StartDesc => 'شروع کرنے کے لیے پلے دبائیں۔';

  @override
  String get startWarning => 'انتباہ';

  @override
  String get noVoiceDetected => 'کوئی آواز نہیں ملی';

  @override
  String get tooltipSearch => 'تلاش';

  @override
  String get tooltipStudyReview => 'مطالعہ+جائزہ';

  @override
  String get tooltipSpeaking => 'بولنا';

  @override
  String get tooltipDecrease => 'کم کریں';

  @override
  String get tooltipIncrease => 'بڑھائیں';

  @override
  String get languageSettings => 'زبان کی ترتیبات';

  @override
  String get tutorialM2DropdownDesc => 'مطالعاتی مواد منتخب کریں۔';

  @override
  String get tutorialM2ImportDesc => 'ڈیوائس فولڈر سے JSON فائل درآمد کریں۔';

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
  String get tutorialContextTitle => 'سیاق و سباق ٹیگ';

  @override
  String get tutorialContextDesc =>
      'ملتے جلتے جملوں میں فرق کرنے کے لیے سیاق و سباق (مثلاً صبح) شامل کریں۔';

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

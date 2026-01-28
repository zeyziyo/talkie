// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'مرور ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'مطالب ($count)';
  }

  @override
  String get mode2Title => 'مرور';

  @override
  String get search => 'جستجو';

  @override
  String get translate => 'ترجمه';

  @override
  String get listen => 'گوش دادن';

  @override
  String get saveData => 'ذخیره';

  @override
  String get saved => 'ذخیره شد';

  @override
  String get delete => 'حذف';

  @override
  String get materialInfo => 'اطلاعات مطالب';

  @override
  String get cancel => 'لغو';

  @override
  String get confirm => 'تایید';

  @override
  String get refresh => 'بروزرسانی';

  @override
  String studyRecords(int count) {
    return 'سوابق ($count)';
  }

  @override
  String get targetLanguageFilter => 'فیلتر زبان مقصد:';

  @override
  String get noRecords => 'هیچ رکوردی برای زبان انتخاب شده وجود ندارد';

  @override
  String get saveTranslationsFromSearch => 'ذخیره ترجمه‌ها از حالت جستجو';

  @override
  String get flip => 'چرخاندن';

  @override
  String get hide => 'مخفی کردن';

  @override
  String get deleteRecord => 'حذف رکورد';

  @override
  String get confirmDelete =>
      'آیا مطمئن هستید که می‌خواهید این رکورد را حذف کنید؟';

  @override
  String get recordDeleted => 'رکورد با موفقیت حذف شد';

  @override
  String deleteFailed(String error) {
    return 'حذف ناموفق بود: $error';
  }

  @override
  String get importJsonFile => 'وارد کردن JSON';

  @override
  String get importing => 'در حال وارد کردن...';

  @override
  String get importComplete => 'وارد کردن کامل شد';

  @override
  String get importFailed => 'وارد کردن ناموفق بود';

  @override
  String importFile(String fileName) {
    return 'فایل: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'کل: $count';
  }

  @override
  String importAdded(int count) {
    return 'افزوده شده: $count';
  }

  @override
  String importSkipped(int count) {
    return 'نادیده گرفته شده: $count';
  }

  @override
  String get errors => 'خطاها:';

  @override
  String get error => 'خطا';

  @override
  String importErrorMessage(String error) {
    return 'عدم موفقیت در وارد کردن فایل:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'انتخاب مطلب';

  @override
  String get subject => 'موضوع:';

  @override
  String get source => 'منبع:';

  @override
  String get file => 'فایل:';

  @override
  String progress(int current, int total) {
    return 'پیشرفت: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'لطفا یک فایل JSON وارد کنید';

  @override
  String get selectMaterialPrompt => 'لطفا مطلب مطالعه را انتخاب کنید';

  @override
  String get studyComplete => 'مطالعه شده';

  @override
  String get markAsStudied => 'علامت‌گذاری به عنوان مطالعه شده';

  @override
  String get listening => 'در حال گوش دادن...';

  @override
  String get recognized => 'شناسایی کامل شد';

  @override
  String recognitionFailed(String error) {
    return 'شناسایی گفتار ناموفق بود: $error';
  }

  @override
  String get checking => 'در حال بررسی...';

  @override
  String get translating => 'در حال ترجمه...';

  @override
  String get translationComplete => 'ترجمه کامل شد (نیاز به ذخیره)';

  @override
  String get translationLoaded => 'ترجمه ذخیره شده بارگذاری شد';

  @override
  String translationFailed(String error) {
    return 'ترجمه ناموفق بود: $error';
  }

  @override
  String get enterTextToTranslate => 'متن را برای ترجمه وارد کنید';

  @override
  String get saving => 'در حال ذخیره...';

  @override
  String get noTranslationToSave => 'هیچ ترجمه‌ای برای ذخیره وجود ندارد';

  @override
  String saveFailed(String error) {
    return 'ذخیره ناموفق بود: $error';
  }

  @override
  String get playing => 'در حال پخش...';

  @override
  String get noTextToPlay => 'هیچ متنی برای پخش وجود ندارد';

  @override
  String playbackFailed(String error) {
    return 'پخش ناموفق بود: $error';
  }

  @override
  String get sourceLanguage => 'زبان مبدا';

  @override
  String get targetLanguage => 'زبان مقصد';

  @override
  String get similarTextFound => 'متن مشابه پیدا شد';

  @override
  String get useExistingText => 'استفاده از موجود';

  @override
  String get createNew => 'ایجاد جدید';

  @override
  String reviewCount(int count) {
    return '$count بار مرور شده';
  }

  @override
  String get tabSpeaking => 'صحبت کردن';

  @override
  String get speakingPractice => 'تیمرن صحبت کردن';

  @override
  String intervalSeconds(int seconds) {
    return 'فاصله: $secondsثانیه';
  }

  @override
  String get yourPronunciation => 'تلفظ شما';

  @override
  String get correctAnswer => 'پاسخ صحیح';

  @override
  String score(String score) {
    return 'دقت: $score%';
  }

  @override
  String get perfect => 'عالی!';

  @override
  String get good => 'خوب';

  @override
  String get tryAgain => 'تلاش مجدد';

  @override
  String get startPractice => 'شروع تمرین';

  @override
  String get stopPractice => 'توقف';

  @override
  String get helpTitle => 'راهنما و راهبری';

  @override
  String get helpTabModes => 'حالت‌ها';

  @override
  String get helpTabJson => 'فرمت JSON';

  @override
  String get helpTabTour => 'تور';

  @override
  String get helpMode1Desc => 'شناسایی صدا، ترجمه و گوش دادن به نتیجه.';

  @override
  String get helpMode1Details =>
      '• صدا: برای شروع/توقف میکروفون را لمس کنید\n• متن: مستقیماً تایپ کنید تا ترجمه شود\n• جستجوی خودکار: جملات مشابه را پیدا می‌کند\n• ترجمه: دکمه ترجمه فوری\n• گوش دادن: آیکون بلندگو برای TTS\n• ذخیره: به تاریخچه اضافه می‌کند\n• پاک کردن: بازنشانی همه';

  @override
  String get helpMode2Desc => 'مرور جملات ذخیره شده با ترجمه مخفی.';

  @override
  String get helpMode2Details =>
      '• انتخاب: مجموعه یا \'همه\' را انتخاب کنید\n• چرخاندن: \'نمایش/مخفی کردن\' ترجمه\n• گوش دادن: پخش TTS برای جمله\n• علامت‌گذاری: تیک (V) برای تکمیل شده‌ها\n• حذف: لمس طولانی کارت برای حذف\n• فیلتر: نمایش همه یا بر اساس مطلب';

  @override
  String get helpMode3Desc =>
      'تمرین صحبت کردن با گوش دادن و تکرار (Shadowing).';

  @override
  String get helpMode3Details =>
      '• انتخاب: بسته را انتخاب کنید\n• فاصله: [-] [+] زمان انتظار (3ثانیه-60ثانیه)\n• شروع/توقف: کنترل جلسه\n• صحبت کردن: گوش دهید و تکرار کنید\n• امتیاز: دقت (0-100)\n• تلاش مجدد: دکمه تلاش مجدد در صورت عدم تشخیص صدا';

  @override
  String get helpJsonDesc => 'برای وارد کردن مطالب در حالت 3، JSON بسازید:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'شروع تور';

  @override
  String get tutorialMicTitle => 'ورودی صوتی';

  @override
  String get tutorialMicDesc => 'برای ورودی صوتی دکمه میکروفون را لمس کنید.';

  @override
  String get tutorialTabDesc =>
      'می‌توانید حالت یادگیری مورد نظر خود را در اینجا انتخاب کنید.';

  @override
  String get tutorialTapToContinue => 'برای ادامه ضربه بزنید';

  @override
  String get tutorialTransTitle => 'ترجمه';

  @override
  String get tutorialTransDesc => 'برای ترجمه اینجا را لمس کنید.';

  @override
  String get tutorialSaveTitle => 'ذخیره';

  @override
  String get tutorialSaveDesc => 'ترجمه خود را ذخیره کنید.';

  @override
  String get tutorialM2SelectTitle => 'انتخاب و فیلتر';

  @override
  String get tutorialM2SelectDesc =>
      'مطالب را انتخاب کنید یا به \'مرور همه\' بروید.';

  @override
  String get tutorialM2ListTitle => 'لیست مطالعه';

  @override
  String get tutorialM2ListDesc =>
      'کارت‌های خود را بررسی کرده و برگردانید. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'انتخاب مطلب';

  @override
  String get tutorialM3SelectDesc =>
      'یک مجموعه برای تمرین صحبت کردن انتخاب کنید.';

  @override
  String get tutorialM3IntervalTitle => 'فاصله';

  @override
  String get tutorialM3IntervalDesc => 'زمان انتظار بین جملات را تنظیم کنید.';

  @override
  String get tutorialM3StartTitle => 'شروع';

  @override
  String get tutorialM3StartDesc => 'برای شروع دکمه پخش را لمس کنید.';

  @override
  String get startWarning => 'هشدار';

  @override
  String get noVoiceDetected => 'صدایی تشخیص داده نشد';

  @override
  String get tooltipSearch => 'جستجو';

  @override
  String get tooltipStudyReview => 'مطالعه+مرور';

  @override
  String get tooltipSpeaking => 'صحبت کردن';

  @override
  String get tooltipDecrease => 'کاهش';

  @override
  String get tooltipIncrease => 'افزایش';

  @override
  String get languageSettings => 'تنظیمات زبان';

  @override
  String get tutorialM2DropdownDesc => 'مطالب آموزشی را انتخاب کنید.';

  @override
  String get tutorialM2ImportDesc => 'فایل JSON را از پوشه دستگاه وارد کنید.';

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
  String get tutorialContextTitle => 'برچسب متن';

  @override
  String get tutorialContextDesc =>
      'برای تمایز جملات مشابه، زمینه (مانند: صبح) را اضافه کنید.';

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
      'من زبان خودم را با زبانی که در حال یادگیری آن هستم عوض می‌کنم.';

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
  String get menuSelectMaterialSet => 'انتخاب یک منبع مطالعه';

  @override
  String get sectionWord => 'بخش کلمات';

  @override
  String get sectionSentence => 'بخش جمله';

  @override
  String get tabWord => 'کلمه';

  @override
  String get tabSentence => 'جمله';

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
  String get basicWordRepository => 'مخزن کلمات پایه';

  @override
  String get basicSentenceRepository => 'مخزن جملات پایه';

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

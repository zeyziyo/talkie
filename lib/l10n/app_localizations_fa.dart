// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get basicWords => 'مخزن کلمات پایه';

  @override
  String get inputLanguage => 'زبان ورودی';

  @override
  String get translationLanguage => 'زبان ترجمه';

  @override
  String get simplifiedGuidance =>
      'تبدیل فوری مکالمات روزمره به زبان خارجی! Talkie زندگی زبانی شما را ثبت می کند.';

  @override
  String get noDataForLanguage =>
      'هیچ داده آموزشی برای زبان انتخابی شما در پایگاه داده محلی وجود ندارد. لطفاً داده ها را بارگیری کنید یا زبان دیگری را انتخاب کنید.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'لغو';

  @override
  String get accuracy => 'دقت';

  @override
  String get ttsMissing => 'موتور صوتی این زبان روی دستگاه شما نصب نشده است.';

  @override
  String get ttsInstallGuide =>
      'لطفاً داده های زبان مربوطه را در تنظیمات Android > Google TTS نصب کنید.';

  @override
  String get adLoading => 'در حال بارگیری تبلیغ. لطفا بعدا دوباره امتحان کنید.';

  @override
  String get addNewSubject => 'اضافه کردن عنوان جدید';

  @override
  String get addParticipant => 'افزودن شرکت‌کننده';

  @override
  String get addTagHint => 'اضافه کردن برچسب...';

  @override
  String get alreadyHaveAccount => 'از قبل حساب کاربری دارید؟';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'پخش خودکار';

  @override
  String get basic => 'پایه';

  @override
  String get basicDefault => 'پایه';

  @override
  String get basicMaterialRepository => 'مخزن جملات/کلمات پایه';

  @override
  String get basicSentenceRepository => 'مخزن جملات پایه';

  @override
  String get basicSentences => 'مخزن جملات پایه';

  @override
  String get basicWordRepository => 'مخزن کلمات پایه';

  @override
  String get caseObject => 'مفعولی';

  @override
  String get casePossessive => 'ملکی';

  @override
  String get casePossessivePronoun => 'ضمیر ملکی';

  @override
  String get caseReflexive => 'انعکاسی';

  @override
  String get caseSubject => 'فاعلی';

  @override
  String get chatAiChat => 'چت';

  @override
  String get chatAllConversations => 'همه گفتگوها';

  @override
  String get chatChoosePersona => 'انتخاب شخصیت';

  @override
  String get chatEndMessage => 'آیا می‌خواهید گفتگو را خاتمه دهید؟';

  @override
  String get chatEndTitle => 'پایان و ذخیره گفتگو';

  @override
  String chatFailed(Object error) {
    return 'چت با شکست مواجه شد: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'گزیده‌ای از گفتگو ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'تاریخچه گفتگو';

  @override
  String get chatNew => 'گفتگوی جدید';

  @override
  String get chatNewChat => 'گفتگوی جدید';

  @override
  String get chatNoConversations => 'هنوز هیچ گفتگویی وجود ندارد';

  @override
  String get chatSearchHint => 'جستجو با عنوان گفتگو...';

  @override
  String get chatNoteSearchHint => 'جستجو در یادداشت‌ها...';

  @override
  String get chatSaveAndExit => 'ذخیره و خروج';

  @override
  String get chatStartNewPrompt => 'برای تمرین یک گفتگوی جدید را شروع کنید!';

  @override
  String get chatTypeHint => 'پیام خود را وارد کنید...';

  @override
  String get chatUntitled => 'گفتگوی بدون عنوان';

  @override
  String get checking => 'در حال بررسی...';

  @override
  String get clearAll => 'پاک کردن همه';

  @override
  String get confirm => 'تایید';

  @override
  String get confirmDelete =>
      'آیا مطمئن هستید که می‌خواهید این رکورد را حذف کنید؟';

  @override
  String get confirmDeleteConversation =>
      'آیا می خواهید این مکالمه را حذف کنید؟\nمکالمات حذف شده قابل بازیابی نیستند.';

  @override
  String get confirmDeleteParticipant =>
      'آیا می‌خواهید این شرکت‌کننده را حذف کنید؟';

  @override
  String get contextTagHint =>
      'برای تشخیص آسان‌تر در آینده، موقعیت را یادداشت کنید';

  @override
  String get contextTagLabel =>
      'زمینه/موقعیت (اختیاری) - مثال: سلام صبح بخیر، فرم محترمانه';

  @override
  String get copiedToClipboard => 'به حافظه کلیپ‌بورد کپی شد!';

  @override
  String get copy => 'کپی';

  @override
  String get correctAnswer => 'پاسخ صحیح';

  @override
  String get createNew => 'ایجاد جدید';

  @override
  String get currentLocation => 'موقعیت فعلی';

  @override
  String get currentMaterialLabel => 'مجموعه مطالب انتخاب شده فعلی:';

  @override
  String get delete => 'حذف';

  @override
  String deleteFailed(String error) {
    return 'حذف ناموفق بود: $error';
  }

  @override
  String get deleteRecord => 'حذف رکورد';

  @override
  String get dialogueQuestDesc =>
      'از طریق ایفای نقش، مکالمه را تمرین کنید. پاسخ مناسب را انتخاب کرده و آن را بگویید.';

  @override
  String get dialogueQuestTitle => 'جستجوی گفتگو';

  @override
  String get disambiguationPrompt =>
      'کدام معنی را برای ترجمه می خواهید انتخاب کنید؟';

  @override
  String get disambiguationTitle => 'انتخاب معنی';

  @override
  String get dontHaveAccount => 'حساب کاربری ندارید؟';

  @override
  String get editParticipant => 'ویرایش شرکت‌کننده';

  @override
  String get email => 'ایمیل';

  @override
  String get emailAlreadyInUse =>
      'این ایمیل قبلاً ثبت شده است. لطفاً وارد شوید یا از بازیابی رمز عبور استفاده کنید.';

  @override
  String get enterNewSubjectName => 'عنوان جدید را وارد کنید';

  @override
  String get enterSentenceHint => 'یک جمله وارد کنید...';

  @override
  String get enterTextHint => 'متنی را برای ترجمه وارد کنید';

  @override
  String get enterTextToTranslate => 'متن را برای ترجمه وارد کنید';

  @override
  String get enterWordHint => 'یک واژه وارد کنید...';

  @override
  String get error => 'خطا';

  @override
  String get errorHateSpeech =>
      'به دلیل وجود عبارات تنفرآمیز، ترجمه امکان پذیر نیست.';

  @override
  String get errorOtherSafety => 'ترجمه به دلیل سیاست ایمنی هوش مصنوعی رد شد.';

  @override
  String get errorProfanity =>
      'به دلیل وجود کلمات رکیک، ترجمه امکان پذیر نیست.';

  @override
  String get errorSelectCategory => 'ابتدا یک کلمه یا جمله را انتخاب کنید!';

  @override
  String get errorSexualContent => 'به دلیل وجود محتوای جنسی، ترجمه رد شد.';

  @override
  String get errors => 'خطاها:';

  @override
  String get female => 'زن';

  @override
  String get file => 'فایل:';

  @override
  String get filterAll => 'همه';

  @override
  String get flip => 'چرخاندن';

  @override
  String get formComparative => 'تفضیلی';

  @override
  String get formInfinitive => 'مصدر/حال';

  @override
  String get formPast => 'گذشته';

  @override
  String get formPastParticiple => 'اسم مفعول';

  @override
  String get formPlural => 'جمع';

  @override
  String get formPositive => 'ساده';

  @override
  String get formPresent => 'حال';

  @override
  String get formPresentParticiple => 'اسم فاعل (ing)';

  @override
  String get formSingular => 'مفرد';

  @override
  String get formSuperlative => 'عالی';

  @override
  String get formThirdPersonSingular => 'سوم شخص مفرد';

  @override
  String get gameModeDesc => 'حالت بازی را برای تمرین انتخاب کنید';

  @override
  String get gameModeTitle => 'حالت بازی';

  @override
  String get gameOver => 'پایان بازی';

  @override
  String get gender => 'جنسیت';

  @override
  String get labelFilterMaterial => 'جزوه';

  @override
  String get labelFilterTag => 'برچسب';

  @override
  String get generalTags => 'برچسب های عمومی';

  @override
  String get getMaterials => 'دریافت مطالب';

  @override
  String get good => 'خوب';

  @override
  String get googleContinue => 'ادامه با Google';

  @override
  String get helpDialogueImportDesc =>
      'وارد کردن مجموعه‌های گفتگو کامل به عنوان فایل JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'برای وارد کردن مطالب در حالت 3، JSON بسازید:';

  @override
  String get helpJsonTypeDialogue => 'گفتگو (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'جمله (Sentence)';

  @override
  String get helpJsonTypeWord => 'کلمه (Word)';

  @override
  String get helpMode1Desc =>
      'یادگیری زبان را به شهودی ترین شکل ممکن از طریق میکروفون سه بعدی ممتاز و نماد صفحه کلید بزرگ شروع کنید.';

  @override
  String get helpMode1Details =>
      '• تنظیمات زبان: زبان خود و زبانی که در حال یادگیری آن هستید را از طریق دکمه زبان در بالای صفحه اصلی بررسی کنید و زبان یادگیری را تغییر دهید.\n• ورودی ساده: فوراً از طریق میکروفون بزرگ و پنجره متن در مرکز وارد کنید.\n• تأیید تنظیمات: پس از اتمام ورودی، دکمه تیک آبی سمت راست را فشار دهید. پنجره تنظیمات جزئیات ظاهر می‌شود.\n• تنظیمات جزئیات: می‌توانید مجموعه داده‌ای را که می‌خواهید ذخیره کنید، یادداشت (یادداشت) و برچسب را در گفتگوی ظاهر شده مشخص کنید.\n• اکنون ترجمه کنید: پس از اتمام تنظیمات، دکمه ترجمه سبز را فشار دهید تا هوش مصنوعی فوراً ترجمه را انجام دهد.\n• جستجوی خودکار: ترجمه‌های موجود مشابه را در حین تایپ به‌صورت زنده تشخیص داده و نشان می‌دهد.\n• گوش دادن و ذخیره: با آیکون بلندگو در زیر نتایج ترجمه به تلفظ گوش دهید و از طریق «ذخیره داده» آن را به لیست یادگیری اضافه کنید.';

  @override
  String get helpMode2Desc => 'مرور جملات ذخیره شده با ترجمه مخفی.';

  @override
  String get helpMode2Details =>
      '• انتخاب مجموعه: از منوی بالا سمت راست (⋮) گزینه \'انتخاب مجموعه آموزشی\' یا \'آرشیو آنلاین\' را استفاده کنید.\n• برگرداندن کارت: با \'نمایش/پنهان کردن\' ترجمه را بررسی کنید.\n• شنیدن: با آیکون بلندگو تلفظ را پخش کنید.\n• اتمام یادگیری: با علامت تیک (V) یادگیری را تمام شده علامت بزنید.\n• حذف: با لمس طولانی (Long Click) کارت، سابقه را پاک کنید.\n• جستجو و فیلتر: از نوار جستجو (جستجوی هوشمند لحظه‌ای) و فیلترهای برچسب و حرف آغازین استفاده کنید.';

  @override
  String get helpMode3Desc =>
      'با گوش دادن به جملات و تکرار آن‌ها (سایه زنی)، تلفظ خود را تمرین کنید.';

  @override
  String get helpMode3Details =>
      '• انتخاب: بسته را انتخاب کنید\n• فاصله: [-] [+] زمان انتظار (3ثانیه-60ثانیه)\n• شروع/توقف: کنترل جلسه\n• صحبت کردن: گوش دهید و تکرار کنید\n• امتیاز: دقت (0-100)\n• تلاش مجدد: دکمه تلاش مجدد در صورت عدم تشخیص صدا';

  @override
  String get helpModeChatDesc =>
      'با یک شخصیت هوش مصنوعی مکالمه کنید و مکالمه واقعی را تمرین کنید.';

  @override
  String get helpModeChatDetails =>
      '• چت هوش مصنوعی: تمرین مکالمه واقعی با شخصیت در منوی «چت» در نوار تب پایین.\n• تنظیمات شخصیت: جنسیت، نام و کد زبان طرف مقابل را آزادانه تعیین کنید.\n• نمایش موقعیت GPS: با تشخیص موقعیت فعلی من، موضوعات مکالمه مناسب برای مکان را توصیه می کند.\n• 2 زبان: پاسخ هوش مصنوعی همراه با ترجمه نمایش داده می شود تا اثر یادگیری به حداکثر برسد.\n• مدیریت سابقه: فیلتر کردن تاریخچه مکالمات گذشته و ذخیره پیام های خاص در طول مکالمه به عنوان مواد یادگیری';

  @override
  String get helpTabJson => 'فرمت JSON';

  @override
  String get helpTabModes => 'حالت‌ها';

  @override
  String get helpTabQuickStart => 'شروع سریع';

  @override
  String get helpTabTour => 'تور';

  @override
  String get helpTitle => 'راهنما و راهبری';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'مخفی کردن';

  @override
  String importAdded(int count) {
    return 'افزوده شده: $count';
  }

  @override
  String get importComplete => 'وارد کردن کامل شد';

  @override
  String get importDuplicateTitleError =>
      'مطلبی با همین عنوان از قبل وجود دارد. لطفا عنوان را تغییر داده و دوباره امتحان کنید.';

  @override
  String importErrorMessage(String error) {
    return 'عدم موفقیت در وارد کردن فایل:\\n$error';
  }

  @override
  String get importFailed => 'وارد کردن ناموفق بود';

  @override
  String importFile(String fileName) {
    return 'فایل: $fileName';
  }

  @override
  String get importJsonFile => 'وارد کردن JSON';

  @override
  String get importJsonFilePrompt => 'لطفا یک فایل JSON وارد کنید';

  @override
  String importSkipped(int count) {
    return 'نادیده گرفته شده: $count';
  }

  @override
  String importTotal(int count) {
    return 'کل: $count';
  }

  @override
  String get importing => 'در حال وارد کردن...';

  @override
  String get inputModeTitle => 'ورودی';

  @override
  String intervalSeconds(int seconds) {
    return 'فاصله: $secondsثانیه';
  }

  @override
  String get invalidEmail => 'لطفا یک ایمیل معتبر وارد کنید.';

  @override
  String get kakaoContinue => 'ادامه با کاکائو';

  @override
  String get labelLangCode => 'کد زبان (مثال: en-US, ko-KR)';

  @override
  String get labelName => 'نام';

  @override
  String get labelNote => 'یادداشت';

  @override
  String get labelPOS => 'نوع کلمه';

  @override
  String get labelRole => 'نقش';

  @override
  String get labelSentence => 'جمله';

  @override
  String get labelSentenceCollection => 'مجموعه جملات';

  @override
  String get labelSentenceType => 'نوع جمله';

  @override
  String get labelShowMemorized => 'تمام شده';

  @override
  String get labelType => 'نوع:';

  @override
  String get labelWord => 'کلمه';

  @override
  String get labelWordbook => 'دفتر لغت';

  @override
  String get language => 'زبان';

  @override
  String get languageSettings => 'تنظیمات زبان';

  @override
  String get languageSettingsTitle => 'تنظیمات زبان';

  @override
  String get libTitleFirstMeeting => 'اولین ملاقات';

  @override
  String get libTitleGreetings1 => 'احوالپرسی ۱';

  @override
  String get libTitleNouns1 => 'اسم‌ها ۱';

  @override
  String get libTitleVerbs1 => 'فعل‌ها ۱';

  @override
  String get listen => 'گوش دادن';

  @override
  String get listening => 'در حال گوش دادن...';

  @override
  String get loadingParticipants => 'در حال بارگیری شرکت‌کنندگان...';

  @override
  String get location => 'مکان';

  @override
  String get login => 'ورود';

  @override
  String get logout => 'خروج';

  @override
  String get logoutConfirmMessage => 'آیا می‌خواهید از این دستگاه خارج شوید؟';

  @override
  String get logoutConfirmTitle => 'خروج';

  @override
  String get male => 'مرد';

  @override
  String get manageParticipants => 'مدیریت شرکت‌کنندگان';

  @override
  String get manual => 'ورودی دستی';

  @override
  String get markAsStudied => 'علامت‌گذاری به عنوان مطالعه شده';

  @override
  String get materialInfo => 'اطلاعات مطالب';

  @override
  String get me => 'من';

  @override
  String get menuDeviceImport => 'وارد کردن مطالب از دستگاه';

  @override
  String get menuHelp => 'راهنما';

  @override
  String get menuLanguageSettings => 'تنظیمات زبان';

  @override
  String get menuOnlineLibrary => 'کتابخانه آنلاین';

  @override
  String get menuSelectMaterialSet => 'انتخاب یک منبع مطالعه';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'تور آموزش';

  @override
  String get menuWebDownload => 'دفترچه راهنما';

  @override
  String get metadataDialogTitle => 'طبقه‌بندی جزئی';

  @override
  String get metadataFormType => 'نوع گرامری';

  @override
  String get metadataRootWord => 'ریشه (Root Word)';

  @override
  String get micButtonTooltip => 'شروع تشخیص صدا';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'مجموعه مطالب انتخاب شده فعلی: $name';
  }

  @override
  String get mode2Title => 'مرور';

  @override
  String get mode3Next => 'بعدی';

  @override
  String get mode3Start => 'شروع';

  @override
  String get mode3Stop => 'توقف';

  @override
  String get mode3TryAgain => 'تلاش مجدد';

  @override
  String get mySentenceCollection => 'مجموعه جملات من';

  @override
  String get myWordbook => 'دفتر لغات من';

  @override
  String get neutral => 'خنثی';

  @override
  String get newSubjectName => 'عنوان جدید دفترچه لغات/عبارات';

  @override
  String get next => 'بعدی';

  @override
  String get noDialogueHistory => 'هیچ سابقه گفتگویی وجود ندارد.';

  @override
  String get noInternetWarningMic =>
      'اتصال اینترنت وجود ندارد. تشخیص صدا در حالت آفلاین ممکن نیست.';

  @override
  String get noInternetWarningTranslate =>
      'اتصال اینترنت وجود ندارد. قابلیت ترجمه در حالت آفلاین در دسترس نیست. لطفا از حالت مرور استفاده کنید.';

  @override
  String get noMaterialsInCategory => 'هیچ مطلبی در این دسته وجود ندارد.';

  @override
  String get noParticipantsFound => 'هیچ شرکت‌کننده‌ای ثبت نشده است.';

  @override
  String get noRecords => 'هیچ رکوردی برای زبان انتخاب شده وجود ندارد';

  @override
  String get noStudyMaterial => 'هیچ مطلب آموزشی وجود ندارد.';

  @override
  String get noTextToPlay => 'هیچ متنی برای پخش وجود ندارد';

  @override
  String get noTranslationToSave => 'هیچ ترجمه‌ای برای ذخیره وجود ندارد';

  @override
  String get noVoiceDetected => 'صدایی تشخیص داده نشد';

  @override
  String get notSelected => '- انتخاب نشده -';

  @override
  String get onlineLibraryCheckInternet =>
      'اتصال اینترنت خود را بررسی کنید یا بعدا دوباره امتحان کنید.';

  @override
  String get onlineLibraryLoadFailed => 'بارگیری مطالب با شکست مواجه شد.';

  @override
  String get onlineLibraryNoMaterials => 'هیچ مطلبی وجود ندارد.';

  @override
  String get participantDeleted => 'شرکت‌کننده حذف شد.';

  @override
  String get participantRename => 'تغییر نام شرکت‌کننده';

  @override
  String get partner => 'شریک';

  @override
  String get partnerMode => 'حالت شریک';

  @override
  String get password => 'رمز عبور';

  @override
  String get passwordTooShort => 'رمز عبور باید حداقل ۶ کاراکتر باشد.';

  @override
  String get perfect => 'عالی!';

  @override
  String get personaFriend => 'دوست محلی';

  @override
  String get personaGuide => 'راهنمای تور';

  @override
  String get personaTeacher => 'معلم انگلیسی';

  @override
  String get playAgain => 'دوباره بازی کنید';

  @override
  String playbackFailed(String error) {
    return 'پخش ناموفق بود: $error';
  }

  @override
  String get playing => 'در حال پخش...';

  @override
  String get posAdjective => 'صفت';

  @override
  String get posAdverb => 'قید';

  @override
  String get posConjunction => 'حرف ربط';

  @override
  String get posInterjection => 'حرف ندا';

  @override
  String get posNoun => 'اسم';

  @override
  String get posPreposition => 'حرف اضافه';

  @override
  String get posPronoun => 'ضمیر';

  @override
  String get posVerb => 'فعل';

  @override
  String get practiceModeTitle => 'تمرین';

  @override
  String get practiceWordsOnly => 'فقط تمرین کلمات';

  @override
  String progress(int current, int total) {
    return 'پیشرفت: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'نمایش $count مورد اخیرا ایجاد شده';
  }

  @override
  String recognitionFailed(String error) {
    return 'شناسایی گفتار ناموفق بود: $error';
  }

  @override
  String get recognized => 'شناسایی کامل شد';

  @override
  String get recognizedText => 'متن تشخیص داده شده:';

  @override
  String get recordDeleted => 'رکورد با موفقیت حذف شد';

  @override
  String get refresh => 'بروزرسانی';

  @override
  String get reset => 'بازنشانی';

  @override
  String get resetPracticeHistory => 'بازنشانی تاریخچه تمرین';

  @override
  String get retry => 'دوباره امتحان کنید؟';

  @override
  String get reviewAll => 'مرور کلی';

  @override
  String reviewCount(int count) {
    return '$count بار مرور شده';
  }

  @override
  String get reviewModeTitle => 'مرور';

  @override
  String get roleAi => 'هوش مصنوعی';

  @override
  String get roleThirdParty => 'شخص ثالث';

  @override
  String get roleUser => 'کاربر';

  @override
  String get save => 'ذخیره';

  @override
  String get saveData => 'ذخیره';

  @override
  String saveFailed(String error) {
    return 'ذخیره ناموفق بود: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'ذخیره ترجمه‌ها از حالت جستجو';

  @override
  String get saved => 'ذخیره شد';

  @override
  String get saving => 'در حال ذخیره...';

  @override
  String score(String score) {
    return 'دقت: $score%';
  }

  @override
  String get scoreLabel => 'امتیاز';

  @override
  String get search => 'جستجو';

  @override
  String get searchConditions => 'شرایط جستجو';

  @override
  String get searchSentenceHint => 'جستجوی جمله...';

  @override
  String get searchWordHint => 'جستجوی واژه...';

  @override
  String get sectionSentence => 'بخش جمله';

  @override
  String get sectionSentences => 'جملات';

  @override
  String get sectionWord => 'بخش کلمات';

  @override
  String get sectionWords => 'واژگان';

  @override
  String get selectExistingSubject => 'انتخاب عنوان موجود';

  @override
  String get selectMaterialPrompt => 'لطفا مطلب مطالعه را انتخاب کنید';

  @override
  String get selectMaterialSet => 'انتخاب مجموعه مطالب آموزشی';

  @override
  String get selectPOS => 'انتخاب نوع کلمه';

  @override
  String get selectParticipants => 'انتخاب شرکت‌کنندگان';

  @override
  String get selectSentenceType => 'انتخاب نوع جمله';

  @override
  String get selectStudyMaterial => 'انتخاب مطلب';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'جمله';

  @override
  String get signUp => 'ثبت نام';

  @override
  String get similarTextFound => 'متن مشابه پیدا شد';

  @override
  String get skip => 'رد کردن';

  @override
  String get source => 'منبع:';

  @override
  String get sourceLanguage => 'زبان مبدا';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'حالا صحبت کنید!';

  @override
  String get speaker => 'گوینده';

  @override
  String get speakerSelect => 'انتخاب گوینده';

  @override
  String get speakingPractice => 'تیمرن صحبت کردن';

  @override
  String get startChat => 'شروع گفتگو';

  @override
  String get startPractice => 'شروع تمرین';

  @override
  String get startTutorial => 'شروع تور';

  @override
  String get startWarning => 'هشدار';

  @override
  String get startsWith => 'شروع با';

  @override
  String get statusCheckEmail =>
      'لطفاً ایمیل خود را برای تکمیل تأیید بررسی کنید.';

  @override
  String statusDownloading(Object name) {
    return 'در حال بارگیری: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'وارد کردن با شکست مواجه شد: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name با موفقیت وارد شد';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'ورود لغو شد.';

  @override
  String statusLoginFailed(Object error) {
    return 'ورود با شکست مواجه شد: $error';
  }

  @override
  String get statusLoginSuccess => 'ورود با موفقیت انجام شد.';

  @override
  String get statusLogoutSuccess => 'با موفقیت خارج شدید.';

  @override
  String statusSignUpFailed(Object error) {
    return 'ثبت نام با شکست مواجه شد: $error';
  }

  @override
  String get statusSigningUp => 'در حال ثبت نام...';

  @override
  String get stopPractice => 'توقف';

  @override
  String get studyComplete => 'مطالعه شده';

  @override
  String studyRecords(int count) {
    return 'سوابق ($count)';
  }

  @override
  String get styleFormal => 'رسمی';

  @override
  String get styleInformal => 'غیر رسمی';

  @override
  String get stylePolite => 'مودبانه';

  @override
  String get styleSlang => 'محاوره‌ای/اصطلاحی';

  @override
  String get subject => 'موضوع:';

  @override
  String get swapLanguages => 'جابجایی زبان‌ها';

  @override
  String get switchToAi => 'تغییر به حالت هوش مصنوعی';

  @override
  String get switchToPartner => 'تغییر به حالت شریک';

  @override
  String get syncingData => 'در حال همگام‌سازی داده‌ها...';

  @override
  String get tabConversation => 'گفتگو';

  @override
  String tabReview(int count) {
    return 'مرور ($count)';
  }

  @override
  String get tabSentence => 'جمله';

  @override
  String get tabSpeaking => 'صحبت کردن';

  @override
  String tabStudyMaterial(int count) {
    return 'مطالب ($count)';
  }

  @override
  String get tabWord => 'کلمه';

  @override
  String get tagFormal => 'محترمانه';

  @override
  String get tagSelection => 'انتخاب برچسب';

  @override
  String get targetLanguage => 'زبان مقصد';

  @override
  String get targetLanguageFilter => 'فیلتر زبان مقصد:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'زمان فکر کردن قبل از نمایش پاسخ صحیح.';

  @override
  String get thinkingTimeInterval => 'فاصله زمانی تفکر';

  @override
  String get timeUp => 'اتمام زمان!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'برچسب عنوان (پوشه)';

  @override
  String get tooltipDecrease => 'کاهش';

  @override
  String get tooltipIncrease => 'افزایش';

  @override
  String get tooltipSearch => 'جستجو';

  @override
  String get tooltipSpeaking => 'صحبت کردن';

  @override
  String get tooltipStudyReview => 'مطالعه+مرور';

  @override
  String totalRecords(int count) {
    return 'در مجموع $count سابقه (نمایش همه)';
  }

  @override
  String get translate => 'ترجمه';

  @override
  String get translating => 'در حال ترجمه...';

  @override
  String get translation => 'ترجمه';

  @override
  String get translationComplete => 'ترجمه کامل شد (نیاز به ذخیره)';

  @override
  String translationFailed(String error) {
    return 'ترجمه ناموفق بود: $error';
  }

  @override
  String get translationLimitExceeded => 'محدودیت ترجمه فراتر رفت';

  @override
  String get translationLimitMessage =>
      'شما از تمام ترجمه‌های رایگان روزانه (۵ بار) استفاده کرده‌اید.\\n\\nآیا می‌خواهید با تماشای یک تبلیغ، ۵ بار دیگر فورا شارژ کنید؟';

  @override
  String get translationLoaded => 'ترجمه ذخیره شده بارگذاری شد';

  @override
  String get translationRefilled => 'تعداد ترجمه‌ها به ۵ بار شارژ شد!';

  @override
  String get translationResultHint => 'نتیجه ترجمه - قابل ویرایش';

  @override
  String get tryAgain => 'تلاش مجدد';

  @override
  String get tutorialAiChatDesc =>
      'تمرین مکالمه واقعی با شخصیت‌های هوش مصنوعی.';

  @override
  String get tutorialAiChatTitle => 'چت با هوش مصنوعی';

  @override
  String get tutorialContextDesc =>
      'برای تمایز جملات مشابه، زمینه (مانند: صبح) را اضافه کنید.';

  @override
  String get tutorialContextTitle => 'برچسب متن';

  @override
  String get tutorialLangSettingsDesc => 'تنظیم زبان مبدا و مقصد برای ترجمه.';

  @override
  String get tutorialLangSettingsTitle => 'تنظیمات زبان';

  @override
  String get tutorialM1ToggleDesc => 'حالت کلمه و جمله را از اینجا تغییر دهید.';

  @override
  String get tutorialM1ToggleTitle => 'حالت کلمه/جمله';

  @override
  String get tutorialM2DropdownDesc => 'مطالب آموزشی را انتخاب کنید.';

  @override
  String get tutorialM2ImportDesc => 'فایل JSON را از پوشه دستگاه وارد کنید.';

  @override
  String get tutorialM2ListDesc =>
      'کارت‌های خود را بررسی کرده و برگردانید. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'لیست مطالعه';

  @override
  String get tutorialM2SearchDesc =>
      'جستجو و یافتن سریع کلمات و جملات ذخیره شده.';

  @override
  String get tutorialM2SelectDesc =>
      'مطالب را انتخاب کنید یا به \'مرور همه\' بروید.';

  @override
  String get tutorialM2SelectTitle => 'انتخاب و فیلتر';

  @override
  String get tutorialM3IntervalDesc => 'زمان انتظار بین جملات را تنظیم کنید.';

  @override
  String get tutorialM3IntervalTitle => 'فاصله';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc =>
      'یک مجموعه برای تمرین صحبت کردن انتخاب کنید.';

  @override
  String get tutorialM3SelectTitle => 'انتخاب مطلب';

  @override
  String get tutorialM3StartDesc => 'برای شروع دکمه پخش را لمس کنید.';

  @override
  String get tutorialM3StartTitle => 'شروع';

  @override
  String get tutorialM3WordsDesc =>
      'در صورت انتخاب، فقط کلمات ذخیره شده تمرین می‌شوند.';

  @override
  String get tutorialM3WordsTitle => 'تمرین کلمات';

  @override
  String get tutorialMicDesc => 'برای ورودی صوتی دکمه میکروفون را لمس کنید.';

  @override
  String get tutorialMicTitle => 'ورودی صوتی';

  @override
  String get tutorialSaveDesc => 'ترجمه خود را ذخیره کنید.';

  @override
  String get tutorialSaveTitle => 'ذخیره';

  @override
  String get tutorialSwapDesc =>
      'من زبان خودم را با زبانی که در حال یادگیری آن هستم عوض می‌کنم.';

  @override
  String get tutorialTabDesc =>
      'می‌توانید حالت یادگیری مورد نظر خود را در اینجا انتخاب کنید.';

  @override
  String get tutorialTapToContinue => 'برای ادامه ضربه بزنید';

  @override
  String get tutorialTransDesc => 'برای ترجمه اینجا را لمس کنید.';

  @override
  String get tutorialTransTitle => 'ترجمه';

  @override
  String get typeExclamation => 'جمله تعجبی';

  @override
  String get typeImperative => 'جمله امری';

  @override
  String get typeQuestion => 'جمله پرسشی';

  @override
  String get typeStatement => 'جمله خبری';

  @override
  String get usageLimitTitle => 'به حد مجاز رسیدید';

  @override
  String get useExistingText => 'استفاده از موجود';

  @override
  String get viewOnlineGuide => 'مشاهده راهنمای آنلاین';

  @override
  String get voluntaryTranslations => 'ترجمه‌های داوطلبانه';

  @override
  String get watchAdAndRefill => 'تماشای تبلیغ و شارژ (+۵ بار)';

  @override
  String get word => 'کلمه';

  @override
  String get wordDefenseDesc =>
      'با گفتن کلمه، قبل از رسیدن دشمنان از پایگاه دفاع کنید.';

  @override
  String get wordDefenseTitle => 'دفاع از کلمه';

  @override
  String get wordModeLabel => 'حالت کلمه';

  @override
  String get yourPronunciation => 'تلفظ شما';

  @override
  String get ttsUnsupportedNatively =>
      'خروجی صوتی برای این زبان در تنظیمات پیش فرض این دستگاه پشتیبانی نمی شود.';

  @override
  String get homeTab => 'ترجمه';

  @override
  String get welcomeTitle => 'به Talkie خوش آمدید!';

  @override
  String get welcomeDesc =>
      'به Talkie خوش آمدید! ما با تمامیت 100٪ از بیش از 80 زبان در سراسر جهان پشتیبانی می کنیم و با طراحی سه بعدی ممتاز جدید و عملکرد بهینه شده، یک تجربه یادگیری عالی را به شما ارائه می دهیم.';

  @override
  String get welcomeButton => 'شروع کنید';

  @override
  String get labelDetails => 'جزئیات';

  @override
  String get translationResult => 'نتیجه ترجمه';

  @override
  String get inputContent => 'متن ورودی';

  @override
  String get translateNow => 'ترجمه کن';

  @override
  String get tooltipSettingsConfirm => 'تایید تنظیمات';

  @override
  String get hintNoteExample => 'مثال: توضیحات بیشتر، کلمات هم‌معنی و غیره';

  @override
  String get hintTagExample => 'مثال: کسب و کار، سفر و...';

  @override
  String get addNew => 'اضافه کردن جدید';

  @override
  String get newNotebookTitle => 'نام دفترچه یادداشت جدید';

  @override
  String get enterNameHint => 'نام را وارد کنید';

  @override
  String get add => 'اضافه';

  @override
  String get openSettings => 'باز کردن تنظیمات';

  @override
  String get helpNotebook => 'پوشه ای را برای ذخیره نتایج ترجمه انتخاب کنید.';

  @override
  String get helpNote =>
      'معانی، مثال ها، موقعیت ها و غیره کلمات را آزادانه یادداشت کنید.';

  @override
  String get helpTag =>
      'برای طبقه بندی یا جستجو در آینده، کلمات کلیدی را وارد کنید.';

  @override
  String get requestTranslation => 'درخواست ترجمه';

  @override
  String get statusRequestSuccess => 'درخواست ترجمه با موفقیت انجام شد.';

  @override
  String statusRequestFailed(String error) {
    return 'درخواست ترجمه ناموفق بود: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'زبان یادگیری پشتیبانی نمی‌شود';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'مواد انتخابی شما از زبان یادگیری ($targetLang) فعلی پشتیبانی نمی‌کند و نمی‌تواند به صورت محلی ذخیره شود. آیا می‌خواهید ترجمه درخواست کنید؟';
  }

  @override
  String get quickStartStep1Title => '۱. تنظیم زبان';

  @override
  String get quickStartStep1Desc =>
      'ابتدا زبان خود و زبان یادگیری را در منو > تنظیمات زبان مشخص کنید.';

  @override
  String get quickStartStep2Title => '۲. جریان اصلی';

  @override
  String get quickStartStep2Desc =>
      'کارت‌های یادگیری خود را به ترتیب ورودی (میکروفون/صفحه‌کلید) -> ترجمه -> ذخیره ایجاد کنید.';

  @override
  String get quickStartStep3Title => '۳. استفاده از حالت‌ها';

  @override
  String get quickStartStep3Desc =>
      'با چت تمرین کنید و در تب تمرین تلفظ، متن را ببینید و مستقیماً تلفظ کنید و تمرین کنید.';
}

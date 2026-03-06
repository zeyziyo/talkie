// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get accuracy => 'درستگی';

  @override
  String get ttsMissing => 'اس زبان کا صوتی انجن آپ کے آلے پر نصب نہیں ہے۔';

  @override
  String get ttsInstallGuide =>
      'براہ کرم Android ترتیبات > Google TTS میں اس زبان کا ڈیٹا انسٹال کریں۔';

  @override
  String get adLoading =>
      'اشتہار لوڈ ہو رہا ہے۔ براہ کرم بعد میں دوبارہ کوشش کریں۔';

  @override
  String get addNewSubject => 'نیا عنوان شامل کریں';

  @override
  String get addParticipant => 'شریک شامل کریں';

  @override
  String get addTagHint => 'ٹیگ شامل کریں...';

  @override
  String get alreadyHaveAccount => 'کیا آپ کا پہلے سے اکاؤنٹ ہے؟';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'خودکار پلے';

  @override
  String get basic => 'بنیادی';

  @override
  String get basicDefault => 'بنیادی';

  @override
  String get basicMaterialRepository => 'بنیادی جملہ/لفظ ذخیرہ';

  @override
  String get basicSentenceRepository => 'بنیادی جملوں کا ذخیرہ';

  @override
  String get basicSentences => 'بنیادی جملہ ذخیرہ';

  @override
  String get basicWordRepository => 'بنیادی الفاظ کا ذخیرہ';

  @override
  String get basicWords => 'بنیادی لفظ ذخیرہ';

  @override
  String get cancel => 'منسوخ';

  @override
  String get caseObject => 'مفعول';

  @override
  String get casePossessive => 'اضافی';

  @override
  String get casePossessivePronoun => 'ضمیر اضافی';

  @override
  String get caseReflexive => 'ضمیر انعکاسی';

  @override
  String get caseSubject => 'فاعل';

  @override
  String get chatAiChat => 'چیٹ';

  @override
  String get chatAllConversations => 'تمام گفتگوئیں';

  @override
  String get chatChoosePersona => 'شخصیت منتخب کریں';

  @override
  String get chatEndMessage => 'کیا آپ بات چیت ختم کرنا چاہتے ہیں؟';

  @override
  String get chatEndTitle => 'بات چیت ختم کریں اور محفوظ کریں';

  @override
  String chatFailed(Object error) {
    return 'چیٹ ناکام: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'گفتگو سے اقتباس ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'بات چیت کی تاریخ';

  @override
  String get chatNew => 'نئی بات چیت';

  @override
  String get chatNewChat => 'نئی بات چیت';

  @override
  String get chatNoConversations => 'ابھی تک کوئی بات چیت نہیں ہوئی۔';

  @override
  String get chatSaveAndExit => 'محفوظ کریں اور باہر نکلیں';

  @override
  String get chatStartNewPrompt => 'مشق کے لیے ایک نئی بات چیت شروع کریں!';

  @override
  String get chatTypeHint => 'پیغام درج کریں...';

  @override
  String get chatUntitled => 'بے عنوان گفتگو';

  @override
  String get checking => 'جانچ رہا ہے...';

  @override
  String get clearAll => 'سب صاف کریں';

  @override
  String get confirm => 'ٹھیک ہے';

  @override
  String get confirmDelete => 'کیا آپ واقعی اس ریکارڈ کو حذف کرنا چاہتے ہیں؟';

  @override
  String get confirmDeleteConversation =>
      'کیا آپ اس گفتگو کو حذف کرنا چاہتے ہیں؟ حذف شدہ گفتگو کو بازیافت نہیں کیا جا سکتا۔';

  @override
  String get confirmDeleteParticipant =>
      'کیا آپ اس شریک کو حذف کرنا چاہتے ہیں؟';

  @override
  String get contextTagHint =>
      'بعد میں فرق کرنا آسان بنانے کے لیے صورتحال لکھیں۔';

  @override
  String get contextTagLabel =>
      'سیاق و سباق / صورتحال (اختیاری) - مثال کے طور پر: صبح بخیر، رسمی';

  @override
  String get copiedToClipboard => 'کلپ بورڈ پر کاپی ہو گیا!';

  @override
  String get copy => 'کاپی کریں';

  @override
  String get correctAnswer => 'صحیح جواب';

  @override
  String get createNew => 'نیا بنائیں';

  @override
  String get currentLocation => 'موجودہ مقام';

  @override
  String get currentMaterialLabel => 'موجودہ منتخب شدہ مواد:';

  @override
  String get delete => 'حذف';

  @override
  String deleteFailed(String error) {
    return 'حذف ناکام: $error';
  }

  @override
  String get deleteRecord => 'ریکارڈ حذف کریں';

  @override
  String get dialogueQuestDesc =>
      'حالات کے مطابق گفتگو کی مشق کریں۔ مناسب جواب منتخب کریں اور کہیں۔';

  @override
  String get dialogueQuestTitle => 'مکالمہ کویسٹ';

  @override
  String get disambiguationPrompt => 'آپ کس معنی میں ترجمہ کرنا چاہیں گے؟';

  @override
  String get disambiguationTitle => 'معنی منتخب کریں';

  @override
  String get dontHaveAccount => 'کیا آپ کا اکاؤنٹ نہیں ہے؟';

  @override
  String get editParticipant => 'شریک میں ترمیم کریں';

  @override
  String get email => 'ای میل';

  @override
  String get emailAlreadyInUse =>
      'یہ ای میل پہلے سے رجسٹرڈ ہے۔ براہ کرم لاگ ان کریں یا پاس ورڈ دوبارہ حاصل کرنے کی کوشش کریں۔';

  @override
  String get enterNewSubjectName => 'نیا عنوان درج کریں';

  @override
  String get enterSentenceHint => 'جملہ درج کریں...';

  @override
  String get enterTextHint => 'ترجمہ کرنے کے لیے متن درج کریں';

  @override
  String get enterTextToTranslate => 'ترجمہ کے لیے متن درج کریں';

  @override
  String get enterWordHint => 'لفظ درج کریں...';

  @override
  String get error => 'غلطی';

  @override
  String get errorHateSpeech =>
      'نفرت انگیز تقریر پر مشتمل ہونے کی وجہ سے ترجمہ نہیں کیا جا سکتا۔';

  @override
  String get errorOtherSafety =>
      'AI حفاظتی پالیسی کی وجہ سے ترجمہ مسترد کر دیا گیا۔';

  @override
  String get errorProfanity =>
      'گالی پر مشتمل ہونے کی وجہ سے ترجمہ نہیں کیا جا سکتا۔';

  @override
  String get errorSelectCategory => 'پہلے ایک لفظ یا جملہ منتخب کریں!';

  @override
  String get errorSexualContent =>
      'غیر اخلاقی مواد پر مشتمل ہونے کی وجہ سے ترجمہ نہیں کیا جا سکتا۔';

  @override
  String get errors => 'غلطیاں:';

  @override
  String get female => 'عورت';

  @override
  String get file => 'فائل:';

  @override
  String get filterAll => 'تمام';

  @override
  String get flip => 'پلٹیں';

  @override
  String get formComparative => 'تقابلی';

  @override
  String get formInfinitive => 'مصدر / حال';

  @override
  String get formPast => 'ماضی';

  @override
  String get formPastParticiple => 'فعل ماضی';

  @override
  String get formPlural => 'جمع';

  @override
  String get formPositive => 'مطلق';

  @override
  String get formPresent => 'حال';

  @override
  String get formPresentParticiple => 'فعل حال (ing)';

  @override
  String get formSingular => 'واحد';

  @override
  String get formSuperlative => 'امتیازی';

  @override
  String get formThirdPersonSingular => 'تھرڈ پرسن واحد';

  @override
  String get gameModeDesc => 'مشق کرنے کے لیے گیم موڈ منتخب کریں۔';

  @override
  String get gameModeTitle => 'گیم موڈ';

  @override
  String get gameOver => 'گیم ختم';

  @override
  String get gender => 'صنف';

  @override
  String get generalTags => 'عمومی ٹیگز';

  @override
  String get getMaterials => 'مواد حاصل کریں';

  @override
  String get good => 'اچھا';

  @override
  String get googleContinue => 'Google کے ساتھ جاری رکھیں';

  @override
  String get helpDialogueImportDesc =>
      'JSON فائل کے ذریعے پورے مکالمے کا سیٹ درآمد کریں۔';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'موڈ 3 میں درآمد کرنے کے لیے، JSON بنائیں:';

  @override
  String get helpJsonTypeDialogue => 'مکالمہ (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'جملہ (Sentence)';

  @override
  String get helpJsonTypeWord => 'لفظ (Word)';

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
      'جملے کو سنیں اور دہرائیں (شیڈوونگ) اور اپنی تلفظ کی مشق کریں۔';

  @override
  String get helpMode3Details =>
      '• منتخب کریں: پیکیج منتخب کریں\n• وقفہ: [-] [+] انتظار کا وقت (3سیکنڈ-60سیکنڈ)\n• شروع/بند: سیشن کنٹرول کریں\n• بولیں: آڈیو سنیں اور دہرائیں\n• سکور: درستگی (0-100)\n• دوبارہ کوشش: اگر آواز نہ ملے تو بٹن';

  @override
  String get helpModeChatDesc =>
      'اے آئی شخصیت کے ساتھ بات چیت کرتے ہوئے حقیقی زندگی کی گفتگو کی مشق کریں۔';

  @override
  String get helpModeChatDetails =>
      '•\tAI چیٹ: شخصیتوں کے ساتھ عملی گفتگو کی مشق کریں۔\n•\tشرکاء کا انتظام: اپنی اور AI کی زبانیں مقرر کر کے لسانی تضادات سے بچیں۔\n•\tGPS صورتحال: اپنے موجودہ مقام کی بنیاد پر قدرتی گفتگو کے حالات بنائیں۔\n•\tریکارڈ کا تحفظ: تمام گفتگوؤں کو ID کی بنیاد پر محفوظ طریقے سے محفوظ کیا جاتا ہے، اور نام تبدیل کرنے کے بعد بھی ریکارڈ برقرار رہتا ہے۔';

  @override
  String get helpTabJson => 'JSON فارمیٹ';

  @override
  String get helpTabModes => 'موڈز';

  @override
  String get helpTabTour => 'ٹور';

  @override
  String get helpTitle => 'مدد اور رہنما';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'چھپائیں';

  @override
  String importAdded(int count) {
    return 'شامل کیا گیا: $count';
  }

  @override
  String get importComplete => 'درآمد مکمل';

  @override
  String get importDuplicateTitleError =>
      'اسی عنوان کا مواد پہلے سے موجود ہے۔ عنوان تبدیل کرنے کے بعد دوبارہ کوشش کریں۔';

  @override
  String importErrorMessage(String error) {
    return 'فائل درآمد کرنے میں ناکام:\\n$error';
  }

  @override
  String get importFailed => 'درآمد ناکام';

  @override
  String importFile(String fileName) {
    return 'فائل: $fileName';
  }

  @override
  String get importJsonFile => 'JSON درآمد کریں';

  @override
  String get importJsonFilePrompt => 'براہ کرم JSON فائل درآمد کریں';

  @override
  String importSkipped(int count) {
    return 'چھوڑا گیا: $count';
  }

  @override
  String importTotal(int count) {
    return 'کل: $count';
  }

  @override
  String get importing => 'درآمد ہو رہا ہے...';

  @override
  String get inputModeTitle => 'ان پٹ';

  @override
  String intervalSeconds(int seconds) {
    return 'وقفہ: $secondsسیکنڈ';
  }

  @override
  String get invalidEmail => 'براہ کرم ایک درست ای میل درج کریں۔';

  @override
  String get kakaoContinue => 'کاکاو کے ساتھ جاری رکھیں';

  @override
  String get labelLangCode => 'زبان کوڈ (مثال کے طور پر: en-US, ko-KR)';

  @override
  String get labelName => 'نام';

  @override
  String get labelNote => 'نوٹ';

  @override
  String get labelPOS => 'حصہ کلام';

  @override
  String get labelRole => 'کردار';

  @override
  String get labelSentence => 'جملہ';

  @override
  String get labelSentenceCollection => 'جملوں کا ذخیرہ';

  @override
  String get labelSentenceType => 'جملے کی قسم';

  @override
  String get labelShowMemorized => 'ختم شد';

  @override
  String get labelType => 'قسم:';

  @override
  String get labelWord => 'لفظ';

  @override
  String get labelWordbook => 'لفاظی نامہ';

  @override
  String get language => 'زبان';

  @override
  String get languageSettings => 'زبان کی ترتیبات';

  @override
  String get languageSettingsTitle => 'زبان کی ترتیبات';

  @override
  String get libTitleFirstMeeting => 'پہلی ملاقات';

  @override
  String get libTitleGreetings1 => 'سلام 1';

  @override
  String get libTitleNouns1 => 'اسم 1';

  @override
  String get libTitleVerbs1 => 'فعل 1';

  @override
  String get listen => 'سنیں';

  @override
  String get listening => 'سن رہا ہے...';

  @override
  String get loadingParticipants => 'شرکاء کو لوڈ کیا جا رہا ہے...';

  @override
  String get location => 'مقام';

  @override
  String get login => 'لاگ ان';

  @override
  String get logout => 'لاگ آؤٹ';

  @override
  String get logoutConfirmMessage =>
      'کیا آپ اس ڈیوائس سے لاگ آؤٹ کرنا چاہتے ہیں؟';

  @override
  String get logoutConfirmTitle => 'لاگ آؤٹ';

  @override
  String get male => 'مرد';

  @override
  String get manageParticipants => 'شرکاء کا انتظام کریں';

  @override
  String get manual => 'دستی اندراج';

  @override
  String get markAsStudied => 'مطالعہ شدہ کے طور پر نشان زد کریں';

  @override
  String get materialInfo => 'مواد کی معلومات';

  @override
  String get me => 'میں';

  @override
  String get menuDeviceImport => 'ڈیوائس سے مواد درآمد کریں';

  @override
  String get menuHelp => 'مدد';

  @override
  String get menuLanguageSettings => 'زبان کی ترتیبات';

  @override
  String get menuOnlineLibrary => 'آن لائن لائبریری';

  @override
  String get menuSelectMaterialSet => 'مطالعہ کا مواد منتخب کریں۔';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'استعمال کا طریقہ';

  @override
  String get menuWebDownload => 'صارف دستی';

  @override
  String get metadataDialogTitle => 'تفصیلی درجہ بندی';

  @override
  String get metadataFormType => 'گرامر کی شکل';

  @override
  String get metadataRootWord => 'اصل لفظ (Root Word)';

  @override
  String get micButtonTooltip => 'وائس ریکگنیشن شروع کریں';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'موجودہ منتخب شدہ مواد: $name';
  }

  @override
  String get mode2Title => 'جائزہ';

  @override
  String get mode3Next => 'اگلا';

  @override
  String get mode3Start => 'شروع کریں';

  @override
  String get mode3Stop => 'ختم کریں';

  @override
  String get mode3TryAgain => 'دوبارہ کوشش کریں';

  @override
  String get mySentenceCollection => 'میرے جملوں کا مجموعہ';

  @override
  String get myWordbook => 'میری الفاظ کی کتاب';

  @override
  String get neutral => 'غیر جانبدار';

  @override
  String get newSubjectName => 'نیا عنوان';

  @override
  String get next => 'اگلا';

  @override
  String get noDialogueHistory => 'کوئی بات چیت کی تاریخ نہیں ہے۔';

  @override
  String get noInternetWarningMic =>
      'انٹرنیٹ کنکشن نہیں ہے۔ آف لائن ہونے پر آواز کی شناخت ممکن نہیں ہو سکتی۔';

  @override
  String get noInternetWarningTranslate =>
      'انٹرنیٹ کنکشن نہیں ہے۔ آف لائن ہونے پر ترجمہ کا فنکشن دستیاب نہیں ہے۔ براہ کرم ریویو موڈ استعمال کریں۔';

  @override
  String get noMaterialsInCategory => 'اس زمرے میں کوئی مواد نہیں ہے۔';

  @override
  String get noParticipantsFound => 'کوئی شریک نہیں ملا۔';

  @override
  String get noRecords => 'منتخب زبان کے لیے کوئی ریکارڈ نہیں';

  @override
  String get noStudyMaterial => 'مطالعہ کا کوئی مواد نہیں ہے۔';

  @override
  String get noTextToPlay => 'چلانے کے لیے کوئی متن نہیں';

  @override
  String get noTranslationToSave => 'محفوظ کرنے کے لیے کوئی ترجمہ نہیں';

  @override
  String get noVoiceDetected => 'کوئی آواز نہیں ملی';

  @override
  String get notSelected => '- منتخب نہیں - ';

  @override
  String get onlineLibraryCheckInternet =>
      'اپنے انٹرنیٹ کنکشن کی جانچ کریں یا بعد میں دوبارہ کوشش کریں۔';

  @override
  String get onlineLibraryLoadFailed => 'مواد کو لوڈ کرنے میں ناکام رہے۔';

  @override
  String get onlineLibraryNoMaterials => 'کوئی مواد نہیں ہے۔';

  @override
  String get participantDeleted => 'شریک کو حذف کر دیا گیا ہے۔';

  @override
  String get participantRename => 'شریک کا نام تبدیل کریں';

  @override
  String get partner => 'پارٹنر';

  @override
  String get partnerMode => 'پارٹنر موڈ';

  @override
  String get password => 'پاس ورڈ';

  @override
  String get passwordTooShort => 'پاس ورڈ کم از کم 6 حروف کا ہونا چاہیے۔';

  @override
  String get perfect => 'بہترین!';

  @override
  String get personaFriend => 'مقامی دوست';

  @override
  String get personaGuide => 'سیاحتی رہنما';

  @override
  String get personaTeacher => 'انگریزی استاد';

  @override
  String get playAgain => 'دوبارہ کھیلیں';

  @override
  String playbackFailed(String error) {
    return 'پلے بیک ناکام: $error';
  }

  @override
  String get playing => 'چل رہا ہے...';

  @override
  String get posAdjective => 'صفت';

  @override
  String get posAdverb => 'فعل متعلق';

  @override
  String get posConjunction => 'حرفِ عطف';

  @override
  String get posInterjection => 'حرفِ ندا';

  @override
  String get posNoun => 'اسم';

  @override
  String get posPreposition => 'حرفِ جار';

  @override
  String get posPronoun => 'ضمیر';

  @override
  String get posVerb => 'فعل';

  @override
  String get practiceModeTitle => 'مشق';

  @override
  String get practiceWordsOnly => 'صرف الفاظ کی مشق کریں';

  @override
  String progress(int current, int total) {
    return 'پیش رفت: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'حال ہی میں تیار کردہ $count آئٹمز دیکھیں';
  }

  @override
  String recognitionFailed(String error) {
    return 'آواز کی شناخت ناکام: $error';
  }

  @override
  String get recognized => 'شناخت مکمل';

  @override
  String get recognizedText => 'پہچانی جانے والی آواز:';

  @override
  String get recordDeleted => 'ریکارڈ کامیابی سے حذف ہو گیا';

  @override
  String get refresh => 'تازہ کریں';

  @override
  String get reset => 'ری سیٹ';

  @override
  String get resetPracticeHistory => 'مشق کی تاریخ کو ری سیٹ کریں';

  @override
  String get retry => 'دوبارہ کوشش کریں؟';

  @override
  String get reviewAll => 'تمام کا جائزہ لیں';

  @override
  String reviewCount(int count) {
    return '$count بار جائزہ لیا گیا';
  }

  @override
  String get reviewModeTitle => 'جائزہ';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'تیسرا فریق';

  @override
  String get roleUser => 'صارف';

  @override
  String get save => 'محفوظ کریں';

  @override
  String get saveData => 'محفوظ کریں';

  @override
  String saveFailed(String error) {
    return 'محفوظ کرنا ناکام: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'تلاش موڈ سے ترجمے محفوظ کریں';

  @override
  String get saved => 'محفوظ ہو گیا';

  @override
  String get saving => 'محفوظ ہو رہا ہے...';

  @override
  String score(String score) {
    return 'درستگی: $score%';
  }

  @override
  String get scoreLabel => 'اسکور';

  @override
  String get search => 'تلاش';

  @override
  String get searchConditions => 'تلاش کی شرائط';

  @override
  String get searchSentenceHint => 'جملہ تلاش کریں...';

  @override
  String get searchWordHint => 'لفظ تلاش کریں...';

  @override
  String get sectionSentence => 'جملے کا سیکشن';

  @override
  String get sectionSentences => 'جملے';

  @override
  String get sectionWord => 'لفظ سیکشن';

  @override
  String get sectionWords => 'الفاظ';

  @override
  String get selectExistingSubject => 'موجودہ عنوان منتخب کریں';

  @override
  String get selectMaterialPrompt => 'براہ کرم مطالعہ کا مواد منتخب کریں';

  @override
  String get selectMaterialSet => 'مواد کا انتخاب کریں';

  @override
  String get selectPOS => 'پارٹ آف اسپیچ منتخب کریں';

  @override
  String get selectParticipants => 'شرکاء منتخب کریں';

  @override
  String get selectSentenceType => 'جملے کی قسم منتخب کریں';

  @override
  String get selectStudyMaterial => 'مواد منتخب کریں';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'جملہ';

  @override
  String get signUp => 'سائن اپ';

  @override
  String get similarTextFound => 'مماثل متن مل گیا';

  @override
  String get skip => 'چھوڑیں';

  @override
  String get source => 'ذریعہ:';

  @override
  String get sourceLanguage => 'ماخذ زبان';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'اب بولیں!';

  @override
  String get speaker => 'بولنے والا';

  @override
  String get speakerSelect => 'بولنے والا منتخب کریں';

  @override
  String get speakingPractice => 'بولنے کی مشق';

  @override
  String get startChat => 'بات چیت شروع کریں';

  @override
  String get startPractice => 'مشق شروع کریں';

  @override
  String get startTutorial => 'ٹور شروع کریں';

  @override
  String get startWarning => 'انتباہ';

  @override
  String get startsWith => 'سے شروع ہوتا ہے';

  @override
  String get statusCheckEmail =>
      'تصدیق مکمل کرنے کے لیے براہ کرم اپنا ای میل چیک کریں۔';

  @override
  String statusDownloading(Object name) {
    return 'ڈاؤن لوڈ ہو رہا ہے: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'درآمد میں ناکامی: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name درآمد مکمل';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'لاگ ان منسوخ کر دیا گیا۔';

  @override
  String statusLoginFailed(Object error) {
    return 'لاگ ان میں ناکامی: $error';
  }

  @override
  String get statusLoginSuccess => 'لاگ ان کامیاب ہو گیا۔';

  @override
  String get statusLogoutSuccess => 'لاگ آؤٹ ہو گئے۔';

  @override
  String statusSignUpFailed(Object error) {
    return 'سائن اپ میں ناکامی: $error';
  }

  @override
  String get statusSigningUp => 'سائن اپ ہو رہا ہے...';

  @override
  String get stopPractice => 'روکیں';

  @override
  String get studyComplete => 'مطالعہ کیا';

  @override
  String studyRecords(int count) {
    return 'ریکارڈز ($count)';
  }

  @override
  String get styleFormal => 'رسمی';

  @override
  String get styleInformal => 'غیر رسمی';

  @override
  String get stylePolite => 'مہذب';

  @override
  String get styleSlang => 'سلینگ';

  @override
  String get subject => 'موضوع:';

  @override
  String get swapLanguages => 'زبانیں تبدیل کریں';

  @override
  String get switchToAi => 'AI موڈ پر سوئچ کریں';

  @override
  String get switchToPartner => 'پارٹنر موڈ پر سوئچ کریں';

  @override
  String get syncingData => 'ڈیٹا کی مطابقت پذیری ہو رہی ہے...';

  @override
  String get tabConversation => 'گفتگو';

  @override
  String tabReview(int count) {
    return 'جائزہ ($count)';
  }

  @override
  String get tabSentence => 'جملہ';

  @override
  String get tabSpeaking => 'بولنا';

  @override
  String tabStudyMaterial(int count) {
    return 'مواد ($count)';
  }

  @override
  String get tabWord => 'لفظ';

  @override
  String get tagFormal => 'باعزت';

  @override
  String get tagSelection => 'ٹیگ کا انتخاب';

  @override
  String get targetLanguage => 'ہدف زبان';

  @override
  String get targetLanguageFilter => 'ہدف زبان فلٹر:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'جواب ظاہر ہونے سے پہلے سوچنے کا وقت۔';

  @override
  String get thinkingTimeInterval => 'سوچنے کا وقفہ';

  @override
  String get timeUp => 'وقت ختم!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'عنوان ٹیگ (محفوظ شدہ دستاویزات)';

  @override
  String get tooltipDecrease => 'کم کریں';

  @override
  String get tooltipIncrease => 'بڑھائیں';

  @override
  String get tooltipSearch => 'تلاش';

  @override
  String get tooltipSpeaking => 'بولنا';

  @override
  String get tooltipStudyReview => 'مطالعہ+جائزہ';

  @override
  String totalRecords(int count) {
    return 'کل $count ریکارڈز (تمام دیکھیں)';
  }

  @override
  String get translate => 'ترجمہ';

  @override
  String get translating => 'ترجمہ ہو رہا ہے...';

  @override
  String get translation => 'ترجمہ';

  @override
  String get translationComplete => 'ترجمہ مکمل (محفوظ کرنا ضروری)';

  @override
  String translationFailed(String error) {
    return 'ترجمہ ناکام: $error';
  }

  @override
  String get translationLimitExceeded => 'ترجمہ کی حد سے تجاوز کر گئی۔';

  @override
  String get translationLimitMessage =>
      'آپ نے روزانہ مفت تراجم (5 بار) استعمال کر لیے ہیں۔\\n\\nکیا آپ اشتہار دیکھ کر فوری طور پر 5 بار ری چارج کرنا چاہیں گے؟';

  @override
  String get translationLoaded => 'محفوظ شدہ ترجمہ لوڈ ہو گیا';

  @override
  String get translationRefilled => 'تراجم کی تعداد 5 بار ری چارج ہو گئی ہے!';

  @override
  String get translationResultHint => 'ترجمہ کا نتیجہ - قابل ترمیم';

  @override
  String get tryAgain => 'دوبارہ کوشش کریں';

  @override
  String get tutorialAiChatDesc => 'AI شخصیتوں کے ساتھ عملی گفتگو کی مشق کریں۔';

  @override
  String get tutorialAiChatTitle => 'اے آئی چیٹ';

  @override
  String get tutorialContextDesc =>
      'ملتے جلتے جملوں میں فرق کرنے کے لیے سیاق و سباق (مثلاً صبح) شامل کریں۔';

  @override
  String get tutorialContextTitle => 'سیاق و سباق ٹیگ';

  @override
  String get tutorialLangSettingsDesc =>
      'ترجمہ کرنے کے لیے ماخذ اور ہدف زبانیں منتخب کریں۔';

  @override
  String get tutorialLangSettingsTitle => 'زبان کی ترتیبات';

  @override
  String get tutorialM1ToggleDesc => 'یہاں سے لفظ اور جملہ موڈ تبدیل کریں۔';

  @override
  String get tutorialM1ToggleTitle => 'لفظ/جملہ موڈ';

  @override
  String get tutorialM2DropdownDesc => 'مطالعاتی مواد منتخب کریں۔';

  @override
  String get tutorialM2ImportDesc => 'ڈیوائس فولڈر سے JSON فائل درآمد کریں۔';

  @override
  String get tutorialM2ListDesc =>
      'اپنے کارڈز چیک کریں اور انہیں پلٹیں۔ (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'مطالعہ کی فہرست';

  @override
  String get tutorialM2SearchDesc =>
      'محفوظ شدہ الفاظ اور جملوں کو تلاش کر کے تیزی سے تلاش کیا جا سکتا ہے۔';

  @override
  String get tutorialM2SelectDesc => 'مواد منتخب کریں یا \'سب کا جائزہ لیں\'۔';

  @override
  String get tutorialM2SelectTitle => 'منتخب اور فلٹر';

  @override
  String get tutorialM3IntervalDesc =>
      'جملوں کے درمیان انتظار کا وقت ایڈجسٹ کریں۔';

  @override
  String get tutorialM3IntervalTitle => 'وقفہ';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'بولنے کی مشق کے لیے سیٹ منتخب کریں۔';

  @override
  String get tutorialM3SelectTitle => 'مواد منتخب کریں';

  @override
  String get tutorialM3StartDesc => 'شروع کرنے کے لیے پلے دبائیں۔';

  @override
  String get tutorialM3StartTitle => 'شروع';

  @override
  String get tutorialM3WordsDesc =>
      'اگر چیک کیا جائے تو، صرف محفوظ شدہ الفاظ کی مشق کریں۔';

  @override
  String get tutorialM3WordsTitle => 'الفاظ کی مشق';

  @override
  String get tutorialMicDesc => 'وائس ان پٹ کے لیے مائک بٹن دبائیں۔';

  @override
  String get tutorialMicTitle => 'وائس ان پٹ';

  @override
  String get tutorialSaveDesc => 'اپنا ترجمہ محفوظ کریں۔';

  @override
  String get tutorialSaveTitle => 'محفوظ کریں';

  @override
  String get tutorialSwapDesc =>
      'میں اپنی زبان کو اس زبان کے ساتھ تبدیل کرتا ہوں جو میں سیکھ رہا ہوں۔';

  @override
  String get tutorialTabDesc =>
      'آپ یہاں اپنی مطلوبہ سیکھنے کا طریقہ منتخب کر سکتے ہیں۔';

  @override
  String get tutorialTapToContinue => 'جاری رکھنے کے لیے تھپتھپائیں';

  @override
  String get tutorialTransDesc => 'اپنا متن ترجمہ کرنے کے لیے یہاں دبائیں۔';

  @override
  String get tutorialTransTitle => 'ترجمہ';

  @override
  String get typeExclamation => 'استعجابی جملہ';

  @override
  String get typeImperative => 'امریہ جملہ';

  @override
  String get typeQuestion => 'سوالیہ جملہ';

  @override
  String get typeStatement => 'بیانیہ جملہ';

  @override
  String get usageLimitTitle => 'استعمال کی حد ختم';

  @override
  String get useExistingText => 'موجودہ استعمال کریں';

  @override
  String get viewOnlineGuide => 'آن لائن گائیڈ دیکھیں';

  @override
  String get voluntaryTranslations => 'رضاکارانہ تراجم';

  @override
  String get watchAdAndRefill => 'اشتہار دیکھیں اور ری چارج کریں (+5 بار)';

  @override
  String get word => 'لفظ';

  @override
  String get wordDefenseDesc =>
      'دشمن کے پہنچنے سے پہلے الفاظ کہہ کر اپنے اڈے کا دفاع کریں۔';

  @override
  String get wordDefenseTitle => 'لفظ دفاع';

  @override
  String get wordModeLabel => 'لفظ موڈ';

  @override
  String get yourPronunciation => 'آپ کا تلفظ';

  @override
  String get ttsUnsupportedNatively =>
      'اس ڈیوائس کی ڈیفالٹ سیٹنگ اس زبان میں آواز کی آؤٹ پُٹ کو سپورٹ نہیں کرتی ہے۔';
}

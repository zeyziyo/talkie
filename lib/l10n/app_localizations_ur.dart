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
  String get adLoading =>
      'اشتہار لوڈ ہو رہا ہے۔ براہ کرم بعد میں دوبارہ کوشش کریں۔';

  @override
  String get add => 'شامل کریں';

  @override
  String get addNew => 'نیا اضافہ کریں';

  @override
  String get addNewSubject => 'نیا عنوان شامل کریں';

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
  String get checking => 'جانچ رہا ہے...';

  @override
  String get clearAll => 'سب صاف کریں';

  @override
  String get confirm => 'ٹھیک ہے';

  @override
  String get confirmDelete => 'کیا آپ واقعی اس ریکارڈ کو حذف کرنا چاہتے ہیں؟';

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
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => 'کیا آپ کا اکاؤنٹ نہیں ہے؟';

  @override
  String get email => 'ای میل';

  @override
  String get emailAlreadyInUse =>
      'یہ ای میل پہلے سے رجسٹرڈ ہے۔ براہ کرم لاگ ان کریں یا پاس ورڈ دوبارہ حاصل کرنے کی کوشش کریں۔';

  @override
  String get enterNameHint => 'نام درج کریں';

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
  String get errorQuotaExceeded =>
      '인공지능 서비스의 일일 할당량이 소진되었습니다. 잠시 후 또는 내일 다시 시도해 주세요.';

  @override
  String get errorSafetyPolicy => 'AI 안전 정책으로 인해 번역이 제한되었습니다.';

  @override
  String get copyOriginal => '원본 복사';

  @override
  String get originalCopied => '원본 텍스트가 복사되었습니다.';

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
  String get extractedText => 'شناختہ متن';

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
  String get helpJsonDesc => 'موڈ 3 میں درآمد کرنے کے لیے، JSON بنائیں:';

  @override
  String get helpJsonTypeSentence => 'جملہ (Sentence)';

  @override
  String get helpJsonTypeWord => 'لفظ (Word)';

  @override
  String get helpMode1Desc =>
      'پریمیم 3D مائکروفون اور بڑے کی بورڈ آئیکنز کے ذریعے زبان سیکھنے کا سب سے آسان طریقہ شروع کریں۔';

  @override
  String get helpMode1Details =>
      '• زبان کی ترتیبات: ہوم اسکرین کے اوپر موجود زبان کے بٹن سے اپنی زبان اور زیر تعلیم زبان کو چیک کریں اور سیکھنے کی زبان تبدیل کریں۔\n• سادہ ان پٹ: درمیان میں موجود بڑے مائیکروفون اور ٹیکسٹ ونڈو کے ذریعے فوری طور پر ان پٹ کریں۔\n• سیٹنگ کی تصدیق: ان پٹ مکمل کرنے کے بعد دائیں جانب موجود نیلے چیک بٹن کو دبائیں۔ تفصیلی سیٹنگ ونڈو ظاہر ہوگی۔\n• تفصیلی سیٹنگ: ظاہر ہونے والے ڈائیلاگ میں محفوظ کرنے کے لیے مواد، تشریحات (میمو)، اور ٹیگز متعین کریں۔\n• ابھی ترجمہ کریں: سیٹنگ مکمل کرنے کے بعد سبز ترجمہ بٹن کو دبائیں، مصنوعی ذہانت فوری طور پر ترجمہ کرے گی۔\n• خودکار تلاش: ان پٹ کے دوران ملتی جلتی موجودہ تراجم کو حقیقی وقت میں دکھاتا ہے۔\n• سنیں اور محفوظ کریں: ترجمہ کے نتیجے کے نیچے اسپیکر آئیکن سے تلفظ سنیں، اور \'ڈیٹا محفوظ کریں\' کے ذریعے سیکھنے کی فہرست میں شامل کریں۔';

  @override
  String get helpMode2Desc => 'محفوظ شدہ جملوں کا جائزہ لیں (ترجمہ چھپا کر)۔';

  @override
  String get helpMode2Details =>
      '• مواد کا انتخاب: اوپر دائیں مینو (⋮) سے \'مطالعہ کے مواد کا انتخاب\' یا \'آن لائن مواد کا ذخیرہ\' استعمال کریں۔\n• کارڈ پلٹائیں: \'دکھائیں/چھپائیں\' کے ساتھ ترجمہ چیک کریں۔\n• سنیں: اسپیکر آئیکن کے ساتھ تلفظ چلائیں۔\n• سیکھنا مکمل: چیک مارک (V) کے ساتھ سیکھنا مکمل کریں۔\n• حذف کریں: ریکارڈ کو حذف کرنے کے لیے کارڈ کو دیر تک دبائیں (لمبا کلک)۔\n• تلاش اور فلٹر: سرچ بار (ریئل ٹائم اسمارٹ سرچ) اور ٹیگز، ابتدائی حرف فلٹر سپورٹ۔';

  @override
  String get helpMode3Desc =>
      'جملے کو سنیں اور دہرائیں (شیڈوونگ) اور اپنی تلفظ کی مشق کریں۔';

  @override
  String get helpMode3Details =>
      '• منتخب کریں: پیکیج منتخب کریں\n• وقفہ: [-] [+] انتظار کا وقت (3سیکنڈ-60سیکنڈ)\n• شروع/بند: سیشن کنٹرول کریں\n• بولیں: آڈیو سنیں اور دہرائیں\n• سکور: درستگی (0-100)\n• دوبارہ کوشش: اگر آواز نہ ملے تو بٹن';

  @override
  String get helpNote =>
      'الفاظ کے معنی، مثالیں، حالات وغیرہ آزادانہ طور پر ریکارڈ کریں۔';

  @override
  String get helpNotebook =>
      'ترجمہ شدہ نتائج کو محفوظ کرنے کے لیے فولڈر منتخب کریں۔';

  @override
  String get helpTabJson => 'JSON فارمیٹ';

  @override
  String get helpTabModes => 'موڈز';

  @override
  String get helpTabQuickStart => 'فوری آغاز';

  @override
  String get helpTabTour => 'ٹور';

  @override
  String get helpTag =>
      'بعد میں درجہ بندی یا تلاش کرنے کے لیے مطلوبہ الفاظ درج کریں۔';

  @override
  String get helpTitle => 'مدد اور رہنما';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'چھپائیں';

  @override
  String get hintNoteExample => 'مثال: سیاق و سباق، مترادف الفاظ وغیرہ';

  @override
  String get hintTagExample => 'مثال: کاروبار، سفر...';

  @override
  String get homeTab => 'ترجمہ';

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
  String importFolderSuccess(num files, num entries) {
    return '$files فائلیں، $entries اندراجات درآمد کیے گئے۔';
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
  String get importSourceFile => 'واحد JSON فائل';

  @override
  String get importSourceFolder => 'فولڈر (زبان کے لحاظ سے لائبریری ڈھانچہ)';

  @override
  String get importSourceTitle => 'درآمد ماخذ منتخب کریں';

  @override
  String get importSourceZip => 'زپ فائل (کمپریسڈ فولڈر)';

  @override
  String importTotal(int count) {
    return 'کل: $count';
  }

  @override
  String get importing => 'درآمد ہو رہا ہے...';

  @override
  String get inputContent => 'ان پٹ مواد';

  @override
  String get inputLanguage => 'ان پٹ لینگویج';

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
  String get labelDetails => 'تفصیلات';

  @override
  String get labelFilterMaterial => 'مٹیریل';

  @override
  String get labelFilterTag => 'ٹیگ';

  @override
  String get labelLangCode => 'زبان کوڈ (مثال کے طور پر: en-US, ko-KR)';

  @override
  String get labelNote => 'نوٹ';

  @override
  String get labelPOS => 'حصہ کلام';

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
  String get manual => 'دستی اندراج';

  @override
  String get markAsStudied => 'مطالعہ شدہ کے طور پر نشان زد کریں';

  @override
  String get materialInfo => 'مواد کی معلومات';

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
  String get newNotebookTitle => 'نئی نوٹ بک کا عنوان';

  @override
  String get newSubjectName => 'نیا عنوان';

  @override
  String get next => 'اگلا';

  @override
  String get noDataForLanguage =>
      'منتخب کردہ زبان کے لیے لرننگ میٹریل لوکل ڈیٹا بیس میں نہیں ہے۔ میٹریل ڈاؤن لوڈ کریں یا کوئی دوسری زبان منتخب کریں۔';

  @override
  String get noMaterialsInCategory => 'اس زمرے میں کوئی مواد نہیں ہے۔';

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
  String get noteGuidance =>
      'جہاں آپ مزید درست ترجمہ کے لیے اضافی تفصیلات درج کرتے ہیں۔';

  @override
  String get onlineLibraryCheckInternet =>
      'اپنے انٹرنیٹ کنکشن کی جانچ کریں یا بعد میں دوبارہ کوشش کریں۔';

  @override
  String get onlineLibraryLoadFailed => 'مواد کو لوڈ کرنے میں ناکام رہے۔';

  @override
  String get onlineLibraryNoMaterials => 'کوئی مواد نہیں ہے۔';

  @override
  String get openSettings => 'ترتیبات کھولیں';

  @override
  String get password => 'پاس ورڈ';

  @override
  String get passwordTooShort => 'پاس ورڈ کم از کم 6 حروف کا ہونا چاہیے۔';

  @override
  String get perfect => 'بہترین!';

  @override
  String get pickGallery => 'گیلری سے منتخب کریں';

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
  String get posArticle => 'حرف تعریف';

  @override
  String get posConjunction => 'حرفِ عطف';

  @override
  String get posInterjection => 'حرفِ ندا';

  @override
  String get posNoun => 'اسم';

  @override
  String get posParticle => 'حرف / لاحقہ';

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
  String get processing => 'کارروائی ہو رہی ہے...';

  @override
  String progress(int current, int total) {
    return 'پیش رفت: $current / $total';
  }

  @override
  String get quickStartStep1Desc =>
      'مینو > زبان کی ترتیبات میں اپنی اور سیکھنے کی زبان منتخب کریں۔';

  @override
  String get quickStartStep1Title => '1۔ زبان منتخب کریں';

  @override
  String get quickStartStep2Desc =>
      'ان پٹ (مائیکروفون/کی بورڈ) -> ترجمہ -> محفوظ کریں کے ترتیب سے اپنے لرننگ کارڈز بنائیں۔';

  @override
  String get quickStartStep2Title => '2۔ بنیادی طریقہ کار';

  @override
  String get quickStartStep3Desc =>
      'چیٹ کے ذریعے مشق کریں، اور تلفظ کی مشق ٹیب میں متن کو دیکھ کر خود تلفظ کی مشق کریں۔';

  @override
  String get quickStartStep3Title => '3۔ طریقوں کا استعمال';

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
  String get requestTranslation => 'ترجمہ کی درخواست کریں';

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
  String get save => 'محفوظ کریں';

  @override
  String get saveAsSentence => 'جملہ کے طور پر محفوظ کریں';

  @override
  String get saveAsWord => 'لفظ کے طور پر محفوظ کریں';

  @override
  String get saveData => 'محفوظ کریں';

  @override
  String saveFailed(String error) {
    return 'محفوظ کرنا ناکام: $error';
  }

  @override
  String get saveToHistory => 'اسکین ہسٹری میں محفوظ کریں';

  @override
  String get saveTranslationsFromSearch => 'تلاش موڈ سے ترجمے محفوظ کریں';

  @override
  String get saved => 'محفوظ ہو گیا';

  @override
  String get originalText => '원본 텍스트';

  @override
  String get saving => 'محفوظ ہو رہا ہے...';

  @override
  String get scanInstructions => 'اسکین کرنے کے لیے تصویر منتخب کریں۔';

  @override
  String get scanNoMatch =>
      '사진에서 설정된 학습 언어와 일치하는 텍스트를 찾을 수 없습니다. 언어 설정을 확인해 보세요.';

  @override
  String get scanNotSupported =>
      'یہ زبان اسکین کی خصوصیت کو سپورٹ نہیں کرتی ہے۔ OCR فی الحال صرف لاطینی، چینی، دیوناگری (ہندی وغیرہ)، جاپانی اور کورین حروف کو سپورٹ کرتا ہے۔';

  @override
  String get scanLabel => 'اسکین';

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
  String get selectStudyMaterial => 'مواد منتخب کریں';

  @override
  String get sentence => 'جملہ';

  @override
  String get signUp => 'سائن اپ';

  @override
  String get simplifiedGuidance =>
      'روز مرہ کی گفتگو کو غیر ملکی زبان میں تبدیل کریں! ٹاکی آپ کی لسانی زندگی کو ریکارڈ کرے گا۔';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get startTutorial => 'ٹور شروع کریں';

  @override
  String get startsWith => 'سے شروع ہوتا ہے';

  @override
  String get statusCheckEmail =>
      'تصدیق مکمل کرنے کے لیے براہ کرم اپنا ای میل چیک کریں۔';

  @override
  String statusDownloading(String name) {
    return 'ڈاؤن لوڈ ہو رہا ہے: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return 'درآمد میں ناکامی: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$name درآمد مکمل';
  }

  @override
  String statusLoginFailed(String error) {
    return 'لاگ ان میں ناکامی: $error';
  }

  @override
  String get statusLoginSuccess => 'لاگ ان کامیاب ہو گیا۔';

  @override
  String get statusLogoutSuccess => 'لاگ آؤٹ ہو گئے۔';

  @override
  String statusRequestFailed(String error) {
    return 'ترجمہ کی درخواست ناکام: $error';
  }

  @override
  String get statusRequestSuccess => 'ترجمہ کی درخواست مکمل ہو گئی۔';

  @override
  String get stopPractice => 'روکیں';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'منتخب کردہ مواد آپ کی موجودہ سیکھنے کی زبان ($targetLang) میں دستیاب نہیں ہے، اس لیے اسے مقامی طور پر محفوظ نہیں کیا جا سکتا۔ کیا آپ ترجمہ کی درخواست کرنا چاہتے ہیں؟';
  }

  @override
  String get studyLangNotFoundTitle => 'زبان کی معاونت دستیاب نہیں';

  @override
  String get styleFormal => 'رسمی';

  @override
  String get styleInformal => 'غیر رسمی';

  @override
  String get stylePolite => 'مہذب';

  @override
  String get styleSlang => 'سلینگ';

  @override
  String get swapLanguages => 'زبانیں تبدیل کریں';

  @override
  String get syncingData => 'ڈیٹا کی مطابقت پذیری ہو رہی ہے...';

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
  String get tooltipSettingsConfirm => 'ترتیبات کی تصدیق کریں';

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
  String get translateNow => 'ابھی ترجمہ کریں';

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
  String get translationLanguage => 'ترجمہ کی لینگویج';

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
  String get translationResult => 'ترجمہ کا نتیجہ';

  @override
  String get translationResultHint => 'ترجمہ کا نتیجہ - قابل ترمیم';

  @override
  String get tryAgain => 'دوبارہ کوشش کریں';

  @override
  String get ttsInstallGuide =>
      'براہ کرم Android ترتیبات > Google TTS میں اس زبان کا ڈیٹا انسٹال کریں۔';

  @override
  String get ttsMissing => 'اس زبان کا صوتی انجن آپ کے آلے پر نصب نہیں ہے۔';

  @override
  String get ttsUnsupportedNatively =>
      'اس ڈیوائس کی ڈیفالٹ سیٹنگ اس زبان میں آواز کی آؤٹ پُٹ کو سپورٹ نہیں کرتی ہے۔';

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
  String get typeIdiom => 'محاورہ';

  @override
  String get typeImperative => 'امریہ جملہ';

  @override
  String get typeProverb => 'کہاوت/ضرب المثل';

  @override
  String get typeQuestion => 'سوالیہ جملہ';

  @override
  String get typeStatement => 'بیانیہ جملہ';

  @override
  String get usageLimitTitle => 'استعمال کی حد ختم';

  @override
  String get useExistingText => 'موجودہ استعمال کریں';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => 'آن لائن گائیڈ دیکھیں';

  @override
  String get voluntaryTranslations => 'رضاکارانہ تراجم';

  @override
  String get watchAdAndRefill => 'اشتہار دیکھیں اور ری چارج کریں (+5 بار)';

  @override
  String get welcomeButton => 'شروع کریں';

  @override
  String get welcomeDesc =>
      'Talkie میں خوش آمدید! ہم دنیا کی 80 سے زیادہ زبانوں کو 100% سالمیت کے ساتھ سپورٹ کرتے ہیں، نئے پریمیم 3D ڈیزائن اور بہتر کارکردگی کے ساتھ جو آپ کو سیکھنے کا ایک مکمل تجربہ فراہم کرتے ہیں۔';

  @override
  String get welcomeTitle => 'Talkie میں خوش آمدید!';

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
  String get combinedResult => '통합 결과';

  @override
  String get yourPronunciation => 'آپ کا تلفظ';
}

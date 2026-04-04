// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get basicWords => 'مستودع الكلمات الأساسي';

  @override
  String get inputLanguage => 'لغة الإدخال';

  @override
  String get translationLanguage => 'لغة الترجمة';

  @override
  String get simplifiedGuidance =>
      'حوّل المحادثات اليومية إلى لغات أجنبية في لحظة! يسجل Talkie حياتك اللغوية.';

  @override
  String get noDataForLanguage =>
      'لا توجد بيانات تعلّم للغة التي اخترتها في قاعدة البيانات المحلية. يرجى تنزيل البيانات أو اختيار لغة أخرى.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'إلغاء';

  @override
  String get accuracy => 'الدقة';

  @override
  String get ttsMissing =>
      'محرك تحويل النص إلى كلام لهذه اللغة غير مثبت على جهازك.';

  @override
  String get ttsInstallGuide =>
      'يرجى تثبيت بيانات اللغة المقابلة في إعدادات Android> Google TTS.';

  @override
  String get adLoading => 'جارٍ تحميل الإعلان. يرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String get addNewSubject => 'إضافة اسم جديد';

  @override
  String get addParticipant => 'إضافة مشارك';

  @override
  String get addTagHint => 'إضافة علامة...';

  @override
  String get alreadyHaveAccount => 'هل لديك حساب بالفعل؟';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'تشغيل تلقائي';

  @override
  String get basic => 'أساسي';

  @override
  String get basicDefault => 'أساسي';

  @override
  String get basicMaterialRepository => 'مستودع الجمل/الكلمات الأساسي';

  @override
  String get basicSentenceRepository => 'مستودع الجمل الأساسية';

  @override
  String get basicSentences => 'مستودع الجمل الأساسي';

  @override
  String get basicWordRepository => 'مستودع الكلمات الأساسية';

  @override
  String get caseObject => 'حالة النصب';

  @override
  String get casePossessive => 'حالة الإضافة';

  @override
  String get casePossessivePronoun => 'ضمير الملكية';

  @override
  String get caseReflexive => 'ضمير انعكاسي';

  @override
  String get caseSubject => 'حالة الرفع';

  @override
  String get chatAiChat => 'محادثة';

  @override
  String get chatAllConversations => 'جميع المحادثات';

  @override
  String get chatChoosePersona => 'اختر شخصية';

  @override
  String get chatEndMessage => 'هل أنت متأكد أنك تريد إنهاء المحادثة؟';

  @override
  String get chatEndTitle => 'إنهاء وحفظ المحادثة';

  @override
  String chatFailed(Object error) {
    return 'فشل الدردشة: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'مقتطفات من المحادثة ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'سجل الدردشة';

  @override
  String get chatNew => 'محادثة جديدة';

  @override
  String get chatNewChat => 'دردشة جديدة';

  @override
  String get chatNoConversations => 'لا توجد محادثات حتى الآن';

  @override
  String get chatSearchHint => 'ابحث عن طريق عنوان المحادثة...';

  @override
  String get chatNoteSearchHint => 'البحث في الملاحظات...';

  @override
  String get chatSaveAndExit => 'حفظ وخروج';

  @override
  String get chatStartNewPrompt => 'ابدأ محادثة جديدة للتدريب!';

  @override
  String get chatTypeHint => 'اكتب رسالة...';

  @override
  String get chatUntitled => 'محادثة بدون عنوان';

  @override
  String get checking => 'جاري التحقق...';

  @override
  String get clearAll => 'مسح الكل';

  @override
  String get confirm => 'موافق';

  @override
  String get confirmDelete => 'هل أنت متأكد أنك تريد حذف هذا السجل؟';

  @override
  String get confirmDeleteConversation =>
      'هل أنت متأكد أنك تريد حذف هذه المحادثة؟\nلا يمكنك استعادة المحادثات المحذوفة.';

  @override
  String get confirmDeleteParticipant =>
      'هل أنت متأكد أنك تريد حذف هذا المشارك؟';

  @override
  String get contextTagHint => 'اكتب الموقف لتسهيل التمييز لاحقًا';

  @override
  String get contextTagLabel =>
      'السياق/الوضع (اختياري) - مثال: تحية صباحية، كلام رسمي';

  @override
  String get copiedToClipboard => 'تم النسخ إلى الحافظة!';

  @override
  String get copy => 'نسخ';

  @override
  String get correctAnswer => 'الإجابة الصحيحة';

  @override
  String get createNew => 'إنشاء جديد';

  @override
  String get currentLocation => 'الموقع الحالي';

  @override
  String get currentMaterialLabel => 'مجموعة المواد المحددة حاليًا:';

  @override
  String get delete => 'حذف';

  @override
  String deleteFailed(String error) {
    return 'فشل الحذف: $error';
  }

  @override
  String get deleteRecord => 'حذف السجل';

  @override
  String get dialogueQuestDesc =>
      'تدرب على المحادثات من خلال تمثيل الأدوار. اختر الإجابات المناسبة وقلها.';

  @override
  String get dialogueQuestTitle => 'مهمة الحوار';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get dontHaveAccount => 'ليس لديك حساب؟';

  @override
  String get editParticipant => 'تعديل مشارك';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get emailAlreadyInUse =>
      'هذا البريد الإلكتروني مُسجَّل بالفعل. يرجى تسجيل الدخول أو استعادة كلمة المرور.';

  @override
  String get enterNewSubjectName => 'أدخل اسمًا جديدًا';

  @override
  String get enterSentenceHint => 'أدخل جملة...';

  @override
  String get enterTextHint => 'أدخل النص المراد ترجمته';

  @override
  String get enterTextToTranslate => 'أدخل نصاً للترجمة';

  @override
  String get enterWordHint => 'أدخل كلمة...';

  @override
  String get error => 'خطأ';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorSelectCategory => 'الرجاء تحديد كلمة أو جملة أولاً!';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errors => 'أخطاء:';

  @override
  String get female => 'أنثى';

  @override
  String get file => 'الملف:';

  @override
  String get filterAll => 'الكل';

  @override
  String get flip => 'قلب';

  @override
  String get formComparative => 'صيغة التفضيل';

  @override
  String get formInfinitive => 'مصدر/مضارع';

  @override
  String get formPast => 'الماضي';

  @override
  String get formPastParticiple => 'اسم المفعول';

  @override
  String get formPlural => 'صيغة الجمع';

  @override
  String get formPositive => 'صيغة التفضيل المطلق';

  @override
  String get formPresent => 'المضارع';

  @override
  String get formPresentParticiple => 'اسم الفاعل (ing)';

  @override
  String get formSingular => 'مفرد';

  @override
  String get formSuperlative => 'صيغة التفضيل الأعلى';

  @override
  String get formThirdPersonSingular => 'الغائب المفرد';

  @override
  String get gameModeDesc => 'اختر وضع اللعبة للتدرب';

  @override
  String get gameModeTitle => 'وضع اللعبة';

  @override
  String get gameOver => 'انتهت اللعبة';

  @override
  String get gender => 'الجنس';

  @override
  String get labelFilterMaterial => 'مادة العرض';

  @override
  String get labelFilterTag => 'الوسم';

  @override
  String get generalTags => 'علامات عامة';

  @override
  String get getMaterials => 'الحصول على المواد';

  @override
  String get good => 'جيد';

  @override
  String get googleContinue => 'المتابعة بحساب Google';

  @override
  String get helpDialogueImportDesc => 'استيراد مجموعة حوار كاملة كملف JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'لاستيراد مواد الدراسة في الوضع 3، قم بإنشاء ملف JSON بالهيكل التالي:';

  @override
  String get helpJsonTypeDialogue => 'حوار';

  @override
  String get helpJsonTypeSentence => 'جملة';

  @override
  String get helpJsonTypeWord => 'كلمة';

  @override
  String get helpMode1Desc =>
      'ابدأ رحلتك في تعلم اللغة بأكثر الطرق سهولة باستخدام ميكروفون ثلاثي الأبعاد ممتاز وأيقونة لوحة مفاتيح كبيرة.';

  @override
  String get helpMode1Details =>
      '• إعداد اللغة: تحقق من لغتي واللغة التي أتعلمها وقم بتغيير لغة التعلم باستخدام زر اللغة في الجزء العلوي من الشاشة الرئيسية.\n• إدخال بسيط: أدخل على الفور من خلال الميكروفون الكبير ونافذة النص في المنتصف.\n• تأكيد الإعداد: اضغط على زر علامة الاختيار الزرقاء على اليمين بعد الانتهاء من الإدخال. ستظهر نافذة الإعدادات التفصيلية.\n• إعدادات مفصلة: في مربع الحوار الذي يظهر، يمكنك تحديد مجموعة البيانات التي تريد حفظها والتعليقات التوضيحية (الملاحظات) والعلامات.\n• الترجمة الآن: بعد الانتهاء من الإعدادات، اضغط على زر الترجمة الأخضر وسيقوم الذكاء الاصطناعي بالترجمة على الفور.\n• البحث التلقائي: يكتشف ويعرض الترجمات الحالية المماثلة في الوقت الفعلي أثناء الإدخال.\n• الاستماع والحفظ: استمع إلى النطق باستخدام رمز مكبر الصوت أسفل نتيجة الترجمة، وأضفها إلى قائمة التعلم من خلال \"حفظ البيانات\".';

  @override
  String get helpMode2Desc =>
      'مراجعة الجمل المحفوظة مع إخفاء الترجمة تلقائياً.';

  @override
  String get helpMode2Details =>
      '• اختيار مجموعة المواد: استخدم القائمة الموجودة في أعلى اليمين (⋮) لاختيار \'اختيار مجموعة مواد التعلم\' أو \'مكتبة المواد عبر الإنترنت\'\n• قلب البطاقة: تحقق من الترجمة باستخدام \'إظهار/إخفاء\'\n• الاستماع: تشغيل النطق باستخدام أيقونة مكبر الصوت\n• إكمال التعلم: ضع علامة (V) لإكمال التعلم\n• حذف: اضغط لفترة طويلة (Long Click) على البطاقة لحذف السجل\n• البحث والتصفية: دعم شريط البحث (بحث ذكي في الوقت الفعلي) والعلامات والمرشحات التي تبدأ بالحرف';

  @override
  String get helpMode3Desc =>
      'استمع إلى الجملة وتمرن على النطق عن طريق التظليل.';

  @override
  String get helpMode3Details =>
      '• اختيار المادة: اختر حزمة تعلم\n• الفاصل: [-] [+] وقت الانتظار (3-60 ثانية)\n• بدء/إيقاف: التحكم بالجلسة\n• تحدث: استمع للصوت وردد\n• الملاحظات: درجة الدقة (0-100)\n• إعادة المحاولة: زر إعادة المحاولة إذا لم يتم اكتشاف الصوت';

  @override
  String get helpModeChatDesc =>
      'تدرب على المحادثات الواقعية عن طريق التحدث مع شخصية الذكاء الاصطناعي.';

  @override
  String get helpModeChatDetails =>
      '• دردشة الذكاء الاصطناعي: تدرب على المحادثات العملية مع شخصية من قائمة \'دردشة\' في شريط علامات التبويب السفلي\n• إعداد الشخصية: حدد جنس واسم ورمز لغة الطرف الآخر بحرية\n• مسرحية نظام تحديد المواقع العالمي (GPS): يوصي بمواضيع المحادثة المناسبة للمكان من خلال التعرف على موقعي الحالي\n• لغتان: يتم عرض إجابة الذكاء الاصطناعي مع الترجمة لتعظيم تأثير التعلم\n• إدارة السجلات: تصفية سجلات المحادثات السابقة وحفظ رسائل معينة في المحادثة كمواد تعليمية';

  @override
  String get helpTabJson => 'تنسيق JSON';

  @override
  String get helpTabModes => 'أوضاع';

  @override
  String get helpTabQuickStart => 'بداية سريعة';

  @override
  String get helpTabTour => 'جولة';

  @override
  String get helpTitle => 'مساعدة ودليل';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'إخفاء';

  @override
  String importAdded(int count) {
    return 'تمت الإضافة: $count';
  }

  @override
  String get importComplete => 'تم الاستيراد';

  @override
  String get importDuplicateTitleError =>
      'مادة بنفس العنوان موجودة بالفعل. يرجى تغيير العنوان والمحاولة مرة أخرى.';

  @override
  String get importSourceTitle => '가져오기 원본 선택';

  @override
  String get importSourceFile => '단일 JSON 파일';

  @override
  String get importSourceFolder => '폴더 (언어별 라이브러리 구조)';

  @override
  String get importSourceZip => 'ZIP 파일 (압축된 폴더)';

  @override
  String importFolderSuccess(num files, num entries) {
    return '$files개 파일, $entries개 항목을 가져왔습니다.';
  }

  @override
  String importErrorMessage(String error) {
    return 'فشل استيراد الملف:\\n$error';
  }

  @override
  String get importFailed => 'فشل الاستيراد';

  @override
  String importFile(String fileName) {
    return 'الملف: $fileName';
  }

  @override
  String get importJsonFile => 'استيراد JSON';

  @override
  String get importJsonFilePrompt => 'يرجى استيراد ملف JSON';

  @override
  String importSkipped(int count) {
    return 'تم التخطي: $count';
  }

  @override
  String importTotal(int count) {
    return 'الإجمالي: $count';
  }

  @override
  String get importing => 'جاري الاستيراد...';

  @override
  String get inputModeTitle => '입력';

  @override
  String intervalSeconds(int seconds) {
    return 'الفاصل: $seconds ثانية';
  }

  @override
  String get invalidEmail => 'الرجاء إدخال بريد إلكتروني صالح.';

  @override
  String get kakaoContinue => 'المتابعة بحساب الكاكاو';

  @override
  String get labelLangCode => 'رمز اللغة (مثال: en-US, ko-KR)';

  @override
  String get labelName => 'اسم';

  @override
  String get labelNote => 'ملاحظة';

  @override
  String get labelPOS => 'نوع الكلمة';

  @override
  String get labelRole => 'الدور';

  @override
  String get labelSentence => 'جملة';

  @override
  String get labelSentenceCollection => 'مجموعة الجمل';

  @override
  String get labelSentenceType => 'نوع الجملة';

  @override
  String get labelShowMemorized => 'تمت';

  @override
  String get labelType => 'النوع:';

  @override
  String get labelWord => 'كلمة';

  @override
  String get labelWordbook => 'مجموعة الكلمات';

  @override
  String get language => 'لغة';

  @override
  String get languageSettings => 'إعدادات اللغة';

  @override
  String get languageSettingsTitle => 'إعدادات اللغة';

  @override
  String get libTitleFirstMeeting => 'اللقاء الأول';

  @override
  String get libTitleGreetings1 => 'تحيات 1';

  @override
  String get libTitleNouns1 => 'الأسماء 1';

  @override
  String get libTitleVerbs1 => 'الأفعال 1';

  @override
  String get listen => 'استمع';

  @override
  String get listening => 'جاري الاستماع...';

  @override
  String get loadingParticipants => 'جارٍ تحميل المشاركين...';

  @override
  String get location => 'الموقع';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get logoutConfirmMessage =>
      'هل أنت متأكد أنك تريد تسجيل الخروج من هذا الجهاز؟';

  @override
  String get logoutConfirmTitle => 'تسجيل الخروج';

  @override
  String get male => 'ذكر';

  @override
  String get manageParticipants => 'إدارة المشاركين';

  @override
  String get manual => 'إدخال يدوي';

  @override
  String get markAsStudied => 'تحديد كمدروس';

  @override
  String get materialInfo => 'معلومات المادة';

  @override
  String get me => 'أنا';

  @override
  String get menuDeviceImport => 'استيراد المواد من الجهاز';

  @override
  String get menuHelp => 'مساعدة';

  @override
  String get menuLanguageSettings => 'إعدادات اللغة';

  @override
  String get menuOnlineLibrary => 'المكتبة الإلكترونية';

  @override
  String get menuSelectMaterialSet => 'اختر مادة دراسية';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'جولة في طريقة الاستخدام';

  @override
  String get menuWebDownload => 'دليل المستخدم';

  @override
  String get metadataDialogTitle => 'تصنيف تفصيلي';

  @override
  String get metadataFormType => 'الشكل النحوي';

  @override
  String get metadataRootWord => 'الكلمة الجذرية';

  @override
  String get micButtonTooltip => 'بدء التعرف على الصوت';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'مجموعة المواد المحددة حاليًا: $name';
  }

  @override
  String get mode2Title => 'مراجعة';

  @override
  String get mode3Next => 'التالي';

  @override
  String get mode3Start => 'ابدأ';

  @override
  String get mode3Stop => 'توقف';

  @override
  String get mode3TryAgain => 'حاول مرة أخرى';

  @override
  String get mySentenceCollection => 'مجموعتي من الجمل';

  @override
  String get myWordbook => 'مفرداتي';

  @override
  String get neutral => 'محايد';

  @override
  String get newSubjectName => 'اسم جديد للمجموعة/الجمل';

  @override
  String get next => 'التالي';

  @override
  String get noDialogueHistory => 'لا يوجد سجل حوار.';

  @override
  String get noInternetWarningMic =>
      'لا يوجد اتصال بالإنترنت. قد لا يكون التعرف على الصوت ممكنًا في وضع عدم الاتصال.';

  @override
  String get noInternetWarningTranslate =>
      'لا يوجد اتصال بالإنترنت. لا يمكن استخدام وظيفة الترجمة في وضع عدم الاتصال. الرجاء استخدام وضع المراجعة.';

  @override
  String get noMaterialsInCategory => 'لا توجد مواد في هذه الفئة.';

  @override
  String get noParticipantsFound => 'لم يتم العثور على مشاركين مسجلين.';

  @override
  String get noRecords => 'لا توجد سجلات للغة المحددة';

  @override
  String get noStudyMaterial => 'لا توجد مواد دراسية.';

  @override
  String get noTextToPlay => 'لا يوجد نص للتشغيل';

  @override
  String get noTranslationToSave => 'لا توجد ترجمة للحفظ';

  @override
  String get noVoiceDetected => 'لم يتم اكتشاف صوت';

  @override
  String get notSelected => '- لم يتم الاختيار -';

  @override
  String get onlineLibraryCheckInternet =>
      'يرجى التحقق من اتصالك بالإنترنت أو المحاولة مرة أخرى لاحقًا.';

  @override
  String get onlineLibraryLoadFailed => 'فشل تحميل المواد.';

  @override
  String get onlineLibraryNoMaterials => 'لا توجد مواد.';

  @override
  String get participantDeleted => 'تم حذف المشارك.';

  @override
  String get participantRename => 'إعادة تسمية المشارك';

  @override
  String get partner => 'شريك';

  @override
  String get partnerMode => 'وضع الشريك';

  @override
  String get password => 'كلمة المرور';

  @override
  String get passwordTooShort =>
      'يجب أن تتكون كلمة المرور من 6 أحرف على الأقل.';

  @override
  String get perfect => 'ممتاز!';

  @override
  String get personaFriend => 'صديق محلي';

  @override
  String get personaGuide => 'مرشد سياحي';

  @override
  String get personaTeacher => 'مدرس لغة إنجليزية';

  @override
  String get playAgain => 'العب مرة أخرى';

  @override
  String playbackFailed(String error) {
    return 'فشل التشغيل: $error';
  }

  @override
  String get playing => 'جاري التشغيل...';

  @override
  String get posAdjective => 'صفة';

  @override
  String get posAdverb => 'ظرف';

  @override
  String get posConjunction => 'حرف عطف';

  @override
  String get posInterjection => 'حرف تعجب';

  @override
  String get posNoun => 'اسم';

  @override
  String get posPreposition => 'حرف جر';

  @override
  String get posPronoun => 'ضمير';

  @override
  String get posVerb => 'فعل';

  @override
  String get practiceModeTitle => 'تدريب';

  @override
  String get practiceWordsOnly => 'تدرب على الكلمات فقط';

  @override
  String progress(int current, int total) {
    return 'التقدم: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'عرض آخر $count عناصر تم إنشاؤها';
  }

  @override
  String recognitionFailed(String error) {
    return 'فشل التعرف على الصوت: $error';
  }

  @override
  String get recognized => 'تم التعرف';

  @override
  String get recognizedText => 'النص الذي تم التعرف عليه:';

  @override
  String get recordDeleted => 'تم حذف السجل بنجاح';

  @override
  String get refresh => 'تحديث';

  @override
  String get reset => 'إعادة تعيين';

  @override
  String get resetPracticeHistory => 'إعادة تعيين سجل التدريب';

  @override
  String get retry => 'إعادة المحاولة؟';

  @override
  String get reviewAll => 'مراجعة الكل';

  @override
  String reviewCount(int count) {
    return ' تمت المراجعة $count مرة/مرات';
  }

  @override
  String get reviewModeTitle => '복습';

  @override
  String get roleAi => 'الذكاء الاصطناعي';

  @override
  String get roleThirdParty => 'طرف ثالث';

  @override
  String get roleUser => 'مستخدم';

  @override
  String get save => 'حفظ';

  @override
  String get saveData => 'حفظ البيانات';

  @override
  String saveFailed(String error) {
    return 'فشل الحفظ: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'احفظ الترجمات من وضع البحث';

  @override
  String get saved => 'تم الحفظ';

  @override
  String get saving => 'جاري الحفظ...';

  @override
  String score(String score) {
    return 'الدقة: $score%';
  }

  @override
  String get scoreLabel => 'النتيجة';

  @override
  String get search => 'بحث';

  @override
  String get searchConditions => 'شروط البحث';

  @override
  String get searchSentenceHint => 'البحث عن جملة...';

  @override
  String get searchWordHint => 'البحث عن كلمة...';

  @override
  String get sectionSentence => 'قسم الجملة';

  @override
  String get sectionSentences => '문장';

  @override
  String get sectionWord => 'قسم الكلمات';

  @override
  String get sectionWords => '단어';

  @override
  String get selectExistingSubject => 'اختيار اسم موجود';

  @override
  String get selectMaterialPrompt => 'يرجى اختيار مادة دراسية';

  @override
  String get selectMaterialSet => '학습 자료집 선택';

  @override
  String get selectPOS => 'حدد جزءًا من الكلام';

  @override
  String get selectParticipants => 'تحديد المشاركين';

  @override
  String get selectSentenceType => 'حدد نوع الجملة';

  @override
  String get selectStudyMaterial => 'اختر مادة الدراسة';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'جملة';

  @override
  String get signUp => 'اشتراك';

  @override
  String get similarTextFound => 'تم العثور على نص مشابه';

  @override
  String get skip => '건너뛰기';

  @override
  String get source => 'المصدر:';

  @override
  String get sourceLanguage => 'لغة المصدر';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'تحدث الآن!';

  @override
  String get speaker => 'المتحدث';

  @override
  String get speakerSelect => 'تحديد المتحدث';

  @override
  String get speakingPractice => 'ممارسة التحدث';

  @override
  String get startChat => 'بدء المحادثة';

  @override
  String get startPractice => 'بدء الممارسة';

  @override
  String get startTutorial => 'بدء الجولة';

  @override
  String get startWarning => 'تحذير';

  @override
  String get startsWith => 'يبدأ بـ';

  @override
  String get statusCheckEmail =>
      'يرجى التحقق من بريدك الإلكتروني لإكمال عملية المصادقة.';

  @override
  String statusDownloading(Object name) {
    return 'جارٍ التنزيل: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'فشل الاستيراد: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return 'اكتمل استيراد $name';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'تم إلغاء تسجيل الدخول.';

  @override
  String statusLoginFailed(Object error) {
    return 'فشل تسجيل الدخول: $error';
  }

  @override
  String get statusLoginSuccess => 'تم تسجيل الدخول بنجاح.';

  @override
  String get statusLogoutSuccess => 'تم تسجيل الخروج.';

  @override
  String statusSignUpFailed(Object error) {
    return 'فشل الاشتراك: $error';
  }

  @override
  String get statusSigningUp => 'جارٍ الاشتراك...';

  @override
  String get stopPractice => 'إيقاف الممارسة';

  @override
  String get studyComplete => 'مدروس';

  @override
  String studyRecords(int count) {
    return 'سجلات الدراسة ($count)';
  }

  @override
  String get styleFormal => 'رسمي';

  @override
  String get styleInformal => 'غير رسمي';

  @override
  String get stylePolite => 'مهذب';

  @override
  String get styleSlang => 'عامية/لغة الشارع';

  @override
  String get subject => 'الموضوع:';

  @override
  String get swapLanguages => 'تبديل اللغات';

  @override
  String get switchToAi => 'التبديل إلى وضع الذكاء الاصطناعي';

  @override
  String get switchToPartner => 'التبديل إلى وضع الشريك';

  @override
  String get syncingData => 'جارٍ مزامنة البيانات...';

  @override
  String get tabConversation => 'محادثة';

  @override
  String tabReview(int count) {
    return 'مراجعة ($count)';
  }

  @override
  String get tabSentence => 'جملة';

  @override
  String get tabSpeaking => 'تحدث';

  @override
  String tabStudyMaterial(int count) {
    return 'مواد الدراسة ($count)';
  }

  @override
  String get tabWord => 'كلمة';

  @override
  String get tagFormal => 'لغة رسمية';

  @override
  String get tagSelection => 'تحديد العلامات';

  @override
  String get targetLanguage => 'لغة الهدف';

  @override
  String get targetLanguageFilter => 'تصفية اللغة الهدف:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'هذا هو الوقت الذي تفكر فيه قبل الكشف عن الإجابة الصحيحة.';

  @override
  String get thinkingTimeInterval => 'تأخير التشغيل';

  @override
  String get timeUp => 'انتهى الوقت!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'علامة تبويب العنوان (مجموعة المواد)';

  @override
  String get tooltipDecrease => 'تقليل';

  @override
  String get tooltipIncrease => 'زيادة';

  @override
  String get tooltipSearch => 'بحث';

  @override
  String get tooltipSpeaking => 'تحدث';

  @override
  String get tooltipStudyReview => 'دراسة+مراجعة';

  @override
  String totalRecords(int count) {
    return 'إجمالي $count سجل (عرض الكل)';
  }

  @override
  String get translate => 'ترجم';

  @override
  String get translating => 'جاري الترجمة...';

  @override
  String get translation => 'ترجمة';

  @override
  String get translationComplete => 'اكتملت الترجمة (يتطلب الحفظ)';

  @override
  String translationFailed(String error) {
    return 'فشلت الترجمة: $error';
  }

  @override
  String get translationLimitExceeded => 'تجاوزت حد الترجمة';

  @override
  String get translationLimitMessage =>
      'لقد استخدمت جميع تراجمك المجانية اليومية (5 مرات).\n\nهل تريد مشاهدة إعلان وتعبئة 5 تراجم على الفور؟';

  @override
  String get translationLoaded => 'تم تحميل الترجمة المحفوظة';

  @override
  String get translationRefilled => 'تمت إعادة تعبئة عداد الترجمة إلى 5!';

  @override
  String get translationResultHint => 'نتيجة الترجمة - قابلة للتعديل';

  @override
  String get tryAgain => 'حاول مرة أخرى';

  @override
  String get tutorialAiChatDesc =>
      'تدرب على محادثات حقيقية مع شخصية الذكاء الاصطناعي.';

  @override
  String get tutorialAiChatTitle => 'دردشة الذكاء الاصطناعي';

  @override
  String get tutorialContextDesc =>
      'أضف سياقًا (مثلاً: الصباح) لتمييز الجمل المتشابهة.';

  @override
  String get tutorialContextTitle => 'وسم السياق';

  @override
  String get tutorialLangSettingsDesc =>
      'قم بتعيين اللغة الأصلية واللغة الهدف للترجمة.';

  @override
  String get tutorialLangSettingsTitle => 'إعدادات اللغة';

  @override
  String get tutorialM1ToggleDesc => 'يمكنك تبديل وضع الكلمات والجمل هنا.';

  @override
  String get tutorialM1ToggleTitle => 'وضع الكلمات/الجمل';

  @override
  String get tutorialM2DropdownDesc => 'اختر مواد الدراسة.';

  @override
  String get tutorialM2ImportDesc => 'استيراد ملف JSON من مجلد الجهاز.';

  @override
  String get tutorialM2ListDesc =>
      'تفقد بطاقاتك المحفوظة واقلبها لرؤية الإجابات. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'قائمة الدراسة';

  @override
  String get tutorialM2SearchDesc =>
      'يمكنك البحث عن الكلمات والجمل المحفوظة والعثور عليها بسرعة.';

  @override
  String get tutorialM2SelectDesc =>
      'اختر مواد للدراسة أو بدل إلى \'مراجعة الكل\'.';

  @override
  String get tutorialM2SelectTitle => 'اختر وقيّم';

  @override
  String get tutorialM3IntervalDesc => 'اضبط وقت الانتظار بين الجمل.';

  @override
  String get tutorialM3IntervalTitle => 'الفاصل';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'اختر مجموعة لممارسة التحدث.';

  @override
  String get tutorialM3SelectTitle => 'اختر مادة';

  @override
  String get tutorialM3StartDesc => 'اضغط تشغيل للبدء بالاستماع والترديد.';

  @override
  String get tutorialM3StartTitle => 'بدء الممارسة';

  @override
  String get tutorialM3WordsDesc => 'تحقق هنا لتدريب الكلمات المحفوظة فقط.';

  @override
  String get tutorialM3WordsTitle => 'تدريب على الكلمات';

  @override
  String get tutorialMicDesc => 'اضغط زر الميكروفون لبدء الإدخال الصوتي.';

  @override
  String get tutorialMicTitle => 'إدخال صوتي';

  @override
  String get tutorialSaveDesc => 'احفظ ترجمتك في سجلات الدراسة.';

  @override
  String get tutorialSaveTitle => 'حفظ';

  @override
  String get tutorialSwapDesc => 'أبدل لغتي باللغة التي أتعلمها.';

  @override
  String get tutorialTabDesc => 'يمكنك اختيار وضع التعلم المطلوب هنا.';

  @override
  String get tutorialTapToContinue => 'اضغط للمتابعة';

  @override
  String get tutorialTransDesc => 'اضغط هنا لترجمة نصك.';

  @override
  String get tutorialTransTitle => 'ترجمة';

  @override
  String get typeExclamation => 'جملة تعجبية';

  @override
  String get typeImperative => 'جملة أمرية';

  @override
  String get typeQuestion => 'جملة استفهامية';

  @override
  String get typeStatement => 'جملة خبرية';

  @override
  String get usageLimitTitle => 'تم الوصول إلى الحد';

  @override
  String get useExistingText => 'استخدام الموجود';

  @override
  String get viewOnlineGuide => 'عرض الدليل عبر الإنترنت';

  @override
  String get voluntaryTranslations => 'ترجمات تطوعية';

  @override
  String get watchAdAndRefill => 'شاهد إعلانًا واملأ (+5 مرات)';

  @override
  String get word => 'كلمة';

  @override
  String get wordDefenseDesc =>
      'دافع عن قاعدتك عن طريق قول الكلمات قبل أن يصل العدو.';

  @override
  String get wordDefenseTitle => 'الدفاع عن الكلمات';

  @override
  String get wordModeLabel => 'وضع الكلمات';

  @override
  String get yourPronunciation => 'نطقك';

  @override
  String get ttsUnsupportedNatively =>
      'الإعدادات الأصلية لهذا الجهاز لا تدعم إخراج الصوت لهذه اللغة.';

  @override
  String get homeTab => 'ترجمة';

  @override
  String get welcomeTitle => 'مرحبًا بك في Talkie!';

  @override
  String get welcomeDesc =>
      'مرحباً بك في Talkie! نحن ندعم أكثر من 80 لغة عالمية بنزاهة 100٪، مع تصميم ثلاثي الأبعاد ممتاز جديد وأداء محسّن لتجربة تعليمية مثالية.';

  @override
  String get welcomeButton => 'ابدأ الآن';

  @override
  String get labelDetails => 'إعدادات تفصيلية';

  @override
  String get translationResult => 'نتيجة الترجمة';

  @override
  String get inputContent => 'محتوى الإدخال';

  @override
  String get translateNow => 'ترجمة الآن';

  @override
  String get tooltipSettingsConfirm => 'تأكيد الإعدادات';

  @override
  String get hintNoteExample => 'مثال: سياق الكلام، الكلمات المتشابهة';

  @override
  String get hintTagExample => 'مثال: عمل، سفر...';

  @override
  String get addNew => 'إضافة جديد';

  @override
  String get newNotebookTitle => 'اسم دفتر الملاحظات الجديد';

  @override
  String get enterNameHint => 'أدخل الاسم';

  @override
  String get add => 'إضافة';

  @override
  String get openSettings => 'فتح الإعدادات';

  @override
  String get helpNotebook => 'اختر المجلد لحفظ الترجمة.';

  @override
  String get helpNote =>
      'سجل بحرية معاني الكلمات أو الأمثلة أو المواقف وما إلى ذلك.';

  @override
  String get helpTag => 'أدخل الكلمات الرئيسية لتصنيفها أو البحث عنها لاحقًا.';

  @override
  String get requestTranslation => 'طلب الترجمة';

  @override
  String get statusRequestSuccess => 'تم طلب الترجمة بنجاح.';

  @override
  String statusRequestFailed(String error) {
    return 'فشل طلب الترجمة: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'لغة الدراسة غير مدعومة';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'المادة التي اخترتها لا تدعم لغة الدراسة المحددة حاليًا ($targetLang) ولا يمكن حفظها محليًا. هل ترغب في طلب ترجمة؟';
  }

  @override
  String get quickStartStep1Title => '1. إعداد اللغة';

  @override
  String get quickStartStep1Desc =>
      'حدد لغتك ولغة التعلم أولاً في القائمة > إعدادات اللغة.';

  @override
  String get quickStartStep2Title => '2. التدفق الأساسي';

  @override
  String get quickStartStep2Desc =>
      'أنشئ بطاقات التعلم الخاصة بك بترتيب الإدخال (ميكروفون/لوحة المفاتيح) -> الترجمة -> الحفظ.';

  @override
  String get quickStartStep3Title => '3. استخدام الوضع';

  @override
  String get quickStartStep3Desc =>
      'تدرب بالمحادثة، وشاهد النص في علامة تبويب ممارسة النطق وتدرب على النطق مباشرة.';

  @override
  String get noteGuidance => 'حيث تقوم بإدخال تفاصيل إضافية لترجمة أكثر دقة';
}

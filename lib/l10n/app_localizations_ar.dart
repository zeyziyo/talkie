// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'مراجعة ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'مواد الدراسة ($count)';
  }

  @override
  String get mode2Title => 'مراجعة';

  @override
  String get search => 'بحث';

  @override
  String get translate => 'ترجم';

  @override
  String get listen => 'استمع';

  @override
  String get saveData => 'حفظ البيانات';

  @override
  String get saved => 'تم الحفظ';

  @override
  String get delete => 'حذف';

  @override
  String get materialInfo => 'معلومات المادة';

  @override
  String get cancel => 'إلغاء';

  @override
  String get confirm => 'موافق';

  @override
  String get refresh => 'تحديث';

  @override
  String studyRecords(int count) {
    return 'سجلات الدراسة ($count)';
  }

  @override
  String get targetLanguageFilter => 'تصفية اللغة الهدف:';

  @override
  String get noRecords => 'لا توجد سجلات للغة المحددة';

  @override
  String get saveTranslationsFromSearch => 'احفظ الترجمات من وضع البحث';

  @override
  String get flip => 'قلب';

  @override
  String get hide => 'إخفاء';

  @override
  String get deleteRecord => 'حذف السجل';

  @override
  String get confirmDelete => 'هل أنت متأكد أنك تريد حذف هذا السجل؟';

  @override
  String get recordDeleted => 'تم حذف السجل بنجاح';

  @override
  String deleteFailed(String error) {
    return 'فشل الحذف: $error';
  }

  @override
  String get importJsonFile => 'استيراد JSON';

  @override
  String get importing => 'جاري الاستيراد...';

  @override
  String get importComplete => 'تم الاستيراد';

  @override
  String get importFailed => 'فشل الاستيراد';

  @override
  String importFile(String fileName) {
    return 'الملف: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'الإجمالي: $count';
  }

  @override
  String importAdded(int count) {
    return 'تمت الإضافة: $count';
  }

  @override
  String importSkipped(int count) {
    return 'تم التخطي: $count';
  }

  @override
  String get errors => 'أخطاء:';

  @override
  String get error => 'خطأ';

  @override
  String importErrorMessage(String error) {
    return 'فشل استيراد الملف:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'اختر مادة الدراسة';

  @override
  String get subject => 'الموضوع:';

  @override
  String get source => 'المصدر:';

  @override
  String get file => 'الملف:';

  @override
  String progress(int current, int total) {
    return 'التقدم: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'يرجى استيراد ملف JSON';

  @override
  String get selectMaterialPrompt => 'يرجى اختيار مادة دراسية';

  @override
  String get studyComplete => 'مدروس';

  @override
  String get markAsStudied => 'تحديد كمدروس';

  @override
  String get listening => 'جاري الاستماع...';

  @override
  String get recognized => 'تم التعرف';

  @override
  String recognitionFailed(String error) {
    return 'فشل التعرف على الصوت: $error';
  }

  @override
  String get checking => 'جاري التحقق...';

  @override
  String get translating => 'جاري الترجمة...';

  @override
  String get translationComplete => 'اكتملت الترجمة (يتطلب الحفظ)';

  @override
  String get translationLoaded => 'تم تحميل الترجمة المحفوظة';

  @override
  String translationFailed(String error) {
    return 'فشلت الترجمة: $error';
  }

  @override
  String get enterTextToTranslate => 'أدخل نصاً للترجمة';

  @override
  String get saving => 'جاري الحفظ...';

  @override
  String get noTranslationToSave => 'لا توجد ترجمة للحفظ';

  @override
  String saveFailed(String error) {
    return 'فشل الحفظ: $error';
  }

  @override
  String get playing => 'جاري التشغيل...';

  @override
  String get noTextToPlay => 'لا يوجد نص للتشغيل';

  @override
  String playbackFailed(String error) {
    return 'فشل التشغيل: $error';
  }

  @override
  String get sourceLanguage => 'لغة المصدر';

  @override
  String get targetLanguage => 'لغة الهدف';

  @override
  String get similarTextFound => 'تم العثور على نص مشابه';

  @override
  String get useExistingText => 'استخدام الموجود';

  @override
  String get createNew => 'إنشاء جديد';

  @override
  String reviewCount(int count) {
    return ' تمت المراجعة $count مرة/مرات';
  }

  @override
  String get tabSpeaking => 'تحدث';

  @override
  String get speakingPractice => 'ممارسة التحدث';

  @override
  String intervalSeconds(int seconds) {
    return 'الفاصل: $seconds ثانية';
  }

  @override
  String get yourPronunciation => 'نطقك';

  @override
  String get correctAnswer => 'الإجابة الصحيحة';

  @override
  String score(String score) {
    return 'الدقة: $score%';
  }

  @override
  String get perfect => 'ممتاز!';

  @override
  String get good => 'جيد';

  @override
  String get tryAgain => 'حاول مرة أخرى';

  @override
  String get startPractice => 'بدء الممارسة';

  @override
  String get stopPractice => 'إيقاف الممارسة';

  @override
  String get helpTitle => 'مساعدة ودليل';

  @override
  String get helpTabModes => 'أوضاع';

  @override
  String get helpTabJson => 'تنسيق JSON';

  @override
  String get helpTabTour => 'جولة';

  @override
  String get helpMode1Desc =>
      'تعرف على الصوت، ترجم للغة الهدف، واستمع للنتيجة.';

  @override
  String get helpMode1Details =>
      '• إدخال صوتي: اضغط الميكروفون للبدء/الإيقاف\n• نصوص: اكتب مباشرة للترجمة\n• بحث تلقائي: يكشف الجمل المشابهة\n• ترجمة: زر للترجمة الفورية\n• استماع: أيقونة مكبر الصوت للنطق\n• حفظ: يضيف للسجل\n• مسح: إعادة تعيين المدخلات';

  @override
  String get helpMode2Desc =>
      'مراجعة الجمل المحفوظة مع إخفاء الترجمة تلقائياً.';

  @override
  String get helpMode2Details =>
      '• اختيار المادة: اختر مجموعة أو \'مراجعة الكل\'\n• قلب البطاقة: \'ظهار/إخفاء\' للترجمة\n• استماع: تشغيل النطق للجملة\n• تحديد كمدروس: علامة (V) للمكتمل\n• حذف: ضغطة مطولة للحذف\n• تصفية: عرض الكل أو حسب المادة';

  @override
  String get helpMode3Desc => 'تدرب على التحدث بالاستماع والترديد (Shadowing).';

  @override
  String get helpMode3Details =>
      '• اختيار المادة: اختر حزمة تعلم\n• الفاصل: [-] [+] وقت الانتظار (3-60 ثانية)\n• بدء/إيقاف: التحكم بالجلسة\n• تحدث: استمع للصوت وردد\n• الملاحظات: درجة الدقة (0-100)\n• إعادة المحاولة: زر إعادة المحاولة إذا لم يتم اكتشاف الصوت';

  @override
  String get helpJsonDesc =>
      'لاستيراد مواد الدراسة في الوضع 3، قم بإنشاء ملف JSON بالهيكل التالي:';

  @override
  String get helpTourDesc => 'ابدأ الجولة التفاعلية لتعلم الميزات الرئيسية.';

  @override
  String get startTutorial => 'بدء الجولة';

  @override
  String get tutorialMicTitle => 'إدخال صوتي';

  @override
  String get tutorialMicDesc => 'اضغط زر الميكروفون لبدء الإدخال الصوتي.';

  @override
  String get tutorialTabDesc => 'يمكنك اختيار وضع التعلم المطلوب هنا.';

  @override
  String get tutorialTapToContinue => 'اضغط للمتابعة';

  @override
  String get tutorialTransTitle => 'ترجمة';

  @override
  String get tutorialTransDesc => 'اضغط هنا لترجمة نصك.';

  @override
  String get tutorialSaveTitle => 'حفظ';

  @override
  String get tutorialSaveDesc => 'احفظ ترجمتك في سجلات الدراسة.';

  @override
  String get tutorialM2SelectTitle => 'اختر وقيّم';

  @override
  String get tutorialM2SelectDesc =>
      'اختر مواد للدراسة أو بدل إلى \'مراجعة الكل\'.';

  @override
  String get tutorialM2ListTitle => 'قائمة الدراسة';

  @override
  String get tutorialM2ListDesc =>
      'تفقد بطاقاتك المحفوظة واقلبها لرؤية الإجابات.';

  @override
  String get tutorialM3SelectTitle => 'اختر مادة';

  @override
  String get tutorialM3SelectDesc => 'اختر مجموعة لممارسة التحدث.';

  @override
  String get tutorialM3IntervalTitle => 'الفاصل';

  @override
  String get tutorialM3IntervalDesc => 'اضبط وقت الانتظار بين الجمل.';

  @override
  String get tutorialM3StartTitle => 'بدء الممارسة';

  @override
  String get tutorialM3StartDesc => 'اضغط تشغيل للبدء بالاستماع والترديد.';

  @override
  String get startWarning => 'تحذير';

  @override
  String get noVoiceDetected => 'لم يتم اكتشاف صوت';

  @override
  String get tooltipSearch => 'بحث';

  @override
  String get tooltipStudyReview => 'دراسة+مراجعة';

  @override
  String get tooltipSpeaking => 'تحدث';

  @override
  String get tooltipDecrease => 'تقليل';

  @override
  String get tooltipIncrease => 'زيادة';

  @override
  String get languageSettings => 'إعدادات اللغة';
}

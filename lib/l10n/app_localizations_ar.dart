// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

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
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc =>
      'لاستيراد مواد الدراسة في الوضع 3، قم بإنشاء ملف JSON بالهيكل التالي:';

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
  String get location => 'الموقع';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'أنا';

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
      'تفقد بطاقاتك المحفوظة واقلبها لرؤية الإجابات. (Long-press to delete)';

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

  @override
  String get tutorialM2DropdownDesc => 'اختر مواد الدراسة.';

  @override
  String get tutorialM2ImportDesc => 'استيراد ملف JSON من مجلد الجهاز.';

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
  String get tutorialContextTitle => 'وسم السياق';

  @override
  String get tutorialContextDesc =>
      'أضف سياقًا (مثلاً: الصباح) لتمييز الجمل المتشابهة.';

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
  String get usageLimitTitle => 'تم الوصول إلى الحد';

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
  String get selectMaterialSet => '학습 자료집 선택';

  @override
  String get sectionWords => '단어';

  @override
  String get sectionSentences => '문장';

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
  String get tutorialSwapDesc => 'أبدل لغتي باللغة التي أتعلمها.';

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
  String get menuSelectMaterialSet => 'اختر مادة دراسية';

  @override
  String get sectionWord => 'قسم الكلمات';

  @override
  String get sectionSentence => 'قسم الجملة';

  @override
  String get tabWord => 'كلمة';

  @override
  String get tabSentence => 'جملة';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get clearAll => 'مسح الكل';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get skip => '건너뛰기';

  @override
  String get inputModeTitle => '입력';

  @override
  String get reviewModeTitle => '복습';

  @override
  String get practiceModeTitle => '발음 연습';

  @override
  String get chatHistoryTitle => 'سجل الدردشة';

  @override
  String get chatNewChat => 'دردشة جديدة';

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
  String get chatAiChat => 'دردشة الذكاء الاصطناعي';

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
  String get basicWordRepository => 'مستودع الكلمات الأساسية';

  @override
  String get basicSentenceRepository => 'مستودع الجمل الأساسية';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'حفظ وخروج';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get metadataDialogTitle => '상세 정보';

  @override
  String get selectPOS => '품사 선택';

  @override
  String get selectSentenceType => '문장 종류 선택';

  @override
  String get metadataRootWord => '원형 (Root Word)';

  @override
  String get posNoun => '명사';

  @override
  String get posVerb => '동사';

  @override
  String get posAdjective => '형용사';

  @override
  String get posAdverb => '부사';

  @override
  String get posPronoun => '대명사';

  @override
  String get posPreposition => '전치사/조사';

  @override
  String get posConjunction => '접속사';

  @override
  String get posInterjection => '감탄사';

  @override
  String get typeStatement => '평서문';

  @override
  String get typeQuestion => '의문문';

  @override
  String get typeExclamation => '감탄문';

  @override
  String get typeImperative => '명령문';
}

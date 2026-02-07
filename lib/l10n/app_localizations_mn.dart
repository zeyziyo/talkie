// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get helpTitle => 'Тусламж & Заавар';

  @override
  String get helpTabModes => 'Горим тайлбар';

  @override
  String get helpTabJson => 'JSON формат';

  @override
  String get helpTabTour => 'Туршлага хуримтлуулах';

  @override
  String get helpMode1Desc =>
      'Дуудлагыг таньж орчуулж, үр дүнг сонсох боломжтой.';

  @override
  String get helpMode1Details =>
      '• Хэл тохируулах: Дээд/доод дүрс дээр дарж хэл өөрчлөх\n• Үг/Өгүүлбэр хооронд шилжих: Горим солих\n• Дуут оруулах: Микрофон дүрс дээр дарж сонсож эхлэх/зогсоох\n• Текст оруулах: Шууд бичиж орчуулах\n• Автомат хайлт: Ижил төстэй өгүүлбэрүүдийг илрүүлэх\n• Орчуулах: Орчуулах товчлуур дээр дарж шууд орчуулах\n• Сонсох: Чанга яригч дүрсээр TTS тоглуулах\n• Хадгалах: \'Мэдээлэл хадгалах\' руу бичлэг нэмэх\n• Цэвэрлэх: Оруулахыг анхны байдалд оруулах';

  @override
  String get helpMode2Desc =>
      'Хадгалсан өгүүлбэрүүдээ давтаж, автомат нуух функцээр цээжилсэн эсэхээ шалгаарай.';

  @override
  String get helpMode2Details =>
      '• Материал сонгох: Тодорхой цуглуулга эсвэл \'Бүгдийг давтах\' сонгох\n• Карт эргүүлэх: \'Харуулах/Нуух\' замаар орчуулгыг шалгах (Автомат сурах шалгах)\n• Сонсох: Өгүүлбэр TTS тоглуулах\n• Суралцаж дуусгах: Чек тэмдэг (V) -ээр суралцаж дуусгах\n• Устгах: Картыг удаан дарснаар бичлэгийг устгах\n• Хайлтын нөхцөл: Таг, саяхны зүйл, эхний үсгээр шүүх';

  @override
  String get helpMode3Desc =>
      'Өгүүлбэрийг сонсож дагаж хэлэх (Shadowing) замаар дуудлагаа сайжруулах.';

  @override
  String get helpMode3Details =>
      '• Материал сонгох: Сурах материалаа сонгох\n• Завсрын хугацаа тохируулах: [-] [+] товчлуураар өгүүлбэр хоорондын хүлээх хугацааг тохируулах (3 секундээс 60 секунд хүртэл)\n• Эхлүүлэх/Зогсоох: Shadowing сессийг хянах\n• Ярих: Дууг сонсоод дагаж ярих\n• Санал хүсэлт: Нарийвчлалын оноо (0-100) болон өнгөний дэлгэц\n• Хайлтын нөхцөл: Таг, саяхны зүйл, эхний үсгээр дадлага хийх зүйлийг шүүх';

  @override
  String get helpModeChatDesc =>
      'AI дүртэй ярилцаж, бодит ярианы дадлага хийгээрэй.';

  @override
  String get helpModeChatDetails =>
      '• AI чат: Өөрийн хэлээр ярьж ярианы дадлага хийх\n• Олон дүр: Ярианы бөмбөлөгийн дээрх цэсээр харилцагчийн хүйс/хэл/нэрийг өөрчлөх боломжтой\n• Хамтрагч нэмэх: + товчлуураар шинэ ярилцах хүнтэй (Stranger) нэмэх\n• GPS: Одоогийн байршилд суурилсан драм\n• Автомат хадгалах: Ярианы агуулгыг автоматаар орчуулж хадгалах';

  @override
  String get helpJsonDesc =>
      'Mode 3-т ашиглах сургалтын материалыг JSON файлаар импортлохын тулд дараах форматыг баримтална уу:';

  @override
  String get helpDialogueImportDesc =>
      'Бүхэл ярианы багцыг JSON файлаар импортлох.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON бүтэц: `entries`-ийн оронд `dialogues` массивыг ашиглах\n• Автомат сэргээлт: Ярианы гарчиг, дүр, мессежийн дарааллыг сэргээнэ.\n• Байршил: Импортолсон яриа нь AI чат горимын \'Түүх\' таб дээр гарч ирнэ.';

  @override
  String get helpTourDesc =>
      '**Тодруулсан хүрээ** нь үндсэн функцийг чиглүүлдэг.\n(Жишээ нь: **Тодруулсан хүрээ** нь зааж буй картыг удаан дарснаар устгах боломжтой.)';

  @override
  String get partnerMode => 'Хамтрагчийн горим';

  @override
  String get manual => 'Гараар оруулах';

  @override
  String get speaker => 'Яригч';

  @override
  String get switchToAi => 'AI горимд шилжих';

  @override
  String get switchToPartner => 'Хамтрагчийн горимд шилжих';

  @override
  String get currentLocation => 'Одоогийн байршил';

  @override
  String get location => 'Байршил';

  @override
  String get partner => 'Хамтрагч';

  @override
  String get me => 'Би';

  @override
  String get currentMaterialLabel => 'Одоогийн сонгосон материал:';

  @override
  String get basicMaterialRepository => 'Үндсэн өгүүлбэр/үгсийн сан';

  @override
  String get word => 'Үг';

  @override
  String get sentence => 'Өгүүлбэр';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Давтах ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Сурах материал ($count)';
  }

  @override
  String get mode2Title => 'Давтах';

  @override
  String get search => 'Хайх';

  @override
  String get translate => 'Орчуулах';

  @override
  String get listen => 'Сонсох';

  @override
  String get saveData => 'Мэдээлэл хадгалах';

  @override
  String get saved => 'Хадгалж дууслаа';

  @override
  String get delete => 'Устгах';

  @override
  String get materialInfo => 'Материалын мэдээлэл';

  @override
  String get cancel => 'Цуцлах';

  @override
  String get confirm => 'Зөвшөөрөх';

  @override
  String get refresh => 'Шинэчлэх';

  @override
  String studyRecords(int count) {
    return 'Сурах бичлэг ($count)';
  }

  @override
  String get targetLanguageFilter => 'Зорилтот хэл шүүх:';

  @override
  String get noRecords => 'Сонгосон хэлний сурах бичлэг байхгүй байна';

  @override
  String get saveTranslationsFromSearch =>
      'Хайх горимд орчуулгыг хадгалаад үзээрэй';

  @override
  String get flip => 'Харуулах';

  @override
  String get hide => 'Нуух';

  @override
  String get deleteRecord => 'Бичлэгийг устгах';

  @override
  String get confirmDelete => 'Энэ сургалтын бичлэгийг устгах уу?';

  @override
  String get recordDeleted => 'Бичлэгийг устгасан';

  @override
  String deleteFailed(String error) {
    return 'Устгаж чадсангүй: $error';
  }

  @override
  String get importJsonFile => 'JSON файл оруулах';

  @override
  String get importing => 'Оруулж байна...';

  @override
  String get importComplete => 'Оруулж дууслаа';

  @override
  String get importFailed => 'Оруулж чадсангүй';

  @override
  String importFile(String fileName) {
    return 'Файл: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Нийт: $count ширхэг';
  }

  @override
  String importAdded(int count) {
    return 'Нэмсэн: $count ширхэг';
  }

  @override
  String importSkipped(int count) {
    return 'Алгассан: $count ширхэг';
  }

  @override
  String get errors => 'Алдаа:';

  @override
  String get error => 'Алдаа';

  @override
  String importErrorMessage(String error) {
    return 'Файл оруулахад алдаа гарлаа:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Сурах материал сонгох';

  @override
  String get subject => 'Гарчиг:';

  @override
  String get source => 'Эх сурвалж:';

  @override
  String get file => 'Файл:';

  @override
  String progress(int current, int total) {
    return 'Ахиц: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'JSON файлаа оруулна уу';

  @override
  String get selectMaterialPrompt => 'Сурах материалаа сонгоно уу';

  @override
  String get studyComplete => 'Суралцаж дууслаа';

  @override
  String get markAsStudied => 'Судалсан гэж тэмдэглэх';

  @override
  String get listening => 'Сонсож байна...';

  @override
  String get recognized => 'Танигдаж дууслаа';

  @override
  String recognitionFailed(String error) {
    return 'Дуу танихгүй байна: $error';
  }

  @override
  String get checking => 'Шалгаж байна...';

  @override
  String get translating => 'Орчуулж байна...';

  @override
  String get translationComplete => 'Орчуулж дууслаа (Хадгалах шаардлагатай)';

  @override
  String get translationLoaded => 'Хадгалсан орчуулгыг орууллаа';

  @override
  String translationFailed(String error) {
    return 'Орчуулж чадсангүй: $error';
  }

  @override
  String get enterTextToTranslate => 'Орчуулах текстийг оруулна уу';

  @override
  String get saving => 'Хадгалж байна...';

  @override
  String get noTranslationToSave => 'Хадгалах орчуулга байхгүй байна';

  @override
  String saveFailed(String error) {
    return 'Хадгалж чадсангүй: $error';
  }

  @override
  String get playing => 'Тоглуулж байна...';

  @override
  String get noTextToPlay => 'Тоглуулах текст байхгүй байна';

  @override
  String playbackFailed(String error) {
    return 'Тоглуулж чадсангүй: $error';
  }

  @override
  String get sourceLanguage => 'Эх хэл';

  @override
  String get targetLanguage => 'Зорилтот хэл';

  @override
  String get similarTextFound => 'Ижил төстэй текст олдлоо';

  @override
  String get useExistingText => 'Одоо байгаа текстийг ашиглах';

  @override
  String get createNew => 'Шинэ өгүүлбэрээр үргэлжлүүлэх';

  @override
  String reviewCount(int count) {
    return '$count удаа давтах';
  }

  @override
  String get tabSpeaking => 'Ярих';

  @override
  String get speakingPractice => 'Ярих дадлага';

  @override
  String intervalSeconds(int seconds) {
    return 'Завсар: $seconds секунд';
  }

  @override
  String get yourPronunciation => 'Миний дуудлага';

  @override
  String get correctAnswer => 'Зөв хариулт';

  @override
  String score(String score) {
    return 'Нарийвчлал: $score%';
  }

  @override
  String get perfect => 'Төгс байна!';

  @override
  String get good => 'Сайн байна';

  @override
  String get tryAgain => 'Дахин оролдох';

  @override
  String get startPractice => 'Дадлага эхлүүлэх';

  @override
  String get stopPractice => 'Дадлага зогсоох';

  @override
  String get startTutorial => 'Хичээл эхлүүлэх';

  @override
  String get tutorialMicTitle => 'Дуут оруулах';

  @override
  String get tutorialMicDesc =>
      'Микрофон товчлуурыг дарж дуугаар оруулах боломжтой.';

  @override
  String get tutorialTabDesc => 'Эндээс хүссэн сурах горимоо сонгох боломжтой.';

  @override
  String get tutorialTapToContinue => 'Дэлгэцийг дарж үргэлжлүүлэх';

  @override
  String get tutorialTransTitle => 'Орчуулах';

  @override
  String get tutorialTransDesc => 'Оруулсан текстийг орчуулна.';

  @override
  String get tutorialSaveTitle => 'Хадгалах';

  @override
  String get tutorialSaveDesc =>
      'Орчуулсан үр дүнг сургалтын түүхэнд хадгалаарай.';

  @override
  String get tutorialM2SelectTitle => 'Материал сонгох';

  @override
  String get tutorialM2SelectDesc =>
      'Дээд талын апп баар дээрх цуглуулгын дүрс (📚)-г дарж сурах материалаа сонгоно уу.';

  @override
  String get tutorialM2ListTitle => 'Сурах жагсаалт';

  @override
  String get tutorialM2ListDesc =>
      'Энэ картыг удаан дарснаар (Long Click) устгах боломжтой. Хадгалсан өгүүлбэрийг шалгаж эргүүлж үзээрэй.';

  @override
  String get tutorialM3SelectTitle => 'Материал сонгох';

  @override
  String get tutorialM3SelectDesc =>
      'Дээд талын апп баар дээрх цуглуулгын дүрс (📚)-г дарж дадлага хийх материалаа сонгоно уу.';

  @override
  String get tutorialM3IntervalTitle => 'Завсар тохируулах';

  @override
  String get tutorialM3IntervalDesc =>
      'Өгүүлбэр хоорондын хүлээх хугацааг тохируулна.';

  @override
  String get tutorialM3StartTitle => 'Дадлага эхлүүлэх';

  @override
  String get tutorialM3StartDesc =>
      'Тоглуулах товчлуурыг дарж эх хэлээр ярьж буй дууг сонсоод дагана уу.';

  @override
  String get startWarning => 'Анхааруулга';

  @override
  String get noVoiceDetected => 'Дуу хоолой илрээгүй байна';

  @override
  String get tooltipSearch => 'Хайх';

  @override
  String get tooltipStudyReview => 'Сурах+Давтах';

  @override
  String get tooltipSpeaking => 'Ярих';

  @override
  String get tooltipDecrease => 'Багасгах';

  @override
  String get tooltipIncrease => 'Нэмэгдүүлэх';

  @override
  String get languageSettings => 'Хэлний тохиргоо';

  @override
  String get tutorialM2DropdownDesc =>
      'Дээд цэсээр дамжуулан сурах материалаа сонгох боломжтой.';

  @override
  String get tutorialM2ImportDesc =>
      'Төхөөрөмжийн фолдероос JSON файлыг оруулах.';

  @override
  String get tutorialLangSettingsTitle => 'Хэлний тохиргоо';

  @override
  String get tutorialLangSettingsDesc =>
      'Орчуулах эх хэл болон зорилтот хэлийг тохируулна.';

  @override
  String get copy => 'Хуулах';

  @override
  String get copiedToClipboard => 'Санах ойд хуулсан!';

  @override
  String get tutorialContextTitle => 'Нөхцөл/Утга санааны таг';

  @override
  String get tutorialContextDesc =>
      'Ижил өгүүлбэр байсан ч нөхцөл (Жишээ нь: Өглөө, орой) бичсэнээр тусад нь хадгалах боломжтой.';

  @override
  String get thinkingTimeInterval => 'Бодох хугацааны завсар';

  @override
  String get thinkingTimeDesc => 'Зөв хариулт гарахын өмнө бодох хугацаа.';

  @override
  String get autoPlay => 'Автоматаар тоглуулах';

  @override
  String get timeUp => 'Хугацаа дууслаа!';

  @override
  String get gameModeTitle => 'Тоглоомын горим';

  @override
  String get gameModeDesc => 'Дадлага хийх тоглоомын горимоо сонгоно уу';

  @override
  String get wordDefenseTitle => 'Үг хамгаалах';

  @override
  String get wordDefenseDesc =>
      'Дайсан ирэхээс өмнө үгийг хэлж баазыг хамгаалаарай.';

  @override
  String get dialogueQuestTitle => 'Ярианы даалгавар';

  @override
  String get dialogueQuestDesc =>
      'Нөхцөл байдлын жүжгээр ярианы дадлага хийгээрэй. Тохиромжтой хариултыг сонгож хэлээрэй.';

  @override
  String get labelType => 'Төрөл:';

  @override
  String get labelWord => 'Үг';

  @override
  String get labelSentence => 'Өгүүлбэр';

  @override
  String get contextTagLabel =>
      'Утга/Нөхцөл (Сонгох) - Жишээ нь: Өглөөний мэнд, Хүндэтгэлийн хэл';

  @override
  String get contextTagHint =>
      'Дараа нь ялгахад хялбар болгохын тулд нөхцөлийг бичнэ үү';

  @override
  String get usageLimitTitle => 'Хязгаарт хүрсэн';

  @override
  String get translationLimitExceeded => 'Орчуулгын хязгаар хэтэрсэн';

  @override
  String get translationLimitMessage =>
      'Өдөрт үнэгүй орчуулга (5 удаа) дууссан байна.\\n\\nЗар үзэж 5 удааг нэн даруй цэнэглэх үү?';

  @override
  String get watchAdAndRefill => 'Зар үзэж цэнэглэх (+5 удаа)';

  @override
  String get translationRefilled => 'Орчуулгын тоо 5-аар цэнэглэгдлээ!';

  @override
  String get adLoading =>
      'Зар татаж байна. Хэсэг хугацааны дараа дахин оролдоно уу.';

  @override
  String get reviewAll => 'Бүгдийг давтах';

  @override
  String totalRecords(int count) {
    return 'Нийт $count бичлэг (Бүгдийг харах)';
  }

  @override
  String get filterAll => 'Бүгд';

  @override
  String get practiceWordsOnly => 'Зөвхөн үг дадлага хийх';

  @override
  String get resetPracticeHistory => 'Дадлагын түүхийг анхны байдалд оруулах';

  @override
  String get retry => 'Дахин оролдох уу?';

  @override
  String get noStudyMaterial => 'Сурах материал байхгүй байна.';

  @override
  String get gameOver => 'Game Over';

  @override
  String get playAgain => 'Дахин тоглох';

  @override
  String get speakNow => 'Одоо ярина уу!';

  @override
  String get scoreLabel => 'Оноо';

  @override
  String get viewOnlineGuide => 'Онлайн гарын авлага үзэх';

  @override
  String get getMaterials => 'Материал авах';

  @override
  String get swapLanguages => 'Хэл солих';

  @override
  String get next => 'Дараах';

  @override
  String get wordModeLabel => 'Үгийн горим';

  @override
  String get accuracy => 'Нарийвчлал';

  @override
  String get basicDefault => 'Үндсэн';

  @override
  String get basic => 'Үндсэн';

  @override
  String get tutorialM3WordsTitle => 'Үг дадлага хийх';

  @override
  String get tutorialM3WordsDesc =>
      'Чеклэвэл зөвхөн хадгалсан үгсийг дадлага хийнэ.';

  @override
  String get enterTextHint => 'Орчуулах текстийг оруулна уу';

  @override
  String get micButtonTooltip => 'Дуу таних эхлүүлэх';

  @override
  String get menuHelp => 'Тусламж';

  @override
  String get menuWebDownload => 'Вэб сайт';

  @override
  String get menuDeviceImport => 'Төхөөрөмжөөс материал оруулах';

  @override
  String get menuSettings => 'Хэлний тохиргоо';

  @override
  String get basicWords => 'Үндсэн үгсийн сан';

  @override
  String get basicSentences => 'Үндсэн өгүүлбэрийн сан';

  @override
  String get selectMaterialSet => 'Сурах материал сонгох';

  @override
  String get sectionWords => 'Үг';

  @override
  String get sectionSentences => 'Өгүүлбэр';

  @override
  String get languageSettingsTitle => 'Хэлний тохиргоо';

  @override
  String get sourceLanguageLabel => 'Миний хэл (Source)';

  @override
  String get targetLanguageLabel => 'Сурах хэл (Target)';

  @override
  String get mode3Start => 'Эхлэх';

  @override
  String get mode3Stop => 'Зогсоох';

  @override
  String get mode3Next => 'Дараах';

  @override
  String get mode3TryAgain => 'Дахин оролдох';

  @override
  String get tutorialM3ResetTitle => 'Түүхийг анхны байдалд оруулах';

  @override
  String get tutorialSwapDesc =>
      'Миний хэл болон сурах хэлийг хооронд нь солино.';

  @override
  String get recognizedText => 'Танигдсан дуудлага:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Ахиц болон нарийвчлалын оноог анхны байдалд оруулж эхнээс нь дахин эхлүүлнэ.';

  @override
  String get menuSelectMaterialSet => 'Сурах материал сонгох';

  @override
  String get sectionWord => 'Үгийн хэсэг';

  @override
  String get sectionSentence => 'Өгүүлбэрийн хэсэг';

  @override
  String get tabWord => 'Үг';

  @override
  String get tabSentence => 'Өгүүлбэр';

  @override
  String get errorProfanity => 'Ёс бус үг агуулсан тул орчуулах боломжгүй.';

  @override
  String get errorHateSpeech => 'Үзэн ядах үг агуулсан тул орчуулах боломжгүй.';

  @override
  String get errorSexualContent =>
      'Садар самуун агуулга агуулсан тул орчуулах боломжгүй.';

  @override
  String get errorOtherSafety =>
      'AI аюулгүй байдлын бодлогын дагуу орчуулгыг хүлээн авахаас татгалзсан.';

  @override
  String get clearAll => 'Бүгдийг арилгах';

  @override
  String get disambiguationTitle => 'Утга сонгох';

  @override
  String get disambiguationPrompt => 'Ямар утгаар орчуулах вэ?';

  @override
  String get skip => 'Алгасах';

  @override
  String get inputModeTitle => 'Оруулах';

  @override
  String get reviewModeTitle => 'Давтах';

  @override
  String get practiceModeTitle => 'Дуудлага дадлага';

  @override
  String get chatHistoryTitle => 'Ярианы түүх';

  @override
  String get chatNew => 'Шинэ яриа';

  @override
  String get chatNewChat => 'Шинэ яриа';

  @override
  String get chatChoosePersona => 'Дүр сонгох';

  @override
  String get chatTypeHint => 'Зурвас оруулна уу...';

  @override
  String chatFailed(Object error) {
    return 'Чат хийж чадсангүй: $error';
  }

  @override
  String get chatNoConversations => 'Одоогоор яриа байхгүй байна';

  @override
  String get chatStartNewPrompt =>
      'Дадлага хийхийн тулд шинэ яриа эхлүүлээд үзээрэй!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Ярианаас иш татах ($speaker)';
  }

  @override
  String get personaTeacher => 'Англи хэлний багш';

  @override
  String get personaGuide => 'Аялал жуулчлалын хөтөч';

  @override
  String get personaFriend => 'Орон нутгийн найз';

  @override
  String get chatUntitled => 'Гарчиггүй яриа';

  @override
  String get chatAiChat => 'AI чат';

  @override
  String get tutorialAiChatTitle => 'AI чат';

  @override
  String get tutorialAiChatDesc =>
      'AI дүртэй бодит ярианы дадлага хийж үзээрэй.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Одоогоор сонгогдсон материал: $name';
  }

  @override
  String get basicWordRepository => 'Үндсэн үгсийн сан';

  @override
  String get basicSentenceRepository => 'Үндсэн өгүүлбэрийн сан';

  @override
  String get chatEndTitle => 'Яриаг дуусгаж хадгалах';

  @override
  String get chatEndMessage => 'Яриагаа дуусгах уу?';

  @override
  String get chatSaveAndExit => 'Хадгалж гараад гарах';

  @override
  String get errorSelectCategory => 'Эхлээд үг эсвэл өгүүлбэр сонгоно уу!';

  @override
  String get tutorialM1ToggleTitle => 'Үг/Өгүүлбэр горим';

  @override
  String get tutorialM1ToggleDesc =>
      'Үг болон өгүүлбэр горимыг эндээс сольж болно.';

  @override
  String get metadataDialogTitle => 'Дэлгэрэнгүй ангилал';

  @override
  String get tagFormal => 'Хүндэтгэлийн хэл';

  @override
  String get selectPOS => 'Үгийн төрөл сонгох';

  @override
  String get selectSentenceType => 'Өгүүлбэрийн төрөл сонгох';

  @override
  String get metadataRootWord => 'Үндсэн үг (Root Word)';

  @override
  String get posNoun => 'Нэр үг';

  @override
  String get posVerb => 'Үйл үг';

  @override
  String get posAdjective => 'Тэмдэг нэр';

  @override
  String get posAdverb => 'Дайвар үг';

  @override
  String get posPronoun => 'Орлуун үг';

  @override
  String get posPreposition => 'Орхигдох эгшиг/Төлөөний үг';

  @override
  String get posConjunction => 'Холбох үг';

  @override
  String get posInterjection => 'Ам барьцаалах үг';

  @override
  String get typeStatement => 'Мэдэгдэл';

  @override
  String get typeQuestion => 'Асуулт';

  @override
  String get typeExclamation => 'Уулга алдах';

  @override
  String get typeImperative => 'Тушаах үг';

  @override
  String get labelNote => 'Тайлбар';

  @override
  String get labelShowMemorized => 'Дууссан';

  @override
  String get tagSelection => 'Таг сонгох';

  @override
  String get metadataFormType => 'Дүрмийн хэлбэр';

  @override
  String get formInfinitive => 'Үндсэн/Одоо цаг';

  @override
  String get formPast => 'Өнгөрсөн цаг';

  @override
  String get formPastParticiple => 'Өнгөрсөн цагийн оролцоо';

  @override
  String get formPresentParticiple => 'Одоо цагийн оролцоо (ing)';

  @override
  String get formPresent => 'Одоо цаг';

  @override
  String get formThirdPersonSingular => '3-р хүн ганц тоо';

  @override
  String get formPlural => 'Олон тоо';

  @override
  String get formSingular => 'Ганц тоо';

  @override
  String get caseSubject => 'Гол тохиолдол';

  @override
  String get caseObject => 'Зорилгын тохиолдол';

  @override
  String get casePossessive => 'Эзэмших тохиолдол';

  @override
  String get casePossessivePronoun => 'Эзэмших орлуун үг';

  @override
  String get caseReflexive => 'Өөртөө тусах орлуун үг';

  @override
  String get formPositive => 'Эерэг';

  @override
  String get formComparative => 'Харьцуулсан';

  @override
  String get formSuperlative => 'Хамгийн дээд зэрэг';

  @override
  String get searchConditions => 'Хайлтын нөхцөл';

  @override
  String recentNItems(int count) {
    return 'Саяхан үүсгэсэн $count зүйлийг харах';
  }

  @override
  String get startsWith => 'Эхний үсэг';

  @override
  String get reset => 'Анхны байдалд оруулах';

  @override
  String get participantRename => 'Оролцогчийн нэрийг өөрчлөх';

  @override
  String get labelName => 'Нэр';

  @override
  String get gender => 'Хүйс';

  @override
  String get language => 'Хэл';

  @override
  String get male => 'Эрэгтэй';

  @override
  String get female => 'Эмэгтэй';

  @override
  String get neutral => 'Төвийг сахисан';

  @override
  String get chatAllConversations => 'Бүх яриа';

  @override
  String get confirmDeleteConversation =>
      'Та энэ яриаг устгах уу?\nУстгасан яриаг сэргээх боломжгүй.';
}

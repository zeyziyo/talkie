// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get basicWords => 'Үндсэн үгсийн сан';

  @override
  String get inputLanguage => 'Оролтын хэл';

  @override
  String get translationLanguage => 'Орчуулгын хэл';

  @override
  String get simplifiedGuidance =>
      'Өдөр тутмын яриаг гадаад хэл рүү шууд хөрвүүлээрэй! Talkie таны хэлний амьдралыг тэмдэглэнэ.';

  @override
  String get noDataForLanguage =>
      'Таны сонгосон хэл дээр сургалтын материал Local DB-д байхгүй байна. Материалыг татаж авах эсвэл өөр хэл сонгоно уу.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Цуцлах';

  @override
  String get accuracy => 'Нарийвчлал';

  @override
  String get ttsMissing =>
      'Энэ хэлний дуут хөдөлгүүр таны төхөөрөмж дээр суугаагүй байна.';

  @override
  String get ttsInstallGuide =>
      'Андройд тохиргоо > Google TTS хэсгээс энэ хэлний өгөгдлийг суулгана уу.';

  @override
  String get adLoading =>
      'Зар татаж байна. Хэсэг хугацааны дараа дахин оролдоно уу.';

  @override
  String get addNewSubject => 'Шинэ нэр нэмэх';

  @override
  String get addParticipant => 'Оролцогч нэмэх';

  @override
  String get addTagHint => 'Тэмдэг нэмэх...';

  @override
  String get alreadyHaveAccount => 'Та аль хэдийн данстай юу?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Автоматаар тоглуулах';

  @override
  String get basic => 'Үндсэн';

  @override
  String get basicDefault => 'Үндсэн';

  @override
  String get basicMaterialRepository => 'Үндсэн өгүүлбэр/үгсийн сан';

  @override
  String get basicSentenceRepository => 'Үндсэн өгүүлбэрийн сан';

  @override
  String get basicSentences => 'Үндсэн өгүүлбэрийн сан';

  @override
  String get basicWordRepository => 'Үндсэн үгсийн сан';

  @override
  String get caseObject => 'Зорилгын тохиолдол';

  @override
  String get casePossessive => 'Эзэмших тохиолдол';

  @override
  String get casePossessivePronoun => 'Эзэмших орлуун үг';

  @override
  String get caseReflexive => 'Өөртөө тусах орлуун үг';

  @override
  String get caseSubject => 'Гол тохиолдол';

  @override
  String get chatAiChat => 'Чат';

  @override
  String get chatAllConversations => 'Бүх яриа';

  @override
  String get chatChoosePersona => 'Дүр сонгох';

  @override
  String get chatEndMessage => 'Яриагаа дуусгах уу?';

  @override
  String get chatEndTitle => 'Яриаг дуусгаж хадгалах';

  @override
  String chatFailed(Object error) {
    return 'Чат хийж чадсангүй: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Ярианаас иш татах ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Ярианы түүх';

  @override
  String get chatNew => 'Шинэ яриа';

  @override
  String get chatNewChat => 'Шинэ яриа';

  @override
  String get chatNoConversations => 'Одоогоор яриа байхгүй байна';

  @override
  String get chatSearchHint => 'Чатны гарчигаар хайх...';

  @override
  String get chatSaveAndExit => 'Хадгалж гараад гарах';

  @override
  String get chatStartNewPrompt =>
      'Дадлага хийхийн тулд шинэ яриа эхлүүлээд үзээрэй!';

  @override
  String get chatTypeHint => 'Зурвас оруулна уу...';

  @override
  String get chatUntitled => 'Гарчиггүй яриа';

  @override
  String get checking => 'Шалгаж байна...';

  @override
  String get clearAll => 'Бүгдийг арилгах';

  @override
  String get confirm => 'Зөвшөөрөх';

  @override
  String get confirmDelete => 'Энэ сургалтын бичлэгийг устгах уу?';

  @override
  String get confirmDeleteConversation =>
      'Та энэ яриаг устгах уу?\nУстгасан яриаг сэргээх боломжгүй.';

  @override
  String get confirmDeleteParticipant => 'Та энэ оролцогчийг устгах уу?';

  @override
  String get contextTagHint =>
      'Дараа нь ялгахад хялбар болгохын тулд нөхцөлийг бичнэ үү';

  @override
  String get contextTagLabel =>
      'Утга/Нөхцөл (Сонгох) - Жишээ нь: Өглөөний мэнд, Хүндэтгэлийн хэл';

  @override
  String get copiedToClipboard => 'Санах ойд хуулсан!';

  @override
  String get copy => 'Хуулах';

  @override
  String get correctAnswer => 'Зөв хариулт';

  @override
  String get createNew => 'Шинэ өгүүлбэрээр үргэлжлүүлэх';

  @override
  String get currentLocation => 'Одоогийн байршил';

  @override
  String get currentMaterialLabel => 'Одоогийн сонгосон материал:';

  @override
  String get delete => 'Устгах';

  @override
  String deleteFailed(String error) {
    return 'Устгаж чадсангүй: $error';
  }

  @override
  String get deleteRecord => 'Бичлэгийг устгах';

  @override
  String get dialogueQuestDesc =>
      'Нөхцөл байдлын жүжгээр ярианы дадлага хийгээрэй. Тохиромжтой хариултыг сонгож хэлээрэй.';

  @override
  String get dialogueQuestTitle => 'Ярианы даалгавар';

  @override
  String get disambiguationPrompt => 'Ямар утгаар орчуулах вэ?';

  @override
  String get disambiguationTitle => 'Утга сонгох';

  @override
  String get dontHaveAccount => 'Та дансгүй юу?';

  @override
  String get editParticipant => 'Оролцогчийг засах';

  @override
  String get email => 'И-мэйл';

  @override
  String get emailAlreadyInUse =>
      'Бүртгэгдсэн имэйл хаяг байна. Нэвтэрч эсвэл нууц үгээ сэргээнэ үү.';

  @override
  String get enterNewSubjectName => 'Шинэ нэр оруулна уу';

  @override
  String get enterSentenceHint => 'Өгүүлбэр оруулна уу...';

  @override
  String get enterTextHint => 'Орчуулах текстийг оруулна уу';

  @override
  String get enterTextToTranslate => 'Орчуулах текстийг оруулна уу';

  @override
  String get enterWordHint => 'Үг оруулна уу...';

  @override
  String get error => 'Алдаа';

  @override
  String get errorHateSpeech => 'Үзэн ядах үг агуулсан тул орчуулах боломжгүй.';

  @override
  String get errorOtherSafety =>
      'AI аюулгүй байдлын бодлогын дагуу орчуулгыг хүлээн авахаас татгалзсан.';

  @override
  String get errorProfanity => 'Ёс бус үг агуулсан тул орчуулах боломжгүй.';

  @override
  String get errorSelectCategory => 'Эхлээд үг эсвэл өгүүлбэр сонгоно уу!';

  @override
  String get errorSexualContent =>
      'Садар самуун агуулга агуулсан тул орчуулах боломжгүй.';

  @override
  String get errors => 'Алдаа:';

  @override
  String get female => 'Эмэгтэй';

  @override
  String get file => 'Файл:';

  @override
  String get filterAll => 'Бүгд';

  @override
  String get flip => 'Харуулах';

  @override
  String get formComparative => 'Харьцуулсан';

  @override
  String get formInfinitive => 'Үндсэн/Одоо цаг';

  @override
  String get formPast => 'Өнгөрсөн цаг';

  @override
  String get formPastParticiple => 'Өнгөрсөн цагийн оролцоо';

  @override
  String get formPlural => 'Олон тоо';

  @override
  String get formPositive => 'Эерэг';

  @override
  String get formPresent => 'Одоо цаг';

  @override
  String get formPresentParticiple => 'Одоо цагийн оролцоо (ing)';

  @override
  String get formSingular => 'Ганц тоо';

  @override
  String get formSuperlative => 'Хамгийн дээд зэрэг';

  @override
  String get formThirdPersonSingular => '3-р хүн ганц тоо';

  @override
  String get gameModeDesc => 'Дадлага хийх тоглоомын горимоо сонгоно уу';

  @override
  String get gameModeTitle => 'Тоглоомын горим';

  @override
  String get gameOver => 'Тоглоом дууслаа';

  @override
  String get gender => 'Хүйс';

  @override
  String get labelFilterMaterial => 'Материал';

  @override
  String get labelFilterTag => 'Тэмдэг';

  @override
  String get generalTags => 'Ерөнхий шошго';

  @override
  String get getMaterials => 'Материал авах';

  @override
  String get good => 'Сайн байна';

  @override
  String get googleContinue => 'Google-ээр үргэлжлүүлэх';

  @override
  String get helpDialogueImportDesc =>
      'Бүхэл ярианы багцыг JSON файлаар импортлох.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON бүтэц: `entries`-ийн оронд `dialogues` массивыг ашиглах\n• Автомат сэргээлт: Ярианы гарчиг, дүр, мессежийн дарааллыг сэргээнэ.\n• Байршил: Импортолсон яриа нь AI чат горимын \'Түүх\' таб дээр гарч ирнэ.';

  @override
  String get helpJsonDesc =>
      'Mode 3-т ашиглах сургалтын материалыг JSON файлаар импортлохын тулд дараах форматыг баримтална уу:';

  @override
  String get helpJsonTypeDialogue => 'Яриа (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'Өгүүлбэр (Sentence)';

  @override
  String get helpJsonTypeWord => 'Үг (Word)';

  @override
  String get helpMode1Desc =>
      'Дээд зэрэглэлийн 3D микрофон болон томруулсан гарны дүрс ашиглан хэл сурах хамгийн ойлгомжтой аргаар эхлээрэй.';

  @override
  String get helpMode1Details =>
      '• Хэлний тохиргоо: Нүүр хуудасны дээд талд байрлах хэлний товчийг ашиглан өөрийн хэл болон сурч буй хэлээ шалгаж, сурах хэлээ өөрчлөх боломжтой.\n• Энгийн оруулах: Төвд байрлах том микрофон болон текст цонх ашиглан шууд оруулна уу.\n• Тохиргоог шалгах: Оруулж дууссаны дараа баруун талд байрлах цэнхэр өнгийн баталгаажуулах товчийг дарна уу. Дэлгэрэнгүй тохиргооны цонх гарч ирнэ.\n• Дэлгэрэнгүй тохиргоо: Гарч ирсэн цонхонд хадгалах материал, тайлбар (санамж), шошго зэргийг зааж өгөх боломжтой.\n• Одоо орчуулах: Тохиргоог хийж дууссаны дараа ногоон орчуулах товчийг дарснаар хиймэл оюун ухаан шууд орчуулга хийнэ.\n• Автомат хайлт: Оруулах явцад төстэй орчуулгыг бодит цаг хугацаанд мэдэрч харуулна.\n• Сонсох ба хадгалах: Орчуулгын үр дүнгийн доод талд байрлах чанга яригчийн дүрсээр дуудлагыг сонсож, \'Мэдээлэл хадгалах\' замаар сурах жагсаалтад нэмээрэй.';

  @override
  String get helpMode2Desc =>
      'Хадгалсан өгүүлбэрүүдээ давтаж, автомат нуух функцээр цээжилсэн эсэхээ шалгаарай.';

  @override
  String get helpMode2Details =>
      '• Материал сонгох: Баруун дээд буланд байгаа цэснээс (⋮) \'Хичээлийн материал сонгох\' эсвэл \'Онлайн материал\'-ыг ашиглана уу\n• Карт эргүүлэх: \'Харуулах/Нуух\' товчийг ашиглаж орчуулгыг шалгана уу\n• Сонсох: Чанга яригчийн дүрс дээр дарж дуудлагыг сонсох\n• Хичээл дуусгах: Чек тэмдэг (V) дарж хичээлийг дуусгах\n• Устгах: Картыг удаан дарж (Long Click) бичлэгийг устгах\n• Хайлт ба шүүлтүүр: Хайлтын хэсэг (бодит цагийн ухаалаг хайлт) болон tag, эхний үсгийн шүүлтүүрийг дэмжинэ';

  @override
  String get helpMode3Desc =>
      'Өгүүлбэрийг сонсож, даган хэлж (Shadowing) дуудлагаа сайжруулаарай.';

  @override
  String get helpMode3Details =>
      '• Материал сонгох: Сурах материалаа сонгох\n• Завсрын хугацаа тохируулах: [-] [+] товчлуураар өгүүлбэр хоорондын хүлээх хугацааг тохируулах (3 секундээс 60 секунд хүртэл)\n• Эхлүүлэх/Зогсоох: Shadowing сессийг хянах\n• Ярих: Дууг сонсоод дагаж ярих\n• Санал хүсэлт: Нарийвчлалын оноо (0-100) болон өнгөний дэлгэц\n• Хайлтын нөхцөл: Таг, саяхны зүйл, эхний үсгээр дадлага хийх зүйлийг шүүх';

  @override
  String get helpModeChatDesc =>
      'AI дүртэй ярилцаж, бодит харилцан яриаг дадлагажуулаарай.';

  @override
  String get helpModeChatDetails =>
      '• AI чат: Доод таб баарны \'Чат\' цэснээс дүр төрхтэй бодит ярианы дадлага хийх\n• Дүр төрх тохируулах: Харилцагчийн хүйс, нэр, хэлний кодыг чөлөөтэй зааж өгөх\n• GPS жүжигчилсэн тоглоом: Одоогийн байгаа газрыг таньж, тухайн газарт тохирох ярианы сэдвийг санал болгох\n• 2 хэл: AI-ийн хариултыг орчуулгатай хамт харуулснаар сургалтын үр дүнг дээд зэргээр нэмэгдүүлэх\n• Бичлэгийн удирдлага: Өнгөрсөн ярианы түүхийг шүүж, ярианы явцад тодорхой мессежийг сургалтын материал болгон хадгалах';

  @override
  String get helpTabJson => 'JSON формат';

  @override
  String get helpTabModes => 'Горим тайлбар';

  @override
  String get helpTabTour => 'Туршлага хуримтлуулах';

  @override
  String get helpTitle => 'Тусламж & Заавар';

  @override
  String get helpTourDesc =>
      '**Тодруулсан хүрээ** нь үндсэн функцийг чиглүүлдэг.\n(Жишээ нь: **Тодруулсан хүрээ** нь зааж буй картыг удаан дарснаар устгах боломжтой.)';

  @override
  String get hide => 'Нуух';

  @override
  String importAdded(int count) {
    return 'Нэмсэн: $count ширхэг';
  }

  @override
  String get importComplete => 'Оруулж дууслаа';

  @override
  String get importDuplicateTitleError =>
      'Ижил нэртэй материал аль хэдийн байгаа. Нэрээ өөрчлөөд дахин оролдоно уу.';

  @override
  String importErrorMessage(String error) {
    return 'Файл оруулахад алдаа гарлаа:\\n$error';
  }

  @override
  String get importFailed => 'Оруулж чадсангүй';

  @override
  String importFile(String fileName) {
    return 'Файл: $fileName';
  }

  @override
  String get importJsonFile => 'JSON файл оруулах';

  @override
  String get importJsonFilePrompt => 'JSON файлаа оруулна уу';

  @override
  String importSkipped(int count) {
    return 'Алгассан: $count ширхэг';
  }

  @override
  String importTotal(int count) {
    return 'Нийт: $count ширхэг';
  }

  @override
  String get importing => 'Оруулж байна...';

  @override
  String get inputModeTitle => 'Оруулах';

  @override
  String intervalSeconds(int seconds) {
    return 'Завсар: $seconds секунд';
  }

  @override
  String get invalidEmail => 'Тохиромжтой и-мэйл хаяг оруулна уу.';

  @override
  String get kakaoContinue => 'Какао-гоор үргэлжлүүлэх';

  @override
  String get labelLangCode => 'Хэлний код (жш: en-US, ko-KR)';

  @override
  String get labelName => 'Нэр';

  @override
  String get labelNote => 'Тайлбар';

  @override
  String get labelPOS => 'Үгийн төрөл';

  @override
  String get labelRole => 'Үүрэг';

  @override
  String get labelSentence => 'Өгүүлбэр';

  @override
  String get labelSentenceCollection => 'Өгүүлбэрийн цуглуулга';

  @override
  String get labelSentenceType => 'Өгүүлбэрийн төрөл';

  @override
  String get labelShowMemorized => 'Дууссан';

  @override
  String get labelType => 'Төрөл:';

  @override
  String get labelWord => 'Үг';

  @override
  String get labelWordbook => 'Үгийн сан';

  @override
  String get language => 'Хэл';

  @override
  String get languageSettings => 'Хэлний тохиргоо';

  @override
  String get languageSettingsTitle => 'Хэлний тохиргоо';

  @override
  String get libTitleFirstMeeting => 'Анхны уулзалт';

  @override
  String get libTitleGreetings1 => 'Мэндчилгээ 1';

  @override
  String get libTitleNouns1 => 'Нэр үг 1';

  @override
  String get libTitleVerbs1 => 'Үйл үг 1';

  @override
  String get listen => 'Сонсох';

  @override
  String get listening => 'Сонсож байна...';

  @override
  String get loadingParticipants => 'Оролцогчдыг ачаалж байна...';

  @override
  String get location => 'Байршил';

  @override
  String get login => 'Нэвтрэх';

  @override
  String get logout => 'Гарах';

  @override
  String get logoutConfirmMessage => 'Та одоогийн төхөөрөмжөөс гарах уу?';

  @override
  String get logoutConfirmTitle => 'Гарах';

  @override
  String get male => 'Эрэгтэй';

  @override
  String get manageParticipants => 'Оролцогчдыг удирдах';

  @override
  String get manual => 'Гараар оруулах';

  @override
  String get markAsStudied => 'Судалсан гэж тэмдэглэх';

  @override
  String get materialInfo => 'Материалын мэдээлэл';

  @override
  String get me => 'Би';

  @override
  String get menuDeviceImport => 'Төхөөрөмжөөс материал оруулах';

  @override
  String get menuHelp => 'Тусламж';

  @override
  String get menuLanguageSettings => 'Хэлний тохиргоо';

  @override
  String get menuOnlineLibrary => 'Онлайн номын сан';

  @override
  String get menuSelectMaterialSet => 'Сурах материал сонгох';

  @override
  String get menuSettings => 'Хэлний тохиргоо';

  @override
  String get menuTutorial => 'Хэрэглэх заавар';

  @override
  String get menuWebDownload => 'Вэб сайт';

  @override
  String get metadataDialogTitle => 'Дэлгэрэнгүй ангилал';

  @override
  String get metadataFormType => 'Дүрмийн хэлбэр';

  @override
  String get metadataRootWord => 'Үндсэн үг (Root Word)';

  @override
  String get micButtonTooltip => 'Дуу таних эхлүүлэх';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Одоогоор сонгогдсон материал: $name';
  }

  @override
  String get mode2Title => 'Давтах';

  @override
  String get mode3Next => 'Дараах';

  @override
  String get mode3Start => 'Эхлэх';

  @override
  String get mode3Stop => 'Зогсоох';

  @override
  String get mode3TryAgain => 'Дахин оролдох';

  @override
  String get mySentenceCollection => 'Миний өгүүлбэрийн цуглуулга';

  @override
  String get myWordbook => 'Миний үгийн сан';

  @override
  String get neutral => 'Төвийг сахисан';

  @override
  String get newSubjectName => 'Шинэ нэр томьёоны сангийн нэр';

  @override
  String get next => 'Дараах';

  @override
  String get noDialogueHistory => 'Ярианы түүх байхгүй.';

  @override
  String get noInternetWarningMic =>
      'Интернет холболт байхгүй байна. Офлайн үед дуу хоолой таних боломжгүй байж болно.';

  @override
  String get noInternetWarningTranslate =>
      'Интернет холболт байхгүй байна. Офлайн үед орчуулгын үйл ажиллагааг ашиглах боломжгүй. Дадлагын горимыг ашиглана уу.';

  @override
  String get noMaterialsInCategory => 'Энэ ангилалд материал байхгүй байна.';

  @override
  String get noParticipantsFound => 'Бүртгэгдсэн оролцогч байхгүй.';

  @override
  String get noRecords => 'Сонгосон хэлний сурах бичлэг байхгүй байна';

  @override
  String get noStudyMaterial => 'Сурах материал байхгүй байна.';

  @override
  String get noTextToPlay => 'Тоглуулах текст байхгүй байна';

  @override
  String get noTranslationToSave => 'Хадгалах орчуулга байхгүй байна';

  @override
  String get noVoiceDetected => 'Дуу хоолой илрээгүй байна';

  @override
  String get notSelected => '- Сонгоогүй -';

  @override
  String get onlineLibraryCheckInternet =>
      'Интернет холболтоо шалгаад эсвэл дараа дахин оролдоно уу.';

  @override
  String get onlineLibraryLoadFailed => 'Материалыг ачаалж чадсангүй.';

  @override
  String get onlineLibraryNoMaterials => 'Материал байхгүй байна.';

  @override
  String get participantDeleted => 'Оролцогчийг устгасан.';

  @override
  String get participantRename => 'Оролцогчийн нэрийг өөрчлөх';

  @override
  String get partner => 'Хамтрагч';

  @override
  String get partnerMode => 'Хамтрагчийн горим';

  @override
  String get password => 'Нууц үг';

  @override
  String get passwordTooShort => 'Нууц үг 6-аас дээш тэмдэгтэй байх ёстой.';

  @override
  String get perfect => 'Төгс байна!';

  @override
  String get personaFriend => 'Орон нутгийн найз';

  @override
  String get personaGuide => 'Аялал жуулчлалын хөтөч';

  @override
  String get personaTeacher => 'Англи хэлний багш';

  @override
  String get playAgain => 'Дахин тоглох';

  @override
  String playbackFailed(String error) {
    return 'Тоглуулж чадсангүй: $error';
  }

  @override
  String get playing => 'Тоглуулж байна...';

  @override
  String get posAdjective => 'Тэмдэг нэр';

  @override
  String get posAdverb => 'Дайвар үг';

  @override
  String get posConjunction => 'Холбох үг';

  @override
  String get posInterjection => 'Ам барьцаалах үг';

  @override
  String get posNoun => 'Нэр үг';

  @override
  String get posPreposition => 'Орхигдох эгшиг/Төлөөний үг';

  @override
  String get posPronoun => 'Орлуун үг';

  @override
  String get posVerb => 'Үйл үг';

  @override
  String get practiceModeTitle => 'Дадлага';

  @override
  String get practiceWordsOnly => 'Зөвхөн үг дадлага хийх';

  @override
  String progress(int current, int total) {
    return 'Ахиц: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Саяхан үүсгэсэн $count зүйлийг харах';
  }

  @override
  String recognitionFailed(String error) {
    return 'Дуу танихгүй байна: $error';
  }

  @override
  String get recognized => 'Танигдаж дууслаа';

  @override
  String get recognizedText => 'Танигдсан дуудлага:';

  @override
  String get recordDeleted => 'Бичлэгийг устгасан';

  @override
  String get refresh => 'Шинэчлэх';

  @override
  String get reset => 'Анхны байдалд оруулах';

  @override
  String get resetPracticeHistory => 'Дадлагын түүхийг анхны байдалд оруулах';

  @override
  String get retry => 'Дахин оролдох уу?';

  @override
  String get reviewAll => 'Бүгдийг давтах';

  @override
  String reviewCount(int count) {
    return '$count удаа давтах';
  }

  @override
  String get reviewModeTitle => 'Давтах';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Гуравдагч этгээд';

  @override
  String get roleUser => 'Хэрэглэгч';

  @override
  String get save => 'Хадгалах';

  @override
  String get saveData => 'Мэдээлэл хадгалах';

  @override
  String saveFailed(String error) {
    return 'Хадгалж чадсангүй: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Хайх горимд орчуулгыг хадгалаад үзээрэй';

  @override
  String get saved => 'Хадгалж дууслаа';

  @override
  String get saving => 'Хадгалж байна...';

  @override
  String score(String score) {
    return 'Нарийвчлал: $score%';
  }

  @override
  String get scoreLabel => 'Оноо';

  @override
  String get search => 'Хайх';

  @override
  String get searchConditions => 'Хайлтын нөхцөл';

  @override
  String get searchSentenceHint => 'Өгүүлбэр хайх...';

  @override
  String get searchWordHint => 'Үг хайх...';

  @override
  String get sectionSentence => 'Өгүүлбэрийн хэсэг';

  @override
  String get sectionSentences => 'Өгүүлбэр';

  @override
  String get sectionWord => 'Үгийн хэсэг';

  @override
  String get sectionWords => 'Үг';

  @override
  String get selectExistingSubject => 'Одоо байгаа нэрийг сонгох';

  @override
  String get selectMaterialPrompt => 'Сурах материалаа сонгоно уу';

  @override
  String get selectMaterialSet => 'Сурах материал сонгох';

  @override
  String get selectPOS => 'Үгийн төрөл сонгох';

  @override
  String get selectParticipants => 'Оролцогчдыг сонгох';

  @override
  String get selectSentenceType => 'Өгүүлбэрийн төрөл сонгох';

  @override
  String get selectStudyMaterial => 'Сурах материал сонгох';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Өгүүлбэр';

  @override
  String get signUp => 'Бүртгүүлэх';

  @override
  String get similarTextFound => 'Ижил төстэй текст олдлоо';

  @override
  String get skip => 'Алгасах';

  @override
  String get source => 'Эх сурвалж:';

  @override
  String get sourceLanguage => 'Эх хэл';

  @override
  String get sourceLanguageLabel => 'Миний хэл (Source)';

  @override
  String get speakNow => 'Одоо ярина уу!';

  @override
  String get speaker => 'Яригч';

  @override
  String get speakerSelect => 'Яригчийг сонгох';

  @override
  String get speakingPractice => 'Ярих дадлага';

  @override
  String get startChat => 'Яриаг эхлүүлэх';

  @override
  String get startPractice => 'Дадлага эхлүүлэх';

  @override
  String get startTutorial => 'Хичээл эхлүүлэх';

  @override
  String get startWarning => 'Анхааруулга';

  @override
  String get startsWith => 'Эхний үсэг';

  @override
  String get statusCheckEmail =>
      'Имэйлээ шалгаж баталгаажуулалтаа дуусгана уу.';

  @override
  String statusDownloading(Object name) {
    return '$name татаж байна...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Импортлох ажиллагаа амжилтгүй боллоо: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name импортлох ажиллагаа амжилттай боллоо';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Нэвтрэх ажиллагаа цуцлагдсан.';

  @override
  String statusLoginFailed(Object error) {
    return 'Нэвтрэх ажиллагаа амжилтгүй боллоо: $error';
  }

  @override
  String get statusLoginSuccess => 'Нэвтрэх ажиллагаа амжилттай боллоо.';

  @override
  String get statusLogoutSuccess => 'Таныг амжилттай гарлаа.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Бүртгүүлэх ажиллагаа амжилтгүй боллоо: $error';
  }

  @override
  String get statusSigningUp => 'Бүртгүүлж байна...';

  @override
  String get stopPractice => 'Дадлага зогсоох';

  @override
  String get studyComplete => 'Суралцаж дууслаа';

  @override
  String studyRecords(int count) {
    return 'Сурах бичлэг ($count)';
  }

  @override
  String get styleFormal => 'Албан ёсны';

  @override
  String get styleInformal => 'Энгийн';

  @override
  String get stylePolite => 'Найрсаг';

  @override
  String get styleSlang => 'Слэнг/Хар яриа';

  @override
  String get subject => 'Гарчиг:';

  @override
  String get swapLanguages => 'Хэл солих';

  @override
  String get switchToAi => 'AI горимд шилжих';

  @override
  String get switchToPartner => 'Хамтрагчийн горимд шилжих';

  @override
  String get syncingData => 'Мэдээлэл синхрончлогдож байна...';

  @override
  String get tabConversation => 'Яриа';

  @override
  String tabReview(int count) {
    return 'Давтах ($count)';
  }

  @override
  String get tabSentence => 'Өгүүлбэр';

  @override
  String get tabSpeaking => 'Ярих';

  @override
  String tabStudyMaterial(int count) {
    return 'Сурах материал ($count)';
  }

  @override
  String get tabWord => 'Үг';

  @override
  String get tagFormal => 'Хүндэтгэлийн хэл';

  @override
  String get tagSelection => 'Таг сонгох';

  @override
  String get targetLanguage => 'Зорилтот хэл';

  @override
  String get targetLanguageFilter => 'Зорилтот хэл шүүх:';

  @override
  String get targetLanguageLabel => 'Сурах хэл (Target)';

  @override
  String get thinkingTimeDesc => 'Зөв хариулт гарахын өмнө бодох хугацаа.';

  @override
  String get thinkingTimeInterval => 'Тоглуулах хугацаа';

  @override
  String get timeUp => 'Хугацаа дууслаа!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Гарчгийн шошго (Материалын сан)';

  @override
  String get tooltipDecrease => 'Багасгах';

  @override
  String get tooltipIncrease => 'Нэмэгдүүлэх';

  @override
  String get tooltipSearch => 'Хайх';

  @override
  String get tooltipSpeaking => 'Ярих';

  @override
  String get tooltipStudyReview => 'Сурах+Давтах';

  @override
  String totalRecords(int count) {
    return 'Нийт $count бичлэг (Бүгдийг харах)';
  }

  @override
  String get translate => 'Орчуулах';

  @override
  String get translating => 'Орчуулж байна...';

  @override
  String get translation => 'Орчуулга';

  @override
  String get translationComplete => 'Орчуулж дууслаа (Хадгалах шаардлагатай)';

  @override
  String translationFailed(String error) {
    return 'Орчуулж чадсангүй: $error';
  }

  @override
  String get translationLimitExceeded => 'Орчуулгын хязгаар хэтэрсэн';

  @override
  String get translationLimitMessage =>
      'Өдөрт үнэгүй орчуулга (5 удаа) дууссан байна.\\n\\nЗар үзэж 5 удааг нэн даруй цэнэглэх үү?';

  @override
  String get translationLoaded => 'Хадгалсан орчуулгыг орууллаа';

  @override
  String get translationRefilled => 'Орчуулгын тоо 5-аар цэнэглэгдлээ!';

  @override
  String get translationResultHint => 'Орчуулгын үр дүн - засварлах боломжтой';

  @override
  String get tryAgain => 'Дахин оролдох';

  @override
  String get tutorialAiChatDesc =>
      'AI дүртэй бодит ярианы дадлага хийж үзээрэй.';

  @override
  String get tutorialAiChatTitle => 'AI чат';

  @override
  String get tutorialContextDesc =>
      'Ижил өгүүлбэр байсан ч нөхцөл (Жишээ нь: Өглөө, орой) бичсэнээр тусад нь хадгалах боломжтой.';

  @override
  String get tutorialContextTitle => 'Нөхцөл/Утга санааны таг';

  @override
  String get tutorialLangSettingsDesc =>
      'Орчуулах эх хэл болон зорилтот хэлийг тохируулна.';

  @override
  String get tutorialLangSettingsTitle => 'Хэлний тохиргоо';

  @override
  String get tutorialM1ToggleDesc =>
      'Үг болон өгүүлбэр горимыг эндээс сольж болно.';

  @override
  String get tutorialM1ToggleTitle => 'Үг/Өгүүлбэр горим';

  @override
  String get tutorialM2DropdownDesc =>
      'Дээд цэсээр дамжуулан сурах материалаа сонгох боломжтой.';

  @override
  String get tutorialM2ImportDesc =>
      'Төхөөрөмжийн фолдероос JSON файлыг оруулах.';

  @override
  String get tutorialM2ListDesc =>
      'Энэ картыг удаан дарснаар (Long Click) устгах боломжтой. Хадгалсан өгүүлбэрийг шалгаж эргүүлж үзээрэй.';

  @override
  String get tutorialM2ListTitle => 'Сурах жагсаалт';

  @override
  String get tutorialM2SearchDesc =>
      'Хадгалагдсан үг, өгүүлбэрийг хайж хурдан олох боломжтой.';

  @override
  String get tutorialM2SelectDesc =>
      'Дээд талын апп баар дээрх цуглуулгын дүрс (📚)-г дарж сурах материалаа сонгоно уу.';

  @override
  String get tutorialM2SelectTitle => 'Материал сонгох';

  @override
  String get tutorialM3IntervalDesc =>
      'Өгүүлбэр хоорондын хүлээх хугацааг тохируулна.';

  @override
  String get tutorialM3IntervalTitle => 'Завсар тохируулах';

  @override
  String get tutorialM3ResetDesc =>
      'Ахиц болон нарийвчлалын оноог анхны байдалд оруулж эхнээс нь дахин эхлүүлнэ.';

  @override
  String get tutorialM3ResetTitle => 'Түүхийг анхны байдалд оруулах';

  @override
  String get tutorialM3SelectDesc =>
      'Дээд талын апп баар дээрх цуглуулгын дүрс (📚)-г дарж дадлага хийх материалаа сонгоно уу.';

  @override
  String get tutorialM3SelectTitle => 'Материал сонгох';

  @override
  String get tutorialM3StartDesc =>
      'Тоглуулах товчлуурыг дарж эх хэлээр ярьж буй дууг сонсоод дагана уу.';

  @override
  String get tutorialM3StartTitle => 'Дадлага эхлүүлэх';

  @override
  String get tutorialM3WordsDesc =>
      'Чеклэвэл зөвхөн хадгалсан үгсийг дадлага хийнэ.';

  @override
  String get tutorialM3WordsTitle => 'Үг дадлага хийх';

  @override
  String get tutorialMicDesc =>
      'Микрофон товчлуурыг дарж дуугаар оруулах боломжтой.';

  @override
  String get tutorialMicTitle => 'Дуут оруулах';

  @override
  String get tutorialSaveDesc =>
      'Орчуулсан үр дүнг сургалтын түүхэнд хадгалаарай.';

  @override
  String get tutorialSaveTitle => 'Хадгалах';

  @override
  String get tutorialSwapDesc =>
      'Миний хэл болон сурах хэлийг хооронд нь солино.';

  @override
  String get tutorialTabDesc => 'Эндээс хүссэн сурах горимоо сонгох боломжтой.';

  @override
  String get tutorialTapToContinue => 'Дэлгэцийг дарж үргэлжлүүлэх';

  @override
  String get tutorialTransDesc => 'Оруулсан текстийг орчуулна.';

  @override
  String get tutorialTransTitle => 'Орчуулах';

  @override
  String get typeExclamation => 'Уулга алдах';

  @override
  String get typeImperative => 'Тушаах үг';

  @override
  String get typeQuestion => 'Асуулт';

  @override
  String get typeStatement => 'Мэдэгдэл';

  @override
  String get usageLimitTitle => 'Хязгаарт хүрсэн';

  @override
  String get useExistingText => 'Одоо байгаа текстийг ашиглах';

  @override
  String get viewOnlineGuide => 'Онлайн гарын авлага үзэх';

  @override
  String get voluntaryTranslations => 'Сайн дурын орчуулга';

  @override
  String get watchAdAndRefill => 'Зар үзэж цэнэглэх (+5 удаа)';

  @override
  String get word => 'Үг';

  @override
  String get wordDefenseDesc =>
      'Дайсан ирэхээс өмнө үгийг хэлж баазыг хамгаалаарай.';

  @override
  String get wordDefenseTitle => 'Үг хамгаалах';

  @override
  String get wordModeLabel => 'Үгийн горим';

  @override
  String get yourPronunciation => 'Миний дуудлага';

  @override
  String get ttsUnsupportedNatively =>
      'Энэ хэлээр яриа үүсгэх нь таны төхөөрөмжийн тохиргоогоор дэмжигдэхгүй байна.';

  @override
  String get homeTab => 'Орчуулга';

  @override
  String get welcomeTitle => 'Talkie-д тавтай морил!';

  @override
  String get welcomeDesc =>
      'Talkie-д тавтай морил! Бид дэлхийн 80 гаруй хэлийг 100% бүрэн дэмждэг бөгөөд шинэ дээд зэрэглэлийн 3D дизайн болон оновчтой гүйцэтгэлээр танд төгс суралцах туршлагыг санал болгож байна.';

  @override
  String get welcomeButton => 'Эхлэх';

  @override
  String get labelDetails => 'Дэлгэрэнгүй тохиргоо';

  @override
  String get translationResult => 'Орчуулгын үр дүн';

  @override
  String get inputContent => 'Оруулах агуулга';

  @override
  String get translateNow => 'Орчуулах';

  @override
  String get tooltipSettingsConfirm => 'Тохиргоог баталгаажуулах';

  @override
  String get hintNoteExample =>
      'Жишээ нь: Нөхцөл байдал, ижил утгатай үгс гэх мэт';

  @override
  String get hintTagExample => 'Жишээ нь: Бизнес, аялал...';

  @override
  String get addNew => 'Шинээр нэмэх';

  @override
  String get newNotebookTitle => 'Шинэ дэвтэрийн нэр';

  @override
  String get enterNameHint => 'Нэр оруулна уу';

  @override
  String get add => 'Нэмэх';

  @override
  String get openSettings => 'Тохиргоог нээх';

  @override
  String get helpNotebook => 'Орчуулгын үр дүнг хадгалах хавтас сонгоно уу.';

  @override
  String get helpNote =>
      'Үгийн утга, жишээ, нөхцөл байдлыг чөлөөтэй тэмдэглээрэй.';

  @override
  String get helpTag => 'Дараа нь ангилах эсвэл хайх түлхүүр үгээ оруулна уу.';

  @override
  String get requestTranslation => 'Орчуулга хүсэх';

  @override
  String get statusRequestSuccess => 'Орчуулгын хүсэлт амжилттай боллоо.';

  @override
  String statusRequestFailed(String error) {
    return 'Орчуулгын хүсэлт амжилтгүй: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Суралцах хэл дэмжигдэхгүй байна';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Таны сонгосон материал нь одоогоор тохируулсан суралцах хэл ($targetLang)-ийг дэмжихгүй байгаа тул локал хадгалах боломжгүй. Орчуулга хүсэх үү?';
  }
}

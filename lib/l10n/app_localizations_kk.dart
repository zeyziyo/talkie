// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get accuracy => 'Дәлдік';

  @override
  String get ttsMissing =>
      'Бұл тіл үшін дыбыстық қозғалтқыш құрылғыда орнатылмаған.';

  @override
  String get ttsInstallGuide =>
      'Android параметрлері > Google TTS бөлімінде тіл деректерін орнатыңыз.';

  @override
  String get adLoading =>
      'Жарнама жүктелуде. Бірнеше секундтан кейін қайталап көріңіз.';

  @override
  String get addNewSubject => 'Жаңа атауды қосу';

  @override
  String get addParticipant => 'Қатысушы қосу';

  @override
  String get addTagHint => 'Тег қосу...';

  @override
  String get alreadyHaveAccount => 'Аккаунтыңыз бар ма?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Автоматты ойнату';

  @override
  String get basic => 'Негізгі';

  @override
  String get basicDefault => 'Негізгі';

  @override
  String get basicMaterialRepository => 'Негізгі сөйлем/сөз сақтау орны';

  @override
  String get basicSentenceRepository => 'Негізгі сөйлем сақтау орны';

  @override
  String get basicSentences => 'Негізгі сөйлем сақтау орны';

  @override
  String get basicWordRepository => 'Негізгі сөз сақтау орны';

  @override
  String get basicWords => 'Негізгі сөз сақтау орны';

  @override
  String get cancel => 'Болдырмау';

  @override
  String get caseObject => 'Барыс септік';

  @override
  String get casePossessive => 'Ілік септік';

  @override
  String get casePossessivePronoun => 'Тәуелдік есімдік';

  @override
  String get caseReflexive => 'Өздік есімдік';

  @override
  String get caseSubject => 'Атау септік';

  @override
  String get chatAiChat => 'Чат';

  @override
  String get chatAllConversations => 'Барлық сұхбаттар';

  @override
  String get chatChoosePersona => 'Persona таңдау';

  @override
  String get chatEndMessage => 'Сөйлесуді аяқтағыңыз келе ме?';

  @override
  String get chatEndTitle => 'Сөйлесуді аяқтау және сақтау';

  @override
  String chatFailed(Object error) {
    return 'Чат сәтсіз аяқталды: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Сөйлесуден үзінді ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Сөйлесу тарихы';

  @override
  String get chatNew => 'Жаңа сөйлесу';

  @override
  String get chatNewChat => 'Жаңа сөйлесу';

  @override
  String get chatNoConversations => 'Әлі сөйлесулер жоқ';

  @override
  String get chatSaveAndExit => 'Сақтап шығу';

  @override
  String get chatStartNewPrompt =>
      'Жаттығу үшін жаңа сөйлесуді бастап көріңіз!';

  @override
  String get chatTypeHint => 'Хабарламаны енгізіңіз...';

  @override
  String get chatUntitled => 'Атаусыз сөйлесу';

  @override
  String get checking => 'Тексеру...';

  @override
  String get clearAll => 'Барлығын тазалау';

  @override
  String get confirm => 'Растау';

  @override
  String get confirmDelete => 'Бұл оқу жазбасын жойғыңыз келе ме?';

  @override
  String get confirmDeleteConversation =>
      'Бұл сұхбатты жойғыңыз келе ме?\nЖойылған сұхбатты қалпына келтіру мүмкін емес.';

  @override
  String get confirmDeleteParticipant => 'Осы қатысушыны өшіргіңіз келе ме?';

  @override
  String get contextTagHint => 'Кейін ажырату оңай болу үшін жағдайды жазыңыз';

  @override
  String get contextTagLabel =>
      'Мәтін мәні/Жағдай (міндетті емес) - Мысалы: таңғы сәлемдесу, сыпайы сөз';

  @override
  String get copiedToClipboard => 'Буферге көшірілді!';

  @override
  String get copy => 'Көшіру';

  @override
  String get correctAnswer => 'Дұрыс жауап';

  @override
  String get createNew => 'Жаңа сөйлеммен жалғастыру';

  @override
  String get currentLocation => 'Ағымдағы орналасу';

  @override
  String get currentMaterialLabel => 'Ағымдағы таңдалған материал:';

  @override
  String get delete => 'Жою';

  @override
  String deleteFailed(String error) {
    return 'Жою сәтсіз аяқталды: $error';
  }

  @override
  String get deleteRecord => 'Жазбаны жою';

  @override
  String get dialogueQuestDesc =>
      'Жағдайды көрсету арқылы диалогты жаттықтырыңыз. Тиісті жауапты таңдап, айтыңыз.';

  @override
  String get dialogueQuestTitle => 'Диалог квесті';

  @override
  String get disambiguationPrompt => 'Қандай мағынада аударғыңыз келеді?';

  @override
  String get disambiguationTitle => 'Мағынаны таңдау';

  @override
  String get dontHaveAccount => 'Аккаунтыңыз жоқ па?';

  @override
  String get editParticipant => 'Қатысушыны өзгерту';

  @override
  String get email => 'Электрондық пошта';

  @override
  String get emailAlreadyInUse =>
      'Бұл электрондық пошта тіркелген. Кіріңіз немесе құпия сөзді қалпына келтіріңіз.';

  @override
  String get enterNewSubjectName => 'Жаңа атауды енгізіңіз';

  @override
  String get enterSentenceHint => 'Сөйлемді енгізіңіз...';

  @override
  String get enterTextHint => 'Аударылатын мәтінді енгізіңіз';

  @override
  String get enterTextToTranslate => 'Аударылатын мәтінді енгізіңіз';

  @override
  String get enterWordHint => 'Сөзді енгізіңіз...';

  @override
  String get error => 'Қате';

  @override
  String get errorHateSpeech =>
      'Өшпенділік білдіретін сөздер бар болғандықтан аудару мүмкін емес.';

  @override
  String get errorOtherSafety =>
      'AI қауіпсіздік саясатына байланысты аударуға рұқсат етілмеді.';

  @override
  String get errorProfanity =>
      'Балағат сөздер бар болғандықтан аудару мүмкін емес.';

  @override
  String get errorSelectCategory => 'Алдымен сөзді немесе сөйлемді таңдаңыз!';

  @override
  String get errorSexualContent =>
      'Жалаңаштайтын мазмұны бар болғандықтан аудару мүмкін емес.';

  @override
  String get errors => 'Қателер:';

  @override
  String get female => 'Әйел';

  @override
  String get file => 'Файл:';

  @override
  String get filterAll => 'Барлығы';

  @override
  String get flip => 'Көрсету';

  @override
  String get formComparative => 'Салыстырмалы шырай';

  @override
  String get formInfinitive => 'Негізгі/Нақ осы шақ';

  @override
  String get formPast => 'Өткен шақ';

  @override
  String get formPastParticiple => 'Есімше';

  @override
  String get formPlural => 'Көпше';

  @override
  String get formPositive => 'Жай шырай';

  @override
  String get formPresent => 'Нақ осы шақ';

  @override
  String get formPresentParticiple => 'Ауыспалы осы шақ (ing)';

  @override
  String get formSingular => 'Жекеше';

  @override
  String get formSuperlative => 'Күшейтпелі шырай';

  @override
  String get formThirdPersonSingular => '3-жақ, жекеше';

  @override
  String get gameModeDesc => 'Жаттығуға арналған ойын режимін таңдаңыз';

  @override
  String get gameModeTitle => 'Ойын режимі';

  @override
  String get gameOver => 'Ойын аяқталды';

  @override
  String get gender => 'Жынысы';

  @override
  String get generalTags => 'Жалпы тегтер';

  @override
  String get getMaterials => 'Материалдарды алу';

  @override
  String get good => 'Жақсы';

  @override
  String get googleContinue => 'Google арқылы жалғастыру';

  @override
  String get helpDialogueImportDesc =>
      'Бүкіл диалогтар жинағын JSON файлы ретінде импорттау.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON құрылымы: `entries` орнына `dialogues` массивін пайдаланыңыз\n• Автоматты қалпына келтіру: диалог атауы, Persona, хабар реті қалпына келтіріледі.\n• Орналасуы: импортталған диалогтар AI Chat режимінің \'Тарих\' қойындысында пайда болады.';

  @override
  String get helpJsonDesc =>
      'Mode 3-те пайдалану үшін оқу материалын JSON файлы ретінде импорттау үшін келесі форматты орындаңыз:';

  @override
  String get helpJsonTypeDialogue => 'Диалог (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'Сөйлем (Sentence)';

  @override
  String get helpJsonTypeWord => 'Сөз (Word)';

  @override
  String get helpMode1Desc =>
      'Дауысты танып, аударып, нәтижесін тыңдай аласыз.';

  @override
  String get helpMode1Details =>
      '• Тілді орнату: тілді өзгерту үшін жоғарғы/төменгі белгішені басыңыз\n• Сөз/сөйлем ауыстырып қосқышы: режимді ауыстыру\n• Дауыс енгізу: тыңдауды бастау/тоқтату үшін микрофон белгішесін басыңыз\n• Мәтін енгізу: аудару үшін тікелей теріңіз\n• Автоматты іздеу: ұқсас бар сөйлемді анықтау\n• Аударма: бірден аудару үшін аудару батырмасын басыңыз\n• Тыңдау: TTS ойнату үшін динамик белгішесін пайдаланыңыз\n• Сақтау: \'Деректерді сақтау\' арқылы жазба қосыңыз\n• Тазалау: енгізуді бастапқы күйге келтіру';

  @override
  String get helpMode2Desc =>
      'Сақталған сөйлемдерді қарап шығып, автоматты жасыру функциясы арқылы есте сақтау туралы біліңіз.';

  @override
  String get helpMode2Details =>
      '• Деректер жинағын таңдау: Оң жақ жоғарғы мәзірден (⋮) «Оқу деректер жинағын таңдау» немесе «Онлайн деректер қорын» пайдаланыңыз.\n• Картаны аудару: «Көрсету/жасыру» арқылы аударманы тексеріңіз.\n• Тыңдау: Динамик белгішесі арқылы дыбыстауды ойнатыңыз.\n• Оқуды аяқтау: Белгішемен (V) оқуды аяқтауды өңдеңіз.\n• Жою: Жазбаны жою үшін картаны ұзақ басыңыз (Ұзақ шерту).\n• Іздеу және сүзгі: Іздеу жолағын (нақты уақыттағы смарт іздеу) және тегтерді, бастапқы әріп сүзгісін қолдау.';

  @override
  String get helpMode3Desc =>
      'Сөйлемді тыңдап, қайталап (Shadowing) айту арқылы дауысталуды жаттықтырыңыз.';

  @override
  String get helpMode3Details =>
      '• Материалды таңдау: оқуға арналған материалды таңдау\n• Аралықты орнату: сөйлемдер арасындағы күту уақытын реттеу үшін [-] [+] батырмаларын пайдаланыңыз (3 секундтан 60 секундқа дейін)\n• Бастау/Тоқтату: Shadowing сеансын басқару\n• Сөйлеу: дауысты тыңдап, қайталап айтыңыз\n• Кері байланыс: дәлдік көрсеткіші (0-100) және түс дисплейі\n• Іздеу шарттары: тегтер, соңғы элементтер, басталатын әріптер арқылы жаттығу мақсатын сүзгілеу';

  @override
  String get helpModeChatDesc =>
      'AI персонасымен сөйлесіп, іс жүзіндегі сөйлеуді жаттықтырыңыз.';

  @override
  String get helpModeChatDetails =>
      '• AI чаты: сөйлесуді жаттықтыру үшін өз тіліңізде сөйлеңіз\n• Бірнеше Persona: сөйлесу көпіршігіндегі мәзір арқылы қарсыластың жынысын/тілін/атын өзгертуге болады\n• Серіктес қосу: жаңа сөйлесу серіктесін (+ батырмасы) қосу\n• GPS: ағымдағы орналасу негізіндегі жағдай\n• Автоматты сақтау: сөйлесу мазмұнын автоматты түрде аудару және сақтау';

  @override
  String get helpTabJson => 'JSON форматы';

  @override
  String get helpTabModes => 'Режимдерді түсіндіру';

  @override
  String get helpTabTour => 'Тәжірибе жасау';

  @override
  String get helpTitle => 'Анықтама & Нұсқаулық';

  @override
  String get helpTourDesc =>
      '**Ерекшеленген шеңбер** негізгі функцияларды көрсетеді.\n(Мысалы: **Ерекшеленген шеңбер** көрсеткен картаны жою үшін ұзақ басып тұруға болады.)';

  @override
  String get hide => 'Жасыру';

  @override
  String importAdded(int count) {
    return 'Қосылды: $count';
  }

  @override
  String get importComplete => 'Импорттау аяқталды';

  @override
  String get importDuplicateTitleError =>
      'Дәл осындай атауы бар материал бұрыннан бар. Атауын өзгертіп қайтадан байқап көріңіз.';

  @override
  String importErrorMessage(String error) {
    return 'Файлды импорттау сәтсіз аяқталды:\\n$error';
  }

  @override
  String get importFailed => 'Импорттау сәтсіз аяқталды';

  @override
  String importFile(String fileName) {
    return 'Файл: $fileName';
  }

  @override
  String get importJsonFile => 'JSON файлын импорттау';

  @override
  String get importJsonFilePrompt => 'JSON файлын импорттаңыз';

  @override
  String importSkipped(int count) {
    return 'Өткізіп жіберілді: $count';
  }

  @override
  String importTotal(int count) {
    return 'Барлығы: $count';
  }

  @override
  String get importing => 'Импорттау...';

  @override
  String get inputModeTitle => 'Енгізу';

  @override
  String intervalSeconds(int seconds) {
    return 'Аралық: $seconds секунд';
  }

  @override
  String get invalidEmail => 'Жарамды электрондық поштаны енгізіңіз.';

  @override
  String get kakaoContinue => 'Kakao арқылы жалғастыру';

  @override
  String get labelLangCode => 'Тіл коды (мысалы: en-US, ko-KR)';

  @override
  String get labelName => 'Аты';

  @override
  String get labelNote => 'Ескертпе';

  @override
  String get labelPOS => 'Сөз табы';

  @override
  String get labelRole => 'Рөл';

  @override
  String get labelSentence => 'Сөйлем';

  @override
  String get labelSentenceCollection => 'Сөйлемдер жинағы';

  @override
  String get labelSentenceType => 'Сөйлем түрі';

  @override
  String get labelShowMemorized => 'Аяқталған';

  @override
  String get labelType => 'Түрі:';

  @override
  String get labelWord => 'Сөз';

  @override
  String get labelWordbook => 'Сөздік';

  @override
  String get language => 'Тілі';

  @override
  String get languageSettings => 'Тілдік параметрлер';

  @override
  String get languageSettingsTitle => 'Тілдік параметрлер';

  @override
  String get libTitleFirstMeeting => 'Алғашқы кездесу';

  @override
  String get libTitleGreetings1 => 'Сәлемдесу 1';

  @override
  String get libTitleNouns1 => 'Зат есімдер 1';

  @override
  String get libTitleVerbs1 => 'Етістіктер 1';

  @override
  String get listen => 'Тыңдау';

  @override
  String get listening => 'Тыңдау...';

  @override
  String get loadingParticipants => 'Қатысушылар жүктелуде...';

  @override
  String get location => 'Орналасу';

  @override
  String get login => 'Кіру';

  @override
  String get logout => 'Шығу';

  @override
  String get logoutConfirmMessage => 'Ағымдағы құрылғыдан шыққыңыз келе ме?';

  @override
  String get logoutConfirmTitle => 'Шығу';

  @override
  String get male => 'Еркек';

  @override
  String get manageParticipants => 'Қатысушыларды басқару';

  @override
  String get manual => 'Қолмен енгізу';

  @override
  String get markAsStudied => 'Оқу белгісі';

  @override
  String get materialInfo => 'Материал туралы ақпарат';

  @override
  String get me => 'Мен';

  @override
  String get menuDeviceImport => 'Құрылғыдан материалды импорттау';

  @override
  String get menuHelp => 'Анықтама';

  @override
  String get menuLanguageSettings => 'Тіл параметрлері';

  @override
  String get menuOnlineLibrary => 'Онлайн кітапхана';

  @override
  String get menuSelectMaterialSet => 'Оқу материалдарының жинағын таңдау';

  @override
  String get menuSettings => 'Тілдік параметрлер';

  @override
  String get menuTutorial => 'Қолдану туралы нұсқаулық';

  @override
  String get menuWebDownload => 'Веб-сайт';

  @override
  String get metadataDialogTitle => 'Толық жіктеу';

  @override
  String get metadataFormType => 'Грамматикалық форма';

  @override
  String get metadataRootWord => 'Түбір (Root Word)';

  @override
  String get micButtonTooltip => 'Дауысты тануды бастау';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Қазір таңдалған материал: $name';
  }

  @override
  String get mode2Title => 'Қайталау';

  @override
  String get mode3Next => 'Келесі';

  @override
  String get mode3Start => 'Бастау';

  @override
  String get mode3Stop => 'Тоқтату';

  @override
  String get mode3TryAgain => 'Қайта көру';

  @override
  String get mySentenceCollection => 'меӊіӊ сөйлемдер жинағым';

  @override
  String get myWordbook => 'меӊіӊ сөздігім';

  @override
  String get neutral => 'Бейтарап';

  @override
  String get newSubjectName => 'Жаңа тақырыптың атауы';

  @override
  String get next => 'Келесі';

  @override
  String get noDialogueHistory => 'Сөйлесу тарихы жоқ.';

  @override
  String get noInternetWarningMic =>
      'Интернет байланысы жоқ. Оффлайн күйде дыбысты тану мүмкін болмауы мүмкін.';

  @override
  String get noInternetWarningTranslate =>
      'Интернет байланысы жоқ. Оффлайн күйде аудару мүмкін емес. Қайталау режимін пайдаланыңыз.';

  @override
  String get noMaterialsInCategory => 'Бұл санатта материалдар жоқ.';

  @override
  String get noParticipantsFound => 'Тіркелген қатысушы жоқ.';

  @override
  String get noRecords => 'Таңдалған тілде оқу жазбалары жоқ';

  @override
  String get noStudyMaterial => 'Оқу материалы жоқ.';

  @override
  String get noTextToPlay => 'Ойнататын мәтін жоқ';

  @override
  String get noTranslationToSave => 'Сақтайтын аударма жоқ';

  @override
  String get noVoiceDetected => 'Дауыс анықталмады';

  @override
  String get notSelected => '- Тандалмаған -';

  @override
  String get onlineLibraryCheckInternet =>
      'Интернет байланысын тексеріңіз немесе кейінірек қайталап көріңіз.';

  @override
  String get onlineLibraryLoadFailed => 'Материалдарды жүктеу сәтсіз аяқталды.';

  @override
  String get onlineLibraryNoMaterials => 'Материалдар жоқ.';

  @override
  String get participantDeleted => 'Қатысушы өшірілді.';

  @override
  String get participantRename => 'Қатысушының атын өзгерту';

  @override
  String get partner => 'Серіктес';

  @override
  String get partnerMode => 'Серіктес режимі';

  @override
  String get password => 'Құпия сөз';

  @override
  String get passwordTooShort => 'Құпия сөз 6 символдан кем болмауы керек.';

  @override
  String get perfect => 'Керемет!';

  @override
  String get personaFriend => 'Жергілікті дос';

  @override
  String get personaGuide => 'Саяхат нұсқаушысы';

  @override
  String get personaTeacher => 'Ағылшын тілі мұғалімі';

  @override
  String get playAgain => 'Қайтадан ойнау';

  @override
  String playbackFailed(String error) {
    return 'Ойнату сәтсіз аяқталды: $error';
  }

  @override
  String get playing => 'Ойнату...';

  @override
  String get posAdjective => 'Сын есім';

  @override
  String get posAdverb => 'Үстеу';

  @override
  String get posConjunction => 'Жалғаулық';

  @override
  String get posInterjection => 'Одағай';

  @override
  String get posNoun => 'Зат есім';

  @override
  String get posPreposition => 'Предлог/Жалғау';

  @override
  String get posPronoun => 'Есімдік';

  @override
  String get posVerb => 'Етістік';

  @override
  String get practiceModeTitle => 'Жаттығу';

  @override
  String get practiceWordsOnly => 'Тек сөздерді жаттықтыру';

  @override
  String progress(int current, int total) {
    return 'Прогресс: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Жақында жасалған $count элементті көру';
  }

  @override
  String recognitionFailed(String error) {
    return 'Дауысты тану сәтсіз аяқталды: $error';
  }

  @override
  String get recognized => 'Танылды';

  @override
  String get recognizedText => 'Танылған айтылу:';

  @override
  String get recordDeleted => 'Жазба жойылды';

  @override
  String get refresh => 'Жаңарту';

  @override
  String get reset => 'Қалпына келтіру';

  @override
  String get resetPracticeHistory => 'Жаттығу тарихын қалпына келтіру';

  @override
  String get retry => 'Қайтадан көру?';

  @override
  String get reviewAll => 'Толық қайталау';

  @override
  String reviewCount(int count) {
    return '$count рет қайталау';
  }

  @override
  String get reviewModeTitle => 'Қайталау';

  @override
  String get roleAi => 'Жасанды интеллект';

  @override
  String get roleThirdParty => 'Үшінші тарап';

  @override
  String get roleUser => 'Пайдаланушы';

  @override
  String get save => 'Сақтау';

  @override
  String get saveData => 'Деректерді сақтау';

  @override
  String saveFailed(String error) {
    return 'Сақтау сәтсіз аяқталды: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Іздеу режимінде аудармаларды сақтап көріңіз';

  @override
  String get saved => 'Сақтау аяқталды';

  @override
  String get saving => 'Сақтау...';

  @override
  String score(String score) {
    return 'Дәлдік: $score%';
  }

  @override
  String get scoreLabel => 'Ұпай';

  @override
  String get search => 'Іздеу';

  @override
  String get searchConditions => 'Іздеу шарттары';

  @override
  String get searchSentenceHint => 'Сөйлемді іздеу...';

  @override
  String get searchWordHint => 'Сөзді іздеу...';

  @override
  String get sectionSentence => 'Сөйлем бөлімі';

  @override
  String get sectionSentences => 'Сөйлемдер';

  @override
  String get sectionWord => 'Сөз бөлімі';

  @override
  String get sectionWords => 'Сөздер';

  @override
  String get selectExistingSubject => 'Бар атауды таңдау';

  @override
  String get selectMaterialPrompt => 'Оқу материалын таңдаңыз';

  @override
  String get selectMaterialSet => 'Оқу материалдарының жинағын таңдау';

  @override
  String get selectPOS => 'Сөз таптарын таңдау';

  @override
  String get selectParticipants => 'Қатысушыларды таңдау';

  @override
  String get selectSentenceType => 'Сөйлем түрін таңдау';

  @override
  String get selectStudyMaterial => 'Оқу материалын таңдау';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Сөйлем';

  @override
  String get signUp => 'Тіркелу';

  @override
  String get similarTextFound => 'Ұқсас мәтін табылды';

  @override
  String get skip => 'Өткізіп жіберу';

  @override
  String get source => 'Дереккөз:';

  @override
  String get sourceLanguage => 'Бастапқы тіл';

  @override
  String get sourceLanguageLabel => 'Менің тілім (Source)';

  @override
  String get speakNow => 'Қазір сөйлеңіз!';

  @override
  String get speaker => 'Дыбыстаушы';

  @override
  String get speakerSelect => 'Сөйлеушіні таңдау';

  @override
  String get speakingPractice => 'Сөйлеу жаттығуы';

  @override
  String get startChat => 'Сөйлесуді бастау';

  @override
  String get startPractice => 'Жаттығуды бастау';

  @override
  String get startTutorial => 'Оқулықты бастау';

  @override
  String get startWarning => 'Ескерту';

  @override
  String get startsWith => 'Басталатын әріптер';

  @override
  String get statusCheckEmail =>
      'Электрондық поштаңызды тексеріп, растауды аяқтаңыз.';

  @override
  String statusDownloading(Object name) {
    return 'Жүктелуде: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Импорттау сәтсіз аяқталды: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name импорттау аяқталды';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Кіру тоқтатылды.';

  @override
  String statusLoginFailed(Object error) {
    return 'Кіру сәтсіз аяқталды: $error';
  }

  @override
  String get statusLoginSuccess => 'Кіру сәтті аяқталды.';

  @override
  String get statusLogoutSuccess => 'Шығу аяқталды.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Тіркелу сәтсіз аяқталды: $error';
  }

  @override
  String get statusSigningUp => 'Тіркелуде...';

  @override
  String get stopPractice => 'Жаттығуды тоқтату';

  @override
  String get studyComplete => 'Оқу аяқталды';

  @override
  String studyRecords(int count) {
    return 'Оқу жазбалары ($count)';
  }

  @override
  String get styleFormal => 'Ресми';

  @override
  String get styleInformal => 'Бейресми';

  @override
  String get stylePolite => 'Сыпайы';

  @override
  String get styleSlang => 'Сленг/Жаргон';

  @override
  String get subject => 'Тақырып:';

  @override
  String get swapLanguages => 'Тілдерді ауыстыру';

  @override
  String get switchToAi => 'AI режиміне ауысу';

  @override
  String get switchToPartner => 'Серіктес режиміне ауысу';

  @override
  String get syncingData => 'Деректер синхрондалуда...';

  @override
  String get tabConversation => 'Сөйлесу';

  @override
  String tabReview(int count) {
    return 'Қайталау ($count)';
  }

  @override
  String get tabSentence => 'Сөйлем';

  @override
  String get tabSpeaking => 'Сөйлеу';

  @override
  String tabStudyMaterial(int count) {
    return 'Оқу материалы ($count)';
  }

  @override
  String get tabWord => 'Сөз';

  @override
  String get tagFormal => 'Сыпайы сөз';

  @override
  String get tagSelection => 'Тегті таңдау';

  @override
  String get targetLanguage => 'Мақсатты тіл';

  @override
  String get targetLanguageFilter => 'Мақсатты тіл сүзгісі:';

  @override
  String get targetLanguageLabel => 'Оқылатын тіл (Target)';

  @override
  String get thinkingTimeDesc => 'Жауап жарияланғанға дейін ойлану уақыты.';

  @override
  String get thinkingTimeInterval => 'Ойнату аралығы';

  @override
  String get timeUp => 'Уақыт бітті!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Тақырып тегі (Материалдар жинағы)';

  @override
  String get tooltipDecrease => 'Төмендету';

  @override
  String get tooltipIncrease => 'Арттыру';

  @override
  String get tooltipSearch => 'Іздеу';

  @override
  String get tooltipSpeaking => 'Сөйлеу';

  @override
  String get tooltipStudyReview => 'Оқу+Қайталау';

  @override
  String totalRecords(int count) {
    return 'Барлығы $count жазба (толық көру)';
  }

  @override
  String get translate => 'Аудару';

  @override
  String get translating => 'Аудару...';

  @override
  String get translation => 'Аударма';

  @override
  String get translationComplete => 'Аударма аяқталды (сақтау керек)';

  @override
  String translationFailed(String error) {
    return 'Аударма сәтсіз аяқталды: $error';
  }

  @override
  String get translationLimitExceeded => 'Аударма шегінен асып кетті';

  @override
  String get translationLimitMessage =>
      'Күнделікті тегін аударманы (5 рет) толығымен пайдаландыңыз.\\n\\nЖарнаманы көріп, 5 рет тез арада толтырғыңыз келе ме?';

  @override
  String get translationLoaded => 'Сақталған аударма жүктелді';

  @override
  String get translationRefilled => 'Аударма саны 5 ретке толтырылды!';

  @override
  String get translationResultHint => 'Аударма нәтижесі - өзгертуге болады';

  @override
  String get tryAgain => 'Қайтадан көріңіз';

  @override
  String get tutorialAiChatDesc =>
      'AI Persona-мен нақты өмірлік сөйлесуді жаттықтырып көріңіз.';

  @override
  String get tutorialAiChatTitle => 'AI чат';

  @override
  String get tutorialContextDesc =>
      'Егер бір сөйлемнің өзінде жағдайды жазсаңыз (мысалы, таңертең, кешке), оны бөлек сақтауға болады.';

  @override
  String get tutorialContextTitle => 'Жағдай/Мәтін мәні тегі';

  @override
  String get tutorialLangSettingsDesc =>
      'Аударылатын бастапқы тіл мен мақсатты тілді орнатады.';

  @override
  String get tutorialLangSettingsTitle => 'Тілдік параметрлер';

  @override
  String get tutorialM1ToggleDesc =>
      'Сөз бен сөйлем режимдерін мұнда ауыстырыңыз.';

  @override
  String get tutorialM1ToggleTitle => 'Сөз/Сөйлем режимі';

  @override
  String get tutorialM2DropdownDesc =>
      'Жоғарғы мәзір арқылы оқуға арналған материалды таңдауға болады.';

  @override
  String get tutorialM2ImportDesc =>
      'Құрылғы қалтасынан JSON файлын импорттайды.';

  @override
  String get tutorialM2ListDesc =>
      'Егер осы картаны ұзақ басып тұрсаңыз (Ұзақ басу), оны жоюға болады. Сақталған сөйлемді тексеріп, аударыңыз.';

  @override
  String get tutorialM2ListTitle => 'Оқу тізімі';

  @override
  String get tutorialM2SearchDesc =>
      'Сақталған сөздер мен сөйлемдерді іздеп, тез табуға болады.';

  @override
  String get tutorialM2SelectDesc =>
      'Оқуға арналған материалды таңдау үшін жоғарғы қолданбалы тақтадағы материал белгішесін (📚) басыңыз.';

  @override
  String get tutorialM2SelectTitle => 'Материалды таңдау';

  @override
  String get tutorialM3IntervalDesc =>
      'Сөйлемдер арасындағы күту уақытын реттейді.';

  @override
  String get tutorialM3IntervalTitle => 'Аралықты орнату';

  @override
  String get tutorialM3ResetDesc =>
      'Прогресс пен дәлдік көрсеткішін қалпына келтіріп, басынан бастаңыз.';

  @override
  String get tutorialM3ResetTitle => 'Тарихты қалпына келтіру';

  @override
  String get tutorialM3SelectDesc =>
      'Жаттығуға арналған материалды таңдау үшін жоғарғы қолданбалы тақтадағы материал белгішесін (📚) басыңыз.';

  @override
  String get tutorialM3SelectTitle => 'Материалды таңдау';

  @override
  String get tutorialM3StartDesc =>
      'Түпнұсқа тілде дыбысты тыңдау және қайталау үшін ойнату батырмасын басыңыз.';

  @override
  String get tutorialM3StartTitle => 'Жаттығуды бастау';

  @override
  String get tutorialM3WordsDesc =>
      'Егер белгілесеңіз, сақталған сөздерді ғана жаттықтырасыз.';

  @override
  String get tutorialM3WordsTitle => 'Сөздерді жаттықтыру';

  @override
  String get tutorialMicDesc =>
      'Дауыспен енгізу үшін микрофон батырмасын басуға болады.';

  @override
  String get tutorialMicTitle => 'Дауысты енгізу';

  @override
  String get tutorialSaveDesc => 'Аударылған нәтижені оқу жазбасына сақтаңыз.';

  @override
  String get tutorialSaveTitle => 'Сақтау';

  @override
  String get tutorialSwapDesc => 'Менің тілім мен оқылатын тілді ауыстырады.';

  @override
  String get tutorialTabDesc => 'Мұнда қалаған оқу режимін таңдауға болады.';

  @override
  String get tutorialTapToContinue => 'Жалғастыру үшін экранды түртіңіз';

  @override
  String get tutorialTransDesc => 'Енгізілген мәтінді аударады.';

  @override
  String get tutorialTransTitle => 'Аудару';

  @override
  String get typeExclamation => 'Лепті сөйлем';

  @override
  String get typeImperative => 'Бұйрықты сөйлем';

  @override
  String get typeQuestion => 'Сұраулы сөйлем';

  @override
  String get typeStatement => 'Хабарлы сөйлем';

  @override
  String get usageLimitTitle => 'Шекке жетті';

  @override
  String get useExistingText => 'Бар мәтінді пайдалану';

  @override
  String get viewOnlineGuide => 'Онлайн нұсқауды көру';

  @override
  String get voluntaryTranslations => 'Ерікті аудармалар';

  @override
  String get watchAdAndRefill => 'Жарнаманы көріп толтыру (+5 рет)';

  @override
  String get word => 'Сөз';

  @override
  String get wordDefenseDesc =>
      'Жау келмес бұрын сөзді айтып, базаны қорғаңыз.';

  @override
  String get wordDefenseTitle => 'Сөзді қорғау';

  @override
  String get wordModeLabel => 'Сөз режимі';

  @override
  String get yourPronunciation => 'Сіздің айтылуыңыз';

  @override
  String get ttsUnsupportedNatively =>
      'Бұл тілді осы құрылғының параметрлеріндегі дауыстық шығыс қолдамайды.';

  @override
  String get welcomeTitle => 'Talkie-ге қош келдіңіз!';

  @override
  String get welcomeDesc =>
      'Talkie 80-нен астам тілді қолдайды және саяхатшыларға арналған ақылды аударма құралы болып табылады. AI Chat арқылы сөйлеу дағдыларыңызды арттырыңыз!';

  @override
  String get welcomeButton => 'Бастау';
}

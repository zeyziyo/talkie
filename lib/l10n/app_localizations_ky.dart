// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'Kakao менен улантуу';

  @override
  String get logout => 'Logout';

  @override
  String get logoutConfirmTitle => 'Logout';

  @override
  String get logoutConfirmMessage =>
      'Are you sure you want to logout from this device?';

  @override
  String get syncingData => 'Syncing data...';

  @override
  String get helpTitle => 'Жардам жана колдонмо';

  @override
  String get helpTabModes => 'Режимдерди түшүндүрүү';

  @override
  String get helpTabJson => 'JSON форматы';

  @override
  String get helpTabTour => 'Саякаттоо';

  @override
  String get helpMode1Desc =>
      'Үндү таануу аркылуу которуп, жыйынтыгын угууга болот.';

  @override
  String get helpMode1Details =>
      '• Тилди жөндөө: жогорку/төмөнкү белгини басып тилди өзгөртүү\n• Сөз/сөйлөм которгучу: режимди которуу\n• Үн киргизүү: микрофон белгисин басып угууну баштоо/токтотуу\n• Текст киргизүү: түз киргизип которуу\n• Автоматтык издөө: окшош мурунку сүйлөмдөрдү табуу\n• Которуу: которуу баскычын басып дароо которуу\n• Угуу: спикер белгиси менен TTS ойнотуу\n• Сактоо: \'Маалыматтарды сактоо\' менен жазууну кошуу\n• Тазалоо: киргизүүнү баштапкы абалга келтирүү';

  @override
  String get helpMode2Desc =>
      'Сакталган сүйлөмдөрдү кайталап, автоматтык жашыруу функциясы менен эске тутууну текшериңиз.';

  @override
  String get helpMode2Details =>
      '• Материалды тандоо: белгилүү бир жыйнакты же \'Толугу менен кайталоону\' тандоо\n• Картты оодаруу: \'Көрсөтүү/Жашыруу\' менен котормону текшерүү (автоматтык үйрөнүү белгиси)\n• Угуу: сүйлөмдү TTS ойнотуу\n• Үйрөнүү аяктады: белгилөө (V) менен үйрөнүү аяктады\n• Өчүрүү: жазууну өчүрүү үчүн картты узакка басыңыз\n• Издөө шарттары: тэг, акыркы элемент, баштапкы тамга боюнча чыпкалоо';

  @override
  String get helpMode3Desc =>
      'Сүйлөмдү угуп, кайталап (көмүскөдө) айтуу менен айтылышыңызды машыктырыңыз.';

  @override
  String get helpMode3Details =>
      '• Материалды тандоо: үйрөнө турган жыйнакты тандоо\n• Аралыкты жөндөө: [-] [+] баскычтары менен сүйлөмдөрдүн арасындагы күтүү убактысын жөндөө (3 секунд ~ 60 секунд)\n• Баштоо/токтотуу: көлөкөлөө сессиясын башкаруу\n• Сүйлөө: үндү угуп кайталап айтуу\n• Кайтарым байланыш: тактык упайы (0-100) жана түс белгиси\n• Издөө шарттары: тэг, акыркы элемент, баштапкы тамга боюнча машыгуу объектисин чыпкалоо';

  @override
  String get helpModeChatDesc =>
      'AI персона менен сүйлөшүп, чыныгы сүйлөшүүнү машыктырыңыз.';

  @override
  String get helpModeChatDetails =>
      '• AI чат: өзүңүздүн тилиңизде сүйлөп сүйлөшүүнү машыктырыңыз\n• Көп Persona: көбүкчөнүн үстүндөгү меню менен оппоненттин жынысын/тилин/атын өзгөртүүгө болот\n• Өнөктөштү кошуу: + баскычы менен жаңы сүйлөшүү өнөктөшүн (бейтааныш адамды) кошуу\n• GPS: учурдагы жайгашкан жерге негизделген кырдаалдык драма\n• Автоматтык сактоо: сүйлөшүүнүн мазмунун автоматтык которуу жана сактоо';

  @override
  String get helpJsonDesc =>
      '3-режимде колдонула турган окуу материалдарын JSON файлы катары импорттоо үчүн, төмөнкү форматты аткарыңыз:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'JSON файлы менен толук сүйлөшүү топтомун импорттоо.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON структурасы: `entries` ордуна `dialogues` массивин колдонуңуз\n• Автоматтык калыбына келтирүү: сүйлөшүүнүн аталышы, Persona, билдирүүлөрдүн ирети калыбына келтирилет.\n• Жайгашкан жер: импорттолгон сүйлөшүү AI чат режиминин \'Жазуулар\' кошумча барагында пайда болот.';

  @override
  String get helpTourDesc =>
      '**Урунттуу тегерек** негизги функцияларды көрсөтөт.\n(Мисалы: **Урунттуу тегерек** көрсөткөн картты узакка басып өчүрүүгө болот.)';

  @override
  String get partnerMode => 'Өнөктөш режими';

  @override
  String get manual => 'Кол менен киргизүү';

  @override
  String get speaker => 'Сүйлөгөн адам';

  @override
  String get switchToAi => 'AI режимине которулуу';

  @override
  String get switchToPartner => 'Өнөктөш режимине которулуу';

  @override
  String get currentLocation => 'Учурдагы жайгашкан жер';

  @override
  String get location => 'Жайгашкан жер';

  @override
  String get partner => 'Өнөктөш';

  @override
  String get me => 'Мен';

  @override
  String get currentMaterialLabel => 'Учурда тандалган жыйнак:';

  @override
  String get basicMaterialRepository => 'Негизги сүйлөм/сөз сактагычы';

  @override
  String get word => 'Сөз';

  @override
  String get sentence => 'Сүйлөм';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Кайталоо ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Окуу материалы ($count)';
  }

  @override
  String get mode2Title => 'Кайталоо';

  @override
  String get search => 'Издөө';

  @override
  String get translate => 'Которуу';

  @override
  String get listen => 'Угуу';

  @override
  String get saveData => 'Маалыматтарды сактоо';

  @override
  String get saved => 'Сакталды';

  @override
  String get delete => 'Өчүрүү';

  @override
  String get materialInfo => 'Материал тууралуу маалымат';

  @override
  String get cancel => 'Артка';

  @override
  String get confirm => 'Ырастоо';

  @override
  String get refresh => 'Жаңыртуу';

  @override
  String studyRecords(int count) {
    return 'Окуу жазуулары ($count)';
  }

  @override
  String get targetLanguageFilter => 'Максаттуу тил чыпкасы:';

  @override
  String get noRecords => 'Тандалган тилде окуу жазуулары жок';

  @override
  String get saveTranslationsFromSearch =>
      'Издөө режиминде котормолорду сактап көрүңүз';

  @override
  String get flip => 'Көрсөтүү';

  @override
  String get hide => 'Жашыруу';

  @override
  String get deleteRecord => 'Жазууну өчүрүү';

  @override
  String get confirmDelete => 'Бул окуу жазуусун өчүргүңүз келеби?';

  @override
  String get recordDeleted => 'Жазуу өчүрүлдү';

  @override
  String deleteFailed(String error) {
    return 'Өчүрүү ишке ашкан жок: $error';
  }

  @override
  String get importJsonFile => 'JSON файлын жүктөө';

  @override
  String get importing => 'Жүктөлүүдө...';

  @override
  String get importComplete => 'Жүктөө аяктады';

  @override
  String get importFailed => 'Жүктөө ишке ашкан жок';

  @override
  String importFile(String fileName) {
    return 'Файл: $fileName';
  }

  @override
  String get addParticipant => 'Add Participant';

  @override
  String get editParticipant => 'Edit Participant';

  @override
  String get labelRole => 'Role';

  @override
  String get labelLangCode => 'Language Code (e.g. en-US, ko-KR)';

  @override
  String get roleUser => 'User';

  @override
  String get roleAi => 'AI';

  @override
  String get participantDeleted => 'Participant deleted.';

  @override
  String get confirmDeleteParticipant =>
      'Are you sure you want to delete this participant?';

  @override
  String importTotal(int count) {
    return 'Бардыгы: $count даана';
  }

  @override
  String importAdded(int count) {
    return 'Кошулду: $count даана';
  }

  @override
  String importSkipped(int count) {
    return 'Өткөрүлдү: $count даана';
  }

  @override
  String get errors => 'Каталар:';

  @override
  String get error => 'Ката';

  @override
  String importErrorMessage(String error) {
    return 'Файлды жүктөө ишке ашкан жок:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get selectStudyMaterial => 'Окуу материалын тандоо';

  @override
  String get subject => 'Темасы:';

  @override
  String get source => 'Булагы:';

  @override
  String get file => 'Файл:';

  @override
  String progress(int current, int total) {
    return 'Жүрүшү: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'JSON файлын жүктөңүз';

  @override
  String get selectMaterialPrompt => 'Окуу материалын тандаңыз';

  @override
  String get studyComplete => 'Окуу аяктады';

  @override
  String get markAsStudied => 'Окуу белгиси';

  @override
  String get listening => 'Угулууда...';

  @override
  String get recognized => 'Таануу аяктады';

  @override
  String recognitionFailed(String error) {
    return 'Үндү таануу ишке ашкан жок: $error';
  }

  @override
  String get checking => 'Текшерилүүдө...';

  @override
  String get translating => 'Которулууда...';

  @override
  String get translationComplete => 'Которуу аяктады (сактоо керек)';

  @override
  String get translationLoaded => 'Сакталган котормо жүктөлдү';

  @override
  String translationFailed(String error) {
    return 'Которуу ишке ашкан жок: $error';
  }

  @override
  String get enterTextToTranslate => 'Которула турган текстти киргизиңиз';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => 'Сакталууда...';

  @override
  String get noTranslationToSave => 'Сактай турган котормо жок';

  @override
  String saveFailed(String error) {
    return 'Сактоо ишке ашкан жок: $error';
  }

  @override
  String get playing => 'Ойнотулууда...';

  @override
  String get noTextToPlay => 'Ойнотуу үчүн текст жок';

  @override
  String playbackFailed(String error) {
    return 'Ойнотуу ишке ашкан жок: $error';
  }

  @override
  String get sourceLanguage => 'Түпкү тил';

  @override
  String get targetLanguage => 'Максаттуу тил';

  @override
  String get similarTextFound => 'Окшош текст табылды';

  @override
  String get useExistingText => 'Мурунку текстти колдонуу';

  @override
  String get createNew => 'Жаңы сүйлөм менен улантуу';

  @override
  String reviewCount(int count) {
    return 'Кайталоо $count жолу';
  }

  @override
  String get tabSpeaking => 'Сүйлөө';

  @override
  String get speakingPractice => 'Сүйлөө көнүгүүсү';

  @override
  String intervalSeconds(int seconds) {
    return 'Аралык: $seconds секунд';
  }

  @override
  String get yourPronunciation => 'Менин айтылышым';

  @override
  String get correctAnswer => 'Туура жооп';

  @override
  String score(String score) {
    return 'Тактык: $score%';
  }

  @override
  String get perfect => 'Мыкты!';

  @override
  String get good => 'Жакшы';

  @override
  String get tryAgain => 'Дагы аракет кылыңыз';

  @override
  String get startPractice => 'Көнүгүүнү баштоо';

  @override
  String get stopPractice => 'Көнүгүүнү токтотуу';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Окутууну баштоо';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Үн киргизүү';

  @override
  String get tutorialMicDesc =>
      'Микрофон баскычын басып үн менен киргизүүгө болот.';

  @override
  String get tutorialTabDesc =>
      'Бул жерден каалаган окуу режимин тандай аласыз.';

  @override
  String get tutorialTapToContinue => 'Улантуу үчүн экранды басыңыз';

  @override
  String get tutorialTransTitle => 'Которуу';

  @override
  String get tutorialTransDesc => 'Киргизилген текстти которот.';

  @override
  String get tutorialSaveTitle => 'Сактоо';

  @override
  String get tutorialSaveDesc =>
      'Которулган жыйынтыкты окуу жазууларына сактаңыз.';

  @override
  String get selectParticipants => 'Select Participants';

  @override
  String get loadingParticipants => 'Loading participants...';

  @override
  String get noParticipantsFound => 'No participants found.';

  @override
  String get noInternetWarningMic =>
      'No internet connection. Voice recognition may not work offline.';

  @override
  String get noInternetWarningTranslate =>
      'No internet connection. Translation is unavailable offline. Please use Review mode.';

  @override
  String get noMaterialsInCategory => 'No materials in this category.';

  @override
  String get onlineLibraryLoadFailed => 'Failed to load materials.';

  @override
  String get onlineLibraryCheckInternet =>
      'Please check your internet connection or try again later.';

  @override
  String get onlineLibraryNoMaterials => 'No materials found.';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get startChat => 'Start Chat';

  @override
  String get manageParticipants => 'Manage Participants';

  @override
  String get tutorialAiChatTitle => 'AI чат';

  @override
  String get tutorialAiChatDesc =>
      'AI Persona менен иш жүзүндө сүйлөшүү көнүгүүсүн жасап көрүңүз.';

  @override
  String get tutorialM2SelectTitle => 'Материал тандоо';

  @override
  String get tutorialM2SelectDesc =>
      'Жогорку колдонмо тилкесиндеги жыйнак белгисин (📚) басып үйрөнө турган материалды тандаңыз.';

  @override
  String get tutorialM2ListTitle => 'Окуу тизмеси';

  @override
  String get tutorialM2ListDesc =>
      'Бул картты узакка бассаңыз (Long Click) өчүрүүгө болот. Сакталган сүйлөмдөрдү текшерип оодарыңыз.';

  @override
  String get tutorialM3SelectTitle => 'Материал тандоо';

  @override
  String get tutorialM3SelectDesc =>
      'Жогорку колдонмо тилкесиндеги жыйнак белгисин (📚) басып машыга турган материалды тандаңыз.';

  @override
  String get tutorialM3IntervalTitle => 'Аралыкты жөндөө';

  @override
  String get tutorialM3IntervalDesc =>
      'Сүйлөмдөрдүн ортосундагы күтүү убактысын жөндөйт.';

  @override
  String get tutorialM3StartTitle => 'Көнүгүүнү баштоо';

  @override
  String get tutorialM3StartDesc =>
      'Ойнотуу баскычын басып эне тилде сүйлөгөн адамдын үнүн угуп кайталаңыз.';

  @override
  String get startWarning => 'Эскертүү';

  @override
  String get noVoiceDetected => 'Үн аныкталган жок';

  @override
  String get tooltipSearch => 'Издөө';

  @override
  String get tooltipStudyReview => 'Окуу+Кайталоо';

  @override
  String get tooltipSpeaking => 'Сүйлөө';

  @override
  String get tooltipDecrease => 'Азайтуу';

  @override
  String get tooltipIncrease => 'Көбөйтүү';

  @override
  String get languageSettings => 'Тил жөндөөлөрү';

  @override
  String get tutorialM2DropdownDesc =>
      'Жогорку меню аркылуу үйрөнө турган материалды тандай аласыз.';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc =>
      'Түзмөктүн папкасынан JSON файлын жүктөп алыңыз.';

  @override
  String get tutorialLangSettingsTitle => 'Тил жөндөөлөрү';

  @override
  String get tutorialLangSettingsDesc =>
      'Которула турган түпкү тилди жана максаттуу тилди орнотуңуз.';

  @override
  String get copy => 'Көчүрүү';

  @override
  String get copiedToClipboard => 'Буферге көчүрүлдү!';

  @override
  String get tutorialContextTitle => 'Кырдаал/Контекст тэг';

  @override
  String get tutorialContextDesc =>
      'Ошол эле сүйлөм болсо дагы, кырдаалды (мисалы, эртең менен, кечинде) жазып койсоңуз, өзүнчө сактоого болот.';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get thinkingTimeDesc => 'Жооп жарыяланганга чейин ойлонууга убакыт.';

  @override
  String get autoPlay => 'Автоматтык ойнотуу';

  @override
  String get timeUp => 'Убакыт бүттү!';

  @override
  String get gameModeTitle => 'Оюн режими';

  @override
  String get gameModeDesc => 'Машыга турган оюн режимин тандаңыз';

  @override
  String get wordDefenseTitle => 'Сөз коргоо';

  @override
  String get wordDefenseDesc =>
      'Душман келгенге чейин сөздү айтып базаны коргоңуз.';

  @override
  String get dialogueQuestTitle => 'Сүйлөшүү тапшырмасы';

  @override
  String get dialogueQuestDesc =>
      'Кырдаалдык драма аркылуу сүйлөшүү көнүгүүсүн жасаңыз. Ылайыктуу жоопту тандап айтыңыз.';

  @override
  String get translation => 'Translation';

  @override
  String get labelType => 'Түрү:';

  @override
  String get labelWord => 'Сөз';

  @override
  String get labelSentence => 'Сүйлөм';

  @override
  String get contextTagLabel =>
      'Контекст/Кырдаал (милдеттүү эмес) - Мисалы: Эртең мененки салам, Сылык сөз';

  @override
  String get contextTagHint =>
      'Кийинчерээк айырмалоо оңой болушу үчүн кырдаалды жазыңыз';

  @override
  String get usageLimitTitle => 'Чектөөгө жетти';

  @override
  String get translationLimitExceeded => 'Которуу чегинен ашып кетти';

  @override
  String get translationLimitMessage =>
      'Күнүмдүк акысыз которууну (5 жолу) толугу менен колдондуңуз.\\n\\nЖарнаманы көрүп 5 жолу дароо толуктайсызбы?';

  @override
  String get watchAdAndRefill => 'Жарнама көрүп толтуруу (+5 жолу)';

  @override
  String get translationRefilled => 'Которуу саны 5 жолу толукталды!';

  @override
  String get adLoading =>
      'Жарнама жүктөлүүдө. Бир аздан кийин кайра аракет кылыңыз.';

  @override
  String get reviewAll => 'Толугу менен кайталоо';

  @override
  String totalRecords(int count) {
    return 'Жалпы $count жазуу (толугу менен көрүү)';
  }

  @override
  String get filterAll => 'Бардыгы';

  @override
  String get practiceWordsOnly => 'Сөздөрдү гана машыктыруу';

  @override
  String get resetPracticeHistory =>
      'Көнүгүү таржымалын баштапкы абалга келтирүү';

  @override
  String get retry => 'Кайра аракет кылуу?';

  @override
  String get noStudyMaterial => 'Окуу материалы жок.';

  @override
  String get gameOver => 'Оюн бүттү';

  @override
  String get playAgain => 'Кайра ойноо';

  @override
  String get speakNow => 'Азыр сүйлөңүз!';

  @override
  String get scoreLabel => 'Упай';

  @override
  String get viewOnlineGuide => 'Онлайн колдонмону көрүү';

  @override
  String get getMaterials => 'Материалдарды алуу';

  @override
  String get swapLanguages => 'Тилдерди алмаштыруу';

  @override
  String get next => 'Кийинки';

  @override
  String get wordModeLabel => 'Сөз режими';

  @override
  String get accuracy => 'Тактык';

  @override
  String get basicDefault => 'Негизги';

  @override
  String get basic => 'Негизги';

  @override
  String get tutorialM3WordsTitle => 'Сөз көнүгүүсү';

  @override
  String get tutorialM3WordsDesc =>
      'Белгилесеңиз, сакталган сөздөрдү гана машыктырасыз.';

  @override
  String get enterTextHint => 'Которула турган текстти киргизиңиз';

  @override
  String get micButtonTooltip => 'Үндү таанууну баштоо';

  @override
  String get menuHelp => 'Жардам';

  @override
  String get menuWebDownload => 'Веб-сайт';

  @override
  String get menuDeviceImport => 'Түзмөктөн материалдарды жүктөө';

  @override
  String get menuSettings => 'Тил жөндөөлөрү';

  @override
  String get basicWords => 'Негизги сөз сактагычы';

  @override
  String get basicSentences => 'Негизги сүйлөм сактагычы';

  @override
  String get selectMaterialSet => 'Окуу материалдар жыйнагын тандоо';

  @override
  String get sectionWords => 'Сөздөр';

  @override
  String get sectionSentences => 'Сүйлөмдөр';

  @override
  String get languageSettingsTitle => 'Тил жөндөөлөрү';

  @override
  String get sourceLanguageLabel => 'Менин тилим (Source)';

  @override
  String get targetLanguageLabel => 'Окуу тили (Target)';

  @override
  String get mode3Start => 'Баштоо';

  @override
  String get mode3Stop => 'Токтотуу';

  @override
  String get mode3Next => 'Кийинки';

  @override
  String get mode3TryAgain => 'Кайра аракет кылуу';

  @override
  String get tutorialM3ResetTitle => 'Жазууну баштапкы абалга келтирүү';

  @override
  String get tutorialSwapDesc =>
      'Менин тилимди жана окуу тилин бири-бирине алмаштырыңыз.';

  @override
  String get recognizedText => 'Таанылган айтылыш:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Жүрүштү жана тактык упайын баштапкы абалга келтирип, башынан баштаңыз.';

  @override
  String get menuSelectMaterialSet => 'Окуу материалдар жыйнагын тандоо';

  @override
  String get sectionWord => 'Сөз бөлүмү';

  @override
  String get sectionSentence => 'Сүйлөм бөлүмү';

  @override
  String get tabWord => 'Сөз';

  @override
  String get tabSentence => 'Сүйлөм';

  @override
  String get errorProfanity =>
      'Адепсиз сөздөр камтылгандыктан которуу мүмкүн эмес.';

  @override
  String get errorHateSpeech =>
      'Жеке көрө албастык сөздөр камтылгандыктан которуу мүмкүн эмес.';

  @override
  String get errorSexualContent =>
      'Уятсыз мазмун камтылгандыктан которуу мүмкүн эмес.';

  @override
  String get errorOtherSafety =>
      'AI коопсуздук саясатына байланыштуу которууга тыюу салынды.';

  @override
  String get clearAll => 'Баарын тазалоо';

  @override
  String get disambiguationTitle => 'Маанини тандоо';

  @override
  String get disambiguationPrompt => 'Кайсы мааниде которгуңуз келет?';

  @override
  String get skip => 'Өткөрүп жиберүү';

  @override
  String get inputModeTitle => 'Киргизүү';

  @override
  String get reviewModeTitle => 'Кайталоо';

  @override
  String get practiceModeTitle => 'Машыгуу';

  @override
  String get chatHistoryTitle => 'Сүйлөшүү таржымалы';

  @override
  String get chatNew => 'Жаңы сүйлөшүү';

  @override
  String get chatNewChat => 'Жаңы сүйлөшүү';

  @override
  String get chatChoosePersona => 'Persona тандоо';

  @override
  String get chatTypeHint => 'Билдирүүнү киргизиңиз...';

  @override
  String chatFailed(Object error) {
    return 'Чат ишке ашкан жок: $error';
  }

  @override
  String get chatNoConversations => 'Азырынча сүйлөшүү жок';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt =>
      'Көнүгүү үчүн жаңы сүйлөшүүнү баштап көрүңүз!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Сүйлөшүүдөн үзүндү ($speaker)';
  }

  @override
  String get personaTeacher => 'Англисче мугалим';

  @override
  String get personaGuide => 'Саякаттоочу гид';

  @override
  String get personaFriend => 'Жергиликтүү дос';

  @override
  String get chatUntitled => 'Аталышы жок сүйлөшүү';

  @override
  String get chatAiChat => 'Чат';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Учурда тандалган жыйнак: $name';
  }

  @override
  String get basicWordRepository => 'Негизги сөз сактагычы';

  @override
  String get basicSentenceRepository => 'Негизги сүйлөм сактагычы';

  @override
  String get chatEndTitle => 'Сүйлөшүүнү аяктоо жана сактоо';

  @override
  String get chatEndMessage => 'Сүйлөшүүнү аяктайсызбы?';

  @override
  String get chatSaveAndExit => 'Сактап чыгуу';

  @override
  String get errorSelectCategory => 'Алгач сөздү же сүйлөмдү тандаңыз!';

  @override
  String get tutorialM1ToggleTitle => 'Сөз/Сүйлөм режими';

  @override
  String get tutorialM1ToggleDesc =>
      'Сөз жана сүйлөм режимин бул жерден которуңуз.';

  @override
  String get metadataDialogTitle => 'Толук классификация';

  @override
  String get tagFormal => 'Сылык сөз';

  @override
  String get selectPOS => 'Сөз түркүмүн тандоо';

  @override
  String get selectSentenceType => 'Сүйлөм түрүн тандоо';

  @override
  String get metadataRootWord => 'Түпкү сөз (Root Word)';

  @override
  String get posNoun => 'Зат атооч';

  @override
  String get posVerb => 'Этиш';

  @override
  String get posAdjective => 'Сын атооч';

  @override
  String get posAdverb => 'Тактооч';

  @override
  String get posPronoun => 'Ат атооч';

  @override
  String get posPreposition => 'Предлог/Жардамчы сөз';

  @override
  String get posConjunction => 'Байламта';

  @override
  String get posInterjection => 'Сырдык сөз';

  @override
  String get typeStatement => 'Декларативдик сүйлөм';

  @override
  String get typeQuestion => 'Суроолуу сүйлөм';

  @override
  String get typeExclamation => 'Илептүү сүйлөм';

  @override
  String get typeImperative => 'Буйрук сүйлөм';

  @override
  String get labelNote => 'Эскертүү';

  @override
  String get labelShowMemorized => 'Аяктаган';

  @override
  String get titleTagSelection => 'Аталыш теги (Маалымат жыйнагы)';

  @override
  String get generalTags => 'Жалпы тегдер';

  @override
  String get tagSelection => 'Тег тандоо';

  @override
  String get metadataFormType => 'Грамматикалык форма';

  @override
  String get formInfinitive => 'Инфинитив/Азыркы чак';

  @override
  String get formPast => 'Өткөн чак';

  @override
  String get formPastParticiple => 'Өткөн чактын атоочтук формасы';

  @override
  String get formPresentParticiple => 'Азыркы чактын атоочтук формасы (ing)';

  @override
  String get formPresent => 'Азыркы чак';

  @override
  String get formThirdPersonSingular => '3-жак жекелик';

  @override
  String get formPlural => 'Көптүк';

  @override
  String get formSingular => 'Жекелик';

  @override
  String get caseSubject => 'Баштооч жөндөмө';

  @override
  String get caseObject => 'Толуктооч жөндөмө';

  @override
  String get casePossessive => 'Таандык жөндөмө';

  @override
  String get casePossessivePronoun => 'Таандык ат атооч';

  @override
  String get caseReflexive => 'Рефлексивдүү';

  @override
  String get formPositive => 'Позитивдүү даража';

  @override
  String get formComparative => 'Салыштырма даража';

  @override
  String get formSuperlative => 'Эң жогорку даража';

  @override
  String get searchConditions => 'Издөө шарттары';

  @override
  String recentNItems(int count) {
    return 'Акыркы түзүлгөн $count даананы көрүү';
  }

  @override
  String get startsWith => 'Башталгыч тамга';

  @override
  String get reset => 'Баштапкы абалга келтирүү';

  @override
  String get participantRename => 'Катышуучунун атын өзгөртүү';

  @override
  String get labelName => 'Аты';

  @override
  String get gender => 'Жынысы';

  @override
  String get language => 'Тили';

  @override
  String get male => 'Эркек';

  @override
  String get female => 'Аял';

  @override
  String get neutral => 'Бейтарап';

  @override
  String get chatAllConversations => 'Бардык баарлашуулар';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Бул баарлашууну жок кылууну каалайсызбы?\nЖок кылынган баарлашууну кайра калыбына келтирүү мүмкүн эмес.';

  @override
  String get notSelected => '- Тандалган жок -';

  @override
  String get myWordbook => 'Менин сөздүгүм';

  @override
  String get mySentenceCollection => 'Менин сүйлөм жыйнагым';

  @override
  String get newSubjectName => 'Жаңы теманын/сүйлөмдөрдүн жыйнагынын аталышы';

  @override
  String get enterNewSubjectName => 'Жаңы аталышты киргизиңиз';

  @override
  String get addNewSubject => 'Жаңы аталышты кошуу';

  @override
  String get selectExistingSubject => 'Мурунку аталышты тандаңыз';

  @override
  String get addTagHint => 'Тэг кошуу...';

  @override
  String get save => 'Сактоо';

  @override
  String get styleFormal => 'Formal';

  @override
  String get styleInformal => 'Informal';

  @override
  String get stylePolite => 'Polite';

  @override
  String get styleSlang => 'Slang';

  @override
  String statusDownloading(Object name) {
    return 'Downloading: $name...';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name Imported Successfully';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Import Failed: $error';
  }

  @override
  String get statusLoginSuccess => 'Login successful.';

  @override
  String statusLoginFailed(Object error) {
    return 'Login failed: $error';
  }

  @override
  String get statusLoginCancelled => 'Login cancelled.';

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLogoutSuccess => 'Logged out.';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get login => 'Login';

  @override
  String get signUp => 'Sign Up';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get invalidEmail => 'Please enter a valid email.';

  @override
  String get passwordTooShort => 'Password must be at least 6 characters.';

  @override
  String get statusSigningUp => 'Signing up...';

  @override
  String statusSignUpFailed(Object error) {
    return 'Sign up failed: $error';
  }

  @override
  String get statusCheckEmail =>
      'Электрондук почтаңызды текшерип, аутентификацияны аягына чыгарыңыз.';

  @override
  String get emailAlreadyInUse =>
      'Бул электрондук почта дареги мурунтан эле катталган. Кириңиз же сыр сөздү калыбына келтириңиз.';
}

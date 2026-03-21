// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get basicWords => 'Негизги сөз сактагычы';

  @override
  String get inputLanguage => 'Киргиз тили';

  @override
  String get translationLanguage => 'Котормо тили';

  @override
  String get simplifiedGuidance =>
      'Күнүмдүк сүйлөшүүлөрдү заматта чет тилге которуңуз! Talkie сиздин тил жашооңузду жазып алат.';

  @override
  String get noDataForLanguage =>
      'Тандалган тил үчүн окуу материалдары жергиликтүү базада жок. Материалдарды жүктөп алыңыз же башка тилди тандаңыз.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Артка';

  @override
  String get accuracy => 'Тактык';

  @override
  String get ttsMissing =>
      'Бул тил үчүн үн кыймылдаткычы түзмөгүңүзгө орнотулган эмес.';

  @override
  String get ttsInstallGuide =>
      'Android Орнотуулары > Google TTS бөлүмүнөн тиешелүү тил маалыматтарын орнотуңуз.';

  @override
  String get adLoading =>
      'Жарнама жүктөлүүдө. Бир аздан кийин кайра аракет кылыңыз.';

  @override
  String get addNewSubject => 'Жаңы аталышты кошуу';

  @override
  String get addParticipant => 'Катышуучу кошуу';

  @override
  String get addTagHint => 'Тэг кошуу...';

  @override
  String get alreadyHaveAccount => 'Аккаунтуңуз барбы?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Автоматтык ойнотуу';

  @override
  String get basic => 'Негизги';

  @override
  String get basicDefault => 'Негизги';

  @override
  String get basicMaterialRepository => 'Негизги сүйлөм/сөз сактагычы';

  @override
  String get basicSentenceRepository => 'Негизги сүйлөм сактагычы';

  @override
  String get basicSentences => 'Негизги сүйлөм сактагычы';

  @override
  String get basicWordRepository => 'Негизги сөз сактагычы';

  @override
  String get caseObject => 'Толуктооч жөндөмө';

  @override
  String get casePossessive => 'Таандык жөндөмө';

  @override
  String get casePossessivePronoun => 'Таандык ат атооч';

  @override
  String get caseReflexive => 'Рефлексивдүү';

  @override
  String get caseSubject => 'Баштооч жөндөмө';

  @override
  String get chatAiChat => 'Чат';

  @override
  String get chatAllConversations => 'Бардык баарлашуулар';

  @override
  String get chatChoosePersona => 'Persona тандоо';

  @override
  String get chatEndMessage => 'Сүйлөшүүнү аяктайсызбы?';

  @override
  String get chatEndTitle => 'Сүйлөшүүнү аяктоо жана сактоо';

  @override
  String chatFailed(Object error) {
    return 'Чат ишке ашкан жок: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Сүйлөшүүдөн үзүндү ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Сүйлөшүү таржымалы';

  @override
  String get chatNew => 'Жаңы сүйлөшүү';

  @override
  String get chatNewChat => 'Жаңы сүйлөшүү';

  @override
  String get chatNoConversations => 'Азырынча сүйлөшүү жок';

  @override
  String get chatSaveAndExit => 'Сактап чыгуу';

  @override
  String get chatStartNewPrompt =>
      'Көнүгүү үчүн жаңы сүйлөшүүнү баштап көрүңүз!';

  @override
  String get chatTypeHint => 'Билдирүүнү киргизиңиз...';

  @override
  String get chatUntitled => 'Аталышы жок сүйлөшүү';

  @override
  String get checking => 'Текшерилүүдө...';

  @override
  String get clearAll => 'Баарын тазалоо';

  @override
  String get confirm => 'Ырастоо';

  @override
  String get confirmDelete => 'Бул окуу жазуусун өчүргүңүз келеби?';

  @override
  String get confirmDeleteConversation =>
      'Бул баарлашууну жок кылууну каалайсызбы?\nЖок кылынган баарлашууну кайра калыбына келтирүү мүмкүн эмес.';

  @override
  String get confirmDeleteParticipant =>
      'Бул катышуучуну өчүрүүнү каалайсызбы?';

  @override
  String get contextTagHint =>
      'Кийинчерээк айырмалоо оңой болушу үчүн кырдаалды жазыңыз';

  @override
  String get contextTagLabel =>
      'Контекст/Кырдаал (милдеттүү эмес) - Мисалы: Эртең мененки салам, Сылык сөз';

  @override
  String get copiedToClipboard => 'Буферге көчүрүлдү!';

  @override
  String get copy => 'Көчүрүү';

  @override
  String get correctAnswer => 'Туура жооп';

  @override
  String get createNew => 'Жаңы сүйлөм менен улантуу';

  @override
  String get currentLocation => 'Учурдагы жайгашкан жер';

  @override
  String get currentMaterialLabel => 'Учурда тандалган жыйнак:';

  @override
  String get delete => 'Өчүрүү';

  @override
  String deleteFailed(String error) {
    return 'Өчүрүү ишке ашкан жок: $error';
  }

  @override
  String get deleteRecord => 'Жазууну өчүрүү';

  @override
  String get dialogueQuestDesc =>
      'Кырдаалдык драма аркылуу сүйлөшүү көнүгүүсүн жасаңыз. Ылайыктуу жоопту тандап айтыңыз.';

  @override
  String get dialogueQuestTitle => 'Сүйлөшүү тапшырмасы';

  @override
  String get disambiguationPrompt => 'Кайсы мааниде которгуңуз келет?';

  @override
  String get disambiguationTitle => 'Маанини тандоо';

  @override
  String get dontHaveAccount => 'Аккаунтуңуз жокпу?';

  @override
  String get editParticipant => 'Катышуучуну түзөтүү';

  @override
  String get email => 'Электрондук почта';

  @override
  String get emailAlreadyInUse =>
      'Бул электрондук почта дареги мурунтан эле катталган. Кириңиз же сыр сөздү калыбына келтириңиз.';

  @override
  String get enterNewSubjectName => 'Жаңы аталышты киргизиңиз';

  @override
  String get enterSentenceHint => 'Сүйлөм жазыңыз...';

  @override
  String get enterTextHint => 'Которула турган текстти киргизиңиз';

  @override
  String get enterTextToTranslate => 'Которула турган текстти киргизиңиз';

  @override
  String get enterWordHint => 'Сөз жазыңыз...';

  @override
  String get error => 'Ката';

  @override
  String get errorHateSpeech =>
      'Жеке көрө албастык сөздөр камтылгандыктан которуу мүмкүн эмес.';

  @override
  String get errorOtherSafety =>
      'AI коопсуздук саясатына байланыштуу которууга тыюу салынды.';

  @override
  String get errorProfanity =>
      'Адепсиз сөздөр камтылгандыктан которуу мүмкүн эмес.';

  @override
  String get errorSelectCategory => 'Алгач сөздү же сүйлөмдү тандаңыз!';

  @override
  String get errorSexualContent =>
      'Уятсыз мазмун камтылгандыктан которуу мүмкүн эмес.';

  @override
  String get errors => 'Каталар:';

  @override
  String get female => 'Аял';

  @override
  String get file => 'Файл:';

  @override
  String get filterAll => 'Бардыгы';

  @override
  String get flip => 'Көрсөтүү';

  @override
  String get formComparative => 'Салыштырма даража';

  @override
  String get formInfinitive => 'Инфинитив/Азыркы чак';

  @override
  String get formPast => 'Өткөн чак';

  @override
  String get formPastParticiple => 'Өткөн чактын атоочтук формасы';

  @override
  String get formPlural => 'Көптүк';

  @override
  String get formPositive => 'Позитивдүү даража';

  @override
  String get formPresent => 'Азыркы чак';

  @override
  String get formPresentParticiple => 'Азыркы чактын атоочтук формасы (ing)';

  @override
  String get formSingular => 'Жекелик';

  @override
  String get formSuperlative => 'Эң жогорку даража';

  @override
  String get formThirdPersonSingular => '3-жак жекелик';

  @override
  String get gameModeDesc => 'Машыга турган оюн режимин тандаңыз';

  @override
  String get gameModeTitle => 'Оюн режими';

  @override
  String get gameOver => 'Оюн бүттү';

  @override
  String get gender => 'Жынысы';

  @override
  String get labelFilterMaterial => 'Материалдар';

  @override
  String get labelFilterTag => 'Тег';

  @override
  String get generalTags => 'Жалпы тегдер';

  @override
  String get getMaterials => 'Материалдарды алуу';

  @override
  String get good => 'Жакшы';

  @override
  String get googleContinue => 'Google аркылуу улантуу';

  @override
  String get helpDialogueImportDesc =>
      'JSON файлы менен толук сүйлөшүү топтомун импорттоо.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON структурасы: `entries` ордуна `dialogues` массивин колдонуңуз\n• Автоматтык калыбына келтирүү: сүйлөшүүнүн аталышы, Persona, билдирүүлөрдүн ирети калыбына келтирилет.\n• Жайгашкан жер: импорттолгон сүйлөшүү AI чат режиминин \'Жазуулар\' кошумча барагында пайда болот.';

  @override
  String get helpJsonDesc =>
      '3-режимде колдонула турган окуу материалдарын JSON файлы катары импорттоо үчүн, төмөнкү форматты аткарыңыз:';

  @override
  String get helpJsonTypeDialogue => 'Диалог';

  @override
  String get helpJsonTypeSentence => 'Сүйлөм';

  @override
  String get helpJsonTypeWord => 'Сөз';

  @override
  String get helpMode1Desc =>
      'Премиум 3D микрофону жана чоң баскычтоптун сүрөтчөсүнүн жардамы менен тил үйрөнүүнү эң түшүнүктүү жол менен баштаңыз.';

  @override
  String get helpMode1Details =>
      '• Тил жөндөөлөрү: Башкы экрандын жогору жагындагы тил баскычы аркылуу өз тилиңизди жана үйрөнүп жаткан тилиңизди текшериңиз жана окуу тилин өзгөртө аласыз.\n• Жөнөкөй киргизүү: Борбордогу чоң микрофон жана текст терезеси аркылуу дароо киргизиңиз.\n• Жөндөөлөрдү текшерүү: Киргизүү аяктагандан кийин, оң жактагы көк белгилөө баскычын басыңыз. Толук жөндөөлөр терезеси пайда болот.\n• Толук жөндөөлөр: Пайда болгон диалогдо сактала турган маалымат жыйнагын, эскертүүлөрдү (эскертүүлөрдү), тегдерди көрсөтсөңүз болот.\n• Азыр которуу: Жөндөөлөрдү бүтүргөндөн кийин, жашыл которуу баскычын бассаңыз, жасалма интеллект дароо которот.\n• Автоматтык издөө: Киргизүү учурунда окшош котормолор реалдуу убакытта аныкталып көрсөтүлөт.\n• Угуу жана сактоо: Котормонун натыйжасынын астындагы спикер сүрөтчөсү менен айтылышын угуп, \'Маалыматтарды сактоо\' аркылуу окуу тизмеңизге кошуңуз.';

  @override
  String get helpMode2Desc =>
      'Сакталган сүйлөмдөрдү кайталап, автоматтык жашыруу функциясы менен эске тутууну текшериңиз.';

  @override
  String get helpMode2Details =>
      '• Материалдарды тандоо: Жогорку оң жактагы менюдан (⋮) \'Окуу материалдарын тандоо\' же \'Онлайн материалдар бөлмөсүн\' колдонуңуз\n• Картаны которуу: \'Көрсөтүү/Жашыруу\' аркылуу котормону текшериңиз\n• Угуу: Динамик белгиси аркылуу айтылышын угуңуз\n• Окуу аяктады: Белгилөө (V) аркылуу окуу аяктады деп белгилеңиз\n• Өчүрүү: Картаны узакка басып (Long Click) жазууну өчүрүңүз\n• Издөө жана чыпкалоо: Издөө тилкеси (реалдуу убакыттагы акылдуу издөө) жана тегдер, баш тамгалар чыпкасы колдоого алынат';

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
      '• AI чат: Төмөнкү өтмөк тилкесиндеги \'Чат\' менюсунан персона менен реалдуу сүйлөшүү практикасын жасаңыз\n• Персонаны жөндөө: Каршылаштын жынысын, атын, тил кодун эркин белгилеңиз\n• GPS жагдайлык оюну: Учурдагы жайгашкан жериңизди таануу менен жерге ылайыктуу сүйлөшүү темаларын сунуштайт\n• 2 тил: AI жооптору котормо менен көрсөтүлүп, окуу эффектиси максималдуу болот\n• Жазууларды башкаруу: Мурунку сүйлөшүү таржымалын чыпкалоо жана сүйлөшүү учурунда белгилүү билдирүүлөрдү окуу материалы катары сактоо';

  @override
  String get helpTabJson => 'JSON форматы';

  @override
  String get helpTabModes => 'Режимдерди түшүндүрүү';

  @override
  String get helpTabTour => 'Саякаттоо';

  @override
  String get helpTitle => 'Жардам жана колдонмо';

  @override
  String get helpTourDesc =>
      '**Урунттуу тегерек** негизги функцияларды көрсөтөт.\n(Мисалы: **Урунттуу тегерек** көрсөткөн картты узакка басып өчүрүүгө болот.)';

  @override
  String get hide => 'Жашыруу';

  @override
  String importAdded(int count) {
    return 'Кошулду: $count даана';
  }

  @override
  String get importComplete => 'Жүктөө аяктады';

  @override
  String get importDuplicateTitleError =>
      'Мындай аталыштагы материал мурунтан эле бар. Аталышын өзгөртүп, кайра аракет кылыңыз.';

  @override
  String importErrorMessage(String error) {
    return 'Файлды жүктөө ишке ашкан жок:\\n$error';
  }

  @override
  String get importFailed => 'Жүктөө ишке ашкан жок';

  @override
  String importFile(String fileName) {
    return 'Файл: $fileName';
  }

  @override
  String get importJsonFile => 'JSON файлын жүктөө';

  @override
  String get importJsonFilePrompt => 'JSON файлын жүктөңүз';

  @override
  String importSkipped(int count) {
    return 'Өткөрүлдү: $count даана';
  }

  @override
  String importTotal(int count) {
    return 'Бардыгы: $count даана';
  }

  @override
  String get importing => 'Жүктөлүүдө...';

  @override
  String get inputModeTitle => 'Киргизүү';

  @override
  String intervalSeconds(int seconds) {
    return 'Аралык: $seconds секунд';
  }

  @override
  String get invalidEmail => 'Жарактуу электрондук почта дарегин киргизиңиз.';

  @override
  String get kakaoContinue => 'Kakao менен улантуу';

  @override
  String get labelLangCode => 'Тил коду (мис: en-US, ko-KR)';

  @override
  String get labelName => 'Аты';

  @override
  String get labelNote => 'Эскертүү';

  @override
  String get labelPOS => 'Сөз түркүмү';

  @override
  String get labelRole => 'Роль';

  @override
  String get labelSentence => 'Сүйлөм';

  @override
  String get labelSentenceCollection => 'Сүйлөм жыйнагы';

  @override
  String get labelSentenceType => 'Сүйлөм тиби';

  @override
  String get labelShowMemorized => 'Аяктаган';

  @override
  String get labelType => 'Түрү:';

  @override
  String get labelWord => 'Сөз';

  @override
  String get labelWordbook => 'Сөздүк';

  @override
  String get language => 'Тили';

  @override
  String get languageSettings => 'Тил жөндөөлөрү';

  @override
  String get languageSettingsTitle => 'Тил жөндөөлөрү';

  @override
  String get libTitleFirstMeeting => 'Биринчи жолугушуу';

  @override
  String get libTitleGreetings1 => 'Саламдашуу 1';

  @override
  String get libTitleNouns1 => 'Зат атооч 1';

  @override
  String get libTitleVerbs1 => 'Этиш 1';

  @override
  String get listen => 'Угуу';

  @override
  String get listening => 'Угулууда...';

  @override
  String get loadingParticipants => 'Катышуучулар жүктөлүп жатат...';

  @override
  String get location => 'Жайгашкан жер';

  @override
  String get login => 'Кирүү';

  @override
  String get logout => 'Чыгуу';

  @override
  String get logoutConfirmMessage => 'Учурдагы түзмөктөн чыгууну каалайсызбы?';

  @override
  String get logoutConfirmTitle => 'Чыгуу';

  @override
  String get male => 'Эркек';

  @override
  String get manageParticipants => 'Катышуучуларды башкаруу';

  @override
  String get manual => 'Кол менен киргизүү';

  @override
  String get markAsStudied => 'Окуу белгиси';

  @override
  String get materialInfo => 'Материал тууралуу маалымат';

  @override
  String get me => 'Мен';

  @override
  String get menuDeviceImport => 'Түзмөктөн материалдарды жүктөө';

  @override
  String get menuHelp => 'Жардам';

  @override
  String get menuLanguageSettings => 'Тил жөндөөлөрү';

  @override
  String get menuOnlineLibrary => 'Онлайн китепкана';

  @override
  String get menuSelectMaterialSet => 'Окуу материалдар жыйнагын тандоо';

  @override
  String get menuSettings => 'Тил жөндөөлөрү';

  @override
  String get menuTutorial => 'Колдонуу боюнча тур';

  @override
  String get menuWebDownload => 'Веб-сайт';

  @override
  String get metadataDialogTitle => 'Толук классификация';

  @override
  String get metadataFormType => 'Грамматикалык форма';

  @override
  String get metadataRootWord => 'Түпкү сөз (Root Word)';

  @override
  String get micButtonTooltip => 'Үндү таанууну баштоо';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Учурда тандалган жыйнак: $name';
  }

  @override
  String get mode2Title => 'Кайталоо';

  @override
  String get mode3Next => 'Кийинки';

  @override
  String get mode3Start => 'Баштоо';

  @override
  String get mode3Stop => 'Токтотуу';

  @override
  String get mode3TryAgain => 'Кайра аракет кылуу';

  @override
  String get mySentenceCollection => 'Менин сүйлөм жыйнагым';

  @override
  String get myWordbook => 'Менин сөздүгүм';

  @override
  String get neutral => 'Бейтарап';

  @override
  String get newSubjectName => 'Жаңы теманын/сүйлөмдөрдүн жыйнагынын аталышы';

  @override
  String get next => 'Кийинки';

  @override
  String get noDialogueHistory => 'Баарлашуу таржымалы жок.';

  @override
  String get noInternetWarningMic =>
      'Интернет байланышы жок. Оффлайн режиминде үн таануу мүмкүн болбой калышы мүмкүн.';

  @override
  String get noInternetWarningTranslate =>
      'Интернет байланышы жок. Оффлайн режиминде которуу функциясы иштебейт. Кайталоо режимин колдонуңуз.';

  @override
  String get noMaterialsInCategory => 'Бул категорияда материал жок.';

  @override
  String get noParticipantsFound => 'Катталган катышуучу жок.';

  @override
  String get noRecords => 'Тандалган тилде окуу жазуулары жок';

  @override
  String get noStudyMaterial => 'Окуу материалы жок.';

  @override
  String get noTextToPlay => 'Ойнотуу үчүн текст жок';

  @override
  String get noTranslationToSave => 'Сактай турган котормо жок';

  @override
  String get noVoiceDetected => 'Үн аныкталган жок';

  @override
  String get notSelected => '- Тандалган жок -';

  @override
  String get onlineLibraryCheckInternet =>
      'Интернет байланышын текшериңиз же кийинчерээк кайра аракет кылыңыз.';

  @override
  String get onlineLibraryLoadFailed => 'Материалды жүктөө ишке ашкан жок.';

  @override
  String get onlineLibraryNoMaterials => 'Материал жок.';

  @override
  String get participantDeleted => 'Катышуучу өчүрүлдү.';

  @override
  String get participantRename => 'Катышуучунун атын өзгөртүү';

  @override
  String get partner => 'Өнөктөш';

  @override
  String get partnerMode => 'Өнөктөш режими';

  @override
  String get password => 'Сырсөз';

  @override
  String get passwordTooShort => 'Сырсөз 6 белгиден кем болбошу керек.';

  @override
  String get perfect => 'Мыкты!';

  @override
  String get personaFriend => 'Жергиликтүү дос';

  @override
  String get personaGuide => 'Саякаттоочу гид';

  @override
  String get personaTeacher => 'Англисче мугалим';

  @override
  String get playAgain => 'Кайра ойноо';

  @override
  String playbackFailed(String error) {
    return 'Ойнотуу ишке ашкан жок: $error';
  }

  @override
  String get playing => 'Ойнотулууда...';

  @override
  String get posAdjective => 'Сын атооч';

  @override
  String get posAdverb => 'Тактооч';

  @override
  String get posConjunction => 'Байламта';

  @override
  String get posInterjection => 'Сырдык сөз';

  @override
  String get posNoun => 'Зат атооч';

  @override
  String get posPreposition => 'Предлог/Жардамчы сөз';

  @override
  String get posPronoun => 'Ат атооч';

  @override
  String get posVerb => 'Этиш';

  @override
  String get practiceModeTitle => 'Машыгуу';

  @override
  String get practiceWordsOnly => 'Сөздөрдү гана машыктыруу';

  @override
  String progress(int current, int total) {
    return 'Жүрүшү: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Акыркы түзүлгөн $count даананы көрүү';
  }

  @override
  String recognitionFailed(String error) {
    return 'Үндү таануу ишке ашкан жок: $error';
  }

  @override
  String get recognized => 'Таануу аяктады';

  @override
  String get recognizedText => 'Таанылган айтылыш:';

  @override
  String get recordDeleted => 'Жазуу өчүрүлдү';

  @override
  String get refresh => 'Жаңыртуу';

  @override
  String get reset => 'Баштапкы абалга келтирүү';

  @override
  String get resetPracticeHistory =>
      'Көнүгүү таржымалын баштапкы абалга келтирүү';

  @override
  String get retry => 'Кайра аракет кылуу?';

  @override
  String get reviewAll => 'Толугу менен кайталоо';

  @override
  String reviewCount(int count) {
    return 'Кайталоо $count жолу';
  }

  @override
  String get reviewModeTitle => 'Кайталоо';

  @override
  String get roleAi => 'Жасалма интеллект';

  @override
  String get roleThirdParty => 'Үчүнчү тарап';

  @override
  String get roleUser => 'Колдонуучу';

  @override
  String get save => 'Сактоо';

  @override
  String get saveData => 'Маалыматтарды сактоо';

  @override
  String saveFailed(String error) {
    return 'Сактоо ишке ашкан жок: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Издөө режиминде котормолорду сактап көрүңүз';

  @override
  String get saved => 'Сакталды';

  @override
  String get saving => 'Сакталууда...';

  @override
  String score(String score) {
    return 'Тактык: $score%';
  }

  @override
  String get scoreLabel => 'Упай';

  @override
  String get search => 'Издөө';

  @override
  String get searchConditions => 'Издөө шарттары';

  @override
  String get searchSentenceHint => 'Сүйлөм издөө...';

  @override
  String get searchWordHint => 'Сөз издөө...';

  @override
  String get sectionSentence => 'Сүйлөм бөлүмү';

  @override
  String get sectionSentences => 'Сүйлөмдөр';

  @override
  String get sectionWord => 'Сөз бөлүмү';

  @override
  String get sectionWords => 'Сөздөр';

  @override
  String get selectExistingSubject => 'Мурунку аталышты тандаңыз';

  @override
  String get selectMaterialPrompt => 'Окуу материалын тандаңыз';

  @override
  String get selectMaterialSet => 'Окуу материалдар жыйнагын тандоо';

  @override
  String get selectPOS => 'Сөз түркүмүн тандоо';

  @override
  String get selectParticipants => 'Катышуучуларды тандоо';

  @override
  String get selectSentenceType => 'Сүйлөм түрүн тандоо';

  @override
  String get selectStudyMaterial => 'Окуу материалын тандоо';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Сүйлөм';

  @override
  String get signUp => 'Катталуу';

  @override
  String get similarTextFound => 'Окшош текст табылды';

  @override
  String get skip => 'Өткөрүп жиберүү';

  @override
  String get source => 'Булагы:';

  @override
  String get sourceLanguage => 'Түпкү тил';

  @override
  String get sourceLanguageLabel => 'Менин тилим (Source)';

  @override
  String get speakNow => 'Азыр сүйлөңүз!';

  @override
  String get speaker => 'Сүйлөгөн адам';

  @override
  String get speakerSelect => 'Сүйлөөчүнү тандоо';

  @override
  String get speakingPractice => 'Сүйлөө көнүгүүсү';

  @override
  String get startChat => 'Баарлашууну баштоо';

  @override
  String get startPractice => 'Көнүгүүнү баштоо';

  @override
  String get startTutorial => 'Окутууну баштоо';

  @override
  String get startWarning => 'Эскертүү';

  @override
  String get startsWith => 'Башталгыч тамга';

  @override
  String get statusCheckEmail =>
      'Электрондук почтаңызды текшерип, аутентификацияны аягына чыгарыңыз.';

  @override
  String statusDownloading(Object name) {
    return 'Жүктөлүп жатат: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Импорттоо ишке ашкан жок: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name ийгиликтүү импорттолду';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Кирүү жокко чыгарылды.';

  @override
  String statusLoginFailed(Object error) {
    return 'Кирүү ишке ашкан жок: $error';
  }

  @override
  String get statusLoginSuccess => 'Кирүү ийгиликтүү болду.';

  @override
  String get statusLogoutSuccess => 'Чыгуу ийгиликтүү болду.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Катталуу ишке ашкан жок: $error';
  }

  @override
  String get statusSigningUp => 'Катталууда...';

  @override
  String get stopPractice => 'Көнүгүүнү токтотуу';

  @override
  String get studyComplete => 'Окуу аяктады';

  @override
  String studyRecords(int count) {
    return 'Окуу жазуулары ($count)';
  }

  @override
  String get styleFormal => 'Сиз';

  @override
  String get styleInformal => 'Сен';

  @override
  String get stylePolite => 'Сылык';

  @override
  String get styleSlang => 'Сленг/Жаргон';

  @override
  String get subject => 'Темасы:';

  @override
  String get swapLanguages => 'Тилдерди алмаштыруу';

  @override
  String get switchToAi => 'AI режимине которулуу';

  @override
  String get switchToPartner => 'Өнөктөш режимине которулуу';

  @override
  String get syncingData => 'Маалыматтар шайкештештирилип жатат...';

  @override
  String get tabConversation => 'Баарлашуу';

  @override
  String tabReview(int count) {
    return 'Кайталоо ($count)';
  }

  @override
  String get tabSentence => 'Сүйлөм';

  @override
  String get tabSpeaking => 'Сүйлөө';

  @override
  String tabStudyMaterial(int count) {
    return 'Окуу материалы ($count)';
  }

  @override
  String get tabWord => 'Сөз';

  @override
  String get tagFormal => 'Сылык сөз';

  @override
  String get tagSelection => 'Тег тандоо';

  @override
  String get targetLanguage => 'Максаттуу тил';

  @override
  String get targetLanguageFilter => 'Максаттуу тил чыпкасы:';

  @override
  String get targetLanguageLabel => 'Окуу тили (Target)';

  @override
  String get thinkingTimeDesc => 'Жооп жарыяланганга чейин ойлонууга убакыт.';

  @override
  String get thinkingTimeInterval => 'Ойнотуу аралыгы';

  @override
  String get timeUp => 'Убакыт бүттү!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Аталыш теги (Маалымат жыйнагы)';

  @override
  String get tooltipDecrease => 'Азайтуу';

  @override
  String get tooltipIncrease => 'Көбөйтүү';

  @override
  String get tooltipSearch => 'Издөө';

  @override
  String get tooltipSpeaking => 'Сүйлөө';

  @override
  String get tooltipStudyReview => 'Окуу+Кайталоо';

  @override
  String totalRecords(int count) {
    return 'Жалпы $count жазуу (толугу менен көрүү)';
  }

  @override
  String get translate => 'Которуу';

  @override
  String get translating => 'Которулууда...';

  @override
  String get translation => 'Которуу';

  @override
  String get translationComplete => 'Которуу аяктады (сактоо керек)';

  @override
  String translationFailed(String error) {
    return 'Которуу ишке ашкан жок: $error';
  }

  @override
  String get translationLimitExceeded => 'Которуу чегинен ашып кетти';

  @override
  String get translationLimitMessage =>
      'Күнүмдүк акысыз которууну (5 жолу) толугу менен колдондуңуз.\\n\\nЖарнаманы көрүп 5 жолу дароо толуктайсызбы?';

  @override
  String get translationLoaded => 'Сакталган котормо жүктөлдү';

  @override
  String get translationRefilled => 'Которуу саны 5 жолу толукталды!';

  @override
  String get translationResultHint => 'Которуунун жыйынтыгы - өзгөртүүгө болот';

  @override
  String get tryAgain => 'Дагы аракет кылыңыз';

  @override
  String get tutorialAiChatDesc =>
      'AI Persona менен иш жүзүндө сүйлөшүү көнүгүүсүн жасап көрүңүз.';

  @override
  String get tutorialAiChatTitle => 'AI чат';

  @override
  String get tutorialContextDesc =>
      'Ошол эле сүйлөм болсо дагы, кырдаалды (мисалы, эртең менен, кечинде) жазып койсоңуз, өзүнчө сактоого болот.';

  @override
  String get tutorialContextTitle => 'Кырдаал/Контекст тэг';

  @override
  String get tutorialLangSettingsDesc =>
      'Которула турган түпкү тилди жана максаттуу тилди орнотуңуз.';

  @override
  String get tutorialLangSettingsTitle => 'Тил жөндөөлөрү';

  @override
  String get tutorialM1ToggleDesc =>
      'Сөз жана сүйлөм режимин бул жерден которуңуз.';

  @override
  String get tutorialM1ToggleTitle => 'Сөз/Сүйлөм режими';

  @override
  String get tutorialM2DropdownDesc =>
      'Жогорку меню аркылуу үйрөнө турган материалды тандай аласыз.';

  @override
  String get tutorialM2ImportDesc =>
      'Түзмөктүн папкасынан JSON файлын жүктөп алыңыз.';

  @override
  String get tutorialM2ListDesc =>
      'Бул картты узакка бассаңыз (Long Click) өчүрүүгө болот. Сакталган сүйлөмдөрдү текшерип оодарыңыз.';

  @override
  String get tutorialM2ListTitle => 'Окуу тизмеси';

  @override
  String get tutorialM2SearchDesc =>
      'Сакталган сөздөрдү жана сүйлөмдөрдү издеп, тез таба аласыз.';

  @override
  String get tutorialM2SelectDesc =>
      'Жогорку колдонмо тилкесиндеги жыйнак белгисин (📚) басып үйрөнө турган материалды тандаңыз.';

  @override
  String get tutorialM2SelectTitle => 'Материал тандоо';

  @override
  String get tutorialM3IntervalDesc =>
      'Сүйлөмдөрдүн ортосундагы күтүү убактысын жөндөйт.';

  @override
  String get tutorialM3IntervalTitle => 'Аралыкты жөндөө';

  @override
  String get tutorialM3ResetDesc =>
      'Жүрүштү жана тактык упайын баштапкы абалга келтирип, башынан баштаңыз.';

  @override
  String get tutorialM3ResetTitle => 'Жазууну баштапкы абалга келтирүү';

  @override
  String get tutorialM3SelectDesc =>
      'Жогорку колдонмо тилкесиндеги жыйнак белгисин (📚) басып машыга турган материалды тандаңыз.';

  @override
  String get tutorialM3SelectTitle => 'Материал тандоо';

  @override
  String get tutorialM3StartDesc =>
      'Ойнотуу баскычын басып эне тилде сүйлөгөн адамдын үнүн угуп кайталаңыз.';

  @override
  String get tutorialM3StartTitle => 'Көнүгүүнү баштоо';

  @override
  String get tutorialM3WordsDesc =>
      'Белгилесеңиз, сакталган сөздөрдү гана машыктырасыз.';

  @override
  String get tutorialM3WordsTitle => 'Сөз көнүгүүсү';

  @override
  String get tutorialMicDesc =>
      'Микрофон баскычын басып үн менен киргизүүгө болот.';

  @override
  String get tutorialMicTitle => 'Үн киргизүү';

  @override
  String get tutorialSaveDesc =>
      'Которулган жыйынтыкты окуу жазууларына сактаңыз.';

  @override
  String get tutorialSaveTitle => 'Сактоо';

  @override
  String get tutorialSwapDesc =>
      'Менин тилимди жана окуу тилин бири-бирине алмаштырыңыз.';

  @override
  String get tutorialTabDesc =>
      'Бул жерден каалаган окуу режимин тандай аласыз.';

  @override
  String get tutorialTapToContinue => 'Улантуу үчүн экранды басыңыз';

  @override
  String get tutorialTransDesc => 'Киргизилген текстти которот.';

  @override
  String get tutorialTransTitle => 'Которуу';

  @override
  String get typeExclamation => 'Илептүү сүйлөм';

  @override
  String get typeImperative => 'Буйрук сүйлөм';

  @override
  String get typeQuestion => 'Суроолуу сүйлөм';

  @override
  String get typeStatement => 'Декларативдик сүйлөм';

  @override
  String get usageLimitTitle => 'Чектөөгө жетти';

  @override
  String get useExistingText => 'Мурунку текстти колдонуу';

  @override
  String get viewOnlineGuide => 'Онлайн колдонмону көрүү';

  @override
  String get voluntaryTranslations => 'Ыктыярдуу котормолор';

  @override
  String get watchAdAndRefill => 'Жарнама көрүп толтуруу (+5 жолу)';

  @override
  String get word => 'Сөз';

  @override
  String get wordDefenseDesc =>
      'Душман келгенге чейин сөздү айтып базаны коргоңуз.';

  @override
  String get wordDefenseTitle => 'Сөз коргоо';

  @override
  String get wordModeLabel => 'Сөз режими';

  @override
  String get yourPronunciation => 'Менин айтылышым';

  @override
  String get ttsUnsupportedNatively =>
      'Бул түзмөктүн жөндөөлөрү бул тилде үн чыгарууну колдобойт.';

  @override
  String get homeTab => 'Башкы бет';

  @override
  String get welcomeTitle => 'Talkie-ге кош келиңиз!';

  @override
  String get welcomeDesc =>
      'Talkieге кош келиңиз! Биз дүйнө жүзү боюнча 80ден ашык тилди 100% колдойбуз жана жаңы премиум 3D дизайны жана оптималдаштырылган иштеши менен толук окуу тажрыйбасын сунуштайбыз.';

  @override
  String get welcomeButton => 'Баштоо';

  @override
  String get labelDetails => 'Толук маалыматтар';

  @override
  String get translationResult => 'Которулган натыйжа';

  @override
  String get inputContent => 'Киргизүү тексти';

  @override
  String get translateNow => 'Азыр которуу';

  @override
  String get tooltipSettingsConfirm => 'Жөндөөлөрдү ырастоо';

  @override
  String get hintNoteExample => 'Мисалы: контекст, омонимдер ж.б.';

  @override
  String get hintTagExample => 'Мисалы: бизнес, саякат...';

  @override
  String get addNew => 'Жаңысын кошуу';

  @override
  String get newNotebookTitle => 'Жаңы дептердин аталышы';

  @override
  String get enterNameHint => 'Атын киргизиңиз';

  @override
  String get add => 'Кошуу';

  @override
  String get openSettings => 'Жөндөөлөрдү ачуу';

  @override
  String get helpNotebook =>
      'Которулган натыйжаларды сактай турган папканы тандаңыз.';

  @override
  String get helpNote => 'Сөздүн маанисин, мисалдарын же контекстти жазыңыз.';

  @override
  String get helpTag =>
      'Кийинчерээк классификациялоо же издөө үчүн ачкыч сөздөрдү киргизиңиз.';

  @override
  String get requestTranslation => 'Которууну суроо';

  @override
  String get statusRequestSuccess => 'Которуу сурамыңыз ийгиликтүү аяктады.';

  @override
  String statusRequestFailed(String error) {
    return 'Которуу сурамы аткарылган жок: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Окуу тили колдоого алынбайт';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Сиз тандаган материал учурда окуу тилиңизди ($targetLang) колдобойт, ошондуктан жергиликтүү сактагычка сакталбайт. Которууну сурагыңыз келеби?';
  }
}

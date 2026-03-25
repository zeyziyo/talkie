// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get basicWords => 'Основно складиште на зборови';

  @override
  String get inputLanguage => 'Влезен јазик';

  @override
  String get translationLanguage => 'Јазик за превод';

  @override
  String get simplifiedGuidance =>
      'Моментално претворете ги секојдневните разговори на странски јазик! Talkie ќе го снима вашиот јазичен живот.';

  @override
  String get noDataForLanguage =>
      'Нема материјали за учење за избраниот јазик во локалната база на податоци. Преземете материјали или изберете друг јазик.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Откажи';

  @override
  String get accuracy => 'Точност';

  @override
  String get ttsMissing =>
      'Моторот за говор за овој јазик не е инсталиран на вашиот уред.';

  @override
  String get ttsInstallGuide =>
      'Одете во Поставки на Android > Google TTS и инсталирајте ги јазичните податоци за овој јазик.';

  @override
  String get adLoading => 'Рекламата се вчитува. Обидете се повторно подоцна.';

  @override
  String get addNewSubject => 'Додај нов наслов';

  @override
  String get addParticipant => 'Додај учесник';

  @override
  String get addTagHint => 'Додај ознака...';

  @override
  String get alreadyHaveAccount => 'Веќе имате корисничка сметка?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Автоматска репродукција';

  @override
  String get basic => 'Основно';

  @override
  String get basicDefault => 'Основно';

  @override
  String get basicMaterialRepository => 'Основно складиште на реченици/зборови';

  @override
  String get basicSentenceRepository => 'Основно складиште на реченици';

  @override
  String get basicSentences => 'Основно складиште на реченици';

  @override
  String get basicWordRepository => 'Основно складиште на зборови';

  @override
  String get caseObject => 'Акузатив';

  @override
  String get casePossessive => 'Генитив';

  @override
  String get casePossessivePronoun => 'Присвојна заменка';

  @override
  String get caseReflexive => 'Рефлексивна';

  @override
  String get caseSubject => 'Номинатив';

  @override
  String get chatAiChat => 'Чет';

  @override
  String get chatAllConversations => 'Сите разговори';

  @override
  String get chatChoosePersona => 'Изберете лик';

  @override
  String get chatEndMessage => 'Дали сакате да го завршите разговорот?';

  @override
  String get chatEndTitle => 'Заврши и зачувај го разговорот';

  @override
  String chatFailed(Object error) {
    return 'Разговорот не успеа: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Извадок од разговор ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Историја на разговор';

  @override
  String get chatNew => 'Нов разговор';

  @override
  String get chatNewChat => 'Нов разговор';

  @override
  String get chatNoConversations => 'Сè уште нема разговори';

  @override
  String get chatSearchHint => 'Пребарувај по наслов на разговор...';

  @override
  String get chatSaveAndExit => 'Зачувај и излези';

  @override
  String get chatStartNewPrompt => 'Започнете нов разговор за да вежбате!';

  @override
  String get chatTypeHint => 'Внесете порака...';

  @override
  String get chatUntitled => 'Разговор без наслов';

  @override
  String get checking => 'Се проверува...';

  @override
  String get clearAll => 'Избриши ги сите';

  @override
  String get confirm => 'Потврди';

  @override
  String get confirmDelete =>
      'Дали сте сигурни дека сакате да го избришете овој запис за учење?';

  @override
  String get confirmDeleteConversation =>
      'Дали сте сигурни дека сакате да го избришете овој разговор?\nИзбришаните разговори не можат да се вратат.';

  @override
  String get confirmDeleteParticipant =>
      'Дали сте сигурни дека сакате да го избришете овој учесник?';

  @override
  String get contextTagHint =>
      'Запишете ја ситуацијата за да ја олесните разликата подоцна';

  @override
  String get contextTagLabel =>
      'Контекст/ситуација (опционално) - Пример: Утрински поздрав, Формално обраќање';

  @override
  String get copiedToClipboard => 'Копирано во таблата со исечоци!';

  @override
  String get copy => 'Копирај';

  @override
  String get correctAnswer => 'Точен одговор';

  @override
  String get createNew => 'Продолжете со нова реченица';

  @override
  String get currentLocation => 'Тековна локација';

  @override
  String get currentMaterialLabel => 'Тековно избрана збирка материјали:';

  @override
  String get delete => 'Избриши';

  @override
  String deleteFailed(String error) {
    return 'Бришењето не успеа: $error';
  }

  @override
  String get deleteRecord => 'Избриши запис';

  @override
  String get dialogueQuestDesc =>
      'Вежбајте разговор преку ситуациска драма. Изберете соодветен одговор и кажете го.';

  @override
  String get dialogueQuestTitle => 'Задачи за разговор';

  @override
  String get disambiguationPrompt => 'Како сакате да го преведете?';

  @override
  String get disambiguationTitle => 'Изберете значење';

  @override
  String get dontHaveAccount => 'Немате корисничка сметка?';

  @override
  String get editParticipant => 'Уреди учесник';

  @override
  String get email => 'Е-пошта';

  @override
  String get emailAlreadyInUse =>
      'Оваа е-пошта е веќе регистрирана. Ве молиме најавете се или користете го пронаоѓањето на лозинката.';

  @override
  String get enterNewSubjectName => 'Внесете нов наслов';

  @override
  String get enterSentenceHint => 'Внесете реченица...';

  @override
  String get enterTextHint => 'Внесете текст за превод';

  @override
  String get enterTextToTranslate => 'Внесете текст за превод';

  @override
  String get enterWordHint => 'Внесете збор...';

  @override
  String get error => 'Грешка';

  @override
  String get errorHateSpeech => 'Не може да се преведе поради говор на омраза.';

  @override
  String get errorOtherSafety =>
      'Преводот беше одбиен од политиката за безбедност на вештачката интелигенција.';

  @override
  String get errorProfanity =>
      'Не може да се преведе поради навредливи зборови.';

  @override
  String get errorSelectCategory => 'Прво изберете збор или реченица!';

  @override
  String get errorSexualContent =>
      'Не може да се преведе поради сексуална содржина.';

  @override
  String get errors => 'Грешки:';

  @override
  String get female => 'Женски';

  @override
  String get file => 'Датотека:';

  @override
  String get filterAll => 'Сите';

  @override
  String get flip => 'Прикажи';

  @override
  String get formComparative => 'Компаратив';

  @override
  String get formInfinitive => 'Инфинитив/Сегашно време';

  @override
  String get formPast => 'Минато време';

  @override
  String get formPastParticiple => 'Минат партицип';

  @override
  String get formPlural => 'Множина';

  @override
  String get formPositive => 'Позитив';

  @override
  String get formPresent => 'Сегашно време';

  @override
  String get formPresentParticiple => 'Сегашен партицип (ing)';

  @override
  String get formSingular => 'Еднина';

  @override
  String get formSuperlative => 'Суперлатив';

  @override
  String get formThirdPersonSingular => 'Трети лица еднина';

  @override
  String get gameModeDesc => 'Изберете режим на игра за вежбање';

  @override
  String get gameModeTitle => 'Режим на игра';

  @override
  String get gameOver => 'Играта е завршена';

  @override
  String get gender => 'Пол';

  @override
  String get labelFilterMaterial => 'Материјал';

  @override
  String get labelFilterTag => 'Ознака';

  @override
  String get generalTags => 'Општи ознаки';

  @override
  String get getMaterials => 'Земи материјали';

  @override
  String get good => 'Добро';

  @override
  String get googleContinue => 'Продолжи со Google';

  @override
  String get helpDialogueImportDesc =>
      'Увезете цел сет на разговори како JSON-датотека.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON структура: користете ја низата `dialogues` наместо `entries`\n• Автоматско обновување: насловите на разговорите, личностите и редоследот на пораките се обновуваат.\n• Локација: увезените разговори се појавуваат во табулаторот „Историја“ на режимот за AI разговор.';

  @override
  String get helpJsonDesc =>
      'Следете го следниов формат за да увезете материјали за учење што ќе се користат во Mode 3 како JSON-датотека:';

  @override
  String get helpJsonTypeDialogue => 'Дијалог';

  @override
  String get helpJsonTypeSentence => 'Реченица';

  @override
  String get helpJsonTypeWord => 'Збор';

  @override
  String get helpMode1Desc =>
      'Започнете да учите јазици на најинтуитивен начин преку премиум 3D микрофон и голема икона за тастатура.';

  @override
  String get helpMode1Details =>
      '• Поставување јазик: Проверете го вашиот јазик и јазикот што го учите и сменете го јазикот за учење со копчето за јазик на горниот дел од почетниот екран.\n• Едноставен влез: Внесете веднаш преку големиот микрофон и текстуалниот прозорец во центарот.\n• Проверете ги поставките: Кликнете на синото копче за проверка десно по завршувањето на внесувањето. Ќе се појави прозорец за детални поставки.\n• Детални поставки: Можете да ја наведете збирката на материјали за зачувување, белешките и ознаките во дијалогот што се појавува.\n• Преведи сега: Откако ќе ги завршите поставките, кликнете на зеленото копче за превод за да дозволите вештачката интелигенција веднаш да изврши превод.\n• Автоматско пребарување: Открива и прикажува слични постоечки преводи во реално време додека пишувате.\n• Слушајте и зачувајте: Слушајте го изговорот со иконата за звучник на дното на резултатот од преводот и додајте го на списокот за учење преку „Зачувај податоци“.';

  @override
  String get helpMode2Desc =>
      'Прегледајте ги зачуваните реченици и проверете дали сте ги запамтиле со функцијата за автоматско криење.';

  @override
  String get helpMode2Details =>
      '• Избор на материјали: Користете го менито (⋮) горе десно за да изберете \'Избор на материјали за учење\' или \'Онлајн библиотека\'\n• Превртување на картичката: Користете \'Прикажи/Сокриј\' за да го проверите преводот\n• Слушање: Иконата на звучник за репродукција на изговорот\n• Завршено учење: Означете (V) за да го означите учењето како завршено\n• Бришење: Долго притиснете на картичката за да ја избришете историјата\n• Пребарување и филтрирање: Поддршка за лентата за пребарување (паметно пребарување во живо) и ознаки, филтри за почетна буква';

  @override
  String get helpMode3Desc =>
      'Вежбајте го вашиот изговор слушајќи и повторувајќи ги речениците (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Избор на материјал: изберете збирка материјали за учење\n• Поставување интервал: прилагодете го времето на чекање помеѓу речениците со копчињата [-] [+ ] (3 секунди ~ 60 секунди)\n• Почеток/Стоп: контрола на сесијата за следење\n• Зборување: слушајте го гласот и повторувајте\n• Повратни информации: приказ на резултатот за точност (0-100) и боја\n• Услови за пребарување: филтрирајте ги целите за вежбање по ознаки, неодамнешни ставки, почетни букви';

  @override
  String get helpModeChatDesc =>
      'Вежбајте разговор во реални ситуации зборувајќи со AI персона.';

  @override
  String get helpModeChatDetails =>
      '• Разговор со вештачка интелигенција: Вежбајте разговори во реалниот живот со личност од менито „Разговор“ на долната лента со јазичиња\n• Поставување личност: Слободно наведете го полот, името и кодот на јазикот на другата страна\n• Драма со GPS: Препорачува теми за разговор што одговараат на локацијата со препознавање на мојата моментална локација\n• Два јазика: Одговорите на вештачката интелигенција се прикажуваат со превод за да се максимизира ефектот на учење\n• Управување со евиденција: Филтрирање на минатите истории на разговори и зачувување на одредени пораки од разговорот како материјали за учење';

  @override
  String get helpTabJson => 'JSON формат';

  @override
  String get helpTabModes => 'Објаснување на режимите';

  @override
  String get helpTabTour => 'Пробај';

  @override
  String get helpTitle => 'Помош и водич';

  @override
  String get helpTourDesc =>
      '**Кругот за истакнување** ги води клучните функции.\n(На пример: долго притиснете на картичката означена со **Круг за истакнување** за да ја избришете.)';

  @override
  String get hide => 'Сокриј';

  @override
  String importAdded(int count) {
    return 'Додадено: $count';
  }

  @override
  String get importComplete => 'Увозот е завршен';

  @override
  String get importDuplicateTitleError =>
      'Веќе постои материјал со исто име. Променете го името и обидете се повторно.';

  @override
  String importErrorMessage(String error) {
    return 'Увозот на датотеката не успеа:\\n$error';
  }

  @override
  String get importFailed => 'Увозот не успеа';

  @override
  String importFile(String fileName) {
    return 'Датотека: $fileName';
  }

  @override
  String get importJsonFile => 'Увези JSON-датотека';

  @override
  String get importJsonFilePrompt => 'Ве молиме увезете JSON-датотека';

  @override
  String importSkipped(int count) {
    return 'Прескокнато: $count';
  }

  @override
  String importTotal(int count) {
    return 'Вкупно: $count';
  }

  @override
  String get importing => 'Се увезува...';

  @override
  String get inputModeTitle => 'Внос';

  @override
  String intervalSeconds(int seconds) {
    return 'Интервал: $seconds сек.';
  }

  @override
  String get invalidEmail => 'Внесете валидна е-пошта.';

  @override
  String get kakaoContinue => 'Продолжи со Kakao';

  @override
  String get labelLangCode => 'Код на јазик (пр. en-US, ko-KR)';

  @override
  String get labelName => 'Име';

  @override
  String get labelNote => 'Белешка';

  @override
  String get labelPOS => 'Дел од говорот';

  @override
  String get labelRole => 'Улога';

  @override
  String get labelSentence => 'Реченица';

  @override
  String get labelSentenceCollection => 'Збирка реченици';

  @override
  String get labelSentenceType => 'Тип на реченица';

  @override
  String get labelShowMemorized => 'Завршено';

  @override
  String get labelType => 'Тип:';

  @override
  String get labelWord => 'Збор';

  @override
  String get labelWordbook => 'Речник';

  @override
  String get language => 'Јазик';

  @override
  String get languageSettings => 'Поставки за јазик';

  @override
  String get languageSettingsTitle => 'Поставки за јазик';

  @override
  String get libTitleFirstMeeting => 'Прва средба';

  @override
  String get libTitleGreetings1 => 'Поздрав 1';

  @override
  String get libTitleNouns1 => 'Именки 1';

  @override
  String get libTitleVerbs1 => 'Глаголи 1';

  @override
  String get listen => 'Слушај';

  @override
  String get listening => 'Се слуша...';

  @override
  String get loadingParticipants => 'Се вчитуваат учесници...';

  @override
  String get location => 'Локација';

  @override
  String get login => 'Најави се';

  @override
  String get logout => 'Одјави се';

  @override
  String get logoutConfirmMessage =>
      'Дали сте сигурни дека сакате да се одјавите од овој уред?';

  @override
  String get logoutConfirmTitle => 'Одјави се';

  @override
  String get male => 'Машки';

  @override
  String get manageParticipants => 'Управувај со учесници';

  @override
  String get manual => 'Рачен внос';

  @override
  String get markAsStudied => 'Означи како научено';

  @override
  String get materialInfo => 'Информации за материјалот';

  @override
  String get me => 'Јас';

  @override
  String get menuDeviceImport => 'Увези материјали од уредот';

  @override
  String get menuHelp => 'Помош';

  @override
  String get menuLanguageSettings => 'Поставки за јазик';

  @override
  String get menuOnlineLibrary => 'Онлајн библиотека';

  @override
  String get menuSelectMaterialSet => 'Изберете збирка материјали за учење';

  @override
  String get menuSettings => 'Поставки за јазик';

  @override
  String get menuTutorial => 'Туторијал за користење';

  @override
  String get menuWebDownload => 'Веб-страница';

  @override
  String get metadataDialogTitle => 'Детална класификација';

  @override
  String get metadataFormType => 'Граматичка форма';

  @override
  String get metadataRootWord => 'Основен збор (Root Word)';

  @override
  String get micButtonTooltip => 'Започни со гласовно препознавање';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Тековно избрана збирка материјали: $name';
  }

  @override
  String get mode2Title => 'Преглед';

  @override
  String get mode3Next => 'Следно';

  @override
  String get mode3Start => 'Започни';

  @override
  String get mode3Stop => 'Запри';

  @override
  String get mode3TryAgain => 'Обиди се повторно';

  @override
  String get mySentenceCollection => 'Моја колекција на реченици';

  @override
  String get myWordbook => 'Мој речник';

  @override
  String get neutral => 'Неутрален';

  @override
  String get newSubjectName => 'Нов наслов на речник/фрази';

  @override
  String get next => 'Следно';

  @override
  String get noDialogueHistory => 'Нема историја на разговори.';

  @override
  String get noInternetWarningMic =>
      'Нема интернет конекција. Препознавањето на глас може да не е достапно во офлајн режим.';

  @override
  String get noInternetWarningTranslate =>
      'Нема интернет конекција. Функцијата за превод не е достапна во офлајн режим. Користете го режимот за повторување.';

  @override
  String get noMaterialsInCategory => 'Нема материјали во оваа категорија.';

  @override
  String get noParticipantsFound => 'Нема регистрирани учесници.';

  @override
  String get noRecords => 'Нема записи за учење за избраниот јазик';

  @override
  String get noStudyMaterial => 'Нема материјал за учење.';

  @override
  String get noTextToPlay => 'Нема текст за репродукција';

  @override
  String get noTranslationToSave => 'Нема превод за зачувување';

  @override
  String get noVoiceDetected => 'Не е откриен глас';

  @override
  String get notSelected => '- Не е избрано -';

  @override
  String get onlineLibraryCheckInternet =>
      'Проверете ја вашата интернет конекција или обидете се повторно подоцна.';

  @override
  String get onlineLibraryLoadFailed => 'Неуспешно вчитување на материјалите.';

  @override
  String get onlineLibraryNoMaterials => 'Нема материјали.';

  @override
  String get participantDeleted => 'Учесникот е избришан.';

  @override
  String get participantRename => 'Преименувај учесник';

  @override
  String get partner => 'Партнер';

  @override
  String get partnerMode => 'Режим на партнер';

  @override
  String get password => 'Лозинка';

  @override
  String get passwordTooShort => 'Лозинката мора да има најмалку 6 знаци.';

  @override
  String get perfect => 'Совршено!';

  @override
  String get personaFriend => 'Локален пријател';

  @override
  String get personaGuide => 'Туристички водич';

  @override
  String get personaTeacher => 'Наставник по англиски јазик';

  @override
  String get playAgain => 'Играј повторно';

  @override
  String playbackFailed(String error) {
    return 'Репродукцијата не успеа: $error';
  }

  @override
  String get playing => 'Се репродуцира...';

  @override
  String get posAdjective => 'Придавка';

  @override
  String get posAdverb => 'Прилог';

  @override
  String get posConjunction => 'Сврзник';

  @override
  String get posInterjection => 'Извик';

  @override
  String get posNoun => 'Именка';

  @override
  String get posPreposition => 'Предлог/изговор';

  @override
  String get posPronoun => 'Заменка';

  @override
  String get posVerb => 'Глагол';

  @override
  String get practiceModeTitle => 'Вежба';

  @override
  String get practiceWordsOnly => 'Вежбај само зборови';

  @override
  String progress(int current, int total) {
    return 'Напредок: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Прикажи ги последните $count креирани';
  }

  @override
  String recognitionFailed(String error) {
    return 'Гласовното препознавање не успеа: $error';
  }

  @override
  String get recognized => 'Препознавањето е завршено';

  @override
  String get recognizedText => 'Препознаен изговор:';

  @override
  String get recordDeleted => 'Записот е избришан';

  @override
  String get refresh => 'Освежи';

  @override
  String get reset => 'Ресетирај';

  @override
  String get resetPracticeHistory => 'Ресетирај историја на вежбање';

  @override
  String get retry => 'Обиди се повторно?';

  @override
  String get reviewAll => 'Целосен преглед';

  @override
  String reviewCount(int count) {
    return 'Преглед $count пати';
  }

  @override
  String get reviewModeTitle => 'Преглед';

  @override
  String get roleAi => 'Вештачка интелигенција';

  @override
  String get roleThirdParty => 'Трето лице';

  @override
  String get roleUser => 'Корисник';

  @override
  String get save => 'Зачувај';

  @override
  String get saveData => 'Зачувај податоци';

  @override
  String saveFailed(String error) {
    return 'Зачувувањето не успеа: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Обидете се да зачувате преводи од режимот за пребарување';

  @override
  String get saved => 'Зачувувањето е завршено';

  @override
  String get saving => 'Се зачувува...';

  @override
  String score(String score) {
    return 'Точност: $score%';
  }

  @override
  String get scoreLabel => 'Резултат';

  @override
  String get search => 'Пребарај';

  @override
  String get searchConditions => 'Услови за пребарување';

  @override
  String get searchSentenceHint => 'Пребарај реченици...';

  @override
  String get searchWordHint => 'Пребарај зборови...';

  @override
  String get sectionSentence => 'Секција за реченици';

  @override
  String get sectionSentences => 'Реченици';

  @override
  String get sectionWord => 'Секција за зборови';

  @override
  String get sectionWords => 'Зборови';

  @override
  String get selectExistingSubject => 'Изберете постоечки наслов';

  @override
  String get selectMaterialPrompt => 'Изберете материјал за учење';

  @override
  String get selectMaterialSet => 'Изберете збирка материјали за учење';

  @override
  String get selectPOS => 'Изберете дел од говорот';

  @override
  String get selectParticipants => 'Избери учесници';

  @override
  String get selectSentenceType => 'Изберете тип на реченица';

  @override
  String get selectStudyMaterial => 'Изберете материјал за учење';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Реченица';

  @override
  String get signUp => 'Регистрирај се';

  @override
  String get similarTextFound => 'Пронајден е сличен текст';

  @override
  String get skip => 'Прескокни';

  @override
  String get source => 'Извор:';

  @override
  String get sourceLanguage => 'Јазик на оригиналот';

  @override
  String get sourceLanguageLabel => 'Мој јазик (Source)';

  @override
  String get speakNow => 'Зборувај сега!';

  @override
  String get speaker => 'Говорник';

  @override
  String get speakerSelect => 'Избери говорник';

  @override
  String get speakingPractice => 'Вежбање зборување';

  @override
  String get startChat => 'Започни разговор';

  @override
  String get startPractice => 'Започни со вежбање';

  @override
  String get startTutorial => 'Започни упатство';

  @override
  String get startWarning => 'Предупредување';

  @override
  String get startsWith => 'Почетна буква';

  @override
  String get statusCheckEmail =>
      'Ве молиме проверете ја вашата е-пошта за да ја завршите верификацијата.';

  @override
  String statusDownloading(Object name) {
    return 'Се презема: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Неуспешно увезување: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name успешно е увезен';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Најавата е откажана.';

  @override
  String statusLoginFailed(Object error) {
    return 'Неуспешна најава: $error';
  }

  @override
  String get statusLoginSuccess => 'Успешно се најавивте.';

  @override
  String get statusLogoutSuccess => 'Успешно се одјавивте.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Неуспешна регистрација: $error';
  }

  @override
  String get statusSigningUp => 'Се регистрирате...';

  @override
  String get stopPractice => 'Запри со вежбање';

  @override
  String get studyComplete => 'Учењето е завршено';

  @override
  String studyRecords(int count) {
    return 'Записи за учење ($count)';
  }

  @override
  String get styleFormal => 'Формално';

  @override
  String get styleInformal => 'Неформално';

  @override
  String get stylePolite => 'Љубезно';

  @override
  String get styleSlang => 'Сленг';

  @override
  String get subject => 'Наслов:';

  @override
  String get swapLanguages => 'Замени јазици';

  @override
  String get switchToAi => 'Префрли се во AI режим';

  @override
  String get switchToPartner => 'Префрли се во режим на партнер';

  @override
  String get syncingData => 'Се синхронизираат податоци...';

  @override
  String get tabConversation => 'Разговор';

  @override
  String tabReview(int count) {
    return 'Преглед ($count)';
  }

  @override
  String get tabSentence => 'Реченица';

  @override
  String get tabSpeaking => 'Зборување';

  @override
  String tabStudyMaterial(int count) {
    return 'Материјал за учење ($count)';
  }

  @override
  String get tabWord => 'Збор';

  @override
  String get tagFormal => 'Формално обраќање';

  @override
  String get tagSelection => 'Избор на ознака';

  @override
  String get targetLanguage => 'Целен јазик';

  @override
  String get targetLanguageFilter => 'Филтер за целен јазик:';

  @override
  String get targetLanguageLabel => 'Јазик за учење (Target)';

  @override
  String get thinkingTimeDesc =>
      'Време за размислување пред да се открие точниот одговор.';

  @override
  String get thinkingTimeInterval => 'Интервал на репродукција';

  @override
  String get timeUp => 'Времето истече!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Ознака за наслов (Збирка)';

  @override
  String get tooltipDecrease => 'Намали';

  @override
  String get tooltipIncrease => 'Зголеми';

  @override
  String get tooltipSearch => 'Пребарај';

  @override
  String get tooltipSpeaking => 'Зборување';

  @override
  String get tooltipStudyReview => 'Учење + преглед';

  @override
  String totalRecords(int count) {
    return 'Вкупно $count записи (види ги сите)';
  }

  @override
  String get translate => 'Преведи';

  @override
  String get translating => 'Се преведува...';

  @override
  String get translation => 'Превод';

  @override
  String get translationComplete =>
      'Преводот е завршен (потребно е зачувување)';

  @override
  String translationFailed(String error) {
    return 'Преводот не успеа: $error';
  }

  @override
  String get translationLimitExceeded => 'Ја надминавте границата за превод';

  @override
  String get translationLimitMessage =>
      'Ги искористивте сите бесплатни дневни преводи (5 пати).\\n\\nДали сакате да видите реклама и веднаш да надополните 5 пати?';

  @override
  String get translationLoaded => 'Зачуваниот превод е вчитан';

  @override
  String get translationRefilled => 'Бројот на преводи е надополнет 5 пати!';

  @override
  String get translationResultHint =>
      'Резултат од преводот - може да се уредува';

  @override
  String get tryAgain => 'Обиди се повторно';

  @override
  String get tutorialAiChatDesc =>
      'Вежбајте разговор во реалниот живот со AI лик.';

  @override
  String get tutorialAiChatTitle => 'AI Чет';

  @override
  String get tutorialContextDesc =>
      'Можете да ја зачувате истата реченица посебно ако ја запишете ситуацијата (на пример, утро, вечер).';

  @override
  String get tutorialContextTitle => 'Ознака за ситуација/контекст';

  @override
  String get tutorialLangSettingsDesc =>
      'Поставете ги оригиналниот јазик и целниот јазик за превод.';

  @override
  String get tutorialLangSettingsTitle => 'Поставки за јазик';

  @override
  String get tutorialM1ToggleDesc =>
      'Префрлете се помеѓу режимите на зборови и реченици овде.';

  @override
  String get tutorialM1ToggleTitle => 'Режим на зборови/реченици';

  @override
  String get tutorialM2DropdownDesc =>
      'Можете да изберете материјал за учење преку горното мени.';

  @override
  String get tutorialM2ImportDesc =>
      'Увезете JSON-датотека од папката на уредот.';

  @override
  String get tutorialM2ListDesc =>
      'Можете да го избришете со долго притискање (Long Click) на оваа картичка. Проверете ги зачуваните реченици и превртете ги.';

  @override
  String get tutorialM2ListTitle => 'Листа за учење';

  @override
  String get tutorialM2SearchDesc =>
      'Пребарајте зачувани зборови и реченици за брзо да ги најдете.';

  @override
  String get tutorialM2SelectDesc =>
      'Притиснете ја иконата за збирка материјали (📚) на горната лента со апликации за да изберете материјал за учење.';

  @override
  String get tutorialM2SelectTitle => 'Избор на материјал';

  @override
  String get tutorialM3IntervalDesc =>
      'Прилагодете го времето на чекање помеѓу речениците.';

  @override
  String get tutorialM3IntervalTitle => 'Поставување интервал';

  @override
  String get tutorialM3ResetDesc =>
      'Ресетирајте го напредокот и резултатот за точност за да започнете од почеток.';

  @override
  String get tutorialM3ResetTitle => 'Ресетирај историја';

  @override
  String get tutorialM3SelectDesc =>
      'Притиснете ја иконата за збирка материјали (📚) на горната лента со апликации за да изберете материјал за вежбање.';

  @override
  String get tutorialM3SelectTitle => 'Избор на материјал';

  @override
  String get tutorialM3StartDesc =>
      'Притиснете го копчето за репродукција за да го слушнете гласот на мајчин јазик и да повторите.';

  @override
  String get tutorialM3StartTitle => 'Започни со вежбање';

  @override
  String get tutorialM3WordsDesc =>
      'Ако го штиклирате ова, ќе вежбате само зачувани зборови.';

  @override
  String get tutorialM3WordsTitle => 'Вежбање зборови';

  @override
  String get tutorialMicDesc =>
      'Можете да внесувате со глас со притискање на копчето за микрофон.';

  @override
  String get tutorialMicTitle => 'Гласовен влез';

  @override
  String get tutorialSaveDesc =>
      'Зачувајте ги преведените резултати во записите за учење.';

  @override
  String get tutorialSaveTitle => 'Зачувај';

  @override
  String get tutorialSwapDesc =>
      'Заменете ги мојот јазик и јазикот за учење еден со друг.';

  @override
  String get tutorialTabDesc =>
      'Можете да го изберете режимот за учење што го сакате овде.';

  @override
  String get tutorialTapToContinue => 'Допрете го екранот за да продолжите';

  @override
  String get tutorialTransDesc => 'Преведете го внесениот текст.';

  @override
  String get tutorialTransTitle => 'Преведи';

  @override
  String get typeExclamation => 'Извичник';

  @override
  String get typeImperative => 'Заповед';

  @override
  String get typeQuestion => 'Прашање';

  @override
  String get typeStatement => 'Изјава';

  @override
  String get usageLimitTitle => 'Достигната е границата';

  @override
  String get useExistingText => 'Користете постоечки текст';

  @override
  String get viewOnlineGuide => 'Види онлајн водич';

  @override
  String get voluntaryTranslations => 'Доброволни преводи';

  @override
  String get watchAdAndRefill => 'Види реклама и надополни (+5 пати)';

  @override
  String get word => 'Збор';

  @override
  String get wordDefenseDesc =>
      'Одбранете ја базата зборувајќи ги зборовите пред непријателите да пристигнат.';

  @override
  String get wordDefenseTitle => 'Одбрана на зборови';

  @override
  String get wordModeLabel => 'Режим на зборови';

  @override
  String get yourPronunciation => 'Твој изговор';

  @override
  String get ttsUnsupportedNatively =>
      'Овој уред не поддржува изговор на овој јазик стандардно.';

  @override
  String get homeTab => 'Дома';

  @override
  String get welcomeTitle => 'Добредојдовте во Talkie!';

  @override
  String get welcomeDesc =>
      'Добре дојдовте во Talkie! Поддржуваме повеќе од 80 јазици ширум светот со 100% интегритет, нов премиум 3D дизајн и оптимизирани перформанси за совршено искуство за учење.';

  @override
  String get welcomeButton => 'Започни';

  @override
  String get labelDetails => 'Детали';

  @override
  String get translationResult => 'Резултат од преводот';

  @override
  String get inputContent => 'Внесен текст';

  @override
  String get translateNow => 'Преведи сега';

  @override
  String get tooltipSettingsConfirm => 'Потврди ги поставките';

  @override
  String get hintNoteExample => 'На пр.: контекст, хомоними...';

  @override
  String get hintTagExample => 'На пр.: бизнис, патување...';

  @override
  String get addNew => 'Додај нов';

  @override
  String get newNotebookTitle => 'Име на нова тетратка';

  @override
  String get enterNameHint => 'Внесете име';

  @override
  String get add => 'Додај';

  @override
  String get openSettings => 'Отвори поставки';

  @override
  String get helpNotebook =>
      'Изберете папка за зачувување на преведените резултати.';

  @override
  String get helpNote =>
      'Слободно запишувајте значења, примери, ситуации итн. за зборот.';

  @override
  String get helpTag =>
      'Внесете клучни зборови за подоцнежна категоризација или пребарување.';

  @override
  String get requestTranslation => 'Испрати барање за превод';

  @override
  String get statusRequestSuccess => 'Барањето за превод е успешно испратено.';

  @override
  String statusRequestFailed(String error) {
    return 'Неуспешно барање за превод: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Јазикот за учење не е поддржан';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Избраниот материјал не го поддржува моментално поставениот јазик за учење ($targetLang) и не може да се зачува локално. Дали сакате да испратите барање за превод?';
  }
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get helpTitle => 'Помош и водич';

  @override
  String get helpTabModes => 'Објаснување на режимите';

  @override
  String get helpTabJson => 'JSON формат';

  @override
  String get helpTabTour => 'Пробај';

  @override
  String get helpMode1Desc =>
      'Преведува со препознавање на говор и може да ги слушнете резултатите.';

  @override
  String get helpMode1Details =>
      '• Поставки за јазик: сменете го јазикот со кликнување на горната/долната икона\n• Прекинувач за зборови/реченици: префрлување режими\n• Гласовен влез: кликнете на иконата за микрофон за да започнете/запрете со слушање\n• Внесување текст: внесете директно за да преведете\n• Автоматско пребарување: откривање слични постоечки реченици\n• Превод: кликнете на копчето за превод за моментален превод\n• Слушање: репродукција на TTS со иконата за звучник\n• Зачувување: додајте записи со „Зачувување податоци“\n• Бришење: ресетирање на внесот';

  @override
  String get helpMode2Desc =>
      'Прегледајте ги зачуваните реченици и проверете дали сте ги запамтиле со функцијата за автоматско криење.';

  @override
  String get helpMode2Details =>
      '• Избор на материјали: изберете одредена збирка материјали или „Целосен преглед“\n• Превртување картичка: проверете го преводот со „Прикажи/Сокриј“ (автоматска проверка на учењето)\n• Слушање: репродукција на реченица TTS\n• Учење завршено: завршете го учењето со ознаката за проверка (V)\n• Бришење: долго притиснете на картичката за да го избришете записот\n• Услови за пребарување: филтрирајте по ознаки, неодамнешни ставки, почетни букви';

  @override
  String get helpMode3Desc =>
      'Вежбајте го вашиот изговор слушајќи и повторувајќи ги речениците (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Избор на материјал: изберете збирка материјали за учење\n• Поставување интервал: прилагодете го времето на чекање помеѓу речениците со копчињата [-] [+ ] (3 секунди ~ 60 секунди)\n• Почеток/Стоп: контрола на сесијата за следење\n• Зборување: слушајте го гласот и повторувајте\n• Повратни информации: приказ на резултатот за точност (0-100) и боја\n• Услови за пребарување: филтрирајте ги целите за вежбање по ознаки, неодамнешни ставки, почетни букви';

  @override
  String get helpModeChatDesc =>
      'Вежбајте разговор во реалниот живот со разговор со AI лик.';

  @override
  String get helpModeChatDetails =>
      '• AI разговор: вежбајте разговор зборувајќи на мојот јазик\n• Мулти лик: сменете го полот/јазикот/името на другата страна со менито над облакот за говор\n• Додај партнер: додајте нов соговорник (Странец) со копчето +\n• GPS: ситуациска драма заснована на тековната локација\n• Автоматско зачувување: автоматски преведување и зачувување на содржината на разговорот';

  @override
  String get helpJsonDesc =>
      'Следете го следниов формат за да увезете материјали за учење што ќе се користат во Mode 3 како JSON-датотека:';

  @override
  String get helpDialogueImportDesc =>
      'Увезете цел сет на разговори како JSON-датотека.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON структура: користете ја низата `dialogues` наместо `entries`\n• Автоматско обновување: насловите на разговорите, личностите и редоследот на пораките се обновуваат.\n• Локација: увезените разговори се појавуваат во табулаторот „Историја“ на режимот за AI разговор.';

  @override
  String get helpTourDesc =>
      '**Кругот за истакнување** ги води клучните функции.\n(На пример: долго притиснете на картичката означена со **Круг за истакнување** за да ја избришете.)';

  @override
  String get partnerMode => 'Режим на партнер';

  @override
  String get manual => 'Рачен внос';

  @override
  String get speaker => 'Говорник';

  @override
  String get switchToAi => 'Префрли се во AI режим';

  @override
  String get switchToPartner => 'Префрли се во режим на партнер';

  @override
  String get currentLocation => 'Тековна локација';

  @override
  String get location => 'Локација';

  @override
  String get partner => 'Партнер';

  @override
  String get me => 'Јас';

  @override
  String get currentMaterialLabel => 'Тековно избрана збирка материјали:';

  @override
  String get basicMaterialRepository => 'Основно складиште на реченици/зборови';

  @override
  String get word => 'Збор';

  @override
  String get sentence => 'Реченица';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Преглед ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Материјал за учење ($count)';
  }

  @override
  String get mode2Title => 'Преглед';

  @override
  String get search => 'Пребарај';

  @override
  String get translate => 'Преведи';

  @override
  String get listen => 'Слушај';

  @override
  String get saveData => 'Зачувај податоци';

  @override
  String get saved => 'Зачувувањето е завршено';

  @override
  String get delete => 'Избриши';

  @override
  String get materialInfo => 'Информации за материјалот';

  @override
  String get cancel => 'Откажи';

  @override
  String get confirm => 'Потврди';

  @override
  String get refresh => 'Освежи';

  @override
  String studyRecords(int count) {
    return 'Записи за учење ($count)';
  }

  @override
  String get targetLanguageFilter => 'Филтер за целен јазик:';

  @override
  String get noRecords => 'Нема записи за учење за избраниот јазик';

  @override
  String get saveTranslationsFromSearch =>
      'Обидете се да зачувате преводи од режимот за пребарување';

  @override
  String get flip => 'Прикажи';

  @override
  String get hide => 'Сокриј';

  @override
  String get deleteRecord => 'Избриши запис';

  @override
  String get confirmDelete =>
      'Дали сте сигурни дека сакате да го избришете овој запис за учење?';

  @override
  String get recordDeleted => 'Записот е избришан';

  @override
  String deleteFailed(String error) {
    return 'Бришењето не успеа: $error';
  }

  @override
  String get importJsonFile => 'Увези JSON-датотека';

  @override
  String get importing => 'Се увезува...';

  @override
  String get importComplete => 'Увозот е завршен';

  @override
  String get importFailed => 'Увозот не успеа';

  @override
  String importFile(String fileName) {
    return 'Датотека: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Вкупно: $count';
  }

  @override
  String importAdded(int count) {
    return 'Додадено: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Прескокнато: $count';
  }

  @override
  String get errors => 'Грешки:';

  @override
  String get error => 'Грешка';

  @override
  String importErrorMessage(String error) {
    return 'Увозот на датотеката не успеа:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Изберете материјал за учење';

  @override
  String get subject => 'Наслов:';

  @override
  String get source => 'Извор:';

  @override
  String get file => 'Датотека:';

  @override
  String progress(int current, int total) {
    return 'Напредок: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Ве молиме увезете JSON-датотека';

  @override
  String get selectMaterialPrompt => 'Изберете материјал за учење';

  @override
  String get studyComplete => 'Учењето е завршено';

  @override
  String get markAsStudied => 'Означи како научено';

  @override
  String get listening => 'Се слуша...';

  @override
  String get recognized => 'Препознавањето е завршено';

  @override
  String recognitionFailed(String error) {
    return 'Гласовното препознавање не успеа: $error';
  }

  @override
  String get checking => 'Се проверува...';

  @override
  String get translating => 'Се преведува...';

  @override
  String get translationComplete =>
      'Преводот е завршен (потребно е зачувување)';

  @override
  String get translationLoaded => 'Зачуваниот превод е вчитан';

  @override
  String translationFailed(String error) {
    return 'Преводот не успеа: $error';
  }

  @override
  String get enterTextToTranslate => 'Внесете текст за превод';

  @override
  String get saving => 'Се зачувува...';

  @override
  String get noTranslationToSave => 'Нема превод за зачувување';

  @override
  String saveFailed(String error) {
    return 'Зачувувањето не успеа: $error';
  }

  @override
  String get playing => 'Се репродуцира...';

  @override
  String get noTextToPlay => 'Нема текст за репродукција';

  @override
  String playbackFailed(String error) {
    return 'Репродукцијата не успеа: $error';
  }

  @override
  String get sourceLanguage => 'Јазик на оригиналот';

  @override
  String get targetLanguage => 'Целен јазик';

  @override
  String get similarTextFound => 'Пронајден е сличен текст';

  @override
  String get useExistingText => 'Користете постоечки текст';

  @override
  String get createNew => 'Продолжете со нова реченица';

  @override
  String reviewCount(int count) {
    return 'Преглед $count пати';
  }

  @override
  String get tabSpeaking => 'Зборување';

  @override
  String get speakingPractice => 'Вежбање зборување';

  @override
  String intervalSeconds(int seconds) {
    return 'Интервал: $seconds сек.';
  }

  @override
  String get yourPronunciation => 'Твој изговор';

  @override
  String get correctAnswer => 'Точен одговор';

  @override
  String score(String score) {
    return 'Точност: $score%';
  }

  @override
  String get perfect => 'Совршено!';

  @override
  String get good => 'Добро';

  @override
  String get tryAgain => 'Обиди се повторно';

  @override
  String get startPractice => 'Започни со вежбање';

  @override
  String get stopPractice => 'Запри со вежбање';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Започни упатство';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Гласовен влез';

  @override
  String get tutorialMicDesc =>
      'Можете да внесувате со глас со притискање на копчето за микрофон.';

  @override
  String get tutorialTabDesc =>
      'Можете да го изберете режимот за учење што го сакате овде.';

  @override
  String get tutorialTapToContinue => 'Допрете го екранот за да продолжите';

  @override
  String get tutorialTransTitle => 'Преведи';

  @override
  String get tutorialTransDesc => 'Преведете го внесениот текст.';

  @override
  String get tutorialSaveTitle => 'Зачувај';

  @override
  String get tutorialSaveDesc =>
      'Зачувајте ги преведените резултати во записите за учење.';

  @override
  String get tutorialM2SelectTitle => 'Избор на материјал';

  @override
  String get tutorialM2SelectDesc =>
      'Притиснете ја иконата за збирка материјали (📚) на горната лента со апликации за да изберете материјал за учење.';

  @override
  String get tutorialM2ListTitle => 'Листа за учење';

  @override
  String get tutorialM2ListDesc =>
      'Можете да го избришете со долго притискање (Long Click) на оваа картичка. Проверете ги зачуваните реченици и превртете ги.';

  @override
  String get tutorialM3SelectTitle => 'Избор на материјал';

  @override
  String get tutorialM3SelectDesc =>
      'Притиснете ја иконата за збирка материјали (📚) на горната лента со апликации за да изберете материјал за вежбање.';

  @override
  String get tutorialM3IntervalTitle => 'Поставување интервал';

  @override
  String get tutorialM3IntervalDesc =>
      'Прилагодете го времето на чекање помеѓу речениците.';

  @override
  String get tutorialM3StartTitle => 'Започни со вежбање';

  @override
  String get tutorialM3StartDesc =>
      'Притиснете го копчето за репродукција за да го слушнете гласот на мајчин јазик и да повторите.';

  @override
  String get startWarning => 'Предупредување';

  @override
  String get noVoiceDetected => 'Не е откриен глас';

  @override
  String get tooltipSearch => 'Пребарај';

  @override
  String get tooltipStudyReview => 'Учење + преглед';

  @override
  String get tooltipSpeaking => 'Зборување';

  @override
  String get tooltipDecrease => 'Намали';

  @override
  String get tooltipIncrease => 'Зголеми';

  @override
  String get languageSettings => 'Поставки за јазик';

  @override
  String get tutorialM2DropdownDesc =>
      'Можете да изберете материјал за учење преку горното мени.';

  @override
  String get tutorialM2ImportDesc =>
      'Увезете JSON-датотека од папката на уредот.';

  @override
  String get tutorialLangSettingsTitle => 'Поставки за јазик';

  @override
  String get tutorialLangSettingsDesc =>
      'Поставете ги оригиналниот јазик и целниот јазик за превод.';

  @override
  String get copy => 'Копирај';

  @override
  String get copiedToClipboard => 'Копирано во таблата со исечоци!';

  @override
  String get tutorialContextTitle => 'Ознака за ситуација/контекст';

  @override
  String get tutorialContextDesc =>
      'Можете да ја зачувате истата реченица посебно ако ја запишете ситуацијата (на пример, утро, вечер).';

  @override
  String get thinkingTimeInterval => 'Интервал на време за размислување';

  @override
  String get thinkingTimeDesc =>
      'Време за размислување пред да се открие точниот одговор.';

  @override
  String get autoPlay => 'Автоматска репродукција';

  @override
  String get timeUp => 'Времето истече!';

  @override
  String get gameModeTitle => 'Режим на игра';

  @override
  String get gameModeDesc => 'Изберете режим на игра за вежбање';

  @override
  String get wordDefenseTitle => 'Одбрана на зборови';

  @override
  String get wordDefenseDesc =>
      'Одбранете ја базата зборувајќи ги зборовите пред непријателите да пристигнат.';

  @override
  String get dialogueQuestTitle => 'Задачи за разговор';

  @override
  String get dialogueQuestDesc =>
      'Вежбајте разговор преку ситуациска драма. Изберете соодветен одговор и кажете го.';

  @override
  String get labelType => 'Тип:';

  @override
  String get labelWord => 'Збор';

  @override
  String get labelSentence => 'Реченица';

  @override
  String get contextTagLabel =>
      'Контекст/ситуација (опционално) - Пример: Утрински поздрав, Формално обраќање';

  @override
  String get contextTagHint =>
      'Запишете ја ситуацијата за да ја олесните разликата подоцна';

  @override
  String get usageLimitTitle => 'Достигната е границата';

  @override
  String get translationLimitExceeded => 'Ја надминавте границата за превод';

  @override
  String get translationLimitMessage =>
      'Ги искористивте сите бесплатни дневни преводи (5 пати).\\n\\nДали сакате да видите реклама и веднаш да надополните 5 пати?';

  @override
  String get watchAdAndRefill => 'Види реклама и надополни (+5 пати)';

  @override
  String get translationRefilled => 'Бројот на преводи е надополнет 5 пати!';

  @override
  String get adLoading => 'Рекламата се вчитува. Обидете се повторно подоцна.';

  @override
  String get reviewAll => 'Целосен преглед';

  @override
  String totalRecords(int count) {
    return 'Вкупно $count записи (види ги сите)';
  }

  @override
  String get filterAll => 'Сите';

  @override
  String get practiceWordsOnly => 'Вежбај само зборови';

  @override
  String get resetPracticeHistory => 'Ресетирај историја на вежбање';

  @override
  String get retry => 'Обиди се повторно?';

  @override
  String get noStudyMaterial => 'Нема материјал за учење.';

  @override
  String get gameOver => 'Game Over';

  @override
  String get playAgain => 'Играј повторно';

  @override
  String get speakNow => 'Зборувај сега!';

  @override
  String get scoreLabel => 'Резултат';

  @override
  String get viewOnlineGuide => 'Види онлајн водич';

  @override
  String get getMaterials => 'Земи материјали';

  @override
  String get swapLanguages => 'Замени јазици';

  @override
  String get next => 'Следно';

  @override
  String get wordModeLabel => 'Режим на зборови';

  @override
  String get accuracy => 'Точност';

  @override
  String get basicDefault => 'Основно';

  @override
  String get basic => 'Основно';

  @override
  String get tutorialM3WordsTitle => 'Вежбање зборови';

  @override
  String get tutorialM3WordsDesc =>
      'Ако го штиклирате ова, ќе вежбате само зачувани зборови.';

  @override
  String get enterTextHint => 'Внесете текст за превод';

  @override
  String get micButtonTooltip => 'Започни со гласовно препознавање';

  @override
  String get menuHelp => 'Помош';

  @override
  String get menuWebDownload => 'Веб-страница';

  @override
  String get menuDeviceImport => 'Увези материјали од уредот';

  @override
  String get menuSettings => 'Поставки за јазик';

  @override
  String get basicWords => 'Основно складиште на зборови';

  @override
  String get basicSentences => 'Основно складиште на реченици';

  @override
  String get selectMaterialSet => 'Изберете збирка материјали за учење';

  @override
  String get sectionWords => 'Зборови';

  @override
  String get sectionSentences => 'Реченици';

  @override
  String get languageSettingsTitle => 'Поставки за јазик';

  @override
  String get sourceLanguageLabel => 'Мој јазик (Source)';

  @override
  String get targetLanguageLabel => 'Јазик за учење (Target)';

  @override
  String get mode3Start => 'Започни';

  @override
  String get mode3Stop => 'Запри';

  @override
  String get mode3Next => 'Следно';

  @override
  String get mode3TryAgain => 'Обиди се повторно';

  @override
  String get tutorialM3ResetTitle => 'Ресетирај историја';

  @override
  String get tutorialSwapDesc =>
      'Заменете ги мојот јазик и јазикот за учење еден со друг.';

  @override
  String get recognizedText => 'Препознаен изговор:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Ресетирајте го напредокот и резултатот за точност за да започнете од почеток.';

  @override
  String get menuSelectMaterialSet => 'Изберете збирка материјали за учење';

  @override
  String get sectionWord => 'Секција за зборови';

  @override
  String get sectionSentence => 'Секција за реченици';

  @override
  String get tabWord => 'Збор';

  @override
  String get tabSentence => 'Реченица';

  @override
  String get errorProfanity =>
      'Не може да се преведе поради навредливи зборови.';

  @override
  String get errorHateSpeech => 'Не може да се преведе поради говор на омраза.';

  @override
  String get errorSexualContent =>
      'Не може да се преведе поради сексуална содржина.';

  @override
  String get errorOtherSafety =>
      'Преводот беше одбиен од политиката за безбедност на вештачката интелигенција.';

  @override
  String get clearAll => 'Избриши ги сите';

  @override
  String get disambiguationTitle => 'Изберете значење';

  @override
  String get disambiguationPrompt => 'Како сакате да го преведете?';

  @override
  String get skip => 'Прескокни';

  @override
  String get inputModeTitle => 'Внос';

  @override
  String get reviewModeTitle => 'Преглед';

  @override
  String get practiceModeTitle => 'Вежбање изговор';

  @override
  String get chatHistoryTitle => 'Историја на разговор';

  @override
  String get chatNew => 'Нов разговор';

  @override
  String get chatNewChat => 'Нов разговор';

  @override
  String get chatChoosePersona => 'Изберете лик';

  @override
  String get chatTypeHint => 'Внесете порака...';

  @override
  String chatFailed(Object error) {
    return 'Разговорот не успеа: $error';
  }

  @override
  String get chatNoConversations => 'Сè уште нема разговори';

  @override
  String get chatStartNewPrompt => 'Започнете нов разговор за да вежбате!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Извадок од разговор ($speaker)';
  }

  @override
  String get personaTeacher => 'Наставник по англиски јазик';

  @override
  String get personaGuide => 'Туристички водич';

  @override
  String get personaFriend => 'Локален пријател';

  @override
  String get chatUntitled => 'Разговор без наслов';

  @override
  String get chatAiChat => 'AI разговор';

  @override
  String get tutorialAiChatTitle => 'AI разговор';

  @override
  String get tutorialAiChatDesc =>
      'Вежбајте разговор во реалниот живот со AI лик.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Тековно избрана збирка материјали: $name';
  }

  @override
  String get basicWordRepository => 'Основно складиште на зборови';

  @override
  String get basicSentenceRepository => 'Основно складиште на реченици';

  @override
  String get chatEndTitle => 'Заврши и зачувај го разговорот';

  @override
  String get chatEndMessage => 'Дали сакате да го завршите разговорот?';

  @override
  String get chatSaveAndExit => 'Зачувај и излези';

  @override
  String get errorSelectCategory => 'Прво изберете збор или реченица!';

  @override
  String get tutorialM1ToggleTitle => 'Режим на зборови/реченици';

  @override
  String get tutorialM1ToggleDesc =>
      'Префрлете се помеѓу режимите на зборови и реченици овде.';

  @override
  String get metadataDialogTitle => 'Детална класификација';

  @override
  String get tagFormal => 'Формално обраќање';

  @override
  String get selectPOS => 'Изберете дел од говорот';

  @override
  String get selectSentenceType => 'Изберете тип на реченица';

  @override
  String get metadataRootWord => 'Основен збор (Root Word)';

  @override
  String get posNoun => 'Именка';

  @override
  String get posVerb => 'Глагол';

  @override
  String get posAdjective => 'Придавка';

  @override
  String get posAdverb => 'Прилог';

  @override
  String get posPronoun => 'Заменка';

  @override
  String get posPreposition => 'Предлог/изговор';

  @override
  String get posConjunction => 'Сврзник';

  @override
  String get posInterjection => 'Извик';

  @override
  String get typeStatement => 'Изјава';

  @override
  String get typeQuestion => 'Прашање';

  @override
  String get typeExclamation => 'Извичник';

  @override
  String get typeImperative => 'Заповед';

  @override
  String get labelNote => 'Белешка';

  @override
  String get labelShowMemorized => 'Завршено';

  @override
  String get tagSelection => 'Избор на ознака';

  @override
  String get metadataFormType => 'Граматичка форма';

  @override
  String get formInfinitive => 'Инфинитив/Сегашно време';

  @override
  String get formPast => 'Минато време';

  @override
  String get formPastParticiple => 'Минат партицип';

  @override
  String get formPresentParticiple => 'Сегашен партицип (ing)';

  @override
  String get formPresent => 'Сегашно време';

  @override
  String get formThirdPersonSingular => 'Трети лица еднина';

  @override
  String get formPlural => 'Множина';

  @override
  String get formSingular => 'Еднина';

  @override
  String get caseSubject => 'Номинатив';

  @override
  String get caseObject => 'Акузатив';

  @override
  String get casePossessive => 'Генитив';

  @override
  String get casePossessivePronoun => 'Присвојна заменка';

  @override
  String get caseReflexive => 'Рефлексивна';

  @override
  String get formPositive => 'Позитив';

  @override
  String get formComparative => 'Компаратив';

  @override
  String get formSuperlative => 'Суперлатив';

  @override
  String get searchConditions => 'Услови за пребарување';

  @override
  String recentNItems(int count) {
    return 'Прикажи ги последните $count креирани';
  }

  @override
  String get startsWith => 'Почетна буква';

  @override
  String get reset => 'Ресетирај';

  @override
  String get participantRename => 'Преименувај учесник';

  @override
  String get labelName => 'Име';

  @override
  String get gender => 'Пол';

  @override
  String get language => 'Јазик';

  @override
  String get male => 'Машки';

  @override
  String get female => 'Женски';

  @override
  String get neutral => 'Неутрален';

  @override
  String get chatAllConversations => 'Сите разговори';

  @override
  String get confirmDeleteConversation =>
      'Дали сте сигурни дека сакате да го избришете овој разговор?\nИзбришаните разговори не можат да се вратат.';
}

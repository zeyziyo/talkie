// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get helpTitle => 'Помоћ и водич';

  @override
  String get helpTabModes => 'Објашњење режима';

  @override
  String get helpTabJson => 'JSON формат';

  @override
  String get helpTabTour => 'Пробајте';

  @override
  String get helpMode1Desc =>
      'Препознајте глас да бисте превели и преслушали резултате.';

  @override
  String get helpMode1Details =>
      '• Подешавање језика: Притисните иконе на врху/дну да бисте променили језик\n• Пребацивање између речи/реченица: Промена режима\n• Гласовни унос: Притисните икону микрофона да бисте започели/зауставили слушање\n• Унос текста: Директно унесите текст за превод\n• Аутоматско претраживање: Откривање сличних постојећих реченица\n• Превод: Притисните дугме за превод за тренутни превод\n• Слушање: Репродукција текста у говор помоћу иконе звучника\n• Чување: Додајте запис помоћу опције „Сачувај податке“\n• Брисање: Иницијализација уноса';

  @override
  String get helpMode2Desc =>
      'Прегледајте сачуване реченице и проверите памћење помоћу функције аутоматског сакривања.';

  @override
  String get helpMode2Details =>
      '• Избор материјала: Изаберите одређену збирку материјала или „Комплетни преглед“\n• Превртање картице: Проверите превод помоћу опције „Прикажи/сакриј“ (аутоматска провера учења)\n• Слушање: Репродукција реченице помоћу текста у говор\n• Завршено учење: Означите као завршено учење помоћу ознаке за потврду (V)\n• Брисање: Држите картицу да бисте избрисали запис\n• Услови претраге: Филтрирање по ознаци, недавним ставкама, почетном слову';

  @override
  String get helpMode3Desc =>
      'Вежбајте изговор слушајући и понављајући реченице (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Избор материјала: Изаберите збирку материјала за учење\n• Подешавање интервала: Подесите време чекања између реченица помоћу дугмади [-] [+]. (3 секунде ~ 60 секунди)\n• Почетак/заустављање: Контролишите сесију праћења\n• Говор: Слушајте глас и понављајте\n• Повратне информације: Приказ резултата тачности (0-100) и боје\n• Услови претраге: Филтрирање циља за вежбање по ознаци, недавним ставкама, почетном слову';

  @override
  String get helpModeChatDesc =>
      'Вежбајте разговор у стварном животу разговором са AI персоном.';

  @override
  String get helpModeChatDetails =>
      '• AI ћаскање: Вежбајте разговор говорећи на свом језику\n• Вишеструка персона: Можете променити пол/језик/име друге особе помоћу менија изнад облачића за разговор\n• Додавање партнера: Додајте нову особу за разговор (Странац) помоћу дугмета +\n• GPS: Ситуациона драма заснована на вашој тренутној локацији\n• Аутоматско чување: Аутоматски превод и чување садржаја разговора';

  @override
  String get helpJsonDesc =>
      'Да бисте увезли материјале за учење које ћете користити у режиму 3 као JSON датотеку, следите овај формат:';

  @override
  String get helpDialogueImportDesc =>
      'Увезите комплетан скуп дијалога као JSON датотеку.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON структура: Користите низ `dialogues` уместо `entries`\n• Аутоматски опоравак: Наслов дијалога, персона и редослед порука се враћају.\n• Локација: Увезени дијалози се појављују на картици \'Историја\' у режиму AI ћаскања.';

  @override
  String get helpTourDesc =>
      '**Означени круг** вас води кроз главне функције.\n(На пример: Можете да избришете картицу држећи је **означени круг** показује на њу.)';

  @override
  String get partnerMode => 'Режим партнера';

  @override
  String get manual => 'Ручни унос';

  @override
  String get speaker => 'Говорник';

  @override
  String get switchToAi => 'Пребацивање на AI режим';

  @override
  String get switchToPartner => 'Пребацивање на режим партнера';

  @override
  String get currentLocation => 'Тренутна локација';

  @override
  String get location => 'Локација';

  @override
  String get partner => 'Партнер';

  @override
  String get me => 'Ја';

  @override
  String get currentMaterialLabel => 'Тренутно изабрана збирка материјала:';

  @override
  String get basicMaterialRepository => 'Основно складиште реченица/речи';

  @override
  String get word => 'Реч';

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
  String get search => 'Претрага';

  @override
  String get translate => 'Превод';

  @override
  String get listen => 'Слушање';

  @override
  String get saveData => 'Сачувај податке';

  @override
  String get saved => 'Сачувано';

  @override
  String get delete => 'Обриши';

  @override
  String get materialInfo => 'Информације о материјалу';

  @override
  String get cancel => 'Откажи';

  @override
  String get confirm => 'Потврди';

  @override
  String get refresh => 'Освежи';

  @override
  String studyRecords(int count) {
    return 'Записи о учењу ($count)';
  }

  @override
  String get targetLanguageFilter => 'Филтер циљног језика:';

  @override
  String get noRecords => 'Нема записа о учењу за изабрани језик';

  @override
  String get saveTranslationsFromSearch =>
      'Покушајте да сачувате преводе из режима претраге';

  @override
  String get flip => 'Прикажи';

  @override
  String get hide => 'Сакриј';

  @override
  String get deleteRecord => 'Обриши запис';

  @override
  String get confirmDelete =>
      'Да ли сте сигурни да желите да обришете овај запис о учењу?';

  @override
  String get recordDeleted => 'Запис је обрисан';

  @override
  String deleteFailed(String error) {
    return 'Брисање није успело: $error';
  }

  @override
  String get importJsonFile => 'Увези JSON датотеку';

  @override
  String get importing => 'Увоз у току...';

  @override
  String get importComplete => 'Увоз завршен';

  @override
  String get importFailed => 'Увоз није успео';

  @override
  String importFile(String fileName) {
    return 'Датотека: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Укупно: $count';
  }

  @override
  String importAdded(int count) {
    return 'Додато: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Прескочено: $count';
  }

  @override
  String get errors => 'Грешке:';

  @override
  String get error => 'Грешка';

  @override
  String importErrorMessage(String error) {
    return 'Увоз датотеке није успео:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Изаберите материјал за учење';

  @override
  String get subject => 'Наслов:';

  @override
  String get source => 'Извор:';

  @override
  String get file => 'Датотека:';

  @override
  String progress(int current, int total) {
    return 'Напредак: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Увезите JSON датотеку';

  @override
  String get selectMaterialPrompt => 'Изаберите материјал за учење';

  @override
  String get studyComplete => 'Учење завршено';

  @override
  String get markAsStudied => 'Означи као научено';

  @override
  String get listening => 'Слушање у току...';

  @override
  String get recognized => 'Препознавање завршено';

  @override
  String recognitionFailed(String error) {
    return 'Препознавање говора није успело: $error';
  }

  @override
  String get checking => 'Провера у току...';

  @override
  String get translating => 'Превод у току...';

  @override
  String get translationComplete => 'Превод завршен (потребно чување)';

  @override
  String get translationLoaded => 'Учитан сачувани превод';

  @override
  String translationFailed(String error) {
    return 'Превод није успео: $error';
  }

  @override
  String get enterTextToTranslate => 'Унесите текст за превод';

  @override
  String get saving => 'Чување у току...';

  @override
  String get noTranslationToSave => 'Нема превода за чување';

  @override
  String saveFailed(String error) {
    return 'Чување није успело: $error';
  }

  @override
  String get playing => 'Репродукција у току...';

  @override
  String get noTextToPlay => 'Нема текста за репродукцију';

  @override
  String playbackFailed(String error) {
    return 'Репродукција није успела: $error';
  }

  @override
  String get sourceLanguage => 'Изворни језик';

  @override
  String get targetLanguage => 'Циљни језик';

  @override
  String get similarTextFound => 'Пронађен сличан текст';

  @override
  String get useExistingText => 'Користи постојећи текст';

  @override
  String get createNew => 'Настави са новом реченицом';

  @override
  String reviewCount(int count) {
    return 'Преглед $count пута';
  }

  @override
  String get tabSpeaking => 'Говор';

  @override
  String get speakingPractice => 'Вежбање говора';

  @override
  String intervalSeconds(int seconds) {
    return 'Интервал: $seconds секунди';
  }

  @override
  String get yourPronunciation => 'Ваш изговор';

  @override
  String get correctAnswer => 'Тачан одговор';

  @override
  String score(String score) {
    return 'Тачност: $score%';
  }

  @override
  String get perfect => 'Савршено!';

  @override
  String get good => 'Добро';

  @override
  String get tryAgain => 'Покушајте поново';

  @override
  String get startPractice => 'Започните вежбање';

  @override
  String get stopPractice => 'Зауставите вежбање';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Започните упутство';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Гласовни унос';

  @override
  String get tutorialMicDesc =>
      'Можете уносити гласом притиском на дугме микрофона.';

  @override
  String get tutorialTabDesc => 'Овде можете да изаберете жељени режим учења.';

  @override
  String get tutorialTapToContinue => 'Додирните екран да бисте наставили';

  @override
  String get tutorialTransTitle => 'Превод';

  @override
  String get tutorialTransDesc => 'Преводи унети текст.';

  @override
  String get tutorialSaveTitle => 'Чување';

  @override
  String get tutorialSaveDesc =>
      'Сачувајте преведене резултате у записе о учењу.';

  @override
  String get tutorialM2SelectTitle => 'Избор материјала';

  @override
  String get tutorialM2SelectDesc =>
      'Притисните икону збирке материјала (📚) на горњој траци апликације да бисте изабрали материјал за учење.';

  @override
  String get tutorialM2ListTitle => 'Листа за учење';

  @override
  String get tutorialM2ListDesc =>
      'Можете да обришете ову картицу држањем (дуги клик). Проверите и преврните сачуване реченице.';

  @override
  String get tutorialM3SelectTitle => 'Избор материјала';

  @override
  String get tutorialM3SelectDesc =>
      'Притисните икону збирке материјала (📚) на горњој траци апликације да бисте изабрали материјал за вежбање.';

  @override
  String get tutorialM3IntervalTitle => 'Подешавање интервала';

  @override
  String get tutorialM3IntervalDesc => 'Подесите време чекања између реченица.';

  @override
  String get tutorialM3StartTitle => 'Започните вежбање';

  @override
  String get tutorialM3StartDesc =>
      'Притисните дугме за репродукцију да бисте слушали изворни глас и понављали.';

  @override
  String get startWarning => 'Упозорење';

  @override
  String get noVoiceDetected => 'Глас није откривен';

  @override
  String get tooltipSearch => 'Претрага';

  @override
  String get tooltipStudyReview => 'Учење+Преглед';

  @override
  String get tooltipSpeaking => 'Говор';

  @override
  String get tooltipDecrease => 'Смањи';

  @override
  String get tooltipIncrease => 'Повећај';

  @override
  String get languageSettings => 'Подешавања језика';

  @override
  String get tutorialM2DropdownDesc =>
      'Можете да изаберете материјал за учење преко горњег менија.';

  @override
  String get tutorialM2ImportDesc =>
      'Увезите JSON датотеку из фасцикле на уређају.';

  @override
  String get tutorialLangSettingsTitle => 'Подешавања језика';

  @override
  String get tutorialLangSettingsDesc =>
      'Подесите изворни језик и циљни језик за превод.';

  @override
  String get copy => 'Копирај';

  @override
  String get copiedToClipboard => 'Копирано у клипборд!';

  @override
  String get tutorialContextTitle => 'Ознака ситуације/контекста';

  @override
  String get tutorialContextDesc =>
      'Можете да сачувате исту реченицу одвојено ако забележите ситуацију (нпр. јутро, вече).';

  @override
  String get thinkingTimeInterval => 'Интервал времена размишљања';

  @override
  String get thinkingTimeDesc =>
      'Време за размишљање пре откривања тачног одговора.';

  @override
  String get autoPlay => 'Аутоматска репродукција';

  @override
  String get timeUp => 'Време је истекло!';

  @override
  String get gameModeTitle => 'Режим игре';

  @override
  String get gameModeDesc => 'Изаберите режим игре за вежбање';

  @override
  String get wordDefenseTitle => 'Одбрана речи';

  @override
  String get wordDefenseDesc =>
      'Одбраните базу изговарањем речи пре него што непријатељ стигне.';

  @override
  String get dialogueQuestTitle => 'Дијалошка потрага';

  @override
  String get dialogueQuestDesc =>
      'Вежбајте разговор кроз ситуациону драму. Изаберите и изговорите одговарајући одговор.';

  @override
  String get labelType => 'Врста:';

  @override
  String get labelWord => 'Реч';

  @override
  String get labelSentence => 'Реченица';

  @override
  String get contextTagLabel =>
      'Контекст/Ситуација (опционално) - Пример: Јутарњи поздрав, учтив говор';

  @override
  String get contextTagHint =>
      'Забележите ситуацију да бисте је лакше разликовали касније';

  @override
  String get usageLimitTitle => 'Достигнуто ограничење';

  @override
  String get translationLimitExceeded => 'Прекорачено ограничење превода';

  @override
  String get translationLimitMessage =>
      'Искористили сте све бесплатне дневне преводе (5 пута).\\n\\nДа ли желите одмах да допуните 5 пута гледањем огласа?';

  @override
  String get watchAdAndRefill => 'Допуните гледањем огласа (+5 пута)';

  @override
  String get translationRefilled => 'Број превода је допуњен 5 пута!';

  @override
  String get adLoading => 'Оглас се учитава. Покушајте поново касније.';

  @override
  String get reviewAll => 'Комплетан преглед';

  @override
  String totalRecords(int count) {
    return 'Укупно $count записа (прикажи све)';
  }

  @override
  String get filterAll => 'Све';

  @override
  String get practiceWordsOnly => 'Вежбајте само речи';

  @override
  String get resetPracticeHistory => 'Ресетуј историју вежбања';

  @override
  String get retry => 'Покушати поново?';

  @override
  String get noStudyMaterial => 'Нема материјала за учење.';

  @override
  String get gameOver => 'Крај игре';

  @override
  String get playAgain => 'Играј поново';

  @override
  String get speakNow => 'Изговори сада!';

  @override
  String get scoreLabel => 'Резултат';

  @override
  String get viewOnlineGuide => 'Погледајте онлајн водич';

  @override
  String get getMaterials => 'Преузмите материјале';

  @override
  String get swapLanguages => 'Замени језике';

  @override
  String get next => 'Следеће';

  @override
  String get wordModeLabel => 'Режим речи';

  @override
  String get accuracy => 'Тачност';

  @override
  String get basicDefault => 'Основно';

  @override
  String get basic => 'Основно';

  @override
  String get tutorialM3WordsTitle => 'Вежбање речи';

  @override
  String get tutorialM3WordsDesc =>
      'Ако је означено, вежбајте само сачуване речи.';

  @override
  String get enterTextHint => 'Унесите текст за превод';

  @override
  String get micButtonTooltip => 'Започните препознавање говора';

  @override
  String get menuHelp => 'Помоћ';

  @override
  String get menuWebDownload => 'Почетна страница';

  @override
  String get menuDeviceImport => 'Увези материјале са уређаја';

  @override
  String get menuSettings => 'Подешавања језика';

  @override
  String get basicWords => 'Основно складиште речи';

  @override
  String get basicSentences => 'Основно складиште реченица';

  @override
  String get selectMaterialSet => 'Изаберите збирку материјала за учење';

  @override
  String get sectionWords => 'Речи';

  @override
  String get sectionSentences => 'Реченице';

  @override
  String get languageSettingsTitle => 'Подешавања језика';

  @override
  String get sourceLanguageLabel => 'Мој језик (Изворни)';

  @override
  String get targetLanguageLabel => 'Језик учења (Циљни)';

  @override
  String get mode3Start => 'Почетак';

  @override
  String get mode3Stop => 'Завршетак';

  @override
  String get mode3Next => 'Следеће';

  @override
  String get mode3TryAgain => 'Покушајте поново';

  @override
  String get tutorialM3ResetTitle => 'Ресетуј историју';

  @override
  String get tutorialSwapDesc => 'Мења мој језик и језик учења.';

  @override
  String get recognizedText => 'Препознати изговор:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Ресетује напредак и резултат тачности да би се поново започело од почетка.';

  @override
  String get menuSelectMaterialSet => 'Изаберите збирку материјала за учење';

  @override
  String get sectionWord => 'Одељак речи';

  @override
  String get sectionSentence => 'Одељак реченице';

  @override
  String get tabWord => 'Реч';

  @override
  String get tabSentence => 'Реченица';

  @override
  String get errorProfanity => 'Не може да се преведе због садржаја псовки.';

  @override
  String get errorHateSpeech =>
      'Не може да се преведе због садржаја говора мржње.';

  @override
  String get errorSexualContent =>
      'Не може да се преведе због садржаја сексуалне природе.';

  @override
  String get errorOtherSafety =>
      'Превод је одбијен због AI безбедносне политике.';

  @override
  String get clearAll => 'Обриши све';

  @override
  String get disambiguationTitle => 'Изаберите значење';

  @override
  String get disambiguationPrompt => 'Како желите да преведете?';

  @override
  String get skip => 'Прескочи';

  @override
  String get inputModeTitle => 'Унос';

  @override
  String get reviewModeTitle => 'Преглед';

  @override
  String get practiceModeTitle => 'Вежбање изговора';

  @override
  String get chatHistoryTitle => 'Историја разговора';

  @override
  String get chatNew => 'Нови разговор';

  @override
  String get chatNewChat => 'Нови разговор';

  @override
  String get chatChoosePersona => 'Изаберите персону';

  @override
  String get chatTypeHint => 'Унесите поруку...';

  @override
  String chatFailed(Object error) {
    return 'Ћаскање није успело: $error';
  }

  @override
  String get chatNoConversations => 'Још нема разговора';

  @override
  String get chatStartNewPrompt => 'Започните нови разговор за вежбање!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Издвојено из разговора ($speaker)';
  }

  @override
  String get personaTeacher => 'Наставник енглеског';

  @override
  String get personaGuide => 'Туристички водич';

  @override
  String get personaFriend => 'Локални пријатељ';

  @override
  String get chatUntitled => 'Разговор без наслова';

  @override
  String get chatAiChat => 'AI ћаскање';

  @override
  String get tutorialAiChatTitle => 'AI ћаскање';

  @override
  String get tutorialAiChatDesc =>
      'Вежбајте разговор у стварном животу са AI персоном.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Тренутно изабрана збирка материјала: $name';
  }

  @override
  String get basicWordRepository => 'Основно складиште речи';

  @override
  String get basicSentenceRepository => 'Основно складиште реченица';

  @override
  String get chatEndTitle => 'Завршетак и чување разговора';

  @override
  String get chatEndMessage => 'Да ли желите да завршите разговор?';

  @override
  String get chatSaveAndExit => 'Сачувај и изађи';

  @override
  String get errorSelectCategory => 'Прво изаберите реч или реченицу!';

  @override
  String get tutorialM1ToggleTitle => 'Режим речи/реченице';

  @override
  String get tutorialM1ToggleDesc => 'Пребаците режим речи и реченице овде.';

  @override
  String get metadataDialogTitle => 'Детаљна класификација';

  @override
  String get tagFormal => 'Учтиво';

  @override
  String get selectPOS => 'Изаберите врсту речи';

  @override
  String get selectSentenceType => 'Изаберите врсту реченице';

  @override
  String get metadataRootWord => 'Основни облик (Root Word)';

  @override
  String get posNoun => 'Именица';

  @override
  String get posVerb => 'Глагол';

  @override
  String get posAdjective => 'Придев';

  @override
  String get posAdverb => 'Прилог';

  @override
  String get posPronoun => 'Заменица';

  @override
  String get posPreposition => 'Предлог/Предлог';

  @override
  String get posConjunction => 'Веза';

  @override
  String get posInterjection => 'Узвик';

  @override
  String get typeStatement => 'Изјава';

  @override
  String get typeQuestion => 'Питање';

  @override
  String get typeExclamation => 'Узвик';

  @override
  String get typeImperative => 'Заповест';

  @override
  String get labelNote => 'Белешка';

  @override
  String get labelShowMemorized => 'Завршено';

  @override
  String get tagSelection => 'Избор ознаке';

  @override
  String get metadataFormType => 'Граматички облик';

  @override
  String get formInfinitive => 'Инфинитив/садашњи облик';

  @override
  String get formPast => 'Прошло време';

  @override
  String get formPastParticiple => 'Прошли партицип';

  @override
  String get formPresentParticiple => 'Садашњи партицип (-ing)';

  @override
  String get formPresent => 'Садашње време';

  @override
  String get formThirdPersonSingular => '3. лице једнине';

  @override
  String get formPlural => 'Множина';

  @override
  String get formSingular => 'Једнина';

  @override
  String get caseSubject => 'Номинатив';

  @override
  String get caseObject => 'Акузатив';

  @override
  String get casePossessive => 'Генитив';

  @override
  String get casePossessivePronoun => 'Посесивна заменица';

  @override
  String get caseReflexive => 'Рефлексивна заменица';

  @override
  String get formPositive => 'Позитив';

  @override
  String get formComparative => 'Компаратив';

  @override
  String get formSuperlative => 'Суперлатив';

  @override
  String get searchConditions => 'Услови претраге';

  @override
  String recentNItems(int count) {
    return 'Прикажи последњих $count креираних';
  }

  @override
  String get startsWith => 'Почетно слово';

  @override
  String get reset => 'Ресетуј';

  @override
  String get participantRename => 'Промени име учесника';

  @override
  String get labelName => 'Име';

  @override
  String get gender => 'Пол';

  @override
  String get language => 'Језик';

  @override
  String get male => 'Мушки';

  @override
  String get female => 'Женски';

  @override
  String get neutral => 'Неутрално';

  @override
  String get chatAllConversations => 'Сви разговори';

  @override
  String get confirmDeleteConversation =>
      'Да ли сте сигурни да желите да избришете овај разговор?\nИзбрисани разговори се не могу вратити.';
}

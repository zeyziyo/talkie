// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get basicWords => 'Основно складиште речи';

  @override
  String get inputLanguage => '입력 언어';

  @override
  String get translationLanguage => '번역 언어';

  @override
  String get simplifiedGuidance =>
      '일상의 대화를 외국어로 순간 변환! Talkie가 당신의 언어 생활을 기록해 드립니다.';

  @override
  String get cancel => 'Откажи';

  @override
  String get accuracy => 'Тачност';

  @override
  String get ttsMissing =>
      'Глас мотора за овај језик није инсталиран на вашем уређају.';

  @override
  String get ttsInstallGuide =>
      'Инсталирајте одговарајуће језичке податке у подешавањима за Андроид > Google TTS.';

  @override
  String get adLoading => 'Оглас се учитава. Покушајте поново касније.';

  @override
  String get addNewSubject => 'Додај нови наслов';

  @override
  String get addParticipant => 'Додај учесника';

  @override
  String get addTagHint => 'Додај ознаку...';

  @override
  String get alreadyHaveAccount => 'Већ имате налог?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Аутоматска репродукција';

  @override
  String get basic => 'Основно';

  @override
  String get basicDefault => 'Основно';

  @override
  String get basicMaterialRepository => 'Основно складиште реченица/речи';

  @override
  String get basicSentenceRepository => 'Основно складиште реченица';

  @override
  String get basicSentences => 'Основно складиште реченица';

  @override
  String get basicWordRepository => 'Основно складиште речи';

  @override
  String get caseObject => 'Акузатив';

  @override
  String get casePossessive => 'Генитив';

  @override
  String get casePossessivePronoun => 'Посесивна заменица';

  @override
  String get caseReflexive => 'Рефлексивна заменица';

  @override
  String get caseSubject => 'Номинатив';

  @override
  String get chatAiChat => 'Ћаскање';

  @override
  String get chatAllConversations => 'Сви разговори';

  @override
  String get chatChoosePersona => 'Изаберите персону';

  @override
  String get chatEndMessage => 'Да ли желите да завршите разговор?';

  @override
  String get chatEndTitle => 'Завршетак и чување разговора';

  @override
  String chatFailed(Object error) {
    return 'Ћаскање није успело: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Издвојено из разговора ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Историја разговора';

  @override
  String get chatNew => 'Нови разговор';

  @override
  String get chatNewChat => 'Нови разговор';

  @override
  String get chatNoConversations => 'Још нема разговора';

  @override
  String get chatSaveAndExit => 'Сачувај и изађи';

  @override
  String get chatStartNewPrompt => 'Започните нови разговор за вежбање!';

  @override
  String get chatTypeHint => 'Унесите поруку...';

  @override
  String get chatUntitled => 'Разговор без наслова';

  @override
  String get checking => 'Провера у току...';

  @override
  String get clearAll => 'Обриши све';

  @override
  String get confirm => 'Потврди';

  @override
  String get confirmDelete =>
      'Да ли сте сигурни да желите да обришете овај запис о учењу?';

  @override
  String get confirmDeleteConversation =>
      'Да ли сте сигурни да желите да избришете овај разговор?\nИзбрисани разговори се не могу вратити.';

  @override
  String get confirmDeleteParticipant =>
      'Да ли сте сигурни да желите да избришете овог учесника?';

  @override
  String get contextTagHint =>
      'Забележите ситуацију да бисте је лакше разликовали касније';

  @override
  String get contextTagLabel =>
      'Контекст/Ситуација (опционално) - Пример: Јутарњи поздрав, учтив говор';

  @override
  String get copiedToClipboard => 'Копирано у клипборд!';

  @override
  String get copy => 'Копирај';

  @override
  String get correctAnswer => 'Тачан одговор';

  @override
  String get createNew => 'Настави са новом реченицом';

  @override
  String get currentLocation => 'Тренутна локација';

  @override
  String get currentMaterialLabel => 'Тренутно изабрана збирка материјала:';

  @override
  String get delete => 'Обриши';

  @override
  String deleteFailed(String error) {
    return 'Брисање није успело: $error';
  }

  @override
  String get deleteRecord => 'Обриши запис';

  @override
  String get dialogueQuestDesc =>
      'Вежбајте разговор кроз ситуациону драму. Изаберите и изговорите одговарајући одговор.';

  @override
  String get dialogueQuestTitle => 'Дијалошка потрага';

  @override
  String get disambiguationPrompt => 'Како желите да преведете?';

  @override
  String get disambiguationTitle => 'Изаберите значење';

  @override
  String get dontHaveAccount => 'Немате налог?';

  @override
  String get editParticipant => 'Измени учесника';

  @override
  String get email => 'Е-пошта';

  @override
  String get emailAlreadyInUse =>
      'Овај имејл је већ регистрован. Молимо вас да се пријавите или користите опцију за проналажење лозинке.';

  @override
  String get enterNewSubjectName => 'Унесите нови наслов';

  @override
  String get enterSentenceHint => 'Унесите реченицу...';

  @override
  String get enterTextHint => 'Унесите текст за превод';

  @override
  String get enterTextToTranslate => 'Унесите текст за превод';

  @override
  String get enterWordHint => 'Унесите реч...';

  @override
  String get error => 'Грешка';

  @override
  String get errorHateSpeech =>
      'Не може да се преведе због садржаја говора мржње.';

  @override
  String get errorOtherSafety =>
      'Превод је одбијен због AI безбедносне политике.';

  @override
  String get errorProfanity => 'Не може да се преведе због садржаја псовки.';

  @override
  String get errorSelectCategory => 'Прво изаберите реч или реченицу!';

  @override
  String get errorSexualContent =>
      'Не може да се преведе због садржаја сексуалне природе.';

  @override
  String get errors => 'Грешке:';

  @override
  String get female => 'Женски';

  @override
  String get file => 'Датотека:';

  @override
  String get filterAll => 'Све';

  @override
  String get flip => 'Прикажи';

  @override
  String get formComparative => 'Компаратив';

  @override
  String get formInfinitive => 'Инфинитив/садашњи облик';

  @override
  String get formPast => 'Прошло време';

  @override
  String get formPastParticiple => 'Прошли партицип';

  @override
  String get formPlural => 'Множина';

  @override
  String get formPositive => 'Позитив';

  @override
  String get formPresent => 'Садашње време';

  @override
  String get formPresentParticiple => 'Садашњи партицип (-ing)';

  @override
  String get formSingular => 'Једнина';

  @override
  String get formSuperlative => 'Суперлатив';

  @override
  String get formThirdPersonSingular => '3. лице једнине';

  @override
  String get gameModeDesc => 'Изаберите режим игре за вежбање';

  @override
  String get gameModeTitle => 'Режим игре';

  @override
  String get gameOver => 'Крај игре';

  @override
  String get gender => 'Пол';

  @override
  String get generalTags => 'Опште ознаке';

  @override
  String get getMaterials => 'Преузмите материјале';

  @override
  String get good => 'Добро';

  @override
  String get googleContinue => 'Настави преко Google-а';

  @override
  String get helpDialogueImportDesc =>
      'Увезите комплетан скуп дијалога као JSON датотеку.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON структура: Користите низ `dialogues` уместо `entries`\n• Аутоматски опоравак: Наслов дијалога, персона и редослед порука се враћају.\n• Локација: Увезени дијалози се појављују на картици \'Историја\' у режиму AI ћаскања.';

  @override
  String get helpJsonDesc =>
      'Да бисте увезли материјале за учење које ћете користити у режиму 3 као JSON датотеку, следите овај формат:';

  @override
  String get helpJsonTypeDialogue => 'Дијалог';

  @override
  String get helpJsonTypeSentence => 'Реченица';

  @override
  String get helpJsonTypeWord => 'Реч';

  @override
  String get helpMode1Desc =>
      'Препознајте глас да бисте превели и преслушали резултате.';

  @override
  String get helpMode1Details =>
      '• Подешавање језика: Притисните иконе на врху/дну да бисте променили језик\n• Пребацивање између речи/реченица: Промена режима\n• Гласовни унос: Притисните икону микрофона да бисте започели/зауставили слушање\n• Унос текста: Директно унесите текст за превод\n• Аутоматско претраживање: Откривање сличних постојећих реченица\n• Превод: Притисните дугме за превод за тренутни превод\n• Слушање: Репродукција текста у говор помоћу иконе звучника\n• Чување: Додајте запис помоћу опције „Сачувај податке“\n• Брисање: Иницијализација уноса (TODO: Translate)';

  @override
  String get helpMode2Desc =>
      'Прегледајте сачуване реченице и проверите памћење помоћу функције аутоматског сакривања.';

  @override
  String get helpMode2Details =>
      '• Izaberite zbirku materijala: Koristite opciju \'Izaberite zbirku materijala\' ili \'Online biblioteka materijala\' u meniju (⋮) u gornjem desnom uglu.\n• Okrenite karticu: Proverite prevod pomoću opcije \'Prikaži/Sakrij\'.\n• Slušanje: Reprodukujte izgovor pomoću ikone zvučnika.\n• Završeno učenje: Označite znakom potvrde (V) da je učenje završeno.\n• Brisanje: Dugo pritisnite karticu (dugi klik) da biste izbrisali zapis.\n• Pretraga i filter: Podrška za traku za pretragu (pametna pretraga u realnom vremenu) i filtere oznaka i početnih slova.';

  @override
  String get helpMode3Desc =>
      'Вежбајте изговор слушајући реченице и понављајући их (сенчење).';

  @override
  String get helpMode3Details =>
      '• Избор материјала: Изаберите збирку материјала за учење\n• Подешавање интервала: Подесите време чекања између реченица помоћу дугмади [-] [+]. (3 секунде ~ 60 секунди)\n• Почетак/заустављање: Контролишите сесију праћења\n• Говор: Слушајте глас и понављајте\n• Повратне информације: Приказ резултата тачности (0-100) и боје\n• Услови претраге: Филтрирање циља за вежбање по ознаци, недавним ставкама, почетном слову';

  @override
  String get helpModeChatDesc =>
      'Вежбајте разговор у стварним ситуацијама комуницирајући са АИ персоном.';

  @override
  String get helpModeChatDetails =>
      '• AI ћаскање: Вежбајте разговор говорећи на свом језику\n• Вишеструка персона: Можете променити пол/језик/име друге особе помоћу менија изнад облачића за разговор\n• Додавање партнера: Додајте нову особу за разговор (Странац) помоћу дугмета +\n• GPS: Ситуациона драма заснована на вашој тренутној локацији\n• Аутоматско чување: Аутоматски превод и чување садржаја разговора (TODO: Translate)';

  @override
  String get helpTabJson => 'JSON формат';

  @override
  String get helpTabModes => 'Објашњење режима';

  @override
  String get helpTabTour => 'Пробајте';

  @override
  String get helpTitle => 'Помоћ и водич';

  @override
  String get helpTourDesc =>
      '**Означени круг** вас води кроз главне функције.\n(На пример: Можете да избришете картицу држећи је **означени круг** показује на њу.)';

  @override
  String get hide => 'Сакриј';

  @override
  String importAdded(int count) {
    return 'Додато: $count';
  }

  @override
  String get importComplete => 'Увоз завршен';

  @override
  String get importDuplicateTitleError =>
      'Материјал са истим насловом већ постоји. Промените наслов и покушајте поново.';

  @override
  String importErrorMessage(String error) {
    return 'Увоз датотеке није успео:\\n$error';
  }

  @override
  String get importFailed => 'Увоз није успео';

  @override
  String importFile(String fileName) {
    return 'Датотека: $fileName';
  }

  @override
  String get importJsonFile => 'Увези JSON датотеку';

  @override
  String get importJsonFilePrompt => 'Увезите JSON датотеку';

  @override
  String importSkipped(int count) {
    return 'Прескочено: $count';
  }

  @override
  String importTotal(int count) {
    return 'Укупно: $count';
  }

  @override
  String get importing => 'Увоз у току...';

  @override
  String get inputModeTitle => 'Унос';

  @override
  String intervalSeconds(int seconds) {
    return 'Интервал: $seconds секунди';
  }

  @override
  String get invalidEmail => 'Унесите важећу адресу е-поште.';

  @override
  String get kakaoContinue => 'Настави преко Какао-а';

  @override
  String get labelLangCode => 'Код језика (нпр. en-US, ko-KR)';

  @override
  String get labelName => 'Име';

  @override
  String get labelNote => 'Белешка';

  @override
  String get labelPOS => 'Врста речи';

  @override
  String get labelRole => 'Улога';

  @override
  String get labelSentence => 'Реченица';

  @override
  String get labelSentenceCollection => 'Збирка реченица';

  @override
  String get labelSentenceType => 'Тип реченице';

  @override
  String get labelShowMemorized => 'Завршено';

  @override
  String get labelType => 'Врста:';

  @override
  String get labelWord => 'Реч';

  @override
  String get labelWordbook => 'Речник';

  @override
  String get language => 'Језик';

  @override
  String get languageSettings => 'Подешавања језика';

  @override
  String get languageSettingsTitle => 'Подешавања језика';

  @override
  String get libTitleFirstMeeting => 'Први сусрет';

  @override
  String get libTitleGreetings1 => 'Поздрав 1';

  @override
  String get libTitleNouns1 => 'Именице 1';

  @override
  String get libTitleVerbs1 => 'Глаголи 1';

  @override
  String get listen => 'Слушање';

  @override
  String get listening => 'Слушање у току...';

  @override
  String get loadingParticipants => 'Учитавање учесника...';

  @override
  String get location => 'Локација';

  @override
  String get login => 'Пријави ме';

  @override
  String get logout => 'Одјави ме';

  @override
  String get logoutConfirmMessage =>
      'Да ли сте сигурни да желите да се одјавите са овог уређаја?';

  @override
  String get logoutConfirmTitle => 'Одјављивање';

  @override
  String get male => 'Мушки';

  @override
  String get manageParticipants => 'Управљање учесницима';

  @override
  String get manual => 'Ручни унос';

  @override
  String get markAsStudied => 'Означи као научено';

  @override
  String get materialInfo => 'Информације о материјалу';

  @override
  String get me => 'Ја';

  @override
  String get menuDeviceImport => 'Увези материјале са уређаја';

  @override
  String get menuHelp => 'Помоћ';

  @override
  String get menuLanguageSettings => 'Подешавања језика';

  @override
  String get menuOnlineLibrary => 'Онлајн библиотека';

  @override
  String get menuSelectMaterialSet => 'Изаберите збирку материјала за учење';

  @override
  String get menuSettings => 'Подешавања језика';

  @override
  String get menuTutorial => 'Туторијал';

  @override
  String get menuWebDownload => 'Почетна страница';

  @override
  String get metadataDialogTitle => 'Детаљна класификација';

  @override
  String get metadataFormType => 'Граматички облик';

  @override
  String get metadataRootWord => 'Основни облик (Root Word)';

  @override
  String get micButtonTooltip => 'Започните препознавање говора';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Тренутно изабрана збирка материјала: $name';
  }

  @override
  String get mode2Title => 'Преглед';

  @override
  String get mode3Next => 'Следеће';

  @override
  String get mode3Start => 'Почетак';

  @override
  String get mode3Stop => 'Завршетак';

  @override
  String get mode3TryAgain => 'Покушајте поново';

  @override
  String get mySentenceCollection => 'Моја листа реченица';

  @override
  String get myWordbook => 'Моја листа речи';

  @override
  String get neutral => 'Неутрално';

  @override
  String get newSubjectName => 'Нови наслов збирке речи/фраза';

  @override
  String get next => 'Следеће';

  @override
  String get noDialogueHistory => 'Нема историје разговора.';

  @override
  String get noInternetWarningMic =>
      'Нема интернет конекције. Препознавање говора можда неће бити доступно у офлајн режиму.';

  @override
  String get noInternetWarningTranslate =>
      'Нема интернет конекције. Функција превођења није доступна у офлајн режиму. Користите режим за преглед.';

  @override
  String get noMaterialsInCategory => 'Нема материјала у овој категорији.';

  @override
  String get noParticipantsFound => 'Нема регистрованих учесника.';

  @override
  String get noRecords => 'Нема записа о учењу за изабрани језик';

  @override
  String get noStudyMaterial => 'Нема материјала за учење.';

  @override
  String get noTextToPlay => 'Нема текста за репродукцију';

  @override
  String get noTranslationToSave => 'Нема превода за чување';

  @override
  String get noVoiceDetected => 'Глас није откривен';

  @override
  String get notSelected => '- Није изабрано -';

  @override
  String get onlineLibraryCheckInternet =>
      'Проверите интернет конекцију или покушајте поново касније.';

  @override
  String get onlineLibraryLoadFailed => 'Учитавање материјала није успело.';

  @override
  String get onlineLibraryNoMaterials => 'Нема материјала.';

  @override
  String get participantDeleted => 'Учесник је избрисан.';

  @override
  String get participantRename => 'Промени име учесника';

  @override
  String get partner => 'Партнер';

  @override
  String get partnerMode => 'Режим партнера';

  @override
  String get password => 'Лозинка';

  @override
  String get passwordTooShort => 'Лозинка мора имати најмање 6 карактера.';

  @override
  String get perfect => 'Савршено!';

  @override
  String get personaFriend => 'Локални пријатељ';

  @override
  String get personaGuide => 'Туристички водич';

  @override
  String get personaTeacher => 'Наставник енглеског';

  @override
  String get playAgain => 'Играј поново';

  @override
  String playbackFailed(String error) {
    return 'Репродукција није успела: $error';
  }

  @override
  String get playing => 'Репродукција у току...';

  @override
  String get posAdjective => 'Придев';

  @override
  String get posAdverb => 'Прилог';

  @override
  String get posConjunction => 'Веза';

  @override
  String get posInterjection => 'Узвик';

  @override
  String get posNoun => 'Именица';

  @override
  String get posPreposition => 'Предлог/Предлог';

  @override
  String get posPronoun => 'Заменица';

  @override
  String get posVerb => 'Глагол';

  @override
  String get practiceModeTitle => 'Вежба';

  @override
  String get practiceWordsOnly => 'Вежбајте само речи';

  @override
  String progress(int current, int total) {
    return 'Напредак: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Прикажи последњих $count креираних';
  }

  @override
  String recognitionFailed(String error) {
    return 'Препознавање говора није успело: $error';
  }

  @override
  String get recognized => 'Препознавање завршено';

  @override
  String get recognizedText => 'Препознати изговор:';

  @override
  String get recordDeleted => 'Запис је обрисан';

  @override
  String get refresh => 'Освежи';

  @override
  String get reset => 'Ресетуј';

  @override
  String get resetPracticeHistory => 'Ресетуј историју вежбања';

  @override
  String get retry => 'Покушати поново?';

  @override
  String get reviewAll => 'Комплетан преглед';

  @override
  String reviewCount(int count) {
    return 'Преглед $count пута';
  }

  @override
  String get reviewModeTitle => 'Преглед';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Трећа страна';

  @override
  String get roleUser => 'Корисник';

  @override
  String get save => 'Сачувај';

  @override
  String get saveData => 'Сачувај податке';

  @override
  String saveFailed(String error) {
    return 'Чување није успело: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Покушајте да сачувате преводе из режима претраге';

  @override
  String get saved => 'Сачувано';

  @override
  String get saving => 'Чување у току...';

  @override
  String score(String score) {
    return 'Тачност: $score%';
  }

  @override
  String get scoreLabel => 'Резултат';

  @override
  String get search => 'Претрага';

  @override
  String get searchConditions => 'Услови претраге';

  @override
  String get searchSentenceHint => 'Претрага реченица...';

  @override
  String get searchWordHint => 'Претрага речи...';

  @override
  String get sectionSentence => 'Одељак реченице';

  @override
  String get sectionSentences => 'Реченице';

  @override
  String get sectionWord => 'Одељак речи';

  @override
  String get sectionWords => 'Речи';

  @override
  String get selectExistingSubject => 'Изабери постојећи наслов';

  @override
  String get selectMaterialPrompt => 'Изаберите материјал за учење';

  @override
  String get selectMaterialSet => 'Изаберите збирку материјала за учење';

  @override
  String get selectPOS => 'Изаберите врсту речи';

  @override
  String get selectParticipants => 'Изаберите учеснике';

  @override
  String get selectSentenceType => 'Изаберите врсту реченице';

  @override
  String get selectStudyMaterial => 'Изаберите материјал за учење';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Реченица';

  @override
  String get signUp => 'Региструј ме';

  @override
  String get similarTextFound => 'Пронађен сличан текст';

  @override
  String get skip => 'Прескочи';

  @override
  String get source => 'Извор:';

  @override
  String get sourceLanguage => 'Изворни језик';

  @override
  String get sourceLanguageLabel => 'Мој језик (Изворни)';

  @override
  String get speakNow => 'Изговори сада!';

  @override
  String get speaker => 'Говорник';

  @override
  String get speakerSelect => 'Изаберите говорника';

  @override
  String get speakingPractice => 'Вежбање говора';

  @override
  String get startChat => 'Започни разговор';

  @override
  String get startPractice => 'Започните вежбање';

  @override
  String get startTutorial => 'Започните упутство';

  @override
  String get startWarning => 'Упозорење';

  @override
  String get startsWith => 'Почетно слово';

  @override
  String get statusCheckEmail =>
      'Молимо вас да верификујете своју е-пошту да бисте довршили аутентификацију.';

  @override
  String statusDownloading(Object name) {
    return 'Преузимање: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Увоз није успео: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name је успешно увезен/а';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Пријава је отказана.';

  @override
  String statusLoginFailed(Object error) {
    return 'Пријава није успела: $error';
  }

  @override
  String get statusLoginSuccess => 'Успешно сте се пријавили.';

  @override
  String get statusLogoutSuccess => 'Успешно сте се одјавили.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Регистрација није успела: $error';
  }

  @override
  String get statusSigningUp => 'Регистрација у току...';

  @override
  String get stopPractice => 'Зауставите вежбање';

  @override
  String get studyComplete => 'Учење завршено';

  @override
  String studyRecords(int count) {
    return 'Записи о учењу ($count)';
  }

  @override
  String get styleFormal => 'Формално';

  @override
  String get styleInformal => 'Неформално';

  @override
  String get stylePolite => 'Учтиво';

  @override
  String get styleSlang => 'Сленг';

  @override
  String get subject => 'Наслов:';

  @override
  String get swapLanguages => 'Замени језике';

  @override
  String get switchToAi => 'Пребацивање на AI режим';

  @override
  String get switchToPartner => 'Пребацивање на режим партнера';

  @override
  String get syncingData => 'Синхронизација података...';

  @override
  String get tabConversation => 'Разговор';

  @override
  String tabReview(int count) {
    return 'Преглед ($count)';
  }

  @override
  String get tabSentence => 'Реченица';

  @override
  String get tabSpeaking => 'Говор';

  @override
  String tabStudyMaterial(int count) {
    return 'Материјал за учење ($count)';
  }

  @override
  String get tabWord => 'Реч';

  @override
  String get tagFormal => 'Учтиво';

  @override
  String get tagSelection => 'Избор ознаке';

  @override
  String get targetLanguage => 'Циљни језик';

  @override
  String get targetLanguageFilter => 'Филтер циљног језика:';

  @override
  String get targetLanguageLabel => 'Језик учења (Циљни)';

  @override
  String get thinkingTimeDesc =>
      'Време за размишљање пре откривања тачног одговора.';

  @override
  String get thinkingTimeInterval => 'Интервал репродукције';

  @override
  String get timeUp => 'Време је истекло!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Насловне ознаке (збирка)';

  @override
  String get tooltipDecrease => 'Смањи';

  @override
  String get tooltipIncrease => 'Повећај';

  @override
  String get tooltipSearch => 'Претрага';

  @override
  String get tooltipSpeaking => 'Говор';

  @override
  String get tooltipStudyReview => 'Учење+Преглед';

  @override
  String totalRecords(int count) {
    return 'Укупно $count записа (прикажи све)';
  }

  @override
  String get translate => 'Превод';

  @override
  String get translating => 'Превод у току...';

  @override
  String get translation => 'Превод';

  @override
  String get translationComplete => 'Превод завршен (потребно чување)';

  @override
  String translationFailed(String error) {
    return 'Превод није успео: $error';
  }

  @override
  String get translationLimitExceeded => 'Прекорачено ограничење превода';

  @override
  String get translationLimitMessage =>
      'Искористили сте све бесплатне дневне преводе (5 пута).\\n\\nДа ли желите одмах да допуните 5 пута гледањем огласа?';

  @override
  String get translationLoaded => 'Учитан сачувани превод';

  @override
  String get translationRefilled => 'Број превода је допуњен 5 пута!';

  @override
  String get translationResultHint => 'Резултат превода - може се изменити';

  @override
  String get tryAgain => 'Покушајте поново';

  @override
  String get tutorialAiChatDesc =>
      'Вежбајте разговор у стварном животу са AI персоном.';

  @override
  String get tutorialAiChatTitle => 'АИ Ћаскање';

  @override
  String get tutorialContextDesc =>
      'Можете да сачувате исту реченицу одвојено ако забележите ситуацију (нпр. јутро, вече).';

  @override
  String get tutorialContextTitle => 'Ознака ситуације/контекста';

  @override
  String get tutorialLangSettingsDesc =>
      'Подесите изворни језик и циљни језик за превод.';

  @override
  String get tutorialLangSettingsTitle => 'Подешавања језика';

  @override
  String get tutorialM1ToggleDesc => 'Пребаците режим речи и реченице овде.';

  @override
  String get tutorialM1ToggleTitle => 'Режим речи/реченице';

  @override
  String get tutorialM2DropdownDesc =>
      'Можете да изаберете материјал за учење преко горњег менија.';

  @override
  String get tutorialM2ImportDesc =>
      'Увезите JSON датотеку из фасцикле на уређају.';

  @override
  String get tutorialM2ListDesc =>
      'Можете да обришете ову картицу држањем (дуги клик). Проверите и преврните сачуване реченице.';

  @override
  String get tutorialM2ListTitle => 'Листа за учење';

  @override
  String get tutorialM2SearchDesc =>
      'Можете брзо да пронађете сачуване речи и реченице претрагом.';

  @override
  String get tutorialM2SelectDesc =>
      'Притисните икону збирке материјала (📚) на горњој траци апликације да бисте изабрали материјал за учење.';

  @override
  String get tutorialM2SelectTitle => 'Избор материјала';

  @override
  String get tutorialM3IntervalDesc => 'Подесите време чекања између реченица.';

  @override
  String get tutorialM3IntervalTitle => 'Подешавање интервала';

  @override
  String get tutorialM3ResetDesc =>
      'Ресетује напредак и резултат тачности да би се поново започело од почетка.';

  @override
  String get tutorialM3ResetTitle => 'Ресетуј историју';

  @override
  String get tutorialM3SelectDesc =>
      'Притисните икону збирке материјала (📚) на горњој траци апликације да бисте изабрали материјал за вежбање.';

  @override
  String get tutorialM3SelectTitle => 'Избор материјала';

  @override
  String get tutorialM3StartDesc =>
      'Притисните дугме за репродукцију да бисте слушали изворни глас и понављали.';

  @override
  String get tutorialM3StartTitle => 'Започните вежбање';

  @override
  String get tutorialM3WordsDesc =>
      'Ако је означено, вежбајте само сачуване речи.';

  @override
  String get tutorialM3WordsTitle => 'Вежбање речи';

  @override
  String get tutorialMicDesc =>
      'Можете уносити гласом притиском на дугме микрофона.';

  @override
  String get tutorialMicTitle => 'Гласовни унос';

  @override
  String get tutorialSaveDesc =>
      'Сачувајте преведене резултате у записе о учењу.';

  @override
  String get tutorialSaveTitle => 'Чување';

  @override
  String get tutorialSwapDesc => 'Мења мој језик и језик учења.';

  @override
  String get tutorialTabDesc => 'Овде можете да изаберете жељени режим учења.';

  @override
  String get tutorialTapToContinue => 'Додирните екран да бисте наставили';

  @override
  String get tutorialTransDesc => 'Преводи унети текст.';

  @override
  String get tutorialTransTitle => 'Превод';

  @override
  String get typeExclamation => 'Узвик';

  @override
  String get typeImperative => 'Заповест';

  @override
  String get typeQuestion => 'Питање';

  @override
  String get typeStatement => 'Изјава';

  @override
  String get usageLimitTitle => 'Достигнуто ограничење';

  @override
  String get useExistingText => 'Користи постојећи текст';

  @override
  String get viewOnlineGuide => 'Погледајте онлајн водич';

  @override
  String get voluntaryTranslations => 'Добровољни преводи';

  @override
  String get watchAdAndRefill => 'Допуните гледањем огласа (+5 пута)';

  @override
  String get word => 'Реч';

  @override
  String get wordDefenseDesc =>
      'Одбраните базу изговарањем речи пре него што непријатељ стигне.';

  @override
  String get wordDefenseTitle => 'Одбрана речи';

  @override
  String get wordModeLabel => 'Режим речи';

  @override
  String get yourPronunciation => 'Ваш изговор';

  @override
  String get ttsUnsupportedNatively =>
      'Овај уређај не подржава гласовни излаз за овај језик.';

  @override
  String get welcomeTitle => 'Dobro došli u Talkie!';

  @override
  String get welcomeDesc =>
      'Talkie podržava preko 80 jezika i pametni je alat za prevođenje za putnike. Unapredite svoje veštine govora kroz AI Chat!';

  @override
  String get welcomeButton => 'Započni';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get accuracy => 'Точност';

  @override
  String get adLoading =>
      'Рекламата се зарежда. Моля, опитайте отново по-късно.';

  @override
  String get add => 'Добави';

  @override
  String get addNew => 'Добави нов';

  @override
  String get addNewSubject => 'Добавяне на ново заглавие';

  @override
  String get addTagHint => 'Добавяне на етикет...';

  @override
  String get alreadyHaveAccount => 'Вече имате акаунт?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Автоматично пускане';

  @override
  String get basic => 'Основен';

  @override
  String get basicDefault => 'Основен';

  @override
  String get basicMaterialRepository => 'Основно хранилище на изречения/думи';

  @override
  String get basicSentenceRepository => 'Основно хранилище на изречения';

  @override
  String get basicSentences => 'Основно хранилище на изречения';

  @override
  String get basicWordRepository => 'Основно хранилище на думи';

  @override
  String get basicWords => 'Основно хранилище на думи';

  @override
  String get cancel => 'Отказ';

  @override
  String get caseObject => 'Винителен падеж';

  @override
  String get casePossessive => 'Притежателен падеж';

  @override
  String get casePossessivePronoun => 'Притежателно местоимение';

  @override
  String get caseReflexive => 'Възвратно местоимение';

  @override
  String get caseSubject => 'Именителен падеж';

  @override
  String get checking => 'Проверка...';

  @override
  String get clearAll => 'Изчистване на всички';

  @override
  String get confirm => 'Потвърждение';

  @override
  String get confirmDelete => 'Искате ли да изтриете този запис за обучение?';

  @override
  String get contextTagHint =>
      'Запишете ситуацията, за да ви е по-лесно да я разграничите по-късно';

  @override
  String get contextTagLabel =>
      'Контекст/Ситуация (по избор) - напр. Добро утро, Официално';

  @override
  String get copiedToClipboard => 'Копирано в клипборда!';

  @override
  String get copy => 'Копиране';

  @override
  String get correctAnswer => 'Верен отговор';

  @override
  String get createNew => 'Продължаване с ново изречение';

  @override
  String get currentLocation => 'Текущо местоположение';

  @override
  String get currentMaterialLabel => 'Текущо избрана колекция от материали:';

  @override
  String get delete => 'Изтриване';

  @override
  String deleteFailed(String error) {
    return 'Неуспешно изтриване: $error';
  }

  @override
  String get deleteRecord => 'Изтриване на запис';

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => 'Нямате акаунт?';

  @override
  String get email => 'Имейл';

  @override
  String get emailAlreadyInUse =>
      'Този имейл вече е регистриран. Моля, влезте или използвайте опцията за забравена парола.';

  @override
  String get enterNameHint => 'Въведете име';

  @override
  String get enterNewSubjectName => 'Въведете ново заглавие';

  @override
  String get enterSentenceHint => 'Въведете изречение...';

  @override
  String get enterTextHint => 'Въведете текст за превод';

  @override
  String get enterTextToTranslate => 'Въведете текст за превод';

  @override
  String get enterWordHint => 'Въведете дума...';

  @override
  String get error => 'Грешка';

  @override
  String get errorHateSpeech =>
      'Не може да се преведе, защото съдържа език на омразата.';

  @override
  String get errorOtherSafety =>
      'Преводът е отказан от политиката за безопасност на AI.';

  @override
  String get errorQuotaExceeded => '서버 사용량이 많아 번역이 지연되고 있습니다. 잠시 후 다시 시도해 주세요.';

  @override
  String get errorSafetyPolicy => 'AI 안전 정책으로 인해 번역이 제한되었습니다.';

  @override
  String get errorProfanity => 'Не може да се преведе, защото съдържа ругатни.';

  @override
  String get errorSelectCategory => 'Моля, първо изберете дума или изречение!';

  @override
  String get errorSexualContent =>
      'Не може да се преведе, защото съдържа сексуално съдържание.';

  @override
  String get errors => 'Грешки:';

  @override
  String get extractedText => 'Разпознат текст';

  @override
  String get female => 'Жена';

  @override
  String get file => 'Файл:';

  @override
  String get filterAll => 'Всички';

  @override
  String get flip => 'Показване';

  @override
  String get formComparative => 'Сравнителна степен';

  @override
  String get formInfinitive => 'Инфинитив/Сегашно време';

  @override
  String get formPast => 'Минало време';

  @override
  String get formPastParticiple => 'Минало причастие';

  @override
  String get formPlural => 'Множествено число';

  @override
  String get formPositive => 'Положителна степен';

  @override
  String get formPresent => 'Сегашно време';

  @override
  String get formPresentParticiple => 'Сегашно причастие (-ing)';

  @override
  String get formSingular => 'Единствено число';

  @override
  String get formSuperlative => 'Превислителна степен';

  @override
  String get formThirdPersonSingular => 'Трети човек единствено число';

  @override
  String get gameModeDesc => 'Изберете режим на игра, който да практикувате';

  @override
  String get gameModeTitle => 'Режим на игра';

  @override
  String get gameOver => 'Играта свърши';

  @override
  String get gender => 'Пол';

  @override
  String get generalTags => 'Общи етикети';

  @override
  String get getMaterials => 'Получаване на материали';

  @override
  String get good => 'Добре';

  @override
  String get googleContinue => 'Продължи с Google';

  @override
  String get helpJsonDesc =>
      'Следвайте този формат, за да импортирате учебни материали във формат JSON за режим 3:';

  @override
  String get helpJsonTypeSentence => 'Изречение';

  @override
  String get helpJsonTypeWord => 'Дума';

  @override
  String get helpMode1Desc =>
      'Започнете изучаването на езици по най-интуитивния начин с премиум 3D микрофон и големи икони на клавиатура.';

  @override
  String get helpMode1Details =>
      '• Настройки на езика: Проверете моя език и езика, който изучавате, с бутона за език в горната част на началния екран и променете езика за обучение.\n• Опростено въвеждане: Въведете незабавно през големия микрофон и текстовия прозорец в центъра.\n• Потвърждение на настройките: След като приключите с въвеждането, натиснете синия бутон за отметка вдясно. Ще се появи прозорец с подробни настройки.\n• Подробни настройки: В появилия се диалогов прозорец можете да зададете колекция от данни, анотации (бележки) и тагове за запазване.\n• Превеждане сега: След като завършите настройките, натиснете зеления бутон за превод и изкуственият интелект незабавно ще извърши превода.\n• Автоматично търсене: Открива и показва подобни съществуващи преводи в реално време, докато въвеждате.\n• Слушане и запазване: Слушайте произношението с иконата на високоговорител в долната част на резултата от превода и го добавете към списъка за обучение чрез „Запазване на данни“.';

  @override
  String get helpMode2Desc =>
      'Прегледайте запазени изречения и проверете запаметяването си с функцията за автоматично скриване.';

  @override
  String get helpMode2Details =>
      '• Избор на колекция: Използвайте \'Избор на учебна колекция\' или \'Онлайн библиотека\' от менюто (⋮) горе вдясно\n• Обръщане на карта: Проверете превода с \'Показване/Скриване\'\n• Слушане: Пуснете произношението с иконата на високоговорител\n• Завършено обучение: Маркирайте с отметка (V) за завършено обучение\n• Изтриване: Изтрийте записа, като задържите картата (дълго натискане)\n• Търсене и филтър: Поддръжка на лентата за търсене (интелигентно търсене в реално време) и филтри за тагове и начални букви';

  @override
  String get helpMode3Desc =>
      'Практикувайте произношение, като слушате и повтаряте изречения (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Избор на материали: Изберете колекцията от материали за учене\n• Настройка на интервала: Регулирайте времето за изчакване между изреченията с бутоните [-] [+](3 сек. ~ 60 сек.)\n• Старт/Стоп: Контролирайте сесията за засенчване\n• Говорене: Слушайте гласа и говорете след него\n• Обратна връзка: Показва оценка за точност (0-100) и цвят\n• Условия за търсене: Филтриране на целта за практика по таг, последни елементи, начална буква';

  @override
  String get helpNote =>
      'Записвайте свободно значения, примери, ситуации и други за думата.';

  @override
  String get helpNotebook =>
      'Изберете папка за запазване на преведените резултати.';

  @override
  String get helpTabJson => 'JSON формат';

  @override
  String get helpTabModes => 'Описание на режимите';

  @override
  String get helpTabQuickStart => 'Бърз старт';

  @override
  String get helpTabTour => 'Обиколка';

  @override
  String get helpTag =>
      'Въведете ключови думи за по-късно класифициране или търсене.';

  @override
  String get helpTitle => 'Помощ и ръководство';

  @override
  String get helpTourDesc =>
      '**Кръгът с акцент** ще ви насочи към основните функции.\n(Напр.: Можете да го изтриете, като задържите картата, посочена от **Кръгът с акцент**.)';

  @override
  String get hide => 'Скриване';

  @override
  String get hintNoteExample => 'Напр.: контекст, омоними и др.';

  @override
  String get hintTagExample => 'Напр.: бизнес, пътуване...';

  @override
  String get homeTab => 'Превод';

  @override
  String importAdded(int count) {
    return 'Добавени: $count';
  }

  @override
  String get importComplete => 'Импортирането завърши';

  @override
  String get importDuplicateTitleError =>
      'Вече съществува материал със същото заглавие. Моля, променете заглавието и опитайте отново.';

  @override
  String importErrorMessage(String error) {
    return 'Неуспешно импортиране на файла:\\n$error';
  }

  @override
  String get importFailed => 'Неуспешно импортиране';

  @override
  String importFile(String fileName) {
    return 'Файл: $fileName';
  }

  @override
  String importFolderSuccess(num files, num entries) {
    return 'Импортирани са $files файла, $entries записа.';
  }

  @override
  String get importJsonFile => 'Импортиране на JSON файл';

  @override
  String get importJsonFilePrompt => 'Моля, импортирайте JSON файл';

  @override
  String importSkipped(int count) {
    return 'Пропуснати: $count';
  }

  @override
  String get importSourceFile => 'Единичен JSON файл';

  @override
  String get importSourceFolder => 'Папка (структура на библиотека по езици)';

  @override
  String get importSourceTitle => 'Изберете източник за импортиране';

  @override
  String get importSourceZip => 'ZIP файл (компресирана папка)';

  @override
  String importTotal(int count) {
    return 'Общо: $count';
  }

  @override
  String get importing => 'Импортиране...';

  @override
  String get inputContent => 'Въведен текст';

  @override
  String get inputLanguage => 'Входен език';

  @override
  String get inputModeTitle => 'Въвеждане';

  @override
  String intervalSeconds(int seconds) {
    return 'Интервал: $seconds сек.';
  }

  @override
  String get invalidEmail => 'Моля, въведете валиден имейл адрес.';

  @override
  String get kakaoContinue => 'Продължи с Kakao';

  @override
  String get labelDetails => 'Подробни настройки';

  @override
  String get labelFilterMaterial => 'Материали';

  @override
  String get labelFilterTag => 'Етикети';

  @override
  String get labelLangCode => 'Код на езика (напр. en-US, ko-KR)';

  @override
  String get labelNote => 'Бележка';

  @override
  String get labelPOS => 'Част на речта';

  @override
  String get labelSentence => 'Изречение';

  @override
  String get labelSentenceCollection => 'Колекция изречения';

  @override
  String get labelSentenceType => 'Тип изречение';

  @override
  String get labelShowMemorized => 'Завършени';

  @override
  String get labelType => 'Тип:';

  @override
  String get labelWord => 'Дума';

  @override
  String get labelWordbook => 'Речник';

  @override
  String get language => 'Език';

  @override
  String get languageSettings => 'Езикови настройки';

  @override
  String get languageSettingsTitle => 'Езикови настройки';

  @override
  String get libTitleFirstMeeting => 'Първа среща';

  @override
  String get libTitleGreetings1 => 'Поздрави 1';

  @override
  String get libTitleNouns1 => 'Съществителни 1';

  @override
  String get libTitleVerbs1 => 'Глаголи 1';

  @override
  String get listen => 'Слушане';

  @override
  String get listening => 'Слушане...';

  @override
  String get location => 'Местоположение';

  @override
  String get login => 'Вход';

  @override
  String get logout => 'Изход';

  @override
  String get logoutConfirmMessage =>
      'Наистина ли искате да излезете от устройството?';

  @override
  String get logoutConfirmTitle => 'Изход';

  @override
  String get male => 'Мъж';

  @override
  String get manual => 'Ръчно въвеждане';

  @override
  String get markAsStudied => 'Маркиране като изучено';

  @override
  String get materialInfo => 'Информация за материала';

  @override
  String get menuDeviceImport => 'Импортиране на материали от устройството';

  @override
  String get menuHelp => 'Помощ';

  @override
  String get menuLanguageSettings => 'Настройки на езика';

  @override
  String get menuOnlineLibrary => 'Онлайн библиотека';

  @override
  String get menuSelectMaterialSet => 'Избор на колекция от учебни материали';

  @override
  String get menuSettings => 'Езикови настройки';

  @override
  String get menuTutorial => 'Обучителен тур';

  @override
  String get menuWebDownload => 'Начална страница';

  @override
  String get metadataDialogTitle => 'Подробна класификация';

  @override
  String get metadataFormType => 'Граматична форма';

  @override
  String get metadataRootWord => 'Основна форма (Root Word)';

  @override
  String get micButtonTooltip => 'Започване на разпознаване на глас';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Текущо избрана колекция от материали: $name';
  }

  @override
  String get mode2Title => 'Преглед';

  @override
  String get mode3Next => 'Напред';

  @override
  String get mode3Start => 'Старт';

  @override
  String get mode3Stop => 'Стоп';

  @override
  String get mode3TryAgain => 'Опитайте отново';

  @override
  String get mySentenceCollection => 'Моята колекция от изречения';

  @override
  String get myWordbook => 'Моят речник';

  @override
  String get neutral => 'Неутрален';

  @override
  String get newNotebookTitle => 'Име на нова колекция';

  @override
  String get newSubjectName => 'Заглавие на нов речник/фрази';

  @override
  String get next => 'Напред';

  @override
  String get noDataForLanguage =>
      'Няма учебни материали за избрания език в локалната база данни. Моля, изтеглете материали или изберете друг език.';

  @override
  String get noMaterialsInCategory => 'Няма материали в тази категория.';

  @override
  String get noRecords => 'Няма записи за обучение за избрания език';

  @override
  String get noStudyMaterial => 'Няма учебен материал.';

  @override
  String get noTextToPlay => 'Няма текст за пускане';

  @override
  String get noTranslationToSave => 'Няма превод за запазване';

  @override
  String get noVoiceDetected => 'Не е открит глас';

  @override
  String get notSelected => '- Не е избрано -';

  @override
  String get noteGuidance =>
      'Където въвеждате допълнителни подробности за по-точен превод';

  @override
  String get onlineLibraryCheckInternet =>
      'Проверете интернет връзката си или опитайте по-късно.';

  @override
  String get onlineLibraryLoadFailed => 'Неуспешно зареждане на материали.';

  @override
  String get onlineLibraryNoMaterials => 'Няма материали.';

  @override
  String get openSettings => 'Отваряне на настройките';

  @override
  String get password => 'Парола';

  @override
  String get passwordTooShort => 'Паролата е твърде кратка';

  @override
  String get perfect => 'Перфектно!';

  @override
  String get pickGallery => 'Избор от галерията';

  @override
  String get playAgain => 'Играйте отново';

  @override
  String playbackFailed(String error) {
    return 'Неуспешно пускане: $error';
  }

  @override
  String get playing => 'Пускане...';

  @override
  String get posAdjective => 'Прилагателно';

  @override
  String get posAdverb => 'Наречие';

  @override
  String get posArticle => 'Член';

  @override
  String get posConjunction => 'Съюз';

  @override
  String get posInterjection => 'Междуметие';

  @override
  String get posNoun => 'Съществително';

  @override
  String get posParticle => 'Частица';

  @override
  String get posPreposition => 'Предлог/Следлог';

  @override
  String get posPronoun => 'Местоимение';

  @override
  String get posVerb => 'Глагол';

  @override
  String get practiceModeTitle => 'Практика';

  @override
  String get practiceWordsOnly => 'Практикуване само на думи';

  @override
  String get processing => 'Обработка...';

  @override
  String progress(int current, int total) {
    return 'Напредък: $current / $total';
  }

  @override
  String get quickStartStep1Desc =>
      'Първо задайте своя език и езика за обучение в Меню > Настройки на езика.';

  @override
  String get quickStartStep1Title => '1. Настройка на езика';

  @override
  String get quickStartStep2Desc =>
      'Създайте свои собствени карти за обучение в реда Въвеждане (микрофон/клавиатура) -> Превод -> Запазване.';

  @override
  String get quickStartStep2Title => '2. Основен поток';

  @override
  String get quickStartStep3Desc =>
      'Практикувайте с чат и практикувайте произношение, като гледате текст в раздела Практика на произношението.';

  @override
  String get quickStartStep3Title => '3. Използване на режими';

  @override
  String recentNItems(int count) {
    return 'Показване на последните $count създадени';
  }

  @override
  String recognitionFailed(String error) {
    return 'Неуспешно разпознаване на глас: $error';
  }

  @override
  String get recognized => 'Разпознато';

  @override
  String get recognizedText => 'Разпознато произношение:';

  @override
  String get recordDeleted => 'Записът е изтрит';

  @override
  String get refresh => 'Обновяване';

  @override
  String get requestTranslation => 'Заявка за превод';

  @override
  String get reset => 'Нулиране';

  @override
  String get resetPracticeHistory => 'Нулиране на историята на практиката';

  @override
  String get retry => 'Да опитате отново?';

  @override
  String get reviewAll => 'Преглед на всички';

  @override
  String reviewCount(int count) {
    return 'Преглед $count пъти';
  }

  @override
  String get reviewModeTitle => 'Преглед';

  @override
  String get save => 'Запазване';

  @override
  String get saveAsSentence => 'Запазване като изречение';

  @override
  String get saveAsWord => 'Запазване като дума';

  @override
  String get saveData => 'Запазване на данни';

  @override
  String saveFailed(String error) {
    return 'Неуспешно запазване: $error';
  }

  @override
  String get saveToHistory => 'Запазване в историята на сканирането';

  @override
  String get saveTranslationsFromSearch =>
      'Опитайте да запазите преводи от режим на търсене';

  @override
  String get saved => 'Запазено';

  @override
  String get originalText => '원본 텍스트';

  @override
  String get saving => 'Запазване...';

  @override
  String get scanInstructions => 'Изберете изображение за сканиране';

  @override
  String get scanNoMatch =>
      '사진에서 설정된 학습 언어와 일치하는 텍스트를 찾을 수 없습니다. 언어 설정을 확인해 보세요.';

  @override
  String get scanNotSupported =>
      'Този език не поддържа функцията за сканиране. OCR в момента поддържа само латински, китайски, деванагари (като хинди), японски и корейски символи.';

  @override
  String get scanLabel => 'Сканиране';

  @override
  String score(String score) {
    return 'Точност: $score%';
  }

  @override
  String get scoreLabel => 'Резултат';

  @override
  String get search => 'Търсене';

  @override
  String get searchConditions => 'Условия за търсене';

  @override
  String get searchSentenceHint => 'Търсене на изречение...';

  @override
  String get searchWordHint => 'Търсене на дума...';

  @override
  String get sectionSentence => 'Раздел „Изречение“';

  @override
  String get sectionSentences => 'Изречения';

  @override
  String get sectionWord => 'Раздел „Дума“';

  @override
  String get sectionWords => 'Думи';

  @override
  String get selectExistingSubject => 'Избор на съществуващо заглавие';

  @override
  String get selectMaterialPrompt => 'Изберете учебен материал';

  @override
  String get selectMaterialSet => 'Избор на колекция от учебни материали';

  @override
  String get selectPOS => 'Избор на част на речта';

  @override
  String get selectStudyMaterial => 'Избор на учебни материали';

  @override
  String get sentence => 'Изречение';

  @override
  String get signUp => 'Регистрация';

  @override
  String get simplifiedGuidance =>
      'Незабавно преобразувайте ежедневните разговори на чужд език! Talkie записва вашия езиков живот.';

  @override
  String get sourceLanguageLabel => 'Моят език';

  @override
  String get startTutorial => 'Стартиране на урок';

  @override
  String get startsWith => 'Започва с';

  @override
  String get statusCheckEmail => 'Проверете имейла си';

  @override
  String statusDownloading(String name) {
    return 'Изтегляне: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return 'Неуспешен импорт: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$name е успешно импортиран';
  }

  @override
  String statusLoginFailed(String error) {
    return 'Неуспешно влизане: $error';
  }

  @override
  String get statusLoginSuccess => 'Влизането е успешно';

  @override
  String get statusLogoutSuccess => 'Излизането е успешно';

  @override
  String statusRequestFailed(String error) {
    return 'Неуспешна заявка за превод: $error';
  }

  @override
  String get statusRequestSuccess => 'Заявката за превод е завършена.';

  @override
  String get stopPractice => 'Спиране на практика';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Избраният от вас материал не поддържа текущо зададения език за обучение ($targetLang) и не може да бъде запазен локално. Искате ли да заявите превод?';
  }

  @override
  String get studyLangNotFoundTitle => 'Езикът за обучение не се поддържа';

  @override
  String get styleFormal => 'Официален';

  @override
  String get styleInformal => 'Неофициален';

  @override
  String get stylePolite => 'Любезен';

  @override
  String get styleSlang => 'Сленг';

  @override
  String get swapLanguages => 'Размяна на езици';

  @override
  String get syncingData => 'Синхронизиране на данни...';

  @override
  String tabReview(int count) {
    return 'Преглед ($count)';
  }

  @override
  String get tabSentence => 'Изречение';

  @override
  String get tabSpeaking => 'Говорене';

  @override
  String tabStudyMaterial(int count) {
    return 'Учебни материали ($count)';
  }

  @override
  String get tabWord => 'Дума';

  @override
  String get tagFormal => 'Официален';

  @override
  String get tagSelection => 'Избор на таг';

  @override
  String get targetLanguage => 'Целеви език';

  @override
  String get targetLanguageFilter => 'Филтър за целеви език:';

  @override
  String get targetLanguageLabel => 'Език за учене (Цел)';

  @override
  String get thinkingTimeDesc =>
      'Време за размисъл преди разкриване на верния отговор.';

  @override
  String get thinkingTimeInterval => 'Интервал на възпроизвеждане';

  @override
  String get timeUp => 'Времето изтече!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Заглавен етикет (Колекция)';

  @override
  String get tooltipDecrease => 'Намаляване';

  @override
  String get tooltipIncrease => 'Увеличаване';

  @override
  String get tooltipSearch => 'Търсене';

  @override
  String get tooltipSettingsConfirm => 'Потвърди настройките';

  @override
  String get tooltipSpeaking => 'Говорене';

  @override
  String get tooltipStudyReview => 'Обучение+Преглед';

  @override
  String totalRecords(int count) {
    return 'Общо $count записа (Преглед на всички)';
  }

  @override
  String get translate => 'Превод';

  @override
  String get translateNow => 'Преведи сега';

  @override
  String get translating => 'Превод...';

  @override
  String get translation => 'Превод';

  @override
  String get translationComplete => 'Преводът завърши (трябва да се запази)';

  @override
  String translationFailed(String error) {
    return 'Неуспешен превод: $error';
  }

  @override
  String get translationLanguage => 'Език за превод';

  @override
  String get translationLimitExceeded => 'Превишен лимит за превод';

  @override
  String get translationLimitMessage =>
      'Използвахте всичките си безплатни дневни преводи (5 пъти).\\n\\nИскате ли незабавно да презаредите 5 пъти, като гледате реклама?';

  @override
  String get translationLoaded => 'Зареден запазен превод';

  @override
  String get translationRefilled => 'Броят на преводите е презареден 5 пъти!';

  @override
  String get translationResult => 'Резултат от превода';

  @override
  String get translationResultHint =>
      'Резултат от превода - може да се редактира';

  @override
  String get tryAgain => 'Опитайте отново';

  @override
  String get ttsInstallGuide =>
      'Моля, инсталирайте езиковите данни в Настройки на Android > Google TTS.';

  @override
  String get ttsMissing =>
      'Гласовият двигател за този език не е инсталиран на вашето устройство.';

  @override
  String get ttsUnsupportedNatively =>
      'Този език не се поддържа за гласов изход по подразбиране на това устройство.';

  @override
  String get tutorialContextDesc =>
      'Можете да го запазите отделно, като запишете ситуацията (напр. сутрин, вечер) дори за едно и също изречение.';

  @override
  String get tutorialContextTitle => 'Таг за ситуация/контекст';

  @override
  String get tutorialLangSettingsDesc =>
      'Настройте изходния и целевия език за превод.';

  @override
  String get tutorialLangSettingsTitle => 'Езикови настройки';

  @override
  String get tutorialM1ToggleDesc =>
      'Превключвайте между режимите „Думи“ и „Изречения“ тук.';

  @override
  String get tutorialM1ToggleTitle => 'Режим „Думи/Изречения“';

  @override
  String get tutorialM2DropdownDesc =>
      'Можете да изберете материала за учене чрез горното меню.';

  @override
  String get tutorialM2ImportDesc =>
      'Импортиране на JSON файл от папката на устройството.';

  @override
  String get tutorialM2ListDesc =>
      'Можете да го изтриете, като задържите продължително тази карта (Long Click). Проверете запазените изречения и ги обърнете.';

  @override
  String get tutorialM2ListTitle => 'Списък за обучение';

  @override
  String get tutorialM2SearchDesc =>
      'Търсете и бързо намирайте запазени думи и изречения.';

  @override
  String get tutorialM2SelectDesc =>
      'Докоснете иконата на колекция от материали (📚) в горната лента на приложението, за да изберете материала, който да учите.';

  @override
  String get tutorialM2SelectTitle => 'Избор на материали';

  @override
  String get tutorialM3IntervalDesc =>
      'Регулира времето за изчакване между изреченията.';

  @override
  String get tutorialM3IntervalTitle => 'Настройка на интервала';

  @override
  String get tutorialM3ResetDesc =>
      'Нулира напредъка и резултатите за точност, за да започне отначало.';

  @override
  String get tutorialM3ResetTitle => 'Нулиране на историята';

  @override
  String get tutorialM3SelectDesc =>
      'Докоснете иконата на колекция от материали (📚) в горната лента на приложението, за да изберете материала, който да практикувате.';

  @override
  String get tutorialM3SelectTitle => 'Избор на материали';

  @override
  String get tutorialM3StartDesc =>
      'Слушайте гласа на носител на езика и говорете след него, като докоснете бутона за пускане.';

  @override
  String get tutorialM3StartTitle => 'Започване на практика';

  @override
  String get tutorialM3WordsDesc =>
      'Ако е отметнато, ще се практикуват само запазените думи.';

  @override
  String get tutorialM3WordsTitle => 'Практикуване на думи';

  @override
  String get tutorialMicDesc =>
      'Можете да въвеждате с глас, като докоснете бутона на микрофона.';

  @override
  String get tutorialMicTitle => 'Гласово въвеждане';

  @override
  String get tutorialSaveDesc =>
      'Запазете преведения резултат в записите за обучение.';

  @override
  String get tutorialSaveTitle => 'Запазване';

  @override
  String get tutorialSwapDesc => 'Разменя моя език и езика за учене.';

  @override
  String get tutorialTabDesc =>
      'Можете да изберете желания режим на обучение тук.';

  @override
  String get tutorialTapToContinue => 'Докоснете екрана, за да продължите';

  @override
  String get tutorialTransDesc => 'Превежда въведения текст.';

  @override
  String get tutorialTransTitle => 'Превод';

  @override
  String get typeExclamation => 'Възклицателно изречение';

  @override
  String get typeIdiom => 'Идиом';

  @override
  String get typeImperative => 'Заповедно изречение';

  @override
  String get typeProverb => 'Поговорка';

  @override
  String get typeQuestion => 'Въпросително изречение';

  @override
  String get typeStatement => 'Декларативно изречение';

  @override
  String get usageLimitTitle => 'Достигнат лимит';

  @override
  String get useExistingText => 'Използване на съществуващ текст';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => 'Преглед на онлайн ръководството';

  @override
  String get voluntaryTranslations => 'Доброволни преводи';

  @override
  String get watchAdAndRefill =>
      'Презареждане чрез гледане на реклама (+5 пъти)';

  @override
  String get welcomeButton => 'Започнете';

  @override
  String get welcomeDesc =>
      'Добре дошли в Talkie! Поддържаме над 80 езика от цял свят със 100% интеграция и ви даваме перфектно учебно изживяване с нов премиум 3D дизайн и оптимизирана производителност.';

  @override
  String get welcomeTitle => 'Добре дошли в Talkie!';

  @override
  String get word => 'Дума';

  @override
  String get wordDefenseDesc =>
      'Защитете базата, като кажете думата, преди врагът да пристигне.';

  @override
  String get wordDefenseTitle => 'Защита на думи';

  @override
  String get wordModeLabel => 'Режим „Думи“';

  @override
  String get yourPronunciation => 'Вашето произношение';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get accuracy => 'Точность';

  @override
  String get adLoading =>
      'Загрузка рекламы. Пожалуйста, повторите попытку позже.';

  @override
  String get add => 'Добавить';

  @override
  String get addNew => 'Добавить новое';

  @override
  String get addNewSubject => 'Добавить новое название';

  @override
  String get addTagHint => 'Добавить тег...';

  @override
  String get alreadyHaveAccount => 'У вас уже есть аккаунт?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Автовоспроизведение';

  @override
  String get basic => 'Базовый';

  @override
  String get basicDefault => 'Базовый';

  @override
  String get basicMaterialRepository => 'Базовое хранилище предложений/слов';

  @override
  String get basicSentenceRepository => 'Базовый репозиторий предложений';

  @override
  String get basicSentences => 'Базовое хранилище предложений';

  @override
  String get basicWordRepository => 'Базовый репозиторий слов';

  @override
  String get basicWords => 'Базовое хранилище слов';

  @override
  String get cancel => 'Отмена';

  @override
  String get caseObject => 'Винительный падеж';

  @override
  String get casePossessive => 'Притяжательный падеж';

  @override
  String get casePossessivePronoun => 'Притяжательное местоимение';

  @override
  String get caseReflexive => 'Возвратное местоимение';

  @override
  String get caseSubject => 'Именительный падеж';

  @override
  String get checking => 'Проверка...';

  @override
  String get clearAll => 'Очистить все';

  @override
  String get confirm => 'ОК';

  @override
  String get confirmDelete => 'Вы уверены, что хотите удалить эту запись?';

  @override
  String get contextTagHint =>
      'Укажите ситуацию, чтобы было легче различать в будущем';

  @override
  String get contextTagLabel =>
      'Контекст/ситуация (необязательно) - пример: приветствие, вежливая речь';

  @override
  String get copiedToClipboard => 'Скопировано в буфер обмена!';

  @override
  String get copy => 'Копировать';

  @override
  String get correctAnswer => 'Правильный ответ';

  @override
  String get createNew => 'Создать новый';

  @override
  String get currentLocation => 'Текущее местоположение';

  @override
  String get currentMaterialLabel => 'Текущий выбранный материал:';

  @override
  String get delete => 'Удалить';

  @override
  String deleteFailed(String error) {
    return 'Ошибка удаления: $error';
  }

  @override
  String get deleteRecord => 'Удалить запись';

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => 'У вас нет аккаунта?';

  @override
  String get email => 'Электронная почта';

  @override
  String get emailAlreadyInUse =>
      'Этот адрес электронной почты уже зарегистрирован. Пожалуйста, войдите в систему или воспользуйтесь функцией восстановления пароля.';

  @override
  String get enterNameHint => 'Введите имя';

  @override
  String get enterNewSubjectName => 'Введите новое название';

  @override
  String get enterSentenceHint => 'Введите предложение...';

  @override
  String get enterTextHint => 'Введите текст для перевода';

  @override
  String get enterTextToTranslate => 'Введите текст для перевода';

  @override
  String get enterWordHint => 'Введите слово...';

  @override
  String get error => 'Ошибка';

  @override
  String get errorHateSpeech =>
      'Содержит высказывания, разжигающие ненависть, и не может быть переведено.';

  @override
  String get errorOtherSafety => 'Перевод отклонен политикой безопасности AI.';

  @override
  String get errorProfanity =>
      'Содержит ненормативную лексику и не может быть переведено.';

  @override
  String get errorSelectCategory => 'Сначала выберите слово или предложение!';

  @override
  String get errorSexualContent =>
      'Содержит контент сексуального характера и не может быть переведено.';

  @override
  String get errors => 'Ошибки:';

  @override
  String get extractedText => 'Распознанный текст';

  @override
  String get female => 'Женский';

  @override
  String get file => 'Файл:';

  @override
  String get filterAll => 'Все';

  @override
  String get flip => 'Перевернуть';

  @override
  String get formComparative => 'Сравнительная степень';

  @override
  String get formInfinitive => 'Инфинитив/Настоящее время';

  @override
  String get formPast => 'Прошедшее время';

  @override
  String get formPastParticiple => 'Причастие прошедшего времени';

  @override
  String get formPlural => 'Множественное число';

  @override
  String get formPositive => 'Положительная степень';

  @override
  String get formPresent => 'Настоящее время';

  @override
  String get formPresentParticiple => 'Причастие настоящего времени (ing)';

  @override
  String get formSingular => 'Единственное число';

  @override
  String get formSuperlative => 'Превосходная степень';

  @override
  String get formThirdPersonSingular => '3-е лицо, единственное число';

  @override
  String get gameModeDesc => 'Выберите игровой режим для практики';

  @override
  String get gameModeTitle => 'Режим игры';

  @override
  String get gameOver => 'Игра окончена';

  @override
  String get gender => 'Пол';

  @override
  String get generalTags => 'Общие теги';

  @override
  String get getMaterials => 'Получить материалы';

  @override
  String get good => 'Хорошо';

  @override
  String get googleContinue => 'Продолжить с Google';

  @override
  String get helpJsonDesc =>
      'Для импорта материалов в режиме 3 создайте JSON файл следующей структуры:';

  @override
  String get helpJsonTypeSentence => 'Предложение';

  @override
  String get helpJsonTypeWord => 'Слово';

  @override
  String get helpMode1Desc =>
      'Начните изучать языки самым интуитивно понятным способом с помощью премиального 3D-микрофона и больших значков клавиатуры.';

  @override
  String get helpMode1Details =>
      '• Языковые настройки: проверьте свой язык и изучаемый язык с помощью кнопки языка в верхней части главного экрана и измените изучаемый язык.\n• Простой ввод: немедленно введите текст с помощью большого микрофона и текстового окна в центре.\n• Подтверждение настроек: после завершения ввода нажмите синюю кнопку проверки справа. Появится окно подробных настроек.\n• Подробные настройки: в появившемся диалоговом окне вы можете указать сборник материалов, примечания (заметки) и теги для сохранения.\n• Перевести сейчас: после завершения настройки нажмите зеленую кнопку перевода, и искусственный интеллект немедленно выполнит перевод.\n• Автоматический поиск: в процессе ввода в режиме реального времени обнаруживаются и отображаются похожие существующие переводы.\n• Прослушивание и сохранение: прослушайте произношение с помощью значка динамика в нижней части результата перевода и добавьте его в список обучения с помощью «Сохранить данные».';

  @override
  String get helpMode2Desc =>
      'Повторение сохраненных предложений со скрытием перевода.';

  @override
  String get helpMode2Details =>
      '• Выбор учебника: используйте \'Выбрать учебник\' или \'Онлайн-библиотеку\' в меню (⋮) в правом верхнем углу\n• Переворот карточки: используйте \'Показать/скрыть\', чтобы проверить перевод\n• Прослушивание: воспроизведение произношения с помощью значка динамика\n• Завершение обучения: отметьте (V), чтобы отметить обучение как завершенное\n• Удаление: нажмите и удерживайте карточку (Long Click), чтобы удалить запись\n• Поиск и фильтр: поддержка панели поиска (интеллектуальный поиск в реальном времени), тегов и фильтров начальных букв';

  @override
  String get helpMode3Desc =>
      'Практикуйте произношение, слушая и повторяя предложения (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Выбор: Выберите учебный пакет\n• Интервал: [-] [+] пауза (3с-60с)\n• Старт/Стоп: Управление сессией\n• Говорить: Слушайте аудио и повторяйте\n• Оценка: Точность (0-100) с цветом\n• Повтор: Кнопка повтора, если голос не распознан';

  @override
  String get helpNote =>
      'Свободно записывайте значения слов, примеры или ситуации.';

  @override
  String get helpNotebook =>
      'Выберите папку для сохранения переведенных результатов.';

  @override
  String get helpTabJson => 'Формат JSON';

  @override
  String get helpTabModes => 'Режимы';

  @override
  String get helpTabQuickStart => 'Быстрый старт';

  @override
  String get helpTabTour => 'Тур';

  @override
  String get helpTag =>
      'Введите ключевые слова для классификации или поиска позже.';

  @override
  String get helpTitle => 'Помощь и руководство';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Скрыть';

  @override
  String get hintNoteExample => 'Например: контекст, омонимы и т.д.';

  @override
  String get hintTagExample => 'Например: Бизнес, Путешествия...';

  @override
  String get homeTab => 'Перевод';

  @override
  String importAdded(int count) {
    return 'Добавлено: $count';
  }

  @override
  String get importComplete => 'Импорт завершен';

  @override
  String get importDuplicateTitleError =>
      'Материал с таким названием уже существует. Пожалуйста, измените название и попробуйте еще раз.';

  @override
  String importErrorMessage(String error) {
    return 'Не удалось импортировать файл:\\n$error';
  }

  @override
  String get importFailed => 'Ошибка импорта';

  @override
  String importFile(String fileName) {
    return 'Файл: $fileName';
  }

  @override
  String importFolderSuccess(num files, num entries) {
    return 'Импортировано $files файлов, $entries элементов.';
  }

  @override
  String get importJsonFile => 'Импорт JSON';

  @override
  String get importJsonFilePrompt => 'Пожалуйста, импортируйте JSON файл';

  @override
  String importSkipped(int count) {
    return 'Пропущено: $count';
  }

  @override
  String get importSourceFile => 'Одиночный JSON-файл';

  @override
  String get importSourceFolder => 'Папка (структура библиотеки по языкам)';

  @override
  String get importSourceTitle => 'Выберите источник импорта';

  @override
  String get importSourceZip => 'ZIP-файл (сжатая папка)';

  @override
  String importTotal(int count) {
    return 'Всего: $count';
  }

  @override
  String get importing => 'Импорт...';

  @override
  String get inputContent => 'Содержание ввода';

  @override
  String get inputLanguage => 'Язык ввода';

  @override
  String get inputModeTitle => 'Ввод';

  @override
  String intervalSeconds(int seconds) {
    return 'Интервал: $secondsс';
  }

  @override
  String get invalidEmail => 'Введите действительный адрес электронной почты.';

  @override
  String get kakaoContinue => 'Продолжить с Kakao';

  @override
  String get labelDetails => 'Детальные настройки';

  @override
  String get labelFilterMaterial => 'Материалы';

  @override
  String get labelFilterTag => 'Теги';

  @override
  String get labelLangCode => 'Код языка (например: en-US, ko-KR)';

  @override
  String get labelNote => 'Заметка';

  @override
  String get labelPOS => 'Часть речи';

  @override
  String get labelSentence => 'Предложение';

  @override
  String get labelSentenceCollection => 'Сборник предложений';

  @override
  String get labelSentenceType => 'Тип предложения';

  @override
  String get labelShowMemorized => 'Закончено';

  @override
  String get labelType => 'Тип:';

  @override
  String get labelWord => 'Слово';

  @override
  String get labelWordbook => 'Словарь';

  @override
  String get language => 'Язык';

  @override
  String get languageSettings => 'Настройки языка';

  @override
  String get languageSettingsTitle => 'Настройки языка';

  @override
  String get libTitleFirstMeeting => 'Первая встреча';

  @override
  String get libTitleGreetings1 => 'Приветствия 1';

  @override
  String get libTitleNouns1 => 'Существительные 1';

  @override
  String get libTitleVerbs1 => 'Глаголы 1';

  @override
  String get listen => 'Слушать';

  @override
  String get listening => 'Слушаю...';

  @override
  String get location => 'Местоположение';

  @override
  String get login => 'Войти';

  @override
  String get logout => 'Выйти';

  @override
  String get logoutConfirmMessage =>
      'Вы уверены, что хотите выйти из системы на этом устройстве?';

  @override
  String get logoutConfirmTitle => 'Выйти';

  @override
  String get male => 'Мужской';

  @override
  String get manual => 'Вручную';

  @override
  String get markAsStudied => 'Пометить как изученное';

  @override
  String get materialInfo => 'Информация о материале';

  @override
  String get menuDeviceImport => 'Импортировать материалы с устройства';

  @override
  String get menuHelp => 'Помощь';

  @override
  String get menuLanguageSettings => 'Настройки языка';

  @override
  String get menuOnlineLibrary => 'Онлайн-библиотека';

  @override
  String get menuSelectMaterialSet => 'Выберите учебный материал';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Обучающий тур';

  @override
  String get menuWebDownload => 'Руководство пользователя';

  @override
  String get metadataDialogTitle => 'Детальная классификация';

  @override
  String get metadataFormType => 'Грамматическая форма';

  @override
  String get metadataRootWord => 'Исходная форма (Root Word)';

  @override
  String get micButtonTooltip => 'Начать распознавание голоса';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Выбранный материал: $name';
  }

  @override
  String get mode2Title => 'Обзор';

  @override
  String get mode3Next => 'Далее';

  @override
  String get mode3Start => 'Начать';

  @override
  String get mode3Stop => 'Стоп';

  @override
  String get mode3TryAgain => 'Попробовать снова';

  @override
  String get mySentenceCollection => 'Моя коллекция предложений';

  @override
  String get myWordbook => 'Мой словарь';

  @override
  String get neutral => 'Нейтральный';

  @override
  String get newNotebookTitle => 'Название новой тетради';

  @override
  String get newSubjectName => 'Новое название темы/набора';

  @override
  String get next => 'Далее';

  @override
  String get noDataForLanguage =>
      'Для выбранного языка нет учебных материалов в локальной базе данных. Пожалуйста, загрузите материалы или выберите другой язык.';

  @override
  String get noMaterialsInCategory => 'В этой категории нет материалов.';

  @override
  String get noRecords => 'Нет записей для выбранного языка';

  @override
  String get noStudyMaterial => 'Нет учебного материала.';

  @override
  String get noTextToPlay => 'Нет текста для воспроизведения';

  @override
  String get noTranslationToSave => 'Нет перевода для сохранения';

  @override
  String get noVoiceDetected => 'Голос не обнаружен';

  @override
  String get notSelected => '- Не выбрано -';

  @override
  String get noteGuidance => 'Введите детали для более точного перевода';

  @override
  String get onlineLibraryCheckInternet =>
      'Проверьте подключение к интернету или попробуйте позже.';

  @override
  String get onlineLibraryLoadFailed => 'Не удалось загрузить материалы.';

  @override
  String get onlineLibraryNoMaterials => 'Нет материалов.';

  @override
  String get openSettings => 'Открыть настройки';

  @override
  String get password => 'Пароль';

  @override
  String get passwordTooShort => 'Пароль должен содержать не менее 6 символов.';

  @override
  String get perfect => 'Идеально!';

  @override
  String get pickGallery => 'Выбрать из галереи';

  @override
  String get playAgain => 'Играть снова';

  @override
  String playbackFailed(String error) {
    return 'Ошибка воспроизведения: $error';
  }

  @override
  String get playing => 'Воспроизведение...';

  @override
  String get posAdjective => 'Прилагательное';

  @override
  String get posAdverb => 'Наречие';

  @override
  String get posArticle => 'Артикль';

  @override
  String get posConjunction => 'Союз';

  @override
  String get posInterjection => 'Междометие';

  @override
  String get posNoun => 'Существительное';

  @override
  String get posParticle => 'Частица';

  @override
  String get posPreposition => 'Предлог';

  @override
  String get posPronoun => 'Местоимение';

  @override
  String get posVerb => 'Глагол';

  @override
  String get practiceModeTitle => 'Практика';

  @override
  String get practiceWordsOnly => 'Практиковать только слова';

  @override
  String get processing => 'Обработка...';

  @override
  String progress(int current, int total) {
    return 'Прогресс: $current / $total';
  }

  @override
  String get quickStartStep1Desc =>
      'Сначала укажите свой родной и изучаемый языки в Меню > Настройки языка.';

  @override
  String get quickStartStep1Title => '1. Настройка языка';

  @override
  String get quickStartStep2Desc =>
      'Создавайте свои собственные учебные карточки в следующем порядке: Ввод (микрофон/клавиатура) -> Перевод -> Сохранение.';

  @override
  String get quickStartStep2Title => '2. Основной процесс';

  @override
  String get quickStartStep3Desc =>
      'Практикуйтесь в чате, а также тренируйте произношение, просматривая текст и произнося его самостоятельно на вкладке \"Практика произношения\".';

  @override
  String get quickStartStep3Title => '3. Использование режимов';

  @override
  String recentNItems(int count) {
    return 'Показать последние $count созданных';
  }

  @override
  String recognitionFailed(String error) {
    return 'Ошибка распознавания речи: $error';
  }

  @override
  String get recognized => 'Распознавание завершено';

  @override
  String get recognizedText => 'Распознанный текст:';

  @override
  String get recordDeleted => 'Запись успешно удалена';

  @override
  String get refresh => 'Обновить';

  @override
  String get requestTranslation => 'Запросить перевод';

  @override
  String get reset => 'Сбросить';

  @override
  String get resetPracticeHistory => 'Сбросить историю практики';

  @override
  String get retry => 'Повторить?';

  @override
  String get reviewAll => 'Повторить все';

  @override
  String reviewCount(int count) {
    return 'Повторено $count раз(а)';
  }

  @override
  String get reviewModeTitle => 'Повторение';

  @override
  String get save => 'Сохранить';

  @override
  String get saveAsSentence => 'Сохранить как предложение';

  @override
  String get saveAsWord => 'Сохранить как слово';

  @override
  String get saveData => 'Сохранить';

  @override
  String saveFailed(String error) {
    return 'Ошибка сохранения: $error';
  }

  @override
  String get saveToHistory => 'Сохранить в историю сканирования';

  @override
  String get saveTranslationsFromSearch =>
      'Сохраните переводы из режима поиска';

  @override
  String get saved => 'Сохранено';

  @override
  String get saving => 'Сохранение...';

  @override
  String get scanInstructions => 'Выберите изображение для сканирования';

  @override
  String get scanNotSupported =>
      'Этот язык не поддерживает функцию сканирования. OCR в настоящее время поддерживает только латинский, китайский, деванагари (хинди и т. д.), японский и корейский символы.';

  @override
  String get scanLabel => 'Сканировать';

  @override
  String score(String score) {
    return 'Точность: $score%';
  }

  @override
  String get scoreLabel => 'Очки';

  @override
  String get search => 'Поиск';

  @override
  String get searchConditions => 'Условия поиска';

  @override
  String get searchSentenceHint => 'Поиск предложений...';

  @override
  String get searchWordHint => 'Поиск слов...';

  @override
  String get sectionSentence => 'Раздел предложений';

  @override
  String get sectionSentences => 'Предложения';

  @override
  String get sectionWord => 'Раздел слов';

  @override
  String get sectionWords => 'Слова';

  @override
  String get selectExistingSubject => 'Выберите существующее название';

  @override
  String get selectMaterialPrompt => 'Пожалуйста, выберите учебный материал';

  @override
  String get selectMaterialSet => 'Выберите учебные материалы';

  @override
  String get selectPOS => 'Выберите часть речи';

  @override
  String get selectStudyMaterial => 'Выберите материал';

  @override
  String get sentence => 'Предложение';

  @override
  String get signUp => 'Зарегистрироваться';

  @override
  String get simplifiedGuidance =>
      'Мгновенно переводите повседневные разговоры на иностранные языки! Talkie сохранит вашу языковую историю.';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get startTutorial => 'Начать тур';

  @override
  String get startsWith => 'Начинается с';

  @override
  String get statusCheckEmail =>
      'Пожалуйста, проверьте свою электронную почту для завершения аутентификации.';

  @override
  String statusDownloading(String name) {
    return 'Загрузка: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return 'Ошибка импорта: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$name успешно импортирован';
  }

  @override
  String statusLoginFailed(String error) {
    return 'Ошибка входа: $error';
  }

  @override
  String get statusLoginSuccess => 'Вы успешно вошли в систему.';

  @override
  String get statusLogoutSuccess => 'Вы вышли из системы.';

  @override
  String statusRequestFailed(String error) {
    return 'Ошибка запроса на перевод: $error';
  }

  @override
  String get statusRequestSuccess => 'Запрос на перевод выполнен.';

  @override
  String get stopPractice => 'Остановить';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Выбранный вами материал не поддерживает установленный в данный момент учебный язык ($targetLang), поэтому его нельзя сохранить локально. Хотите запросить перевод?';
  }

  @override
  String get studyLangNotFoundTitle => 'Учебный язык не поддерживается';

  @override
  String get styleFormal => 'Вежливый';

  @override
  String get styleInformal => 'Неформальный';

  @override
  String get stylePolite => 'Уважительный';

  @override
  String get styleSlang => 'Сленг';

  @override
  String get swapLanguages => 'Поменять языки';

  @override
  String get syncingData => 'Синхронизация данных...';

  @override
  String tabReview(int count) {
    return 'Обзор ($count)';
  }

  @override
  String get tabSentence => 'предложение';

  @override
  String get tabSpeaking => 'Разговор';

  @override
  String tabStudyMaterial(int count) {
    return 'Материалы ($count)';
  }

  @override
  String get tabWord => 'слово';

  @override
  String get tagFormal => 'Официальный стиль';

  @override
  String get tagSelection => 'Выбор тегов';

  @override
  String get targetLanguage => 'Целевой язык';

  @override
  String get targetLanguageFilter => 'Фильтр языка:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Время на размышление перед показом правильного ответа.';

  @override
  String get thinkingTimeInterval => 'Задержка воспроизведения';

  @override
  String get timeUp => 'Время вышло!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Теги заголовков (Альбомы)';

  @override
  String get tooltipDecrease => 'Уменьшить';

  @override
  String get tooltipIncrease => 'Увеличить';

  @override
  String get tooltipSearch => 'Поиск';

  @override
  String get tooltipSettingsConfirm => 'Подтвердить настройки';

  @override
  String get tooltipSpeaking => 'Говорение';

  @override
  String get tooltipStudyReview => 'Обучение+Повторение';

  @override
  String totalRecords(int count) {
    return 'Всего $count записей (смотреть все)';
  }

  @override
  String get translate => 'Перевод';

  @override
  String get translateNow => 'Перевести сейчас';

  @override
  String get translating => 'Перевод...';

  @override
  String get translation => 'Перевод';

  @override
  String get translationComplete => 'Перевод завершен (требуется сохранение)';

  @override
  String translationFailed(String error) {
    return 'Ошибка перевода: $error';
  }

  @override
  String get translationLanguage => 'Язык перевода';

  @override
  String get translationLimitExceeded => 'Превышен лимит переводов';

  @override
  String get translationLimitMessage =>
      'Вы использовали все бесплатные ежедневные переводы (5 раз).\\n\\nПосмотреть рекламу и немедленно пополнить счет на 5 раз?';

  @override
  String get translationLoaded => 'Загружен сохраненный перевод';

  @override
  String get translationRefilled => 'Количество переводов пополнено на 5 раз!';

  @override
  String get translationResult => 'Результат перевода';

  @override
  String get translationResultHint =>
      'Результат перевода - можно редактировать';

  @override
  String get tryAgain => 'Попробуйте снова';

  @override
  String get ttsInstallGuide =>
      'Пожалуйста, установите языковой пакет в настройках Android > Google TTS.';

  @override
  String get ttsMissing =>
      'В вашем устройстве не установлен движок озвучивания для этого языка.';

  @override
  String get ttsUnsupportedNatively =>
      'Этот язык не поддерживается для озвучивания на вашем устройстве.';

  @override
  String get tutorialContextDesc =>
      'Добавьте контекст (например, Утро), чтобы различать похожие предложения.';

  @override
  String get tutorialContextTitle => 'Тег контекста';

  @override
  String get tutorialLangSettingsDesc =>
      'Установите исходный и целевой языки для перевода.';

  @override
  String get tutorialLangSettingsTitle => 'Настройки языка';

  @override
  String get tutorialM1ToggleDesc =>
      'Переключайтесь между режимами слов и предложений здесь.';

  @override
  String get tutorialM1ToggleTitle => 'Режим слов/предложений';

  @override
  String get tutorialM2DropdownDesc => 'Выберите учебные материалы.';

  @override
  String get tutorialM2ImportDesc =>
      'Импортировать JSON-файл из папки устройства.';

  @override
  String get tutorialM2ListDesc =>
      'Просматривайте карточки и переворачивайте их. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Список';

  @override
  String get tutorialM2SearchDesc =>
      'Вы можете быстро найти сохраненные слова и предложения с помощью поиска.';

  @override
  String get tutorialM2SelectDesc => 'Выберите материалы или \'Обзор всего\'.';

  @override
  String get tutorialM2SelectTitle => 'Выбор и фильтр';

  @override
  String get tutorialM3IntervalDesc =>
      'Настройте время ожидания между фразами.';

  @override
  String get tutorialM3IntervalTitle => 'Интервал';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Выберите набор для разговорной практики.';

  @override
  String get tutorialM3SelectTitle => 'Выбор материала';

  @override
  String get tutorialM3StartDesc => 'Нажмите Play для начала практики.';

  @override
  String get tutorialM3StartTitle => 'Начать';

  @override
  String get tutorialM3WordsDesc =>
      'Если отмечено, тренируйте только сохраненные слова.';

  @override
  String get tutorialM3WordsTitle => 'Практика слов';

  @override
  String get tutorialMicDesc => 'Нажмите на микрофон для голосового ввода.';

  @override
  String get tutorialMicTitle => 'Голосовой ввод';

  @override
  String get tutorialSaveDesc => 'Сохраните перевод в учебные записи.';

  @override
  String get tutorialSaveTitle => 'Сохранить';

  @override
  String get tutorialSwapDesc => 'Я меняю свой язык с языком, который изучаю.';

  @override
  String get tutorialTabDesc =>
      'Здесь вы можете выбрать желаемый режим обучения.';

  @override
  String get tutorialTapToContinue => 'Нажмите, чтобы продолжить';

  @override
  String get tutorialTransDesc => 'Нажмите здесь, чтобы перевести текст.';

  @override
  String get tutorialTransTitle => 'Перевод';

  @override
  String get typeExclamation => 'Восклицание';

  @override
  String get typeIdiom => 'Идиома';

  @override
  String get typeImperative => 'Повеление';

  @override
  String get typeProverb => 'Пословица/поговорка';

  @override
  String get typeQuestion => 'Вопрос';

  @override
  String get typeStatement => 'Утверждение';

  @override
  String get usageLimitTitle => 'Превышен лимит использования';

  @override
  String get useExistingText => 'Использовать';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => 'Смотреть онлайн-гид';

  @override
  String get voluntaryTranslations => 'Добровольные переводы';

  @override
  String get watchAdAndRefill => 'Посмотреть рекламу и пополнить (+5 раз)';

  @override
  String get welcomeButton => 'Начать';

  @override
  String get welcomeDesc =>
      'Добро пожаловать в Talkie! Мы поддерживаем более 80 языков со всего мира со 100% точностью, предлагая вам идеальный опыт обучения с новым премиальным 3D-дизайном и оптимизированной производительностью.';

  @override
  String get welcomeTitle => 'Добро пожаловать в Talkie!';

  @override
  String get word => 'Слово';

  @override
  String get wordDefenseDesc =>
      'Защитите базу, произнося слова до того, как враги доберутся до нее.';

  @override
  String get wordDefenseTitle => 'Защита слов';

  @override
  String get wordModeLabel => 'Режим слов';

  @override
  String get yourPronunciation => 'Ваше произношение';
}

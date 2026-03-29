// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get basicWords => 'Базове сховище слів';

  @override
  String get inputLanguage => 'Мова введення';

  @override
  String get translationLanguage => 'Мова перекладу';

  @override
  String get simplifiedGuidance =>
      'Миттєво перетворюйте щоденні розмови на іноземні мови! Talkie записує ваше мовне життя.';

  @override
  String get noDataForLanguage =>
      'Наразі немає навчальних матеріалів для обраної мови у локальній базі даних. Завантажте матеріали або оберіть іншу мову.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Скасувати';

  @override
  String get accuracy => 'Точність';

  @override
  String get ttsMissing =>
      'На вашому пристрої не встановлено мовний рушій для цього голосу.';

  @override
  String get ttsInstallGuide =>
      'Будь ласка, встановіть мовні дані в налаштуваннях Android > Google TTS.';

  @override
  String get adLoading => 'Завантаження реклами. Спробуйте ще раз пізніше.';

  @override
  String get addNewSubject => 'Додати нову назву';

  @override
  String get addParticipant => 'Додати учасника';

  @override
  String get addTagHint => 'Додати тег...';

  @override
  String get alreadyHaveAccount => 'Вже маєте обліковий запис?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Автоматичне відтворення';

  @override
  String get basic => 'Базовий';

  @override
  String get basicDefault => 'Базовий';

  @override
  String get basicMaterialRepository => 'Базове сховище речень/слів';

  @override
  String get basicSentenceRepository => 'Базовий репозиторій речень';

  @override
  String get basicSentences => 'Базове сховище речень';

  @override
  String get basicWordRepository => 'Базовий репозиторій слів';

  @override
  String get caseObject => 'Знахідний відмінок';

  @override
  String get casePossessive => 'Присвійний відмінок';

  @override
  String get casePossessivePronoun => 'Присвійний займенник';

  @override
  String get caseReflexive => 'Зворотний займенник';

  @override
  String get caseSubject => 'Називний відмінок';

  @override
  String get chatAiChat => 'Чат';

  @override
  String get chatAllConversations => 'Всі розмови';

  @override
  String get chatChoosePersona => 'Виберіть персонажа';

  @override
  String get chatEndMessage => 'Ви дійсно хочете завершити чат?';

  @override
  String get chatEndTitle => 'Завершення та збереження чату';

  @override
  String chatFailed(Object error) {
    return 'Помилка чату: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Витяг з розмови ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Історія чату';

  @override
  String get chatNew => 'Новий чат';

  @override
  String get chatNewChat => 'Новий чат';

  @override
  String get chatNoConversations => 'Поки немає розмов';

  @override
  String get chatSearchHint => 'Пошук за назвою чату…';

  @override
  String get chatNoteSearchHint => 'Пошук в примітках...';

  @override
  String get chatSaveAndExit => 'Зберегти та вийти';

  @override
  String get chatStartNewPrompt =>
      'Спробуйте почати нову розмову для практики!';

  @override
  String get chatTypeHint => 'Введіть повідомлення...';

  @override
  String get chatUntitled => 'Чат без назви';

  @override
  String get checking => 'Перевірка...';

  @override
  String get clearAll => 'Очистити все';

  @override
  String get confirm => 'ОК';

  @override
  String get confirmDelete => 'Ви впевнені, що хочете видалити цей запис?';

  @override
  String get confirmDeleteConversation =>
      'Ви впевнені, що хочете видалити цю розмову?\nВи не зможете відновити її.';

  @override
  String get confirmDeleteParticipant => 'Видалити цього учасника?';

  @override
  String get contextTagHint =>
      'Опишіть ситуацію, щоб було легше розрізняти пізніше';

  @override
  String get contextTagLabel =>
      'Контекст/Ситуація (необов\'язково) - Напр.: Ранкове привітання, Ввічливість';

  @override
  String get copiedToClipboard => 'Скопійовано в буфер обміну!';

  @override
  String get copy => 'Копіювати';

  @override
  String get correctAnswer => 'Правильна відповідь';

  @override
  String get createNew => 'Створити новий';

  @override
  String get currentLocation => 'Поточне місцезнаходження';

  @override
  String get currentMaterialLabel => 'Поточний вибраний набір матеріалів:';

  @override
  String get delete => 'Видалити';

  @override
  String deleteFailed(String error) {
    return 'Помилка видалення: $error';
  }

  @override
  String get deleteRecord => 'Видалити запис';

  @override
  String get dialogueQuestDesc =>
      'Практикуйте розмови за допомогою рольової гри. Вибирайте відповідні відповіді та промовляйте їх.';

  @override
  String get dialogueQuestTitle => 'Діалоговий квест';

  @override
  String get disambiguationPrompt => 'Яке значення ви маєте на увазі?';

  @override
  String get disambiguationTitle => 'Виберіть значення';

  @override
  String get dontHaveAccount => 'Не маєте облікового запису?';

  @override
  String get editParticipant => 'Редагувати учасника';

  @override
  String get email => 'Електронна пошта';

  @override
  String get emailAlreadyInUse =>
      'Ця електронна адреса вже використовується. Будь ласка, увійдіть або відновіть пароль.';

  @override
  String get enterNewSubjectName => 'Введіть нову назву';

  @override
  String get enterSentenceHint => 'Введіть речення...';

  @override
  String get enterTextHint => 'Введіть текст для перекладу';

  @override
  String get enterTextToTranslate => 'Введіть текст для перекладу';

  @override
  String get enterWordHint => 'Введіть слово...';

  @override
  String get error => 'Помилка';

  @override
  String get errorHateSpeech =>
      'Переклад неможливий, оскільки містить мову ненависті.';

  @override
  String get errorOtherSafety => 'Переклад відхилено політикою безпеки ШІ.';

  @override
  String get errorProfanity =>
      'Переклад неможливий, оскільки містить нецензурну лексику.';

  @override
  String get errorSelectCategory => 'Спочатку виберіть слово або речення!';

  @override
  String get errorSexualContent =>
      'Переклад неможливий, оскільки містить контент сексуального характеру.';

  @override
  String get errors => 'Помилки:';

  @override
  String get female => 'Жінка';

  @override
  String get file => 'Файл:';

  @override
  String get filterAll => 'Все';

  @override
  String get flip => 'Перевернути';

  @override
  String get formComparative => 'Порівняльний ступінь';

  @override
  String get formInfinitive => 'Інфінітив/Теперішній час';

  @override
  String get formPast => 'Минулий час';

  @override
  String get formPastParticiple => 'Минулий час дієприкметника';

  @override
  String get formPlural => 'Множина';

  @override
  String get formPositive => 'Ступінь рівності';

  @override
  String get formPresent => 'Теперішній час';

  @override
  String get formPresentParticiple => 'Теперішній час дієприкметника (-ing)';

  @override
  String get formSingular => 'Однина';

  @override
  String get formSuperlative => 'Найвищий ступінь';

  @override
  String get formThirdPersonSingular => '3-тя особа однини';

  @override
  String get gameModeDesc => 'Виберіть режим гри для практики';

  @override
  String get gameModeTitle => 'Режим гри';

  @override
  String get gameOver => 'Гра закінчена';

  @override
  String get gender => 'Стать';

  @override
  String get labelFilterMaterial => 'Матеріали';

  @override
  String get labelFilterTag => 'Теги';

  @override
  String get generalTags => 'Загальні теги';

  @override
  String get getMaterials => 'Отримати матеріали';

  @override
  String get good => 'Добре';

  @override
  String get googleContinue => 'Продовжити з Google';

  @override
  String get helpDialogueImportDesc =>
      'Імпортуйте повний набір діалогів з JSON-файлу.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'Для імпорту матеріалів у режимі 3 створіть файл JSON:';

  @override
  String get helpJsonTypeDialogue => 'Діалог (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'Речення (Sentence)';

  @override
  String get helpJsonTypeWord => 'Слово (Word)';

  @override
  String get helpMode1Desc =>
      'Почніть вивчати мови найінтуїтивнішим способом завдяки преміальному 3D мікрофону та великій іконці клавіатури.';

  @override
  String get helpMode1Details =>
      '• Налаштування мови: перевірте свою рідну мову та мову, яку вивчаєте, і змініть мову навчання за допомогою кнопки мови у верхній частині головного екрана.\n• Простий ввід: миттєво вводьте текст за допомогою великого мікрофона та текстового вікна в центрі.\n• Підтвердження налаштувань: після завершення введення натисніть синю кнопку галочки праворуч. З’явиться вікно розширених налаштувань.\n• Розширені налаштування: у діалоговому вікні, що з’явиться, ви можете вказати збірку матеріалів, примітки (пам’ятки) і теги, які потрібно зберегти.\n• Перекласти зараз: після завершення налаштувань натисніть зелену кнопку перекладу, і штучний інтелект миттєво виконає переклад.\n• Автоматичний пошук: під час введення він у режимі реального часу виявляє та показує схожі існуючі переклади.\n• Слухайте та зберігайте: прослухайте вимову за допомогою значка динаміка внизу результату перекладу та додайте його до списку навчання за допомогою «Зберегти дані».';

  @override
  String get helpMode2Desc =>
      'Повторення збережених речень з прихованим перекладом.';

  @override
  String get helpMode2Details =>
      '• Вибір збірки матеріалів: скористайтеся \'Вибрати навчальну збірку\' або \'Онлайн-бібліотекою\' в меню (⋮) у верхньому правому куті\n• Перевернути картку: використовуйте \'Показати/Приховати\', щоб перевірити переклад\n• Слухати: відтворення вимови за допомогою значка динаміка\n• Завершено навчання: позначте картку як завершену (V)\n• Видалити: довготривале натискання на картку для видалення запису\n• Пошук і фільтри: підтримка панелі пошуку (інтелектуальний пошук у реальному часі) і фільтрів за тегами та початковими літерами';

  @override
  String get helpMode3Desc =>
      'Слухайте речення та повторюйте за ним (Shadowing), щоб практикувати вимову.';

  @override
  String get helpMode3Details =>
      '• Вибір: Виберіть пакет\n• Інтервал: [-] [+] пауза (3с-60с)\n• Старт/Стоп: Керування сесією\n• Говорити: Слухайте та повторюйте\n• Оцінка: Точність (0-100)\n• Повтор: Кнопка повтору, якщо голос не виявлено';

  @override
  String get helpModeChatDesc =>
      'Практикуйте розмовну мову в реальних умовах, спілкуючись із AI-персоною.';

  @override
  String get helpModeChatDetails =>
      '• Чат зі штучним інтелектом: попрактикуйте реальні розмови з персонажами в меню «Чат» на нижній панелі вкладок.\n• Налаштування персонажа: вільно вказуйте стать, ім’я та мовний код іншої сторони.\n• GPS-рольова гра: розпізнає моє поточне місцезнаходження та рекомендує теми для розмов, які відповідають цьому місцю.\n• 2 мови: відповіді ШІ відображаються разом із перекладом для максимального ефекту навчання.\n• Керування записами: фільтруйте попередні історії розмов і зберігайте певні повідомлення під час розмови як навчальні матеріали.';

  @override
  String get helpTabJson => 'Формат JSON';

  @override
  String get helpTabModes => 'Режими';

  @override
  String get helpTabQuickStart => 'Швидкий старт';

  @override
  String get helpTabTour => 'Тур';

  @override
  String get helpTitle => 'Допомога та Гайд';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Сховати';

  @override
  String importAdded(int count) {
    return 'Додано: $count';
  }

  @override
  String get importComplete => 'Імпорт завершено';

  @override
  String get importDuplicateTitleError =>
      'Матеріал з такою назвою вже існує. Змініть назву та спробуйте ще раз.';

  @override
  String get importSourceTitle => '가져오기 원본 선택';

  @override
  String get importSourceFile => '단일 JSON 파일';

  @override
  String get importSourceFolder => '폴더 (언어별 라이브러리 구조)';

  @override
  String get importSourceZip => 'ZIP 파일 (압축된 폴더)';

  @override
  String importFolderSuccess(num files, num entries) {
    return '$files개 파일, $entries개 항목을 가져왔습니다.';
  }

  @override
  String importErrorMessage(String error) {
    return 'Не вдалося імпортувати файл:\\n$error';
  }

  @override
  String get importFailed => 'Помилка імпорту';

  @override
  String importFile(String fileName) {
    return 'Файл: $fileName';
  }

  @override
  String get importJsonFile => 'Імпорт JSON';

  @override
  String get importJsonFilePrompt => 'Будь ласка, імпортуйте файл JSON';

  @override
  String importSkipped(int count) {
    return 'Пропущено: $count';
  }

  @override
  String importTotal(int count) {
    return 'Всього: $count';
  }

  @override
  String get importing => 'Імпортування...';

  @override
  String get inputModeTitle => 'Ввід';

  @override
  String intervalSeconds(int seconds) {
    return 'Інтервал: $secondsс';
  }

  @override
  String get invalidEmail => 'Введіть дійсну адресу електронної пошти.';

  @override
  String get kakaoContinue => 'Продовжити з Kakao';

  @override
  String get labelLangCode => 'Код мови (напр., en-US, ko-KR)';

  @override
  String get labelName => 'Ім\'я';

  @override
  String get labelNote => 'Примітка';

  @override
  String get labelPOS => 'Частина мови';

  @override
  String get labelRole => 'Роль';

  @override
  String get labelSentence => 'Речення';

  @override
  String get labelSentenceCollection => 'Збірка речень';

  @override
  String get labelSentenceType => 'Тип речення';

  @override
  String get labelShowMemorized => 'Вивчено';

  @override
  String get labelType => 'Тип:';

  @override
  String get labelWord => 'Слово';

  @override
  String get labelWordbook => 'Збірка слів';

  @override
  String get language => 'Мова';

  @override
  String get languageSettings => 'Налаштування мови';

  @override
  String get languageSettingsTitle => 'Налаштування мови';

  @override
  String get libTitleFirstMeeting => 'Перша зустріч';

  @override
  String get libTitleGreetings1 => 'Привітання 1';

  @override
  String get libTitleNouns1 => 'Іменники 1';

  @override
  String get libTitleVerbs1 => 'Дієслова 1';

  @override
  String get listen => 'Слухати';

  @override
  String get listening => 'Слухаю...';

  @override
  String get loadingParticipants => 'Завантаження учасників...';

  @override
  String get location => 'Місцезнаходження';

  @override
  String get login => 'Увійти';

  @override
  String get logout => 'Вийти';

  @override
  String get logoutConfirmMessage => 'Ви дійсно хочете вийти з цього пристрою?';

  @override
  String get logoutConfirmTitle => 'Вихід';

  @override
  String get male => 'Чоловік';

  @override
  String get manageParticipants => 'Керування учасниками';

  @override
  String get manual => 'Вручну';

  @override
  String get markAsStudied => 'Позначити як вивчене';

  @override
  String get materialInfo => 'Інформація про матеріал';

  @override
  String get me => 'Я';

  @override
  String get menuDeviceImport => 'Імпортувати матеріали з пристрою';

  @override
  String get menuHelp => 'Довідка';

  @override
  String get menuLanguageSettings => 'Налаштування мови';

  @override
  String get menuOnlineLibrary => 'Онлайн бібліотека';

  @override
  String get menuSelectMaterialSet => 'Виберіть навчальний матеріал';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Навчальний тур';

  @override
  String get menuWebDownload => 'Інструкція користувача';

  @override
  String get metadataDialogTitle => 'Детальна класифікація';

  @override
  String get metadataFormType => 'Граматична форма';

  @override
  String get metadataRootWord => 'Початкова форма (Root Word)';

  @override
  String get micButtonTooltip => 'Почати розпізнавання голосу';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Поточний вибраний набір матеріалів: $name';
  }

  @override
  String get mode2Title => 'Огляд';

  @override
  String get mode3Next => 'Далі';

  @override
  String get mode3Start => 'Почати';

  @override
  String get mode3Stop => 'Закінчити';

  @override
  String get mode3TryAgain => 'Спробувати знову';

  @override
  String get mySentenceCollection => 'Мій збірник речень';

  @override
  String get myWordbook => 'Мій словник';

  @override
  String get neutral => 'Нейтральний';

  @override
  String get newSubjectName => 'Нова назва словника/збірки фраз';

  @override
  String get next => 'Далі';

  @override
  String get noDialogueHistory => 'Немає історії діалогів.';

  @override
  String get noInternetWarningMic =>
      'Немає підключення до Інтернету. Розпізнавання голосу може бути недоступним в автономному режимі.';

  @override
  String get noInternetWarningTranslate =>
      'Немає підключення до Інтернету. Функція перекладу недоступна в автономному режимі. Використовуйте режим повторення.';

  @override
  String get noMaterialsInCategory => 'У цій категорії немає матеріалів.';

  @override
  String get noParticipantsFound => 'Немає зареєстрованих учасників.';

  @override
  String get noRecords => 'Немає записів для вибраної мови';

  @override
  String get noStudyMaterial => 'Немає навчальних матеріалів.';

  @override
  String get noTextToPlay => 'Немає тексту для відтворення';

  @override
  String get noTranslationToSave => 'Немає перекладу для збереження';

  @override
  String get noVoiceDetected => 'Голос не виявлено';

  @override
  String get notSelected => '- Не вибрано -';

  @override
  String get onlineLibraryCheckInternet =>
      'Перевірте підключення до Інтернету або спробуйте пізніше.';

  @override
  String get onlineLibraryLoadFailed => 'Не вдалося завантажити матеріали.';

  @override
  String get onlineLibraryNoMaterials => 'Немає матеріалів.';

  @override
  String get participantDeleted => 'Учасника видалено.';

  @override
  String get participantRename => 'Перейменувати учасника';

  @override
  String get partner => 'Партнер';

  @override
  String get partnerMode => 'Режим партнера';

  @override
  String get password => 'Пароль';

  @override
  String get passwordTooShort => 'Пароль повинен містити не менше 6 символів.';

  @override
  String get perfect => 'Чудово!';

  @override
  String get personaFriend => 'Місцевий друг';

  @override
  String get personaGuide => 'Гід';

  @override
  String get personaTeacher => 'Вчитель англійської мови';

  @override
  String get playAgain => 'Грати знову';

  @override
  String playbackFailed(String error) {
    return 'Помилка відтворення: $error';
  }

  @override
  String get playing => 'Відтворення...';

  @override
  String get posAdjective => 'Прикметник';

  @override
  String get posAdverb => 'Прислівник';

  @override
  String get posConjunction => 'Сполучник';

  @override
  String get posInterjection => 'Вигук';

  @override
  String get posNoun => 'Іменник';

  @override
  String get posPreposition => 'Прийменник';

  @override
  String get posPronoun => 'Займенник';

  @override
  String get posVerb => 'Дієслово';

  @override
  String get practiceModeTitle => 'Практика';

  @override
  String get practiceWordsOnly => 'Тільки практика слів';

  @override
  String progress(int current, int total) {
    return 'Прогрес: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Показати останні $count створених';
  }

  @override
  String recognitionFailed(String error) {
    return 'Помилка розпізнавання: $error';
  }

  @override
  String get recognized => 'Розпізнавання завершено';

  @override
  String get recognizedText => 'Розпізнаний текст:';

  @override
  String get recordDeleted => 'Запис успішно видалено';

  @override
  String get refresh => 'Оновити';

  @override
  String get reset => 'Скинути';

  @override
  String get resetPracticeHistory => 'Скинути історію практики';

  @override
  String get retry => 'Спробувати ще раз?';

  @override
  String get reviewAll => 'Повторити все';

  @override
  String reviewCount(int count) {
    return 'Переглянуто $count разів';
  }

  @override
  String get reviewModeTitle => 'Повторення';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Третя сторона';

  @override
  String get roleUser => 'Користувач';

  @override
  String get save => 'Зберегти';

  @override
  String get saveData => 'Зберегти';

  @override
  String saveFailed(String error) {
    return 'Помилка збереження: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Збережіть переклади з режиму пошуку';

  @override
  String get saved => 'Збережено';

  @override
  String get saving => 'Збереження...';

  @override
  String score(String score) {
    return 'Точність: $score%';
  }

  @override
  String get scoreLabel => 'Рахунок';

  @override
  String get search => 'Пошук';

  @override
  String get searchConditions => 'Умови пошуку';

  @override
  String get searchSentenceHint => 'Пошук речення...';

  @override
  String get searchWordHint => 'Пошук слова...';

  @override
  String get sectionSentence => 'Розділ речення';

  @override
  String get sectionSentences => 'Речення';

  @override
  String get sectionWord => 'Розділ слів';

  @override
  String get sectionWords => 'Слова';

  @override
  String get selectExistingSubject => 'Виберіть існуючу назву';

  @override
  String get selectMaterialPrompt => 'Будь ласка, виберіть навчальний матеріал';

  @override
  String get selectMaterialSet => 'Виберіть навчальний набір';

  @override
  String get selectPOS => 'Виберіть частину мови';

  @override
  String get selectParticipants => 'Виберіть учасників';

  @override
  String get selectSentenceType => 'Виберіть тип речення';

  @override
  String get selectStudyMaterial => 'Виберіть матеріал';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Речення';

  @override
  String get signUp => 'Зареєструватися';

  @override
  String get similarTextFound => 'Знайдено схожий текст';

  @override
  String get skip => 'Пропустити';

  @override
  String get source => 'Джерело:';

  @override
  String get sourceLanguage => 'Вихідна мова';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Говоріть зараз!';

  @override
  String get speaker => 'Мовець';

  @override
  String get speakerSelect => 'Виберіть мовця';

  @override
  String get speakingPractice => 'Розмовна практика';

  @override
  String get startChat => 'Почати чат';

  @override
  String get startPractice => 'Почати практику';

  @override
  String get startTutorial => 'Почати тур';

  @override
  String get startWarning => 'Увага';

  @override
  String get startsWith => 'Починається з';

  @override
  String get statusCheckEmail =>
      'Будь ласка, перевірте електронну пошту, щоб завершити аутентифікацію.';

  @override
  String statusDownloading(Object name) {
    return 'Завантаження: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Помилка імпорту: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name імпортовано';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Вхід скасовано.';

  @override
  String statusLoginFailed(Object error) {
    return 'Помилка входу: $error';
  }

  @override
  String get statusLoginSuccess => 'Успішний вхід.';

  @override
  String get statusLogoutSuccess => 'Ви вийшли з системи.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Помилка реєстрації: $error';
  }

  @override
  String get statusSigningUp => 'Реєстрація...';

  @override
  String get stopPractice => 'Зупинити';

  @override
  String get studyComplete => 'Вивчено';

  @override
  String studyRecords(int count) {
    return 'Записи ($count)';
  }

  @override
  String get styleFormal => 'Офіційний';

  @override
  String get styleInformal => 'Неофіційний';

  @override
  String get stylePolite => 'Ввічливий';

  @override
  String get styleSlang => 'Сленг';

  @override
  String get subject => 'Тема:';

  @override
  String get swapLanguages => 'Змінити мови';

  @override
  String get switchToAi => 'Перейти в режим AI';

  @override
  String get switchToPartner => 'Перейти в режим партнера';

  @override
  String get syncingData => 'Синхронізація даних...';

  @override
  String get tabConversation => 'Розмова';

  @override
  String tabReview(int count) {
    return 'Огляд ($count)';
  }

  @override
  String get tabSentence => 'речення';

  @override
  String get tabSpeaking => 'Розмова';

  @override
  String tabStudyMaterial(int count) {
    return 'Матеріали ($count)';
  }

  @override
  String get tabWord => 'слово';

  @override
  String get tagFormal => 'Ввічливе мовлення';

  @override
  String get tagSelection => 'Вибір тегу';

  @override
  String get targetLanguage => 'Цільова мова';

  @override
  String get targetLanguageFilter => 'Фільтр мови:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Час на роздуми перед показом правильної відповіді.';

  @override
  String get thinkingTimeInterval => 'Інтервал часу на роздуми';

  @override
  String get timeUp => 'Час вийшов!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Тег заголовка (матеріали)';

  @override
  String get tooltipDecrease => 'Зменшити';

  @override
  String get tooltipIncrease => 'Збільшити';

  @override
  String get tooltipSearch => 'Пошук';

  @override
  String get tooltipSpeaking => 'Говоріння';

  @override
  String get tooltipStudyReview => 'Навчання+Повторення';

  @override
  String totalRecords(int count) {
    return 'Всього $count записів (Переглянути все)';
  }

  @override
  String get translate => 'Перекласти';

  @override
  String get translating => 'Переклад...';

  @override
  String get translation => 'Переклад';

  @override
  String get translationComplete => 'Переклад завершено (потрібно зберегти)';

  @override
  String translationFailed(String error) {
    return 'Помилка перекладу: $error';
  }

  @override
  String get translationLimitExceeded => 'Перевищено ліміт перекладів';

  @override
  String get translationLimitMessage =>
      'Ви використали всі безкоштовні щоденні переклади (5 разів).\\n\\nПереглянути рекламу, щоб миттєво поповнити запас на 5 разів?';

  @override
  String get translationLoaded => 'Завантажено збережений переклад';

  @override
  String get translationRefilled => 'Кількість перекладів поповнено на 5!';

  @override
  String get translationResultHint => 'Результат перекладу - можна редагувати';

  @override
  String get tryAgain => 'Спробуйте ще';

  @override
  String get tutorialAiChatDesc =>
      'Практикуйте реальні розмови з AI персонажем.';

  @override
  String get tutorialAiChatTitle => 'AI Чат';

  @override
  String get tutorialContextDesc =>
      'Додайте контекст (наприклад, Ранок), щоб розрізняти схожі речення.';

  @override
  String get tutorialContextTitle => 'Тег контексту';

  @override
  String get tutorialLangSettingsDesc =>
      'Встановіть вихідну та цільову мови для перекладу.';

  @override
  String get tutorialLangSettingsTitle => 'Налаштування мови';

  @override
  String get tutorialM1ToggleDesc => 'Перемикайте режими слів і речень тут.';

  @override
  String get tutorialM1ToggleTitle => 'Режим слів/речень';

  @override
  String get tutorialM2DropdownDesc => 'Виберіть навчальні матеріали.';

  @override
  String get tutorialM2ImportDesc => 'Імпортувати JSON-файл з папки пристрою.';

  @override
  String get tutorialM2ListDesc =>
      'Переглядайте картки та перевертайте їх. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Список';

  @override
  String get tutorialM2SearchDesc =>
      'Швидко знаходьте збережені слова та речення за допомогою пошуку.';

  @override
  String get tutorialM2SelectDesc => 'Виберіть матеріали або \'Огляд всього\'.';

  @override
  String get tutorialM2SelectTitle => 'Вибір та Фільтр';

  @override
  String get tutorialM3IntervalDesc => 'Налаштуйте час очікування.';

  @override
  String get tutorialM3IntervalTitle => 'Інтервал';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Виберіть набір для практики.';

  @override
  String get tutorialM3SelectTitle => 'Вибір матеріалу';

  @override
  String get tutorialM3StartDesc => 'Натисніть Play для початку.';

  @override
  String get tutorialM3StartTitle => 'Почати';

  @override
  String get tutorialM3WordsDesc =>
      'Якщо позначено, практикуйте лише збережені слова.';

  @override
  String get tutorialM3WordsTitle => 'Практика слів';

  @override
  String get tutorialMicDesc => 'Натисніть мікрофон для вводу голосом.';

  @override
  String get tutorialMicTitle => 'Голосовий ввід';

  @override
  String get tutorialSaveDesc => 'Збережіть переклад у навчальні записи.';

  @override
  String get tutorialSaveTitle => 'Зберегти';

  @override
  String get tutorialSwapDesc => 'Я міняю свою мову з мовою, яку вивчаю.';

  @override
  String get tutorialTabDesc => 'Тут ви можете вибрати бажаний режим навчання.';

  @override
  String get tutorialTapToContinue => 'Торкніться, щоб продовжити';

  @override
  String get tutorialTransDesc => 'Натисніть тут, щоб перекласти текст.';

  @override
  String get tutorialTransTitle => 'Переклад';

  @override
  String get typeExclamation => 'Окличне речення';

  @override
  String get typeImperative => 'Спонукальне речення';

  @override
  String get typeQuestion => 'Питальне речення';

  @override
  String get typeStatement => 'Розповідне речення';

  @override
  String get usageLimitTitle => 'Досягнуто ліміту використання';

  @override
  String get useExistingText => 'Використати існуючий';

  @override
  String get viewOnlineGuide => 'Переглянути онлайн посібник';

  @override
  String get voluntaryTranslations => 'Добровільні переклади';

  @override
  String get watchAdAndRefill => 'Переглянути рекламу та поповнити (+5 разів)';

  @override
  String get word => 'Слово';

  @override
  String get wordDefenseDesc =>
      'Захистіть базу, вимовляючи слова, перш ніж вороги досягнуть її.';

  @override
  String get wordDefenseTitle => 'Захист слів';

  @override
  String get wordModeLabel => 'Режим слів';

  @override
  String get yourPronunciation => 'Ваша вимова';

  @override
  String get ttsUnsupportedNatively =>
      'Налаштування цього пристрою не підтримують вивід мовлення для цієї мови.';

  @override
  String get homeTab => 'Переклад';

  @override
  String get welcomeTitle => 'Ласкаво просимо до Talkie!';

  @override
  String get welcomeDesc =>
      'Вітаємо в Talkie! Ми підтримуємо понад 80 мов з усього світу зі 100% точністю та пропонуємо ідеальний досвід навчання з новим преміальним 3D дизайном та оптимізованою продуктивністю.';

  @override
  String get welcomeButton => 'Почати';

  @override
  String get labelDetails => 'Детальні налаштування';

  @override
  String get translationResult => 'Результат перекладу';

  @override
  String get inputContent => 'Вміст введення';

  @override
  String get translateNow => 'Перекласти зараз';

  @override
  String get tooltipSettingsConfirm => 'Підтвердити налаштування';

  @override
  String get hintNoteExample => 'Наприклад: контекст, омоніми тощо';

  @override
  String get hintTagExample => 'Наприклад: бізнес, подорожі...';

  @override
  String get addNew => 'Додати новий';

  @override
  String get newNotebookTitle => 'Назва нової збірки';

  @override
  String get enterNameHint => 'Введіть назву';

  @override
  String get add => 'Додати';

  @override
  String get openSettings => 'Відкрити налаштування';

  @override
  String get helpNotebook =>
      'Виберіть папку для збереження перекладених результатів.';

  @override
  String get helpNote =>
      'Вільно записуйте значення слів, приклади, ситуації тощо.';

  @override
  String get helpTag =>
      'Введіть ключові слова для подальшої класифікації або пошуку.';

  @override
  String get requestTranslation => 'Замовити переклад';

  @override
  String get statusRequestSuccess => 'Запит на переклад успішно надіслано.';

  @override
  String statusRequestFailed(String error) {
    return 'Помилка запиту на переклад: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Мова навчання не підтримується';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Вибраний вами матеріал не підтримує поточну мову навчання ($targetLang) і не може бути збережений локально. Бажаєте замовити переклад?';
  }

  @override
  String get quickStartStep1Title => '1. Налаштування мови';

  @override
  String get quickStartStep1Desc =>
      'Спочатку вкажіть свою мову та мову навчання в меню > Налаштування мови.';

  @override
  String get quickStartStep2Title => '2. Основний процес';

  @override
  String get quickStartStep2Desc =>
      'Створюйте власні навчальні картки в послідовності: Введення (мікрофон/клавіатура) -> Переклад -> Збереження.';

  @override
  String get quickStartStep3Title => '3. Використання режимів';

  @override
  String get quickStartStep3Desc =>
      'Практикуйтеся в чаті та тренуйте вимову, переглядаючи текст на вкладці «Практика вимови».';
}

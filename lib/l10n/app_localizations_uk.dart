// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Огляд ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Матеріали ($count)';
  }

  @override
  String get mode2Title => 'Огляд';

  @override
  String get search => 'Пошук';

  @override
  String get translate => 'Перекласти';

  @override
  String get listen => 'Слухати';

  @override
  String get saveData => 'Зберегти';

  @override
  String get saved => 'Збережено';

  @override
  String get delete => 'Видалити';

  @override
  String get materialInfo => 'Інформація про матеріал';

  @override
  String get cancel => 'Скасувати';

  @override
  String get confirm => 'ОК';

  @override
  String get refresh => 'Оновити';

  @override
  String studyRecords(int count) {
    return 'Записи ($count)';
  }

  @override
  String get targetLanguageFilter => 'Фільтр мови:';

  @override
  String get noRecords => 'Немає записів для вибраної мови';

  @override
  String get saveTranslationsFromSearch =>
      'Збережіть переклади з режиму пошуку';

  @override
  String get flip => 'Перевернути';

  @override
  String get hide => 'Сховати';

  @override
  String get deleteRecord => 'Видалити запис';

  @override
  String get confirmDelete => 'Ви впевнені, що хочете видалити цей запис?';

  @override
  String get recordDeleted => 'Запис успішно видалено';

  @override
  String deleteFailed(String error) {
    return 'Помилка видалення: $error';
  }

  @override
  String get importJsonFile => 'Імпорт JSON';

  @override
  String get importing => 'Імпортування...';

  @override
  String get importComplete => 'Імпорт завершено';

  @override
  String get importFailed => 'Помилка імпорту';

  @override
  String importFile(String fileName) {
    return 'Файл: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Всього: $count';
  }

  @override
  String importAdded(int count) {
    return 'Додано: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Пропущено: $count';
  }

  @override
  String get errors => 'Помилки:';

  @override
  String get error => 'Помилка';

  @override
  String importErrorMessage(String error) {
    return 'Не вдалося імпортувати файл:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Виберіть матеріал';

  @override
  String get subject => 'Тема:';

  @override
  String get source => 'Джерело:';

  @override
  String get file => 'Файл:';

  @override
  String progress(int current, int total) {
    return 'Прогрес: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Будь ласка, імпортуйте файл JSON';

  @override
  String get selectMaterialPrompt => 'Будь ласка, виберіть навчальний матеріал';

  @override
  String get studyComplete => 'Вивчено';

  @override
  String get markAsStudied => 'Позначити як вивчене';

  @override
  String get listening => 'Слухаю...';

  @override
  String get recognized => 'Розпізнавання завершено';

  @override
  String recognitionFailed(String error) {
    return 'Помилка розпізнавання: $error';
  }

  @override
  String get checking => 'Перевірка...';

  @override
  String get translating => 'Переклад...';

  @override
  String get translationComplete => 'Переклад завершено (потрібно зберегти)';

  @override
  String get translationLoaded => 'Завантажено збережений переклад';

  @override
  String translationFailed(String error) {
    return 'Помилка перекладу: $error';
  }

  @override
  String get enterTextToTranslate => 'Введіть текст для перекладу';

  @override
  String get saving => 'Збереження...';

  @override
  String get noTranslationToSave => 'Немає перекладу для збереження';

  @override
  String saveFailed(String error) {
    return 'Помилка збереження: $error';
  }

  @override
  String get playing => 'Відтворення...';

  @override
  String get noTextToPlay => 'Немає тексту для відтворення';

  @override
  String playbackFailed(String error) {
    return 'Помилка відтворення: $error';
  }

  @override
  String get sourceLanguage => 'Вихідна мова';

  @override
  String get targetLanguage => 'Цільова мова';

  @override
  String get similarTextFound => 'Знайдено схожий текст';

  @override
  String get useExistingText => 'Використати існуючий';

  @override
  String get createNew => 'Створити новий';

  @override
  String reviewCount(int count) {
    return 'Переглянуто $count разів';
  }

  @override
  String get tabSpeaking => 'Розмова';

  @override
  String get speakingPractice => 'Розмовна практика';

  @override
  String intervalSeconds(int seconds) {
    return 'Інтервал: $secondsс';
  }

  @override
  String get yourPronunciation => 'Ваша вимова';

  @override
  String get correctAnswer => 'Правильна відповідь';

  @override
  String score(String score) {
    return 'Точність: $score%';
  }

  @override
  String get perfect => 'Чудово!';

  @override
  String get good => 'Добре';

  @override
  String get tryAgain => 'Спробуйте ще';

  @override
  String get startPractice => 'Почати практику';

  @override
  String get stopPractice => 'Зупинити';

  @override
  String get helpTitle => 'Допомога та Гайд';

  @override
  String get helpTabModes => 'Режими';

  @override
  String get helpTabJson => 'Формат JSON';

  @override
  String get helpTabTour => 'Тур';

  @override
  String get helpMode1Desc =>
      'Розпізнавання голосу, переклад та прослуховування.';

  @override
  String get helpMode1Details =>
      '• Голос: Натисніть мікрофон для старту/стопу\n• Текст: Введіть текст для перекладу\n• Авто-пошук: Виявляє схожі речення\n• Переклад: Кнопка для миттєвого перекладу\n• Слухати: Динамік для озвучення\n• Зберегти: Додає в історію\n• Очистити: Скидання всіх полів';

  @override
  String get helpMode2Desc =>
      'Повторення збережених речень з прихованим перекладом.';

  @override
  String get helpMode2Details =>
      '• Вибір: Виберіть набір або \'Все\'\n• Картка: \'Показати/Сховати\' переклад\n• Слухати: Озвучити речення\n• Вивчено: Галочка (V) для завершених\n• Видалити: Довгий натиск для видалення\n• Фільтр: Всі або за матеріалом';

  @override
  String get helpMode3Desc =>
      'Практика мови через слухання та повторення (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Вибір: Виберіть пакет\n• Інтервал: [-] [+] пауза (3с-60с)\n• Старт/Стоп: Керування сесією\n• Говорити: Слухайте та повторюйте\n• Оцінка: Точність (0-100)\n• Повтор: Кнопка повтору, якщо голос не виявлено';

  @override
  String get helpJsonDesc =>
      'Для імпорту матеріалів у режимі 3 створіть файл JSON:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Почати тур';

  @override
  String get tutorialMicTitle => 'Голосовий ввід';

  @override
  String get tutorialMicDesc => 'Натисніть мікрофон для вводу голосом.';

  @override
  String get tutorialTabDesc => 'Тут ви можете вибрати бажаний режим навчання.';

  @override
  String get tutorialTapToContinue => 'Торкніться, щоб продовжити';

  @override
  String get tutorialTransTitle => 'Переклад';

  @override
  String get tutorialTransDesc => 'Натисніть тут, щоб перекласти текст.';

  @override
  String get tutorialSaveTitle => 'Зберегти';

  @override
  String get tutorialSaveDesc => 'Збережіть переклад у навчальні записи.';

  @override
  String get tutorialM2SelectTitle => 'Вибір та Фільтр';

  @override
  String get tutorialM2SelectDesc => 'Виберіть матеріали або \'Огляд всього\'.';

  @override
  String get tutorialM2ListTitle => 'Список';

  @override
  String get tutorialM2ListDesc =>
      'Переглядайте картки та перевертайте їх. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Вибір матеріалу';

  @override
  String get tutorialM3SelectDesc => 'Виберіть набір для практики.';

  @override
  String get tutorialM3IntervalTitle => 'Інтервал';

  @override
  String get tutorialM3IntervalDesc => 'Налаштуйте час очікування.';

  @override
  String get tutorialM3StartTitle => 'Почати';

  @override
  String get tutorialM3StartDesc => 'Натисніть Play для початку.';

  @override
  String get startWarning => 'Увага';

  @override
  String get noVoiceDetected => 'Голос не виявлено';

  @override
  String get tooltipSearch => 'Пошук';

  @override
  String get tooltipStudyReview => 'Навчання+Повторення';

  @override
  String get tooltipSpeaking => 'Говоріння';

  @override
  String get tooltipDecrease => 'Зменшити';

  @override
  String get tooltipIncrease => 'Збільшити';

  @override
  String get languageSettings => 'Налаштування мови';

  @override
  String get tutorialM2DropdownDesc => 'Виберіть навчальні матеріали.';

  @override
  String get tutorialM2ImportDesc => 'Імпортувати JSON-файл з папки пристрою.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'Тег контексту';

  @override
  String get tutorialContextDesc =>
      'Додайте контекст (наприклад, Ранок), щоб розрізняти схожі речення.';

  @override
  String get thinkingTimeInterval => 'Thinking Time Interval';

  @override
  String get thinkingTimeDesc => 'Time to think before the answer is revealed.';

  @override
  String get autoPlay => 'Auto-Play';

  @override
  String get timeUp => 'Time Up!';

  @override
  String get gameModeTitle => 'Game Mode';

  @override
  String get gameModeDesc => 'Choose your practice mode';

  @override
  String get wordDefenseTitle => 'Word Defense';

  @override
  String get wordDefenseDesc =>
      'Defend your base by speaking words correctly before enemies reach you.';

  @override
  String get dialogueQuestTitle => 'Dialogue Quest';

  @override
  String get dialogueQuestDesc =>
      'Roleplay in scenarios. Choose the right response and speak it aloud.';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Word';

  @override
  String get labelSentence => 'Sentence';

  @override
  String get contextTagLabel =>
      'Context/Situation (Optional) - Ex: Morning greeting, polite form';

  @override
  String get contextTagHint =>
      'Describe situation for easier classification later';

  @override
  String get translationLimitExceeded => 'Translation Limit Exceeded';

  @override
  String get translationLimitMessage =>
      'You have used all your free daily translations (5). Watch an ad to refill 5 immediately?';

  @override
  String get watchAdAndRefill => 'Watch Ad & Refill (+5)';

  @override
  String get translationRefilled => 'Translations refilled by 5!';

  @override
  String get adLoading => 'Loading ad, please try again in a moment.';

  @override
  String get reviewAll => 'Review All';

  @override
  String totalRecords(int count) {
    return 'Total $count records (View All)';
  }

  @override
  String get filterAll => 'All';

  @override
  String get practiceWordsOnly => 'Practice Words Only';

  @override
  String get resetPracticeHistory => 'Reset Practice History';

  @override
  String get retry => 'Retry?';

  @override
  String get noStudyMaterial => 'No study material found.';

  @override
  String get gameOver => 'Game Over';

  @override
  String get playAgain => 'Play Again';

  @override
  String get speakNow => 'Speak now!';

  @override
  String get scoreLabel => 'Score';

  @override
  String get viewOnlineGuide => 'View Online User Guide';

  @override
  String get getMaterials => 'Get Materials';

  @override
  String get swapLanguages => 'Swap Languages';

  @override
  String get next => 'Next';

  @override
  String get wordModeLabel => 'Word Mode';

  @override
  String get accuracy => 'Accuracy';

  @override
  String get basicDefault => 'Basic (Default)';

  @override
  String get basic => 'Basic';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc =>
      'Check this to practice only your saved words.';

  @override
  String get enterTextHint => 'Enter text to translate';

  @override
  String get micButtonTooltip => 'Start Listening';

  @override
  String get menuHelp => 'Help';

  @override
  String get menuWebDownload => 'Get Material from Web';

  @override
  String get menuDeviceImport => 'Import from Device';

  @override
  String get menuSettings => 'Settings';

  @override
  String get basicWords => 'Basic Word Repository';

  @override
  String get basicSentences => 'Basic Sentence Repository';

  @override
  String get selectMaterialSet => '학습 자료집 선택 (TODO: Translate)';

  @override
  String get sectionWords => '단어 (TODO: Translate)';

  @override
  String get sectionSentences => '문장 (TODO: Translate)';

  @override
  String get languageSettingsTitle => 'Language Settings';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get mode3Start => 'Start';

  @override
  String get mode3Stop => 'Stop';

  @override
  String get mode3Next => 'Next';

  @override
  String get mode3TryAgain => 'Try Again';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialSwapDesc => 'Я міняю свою мову з мовою, яку вивчаю.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get menuSelectMaterialSet => 'Виберіть навчальний матеріал';

  @override
  String get sectionWord => 'Розділ слів';

  @override
  String get sectionSentence => 'Розділ речення';

  @override
  String get tabWord => 'слово';

  @override
  String get tabSentence => 'речення';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorSexualContent =>
      '선정적인 내용이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다. (TODO: Translate)';

  @override
  String get clearAll => '모두 지우기 (TODO: Translate)';

  @override
  String get disambiguationTitle => '의미 선택 (TODO: Translate)';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까? (TODO: Translate)';

  @override
  String get skip => '건너뛰기 (TODO: Translate)';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Conversation History';

  @override
  String get chatNewChat => 'New Chat';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String chatFailed(Object error) {
    return '채팅 실패: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return '대화 발췌 ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => '제목 없는 대화';

  @override
  String get chatAiChat => 'AI Chat';

  @override
  String get helpModeChatDesc => 'AI 페르소나와 대화하며 실전 회화를 연습하고 유용한 문장을 저장하세요.';

  @override
  String get helpModeChatDetails =>
      '• 채팅 시작: 상단 메뉴의 말풍선 아이콘 클릭\n• 페르소나 선택: 선생님, 가이드, 친구 중 선택\n• 대화 및 저장: AI 응답은 자동 번역됩니다. 메시지를 클릭하여 복습 모드로 저장하세요\n• 2개 국어 표시: 모든 메시지에 대해 모국어와 학습 언어를 함께 표시합니다\n• 듣기 기능 (TTS): 스피커 아이콘을 눌러 각 언어의 발음을 들어보세요\n• 자동 제목: 대화 주제에 따라 AI가 제목을 추천합니다\n• 이력 관리: 과거 대화 내용을 언제든 다시 확인할 수 있습니다';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String get me => 'Me';

  @override
  String get helpDialogueImportDesc => '완성된 대화문 세트를 JSON 파일로 한 번에 가져올 수 있습니다.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON 구조: `entries` 대신 `dialogues` 배열을 사용합니다.\n• 자동 생성: 대화 제목, 페르소나, 메시지 순서가 자동으로 구성됩니다.\n• 확인 위치: 가져온 대화는 AI 채팅 모드의 \'대화 기록\' 탭에서 확인할 수 있습니다.';

  @override
  String mode1SelectedMaterial(Object name) {
    return '현재 선택된 자료집: $name';
  }

  @override
  String get basicWordRepository => 'Базовий репозиторій слів';

  @override
  String get basicSentenceRepository => 'Базовий репозиторій речень';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'Save & Exit';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';
}

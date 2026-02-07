// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

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
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc =>
      'Для імпорту матеріалів у режимі 3 створіть файл JSON:';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get partnerMode => 'Partner Mode';

  @override
  String get manual => 'Manual';

  @override
  String get speaker => 'Speaker';

  @override
  String get switchToAi => 'Switch to AI';

  @override
  String get switchToPartner => 'Switch to Partner';

  @override
  String get currentLocation => 'Current Location';

  @override
  String get location => 'Місцезнаходження';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Me';

  @override
  String get currentMaterialLabel => 'Current Selected Material:';

  @override
  String get basicMaterialRepository => 'Basic Repository';

  @override
  String get word => 'Word';

  @override
  String get sentence => 'Sentence';

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
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Почати тур';

  @override
  String get menuTutorial => 'Tutorial';

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
  String get usageLimitTitle => 'Досягнуто ліміту використання';

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
  String get selectMaterialSet => 'Виберіть навчальний набір';

  @override
  String get sectionWords => 'Слова';

  @override
  String get sectionSentences => 'Речення';

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
  String get errorProfanity =>
      'Переклад неможливий, оскільки містить нецензурну лексику.';

  @override
  String get errorHateSpeech =>
      'Переклад неможливий, оскільки містить мову ненависті.';

  @override
  String get errorSexualContent =>
      'Переклад неможливий, оскільки містить контент сексуального характеру.';

  @override
  String get errorOtherSafety => 'Переклад відхилено політикою безпеки ШІ.';

  @override
  String get clearAll => 'Очистити все';

  @override
  String get disambiguationTitle => 'Виберіть значення';

  @override
  String get disambiguationPrompt => 'Яке значення ви маєте на увазі?';

  @override
  String get skip => 'Пропустити';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Conversation History';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => 'New Chat';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return 'From Conversation ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => 'Untitled Conversation';

  @override
  String get chatAiChat => 'AI Chat';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Current Material Set: $name';
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

  @override
  String get metadataDialogTitle => 'Details';

  @override
  String get tagFormal => 'Ввічливе мовлення';

  @override
  String get selectPOS => 'Select POS';

  @override
  String get selectSentenceType => 'Select Sentence Type';

  @override
  String get metadataRootWord => 'Root Word';

  @override
  String get posNoun => 'Noun';

  @override
  String get posVerb => 'Verb';

  @override
  String get posAdjective => 'Adjective';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posPronoun => 'Pronoun';

  @override
  String get posPreposition => 'Preposition';

  @override
  String get posConjunction => 'Conjunction';

  @override
  String get posInterjection => 'Interjection';

  @override
  String get typeStatement => 'Statement';

  @override
  String get typeQuestion => 'Question';

  @override
  String get typeExclamation => 'Exclamation';

  @override
  String get typeImperative => 'Imperative';

  @override
  String get labelNote => 'Note';

  @override
  String get labelShowMemorized => 'Finished';

  @override
  String get tagSelection => 'Select Tags';

  @override
  String get metadataFormType => 'Form Type';

  @override
  String get formInfinitive => 'Infinitive/Present';

  @override
  String get formPast => 'Past';

  @override
  String get formPastParticiple => 'Past Participle';

  @override
  String get formPresentParticiple => 'Present Participle';

  @override
  String get formPresent => 'Present';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get formSingular => 'Однина';

  @override
  String get caseSubject => 'Subject';

  @override
  String get caseObject => 'Object';

  @override
  String get casePossessive => 'Possessive';

  @override
  String get casePossessivePronoun => 'Possessive Pronoun';

  @override
  String get caseReflexive => 'Reflexive';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';

  @override
  String get searchConditions => 'Search Conditions';

  @override
  String recentNItems(int count) {
    return 'Recent $count items';
  }

  @override
  String get startsWith => 'Starts with';

  @override
  String get reset => 'Reset';

  @override
  String get participantRename => 'Rename Participant';

  @override
  String get labelName => 'Name';

  @override
  String get gender => 'Gender';

  @override
  String get language => 'Language';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get neutral => 'Нейтральний';

  @override
  String get chatAllConversations => 'Всі розмови';

  @override
  String get confirmDeleteConversation =>
      'Ви впевнені, що хочете видалити цю розмову?\nВи не зможете відновити її.';
}

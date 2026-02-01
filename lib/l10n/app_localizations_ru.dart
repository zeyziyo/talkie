// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get helpTitle => 'Помощь и руководство';

  @override
  String get helpTabModes => 'Режимы';

  @override
  String get helpTabJson => 'Формат JSON';

  @override
  String get helpTabTour => 'Тур';

  @override
  String get helpMode1Desc =>
      'Распознавание голоса, перевод и прослушивание результата.';

  @override
  String get helpMode1Details =>
      '• Голос: Нажмите микрофон для начала/остановки\n• Текст: Введите текст для перевода\n• Авто-поиск: Обнаруживает похожие предложения\n• Перевод: Нажмите кнопку для перевода\n• Слушать: Динамик для TTS (Оригинал/Перевод)\n• Сохранить: Добавляет в историю\n• Очистить: Сброс всех полей';

  @override
  String get helpMode2Desc =>
      'Повторение сохраненных предложений со скрытием перевода.';

  @override
  String get helpMode2Details =>
      '• Выбор: Выберите набор или \'Все\'\n• Карточка: \'Показать/Скрыть\' перевод\n• Слушать: TTS для предложения\n• Изучено: Галочка (V) для завершенных\n• Удалить: Долгое нажатие для удаления\n• Фильтр: Показать все или по материалам';

  @override
  String get helpMode3Desc =>
      'Практика речи через прослушивание и повторение (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Выбор: Выберите учебный пакет\n• Интервал: [-] [+] пауза (3с-60с)\n• Старт/Стоп: Управление сессией\n• Говорить: Слушайте аудио и повторяйте\n• Оценка: Точность (0-100) с цветом\n• Повтор: Кнопка повтора, если голос не распознан';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc =>
      'Для импорта материалов в режиме 3 создайте JSON файл следующей структуры:';

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
  String get location => 'Местоположение';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Я';

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
    return 'Обзор ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Материалы ($count)';
  }

  @override
  String get mode2Title => 'Обзор';

  @override
  String get search => 'Поиск';

  @override
  String get translate => 'Перевод';

  @override
  String get listen => 'Слушать';

  @override
  String get saveData => 'Сохранить';

  @override
  String get saved => 'Сохранено';

  @override
  String get delete => 'Удалить';

  @override
  String get materialInfo => 'Информация о материале';

  @override
  String get cancel => 'Отмена';

  @override
  String get confirm => 'ОК';

  @override
  String get refresh => 'Обновить';

  @override
  String studyRecords(int count) {
    return 'Записи ($count)';
  }

  @override
  String get targetLanguageFilter => 'Фильтр языка:';

  @override
  String get noRecords => 'Нет записей для выбранного языка';

  @override
  String get saveTranslationsFromSearch =>
      'Сохраните переводы из режима поиска';

  @override
  String get flip => 'Перевернуть';

  @override
  String get hide => 'Скрыть';

  @override
  String get deleteRecord => 'Удалить запись';

  @override
  String get confirmDelete => 'Вы уверены, что хотите удалить эту запись?';

  @override
  String get recordDeleted => 'Запись успешно удалена';

  @override
  String deleteFailed(String error) {
    return 'Ошибка удаления: $error';
  }

  @override
  String get importJsonFile => 'Импорт JSON';

  @override
  String get importing => 'Импорт...';

  @override
  String get importComplete => 'Импорт завершен';

  @override
  String get importFailed => 'Ошибка импорта';

  @override
  String importFile(String fileName) {
    return 'Файл: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Всего: $count';
  }

  @override
  String importAdded(int count) {
    return 'Добавлено: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Пропущено: $count';
  }

  @override
  String get errors => 'Ошибки:';

  @override
  String get error => 'Ошибка';

  @override
  String importErrorMessage(String error) {
    return 'Не удалось импортировать файл:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Выберите материал';

  @override
  String get subject => 'Тема:';

  @override
  String get source => 'Источник:';

  @override
  String get file => 'Файл:';

  @override
  String progress(int current, int total) {
    return 'Прогресс: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Пожалуйста, импортируйте JSON файл';

  @override
  String get selectMaterialPrompt => 'Пожалуйста, выберите учебный материал';

  @override
  String get studyComplete => 'Изучено';

  @override
  String get markAsStudied => 'Пометить как изученное';

  @override
  String get listening => 'Слушаю...';

  @override
  String get recognized => 'Распознавание завершено';

  @override
  String recognitionFailed(String error) {
    return 'Ошибка распознавания речи: $error';
  }

  @override
  String get checking => 'Проверка...';

  @override
  String get translating => 'Перевод...';

  @override
  String get translationComplete => 'Перевод завершен (требуется сохранение)';

  @override
  String get translationLoaded => 'Загружен сохраненный перевод';

  @override
  String translationFailed(String error) {
    return 'Ошибка перевода: $error';
  }

  @override
  String get enterTextToTranslate => 'Введите текст для перевода';

  @override
  String get saving => 'Сохранение...';

  @override
  String get noTranslationToSave => 'Нет перевода для сохранения';

  @override
  String saveFailed(String error) {
    return 'Ошибка сохранения: $error';
  }

  @override
  String get playing => 'Воспроизведение...';

  @override
  String get noTextToPlay => 'Нет текста для воспроизведения';

  @override
  String playbackFailed(String error) {
    return 'Ошибка воспроизведения: $error';
  }

  @override
  String get sourceLanguage => 'Исходный язык';

  @override
  String get targetLanguage => 'Целевой язык';

  @override
  String get similarTextFound => 'Найден похожий текст';

  @override
  String get useExistingText => 'Использовать';

  @override
  String get createNew => 'Создать новый';

  @override
  String reviewCount(int count) {
    return 'Повторено $count раз(а)';
  }

  @override
  String get tabSpeaking => 'Разговор';

  @override
  String get speakingPractice => 'Разговорная практика';

  @override
  String intervalSeconds(int seconds) {
    return 'Интервал: $secondsс';
  }

  @override
  String get yourPronunciation => 'Ваше произношение';

  @override
  String get correctAnswer => 'Правильный ответ';

  @override
  String score(String score) {
    return 'Точность: $score%';
  }

  @override
  String get perfect => 'Идеально!';

  @override
  String get good => 'Хорошо';

  @override
  String get tryAgain => 'Попробуйте снова';

  @override
  String get startPractice => 'Начать практику';

  @override
  String get stopPractice => 'Остановить';

  @override
  String get startTutorial => 'Начать тур';

  @override
  String get tutorialMicTitle => 'Голосовой ввод';

  @override
  String get tutorialMicDesc => 'Нажмите на микрофон для голосового ввода.';

  @override
  String get tutorialTabDesc =>
      'Здесь вы можете выбрать желаемый режим обучения.';

  @override
  String get tutorialTapToContinue => 'Нажмите, чтобы продолжить';

  @override
  String get tutorialTransTitle => 'Перевод';

  @override
  String get tutorialTransDesc => 'Нажмите здесь, чтобы перевести текст.';

  @override
  String get tutorialSaveTitle => 'Сохранить';

  @override
  String get tutorialSaveDesc => 'Сохраните перевод в учебные записи.';

  @override
  String get tutorialM2SelectTitle => 'Выбор и фильтр';

  @override
  String get tutorialM2SelectDesc => 'Выберите материалы или \'Обзор всего\'.';

  @override
  String get tutorialM2ListTitle => 'Список';

  @override
  String get tutorialM2ListDesc =>
      'Просматривайте карточки и переворачивайте их. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Выбор материала';

  @override
  String get tutorialM3SelectDesc => 'Выберите набор для разговорной практики.';

  @override
  String get tutorialM3IntervalTitle => 'Интервал';

  @override
  String get tutorialM3IntervalDesc =>
      'Настройте время ожидания между фразами.';

  @override
  String get tutorialM3StartTitle => 'Начать';

  @override
  String get tutorialM3StartDesc => 'Нажмите Play для начала практики.';

  @override
  String get startWarning => 'Внимание';

  @override
  String get noVoiceDetected => 'Голос не обнаружен';

  @override
  String get tooltipSearch => 'Поиск';

  @override
  String get tooltipStudyReview => 'Обучение+Повторение';

  @override
  String get tooltipSpeaking => 'Говорение';

  @override
  String get tooltipDecrease => 'Уменьшить';

  @override
  String get tooltipIncrease => 'Увеличить';

  @override
  String get languageSettings => 'Настройки языка';

  @override
  String get tutorialM2DropdownDesc => 'Выберите учебные материалы.';

  @override
  String get tutorialM2ImportDesc =>
      'Импортировать JSON-файл из папки устройства.';

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
  String get tutorialContextTitle => 'Тег контекста';

  @override
  String get tutorialContextDesc =>
      'Добавьте контекст (например, Утро), чтобы различать похожие предложения.';

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
  String get usageLimitTitle => 'Превышен лимит использования';

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
  String get selectMaterialSet => 'Выберите учебные материалы';

  @override
  String get sectionWords => 'Слова';

  @override
  String get sectionSentences => 'Предложения';

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
  String get tutorialSwapDesc => 'Я меняю свой язык с языком, который изучаю.';

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
  String get menuSelectMaterialSet => 'Выберите учебный материал';

  @override
  String get sectionWord => 'Раздел слов';

  @override
  String get sectionSentence => 'Раздел предложений';

  @override
  String get tabWord => 'слово';

  @override
  String get tabSentence => 'предложение';

  @override
  String get errorProfanity =>
      'Содержит ненормативную лексику и не может быть переведено.';

  @override
  String get errorHateSpeech =>
      'Содержит высказывания, разжигающие ненависть, и не может быть переведено.';

  @override
  String get errorSexualContent =>
      'Содержит контент сексуального характера и не может быть переведено.';

  @override
  String get errorOtherSafety => 'Перевод отклонен политикой безопасности AI.';

  @override
  String get clearAll => 'Очистить все';

  @override
  String get disambiguationTitle => 'Выберите значение';

  @override
  String get disambiguationPrompt => 'В каком значении вы хотите перевести?';

  @override
  String get skip => 'Пропустить';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'История';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => 'Новый чат';

  @override
  String get chatChoosePersona => 'Выбрать персонажа';

  @override
  String get chatTypeHint => 'Напишите сообщение...';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String get chatNoConversations => 'Чатов пока нет';

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
  String get chatAiChat => 'ИИ-Чат';

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
  String get basicWordRepository => 'Базовый репозиторий слов';

  @override
  String get basicSentenceRepository => 'Базовый репозиторий предложений';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'Сохранить и выйти';

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
  String get labelShowMemorized => '외운것';

  @override
  String get tagSelection => '태그 선택';

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
  String get formPresent => '현재형';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get formSingular => 'Единственное число';

  @override
  String get caseSubject => '주격';

  @override
  String get caseObject => '목적격';

  @override
  String get casePossessive => '소유격';

  @override
  String get casePossessivePronoun => '소유대명사';

  @override
  String get caseReflexive => '재귀대명사';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

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
  String get helpJsonDesc =>
      'Для импорта материалов в режиме 3 создайте JSON файл следующей структуры:';

  @override
  String get helpTourDesc =>
      'Запустите интерактивный тур для ознакомления с функциями.';

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
      'Просматривайте карточки и переворачивайте их.';

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
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';
}

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
  String get helpTourDesc => 'Запустіть інтерактивний тур для ознайомлення.';

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
  String get tutorialM2ListDesc => 'Переглядайте картки та перевертайте їх.';

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
}

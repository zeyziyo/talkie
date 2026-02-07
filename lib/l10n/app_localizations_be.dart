// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get helpTitle => 'Дапамога і даведнікі';

  @override
  String get helpTabModes => 'Апісанне рэжымаў';

  @override
  String get helpTabJson => 'Фармат JSON';

  @override
  String get helpTabTour => 'Пачаць тур';

  @override
  String get helpMode1Desc =>
      'Перакладайце з дапамогай распазнавання гаворкі і праслухоўвайце вынікі.';

  @override
  String get helpMode1Details =>
      '• Налады мовы: змена мовы націскам на значкі зверху/знізу\n• Пераключальнік слова/фразы: пераключэнне рэжыму\n• Галасавы ўвод: націсніце значок мікрафона, каб пачаць/спыніць праслухоўванне\n• Тэкставы ўвод: увядзіце тэкст непасрэдна для перакладу\n• Аўтаматычны пошук: выяўленне падобных існуючых фраз\n• Пераклад: націсніце кнопку перакладу для імгненнага перакладу\n• Праслухоўванне: прайграванне TTS з дапамогай значка дынаміка\n• Захаванне: дадайце запісы праз «Захаванне даных»\n• Ачыстка: скід уводу';

  @override
  String get helpMode2Desc =>
      'Пераглядайце захаваныя фразы і правярайце сваю памяць з дапамогай функцыі аўтаматычнага схавання.';

  @override
  String get helpMode2Details =>
      '• Выбар матэрыялаў: выберыце пэўны набор матэрыялаў або «Поўны агляд»\n• Перагортванне карткі: пацверджанне перакладу з дапамогай «Паказаць/Схаваць» (аўтаматычная адзнака навучання)\n• Праслухоўванне: прайграванне TTS для фразы\n• Навучанне завершана: апрацоўка завершанага навучання з дапамогай галачкі (V)\n• Выдаленне: доўга націсніце на картку, каб выдаліць запіс\n• Крытэрыі пошуку: фільтрацыя па тэгах, нядаўніх элементах або пачатковых літарах';

  @override
  String get helpMode3Desc =>
      'Практыкуйце сваё вымаўленне, слухаючы і паўтараючы фразы (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Выбар матэрыялаў: выберыце набор матэрыялаў для вывучэння\n• Налада інтэрвалу: наладзьце час чакання паміж фразамі з дапамогай кнопак [-] [+]. (3 секунды ~ 60 секунд)\n• Пачатак/Стоп: кантроль сеансу ценявога паўтарэння\n• Размова: праслухоўванне і паўтарэнне гаворкі\n• Зваротная сувязь: паказ дакладнасці ў балах (0-100) і колерам\n• Крытэрыі пошуку: фільтрацыя практыкаванняў па тэгах, нядаўніх элементах або пачатковых літарах';

  @override
  String get helpModeChatDesc =>
      'Практыкуйце размову ў рэальным жыцці, размаўляючы з персанажам AI.';

  @override
  String get helpModeChatDetails =>
      '• Чат AI: размаўляйце на сваёй мове, каб папрактыкавацца ў размове\n• Мульты-персана: змена полу/мовы/імя іншага чалавека праз меню над бурбалкай гаворкі\n• Дадаць партнёра: даданне новага партнёра па размове (Незнаёмец) з дапамогай кнопкі +\n• GPS: сцэнарыі на аснове бягучага месцазнаходжання\n• Аўтаматычнае захаванне: аўтаматычны пераклад і захаванне зместу размовы';

  @override
  String get helpJsonDesc =>
      'Калі вы хочаце імпартаваць навучальныя матэрыялы для рэжыму 3 у выглядзе файла JSON, прытрымлівайцеся наступнага фармату:';

  @override
  String get helpDialogueImportDesc =>
      'Імпартуйце поўны набор дыялогаў у выглядзе файла JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• Структура JSON: выкарыстоўвайце масіў `dialogues` замест `entries`\n• Аўтаматычнае аднаўленне: аднаўляюцца назва дыялогу, персанаж і парадак паведамленняў.\n• Месцазнаходжанне: імпартаваныя дыялогі з\'яўляюцца ва ўкладцы «Гісторыя» ў рэжыме чата AI.';

  @override
  String get helpTourDesc =>
      '**Вылучанае кола** правядзе вас па асноўных функцыях.\n(Напрыклад: вы можаце выдаліць картку, доўга націскаючы на яе, на якую паказвае **вылучанае кола**.)';

  @override
  String get partnerMode => 'Рэжым партнёра';

  @override
  String get manual => 'Ручны ўвод';

  @override
  String get speaker => 'Гаворачы';

  @override
  String get switchToAi => 'Пераключыцца ў рэжым AI';

  @override
  String get switchToPartner => 'Пераключыцца ў рэжым партнёра';

  @override
  String get currentLocation => 'Бягучае месцазнаходжанне';

  @override
  String get location => 'Месцазнаходжанне';

  @override
  String get partner => 'Партнёр';

  @override
  String get me => 'Я';

  @override
  String get currentMaterialLabel => 'Бягучы выбраны набор матэрыялаў:';

  @override
  String get basicMaterialRepository => 'Асноўнае сховішча фраз/слоў';

  @override
  String get word => 'Слова';

  @override
  String get sentence => 'Фраза';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Агляд ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Вучэбны матэрыял ($count)';
  }

  @override
  String get mode2Title => 'Агляд';

  @override
  String get search => 'Пошук';

  @override
  String get translate => 'Пераклад';

  @override
  String get listen => 'Слухаць';

  @override
  String get saveData => 'Захаваць даныя';

  @override
  String get saved => 'Захавана';

  @override
  String get delete => 'Выдаліць';

  @override
  String get materialInfo => 'Інфармацыя пра матэрыял';

  @override
  String get cancel => 'Адмяніць';

  @override
  String get confirm => 'Пацвердзіць';

  @override
  String get refresh => 'Абнавіць';

  @override
  String studyRecords(int count) {
    return 'Запісы навучання ($count)';
  }

  @override
  String get targetLanguageFilter => 'Фільтр мовы прызначэння:';

  @override
  String get noRecords => 'Няма запісаў навучання для выбранай мовы';

  @override
  String get saveTranslationsFromSearch =>
      'Паспрабуйце захаваць пераклады з рэжыму пошуку';

  @override
  String get flip => 'Паказаць';

  @override
  String get hide => 'Схаваць';

  @override
  String get deleteRecord => 'Выдаліць запіс';

  @override
  String get confirmDelete =>
      'Вы сапраўды хочаце выдаліць гэты запіс навучання?';

  @override
  String get recordDeleted => 'Запіс выдалены';

  @override
  String deleteFailed(String error) {
    return 'Не атрымалася выдаліць: $error';
  }

  @override
  String get importJsonFile => 'Імпартаваць файл JSON';

  @override
  String get importing => 'Імпарт...';

  @override
  String get importComplete => 'Імпарт завершаны';

  @override
  String get importFailed => 'Не атрымалася імпартаваць';

  @override
  String importFile(String fileName) {
    return 'Файл: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Усяго: $count';
  }

  @override
  String importAdded(int count) {
    return 'Дададзена: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Прапушчана: $count';
  }

  @override
  String get errors => 'Памылкі:';

  @override
  String get error => 'Памылка';

  @override
  String importErrorMessage(String error) {
    return 'Не атрымалася імпартаваць файл:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Выберыце вучэбны матэрыял';

  @override
  String get subject => 'Тэма:';

  @override
  String get source => 'Крыніца:';

  @override
  String get file => 'Файл:';

  @override
  String progress(int current, int total) {
    return 'Прагрэс: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Імпартуйце файл JSON';

  @override
  String get selectMaterialPrompt => 'Выберыце вучэбны матэрыял';

  @override
  String get studyComplete => 'Навучанне завершана';

  @override
  String get markAsStudied => 'Пазначыць як вывучанае';

  @override
  String get listening => 'Праслухоўванне...';

  @override
  String get recognized => 'Распазнана';

  @override
  String recognitionFailed(String error) {
    return 'Не атрымалася распазнаць гаворку: $error';
  }

  @override
  String get checking => 'Праверка...';

  @override
  String get translating => 'Пераклад...';

  @override
  String get translationComplete => 'Пераклад завершаны (неабходна захаваць)';

  @override
  String get translationLoaded => 'Загружаны захаваны пераклад';

  @override
  String translationFailed(String error) {
    return 'Не атрымалася перакласці: $error';
  }

  @override
  String get enterTextToTranslate => 'Увядзіце тэкст для перакладу';

  @override
  String get saving => 'Захаванне...';

  @override
  String get noTranslationToSave => 'Няма перакладу для захавання';

  @override
  String saveFailed(String error) {
    return 'Не атрымалася захаваць: $error';
  }

  @override
  String get playing => 'Прайграванне...';

  @override
  String get noTextToPlay => 'Няма тэксту для прайгравання';

  @override
  String playbackFailed(String error) {
    return 'Не атрымалася прайграць: $error';
  }

  @override
  String get sourceLanguage => 'Зыходная мова';

  @override
  String get targetLanguage => 'Мэтавая мова';

  @override
  String get similarTextFound => 'Знойдзены падобны тэкст';

  @override
  String get useExistingText => 'Выкарыстоўваць існуючы тэкст';

  @override
  String get createNew => 'Працягнуць як новую фразу';

  @override
  String reviewCount(int count) {
    return 'Агляд $count раз(ы)';
  }

  @override
  String get tabSpeaking => 'Размова';

  @override
  String get speakingPractice => 'Практыка размовы';

  @override
  String intervalSeconds(int seconds) {
    return 'Інтэрвал: $seconds сек';
  }

  @override
  String get yourPronunciation => 'Ваша вымаўленне';

  @override
  String get correctAnswer => 'Правільны адказ';

  @override
  String score(String score) {
    return 'Дакладнасць: $score%';
  }

  @override
  String get perfect => 'Ідэальна!';

  @override
  String get good => 'Добра';

  @override
  String get tryAgain => 'Паспрабуйце яшчэ раз';

  @override
  String get startPractice => 'Пачніце практыкаванне';

  @override
  String get stopPractice => 'Спыніце практыкаванне';

  @override
  String get startTutorial => 'Пачніце навучанне';

  @override
  String get tutorialMicTitle => 'Галасавы ўвод';

  @override
  String get tutorialMicDesc =>
      'Націсніце кнопку мікрафона, каб пачаць галасавы ўвод.';

  @override
  String get tutorialTabDesc =>
      'Тут вы можаце выбраць патрэбны рэжым навучання.';

  @override
  String get tutorialTapToContinue => 'Націсніце на экран, каб працягнуць';

  @override
  String get tutorialTransTitle => 'Перакласці';

  @override
  String get tutorialTransDesc => 'Перакладзе ўведзены тэкст.';

  @override
  String get tutorialSaveTitle => 'Захаваць';

  @override
  String get tutorialSaveDesc =>
      'Захавайце перакладзены вынік у свае запісы навучання.';

  @override
  String get tutorialM2SelectTitle => 'Выбар матэрыялу';

  @override
  String get tutorialM2SelectDesc =>
      'Націсніце значок набору матэрыялаў (📚) на верхняй панэлі прыкладання, каб выбраць матэрыял для вывучэння.';

  @override
  String get tutorialM2ListTitle => 'Спіс навучання';

  @override
  String get tutorialM2ListDesc =>
      'Вы можаце выдаліць картку, доўга націскаючы на яе. Праверце захаваныя фразы і перагарніце іх.';

  @override
  String get tutorialM3SelectTitle => 'Выбар матэрыялу';

  @override
  String get tutorialM3SelectDesc =>
      'Націсніце значок набору матэрыялаў (📚) на верхняй панэлі прыкладання, каб выбраць матэрыял для практыкі.';

  @override
  String get tutorialM3IntervalTitle => 'Настройка інтэрвалу';

  @override
  String get tutorialM3IntervalDesc => 'Адрэгулюйце час чакання паміж фразамі.';

  @override
  String get tutorialM3StartTitle => 'Пачаць практыку';

  @override
  String get tutorialM3StartDesc =>
      'Націсніце кнопку прайгравання, каб праслухаць гаворку носьбіта мовы і паўтарыць яе.';

  @override
  String get startWarning => 'Увага';

  @override
  String get noVoiceDetected => 'Не выяўлена голасу';

  @override
  String get tooltipSearch => 'Пошук';

  @override
  String get tooltipStudyReview => 'Навучанне + Агляд';

  @override
  String get tooltipSpeaking => 'Размова';

  @override
  String get tooltipDecrease => 'Паменшыць';

  @override
  String get tooltipIncrease => 'Павялічыць';

  @override
  String get languageSettings => 'Налады мовы';

  @override
  String get tutorialM2DropdownDesc =>
      'Вы можаце выбраць матэрыял для вывучэння праз верхняе меню.';

  @override
  String get tutorialM2ImportDesc =>
      'Імпартуйце файлы JSON з тэчкі на вашай прыладзе.';

  @override
  String get tutorialLangSettingsTitle => 'Налады мовы';

  @override
  String get tutorialLangSettingsDesc =>
      'Наладзьце мову зыходнага тэксту і мову перакладу.';

  @override
  String get copy => 'Капіяваць';

  @override
  String get copiedToClipboard => 'Скапіявана ў буфер абмену!';

  @override
  String get tutorialContextTitle => 'Тэг сітуацыі/кантэксту';

  @override
  String get tutorialContextDesc =>
      'Вы можаце захаваць адну і тую ж фразу асобна, запісаўшы сітуацыю (напрыклад, раніца, вечар).';

  @override
  String get thinkingTimeInterval => 'Інтэрвал часу абдумвання';

  @override
  String get thinkingTimeDesc =>
      'Час для абдумвання перад тым, як будзе паказаны правільны адказ.';

  @override
  String get autoPlay => 'Аўтапрайграванне';

  @override
  String get timeUp => 'Час выйшаў!';

  @override
  String get gameModeTitle => 'Рэжым гульні';

  @override
  String get gameModeDesc => 'Выберыце рэжым гульні для практыкі';

  @override
  String get wordDefenseTitle => 'Абарона слоў';

  @override
  String get wordDefenseDesc =>
      'Абараніце базу, вымаўляючы словы да таго, як ворагі дойдуць да яе.';

  @override
  String get dialogueQuestTitle => 'Квест дыялогу';

  @override
  String get dialogueQuestDesc =>
      'Практыкуйце размову праз ролевыя гульні. Выберыце адпаведныя адказы і вымавіце іх.';

  @override
  String get labelType => 'Тып:';

  @override
  String get labelWord => 'Слова';

  @override
  String get labelSentence => 'Фраза';

  @override
  String get contextTagLabel =>
      'Кантэкст/сітуацыя (неабавязкова) - Напрыклад: прывітанне, ветлівасць';

  @override
  String get contextTagHint =>
      'Запішыце сітуацыю, каб яе было лягчэй адрозніць пазней';

  @override
  String get usageLimitTitle => 'Ліміт дасягнуты';

  @override
  String get translationLimitExceeded => 'Перавышаны ліміт перакладаў';

  @override
  String get translationLimitMessage =>
      'Вы выкарысталі ўсе бясплатныя штодзённыя пераклады (5).\n\nХочаце паглядзець рэкламу і неадкладна папоўніць яшчэ 5?';

  @override
  String get watchAdAndRefill => 'Паглядзець рэкламу і папоўніць (+5)';

  @override
  String get translationRefilled => 'Вы папоўнілі колькасць перакладаў на 5!';

  @override
  String get adLoading =>
      'Рэклама загружаецца. Калі ласка, паспрабуйце пазней.';

  @override
  String get reviewAll => 'Поўны агляд';

  @override
  String totalRecords(int count) {
    return 'Усяго $count запісаў (паказаць усе)';
  }

  @override
  String get filterAll => 'Усё';

  @override
  String get practiceWordsOnly => 'Практыкаваць толькі словы';

  @override
  String get resetPracticeHistory => 'Скінуць гісторыю практыкі';

  @override
  String get retry => 'Паспрабаваць яшчэ раз?';

  @override
  String get noStudyMaterial => 'Няма вучэбнага матэрыялу.';

  @override
  String get gameOver => 'Game Over';

  @override
  String get playAgain => 'Згуляць яшчэ раз';

  @override
  String get speakNow => 'Гаварыце зараз!';

  @override
  String get scoreLabel => 'Лік';

  @override
  String get viewOnlineGuide => 'Паглядзець онлайн-даведнік';

  @override
  String get getMaterials => 'Атрымаць матэрыялы';

  @override
  String get swapLanguages => 'Памяняць мовы';

  @override
  String get next => 'Далей';

  @override
  String get wordModeLabel => 'Рэжым слоў';

  @override
  String get accuracy => 'Дакладнасць';

  @override
  String get basicDefault => 'Асноўны';

  @override
  String get basic => 'Асноўны';

  @override
  String get tutorialM3WordsTitle => 'Практыкаванне слоў';

  @override
  String get tutorialM3WordsDesc =>
      'Калі адзначана, практыкуюцца толькі захаваныя словы.';

  @override
  String get enterTextHint => 'Увядзіце тэкст для перакладу';

  @override
  String get micButtonTooltip => 'Пачаць распазнаванне гаворкі';

  @override
  String get menuHelp => 'Даведка';

  @override
  String get menuWebDownload => 'Хатняя старонка';

  @override
  String get menuDeviceImport => 'Імпартаваць матэрыялы з прылады';

  @override
  String get menuSettings => 'Налады мовы';

  @override
  String get basicWords => 'Асноўнае сховішча слоў';

  @override
  String get basicSentences => 'Асноўнае сховішча фраз';

  @override
  String get selectMaterialSet => 'Выберыце набор вучэбных матэрыялаў';

  @override
  String get sectionWords => 'Словы';

  @override
  String get sectionSentences => 'Фразы';

  @override
  String get languageSettingsTitle => 'Налады мовы';

  @override
  String get sourceLanguageLabel => 'Мая мова (Source)';

  @override
  String get targetLanguageLabel => 'Мова навучання (Target)';

  @override
  String get mode3Start => 'Пачаць';

  @override
  String get mode3Stop => 'Спыніць';

  @override
  String get mode3Next => 'Далей';

  @override
  String get mode3TryAgain => 'Паўтарыць';

  @override
  String get tutorialM3ResetTitle => 'Скінуць гісторыю';

  @override
  String get tutorialSwapDesc => 'Памяняць маю мову і мову навучання.';

  @override
  String get recognizedText => 'Распазнанае вымаўленне:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Скіньце прагрэс і балы дакладнасці, каб пачаць зноўку.';

  @override
  String get menuSelectMaterialSet => 'Выберыце набор вучэбных матэрыялаў';

  @override
  String get sectionWord => 'Раздзел слоў';

  @override
  String get sectionSentence => 'Раздзел фраз';

  @override
  String get tabWord => 'Слова';

  @override
  String get tabSentence => 'Фраза';

  @override
  String get errorProfanity => 'Немагчыма перакласці, бо змяшчае лаянку.';

  @override
  String get errorHateSpeech =>
      'Немагчыма перакласці, бо змяшчае мову нянавісці.';

  @override
  String get errorSexualContent =>
      'Немагчыма перакласці, бо змяшчае сэксуальны кантэнт.';

  @override
  String get errorOtherSafety =>
      'Пераклад адхілены ў адпаведнасці з палітыкай бяспекі AI.';

  @override
  String get clearAll => 'Ачысціць усё';

  @override
  String get disambiguationTitle => 'Выберыце значэнне';

  @override
  String get disambiguationPrompt => 'Якое значэнне вы хочаце перакласці?';

  @override
  String get skip => 'Прапусціць';

  @override
  String get inputModeTitle => 'Увод';

  @override
  String get reviewModeTitle => 'Агляд';

  @override
  String get practiceModeTitle => 'Практыка вымаўлення';

  @override
  String get chatHistoryTitle => 'Гісторыя чата';

  @override
  String get chatNew => 'Новы чат';

  @override
  String get chatNewChat => 'Новы чат';

  @override
  String get chatChoosePersona => 'Выберыце персанажа';

  @override
  String get chatTypeHint => 'Увядзіце паведамленне...';

  @override
  String chatFailed(Object error) {
    return 'Не атрымалася пагутарыць: $error';
  }

  @override
  String get chatNoConversations => 'Пакуль няма размоў';

  @override
  String get chatStartNewPrompt => 'Пачніце новую размову для практыкі!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Вытрымка з размовы ($speaker)';
  }

  @override
  String get personaTeacher => 'Настаўнік англійскай мовы';

  @override
  String get personaGuide => 'Гід';

  @override
  String get personaFriend => 'Мясцовы сябар';

  @override
  String get chatUntitled => 'Размова без назвы';

  @override
  String get chatAiChat => 'Чат AI';

  @override
  String get tutorialAiChatTitle => 'Чат AI';

  @override
  String get tutorialAiChatDesc =>
      'Практыкуйце размовы ў рэальным жыцці з персанажам AI.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Бягучы выбраны набор матэрыялаў: $name';
  }

  @override
  String get basicWordRepository => 'Асноўнае сховішча слоў';

  @override
  String get basicSentenceRepository => 'Асноўнае сховішча фраз';

  @override
  String get chatEndTitle => 'Завяршыць і захаваць размову';

  @override
  String get chatEndMessage => 'Вы хочаце завяршыць размову?';

  @override
  String get chatSaveAndExit => 'Захаваць і выйсці';

  @override
  String get errorSelectCategory => 'Спачатку выберыце слова або фразу!';

  @override
  String get tutorialM1ToggleTitle => 'Рэжым слова/фразы';

  @override
  String get tutorialM1ToggleDesc => 'Тут пераключыце рэжымы слоў і фраз.';

  @override
  String get metadataDialogTitle => 'Падрабязная класіфікацыя';

  @override
  String get tagFormal => 'Ветліва';

  @override
  String get selectPOS => 'Выберыце часціну мовы';

  @override
  String get selectSentenceType => 'Выберыце тып фразы';

  @override
  String get metadataRootWord => 'Каранёвае слова';

  @override
  String get posNoun => 'Назоўнік';

  @override
  String get posVerb => 'Дзеяслоў';

  @override
  String get posAdjective => 'Прыметнік';

  @override
  String get posAdverb => 'Прыслоўе';

  @override
  String get posPronoun => 'Займеннік';

  @override
  String get posPreposition => 'Прыназоўнік/часціца';

  @override
  String get posConjunction => 'Злучнік';

  @override
  String get posInterjection => 'Выклічнік';

  @override
  String get typeStatement => 'Сцвярджальнае';

  @override
  String get typeQuestion => 'Пытальнае';

  @override
  String get typeExclamation => 'Клічнае';

  @override
  String get typeImperative => 'Загаднае';

  @override
  String get labelNote => 'Заўвага';

  @override
  String get labelShowMemorized => 'Скончана';

  @override
  String get tagSelection => 'Выбар тэга';

  @override
  String get metadataFormType => 'Граматычная форма';

  @override
  String get formInfinitive => 'Інфінітыў/Цяперашні час';

  @override
  String get formPast => 'Мінулы час';

  @override
  String get formPastParticiple => 'Дзеепрыметнік мінулага часу';

  @override
  String get formPresentParticiple => 'Дзеепрыметнік цяперашняга часу (ing)';

  @override
  String get formPresent => 'Цяперашні час';

  @override
  String get formThirdPersonSingular => '3-я асоба адзіночнага ліку';

  @override
  String get formPlural => 'Множны лік';

  @override
  String get formSingular => 'Адзіночны лік';

  @override
  String get caseSubject => 'Назоўны склон';

  @override
  String get caseObject => 'Вінавальны склон';

  @override
  String get casePossessive => 'Родны склон';

  @override
  String get casePossessivePronoun => 'Прыналежны займеннік';

  @override
  String get caseReflexive => 'Зваротны займеннік';

  @override
  String get formPositive => 'Звычайная ступень';

  @override
  String get formComparative => 'Параўняльная ступень';

  @override
  String get formSuperlative => 'Найвышэйшая ступень';

  @override
  String get searchConditions => 'Умовы пошуку';

  @override
  String recentNItems(int count) {
    return 'Паказаць апошнія $count створаных';
  }

  @override
  String get startsWith => 'Пачынаецца з';

  @override
  String get reset => 'Скінуць';

  @override
  String get participantRename => 'Перайменаваць удзельніка';

  @override
  String get labelName => 'Імя';

  @override
  String get gender => 'Пол';

  @override
  String get language => 'Мова';

  @override
  String get male => 'Мужчына';

  @override
  String get female => 'Жанчына';

  @override
  String get neutral => 'Нейтральны';

  @override
  String get chatAllConversations => 'Усе размовы';

  @override
  String get confirmDeleteConversation =>
      'Вы сапраўды жадаеце выдаліць гэтую размову?\nЯе нельга будзе аднавіць.';
}

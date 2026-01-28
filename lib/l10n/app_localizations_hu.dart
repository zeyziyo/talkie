// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Áttekintés ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Anyagok ($count)';
  }

  @override
  String get mode2Title => 'Áttekintés';

  @override
  String get search => 'Keresés';

  @override
  String get translate => 'Fordítás';

  @override
  String get listen => 'Hallgatás';

  @override
  String get saveData => 'Mentés';

  @override
  String get saved => 'Mentve';

  @override
  String get delete => 'Törlés';

  @override
  String get materialInfo => 'Anyaginformáció';

  @override
  String get cancel => 'Mégse';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Frissítés';

  @override
  String studyRecords(int count) {
    return 'Rekordok ($count)';
  }

  @override
  String get targetLanguageFilter => 'Célnyelv szűrő:';

  @override
  String get noRecords => 'Nincs rekord a választott nyelvhez';

  @override
  String get saveTranslationsFromSearch =>
      'Mentse a fordításokat a keresési módból';

  @override
  String get flip => 'Fordít';

  @override
  String get hide => 'Elrejt';

  @override
  String get deleteRecord => 'Rekord törlése';

  @override
  String get confirmDelete => 'Biztosan törölni szeretné ezt a rekordot?';

  @override
  String get recordDeleted => 'Rekord sikeresen törölve';

  @override
  String deleteFailed(String error) {
    return 'Törlés sikertelen: $error';
  }

  @override
  String get importJsonFile => 'JSON Import';

  @override
  String get importing => 'Importálás...';

  @override
  String get importComplete => 'Import Kész';

  @override
  String get importFailed => 'Import Sikertelen';

  @override
  String importFile(String fileName) {
    return 'Fájl: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Összes: $count';
  }

  @override
  String importAdded(int count) {
    return 'Hozzáadva: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Kihagyva: $count';
  }

  @override
  String get errors => 'Hibák:';

  @override
  String get error => 'Hiba';

  @override
  String importErrorMessage(String error) {
    return 'Fájl importálása sikertelen:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Anyag Kiválasztása';

  @override
  String get subject => 'Tárgy:';

  @override
  String get source => 'Forrás:';

  @override
  String get file => 'Fájl:';

  @override
  String progress(int current, int total) {
    return 'Folyamat: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Kérjük importáljon egy JSON fájlt';

  @override
  String get selectMaterialPrompt => 'Kérjük válasszon tanulási anyagot';

  @override
  String get studyComplete => 'Megtanulva';

  @override
  String get markAsStudied => 'Jelölés megtanultként';

  @override
  String get listening => 'Hallgatás...';

  @override
  String get recognized => 'Felismerés kész';

  @override
  String recognitionFailed(String error) {
    return 'Beszédfelismerés sikertelen: $error';
  }

  @override
  String get checking => 'Ellenőrzés...';

  @override
  String get translating => 'Fordítás...';

  @override
  String get translationComplete => 'Fordítás kész (mentés szükséges)';

  @override
  String get translationLoaded => 'Mentett fordítás betöltve';

  @override
  String translationFailed(String error) {
    return 'Fordítás sikertelen: $error';
  }

  @override
  String get enterTextToTranslate => 'Írja be a szöveget a fordításhoz';

  @override
  String get saving => 'Mentés...';

  @override
  String get noTranslationToSave => 'Nincs mentendő fordítás';

  @override
  String saveFailed(String error) {
    return 'Mentés sikertelen: $error';
  }

  @override
  String get playing => 'Lejátszás...';

  @override
  String get noTextToPlay => 'Nincs lejátszható szöveg';

  @override
  String playbackFailed(String error) {
    return 'Lejátszás sikertelen: $error';
  }

  @override
  String get sourceLanguage => 'Forrásnyelv';

  @override
  String get targetLanguage => 'Célnyelv';

  @override
  String get similarTextFound => 'Hasonló szöveg található';

  @override
  String get useExistingText => 'Meglévő Használata';

  @override
  String get createNew => 'Új Létrehozása';

  @override
  String reviewCount(int count) {
    return '$count alkalommal áttekintve';
  }

  @override
  String get tabSpeaking => 'Beszéd';

  @override
  String get speakingPractice => 'Beszédgyakorlat';

  @override
  String intervalSeconds(int seconds) {
    return 'Időköz: ${seconds}mp';
  }

  @override
  String get yourPronunciation => 'Kiejtésed';

  @override
  String get correctAnswer => 'Helyes Válasz';

  @override
  String score(String score) {
    return 'Pontosság: $score%';
  }

  @override
  String get perfect => 'Tökéletes!';

  @override
  String get good => 'Jó';

  @override
  String get tryAgain => 'Próbáld újra';

  @override
  String get startPractice => 'Gyakorlás Indítása';

  @override
  String get stopPractice => 'Leállítás';

  @override
  String get helpTitle => 'Segítség és Útmutató';

  @override
  String get helpTabModes => 'Módok';

  @override
  String get helpTabJson => 'JSON Formátum';

  @override
  String get helpTabTour => 'Túra';

  @override
  String get helpMode1Desc =>
      'Hangfelismerés, fordítás és eredmény meghallgatása.';

  @override
  String get helpMode1Details =>
      '• Hang: Érintse meg a mikrofont az indításhoz/leállításhoz\n• Szöveg: Írjon közvetlenül a fordításhoz\n• Auto-Keresés: Hasonló mondatokat keres\n• Fordítás: Gomb az azonnali fordításhoz\n• Hallgatás: Hangszóró ikon a TTS-hez\n• Mentés: Hozzáadja az előzményekhez\n• Törlés: Összes visszaállítása';

  @override
  String get helpMode2Desc =>
      'Mentett mondatok áttekintése rejtett fordítással.';

  @override
  String get helpMode2Details =>
      '• Kiválasztás: Válasszon készletet vagy \'Összes\'\n• Fordítás: \'Mutat/Rejt\' fordítás megtekintése\n• Hallgatás: Mondat TTS lejátszása\n• Jelölés: Pipa (V) a kész elemekhez\n• Törlés: Hosszan nyomja meg a kártyát\n• Szűrő: Összes vagy anyag szerint';

  @override
  String get helpMode3Desc =>
      'Beszédgyakorlás hallgatással és ismétléssel (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Kiválasztás: Válasszon csomagot\n• Időköz: [-] [+] várakozás (3mp-60mp)\n• Start/Stop: Munkamenet vezérlése\n• Beszéd: Hallgassa és ismételje\n• Pontszám: Pontosság (0-100)\n• Újra: Gomb ha a hang nem észlelhető';

  @override
  String get helpJsonDesc => '3. Mód importhoz hozzon létre JSON-t:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Túra Indítása';

  @override
  String get tutorialMicTitle => 'Hangbemenet';

  @override
  String get tutorialMicDesc => 'Érintse meg a mikrofont a hangbemenethez.';

  @override
  String get tutorialTabDesc => 'Itt kiválaszthatja a kívánt tanulási módot.';

  @override
  String get tutorialTapToContinue => 'Érintse meg a folytatáshoz';

  @override
  String get tutorialTransTitle => 'Fordítás';

  @override
  String get tutorialTransDesc => 'Érintse meg ide a fordításhoz.';

  @override
  String get tutorialSaveTitle => 'Mentés';

  @override
  String get tutorialSaveDesc => 'Mentse el a fordítást.';

  @override
  String get tutorialM2SelectTitle => 'Kiválasztás és Szűrő';

  @override
  String get tutorialM2SelectDesc =>
      'Válasszon anyagot vagy \'Összes áttekintése\'.';

  @override
  String get tutorialM2ListTitle => 'Tanulólista';

  @override
  String get tutorialM2ListDesc =>
      'Ellenőrizze a kártyákat és fordítsa meg őket. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Anyag Kiválasztása';

  @override
  String get tutorialM3SelectDesc => 'Válasszon készletet beszédgyakorláshoz.';

  @override
  String get tutorialM3IntervalTitle => 'Időköz';

  @override
  String get tutorialM3IntervalDesc => 'Állítsa be a mondatok közötti időt.';

  @override
  String get tutorialM3StartTitle => 'Indítás';

  @override
  String get tutorialM3StartDesc => 'Nyomja meg a lejátszást az indításhoz.';

  @override
  String get startWarning => 'Figyelem';

  @override
  String get noVoiceDetected => 'Hang nem észlelhető';

  @override
  String get tooltipSearch => 'Keresés';

  @override
  String get tooltipStudyReview => 'Tanulás+Ismétlés';

  @override
  String get tooltipSpeaking => 'Beszéd';

  @override
  String get tooltipDecrease => 'Csökkentés';

  @override
  String get tooltipIncrease => 'Növelés';

  @override
  String get languageSettings => 'Nyelvi beállítások';

  @override
  String get tutorialM2DropdownDesc => 'Válasszon tananyagot.';

  @override
  String get tutorialM2ImportDesc =>
      'JSON fájl importálása az eszköz mappájából.';

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
  String get tutorialContextTitle => 'Kontextus címke';

  @override
  String get tutorialContextDesc =>
      'Adjon hozzá kontextust (pl. Reggel) a hasonló mondatok megkülönböztetéséhez.';

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
  String get tutorialSwapDesc =>
      'Felcserélem a nyelvemet azzal a nyelvvel, amit tanulok.';

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
  String get menuSelectMaterialSet => 'Válasszon egy tanulmányi anyagot';

  @override
  String get sectionWord => 'Szószakasz';

  @override
  String get sectionSentence => 'Mondatszakasz';

  @override
  String get tabWord => 'szó';

  @override
  String get tabSentence => 'mondat';

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
  String get basicWordRepository => 'Alapvető Szótár';

  @override
  String get basicSentenceRepository => 'Alapvető Mondattár';

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

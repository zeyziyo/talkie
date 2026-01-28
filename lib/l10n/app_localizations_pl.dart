// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Powtórka ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materiały ($count)';
  }

  @override
  String get mode2Title => 'Powtórka';

  @override
  String get search => 'Szukaj';

  @override
  String get translate => 'Tłumacz';

  @override
  String get listen => 'Słuchaj';

  @override
  String get saveData => 'Zapisz';

  @override
  String get saved => 'Zapisano';

  @override
  String get delete => 'Usuń';

  @override
  String get materialInfo => 'Informacje o materiale';

  @override
  String get cancel => 'Anuluj';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Odśwież';

  @override
  String studyRecords(int count) {
    return 'Wpisy ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filtr języka:';

  @override
  String get noRecords => 'Brak wpisów dla wybranego języka';

  @override
  String get saveTranslationsFromSearch =>
      'Zapisz tłumaczenia z trybu wyszukiwania';

  @override
  String get flip => 'Odwróć';

  @override
  String get hide => 'Ukryj';

  @override
  String get deleteRecord => 'Usuń wpis';

  @override
  String get confirmDelete => 'Czy na pewno usunąć ten wpis?';

  @override
  String get recordDeleted => 'Wpis usunięty pomyślnie';

  @override
  String deleteFailed(String error) {
    return 'Usuwanie nieudane: $error';
  }

  @override
  String get importJsonFile => 'Import JSON';

  @override
  String get importing => 'Importowanie...';

  @override
  String get importComplete => 'Import Zakończony';

  @override
  String get importFailed => 'Import Nieudany';

  @override
  String importFile(String fileName) {
    return 'Plik: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Razem: $count';
  }

  @override
  String importAdded(int count) {
    return 'Dodano: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Pominięto: $count';
  }

  @override
  String get errors => 'Błędy:';

  @override
  String get error => 'Błąd';

  @override
  String importErrorMessage(String error) {
    return 'Nie udało się zaimportować pliku:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Wybierz Materiał';

  @override
  String get subject => 'Temat:';

  @override
  String get source => 'Źródło:';

  @override
  String get file => 'Plik:';

  @override
  String progress(int current, int total) {
    return 'Postęp: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Proszę zaimportować plik JSON';

  @override
  String get selectMaterialPrompt => 'Proszę wybrać materiał do nauki';

  @override
  String get studyComplete => 'Przestudiowano';

  @override
  String get markAsStudied => 'Oznacz jako Przestudiowane';

  @override
  String get listening => 'Słuchanie...';

  @override
  String get recognized => 'Rozpoznawanie zakończone';

  @override
  String recognitionFailed(String error) {
    return 'Rozpoznawanie mowy nieudane: $error';
  }

  @override
  String get checking => 'Sprawdzanie...';

  @override
  String get translating => 'Tłumaczenie...';

  @override
  String get translationComplete => 'Tłumaczenie zakończone (wymaga zapisu)';

  @override
  String get translationLoaded => 'Załadowano zapisane tłumaczenie';

  @override
  String translationFailed(String error) {
    return 'Tłumaczenie nieudane: $error';
  }

  @override
  String get enterTextToTranslate => 'Wpisz tekst do przetłumaczenia';

  @override
  String get saving => 'Zapisywanie...';

  @override
  String get noTranslationToSave => 'Brak tłumaczenia do zapisu';

  @override
  String saveFailed(String error) {
    return 'Zapisywanie nieudane: $error';
  }

  @override
  String get playing => 'Odtwarzanie...';

  @override
  String get noTextToPlay => 'Brak tekstu do odtworzenia';

  @override
  String playbackFailed(String error) {
    return 'Odtwarzanie nieudane: $error';
  }

  @override
  String get sourceLanguage => 'Język Źródłowy';

  @override
  String get targetLanguage => 'Język Docelowy';

  @override
  String get similarTextFound => 'Znaleziono podobny tekst';

  @override
  String get useExistingText => 'Użyj Istniejący';

  @override
  String get createNew => 'Utwórz Nowy';

  @override
  String reviewCount(int count) {
    return 'Powtórzono $count razy';
  }

  @override
  String get tabSpeaking => 'Mówienie';

  @override
  String get speakingPractice => 'Ćwiczenie Mówienia';

  @override
  String intervalSeconds(int seconds) {
    return 'Interwał: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Twoja Wymowa';

  @override
  String get correctAnswer => 'Poprawna Odpowiedź';

  @override
  String score(String score) {
    return 'Dokładność: $score%';
  }

  @override
  String get perfect => 'Perfekcyjnie!';

  @override
  String get good => 'Dobrze';

  @override
  String get tryAgain => 'Spróbuj Ponownie';

  @override
  String get startPractice => 'Rozpocznij';

  @override
  String get stopPractice => 'Zatrzymaj';

  @override
  String get helpTitle => 'Pomoc i Przewodnik';

  @override
  String get helpTabModes => 'Tryby';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabTour => 'Wycieczka';

  @override
  String get helpMode1Desc =>
      'Rozpoznaj głos, przetłumacz na język docelowy i odsłuchaj wynik.';

  @override
  String get helpMode1Details =>
      '• Głos: Dotknij mikrofonu aby zacząć/zatrzymać\n• Tekst: Pisz bezpośrednio aby tłumaczyć\n• Auto-Szukanie: Wykrywa podobne zdania\n• Tłumacz: Przycisk do natychmiastowego tłumaczenia\n• Słuchaj: Ikona głośnika dla TTS\n• Zapisz: \'Zapisz\' dodaje do historii\n• Wyczyść: Resetuj wszystko';

  @override
  String get helpMode2Desc =>
      'Powtarzaj zapisane zdania z ukrywaniem tłumaczeń.';

  @override
  String get helpMode2Details =>
      '• Wybierz Materiał: Wybierz zestaw lub \'Wszystko\'\n• Odwróć Kartę: \'Pokaż/Ukryj\' tłumaczenie\n• Słuchaj: Odtwórz TTS dla zdania\n• Oznacz: Zaznacz (V) ukończone\n• Usuń: Przytrzymaj kartę aby usunąć\n• Filtr: Zobacz wszystko lub filtruj';

  @override
  String get helpMode3Desc =>
      'Ćwicz mówienie poprzez słuchanie i powtarzanie (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Wybierz Materiał: Wybierz pakiet\n• Interwał: [-] [+] czas oczekiwania (3s-60s)\n• Start/Stop: Kontrola sesji\n• Mów: Słuchaj audio i powtarzaj\n• Feedback: Wynik dokładności (0-100)\n• Ponów: Przycisk ponawiania jeśli głos niewykryty';

  @override
  String get helpJsonDesc =>
      'Aby zaimportować materiały w Trybie 3, utwórz plik JSON o strukturze:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Start Przewodnik';

  @override
  String get tutorialMicTitle => 'Głos';

  @override
  String get tutorialMicDesc =>
      'Dotknij mikrofonu aby rozpocząć wprowadzanie głosem.';

  @override
  String get tutorialTabDesc => 'Tutaj możesz wybrać żądany tryb nauki.';

  @override
  String get tutorialTapToContinue => 'Dotknij, aby kontynuować';

  @override
  String get tutorialTransTitle => 'Tłumacz';

  @override
  String get tutorialTransDesc => 'Dotknij tutaj aby przetłumaczyć tekst.';

  @override
  String get tutorialSaveTitle => 'Zapisz';

  @override
  String get tutorialSaveDesc => 'Zapisz tłumaczenie w historii nauki.';

  @override
  String get tutorialM2SelectTitle => 'Wybierz i Filtruj';

  @override
  String get tutorialM2SelectDesc =>
      'Wybierz materiały lub przełącz na \'Wszystko\'.';

  @override
  String get tutorialM2ListTitle => 'Lista Nauki';

  @override
  String get tutorialM2ListDesc =>
      'Sprawdź zapisane karty i odwracaj je. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Wybierz Materiał';

  @override
  String get tutorialM3SelectDesc => 'Wybierz zestaw do ćwiczeń mówienia.';

  @override
  String get tutorialM3IntervalTitle => 'Interwał';

  @override
  String get tutorialM3IntervalDesc =>
      'Dostosuj czas oczekiwania między zdaniami.';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3StartDesc =>
      'Dotknij play aby zacząć słuchać i powtarzać.';

  @override
  String get startWarning => 'Ostrzeżenie';

  @override
  String get noVoiceDetected => 'Nie wykryto głosu';

  @override
  String get tooltipSearch => 'Szukaj';

  @override
  String get tooltipStudyReview => 'Nauka+Powtórka';

  @override
  String get tooltipSpeaking => 'Mówienie';

  @override
  String get tooltipDecrease => 'Zmniejsz';

  @override
  String get tooltipIncrease => 'Zwiększ';

  @override
  String get languageSettings => 'Ustawienia języka';

  @override
  String get tutorialM2DropdownDesc => 'Wybierz materiały do nauki.';

  @override
  String get tutorialM2ImportDesc => 'Importuj plik JSON z folderu urządzenia.';

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
  String get tutorialContextTitle => 'Znacznik kontekstu';

  @override
  String get tutorialContextDesc =>
      'Dodaj kontekst (np. Rano), aby rozróżnić podobne zdania.';

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
      'Zamieniam swój język na język, którego się uczę.';

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
  String get menuSelectMaterialSet => 'Wybierz materiał do nauki';

  @override
  String get sectionWord => 'Sekcja słów';

  @override
  String get sectionSentence => 'Sekcja zdania';

  @override
  String get tabWord => 'słowo';

  @override
  String get tabSentence => 'zdanie';

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
  String get basicWordRepository => 'Podstawowy magazyn słów';

  @override
  String get basicSentenceRepository => 'Podstawowy magazyn zdań';

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

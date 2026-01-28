// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Gennemgang ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materiale ($count)';
  }

  @override
  String get mode2Title => 'Gennemgang';

  @override
  String get search => 'Søg';

  @override
  String get translate => 'Oversæt';

  @override
  String get listen => 'Lyt';

  @override
  String get saveData => 'Gem';

  @override
  String get saved => 'Gemt';

  @override
  String get delete => 'Slet';

  @override
  String get materialInfo => 'Materialeinfo';

  @override
  String get cancel => 'Annuller';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Opdater';

  @override
  String studyRecords(int count) {
    return 'Optegnelser ($count)';
  }

  @override
  String get targetLanguageFilter => 'Målsprog Filter:';

  @override
  String get noRecords => 'Ingen optegnelser for valgt sprog';

  @override
  String get saveTranslationsFromSearch => 'Gem oversættelser fra søgetilstand';

  @override
  String get flip => 'Vend';

  @override
  String get hide => 'Skjul';

  @override
  String get deleteRecord => 'Slet Optegnelse';

  @override
  String get confirmDelete => 'Er du sikker på at slette denne optegnelse?';

  @override
  String get recordDeleted => 'Optegnelse slettet';

  @override
  String deleteFailed(String error) {
    return 'Sletning fejlede: $error';
  }

  @override
  String get importJsonFile => 'Importer JSON';

  @override
  String get importing => 'Importerer...';

  @override
  String get importComplete => 'Import Færdig';

  @override
  String get importFailed => 'Import Fejlede';

  @override
  String importFile(String fileName) {
    return 'Fil: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String importAdded(int count) {
    return 'Tilføjet: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Sprunget over: $count';
  }

  @override
  String get errors => 'Fejl:';

  @override
  String get error => 'Fejl';

  @override
  String importErrorMessage(String error) {
    return 'Kunne ikke importere fil:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Vælg Materiale';

  @override
  String get subject => 'Emne:';

  @override
  String get source => 'Kilde:';

  @override
  String get file => 'Fil:';

  @override
  String progress(int current, int total) {
    return 'Fremskridt: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Venligst importer en JSON fil';

  @override
  String get selectMaterialPrompt => 'Venligst vælg studiemateriale';

  @override
  String get studyComplete => 'Studeret';

  @override
  String get markAsStudied => 'Marker som Studeret';

  @override
  String get listening => 'Lytter...';

  @override
  String get recognized => 'Genkendelse færdig';

  @override
  String recognitionFailed(String error) {
    return 'Talegenkendelse fejlede: $error';
  }

  @override
  String get checking => 'Tjekker...';

  @override
  String get translating => 'Oversætter...';

  @override
  String get translationComplete => 'Oversættelse færdig (kræver gem)';

  @override
  String get translationLoaded => 'Gemt oversættelse indlæst';

  @override
  String translationFailed(String error) {
    return 'Oversættelse fejlede: $error';
  }

  @override
  String get enterTextToTranslate => 'Indtast tekst til oversættelse';

  @override
  String get saving => 'Gemmer...';

  @override
  String get noTranslationToSave => 'Ingen oversættelse at gemme';

  @override
  String saveFailed(String error) {
    return 'Gem fejlede: $error';
  }

  @override
  String get playing => 'Afspiller...';

  @override
  String get noTextToPlay => 'Ingen tekst at afspille';

  @override
  String playbackFailed(String error) {
    return 'Afspilning fejlede: $error';
  }

  @override
  String get sourceLanguage => 'Kildesprog';

  @override
  String get targetLanguage => 'Målsprog';

  @override
  String get similarTextFound => 'Lignende tekst fundet';

  @override
  String get useExistingText => 'Brug Eksisterende';

  @override
  String get createNew => 'Opret Ny';

  @override
  String reviewCount(int count) {
    return 'Gennemgået $count gange';
  }

  @override
  String get tabSpeaking => 'Tale';

  @override
  String get speakingPractice => 'Taleøvelse';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Din udtale';

  @override
  String get correctAnswer => 'Rigtigt Svar';

  @override
  String score(String score) {
    return 'Nøjagtighed: $score%';
  }

  @override
  String get perfect => 'Perfekt!';

  @override
  String get good => 'Godt';

  @override
  String get tryAgain => 'Prøv igen';

  @override
  String get startPractice => 'Start Øvelse';

  @override
  String get stopPractice => 'Stop';

  @override
  String get helpTitle => 'Hjælp & Guide';

  @override
  String get helpTabModes => 'Tilstande';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpMode1Desc =>
      'Talegenkendelse, oversættelse og lyt til resultat.';

  @override
  String get helpMode1Details =>
      '• Stemme: Tryk mikrofon for start/stop\n• Tekst: Skriv direkte for at oversætte\n• Auto-Søg: Finder lignende sætninger\n• Oversæt: Knap for øjeblikkelig oversættelse\n• Lyt: Højttalerikon for TTS\n• Gem: Tilføjer til historik\n• Ryd: Nulstil alt';

  @override
  String get helpMode2Desc =>
      'Gennemgå gemte sætninger med skjult oversættelse.';

  @override
  String get helpMode2Details =>
      '• Vælg: Vælg sæt eller \'Alle\'\n• Vend: \'Vis/Skjul\' oversættelse\n• Lyt: Afspil TTS for sætning\n• Marker: Flueben (V) for færdige\n• Slet: Langt tryk for at slette\n• Filter: Vis alle eller efter materiale';

  @override
  String get helpMode3Desc => 'Øv tale ved at lytte og gentage (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Vælg: Vælg pakke\n• Interval: [-] [+] ventetid (3s-60s)\n• Start/Stop: Kontroller session\n• Tal: Lyt og gentag\n• Score: Nøjagtighed (0-100)\n• Prøv igen: Knap hvis stemme ej fundet';

  @override
  String get helpJsonDesc => 'For import i Tilstand 3, opret JSON:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Start Tur';

  @override
  String get tutorialMicTitle => 'Stemmeindput';

  @override
  String get tutorialMicDesc => 'Tryk på mikrofonen for stemmeindput.';

  @override
  String get tutorialTabDesc => 'Her kan du vælge den ønskede læringstilstand.';

  @override
  String get tutorialTapToContinue => 'Tryk for at fortsætte';

  @override
  String get tutorialTransTitle => 'Oversæt';

  @override
  String get tutorialTransDesc => 'Tryk her for at oversætte tekst.';

  @override
  String get tutorialSaveTitle => 'Gem';

  @override
  String get tutorialSaveDesc => 'Gem din oversættelse.';

  @override
  String get tutorialM2SelectTitle => 'Vælg & Filter';

  @override
  String get tutorialM2SelectDesc => 'Vælg materiale eller \'Gennemgå Alle\'.';

  @override
  String get tutorialM2ListTitle => 'Studieliste';

  @override
  String get tutorialM2ListDesc =>
      'Tjek kort og vend dem. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Vælg Materiale';

  @override
  String get tutorialM3SelectDesc => 'Vælg sæt til taleøvelse.';

  @override
  String get tutorialM3IntervalTitle => 'Interval';

  @override
  String get tutorialM3IntervalDesc => 'Juster ventetid mellem sætninger.';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3StartDesc => 'Tryk play for at starte.';

  @override
  String get startWarning => 'Advarsel';

  @override
  String get noVoiceDetected => 'Ingen stemme registreret';

  @override
  String get tooltipSearch => 'Søg';

  @override
  String get tooltipStudyReview => 'Studie+Gentagelse';

  @override
  String get tooltipSpeaking => 'Tale';

  @override
  String get tooltipDecrease => 'Formindsk';

  @override
  String get tooltipIncrease => 'Forøg';

  @override
  String get languageSettings => 'Sprogindstillinger';

  @override
  String get tutorialM2DropdownDesc => 'Vælg studiemateriale.';

  @override
  String get tutorialM2ImportDesc => 'Importer JSON-fil fra enhedsmappe.';

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
  String get tutorialContextTitle => 'Konteksthjælp';

  @override
  String get tutorialContextDesc =>
      'Tilføj kontekst (f.eks. Morgen) for at skelne lignende sætninger.';

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
  String get selectMaterialSet => '학습 자료집 선택';

  @override
  String get sectionWords => '단어';

  @override
  String get sectionSentences => '문장';

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
      'Jeg bytter mit sprog ud med det sprog, jeg lærer.';

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
  String get menuSelectMaterialSet => 'Vælg et studiemateriale';

  @override
  String get sectionWord => 'Ordsektion';

  @override
  String get sectionSentence => 'Sætningsafsnit';

  @override
  String get tabWord => 'ord';

  @override
  String get tabSentence => 'dømme';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get clearAll => '모두 지우기';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get skip => '건너뛰기';

  @override
  String get inputModeTitle => '입력';

  @override
  String get reviewModeTitle => '복습';

  @override
  String get practiceModeTitle => '발음 연습';

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
  String get basicWordRepository => 'Grundlæggende ordarkiv';

  @override
  String get basicSentenceRepository => 'Grundlæggende sætningsarkiv';

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

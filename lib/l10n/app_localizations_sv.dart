// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Repetition ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Material ($count)';
  }

  @override
  String get mode2Title => 'Repetition';

  @override
  String get search => 'Sök';

  @override
  String get translate => 'Översätt';

  @override
  String get listen => 'Lyssna';

  @override
  String get saveData => 'Spara';

  @override
  String get saved => 'Sparad';

  @override
  String get delete => 'Ta bort';

  @override
  String get materialInfo => 'Materialinfo';

  @override
  String get cancel => 'Avbryt';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Uppdatera';

  @override
  String studyRecords(int count) {
    return 'Poster ($count)';
  }

  @override
  String get targetLanguageFilter => 'Målspråk Filter:';

  @override
  String get noRecords => 'Inga poster för valt språk';

  @override
  String get saveTranslationsFromSearch =>
      'Vänligen spara översättningar från sökläge';

  @override
  String get flip => 'Vänd';

  @override
  String get hide => 'Dölj';

  @override
  String get deleteRecord => 'Ta bort post';

  @override
  String get confirmDelete => 'Är du säker på att du vill ta bort denna post?';

  @override
  String get recordDeleted => 'Post borttagen';

  @override
  String deleteFailed(String error) {
    return 'Borttagning misslyckades: $error';
  }

  @override
  String get importJsonFile => 'Importera JSON';

  @override
  String get importing => 'Importerar...';

  @override
  String get importComplete => 'Import Klar';

  @override
  String get importFailed => 'Import Misslyckades';

  @override
  String importFile(String fileName) {
    return 'Fil: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Totalt: $count';
  }

  @override
  String importAdded(int count) {
    return 'Tillagd: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Hoppade över: $count';
  }

  @override
  String get errors => 'Fel:';

  @override
  String get error => 'Fel';

  @override
  String importErrorMessage(String error) {
    return 'Kunde inte importera fil:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Välj Material';

  @override
  String get subject => 'Ämne:';

  @override
  String get source => 'Källa:';

  @override
  String get file => 'Fil:';

  @override
  String progress(int current, int total) {
    return 'Framsteg: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Vänligen importera JSON fil';

  @override
  String get selectMaterialPrompt => 'Vänligen välj studiematerial';

  @override
  String get studyComplete => 'Studerad';

  @override
  String get markAsStudied => 'Markera som Studerad';

  @override
  String get listening => 'Lyssnar...';

  @override
  String get recognized => 'Igenkänning klar';

  @override
  String recognitionFailed(String error) {
    return 'Taligenkänning misslyckades: $error';
  }

  @override
  String get checking => 'Kontrollerar...';

  @override
  String get translating => 'Översätter...';

  @override
  String get translationComplete => 'Översättning klar (spara krävs)';

  @override
  String get translationLoaded => 'Sparad översättning laddad';

  @override
  String translationFailed(String error) {
    return 'Översättning misslyckades: $error';
  }

  @override
  String get enterTextToTranslate => 'Skriv text att översätta';

  @override
  String get saving => 'Sparar...';

  @override
  String get noTranslationToSave => 'Ingen översättning att spara';

  @override
  String saveFailed(String error) {
    return 'Spara misslyckades: $error';
  }

  @override
  String get playing => 'Spelar...';

  @override
  String get noTextToPlay => 'Ingen text att spela';

  @override
  String playbackFailed(String error) {
    return 'Uppspelning misslyckades: $error';
  }

  @override
  String get sourceLanguage => 'Källspråk';

  @override
  String get targetLanguage => 'Målspråk';

  @override
  String get similarTextFound => 'Liknande text hittades';

  @override
  String get useExistingText => 'Använd Befintlig';

  @override
  String get createNew => 'Skapa Ny';

  @override
  String reviewCount(int count) {
    return 'Repeterad $count gånger';
  }

  @override
  String get tabSpeaking => 'Tala';

  @override
  String get speakingPractice => 'Talövning';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervall: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Ditt uttal';

  @override
  String get correctAnswer => 'Rätt Svar';

  @override
  String score(String score) {
    return 'Noggrannhet: $score%';
  }

  @override
  String get perfect => 'Perfekt!';

  @override
  String get good => 'Bra';

  @override
  String get tryAgain => 'Försök igen';

  @override
  String get startPractice => 'Starta Övning';

  @override
  String get stopPractice => 'Stoppa';

  @override
  String get helpTitle => 'Hjälp & Guide';

  @override
  String get helpTabModes => 'Lägen';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpMode1Desc =>
      'Röstigenkänning, översättning och lyssna på resultat.';

  @override
  String get helpMode1Details =>
      '• Röst: Tryck mikrofon för start/stopp\n• Text: Skriv direkt för översättning\n• Auto-Sök: Hittar liknande meningar\n• Översätt: Knapp för direktöversättning\n• Lyssna: Ikon för TTS\n• Spara: Lägger till i historik\n• Rensa: Återställ allt';

  @override
  String get helpMode2Desc =>
      'Repetera sparade meningar med dold översättning.';

  @override
  String get helpMode2Details =>
      '• Välj: Välj set eller \'Alla\'\n• Vänd: \'Visa/Dölj\' översättning\n• Lyssna: Spela TTS för mening\n• Markera: Kryssa (V) för klara\n• Ta bort: Långtryck för att ta bort\n• Filter: Visa alla eller per material';

  @override
  String get helpMode3Desc =>
      'Öva tala genom att lyssna och upprepa (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Välj: Välj paket\n• Intervall: [-] [+] väntetid (3s-60s)\n• Start/Stopp: Kontrollera session\n• Tala: Lyssna och upprepa\n• Poäng: Noggrannhet (0-100)\n• Försök: Knapp om röst ej hittas';

  @override
  String get helpJsonDesc => 'För import i Läge 3, skapa JSON:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Starta Tur';

  @override
  String get tutorialMicTitle => 'Röstinmatning';

  @override
  String get tutorialMicDesc => 'Tryck på mikrofonen för röstinmatning.';

  @override
  String get tutorialTabDesc => 'Här kan du välja önskat inlärningsläge.';

  @override
  String get tutorialTapToContinue => 'Tryck för att fortsätta';

  @override
  String get tutorialTransTitle => 'Översätt';

  @override
  String get tutorialTransDesc => 'Tryck här för att översätta text.';

  @override
  String get tutorialSaveTitle => 'Spara';

  @override
  String get tutorialSaveDesc => 'Spara din översättning.';

  @override
  String get tutorialM2SelectTitle => 'Välj & Filter';

  @override
  String get tutorialM2SelectDesc => 'Välj material eller \'Repetera Alla\'.';

  @override
  String get tutorialM2ListTitle => 'Studielista';

  @override
  String get tutorialM2ListDesc =>
      'Kolla kort och vänd dem. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Välj Material';

  @override
  String get tutorialM3SelectDesc => 'Välj set för talövning.';

  @override
  String get tutorialM3IntervalTitle => 'Intervall';

  @override
  String get tutorialM3IntervalDesc => 'Justera väntetid mellan meningar.';

  @override
  String get tutorialM3StartTitle => 'Starta';

  @override
  String get tutorialM3StartDesc => 'Tryck play för att börja.';

  @override
  String get startWarning => 'Varning';

  @override
  String get noVoiceDetected => 'Ingen röst upptäckt';

  @override
  String get tooltipSearch => 'Sök';

  @override
  String get tooltipStudyReview => 'Studie+Repetition';

  @override
  String get tooltipSpeaking => 'Tal';

  @override
  String get tooltipDecrease => 'Minska';

  @override
  String get tooltipIncrease => 'Öka';

  @override
  String get languageSettings => 'Språkinställningar';

  @override
  String get tutorialM2DropdownDesc => 'Välj studiematerial.';

  @override
  String get tutorialM2ImportDesc => 'Importera JSON-fil från enhetsmapp.';

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
  String get tutorialContextTitle => 'Kontexttagg';

  @override
  String get tutorialContextDesc =>
      'Lägg till kontext (t.ex. Morgon) för att skilja liknande meningar åt.';

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
      'Jag byter ut mitt språk mot det språk jag lär mig.';

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
  String get menuSelectMaterialSet => 'Välj ett studiematerial';

  @override
  String get sectionWord => 'Ordavsnitt';

  @override
  String get sectionSentence => 'Meningsavsnitt';

  @override
  String get tabWord => 'ord';

  @override
  String get tabSentence => 'döma';

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
  String get basicWordRepository => 'Grundläggande ordlista';

  @override
  String get basicSentenceRepository => 'Grundläggande meningslista';

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

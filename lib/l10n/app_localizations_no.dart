// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Gjennomgang ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materiell ($count)';
  }

  @override
  String get mode2Title => 'Gjennomgang';

  @override
  String get search => 'Søk';

  @override
  String get translate => 'Oversett';

  @override
  String get listen => 'Lytt';

  @override
  String get saveData => 'Lagre';

  @override
  String get saved => 'Lagret';

  @override
  String get delete => 'Slett';

  @override
  String get materialInfo => 'Materialinfo';

  @override
  String get cancel => 'Avbryt';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Oppdater';

  @override
  String studyRecords(int count) {
    return 'Oppføringer ($count)';
  }

  @override
  String get targetLanguageFilter => 'Målspråk Filter:';

  @override
  String get noRecords => 'Ingen oppføringer for valgt språk';

  @override
  String get saveTranslationsFromSearch => 'Lagre oversettelser fra søkemodus';

  @override
  String get flip => 'Snu';

  @override
  String get hide => 'Skjul';

  @override
  String get deleteRecord => 'Slett Oppføring';

  @override
  String get confirmDelete =>
      'Er du sikker på at du vil slette denne oppføringen?';

  @override
  String get recordDeleted => 'Oppføring slettet';

  @override
  String deleteFailed(String error) {
    return 'Sletting feilet: $error';
  }

  @override
  String get importJsonFile => 'Importer JSON';

  @override
  String get importing => 'Importerer...';

  @override
  String get importComplete => 'Import Ferdig';

  @override
  String get importFailed => 'Import Feilet';

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
    return 'Lagt til: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Hoppet over: $count';
  }

  @override
  String get errors => 'Feil:';

  @override
  String get error => 'Feil';

  @override
  String importErrorMessage(String error) {
    return 'Kunne ikke importere fil:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Velg Materiell';

  @override
  String get subject => 'Emne:';

  @override
  String get source => 'Kilde:';

  @override
  String get file => 'Fil:';

  @override
  String progress(int current, int total) {
    return 'Fremdrift: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Vennligst importer en JSON-fil';

  @override
  String get selectMaterialPrompt => 'Vennligst velg studiemateriell';

  @override
  String get studyComplete => 'Studert';

  @override
  String get markAsStudied => 'Marker som Studert';

  @override
  String get listening => 'Lytter...';

  @override
  String get recognized => 'Gjenkjenning ferdig';

  @override
  String recognitionFailed(String error) {
    return 'Talegjenkjenning feilet: $error';
  }

  @override
  String get checking => 'Sjekker...';

  @override
  String get translating => 'Oversetter...';

  @override
  String get translationComplete => 'Oversettelse ferdig (må lagres)';

  @override
  String get translationLoaded => 'Lagret oversettelse lastet';

  @override
  String translationFailed(String error) {
    return 'Oversettelse feilet: $error';
  }

  @override
  String get enterTextToTranslate => 'Skriv inn tekst for oversettelse';

  @override
  String get saving => 'Lagrer...';

  @override
  String get noTranslationToSave => 'Ingen oversettelse å lagre';

  @override
  String saveFailed(String error) {
    return 'Lagring feilet: $error';
  }

  @override
  String get playing => 'Spiller...';

  @override
  String get noTextToPlay => 'Ingen tekst å spille';

  @override
  String playbackFailed(String error) {
    return 'Avspilling feilet: $error';
  }

  @override
  String get sourceLanguage => 'Kildespråk';

  @override
  String get targetLanguage => 'Målspråk';

  @override
  String get similarTextFound => 'Lignende tekst funnet';

  @override
  String get useExistingText => 'Bruk Eksisterende';

  @override
  String get createNew => 'Opprett Ny';

  @override
  String reviewCount(int count) {
    return 'Gjennomgått $count ganger';
  }

  @override
  String get tabSpeaking => 'Snakke';

  @override
  String get speakingPractice => 'Taleøvelse';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervall: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Din uttale';

  @override
  String get correctAnswer => 'Riktig Svar';

  @override
  String score(String score) {
    return 'Nøyaktighet: $score%';
  }

  @override
  String get perfect => 'Perfekt!';

  @override
  String get good => 'Bra';

  @override
  String get tryAgain => 'Prøv igjen';

  @override
  String get startPractice => 'Start';

  @override
  String get stopPractice => 'Stopp';

  @override
  String get helpTitle => 'Hjelp & Guide';

  @override
  String get helpTabModes => 'Moduser';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpMode1Desc =>
      'Talegjenkjenning, oversettelse og lytt til resultat.';

  @override
  String get helpMode1Details =>
      '• Stemme: Trykk mikrofon for start/stopp\n• Tekst: Skriv direkte for å oversette\n• Auto-Søk: Finner lignende setninger\n• Oversett: Knapp for umiddelbar oversettelse\n• Lytt: Høyttalerikon for TTS\n• Lagre: Legger til i historie\n• Tøm: Nullstill alt';

  @override
  String get helpMode2Desc =>
      'Gjennomgå lagrede setninger med skjult oversettelse.';

  @override
  String get helpMode2Details =>
      '• Velg: Velg sett eller \'Alle\'\n• Snu: \'Vis/Skjul\' oversettelse\n• Lytt: Spill TTS for setning\n• Marker: Hake (V) for ferdige\n• Slett: Langt trykk for å slette\n• Filter: Vis alle eller etter materiell';

  @override
  String get helpMode3Desc =>
      'Øv på å snakke ved å lytte og gjenta (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Velg: Velg pakke\n• Intervall: [-] [+] ventetid (3s-60s)\n• Start/Stopp: Kontroller økt\n• Snakk: Lytt og gjenta\n• Poeng: Nøyaktighet (0-100)\n• Prøv igjen: Knapp hvis stemme ikke funnet';

  @override
  String get helpJsonDesc => 'For import i Modus 3, opprett JSON:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Start Tur';

  @override
  String get tutorialMicTitle => 'Stemmeinndata';

  @override
  String get tutorialMicDesc => 'Trykk på mikrofonen for stemmeinndata.';

  @override
  String get tutorialTabDesc => 'Her kan du velge ønsket læringsmodus.';

  @override
  String get tutorialTapToContinue => 'Trykk for å fortsette';

  @override
  String get tutorialTransTitle => 'Oversett';

  @override
  String get tutorialTransDesc => 'Trykk her for å oversette tekst.';

  @override
  String get tutorialSaveTitle => 'Lagre';

  @override
  String get tutorialSaveDesc => 'Lagre oversettelsen i studieoppføringer.';

  @override
  String get tutorialM2SelectTitle => 'Velg & Filter';

  @override
  String get tutorialM2SelectDesc => 'Velg materiell eller \'Gjennomgå Alle\'.';

  @override
  String get tutorialM2ListTitle => 'Studieliste';

  @override
  String get tutorialM2ListDesc =>
      'Sjekk kortene og snu dem. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Velg Materiell';

  @override
  String get tutorialM3SelectDesc => 'Velg sett for taleøvelse.';

  @override
  String get tutorialM3IntervalTitle => 'Intervall';

  @override
  String get tutorialM3IntervalDesc => 'Juster ventetid mellom setninger.';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3StartDesc => 'Trykk play for å starte.';

  @override
  String get startWarning => 'Advarsel';

  @override
  String get noVoiceDetected => 'Ingen stemme oppdaget';

  @override
  String get tooltipSearch => 'Søk';

  @override
  String get tooltipStudyReview => 'Studie+Repetisjon';

  @override
  String get tooltipSpeaking => 'Tale';

  @override
  String get tooltipDecrease => 'Reduser';

  @override
  String get tooltipIncrease => 'Øk';

  @override
  String get languageSettings => 'Språkinnstillinger';

  @override
  String get tutorialM2DropdownDesc => 'Velg studiemateriale.';

  @override
  String get tutorialM2ImportDesc => 'Importer JSON-fil fra enhetsmappe.';

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
  String get tutorialContextTitle => 'Kontekstmerke';

  @override
  String get tutorialContextDesc =>
      'Legg til kontekst (f.eks. Morgen) for å skille lignende setninger.';

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
      'Jeg bytter ut språket mitt med språket jeg lærer.';

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
  String get menuSelectMaterialSet => 'Velg et studiemateriell';

  @override
  String get sectionWord => 'Ordseksjon';

  @override
  String get sectionSentence => 'Setningsseksjon';

  @override
  String get tabWord => 'ord';

  @override
  String get tabSentence => 'dømme';

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
  String get basicWordRepository => 'Grunnleggende ordlager';

  @override
  String get basicSentenceRepository => 'Grunnleggende setningslager';

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

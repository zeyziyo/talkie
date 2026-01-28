// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Mapitio ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Nyenzo ($count)';
  }

  @override
  String get mode2Title => 'Mapitio';

  @override
  String get search => 'Tafuta';

  @override
  String get translate => 'Tafsiri';

  @override
  String get listen => 'Sikiliza';

  @override
  String get saveData => 'Hifadhi';

  @override
  String get saved => 'Imehifadhiwa';

  @override
  String get delete => 'Futa';

  @override
  String get materialInfo => 'Maelezo ya nyenzo';

  @override
  String get cancel => 'Ghairi';

  @override
  String get confirm => 'Sawa';

  @override
  String get refresh => 'Onyesha upya';

  @override
  String studyRecords(int count) {
    return 'Rekodi ($count)';
  }

  @override
  String get targetLanguageFilter => 'Kichujio cha Lugha:';

  @override
  String get noRecords => 'Hakuna rekodi kwa lugha iliyochaguliwa';

  @override
  String get saveTranslationsFromSearch =>
      'Hifadhi tafsiri kutoka kwa hali ya utafutaji';

  @override
  String get flip => 'Geuza';

  @override
  String get hide => 'Ficha';

  @override
  String get deleteRecord => 'Futa Rekodi';

  @override
  String get confirmDelete => 'Una uhakika unataka kufuta rekodi hii?';

  @override
  String get recordDeleted => 'Rekodi imefutwa';

  @override
  String deleteFailed(String error) {
    return 'Kufuta kumeshindikana: $error';
  }

  @override
  String get importJsonFile => 'Leta JSON';

  @override
  String get importing => 'inaleta...';

  @override
  String get importComplete => 'Kuleta Kukamilika';

  @override
  String get importFailed => 'Kuleta Kumeshindikana';

  @override
  String importFile(String fileName) {
    return 'Faili: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Jumla: $count';
  }

  @override
  String importAdded(int count) {
    return 'Imeongezwa: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Imerukwa: $count';
  }

  @override
  String get errors => 'Makosa:';

  @override
  String get error => 'Kosa';

  @override
  String importErrorMessage(String error) {
    return 'Imeshindwa kuleta faili:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Chagua Nyenzo';

  @override
  String get subject => 'Somo:';

  @override
  String get source => 'Chanzo:';

  @override
  String get file => 'Faili:';

  @override
  String progress(int current, int total) {
    return 'Maendeleo: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Tafadhali leta faili ya JSON';

  @override
  String get selectMaterialPrompt => 'Tafadhali chagua nyenzo za kusoma';

  @override
  String get studyComplete => 'Imesomwa';

  @override
  String get markAsStudied => 'Weka alama imesomwa';

  @override
  String get listening => 'Inasikiliza...';

  @override
  String get recognized => 'Utambuzi umekamilika';

  @override
  String recognitionFailed(String error) {
    return 'Utambuzi wa sauti umeshindikana: $error';
  }

  @override
  String get checking => 'Inaangalia...';

  @override
  String get translating => 'Inatafsiri...';

  @override
  String get translationComplete => 'Tafsiri imekamilika (inahitaji kuhifadhi)';

  @override
  String get translationLoaded => 'Tafsiri iliyohifadhiwa imepakiwa';

  @override
  String translationFailed(String error) {
    return 'Tafsiri imeshindikana: $error';
  }

  @override
  String get enterTextToTranslate => 'Weka maandishi ya kutafsiri';

  @override
  String get saving => 'Inahifadhi...';

  @override
  String get noTranslationToSave => 'Hakuna tafsiri ya kuhifadhi';

  @override
  String saveFailed(String error) {
    return 'Kuhifadhi kumeshindikana: $error';
  }

  @override
  String get playing => 'Inacheza...';

  @override
  String get noTextToPlay => 'Hakuna maandishi ya kucheza';

  @override
  String playbackFailed(String error) {
    return 'Kucheza kumeshindikana: $error';
  }

  @override
  String get sourceLanguage => 'Lugha Chanzo';

  @override
  String get targetLanguage => 'Lugha Lengwa';

  @override
  String get similarTextFound => 'Maandishi yanayofanana yamepatikana';

  @override
  String get useExistingText => 'Tumia Iliyopo';

  @override
  String get createNew => 'Unda Mpya';

  @override
  String reviewCount(int count) {
    return 'Imepitiwa mara $count';
  }

  @override
  String get tabSpeaking => 'Kuzungumza';

  @override
  String get speakingPractice => 'Mazoezi ya Kuzungumza';

  @override
  String intervalSeconds(int seconds) {
    return 'Muda: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Matamshi Yako';

  @override
  String get correctAnswer => 'Jibu Sahihi';

  @override
  String score(String score) {
    return 'Usahihi: $score%';
  }

  @override
  String get perfect => 'Nzuri sana!';

  @override
  String get good => 'Nzuri';

  @override
  String get tryAgain => 'Jaribu tena';

  @override
  String get startPractice => 'Anza Mazoezi';

  @override
  String get stopPractice => 'Simamisha';

  @override
  String get helpTitle => 'Msaada & Mwongozo';

  @override
  String get helpTabModes => 'Njia';

  @override
  String get helpTabJson => 'Muundo wa JSON';

  @override
  String get helpTabTour => 'Ziara';

  @override
  String get helpMode1Desc => 'Tambua sauti, tafsiri na sikiliza matokeo.';

  @override
  String get helpMode1Details =>
      '• Sauti: Gonga maikrofoni kuanza/kusimamisha\n• Maandishi: Andika moja kwa moja kwa kutafsiri\n• Utafutaji Kiotomatiki: Inagundua sentensi zinazofanana\n• Tafsiri: Kitufe cha tafsiri ya papo hapo\n• Sikiliza: Aikoni ya spika kwa TTS\n• Hifadhi: Inaongeza kwenye historia\n• Futa: Weka upya yote';

  @override
  String get helpMode2Desc =>
      'Pitia sentensi zilizohifadhiwa na tafsiri iliyofichwa.';

  @override
  String get helpMode2Details =>
      '• Chagua: Chagua seti au \'Pitia Zote\'\n• Geuza: \'Onyesha/Ficha\' tafsiri\n• Sikiliza: Cheza TTS kwa sentensi\n• Weka alama: Tiki (V) kwa zilizokamilika\n• Futa: Bonyeza kwa muda mrefu kufuta\n• Kichujio: Tazama zote au kwa nyenzo';

  @override
  String get helpMode3Desc =>
      'Fanya mazoezi ya kuzungumza kwa kusikiliza na kurudia (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Chagua: Chagua kifurushi\n• Muda: [-] [+] muda wa kusubiri (3s-60s)\n• Anza/Simama: Dhibiti kikao\n• Zungumza: Sikiliza na rudia\n• Alama: Usahihi (0-100)\n• Jaribu tena: Kitufe ikiwa sauti haigunduliwi';

  @override
  String get helpJsonDesc => 'Kwa kuleta katika Hali 3, unda JSON:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Anza Ziara';

  @override
  String get tutorialMicTitle => 'Ingizo la Sauti';

  @override
  String get tutorialMicDesc => 'Gonga maikrofoni kwa ingizo la sauti.';

  @override
  String get tutorialTabDesc =>
      'Unaweza kuchagua hali ya kujifunza unayotaka hapa.';

  @override
  String get tutorialTapToContinue => 'Gusa ili kuendelea';

  @override
  String get tutorialTransTitle => 'Tafsiri';

  @override
  String get tutorialTransDesc => 'Gonga hapa kutafsiri maandishi yako.';

  @override
  String get tutorialSaveTitle => 'Hifadhi';

  @override
  String get tutorialSaveDesc => 'Hifadhi tafsiri yako.';

  @override
  String get tutorialM2SelectTitle => 'Chagua & Kichujio';

  @override
  String get tutorialM2SelectDesc => 'Chagua nyenzo au \'Pitia Zote\'.';

  @override
  String get tutorialM2ListTitle => 'Orodha ya Kusoma';

  @override
  String get tutorialM2ListDesc =>
      'Angalia kadi zako na uzigeuze. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Chagua Nyenzo';

  @override
  String get tutorialM3SelectDesc => 'Chagua seti kwa mazoezi ya kuzungumza.';

  @override
  String get tutorialM3IntervalTitle => 'Muda';

  @override
  String get tutorialM3IntervalDesc => 'Rekebisha muda wa kusubiri.';

  @override
  String get tutorialM3StartTitle => 'Anza';

  @override
  String get tutorialM3StartDesc => 'Bofya cheza ili kuanza.';

  @override
  String get startWarning => 'Onyo';

  @override
  String get noVoiceDetected => 'Sauti haijagunduliwa';

  @override
  String get tooltipSearch => 'Tafuta';

  @override
  String get tooltipStudyReview => 'Kusoma+Kurudia';

  @override
  String get tooltipSpeaking => 'Kuzungumza';

  @override
  String get tooltipDecrease => 'Punguza';

  @override
  String get tooltipIncrease => 'Ongeza';

  @override
  String get languageSettings => 'Mipangilio ya lugha';

  @override
  String get tutorialM2DropdownDesc => 'Chagua nyenzo za kusoma.';

  @override
  String get tutorialM2ImportDesc =>
      'Leta faili ya JSON kutoka kwenye folda ya kifaa.';

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
  String get tutorialContextTitle => 'Lebo ya Muktadha';

  @override
  String get tutorialContextDesc =>
      'Ongeza muktadha (k.m. Asubuhi) ili kutofautisha sentensi zinazofanana.';

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
      'Ninabadilisha lugha yangu na lugha ninayojifunza.';

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
  String get menuSelectMaterialSet => 'Chagua nyenzo ya kujifunzia';

  @override
  String get sectionWord => 'Sehemu ya maneno';

  @override
  String get sectionSentence => 'Sehemu ya sentensi';

  @override
  String get tabWord => 'neno';

  @override
  String get tabSentence => 'sentensi';

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
  String get basicWordRepository => 'Hifadhi ya Maneno ya Msingi';

  @override
  String get basicSentenceRepository => 'Hifadhi ya Sentensi za Msingi';

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

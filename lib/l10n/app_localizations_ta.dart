// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'மதிப்பாய்வு ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'பொருள் ($count)';
  }

  @override
  String get mode2Title => 'மதிப்பாய்வு';

  @override
  String get search => 'தேடு';

  @override
  String get translate => 'மொழிபெயர்';

  @override
  String get listen => 'கேள்';

  @override
  String get saveData => 'சேமி';

  @override
  String get saved => 'சேமிக்கப்பட்டது';

  @override
  String get delete => 'நீக்கு';

  @override
  String get materialInfo => 'பொருள் தகவல்';

  @override
  String get cancel => 'ரத்துசெய்';

  @override
  String get confirm => 'சரி';

  @override
  String get refresh => 'புதுப்பி';

  @override
  String studyRecords(int count) {
    return 'பதிவுகள் ($count)';
  }

  @override
  String get targetLanguageFilter => 'இலக்கு மொழி வடிகட்டி:';

  @override
  String get noRecords => 'தேர்ந்தெடுக்கப்பட்ட மொழிக்கு பதிவுகள் இல்லை';

  @override
  String get saveTranslationsFromSearch =>
      'தேடல் பயன்முறையிலிருந்து மொழிபெயர்ப்புகளைச் சேமிக்கவும்';

  @override
  String get flip => 'திருப்பு';

  @override
  String get hide => 'மறை';

  @override
  String get deleteRecord => 'பதிவை நீக்கு';

  @override
  String get confirmDelete => 'நிச்சயமாக இந்தப் பதிவை நீக்க விரும்புகிறீர்களா?';

  @override
  String get recordDeleted => 'பதிவு வெற்றிகரமாக நீக்கப்பட்டது';

  @override
  String deleteFailed(String error) {
    return 'நீக்குதல் தோல்வி: $error';
  }

  @override
  String get importJsonFile => 'JSON இறக்குமதி';

  @override
  String get importing => 'இறக்குமதி செய்யப்படுகிறது...';

  @override
  String get importComplete => 'இறக்குமதி முடிந்தது';

  @override
  String get importFailed => 'இறக்குமதி தோல்வி';

  @override
  String importFile(String fileName) {
    return 'கோப்பு: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'மொத்தம்: $count';
  }

  @override
  String importAdded(int count) {
    return 'சேர்க்கப்பட்டது: $count';
  }

  @override
  String importSkipped(int count) {
    return 'தவிர்க்கப்பட்டது: $count';
  }

  @override
  String get errors => 'பிழைகள்:';

  @override
  String get error => 'பிழை';

  @override
  String importErrorMessage(String error) {
    return 'கோப்பை இறக்குமதி செய்ய முடியவில்லை:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'பொருளைத் தேர்ந்தெடு';

  @override
  String get subject => 'தலைப்பு:';

  @override
  String get source => 'மூலம்:';

  @override
  String get file => 'கோப்பு:';

  @override
  String progress(int current, int total) {
    return 'முன்னேற்றம்: $current / $total';
  }

  @override
  String get importJsonFilePrompt =>
      'தயவுசெய்து JSON கோப்பை இறக்குமதி செய்யவும்';

  @override
  String get selectMaterialPrompt =>
      'தயவுசெய்து படிப்புப் பொருளைத் தேர்ந்தெடுக்கவும்';

  @override
  String get studyComplete => 'படிக்கப்பட்டது';

  @override
  String get markAsStudied => 'படித்ததாகக் குறிக்கவும்';

  @override
  String get listening => 'கேட்கிறது...';

  @override
  String get recognized => 'அடையாளம் காணப்பட்டது';

  @override
  String recognitionFailed(String error) {
    return 'குரல் அறிதல் தோல்வி: $error';
  }

  @override
  String get checking => 'சரிபார்க்கிறது...';

  @override
  String get translating => 'மொழிபெயர்க்கிறது...';

  @override
  String get translationComplete =>
      'மொழிபெயர்ப்பு முடிந்தது (சேமிக்க வேண்டும்)';

  @override
  String get translationLoaded => 'சேமிக்கப்பட்ட மொழிபெயர்ப்பு ஏற்றப்பட்டது';

  @override
  String translationFailed(String error) {
    return 'மொழிபெயர்ப்பு தோல்வி: $error';
  }

  @override
  String get enterTextToTranslate => 'மொழிபெயர்க்க உரையை உள்ளிடவும்';

  @override
  String get saving => 'சேமிக்கிறது...';

  @override
  String get noTranslationToSave => 'சேமிக்க மொழிபெயர்ப்பு இல்லை';

  @override
  String saveFailed(String error) {
    return 'சேமிப்பு தோல்வி: $error';
  }

  @override
  String get playing => 'இயங்குகிறது...';

  @override
  String get noTextToPlay => 'இயக்க உரை இல்லை';

  @override
  String playbackFailed(String error) {
    return 'இயக்கம் தோல்வி: $error';
  }

  @override
  String get sourceLanguage => 'மூல மொழி';

  @override
  String get targetLanguage => 'இலக்கு மொழி';

  @override
  String get similarTextFound => 'ஒரே மாதிரியான உரை காணப்பட்டது';

  @override
  String get useExistingText => 'தற்போதுள்ளதைப் பயன்படுத்து';

  @override
  String get createNew => 'புதிதாக உருவாக்கு';

  @override
  String reviewCount(int count) {
    return '$count முறை மதிப்பாய்வு செய்யப்பட்டது';
  }

  @override
  String get tabSpeaking => 'பேசுதல்';

  @override
  String get speakingPractice => 'பேச்சுப் பயிற்சி';

  @override
  String intervalSeconds(int seconds) {
    return 'இடைவேளை: $secondsவிநாடி';
  }

  @override
  String get yourPronunciation => 'உங்கள் உச்சரிப்பு';

  @override
  String get correctAnswer => 'சரியான பதில்';

  @override
  String score(String score) {
    return 'துல்லியம்: $score%';
  }

  @override
  String get perfect => 'அருமை!';

  @override
  String get good => 'நன்று';

  @override
  String get tryAgain => 'மீண்டும் முயற்சி செய்';

  @override
  String get startPractice => 'பயிற்சியைத் தொடங்கு';

  @override
  String get stopPractice => 'நிறுத்து';

  @override
  String get helpTitle => 'உதவி மற்றும் வழிகாட்டி';

  @override
  String get helpTabModes => 'பயன்முறைகள்';

  @override
  String get helpTabJson => 'JSON வடிவம்';

  @override
  String get helpTabTour => 'சுற்றுலா';

  @override
  String get helpMode1Desc =>
      'குரலை அறிதல், மொழிபெயர்த்தல் மற்றும் முடிவைக் கேட்டல்.';

  @override
  String get helpMode1Details =>
      '• குரல்: தொடங்க/நிறுத்த மைக்கைத் தட்டவும்\n• உரை: மொழிபெயர்க்க நேரடியாக தட்டச்சு செய்யவும்\n• தானியங்கி தேடல்: ஒத்த வாக்கியங்களைக் கண்டறிகிறது\n• மொழிபெயர்: உடனடி மொழிபெயர்ப்பு பொத்தான்\n• கேள்: TTSக்கான ஸ்பீக்கர் ஐகான்\n• சேமி: வரலாற்றில் சேர்க்கிறது\n• அழி: அனைத்தையும் மீட்டமை';

  @override
  String get helpMode2Desc =>
      'மறைக்கப்பட்ட மொழிபெயர்ப்புடன் சேமிக்கப்பட்ட வாக்கியங்களை மதிப்பாய்வு செய்யவும்.';

  @override
  String get helpMode2Details =>
      '• தேர்ந்தெடு: தொகுப்பு அல்லது \'அனைத்தையும் மதிப்பாய்வு செய்\'\n• திருப்பு: மொழிபெயர்ப்பை \'காட்டு/மறை\'\n• கேள்: வாக்கியத்திற்கு TTS இயக்கவும்\n• குறி: முடிந்ததற்கு டிக் (V)\n• நீக்கு: நீக்க கார்டை நீண்ட நேரம் அழுத்தவும்\n• வடிகட்டி: அனைத்தையும் அல்லது பொருள் வாரியாகப் பார்க்கவும்';

  @override
  String get helpMode3Desc =>
      'கேட்டு மற்றும் திரும்பச் சொல்லி பேச்சுப் பயிற்சி செய்தல் (Shadowing).';

  @override
  String get helpMode3Details =>
      '• தேர்ந்தெடு: தொகுப்பைத் தேர்ந்தெடு\n• இடைவேளை: [-] [+] காத்திருப்பு நேரம் (3வி-60வி)\n• தொடங்கு/நிறுத்து: அமர்வைக் கட்டுப்படுத்தவும்\n• பேசு: ஆடியோவைக் கேட்டு திரும்பச் சொல்லவும்\n• மதிப்பெண்: துல்லியம் (0-100)\n• மீண்டும் முயற்சி: குரல் கண்டறியப்படவில்லை என்றால் பொத்தான்';

  @override
  String get helpJsonDesc =>
      'பயன்முறை 3 இல் இறக்குமதி செய்ய, JSON உருவாக்கவும்:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'சுற்றுலாவைத் தொடங்கு';

  @override
  String get tutorialMicTitle => 'குரல் உள்ளீடு';

  @override
  String get tutorialMicDesc => 'குரல் உள்ளீட்டிற்கு மைக் பொத்தானைத் தட்டவும்.';

  @override
  String get tutorialTabDesc =>
      'நீங்கள் இங்கே உங்கள் விரும்பிய கற்றல் முறையைத் தேர்ந்தெடுக்கலாம்.';

  @override
  String get tutorialTapToContinue => 'தொடர தட்டவும்';

  @override
  String get tutorialTransTitle => 'மொழிபெயர்';

  @override
  String get tutorialTransDesc => 'உங்கள் உரையை மொழிபெயர்க்க இங்கே தட்டவும்.';

  @override
  String get tutorialSaveTitle => 'சேமி';

  @override
  String get tutorialSaveDesc => 'உங்கள் மொழிபெயர்ப்பைச் சேமிக்கவும்.';

  @override
  String get tutorialM2SelectTitle => 'தேர்ந்தெடு & வடிகட்டி';

  @override
  String get tutorialM2SelectDesc =>
      'பொருட்களைத் தேர்ந்தெடுக்கவும் அல்லது \'அனைத்தையும் மதிப்பாய்வு செய்\' என்பதற்கு மாறவும்.';

  @override
  String get tutorialM2ListTitle => 'படிப்பு பட்டியல்';

  @override
  String get tutorialM2ListDesc =>
      'உங்கள் கார்டுகளைச் சரிபார்த்து அவற்றைத் திருப்பவும். (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'பொருளைத் தேர்ந்தெடு';

  @override
  String get tutorialM3SelectDesc =>
      'பேச்சுப் பயிற்சிக்கான தொகுப்பைத் தேர்ந்தெடுக்கவும்.';

  @override
  String get tutorialM3IntervalTitle => 'இடைவேளை';

  @override
  String get tutorialM3IntervalDesc =>
      'வாக்கியங்களுக்கு இடையிலான காத்திருப்பு நேரத்தை சரிசெய்யவும்.';

  @override
  String get tutorialM3StartTitle => 'தொடங்கு';

  @override
  String get tutorialM3StartDesc => 'தொடங்க ப்ளே தட்டவும்.';

  @override
  String get startWarning => 'எச்சரிக்கை';

  @override
  String get noVoiceDetected => 'குரல் கண்டறியப்படவில்லை';

  @override
  String get tooltipSearch => 'தேடு';

  @override
  String get tooltipStudyReview => 'படிப்பு+மதிப்பாய்வு';

  @override
  String get tooltipSpeaking => 'பேசுதல்';

  @override
  String get tooltipDecrease => 'குறைக்க';

  @override
  String get tooltipIncrease => 'அதிகரிக்க';

  @override
  String get languageSettings => 'மொழி அமைப்புகள்';

  @override
  String get tutorialM2DropdownDesc => 'கற்றல் பொருட்களைத் தேர்ந்தெடுக்கவும்.';

  @override
  String get tutorialM2ImportDesc =>
      'சாதன கோப்புறையிலிருந்து JSON கோப்பை இறக்குமதி செய்யவும்.';

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
  String get tutorialContextTitle => 'சூழல் குறிச்சொல்';

  @override
  String get tutorialContextDesc =>
      'ஒரே மாதிரியான வாக்கியங்களை வேறுபடுத்த சூழலை (எ.கா. காலை)ச் சேர்க்கவும்.';

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
      'நான் கற்றுக்கொண்டிருக்கும் மொழியுடன் என் மொழியை மாற்றிக் கொள்கிறேன்.';

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
  String get menuSelectMaterialSet => 'ஒரு ஆய்வுப் பொருளைத் தேர்ந்தெடுக்கவும்';

  @override
  String get sectionWord => 'சொல் பிரிவு';

  @override
  String get sectionSentence => 'வாக்கியப் பிரிவு';

  @override
  String get tabWord => 'சொல்';

  @override
  String get tabSentence => 'தண்டனை';

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
  String get basicWordRepository => 'அடிப்படை சொல் களஞ்சியம்';

  @override
  String get basicSentenceRepository => 'அடிப்படை வாக்கிய களஞ்சியம்';

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

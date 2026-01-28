// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'સમીક્ષા ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'સામગ્રી ($count)';
  }

  @override
  String get mode2Title => 'સમીક્ષા';

  @override
  String get search => 'શોધો';

  @override
  String get translate => 'અનુવાદ';

  @override
  String get listen => 'સાંભળો';

  @override
  String get saveData => 'સાચવો';

  @override
  String get saved => 'સાચવ્યું';

  @override
  String get delete => 'કાઢી નાખો';

  @override
  String get materialInfo => 'સામગ્રી માહિતી';

  @override
  String get cancel => 'રદ કરો';

  @override
  String get confirm => 'બરાબર';

  @override
  String get refresh => 'રીફ્રેશ';

  @override
  String studyRecords(int count) {
    return 'રેકોર્ડ્સ ($count)';
  }

  @override
  String get targetLanguageFilter => 'લક્ષ્ય ભાષા ફિલ્ટર:';

  @override
  String get noRecords => 'પસંદ કરેલી ભાષા માટે કોઈ રેકોર્ડ નથી';

  @override
  String get saveTranslationsFromSearch => 'શોધ મોડમાંથી અનુવાદો સાચવો';

  @override
  String get flip => 'ફેરવો';

  @override
  String get hide => 'છુપાવો';

  @override
  String get deleteRecord => 'રેકોર્ડ કાઢી નાખો';

  @override
  String get confirmDelete => 'શું તમે ખરેખર આ રેકોર્ડ કાઢી નાખવા માંગો છો?';

  @override
  String get recordDeleted => 'રેકોર્ડ સફળતાપૂર્વક કાઢી નાખ્યો';

  @override
  String deleteFailed(String error) {
    return 'કાઢી નાખવામાં નિષ્ફળ: $error';
  }

  @override
  String get importJsonFile => 'JSON આયાત કરો';

  @override
  String get importing => 'આયાત કરી રહ્યું છે...';

  @override
  String get importComplete => 'આયાત પૂર્ણ';

  @override
  String get importFailed => 'આયાત નિષ્ફળ';

  @override
  String importFile(String fileName) {
    return 'ફાઇલ: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'કુલ: $count';
  }

  @override
  String importAdded(int count) {
    return 'ઉમેર્યું: $count';
  }

  @override
  String importSkipped(int count) {
    return 'છોડ્યું: $count';
  }

  @override
  String get errors => 'ભૂલો:';

  @override
  String get error => 'ભૂલ';

  @override
  String importErrorMessage(String error) {
    return 'ફાઇલ આયાત કરવામાં નિષ્ફળ:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'સામગ્રી પસંદ કરો';

  @override
  String get subject => 'વિષય:';

  @override
  String get source => 'સ્રોત:';

  @override
  String get file => 'ફાઇલ:';

  @override
  String progress(int current, int total) {
    return 'પ્રગતિ: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'કૃપા કરીને JSON ફાઇલ આયાત કરો';

  @override
  String get selectMaterialPrompt => 'કૃપા કરીને અભ્યાસ સામગ્રી પસંદ કરો';

  @override
  String get studyComplete => 'અભ્યાસ પૂર્ણ';

  @override
  String get markAsStudied => 'અભ્યાસ કરેલ તરીકે ચિહ્નિત કરો';

  @override
  String get listening => 'સાંભળી રહ્યું છે...';

  @override
  String get recognized => 'ઓળખ પૂર્ણ';

  @override
  String recognitionFailed(String error) {
    return 'અવાજ ઓળખ નિષ્ફળ: $error';
  }

  @override
  String get checking => 'ચકાસી રહ્યું છે...';

  @override
  String get translating => 'અનુવાદ કરી રહ્યું છે...';

  @override
  String get translationComplete => 'અનુવાદ પૂર્ણ (સાચવવું જરૂરી)';

  @override
  String get translationLoaded => 'સાચવેલ અનુવાદ લોડ થયો';

  @override
  String translationFailed(String error) {
    return 'અનુવાદ નિષ્ફળ: $error';
  }

  @override
  String get enterTextToTranslate => 'અનુવાદ માટે લખાણ દાખલ કરો';

  @override
  String get saving => 'સાચવી રહ્યું છે...';

  @override
  String get noTranslationToSave => 'સાચવવા માટે કોઈ અનુવાદ નથી';

  @override
  String saveFailed(String error) {
    return 'સાચવવામાં નિષ્ફળ: $error';
  }

  @override
  String get playing => 'વગાડી રહ્યું છે...';

  @override
  String get noTextToPlay => 'વગાડવા માટે કોઈ લખાણ નથી';

  @override
  String playbackFailed(String error) {
    return 'પ્લેબેક નિષ્ફળ: $error';
  }

  @override
  String get sourceLanguage => 'સ્રોત ભાષા';

  @override
  String get targetLanguage => 'લક્ષ્ય ભાષા';

  @override
  String get similarTextFound => 'સમાન લખાણ મળ્યું';

  @override
  String get useExistingText => 'વર્તમાન વાપરો';

  @override
  String get createNew => 'નવું બનાવો';

  @override
  String reviewCount(int count) {
    return '$count વખત સમીક્ષા કરી';
  }

  @override
  String get tabSpeaking => 'બોલવું';

  @override
  String get speakingPractice => 'બોલવાની પ્રેક્ટિસ';

  @override
  String intervalSeconds(int seconds) {
    return 'અંતરાલ: $secondsસેકન્ડ';
  }

  @override
  String get yourPronunciation => 'તમારું ઉચ્ચારણ';

  @override
  String get correctAnswer => 'સાચો જવાબ';

  @override
  String score(String score) {
    return 'ચોકસાઈ: $score%';
  }

  @override
  String get perfect => 'ઉત્તમ!';

  @override
  String get good => 'સારું';

  @override
  String get tryAgain => 'ફરી પ્રયાસ કરો';

  @override
  String get startPractice => 'પ્રેક્ટિસ શરૂ કરો';

  @override
  String get stopPractice => 'થોભો';

  @override
  String get helpTitle => 'મદદ અને માર્ગદર્શિકા';

  @override
  String get helpTabModes => 'મોડ્સ';

  @override
  String get helpTabJson => 'JSON ફોર્મેટ';

  @override
  String get helpTabTour => 'ટૂર';

  @override
  String get helpMode1Desc => 'અવાજ ઓળખો, અનુવાદ કરો અને પરિણામ સાંભળો.';

  @override
  String get helpMode1Details =>
      '• અવાજ: શરૂ/બંધ કરવા માટે માઇક ટેપ કરો\n• લખાણ: અનુવાદ માટે સીધું ટાઇપ કરો\n• ઓટો-સર્ચ: સમાન વાક્યો શોધે છે\n• અનુવાદ: ત્વરિત અનુવાદ માટે બટન\n• સાંભળો: TTS માટે સ્પીકર ચિહ્ન\n• સાચવો: ઇતિહાસમાં ઉમેરે છે\n• સાફ કરો: બધું રીસેટ કરો';

  @override
  String get helpMode2Desc =>
      'છુપાયેલા અનુવાદ સાથે સાચવેલા વાક્યોની સમીક્ષા કરો.';

  @override
  String get helpMode2Details =>
      '• પસંદ કરો: સેટ અથવા \'બધું સમીક્ષા કરો\' પસંદ કરો\n• ફેરવો: અનુવાદ \'બતાવો/છુપાવો\'\n• સાંભળો: વાક્ય માટે TTS વગાડો\n• ચિહ્નિત કરો: પૂર્ણ માટે ટિક (V)\n• કાઢી નાખો: કાઢી નાખવા માટે કાર્ડ દબાવી રાખો\n• ફિલ્ટર: બધું અથવા સામગ્રી દ્વારા જુઓ';

  @override
  String get helpMode3Desc =>
      'સાંભળીને અને પુનરાવર્તન કરીને બોલવાની પ્રેક્ટિસ કરો (Shadowing).';

  @override
  String get helpMode3Details =>
      '• પસંદ કરો: પેકેજ પસંદ કરો\n• અંતરાલ: [-] [+] પ્રતીક્ષા સમય (3સે-60સે)\n• શરૂ/બંધ: સત્ર નિયંત્રિત કરો\n• બોલો: ઓડિયો સાંભળો અને પુનરાવર્તન કરો\n• સ્કોર: ચોકસાઈ (0-100)\n• ફરી પ્રયાસ: જો અવાજ ન મળે તો બટન';

  @override
  String get helpJsonDesc => 'મોડ 3 માં આયાત કરવા માટે, JSON બનાવો:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'ટૂર શરૂ કરો';

  @override
  String get tutorialMicTitle => 'વોઇસ ઇનપુટ';

  @override
  String get tutorialMicDesc => 'વોઇસ ઇનપુટ માટે માઇક બટન ટેપ કરો.';

  @override
  String get tutorialTabDesc =>
      'તમે અહીં તમારી ઇચ્છિત શીખવાની પદ્ધતિ પસંદ કરી શકો છો.';

  @override
  String get tutorialTapToContinue => 'ચાલુ રાખવા માટે ટેપ કરો';

  @override
  String get tutorialTransTitle => 'અનુવાદ';

  @override
  String get tutorialTransDesc => 'તમારું લખાણ અનુવાદ કરવા અહીં ટેપ કરો.';

  @override
  String get tutorialSaveTitle => 'સાચવો';

  @override
  String get tutorialSaveDesc => 'તમારો અનુવાદ સાચવો.';

  @override
  String get tutorialM2SelectTitle => 'પસંદ કરો અને ફિલ્ટર';

  @override
  String get tutorialM2SelectDesc =>
      'સામગ્રી પસંદ કરો અથવા \'બધું સમીક્ષા કરો\' પર જાઓ.';

  @override
  String get tutorialM2ListTitle => 'અભ્યાસ યાદી';

  @override
  String get tutorialM2ListDesc =>
      'તમારા કાર્ડ્સ તપાસો અને તેમને ફેરવો. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'સામગ્રી પસંદ કરો';

  @override
  String get tutorialM3SelectDesc => 'બોલવાની પ્રેક્ટિસ માટે સેટ પસંદ કરો.';

  @override
  String get tutorialM3IntervalTitle => 'અંતરાલ';

  @override
  String get tutorialM3IntervalDesc =>
      'વાક્યો વચ્ચેનો પ્રતીક્ષા સમય સમાયોજિત કરો.';

  @override
  String get tutorialM3StartTitle => 'શરૂ કરો';

  @override
  String get tutorialM3StartDesc => 'શરૂ કરવા માટે પ્લે ટેપ કરો.';

  @override
  String get startWarning => 'ચેતવણી';

  @override
  String get noVoiceDetected => 'કોઈ અવાજ મળ્યો નથી';

  @override
  String get tooltipSearch => 'શોધો';

  @override
  String get tooltipStudyReview => 'અભ્યાસ+સમીક્ષા';

  @override
  String get tooltipSpeaking => 'બોલવું';

  @override
  String get tooltipDecrease => 'ઘટાડો';

  @override
  String get tooltipIncrease => 'વધારો';

  @override
  String get languageSettings => 'ભાષા સેટિંગ્સ';

  @override
  String get tutorialM2DropdownDesc => 'અભ્યાસ સામગ્રી પસંદ કરો.';

  @override
  String get tutorialM2ImportDesc => 'ઉપકરણ ફોલ્ડરમાંથી JSON ફાઇલ આયાત કરો.';

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
  String get tutorialContextTitle => 'સંદર્ભ ટેગ';

  @override
  String get tutorialContextDesc =>
      'સમાન વાક્યોને અલગ કરવા માટે સંદર્ભ (દા.ત. સવાર) ઉમેરો.';

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
      'હું મારી ભાષાને જે ભાષા શીખી રહ્યો છું તેની સાથે બદલી નાખું છું.';

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
  String get menuSelectMaterialSet => 'અભ્યાસ સામગ્રી પસંદ કરો';

  @override
  String get sectionWord => 'શબ્દ વિભાગ';

  @override
  String get sectionSentence => 'વાક્ય વિભાગ';

  @override
  String get tabWord => 'શબ્દ';

  @override
  String get tabSentence => 'વાક્ય';

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
  String get basicWordRepository => 'મૂળભૂત શબ્દ ભંડાર';

  @override
  String get basicSentenceRepository => 'મૂળભૂત વાક્ય ભંડાર';

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

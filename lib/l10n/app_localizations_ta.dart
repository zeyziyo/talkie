// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

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
      'ஒரு வாக்கியத்தைக் கேட்டு, அதைப் பின்பற்றிச் சொல்லி (Shadowing) உச்சரிப்பைப் பயிற்சி செய்யுங்கள்.';

  @override
  String get helpMode3Details =>
      '• தேர்ந்தெடு: தொகுப்பைத் தேர்ந்தெடு\n• இடைவேளை: [-] [+] காத்திருப்பு நேரம் (3வி-60வி)\n• தொடங்கு/நிறுத்து: அமர்வைக் கட்டுப்படுத்தவும்\n• பேசு: ஆடியோவைக் கேட்டு திரும்பச் சொல்லவும்\n• மதிப்பெண்: துல்லியம் (0-100)\n• மீண்டும் முயற்சி: குரல் கண்டறியப்படவில்லை என்றால் பொத்தான்';

  @override
  String get helpModeChatDesc =>
      'AI உதவியாளருடன் உரையாடி நிஜ வாழ்க்கை உரையாடலைப் பயிற்சி செய்யுங்கள்.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc =>
      'பயன்முறை 3 இல் இறக்குமதி செய்ய, JSON உருவாக்கவும்:';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get partnerMode => 'Partner Mode';

  @override
  String get manual => 'Manual';

  @override
  String get speaker => 'Speaker';

  @override
  String get switchToAi => 'Switch to AI';

  @override
  String get switchToPartner => 'Switch to Partner';

  @override
  String get currentLocation => 'Current Location';

  @override
  String get location => 'இடம்';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Me';

  @override
  String get currentMaterialLabel => 'Current Selected Material:';

  @override
  String get basicMaterialRepository => 'Basic Repository';

  @override
  String get word => 'Word';

  @override
  String get sentence => 'Sentence';

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
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'சுற்றுலாவைத் தொடங்கு';

  @override
  String get menuTutorial => 'Tutorial';

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
  String get tutorialM3SelectDesc =>
      'பேச்சுப் பயிற்சிக்கான தொகுப்பைத் தேர்ந்தெடுக்கவும்.';

  @override
  String get tutorialM2ListTitle => 'படிப்பு பட்டியல்';

  @override
  String get tutorialM2ListDesc =>
      'உங்கள் கார்டுகளைச் சரிபார்த்து அவற்றைத் திருப்பவும். (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'பொருளைத் தேர்ந்தெடு';

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
  String get usageLimitTitle => 'அளவை எட்டியது';

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
  String get selectMaterialSet => 'பயிற்சி பொருள் தொகுப்பைத் தேர்ந்தெடுக்கவும்';

  @override
  String get sectionWords => 'வார்த்தைகள்';

  @override
  String get sectionSentences => 'வாக்கியங்கள்';

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
  String get errorProfanity =>
      'ஆபாசமான வார்த்தைகள் இருப்பதால் மொழிபெயர்க்க முடியவில்லை.';

  @override
  String get errorHateSpeech =>
      'வெறுக்கத்தக்க பேச்சு இருப்பதால் மொழிபெயர்க்க முடியவில்லை.';

  @override
  String get errorSexualContent =>
      'பாலியல் உள்ளடக்கம் இருப்பதால் மொழிபெயர்க்க முடியவில்லை.';

  @override
  String get errorOtherSafety =>
      'AI பாதுகாப்பு கொள்கையின்படி மொழிபெயர்ப்பு மறுக்கப்பட்டது.';

  @override
  String get clearAll => 'எல்லாவற்றையும் அழி';

  @override
  String get disambiguationTitle => 'அர்த்தத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get disambiguationPrompt =>
      'எந்த அர்த்தத்தில் மொழிபெயர்க்க விரும்புகிறீர்கள்?';

  @override
  String get skip => 'தவிர்';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'பயிற்சி';

  @override
  String get chatHistoryTitle => 'Conversation History';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => 'New Chat';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return 'From Conversation ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => 'Untitled Conversation';

  @override
  String get chatAiChat => 'உரையாடல்';

  @override
  String get tutorialAiChatTitle => 'AI உரையாடல்';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Current Material Set: $name';
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

  @override
  String get metadataDialogTitle => 'Details';

  @override
  String get tagFormal => 'மரியாதை';

  @override
  String get selectPOS => 'Select POS';

  @override
  String get selectSentenceType => 'Select Sentence Type';

  @override
  String get metadataRootWord => 'Root Word';

  @override
  String get posNoun => 'Noun';

  @override
  String get posVerb => 'Verb';

  @override
  String get posAdjective => 'Adjective';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posPronoun => 'Pronoun';

  @override
  String get posPreposition => 'Preposition';

  @override
  String get posConjunction => 'Conjunction';

  @override
  String get posInterjection => 'Interjection';

  @override
  String get typeStatement => 'Statement';

  @override
  String get typeQuestion => 'Question';

  @override
  String get typeExclamation => 'Exclamation';

  @override
  String get typeImperative => 'Imperative';

  @override
  String get labelNote => 'Note';

  @override
  String get labelShowMemorized => 'Finished';

  @override
  String get titleTagSelection => 'தலைப்பு குறிச்சொற்கள் (ஆவணங்கள்)';

  @override
  String get generalTags => 'பொதுவான குறிச்சொற்கள்';

  @override
  String get tagSelection => 'Select Tags';

  @override
  String get metadataFormType => 'Form Type';

  @override
  String get formInfinitive => 'Infinitive/Present';

  @override
  String get formPast => 'Past';

  @override
  String get formPastParticiple => 'Past Participle';

  @override
  String get formPresentParticiple => 'Present Participle';

  @override
  String get formPresent => 'Present';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get formSingular => 'ஒருமை';

  @override
  String get caseSubject => 'Subject';

  @override
  String get caseObject => 'Object';

  @override
  String get casePossessive => 'Possessive';

  @override
  String get casePossessivePronoun => 'Possessive Pronoun';

  @override
  String get caseReflexive => 'Reflexive';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';

  @override
  String get searchConditions => 'Search Conditions';

  @override
  String recentNItems(int count) {
    return 'Recent $count items';
  }

  @override
  String get startsWith => 'Starts with';

  @override
  String get reset => 'Reset';

  @override
  String get participantRename => 'Rename Participant';

  @override
  String get labelName => 'Name';

  @override
  String get gender => 'Gender';

  @override
  String get language => 'Language';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get neutral => 'நடுநிலை';

  @override
  String get chatAllConversations => 'எல்லா உரையாடல்களும்';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'இந்த உரையாடலை நீக்கவா?\nநீக்கப்பட்ட உரையாடலை மீட்டெடுக்க முடியாது.';

  @override
  String get notSelected => '- எதுவும் தேர்ந்தெடுக்கப்படவில்லை -';

  @override
  String get myWordbook => 'என் சொல் புத்தகம்';

  @override
  String get mySentenceCollection => 'என் வாக்கியத் தொகுப்பு';

  @override
  String get newSubjectName => '새 단어장/문장집 제목';

  @override
  String get enterNewSubjectName => '새 제목 입력';

  @override
  String get addNewSubject => '새 제목 추가';

  @override
  String get selectExistingSubject => '기존 제목 선택';

  @override
  String get addTagHint => '태그 추가...';
}

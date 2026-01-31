// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get helpTitle => 'సహాయం & గైడ్';

  @override
  String get helpTabModes => 'మోడ్‌లు';

  @override
  String get helpTabJson => 'JSON ఫార్మాట్';

  @override
  String get helpTabTour => 'టూర్';

  @override
  String get helpMode1Desc =>
      'వాయిస్‌ని గుర్తించండి, అనువదించండి మరియు ఫలితాన్ని వినండి.';

  @override
  String get helpMode1Details =>
      '• వాయిస్: ప్రారంభించడానికి/ఆపడానికి మైక్‌ని నొక్కండి\n• వచనం: అనువదించడానికి నేరుగా టైప్ చేయండి\n• ఆటో-సెర్చ్: ఇలాంటి వాక్యాలను గుర్తిస్తుంది\n• అనువాదం: తక్షణ అనువాద బటన్\n• వినండి: TTS కోసం స్పీకర్ ఐకాన్\n• సేవ్: చరిత్రకు జోడిస్తుంది\n• క్లియర్: అన్నీ రీసెట్ చేయండి';

  @override
  String get helpMode2Desc =>
      'దాచిన అనువాదంతో సేవ్ చేసిన వాక్యాలను సమీక్షించండి.';

  @override
  String get helpMode2Details =>
      '• ఎంచుకోండి: సెట్ లేదా \'అన్నీ సమీక్షించు\' ఎంచుకోండి\n• తిప్పు: అనువాదం \'చూపు/దాచు\'\n• వినండి: వాక్యానికి TTS ప్లే చేయండి\n• గుర్తించు: పూర్తయిన వాటికి టిక్ (V)\n• తొలగించు: తొలగించడానికి కార్డును గట్టిగా నొక్కండి\n• ఫిల్టర్: అన్నీ లేదా మెటీరియల్ వారీగా చూడండి';

  @override
  String get helpMode3Desc =>
      'విని మరియు పునరావృతం చేస్తూ మాట్లాడటం సాధన చేయండి (Shadowing).';

  @override
  String get helpMode3Details =>
      '• ఎంచుకోండి: ప్యాకేజీని ఎంచుకోండి\n• విరామం: [-] [+] వేచి ఉండే సమయం (3సె-60సె)\n• ప్రారంభించు/ఆపు: సెషన్‌ను నియంత్రించండి\n• మాట్లాడు: ఆడియో వినండి మరియు పునరావృతం చేయండి\n• స్కోర్: ఖచ్చితత్వం (0-100)\n• మళ్ళీ ప్రయత్నించు: వాయిస్ గుర్తించబడకపోతే బటన్';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'మోడ్ 3లో దిగుమతి చేయడానికి, JSONని సృష్టించండి:';

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
  String get location => 'స్థానం';

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
    return 'సమీక్ష ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'మెటీరియల్ ($count)';
  }

  @override
  String get mode2Title => 'సమీక్ష';

  @override
  String get search => 'శోధించు';

  @override
  String get translate => 'అనువాదం';

  @override
  String get listen => 'వినండి';

  @override
  String get saveData => 'సేవ్ చేయి';

  @override
  String get saved => 'సేవ్ చేయబడింది';

  @override
  String get delete => 'తొలగించు';

  @override
  String get materialInfo => 'విషయ సమాచారం';

  @override
  String get cancel => 'రద్దు చేయి';

  @override
  String get confirm => 'సరే';

  @override
  String get refresh => 'రీఫ్రెష్';

  @override
  String studyRecords(int count) {
    return 'రికార్డులు ($count)';
  }

  @override
  String get targetLanguageFilter => 'లక్ష్య భాష ఫిల్టర్:';

  @override
  String get noRecords => 'ఎంచుకున్న భాషకు రికార్డులు లేవు';

  @override
  String get saveTranslationsFromSearch =>
      'శోధన మోడ్ నుండి అనువాదాలను సేవ్ చేయండి';

  @override
  String get flip => 'తిప్పు';

  @override
  String get hide => 'దాచు';

  @override
  String get deleteRecord => 'రికార్డును తొలగించు';

  @override
  String get confirmDelete =>
      'మీరు ఖచ్చితంగా ఈ రికార్డును తొలగించాలనుకుంటున్నారా?';

  @override
  String get recordDeleted => 'రికార్డు విజయవంతంగా తొలగించబడింది';

  @override
  String deleteFailed(String error) {
    return 'తొలగింపు విఫలమైంది: $error';
  }

  @override
  String get importJsonFile => 'JSON దిగుమతి';

  @override
  String get importing => 'దిగుమతి అవుతోంది...';

  @override
  String get importComplete => 'దిగుమతి పూర్తయింది';

  @override
  String get importFailed => 'దిగుమతి విఫలమైంది';

  @override
  String importFile(String fileName) {
    return 'ఫైల్: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'మొత్తం: $count';
  }

  @override
  String importAdded(int count) {
    return 'జోడించబడింది: $count';
  }

  @override
  String importSkipped(int count) {
    return 'దాటవేయబడింది: $count';
  }

  @override
  String get errors => 'లోపాలు:';

  @override
  String get error => 'లోపం';

  @override
  String importErrorMessage(String error) {
    return 'ఫైల్‌ని దిగుమతి చేయడంలో విఫలమైంది:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'మెటీరియల్ ఎంచుకోండి';

  @override
  String get subject => 'విషయం:';

  @override
  String get source => 'మూలం:';

  @override
  String get file => 'ఫైల్:';

  @override
  String progress(int current, int total) {
    return 'పురోగతి: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'దయచేసి JSON ఫైల్‌ని దిగుమతి చేయండి';

  @override
  String get selectMaterialPrompt => 'దయచేసి స్టడీ మెటీరియల్‌ని ఎంచుకోండి';

  @override
  String get studyComplete => 'చదివాను';

  @override
  String get markAsStudied => 'చదివినట్లుగా గుర్తించు';

  @override
  String get listening => 'వింటున్నాను...';

  @override
  String get recognized => 'గుర్తింపు పూర్తయింది';

  @override
  String recognitionFailed(String error) {
    return 'వాయిస్ గుర్తింపు విఫలమైంది: $error';
  }

  @override
  String get checking => 'తనిఖీ చేస్తోంది...';

  @override
  String get translating => 'అనువదిస్తోంది...';

  @override
  String get translationComplete => 'అనువాదం పూర్తయింది (సేవ్ చేయాలి)';

  @override
  String get translationLoaded => 'సేవ్ చేసిన అనువాదం లోడ్ చేయబడింది';

  @override
  String translationFailed(String error) {
    return 'అనువాదం విఫలమైంది: $error';
  }

  @override
  String get enterTextToTranslate => 'అనువదించడానికి వచనాన్ని నమోదు చేయండి';

  @override
  String get saving => 'సేవ్ అవుతోంది...';

  @override
  String get noTranslationToSave => 'సేవ్ చేయడానికి అనువాదం లేదు';

  @override
  String saveFailed(String error) {
    return 'సేవ్ చేయడం విఫలమైంది: $error';
  }

  @override
  String get playing => 'ప్లే అవుతోంది...';

  @override
  String get noTextToPlay => 'ప్లే చేయడానికి వచనం లేదు';

  @override
  String playbackFailed(String error) {
    return 'ప్లేబ్యాక్ విఫలమైంది: $error';
  }

  @override
  String get sourceLanguage => 'మూల భాష';

  @override
  String get targetLanguage => 'లక్ష్య భాష';

  @override
  String get similarTextFound => 'అలాంటి వచనం కనుగొనబడింది';

  @override
  String get useExistingText => 'ఉన్నది వాడుకో';

  @override
  String get createNew => 'కొత్తది సృష్టించు';

  @override
  String reviewCount(int count) {
    return '$count సార్లు సమీక్షించబడింది';
  }

  @override
  String get tabSpeaking => 'మాట్లాడటం';

  @override
  String get speakingPractice => 'మాట్లాడే సాధన';

  @override
  String intervalSeconds(int seconds) {
    return 'విరామం: $secondsసెకన్లు';
  }

  @override
  String get yourPronunciation => 'మీ ఉచ్చారణ';

  @override
  String get correctAnswer => 'సరైన సమాధానం';

  @override
  String score(String score) {
    return 'ఖచ్చితత్వం: $score%';
  }

  @override
  String get perfect => 'పర్ఫెక్ట్!';

  @override
  String get good => 'బాగుంది';

  @override
  String get tryAgain => 'మళ్ళీ ప్రయత్నించు';

  @override
  String get startPractice => 'సాధన ప్రారంభించు';

  @override
  String get stopPractice => 'ఆపు';

  @override
  String get startTutorial => 'టూర్ ప్రారంభించు';

  @override
  String get tutorialMicTitle => 'వాయిస్ ఇన్‌పుట్';

  @override
  String get tutorialMicDesc => 'వాయిస్ ఇన్‌పుట్ కోసం మైక్ బటన్‌ను నొక్కండి.';

  @override
  String get tutorialTabDesc =>
      'మీరు ఇక్కడ మీ కావలసిన అభ్యాస మోడ్‌ను ఎంచుకోవచ్చు.';

  @override
  String get tutorialTapToContinue => 'కొనసాగించడానికి నొక్కండి';

  @override
  String get tutorialTransTitle => 'అనువాదం';

  @override
  String get tutorialTransDesc => 'మీ వచనాన్ని అనువదించడానికి ఇక్కడ నొక్కండి.';

  @override
  String get tutorialSaveTitle => 'సేవ్';

  @override
  String get tutorialSaveDesc => 'మీ అనువాదాన్ని సేవ్ చేయండి.';

  @override
  String get tutorialM2SelectTitle => 'ఎంచుకోండి & ఫిల్టర్';

  @override
  String get tutorialM2SelectDesc =>
      'మెటీరియల్ ఎంచుకోండి లేదా \'అన్నీ సమీక్షించు\'కి మారండి.';

  @override
  String get tutorialM2ListTitle => 'స్టడీ జాబితా';

  @override
  String get tutorialM2ListDesc =>
      'మీ కార్డులను తనిఖీ చేయండి మరియు వాటిని తిప్పండి. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'మెటీరియల్ ఎంచుకోండి';

  @override
  String get tutorialM3SelectDesc => 'మాట్లాడే సాధన కోసం సెట్‌ను ఎంచుకోండి.';

  @override
  String get tutorialM3IntervalTitle => 'విరామం';

  @override
  String get tutorialM3IntervalDesc =>
      'వాక్యాల మధ్య వేచి ఉండే సమయాన్ని సర్దుబాటు చేయండి.';

  @override
  String get tutorialM3StartTitle => 'ప్రారంభించు';

  @override
  String get tutorialM3StartDesc => 'ప్రారంభించడానికి ప్లే నొక్కండి.';

  @override
  String get startWarning => 'హెచ్చరిక';

  @override
  String get noVoiceDetected => 'వాయిస్ గుర్తించబడలేదు';

  @override
  String get tooltipSearch => 'వెతకండి';

  @override
  String get tooltipStudyReview => 'అధ్యయనం+సమీక్ష';

  @override
  String get tooltipSpeaking => 'మాట్లాడటం';

  @override
  String get tooltipDecrease => 'తగ్గించు';

  @override
  String get tooltipIncrease => 'పెంచు';

  @override
  String get languageSettings => 'భాష సెట్టింగ్‌లు';

  @override
  String get tutorialM2DropdownDesc => 'అధ్యయన విషయాలను ఎంచుకోండి.';

  @override
  String get tutorialM2ImportDesc =>
      'పరికర ఫోల్డర్ నుండి JSON ఫైల్‌ను దిగుమతి చేయండి.';

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
  String get tutorialContextTitle => 'సందర్భ ట్యాగ్';

  @override
  String get tutorialContextDesc =>
      'సారూప్య వాక్యాలను వేరు చేయడానికి సందర్భాన్ని (ఉదా. ఉదయం) జోడించండి.';

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
  String get usageLimitTitle => 'పరిమితి చేరుకుంది';

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
  String get selectMaterialSet => 'అభ్యాస సామగ్రి సమితిని ఎంచుకోండి';

  @override
  String get sectionWords => 'పదాలు';

  @override
  String get sectionSentences => 'వాక్యాలు';

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
      'నేను నేర్చుకుంటున్న భాషతో నా భాషను మార్చుకుంటాను.';

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
  String get menuSelectMaterialSet => 'అధ్యయన సామగ్రిని ఎంచుకోండి';

  @override
  String get sectionWord => 'పద విభాగం';

  @override
  String get sectionSentence => 'వాక్య విభాగం';

  @override
  String get tabWord => 'పదం';

  @override
  String get tabSentence => 'వాక్యం';

  @override
  String get errorProfanity => 'అభ్యంతరకర పదాలు ఉన్నందున అనువదించలేము.';

  @override
  String get errorHateSpeech => 'ద్వేషపూరిత ప్రసంగం ఉన్నందున అనువదించలేము.';

  @override
  String get errorSexualContent => 'శృంగారభరిత కంటెంట్ ఉన్నందున అనువదించలేము.';

  @override
  String get errorOtherSafety =>
      'AI భద్రతా విధానం ద్వారా అనువాదం తిరస్కరించబడింది.';

  @override
  String get clearAll => 'అన్నీ తొలగించు';

  @override
  String get disambiguationTitle => 'అర్థాన్ని ఎంచుకోండి';

  @override
  String get disambiguationPrompt => 'మీరు ఏ అర్థంతో అనువదించాలనుకుంటున్నారు?';

  @override
  String get skip => 'దాటవేయి';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

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
  String get chatAiChat => 'AI Chat';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Current Material Set: $name';
  }

  @override
  String get basicWordRepository => 'ప్రాథమిక పద రిపోజిటరీ';

  @override
  String get basicSentenceRepository => 'ప్రాథమిక వాక్య రిపోజిటరీ';

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
  String get labelShowMemorized => '외운것';

  @override
  String get tagSelection => '태그 선택';

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
  String get formPresent => '현재형';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get caseSubject => '주격';

  @override
  String get caseObject => '목적격';

  @override
  String get casePossessive => '소유격';

  @override
  String get casePossessivePronoun => '소유대명사';

  @override
  String get caseReflexive => '재귀대명사';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';
}

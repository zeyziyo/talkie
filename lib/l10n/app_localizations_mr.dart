// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get helpTitle => 'मदत आणि मार्गदर्शक';

  @override
  String get helpTabModes => 'मोड्स';

  @override
  String get helpTabJson => 'JSON फॉरमॅट';

  @override
  String get helpTabTour => 'टूर';

  @override
  String get helpMode1Desc => 'आवाज ओळखा, भाषांतर करा आणि निकाल ऐका.';

  @override
  String get helpMode1Details =>
      '• आवाज: सुरू/थांबवण्यासाठी माईक टॅप करा\n• मजकूर: भाषांतरासाठी थेट टाईप करा\n• ऑटो-सर्च: समान वाक्ये शोधते\n• भाषांतर: त्वरित भाषांतरासाठी बटण\n• ऐका: TTS साठी स्पीकर चिन्ह\n• जतन करा: इतिहासामध्ये जोडते\n• साफ करा: सर्व रीसेट करा';

  @override
  String get helpMode2Desc =>
      'लपविलेल्या भाषांतरासह जतन केलेल्या वाक्यांचे पुनरावलोकन करा.';

  @override
  String get helpMode2Details =>
      '• निवडा: संच किंवा \'सर्व पुनरावलोकन\' निवडा\n• पलटवा: भाषांतर \'दाखवा/लपवा\'\n• ऐका: वाक्यासाठी TTS प्ले करा\n• चिन्हांकित करा: पूर्ण झाल्यासाठी टिक (V)\n• काढून टाका: काढण्यासाठी कार्ड दाबून ठेवा\n• फिल्टर: सर्व किंवा साहित्यानुसार पहा';

  @override
  String get helpMode3Desc =>
      'ऐकून आणि पुनरावृत्ती करून बोलण्याचा सराव करा (Shadowing).';

  @override
  String get helpMode3Details =>
      '• निवडा: पॅकेज निवडा\n• मध्यांतर: [-] [+] प्रतीक्षा वेळ (3से-60से)\n• सुरू/थांबा: सत्र नियंत्रित करा\n• बोला: ऑडिओ ऐका आणि पुनरावृत्ती करा\n• स्कोअर: अचूकता (0-100)\n• पुन्हा प्रयत्न: आवाज न सापडल्यास बटण';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'मोड 3 मध्ये आयात करण्यासाठी, JSON तयार करा:';

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
  String get location => 'स्थान';

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
    return 'पुनरावलोकन ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'साहित्य ($count)';
  }

  @override
  String get mode2Title => 'पुनरावलोकन';

  @override
  String get search => 'शोधा';

  @override
  String get translate => 'भाषांतर';

  @override
  String get listen => 'ऐका';

  @override
  String get saveData => 'जतन करा';

  @override
  String get saved => 'जतन केले';

  @override
  String get delete => 'काढून टाका';

  @override
  String get materialInfo => 'साहित्य माहिती';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get confirm => 'ठीक आहे';

  @override
  String get refresh => 'रीफ्रेश';

  @override
  String studyRecords(int count) {
    return 'रेकॉर्ड्स ($count)';
  }

  @override
  String get targetLanguageFilter => 'लक्ष्य भाषा फिल्टर:';

  @override
  String get noRecords => 'निवडलेल्या भाषेसाठी कोणतेही रेकॉर्ड नाहीत';

  @override
  String get saveTranslationsFromSearch => 'शोध मोडमधून भाषांतरे जतन करा';

  @override
  String get flip => 'पलटवा';

  @override
  String get hide => 'लपवा';

  @override
  String get deleteRecord => 'रेकॉर्ड काढून टाका';

  @override
  String get confirmDelete => 'तुम्हाला नक्की हे रेकॉर्ड काढून टाकायचे आहे का?';

  @override
  String get recordDeleted => 'रेकॉर्ड यशस्वीरित्या काढले';

  @override
  String deleteFailed(String error) {
    return 'काढणे अयशस्वी: $error';
  }

  @override
  String get importJsonFile => 'JSON आयात करा';

  @override
  String get importing => 'आयात करत आहे...';

  @override
  String get importComplete => 'आयात पूर्ण';

  @override
  String get importFailed => 'आयात अयशस्वी';

  @override
  String importFile(String fileName) {
    return 'फाइल: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'एकूण: $count';
  }

  @override
  String importAdded(int count) {
    return 'जोडले: $count';
  }

  @override
  String importSkipped(int count) {
    return 'वगळले: $count';
  }

  @override
  String get errors => 'त्रुटी:';

  @override
  String get error => 'त्रुटी';

  @override
  String importErrorMessage(String error) {
    return 'फाइल आयात करण्यात अयशस्वी:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'साहित्य निवडा';

  @override
  String get subject => 'विषय:';

  @override
  String get source => 'स्रोत:';

  @override
  String get file => 'फाइल:';

  @override
  String progress(int current, int total) {
    return 'प्रगती: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'कृपया JSON फाइल आयात करा';

  @override
  String get selectMaterialPrompt => 'कृपया अभ्यास साहित्य निवडा';

  @override
  String get studyComplete => 'अभ्यास पूर्ण';

  @override
  String get markAsStudied => 'अभ्यास केले असे चिन्हांकित करा';

  @override
  String get listening => 'ऐकत आहे...';

  @override
  String get recognized => 'ओळख पूर्ण';

  @override
  String recognitionFailed(String error) {
    return 'आवाज ओळख अयशस्वी: $error';
  }

  @override
  String get checking => 'तपासत आहे...';

  @override
  String get translating => 'भाषांतर करत आहे...';

  @override
  String get translationComplete => 'भाषांतर पूर्ण (जतन करणे आवश्यक)';

  @override
  String get translationLoaded => 'जतन केलेले भाषांतर लोड केले';

  @override
  String translationFailed(String error) {
    return 'भाषांतर अयशस्वी: $error';
  }

  @override
  String get enterTextToTranslate => 'भाषांतरासाठी मजकूर प्रविष्ट करा';

  @override
  String get saving => 'जतन करत आहे...';

  @override
  String get noTranslationToSave => 'जतन करण्यासाठी कोणतेही भाषांतर नाही';

  @override
  String saveFailed(String error) {
    return 'जतन करणे अयशस्वी: $error';
  }

  @override
  String get playing => 'प्ले करत आहे...';

  @override
  String get noTextToPlay => 'प्ले करण्यासाठी मजकूर नाही';

  @override
  String playbackFailed(String error) {
    return 'प्लेबॅक अयशस्वी: $error';
  }

  @override
  String get sourceLanguage => 'स्रोत भाषा';

  @override
  String get targetLanguage => 'लक्ष्य भाषा';

  @override
  String get similarTextFound => 'समान मजकूर सापडला';

  @override
  String get useExistingText => 'विद्यमान वापरा';

  @override
  String get createNew => 'नवीन तयार करा';

  @override
  String reviewCount(int count) {
    return '$count वेळा पुनरावलोकन केले';
  }

  @override
  String get tabSpeaking => 'बोलणे';

  @override
  String get speakingPractice => 'बोलण्याचा सराव';

  @override
  String intervalSeconds(int seconds) {
    return 'मध्यांतर: $secondsसे';
  }

  @override
  String get yourPronunciation => 'तुमचे उच्चार';

  @override
  String get correctAnswer => 'बरोबर उत्तर';

  @override
  String score(String score) {
    return 'अचूकता: $score%';
  }

  @override
  String get perfect => 'उत्तम!';

  @override
  String get good => 'चांगले';

  @override
  String get tryAgain => 'पुन्हा प्रयत्न करा';

  @override
  String get startPractice => 'सराव सुरू करा';

  @override
  String get stopPractice => 'थांबा';

  @override
  String get startTutorial => 'टूर सुरू करा';

  @override
  String get tutorialMicTitle => 'व्हॉइस इनपुट';

  @override
  String get tutorialMicDesc => 'व्हॉइस इनपुटसाठी माईक बटण टॅप करा.';

  @override
  String get tutorialTabDesc =>
      'तुम्ही येथे तुमची इच्छित शिकण्याची पद्धत निवडू शकता.';

  @override
  String get tutorialTapToContinue => 'सुरू ठेवण्यासाठी टॅप करा';

  @override
  String get tutorialTransTitle => 'भाषांतर';

  @override
  String get tutorialTransDesc =>
      'तुमचा मजकूर भाषांतरित करण्यासाठी येथे टॅप करा.';

  @override
  String get tutorialSaveTitle => 'जतन करा';

  @override
  String get tutorialSaveDesc => 'तुमचे भाषांतर जतन करा.';

  @override
  String get tutorialM2SelectTitle => 'निवडा आणि फिल्टर';

  @override
  String get tutorialM2SelectDesc =>
      'साहित्य निवडा किंवा \'सर्व पुनरावलोकन\' वर जा.';

  @override
  String get tutorialM2ListTitle => 'अभ्यास सूची';

  @override
  String get tutorialM2ListDesc =>
      'तुमची कार्ड तपासा आणि त्यांना पलटवा. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'साहित्य निवडा';

  @override
  String get tutorialM3SelectDesc => 'बोलण्याच्या सरावासाठी संच निवडा.';

  @override
  String get tutorialM3IntervalTitle => 'मध्यांतर';

  @override
  String get tutorialM3IntervalDesc =>
      'वाक्यांमधील प्रतीक्षा वेळ समायोजित करा.';

  @override
  String get tutorialM3StartTitle => 'सुरू करा';

  @override
  String get tutorialM3StartDesc => 'सुरू करण्यासाठी प्ले टॅप करा.';

  @override
  String get startWarning => 'चेतावणी';

  @override
  String get noVoiceDetected => 'आवाज आढळला नाही';

  @override
  String get tooltipSearch => 'शोधा';

  @override
  String get tooltipStudyReview => 'अभ्यास+पुनरावलोकन';

  @override
  String get tooltipSpeaking => 'बोलणे';

  @override
  String get tooltipDecrease => 'कमी करा';

  @override
  String get tooltipIncrease => 'वाढवा';

  @override
  String get languageSettings => 'भाषा सेटिंग्ज';

  @override
  String get tutorialM2DropdownDesc => 'अभ्यास साहित्य निवडा.';

  @override
  String get tutorialM2ImportDesc => 'डिव्हाइस फोल्डरमधून JSON फाइल आयात करा.';

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
  String get tutorialContextTitle => 'संदर्भ टॅग';

  @override
  String get tutorialContextDesc =>
      'समान वाक्ये वेगळी करण्यासाठी संदर्भ (उदा. सकाळ) जोडा.';

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
  String get usageLimitTitle => 'वापर मर्यादा ओलांडली';

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
  String get selectMaterialSet => 'अभ्यास साहित्य सेट निवडा';

  @override
  String get sectionWords => 'शब्द';

  @override
  String get sectionSentences => 'वाक्ये';

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
  String get tutorialSwapDesc => 'मी माझी भाषा शिकत असलेल्या भाषेशी बदलतो.';

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
  String get menuSelectMaterialSet => 'अभ्यास साहित्य निवडा';

  @override
  String get sectionWord => 'शब्द विभाग';

  @override
  String get sectionSentence => 'वाक्य विभाग';

  @override
  String get tabWord => 'शब्द';

  @override
  String get tabSentence => 'वाक्य';

  @override
  String get errorProfanity => 'अपशब्दांमुळे भाषांतर करता येत नाही.';

  @override
  String get errorHateSpeech => 'तिरस्कारपूर्ण भाषेमुळे भाषांतर करता येत नाही.';

  @override
  String get errorSexualContent => 'लैंगिक सामग्रीमुळे भाषांतर करता येत नाही.';

  @override
  String get errorOtherSafety => 'AI सुरक्षा धोरणांमुळे भाषांतर नाकारले.';

  @override
  String get clearAll => 'सर्व साफ करा';

  @override
  String get disambiguationTitle => 'अर्थ निवडा';

  @override
  String get disambiguationPrompt => 'तुम्ही कोणता अर्थ वापरू इच्छिता?';

  @override
  String get skip => 'सोडून द्या';

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
  String get basicWordRepository => 'मूळ शब्द भांडार';

  @override
  String get basicSentenceRepository => 'मूळ वाक्य भांडार';

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

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get helpTitle => 'सहायता और गाइड';

  @override
  String get helpTabModes => 'मोड';

  @override
  String get helpTabJson => 'JSON प्रारूप';

  @override
  String get helpTabTour => 'टूर';

  @override
  String get helpMode1Desc =>
      'आवाज़ पहचानें, लक्ष्य भाषा में अनुवाद करें और परिणाम सुन.';

  @override
  String get helpMode1Details =>
      '• आवाज़ इनपुट: शुरू/बंद करने के लिए माइक टैप करें\n• पाठ इनपुट: अनुवाद के लिए सीधे टाइप करें\n• ऑटो-खोज: समान मौजूदा वाक्यों का पता लगाता है\n• अनुवाद: त्वरित अनुवाद के लिए बटन टैप करें\n• सुनें: TTS के लिए स्पीकर आइकन\n• सहेजें: \'डेटा सहेजें\' इतिहास में जोड़ता है\n• साफ़ करें: सभी इनपुट रीसेट करें';

  @override
  String get helpMode2Desc =>
      'सहेजे गए वाक्यों की समीक्षा ऑटो-छिपे अनुवादों के साथ करें.';

  @override
  String get helpMode2Details =>
      '• सामग्री चुनें: सेट चुनें या \'सभी समीक्षा करें\'\n• कार्ड पलटें: अनुवाद देखने के लिए \'दिखाएं/छिपाएं\' का उपयोग करें\n• सुनें: वाक्य के लिए TTS चलाएं\n• अध्ययन किया चिह्नित करें: पूर्ण आइटम के लिए चेक (V)\n• हटाएं: हटाने के लिए कार्ड को देर तक दबाएं\n• फ़िल्टर: सभी देखें या सामग्री द्वारा फ़िल्टर करें';

  @override
  String get helpMode3Desc =>
      'सुनकर और दोहराकर बोलने का अभ्यास करें (Shadowing).';

  @override
  String get helpMode3Details =>
      '• सामग्री चुनें: लर्निंग पैक चुनें\n• अंतराल: [-] [+] प्रतीक्षा समय समायोजित करें (3s-60s)\n• स्टार्ट/स्टॉप: सत्र नियंत्रित करें\n• बोलें: ऑडियो सुनें और दोहराएं\n• फ़ीडबैक: सटीकता स्कोर (0-100)\n• पुनः प्रयास करें: यदि आवाज़ का पता नहीं चलता है तो बटन का उपयोग करें';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc =>
      'मोड 3 में सामग्री आयात करने के लिए, निम्न संरचना के साथ JSON फ़ाइल बनाएं:';

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
  String get me => 'मैं';

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
    return 'समीक्षा ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'अध्ययन सामग्री ($count)';
  }

  @override
  String get mode2Title => 'समीक्षा';

  @override
  String get search => 'खोजें';

  @override
  String get translate => 'अनुवाद';

  @override
  String get listen => 'सुनें';

  @override
  String get saveData => 'सहेजें';

  @override
  String get saved => 'सहेजा गया';

  @override
  String get delete => 'हटाएं';

  @override
  String get materialInfo => 'सामग्री जानकारी';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get confirm => 'ठीक है';

  @override
  String get refresh => 'ताज़ा करें';

  @override
  String studyRecords(int count) {
    return 'रिकॉर्ड ($count)';
  }

  @override
  String get targetLanguageFilter => 'लक्ष्य भाषा फ़िल्टर:';

  @override
  String get noRecords => 'चयनित भाषा के लिए कोई रिकॉर्ड नहीं';

  @override
  String get saveTranslationsFromSearch => 'खोज मोड से अनुवाद सहेजें';

  @override
  String get flip => 'पलटें';

  @override
  String get hide => 'छिपाएं';

  @override
  String get deleteRecord => 'रिकॉर्ड हटाएं';

  @override
  String get confirmDelete => 'क्या आप वाकई इस रिकॉर्ड को हटाना चाहते हैं?';

  @override
  String get recordDeleted => 'रिकॉर्ड सफलतापूर्वक हटाया गया';

  @override
  String deleteFailed(String error) {
    return 'हटाना विफल: $error';
  }

  @override
  String get importJsonFile => 'JSON आयात करें';

  @override
  String get importing => 'आयात कर रहा है...';

  @override
  String get importComplete => 'आयात पूर्ण';

  @override
  String get importFailed => 'आयात विफल';

  @override
  String importFile(String fileName) {
    return 'फ़ाइल: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'कुल: $count';
  }

  @override
  String importAdded(int count) {
    return 'जोड़ा गया: $count';
  }

  @override
  String importSkipped(int count) {
    return 'छोड़ा गया: $count';
  }

  @override
  String get errors => 'त्रुटियां:';

  @override
  String get error => 'त्रुटि';

  @override
  String importErrorMessage(String error) {
    return 'फ़ाइल आयात करने में विफल:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'सामग्री चुनें';

  @override
  String get subject => 'विषय:';

  @override
  String get source => 'स्रोत:';

  @override
  String get file => 'फ़ाइल:';

  @override
  String progress(int current, int total) {
    return 'प्रगति: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'कृपया JSON फ़ाइल आयात करें';

  @override
  String get selectMaterialPrompt => 'कृपया अध्ययन सामग्री चुनें';

  @override
  String get studyComplete => 'अध्ययन किया';

  @override
  String get markAsStudied => 'अध्ययन किया हुआ चिह्नित करें';

  @override
  String get listening => 'सुन रहा है...';

  @override
  String get recognized => 'पहचान पूर्ण';

  @override
  String recognitionFailed(String error) {
    return 'वाक् पहचान विफल: $error';
  }

  @override
  String get checking => 'जाँच कर रहा है...';

  @override
  String get translating => 'अनुवाद कर रहा है...';

  @override
  String get translationComplete => 'अनुवाद पूर्ण (सहेजना आवश्यक)';

  @override
  String get translationLoaded => 'सहेजा गया अनुवाद लोड किया गया';

  @override
  String translationFailed(String error) {
    return 'अनुवाद विफल: $error';
  }

  @override
  String get enterTextToTranslate => 'अनुवाद के लिए पाठ दर्ज करें';

  @override
  String get saving => 'सहेज रहा है...';

  @override
  String get noTranslationToSave => 'सहेजने के लिए कोई अनुवाद नहीं';

  @override
  String saveFailed(String error) {
    return 'सहेजना विफल: $error';
  }

  @override
  String get playing => 'चला रहा है...';

  @override
  String get noTextToPlay => 'चलाने के लिए कोई पाठ नहीं';

  @override
  String playbackFailed(String error) {
    return 'प्लेबैक विफल: $error';
  }

  @override
  String get sourceLanguage => 'स्रोत भाषा';

  @override
  String get targetLanguage => 'लक्ष्य भाषा';

  @override
  String get similarTextFound => 'समान पाठ मिला';

  @override
  String get useExistingText => 'मौजूदा उपयोग करें';

  @override
  String get createNew => 'नया बनाएं';

  @override
  String reviewCount(int count) {
    return '$count बार समीक्षा की गई';
  }

  @override
  String get tabSpeaking => 'बोलना';

  @override
  String get speakingPractice => 'बोलने का अभ्यास';

  @override
  String intervalSeconds(int seconds) {
    return 'अंतराल: $seconds सेकंड';
  }

  @override
  String get yourPronunciation => 'आपका उच्चारण';

  @override
  String get correctAnswer => 'सही उत्तर';

  @override
  String score(String score) {
    return 'सटीकता: $score%';
  }

  @override
  String get perfect => 'उत्तम!';

  @override
  String get good => 'अच्छा';

  @override
  String get tryAgain => 'पुनः प्रयास करें';

  @override
  String get startPractice => 'अभ्यास शुरू करें';

  @override
  String get stopPractice => 'अभ्यास रोकें';

  @override
  String get startTutorial => 'टूर शुरू करें';

  @override
  String get tutorialMicTitle => 'वॉइस इनपुट';

  @override
  String get tutorialMicDesc =>
      'वॉइस इनपुट शुरू करने के लिए माइक बटन टैप करें.';

  @override
  String get tutorialTabDesc =>
      'आप यहां अपनी इच्छित सीखने की विधि चुन सकते हैं।';

  @override
  String get tutorialTapToContinue => 'जारी रखने के लिए टैप करें';

  @override
  String get tutorialTransTitle => 'अनुवाद';

  @override
  String get tutorialTransDesc =>
      'अपना टेक्स्ट अनुवाद करने के लिए यहाँ टैप करें.';

  @override
  String get tutorialSaveTitle => 'सहेजें';

  @override
  String get tutorialSaveDesc => 'अपनी अनुवाद को अध्ययन रिकॉर्ड में सहेजें.';

  @override
  String get tutorialM2SelectTitle => 'चुनें और फ़िल्टर करें';

  @override
  String get tutorialM2SelectDesc =>
      'अध्ययन सामग्री चुनें या \'समीक्षा सभी\' पर स्विच करें.';

  @override
  String get tutorialM2ListTitle => 'अध्ययन सूची';

  @override
  String get tutorialM2ListDesc =>
      'अपने सहेजे गए कार्ड देखें और उत्तर देखने के लिए उन्हें पलटें. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'सामग्री चुनें';

  @override
  String get tutorialM3SelectDesc =>
      'बोलने के अभ्यास के लिए सामग्री सेट चुनें.';

  @override
  String get tutorialM3IntervalTitle => 'अंतराल';

  @override
  String get tutorialM3IntervalDesc =>
      'वाक्यों के बीच प्रतीक्षा समय समायोजित करें.';

  @override
  String get tutorialM3StartTitle => 'अभ्यास शुरू करें';

  @override
  String get tutorialM3StartDesc =>
      'सुनने और छायांकन शुरू करने के लिए प्ले टैप करें.';

  @override
  String get startWarning => 'चेतावनी';

  @override
  String get noVoiceDetected => 'कोई आवाज़ नहीं मिली';

  @override
  String get tooltipSearch => 'खोजें';

  @override
  String get tooltipStudyReview => 'अध्ययन+समीक्षा';

  @override
  String get tooltipSpeaking => 'बोलना';

  @override
  String get tooltipDecrease => 'कम करें';

  @override
  String get tooltipIncrease => 'बढ़ाएं';

  @override
  String get languageSettings => 'भाषा सेटिंग्स';

  @override
  String get tutorialM2DropdownDesc => 'अध्ययन सामग्री चुनें।';

  @override
  String get tutorialM2ImportDesc => 'डिवाइस फ़ोल्डर से JSON फ़ाइल आयात करें।';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get copy => 'कॉपी करें';

  @override
  String get copiedToClipboard => 'क्लिपबोर्ड पर कॉपी किया गया!';

  @override
  String get tutorialContextTitle => 'संदर्भ टैग';

  @override
  String get tutorialContextDesc =>
      'समान वाक्यों में अंतर करने के लिए संदर्भ (जैसे: सुबह) जोड़ें।';

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
  String get usageLimitTitle => 'सीमा तक पहुँच गए';

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
  String get selectMaterialSet => 'सीखने की सामग्री सेट चुनें';

  @override
  String get sectionWords => 'शब्द';

  @override
  String get sectionSentences => 'वाक्य';

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
      'मैं अपनी भाषा को उस भाषा से बदल लेता हूँ जिसे मैं सीख रहा हूँ।';

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
  String get menuSelectMaterialSet => 'अध्ययन सामग्री का चयन करें';

  @override
  String get sectionWord => 'शब्द अनुभाग';

  @override
  String get sectionSentence => 'वाक्य अनुभाग';

  @override
  String get tabWord => 'शब्द';

  @override
  String get tabSentence => 'वाक्य';

  @override
  String get errorProfanity =>
      'इसमें अश्लील भाषा है इसलिए अनुवाद नहीं किया जा सकता।';

  @override
  String get errorHateSpeech =>
      'इसमें घृणास्पद भाषण है इसलिए अनुवाद नहीं किया जा सकता।';

  @override
  String get errorSexualContent =>
      'इसमें यौन सामग्री है इसलिए अनुवाद नहीं किया जा सकता।';

  @override
  String get errorOtherSafety =>
      'AI सुरक्षा नीतियों के कारण अनुवाद अस्वीकृत कर दिया गया।';

  @override
  String get clearAll => 'सब साफ़ करें';

  @override
  String get disambiguationTitle => 'अर्थ चुनें';

  @override
  String get disambiguationPrompt => 'आप किस अर्थ में अनुवाद करना चाहेंगे?';

  @override
  String get skip => 'छोड़ें';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'बातचीत का इतिहास';

  @override
  String get chatNewChat => 'नई चैट';

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
  String get chatAiChat => 'AI चैट';

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
  String get basicWordRepository => 'बुनियादी शब्द भंडार';

  @override
  String get basicSentenceRepository => 'बुनियादी वाक्य भंडार';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'सहेजें और बाहर निकलें';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';
}

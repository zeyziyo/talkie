// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get basicWords => 'मूल शब्द भंडार';

  @override
  String get inputLanguage => '입력 언어';

  @override
  String get translationLanguage => '번역 언어';

  @override
  String get simplifiedGuidance =>
      '일상의 대화를 외국어로 순간 변환! Talkie가 당신의 언어 생활을 기록해 드립니다.';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get accuracy => 'सटीकता';

  @override
  String get ttsMissing =>
      'इस भाषा का ध्वनि इंजन आपके डिवाइस पर स्थापित नहीं है.';

  @override
  String get ttsInstallGuide =>
      'कृपया Android सेटिंग > Google TTS में संबंधित भाषा डेटा स्थापित करें.';

  @override
  String get adLoading =>
      'विज्ञापन लोड हो रहा है. कृपया बाद में पुन: प्रयास करें।';

  @override
  String get addNewSubject => 'नया शीर्षक जोड़ें';

  @override
  String get addParticipant => 'प्रतिभागी जोड़ें';

  @override
  String get addTagHint => 'टैग जोड़ें...';

  @override
  String get alreadyHaveAccount => 'क्या आपके पास पहले से ही एक खाता है?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'स्वतः चलाएं';

  @override
  String get basic => 'मूल';

  @override
  String get basicDefault => 'मूल';

  @override
  String get basicMaterialRepository => 'मूल वाक्य/शब्द भंडार';

  @override
  String get basicSentenceRepository => 'बुनियादी वाक्य भंडार';

  @override
  String get basicSentences => 'मूल वाक्य भंडार';

  @override
  String get basicWordRepository => 'बुनियादी शब्द भंडार';

  @override
  String get caseObject => 'कर्म कारक';

  @override
  String get casePossessive => 'संबंध कारक';

  @override
  String get casePossessivePronoun => 'संबंधवाचक सर्वनाम';

  @override
  String get caseReflexive => 'निजवाचक सर्वनाम';

  @override
  String get caseSubject => 'कर्ता कारक';

  @override
  String get chatAiChat => 'चैट';

  @override
  String get chatAllConversations => 'सभी वार्तालाप';

  @override
  String get chatChoosePersona => 'व्यक्तित्व चुनें';

  @override
  String get chatEndMessage => 'क्या आप बातचीत समाप्त करना चाहेंगे?';

  @override
  String get chatEndTitle => 'बातचीत समाप्त करें और सहेजें';

  @override
  String chatFailed(Object error) {
    return 'चैट विफल: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'बातचीत से उद्धरण ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'बातचीत का इतिहास';

  @override
  String get chatNew => 'नई बातचीत';

  @override
  String get chatNewChat => 'नई चैट';

  @override
  String get chatNoConversations => 'अभी तक कोई बातचीत नहीं हुई है';

  @override
  String get chatSaveAndExit => 'सहेजें और बाहर निकलें';

  @override
  String get chatStartNewPrompt => 'अभ्यास के लिए एक नई बातचीत शुरू करें!';

  @override
  String get chatTypeHint => 'एक संदेश दर्ज करें...';

  @override
  String get chatUntitled => 'बिना शीर्षक वाली बातचीत';

  @override
  String get checking => 'जाँच कर रहा है...';

  @override
  String get clearAll => 'सब साफ़ करें';

  @override
  String get confirm => 'ठीक है';

  @override
  String get confirmDelete => 'क्या आप वाकई इस रिकॉर्ड को हटाना चाहते हैं?';

  @override
  String get confirmDeleteConversation =>
      'क्या आप इस वार्तालाप को हटाना चाहते हैं?\nहटाए गए वार्तालाप को पुनर्प्राप्त नहीं किया जा सकता.';

  @override
  String get confirmDeleteParticipant =>
      'क्या आप इस प्रतिभागी को हटाना चाहते हैं?';

  @override
  String get contextTagHint =>
      'बाद में भेद करना आसान बनाने के लिए स्थिति लिखें';

  @override
  String get contextTagLabel =>
      'संदर्भ/स्थिति (वैकल्पिक) - उदाहरण: सुप्रभात, औपचारिक';

  @override
  String get copiedToClipboard => 'क्लिपबोर्ड पर कॉपी किया गया!';

  @override
  String get copy => 'कॉपी करें';

  @override
  String get correctAnswer => 'सही उत्तर';

  @override
  String get createNew => 'नया बनाएं';

  @override
  String get currentLocation => 'वर्तमान स्थान';

  @override
  String get currentMaterialLabel => 'वर्तमान चयनित सामग्री:';

  @override
  String get delete => 'हटाएं';

  @override
  String deleteFailed(String error) {
    return 'हटाना विफल: $error';
  }

  @override
  String get deleteRecord => 'रिकॉर्ड हटाएं';

  @override
  String get dialogueQuestDesc =>
      'परिस्थितियों के माध्यम से बातचीत का अभ्यास करें। उचित उत्तरों का चयन करें और बोलें।';

  @override
  String get dialogueQuestTitle => 'संवाद खोज';

  @override
  String get disambiguationPrompt => 'आप किस अर्थ में अनुवाद करना चाहेंगे?';

  @override
  String get disambiguationTitle => 'अर्थ चुनें';

  @override
  String get dontHaveAccount => 'क्या आपके पास खाता नहीं है?';

  @override
  String get editParticipant => 'प्रतिभागी संपादित करें';

  @override
  String get email => 'ईमेल';

  @override
  String get emailAlreadyInUse =>
      'यह ईमेल पहले से ही उपयोग में है। कृपया लॉग इन करें या पासवर्ड रीसेट करें।';

  @override
  String get enterNewSubjectName => 'नया शीर्षक दर्ज करें';

  @override
  String get enterSentenceHint => 'एक वाक्य दर्ज करें...';

  @override
  String get enterTextHint => 'अनुवाद करने के लिए टेक्स्ट दर्ज करें';

  @override
  String get enterTextToTranslate => 'अनुवाद के लिए पाठ दर्ज करें';

  @override
  String get enterWordHint => 'एक शब्द दर्ज करें...';

  @override
  String get error => 'त्रुटि';

  @override
  String get errorHateSpeech =>
      'इसमें घृणास्पद भाषण है इसलिए अनुवाद नहीं किया जा सकता।';

  @override
  String get errorOtherSafety =>
      'AI सुरक्षा नीतियों के कारण अनुवाद अस्वीकृत कर दिया गया।';

  @override
  String get errorProfanity =>
      'इसमें अश्लील भाषा है इसलिए अनुवाद नहीं किया जा सकता।';

  @override
  String get errorSelectCategory => 'पहले एक शब्द या वाक्य का चयन करें!';

  @override
  String get errorSexualContent =>
      'इसमें यौन सामग्री है इसलिए अनुवाद नहीं किया जा सकता।';

  @override
  String get errors => 'त्रुटियां:';

  @override
  String get female => 'महिला';

  @override
  String get file => 'फ़ाइल:';

  @override
  String get filterAll => 'सभी';

  @override
  String get flip => 'पलटें';

  @override
  String get formComparative => 'तुलनात्मक डिग्री';

  @override
  String get formInfinitive => 'अनंत/वर्तमान काल';

  @override
  String get formPast => 'भूतकाल';

  @override
  String get formPastParticiple => 'भूत कृदंत';

  @override
  String get formPlural => 'बहुवचन';

  @override
  String get formPositive => 'सकारात्मक डिग्री';

  @override
  String get formPresent => 'वर्तमान काल';

  @override
  String get formPresentParticiple => 'वर्तमान कृदंत (ing)';

  @override
  String get formSingular => 'एकवचन';

  @override
  String get formSuperlative => 'उत्कृष्ट डिग्री';

  @override
  String get formThirdPersonSingular => 'तीसरा व्यक्ति एकवचन';

  @override
  String get gameModeDesc => 'अभ्यास करने के लिए एक गेम मोड का चयन करें';

  @override
  String get gameModeTitle => 'गेम मोड';

  @override
  String get gameOver => 'खेल खत्म';

  @override
  String get gender => 'लिंग';

  @override
  String get generalTags => 'सामान्य टैग';

  @override
  String get getMaterials => 'सामग्री प्राप्त करें';

  @override
  String get good => 'अच्छा';

  @override
  String get googleContinue => 'Google के साथ जारी रखें';

  @override
  String get helpDialogueImportDesc =>
      'JSON फ़ाइल के साथ संपूर्ण संवाद सेट आयात करें।';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'मोड 3 में सामग्री आयात करने के लिए, निम्न संरचना के साथ JSON फ़ाइल बनाएं:';

  @override
  String get helpJsonTypeDialogue => 'संवाद (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'वाक्य (Sentence)';

  @override
  String get helpJsonTypeWord => 'शब्द (Word)';

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
      '• सामग्री संग्रह चुनें: ऊपर दाएं मेनू (⋮) से \'अध्ययन सामग्री संग्रह चुनें\' या \'ऑनलाइन सामग्री पुस्तकालय\' का उपयोग करें\n• कार्ड फ्लिप करें: \'दिखाएँ/छुपाएँ\' से अनुवाद की जाँच करें\n• सुनें: स्पीकर आइकन से उच्चारण चलाएँ\n• सीखना पूरा हुआ: चेक मार्क (V) के साथ सीखना पूरा करें\n• हटाएं: कार्ड को देर तक दबाकर (लॉन्ग क्लिक) रिकॉर्ड हटाएं\n• खोज और फ़िल्टर: खोज बार (रीयल-टाइम स्मार्ट खोज) और टैग, शुरुआती अक्षर फ़िल्टर समर्थन';

  @override
  String get helpMode3Desc =>
      'वाक्य को सुनकर दोहराएँ (छायांकन) और उच्चारण का अभ्यास करें।';

  @override
  String get helpMode3Details =>
      '• सामग्री चुनें: लर्निंग पैक चुनें\n• अंतराल: [-] [+] प्रतीक्षा समय समायोजित करें (3s-60s)\n• स्टार्ट/स्टॉप: सत्र नियंत्रित करें\n• बोलें: ऑडियो सुनें और दोहराएं\n• फ़ीडबैक: सटीकता स्कोर (0-100)\n• पुनः प्रयास करें: यदि आवाज़ का पता नहीं चलता है तो बटन का उपयोग करें';

  @override
  String get helpModeChatDesc =>
      'AI व्यक्तित्व के साथ बातचीत करके वास्तविक बातचीत का अभ्यास करें।';

  @override
  String get helpModeChatDetails =>
      '• एआई चैट: व्यक्तित्वों के साथ वास्तविक बातचीत का अभ्यास करें।\n• प्रतिभागी प्रबंधन: अपनी भाषा और एआई की भाषा को अलग-अलग सेट करके भाषा विसंगतियों को रोकें।\n• जीपीएस सिमुलेशन: अपने वर्तमान स्थान के आधार पर प्राकृतिक बातचीत की स्थितियों का अनुकरण करें।\n• रिकॉर्ड प्रतिधारण: सभी बातचीत आईडी के आधार पर सुरक्षित रूप से संग्रहीत की जाती हैं, और नाम बदलने पर भी रिकॉर्ड बनाए रखा जाता है।';

  @override
  String get helpTabJson => 'JSON प्रारूप';

  @override
  String get helpTabModes => 'मोड';

  @override
  String get helpTabTour => 'टूर';

  @override
  String get helpTitle => 'सहायता और गाइड';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'छिपाएं';

  @override
  String importAdded(int count) {
    return 'जोड़ा गया: $count';
  }

  @override
  String get importComplete => 'आयात पूर्ण';

  @override
  String get importDuplicateTitleError =>
      'समान शीर्षक वाली सामग्री पहले से मौजूद है. कृपया शीर्षक बदलकर पुनः प्रयास करें।';

  @override
  String importErrorMessage(String error) {
    return 'फ़ाइल आयात करने में विफल:\\n$error';
  }

  @override
  String get importFailed => 'आयात विफल';

  @override
  String importFile(String fileName) {
    return 'फ़ाइल: $fileName';
  }

  @override
  String get importJsonFile => 'JSON आयात करें';

  @override
  String get importJsonFilePrompt => 'कृपया JSON फ़ाइल आयात करें';

  @override
  String importSkipped(int count) {
    return 'छोड़ा गया: $count';
  }

  @override
  String importTotal(int count) {
    return 'कुल: $count';
  }

  @override
  String get importing => 'आयात कर रहा है...';

  @override
  String get inputModeTitle => 'इनपुट';

  @override
  String intervalSeconds(int seconds) {
    return 'अंतराल: $seconds सेकंड';
  }

  @override
  String get invalidEmail => 'कृपया एक मान्य ईमेल दर्ज करें।';

  @override
  String get kakaoContinue => 'काकाओ के साथ जारी रखें';

  @override
  String get labelLangCode => 'भाषा कोड (उदाहरण: en-US, ko-KR)';

  @override
  String get labelName => 'नाम';

  @override
  String get labelNote => 'टिप्पणी';

  @override
  String get labelPOS => 'शब्दभेद';

  @override
  String get labelRole => 'भूमिका';

  @override
  String get labelSentence => 'वाक्य';

  @override
  String get labelSentenceCollection => 'वाक्य संग्रह';

  @override
  String get labelSentenceType => 'वाक्य का प्रकार';

  @override
  String get labelShowMemorized => 'हो गया';

  @override
  String get labelType => 'प्रकार:';

  @override
  String get labelWord => 'शब्द';

  @override
  String get labelWordbook => 'शब्द संग्रह';

  @override
  String get language => 'भाषा';

  @override
  String get languageSettings => 'भाषा सेटिंग्स';

  @override
  String get languageSettingsTitle => 'भाषा सेटिंग';

  @override
  String get libTitleFirstMeeting => 'पहली मुलाकात';

  @override
  String get libTitleGreetings1 => 'अभिवादन 1';

  @override
  String get libTitleNouns1 => 'संज्ञा 1';

  @override
  String get libTitleVerbs1 => 'क्रिया 1';

  @override
  String get listen => 'सुनें';

  @override
  String get listening => 'सुन रहा है...';

  @override
  String get loadingParticipants => 'प्रतिभागियों को लोड किया जा रहा है...';

  @override
  String get location => 'स्थान';

  @override
  String get login => 'लॉग इन';

  @override
  String get logout => 'लॉग आउट';

  @override
  String get logoutConfirmMessage =>
      'क्या आप इस डिवाइस से लॉग आउट करना चाहते हैं?';

  @override
  String get logoutConfirmTitle => 'लॉग आउट';

  @override
  String get male => 'पुरुष';

  @override
  String get manageParticipants => 'प्रतिभागियों का प्रबंधन करें';

  @override
  String get manual => 'मैन्युअल इनपुट';

  @override
  String get markAsStudied => 'अध्ययन किया हुआ चिह्नित करें';

  @override
  String get materialInfo => 'सामग्री जानकारी';

  @override
  String get me => 'मैं';

  @override
  String get menuDeviceImport => 'डिवाइस से सामग्री आयात करें';

  @override
  String get menuHelp => 'मदद';

  @override
  String get menuLanguageSettings => 'भाषा सेटिंग्स';

  @override
  String get menuOnlineLibrary => 'ऑनलाइन लाइब्रेरी';

  @override
  String get menuSelectMaterialSet => 'अध्ययन सामग्री का चयन करें';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'उपयोग कैसे करें';

  @override
  String get menuWebDownload => 'उपयोगकर्ता पुस्तिका';

  @override
  String get metadataDialogTitle => 'विस्तृत वर्गीकरण';

  @override
  String get metadataFormType => 'व्याकरणिक रूप';

  @override
  String get metadataRootWord => 'मूल शब्द (Root Word)';

  @override
  String get micButtonTooltip => 'ध्वनि पहचान शुरू करें';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'वर्तमान चयनित सामग्री: $name';
  }

  @override
  String get mode2Title => 'समीक्षा';

  @override
  String get mode3Next => 'अगला';

  @override
  String get mode3Start => 'शुरू';

  @override
  String get mode3Stop => 'रोकें';

  @override
  String get mode3TryAgain => 'पुनः प्रयास करें';

  @override
  String get mySentenceCollection => 'मेरा वाक्य संग्रह';

  @override
  String get myWordbook => 'मेरी शब्दकोश';

  @override
  String get neutral => 'तटस्थ';

  @override
  String get newSubjectName => 'नया विषय शीर्षक';

  @override
  String get next => 'अगला';

  @override
  String get noDialogueHistory => 'कोई बातचीत इतिहास नहीं है।';

  @override
  String get noInternetWarningMic =>
      'इंटरनेट कनेक्शन नहीं है. ऑफ़लाइन होने पर ध्वनि पहचान संभव नहीं हो सकती है।';

  @override
  String get noInternetWarningTranslate =>
      'इंटरनेट कनेक्शन नहीं है. ऑफ़लाइन होने पर अनुवाद सुविधा उपलब्ध नहीं है। कृपया पुनरीक्षण मोड का उपयोग करें।';

  @override
  String get noMaterialsInCategory => 'इस श्रेणी में कोई सामग्री नहीं है।';

  @override
  String get noParticipantsFound => 'कोई प्रतिभागी पंजीकृत नहीं है।';

  @override
  String get noRecords => 'चयनित भाषा के लिए कोई रिकॉर्ड नहीं';

  @override
  String get noStudyMaterial => 'कोई अध्ययन सामग्री नहीं है।';

  @override
  String get noTextToPlay => 'चलाने के लिए कोई पाठ नहीं';

  @override
  String get noTranslationToSave => 'सहेजने के लिए कोई अनुवाद नहीं';

  @override
  String get noVoiceDetected => 'कोई आवाज़ नहीं मिली';

  @override
  String get notSelected => '- कोई चयन नहीं -';

  @override
  String get onlineLibraryCheckInternet =>
      'अपना इंटरनेट कनेक्शन जांचें या बाद में पुनः प्रयास करें।';

  @override
  String get onlineLibraryLoadFailed => 'सामग्री लोड करने में विफल।';

  @override
  String get onlineLibraryNoMaterials => 'कोई सामग्री नहीं है।';

  @override
  String get participantDeleted => 'प्रतिभागी हटा दिया गया है।';

  @override
  String get participantRename => 'प्रतिभागी का नाम बदलें';

  @override
  String get partner => 'पार्टनर';

  @override
  String get partnerMode => 'पार्टनर मोड';

  @override
  String get password => 'पासवर्ड';

  @override
  String get passwordTooShort => 'पासवर्ड कम से कम 6 अक्षर लंबा होना चाहिए।';

  @override
  String get perfect => 'उत्तम!';

  @override
  String get personaFriend => 'स्थानीय मित्र';

  @override
  String get personaGuide => 'यात्रा गाइड';

  @override
  String get personaTeacher => 'अंग्रेजी शिक्षक';

  @override
  String get playAgain => 'फिर से खेलें';

  @override
  String playbackFailed(String error) {
    return 'प्लेबैक विफल: $error';
  }

  @override
  String get playing => 'चला रहा है...';

  @override
  String get posAdjective => 'विशेषण';

  @override
  String get posAdverb => 'क्रिया विशेषण';

  @override
  String get posConjunction => 'संयोजक';

  @override
  String get posInterjection => 'विस्मयादिबोधक';

  @override
  String get posNoun => 'संज्ञा';

  @override
  String get posPreposition => 'पूर्वसर्ग/कारक';

  @override
  String get posPronoun => 'सर्वनाम';

  @override
  String get posVerb => 'क्रिया';

  @override
  String get practiceModeTitle => 'अभ्यास';

  @override
  String get practiceWordsOnly => 'केवल शब्दों का अभ्यास करें';

  @override
  String progress(int current, int total) {
    return 'प्रगति: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'नवीनतम $count आइटम देखें';
  }

  @override
  String recognitionFailed(String error) {
    return 'वाक् पहचान विफल: $error';
  }

  @override
  String get recognized => 'पहचान पूर्ण';

  @override
  String get recognizedText => 'पहचाना गया उच्चारण:';

  @override
  String get recordDeleted => 'रिकॉर्ड सफलतापूर्वक हटाया गया';

  @override
  String get refresh => 'ताज़ा करें';

  @override
  String get reset => 'रीसेट';

  @override
  String get resetPracticeHistory => 'अभ्यास इतिहास रीसेट करें';

  @override
  String get retry => 'पुनः प्रयास करें?';

  @override
  String get reviewAll => 'सभी की समीक्षा करें';

  @override
  String reviewCount(int count) {
    return '$count बार समीक्षा की गई';
  }

  @override
  String get reviewModeTitle => 'समीक्षा';

  @override
  String get roleAi => 'एआई';

  @override
  String get roleThirdParty => 'तृतीय पक्ष';

  @override
  String get roleUser => 'उपयोगकर्ता';

  @override
  String get save => 'सहेजें';

  @override
  String get saveData => 'सहेजें';

  @override
  String saveFailed(String error) {
    return 'सहेजना विफल: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'खोज मोड से अनुवाद सहेजें';

  @override
  String get saved => 'सहेजा गया';

  @override
  String get saving => 'सहेज रहा है...';

  @override
  String score(String score) {
    return 'सटीकता: $score%';
  }

  @override
  String get scoreLabel => 'अंक';

  @override
  String get search => 'खोजें';

  @override
  String get searchConditions => 'खोज की शर्तें';

  @override
  String get searchSentenceHint => 'वाक्य खोजें...';

  @override
  String get searchWordHint => 'शब्द खोजें...';

  @override
  String get sectionSentence => 'वाक्य अनुभाग';

  @override
  String get sectionSentences => 'वाक्य';

  @override
  String get sectionWord => 'शब्द अनुभाग';

  @override
  String get sectionWords => 'शब्द';

  @override
  String get selectExistingSubject => 'मौजूदा शीर्षक चुनें';

  @override
  String get selectMaterialPrompt => 'कृपया अध्ययन सामग्री चुनें';

  @override
  String get selectMaterialSet => 'सीखने की सामग्री सेट चुनें';

  @override
  String get selectPOS => 'भाषण का भाग चुनें';

  @override
  String get selectParticipants => 'प्रतिभागियों का चयन करें';

  @override
  String get selectSentenceType => 'वाक्य प्रकार चुनें';

  @override
  String get selectStudyMaterial => 'सामग्री चुनें';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'वाक्य';

  @override
  String get signUp => 'साइन अप';

  @override
  String get similarTextFound => 'समान पाठ मिला';

  @override
  String get skip => 'छोड़ें';

  @override
  String get source => 'स्रोत:';

  @override
  String get sourceLanguage => 'स्रोत भाषा';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'अब बोलें!';

  @override
  String get speaker => 'वक्ता';

  @override
  String get speakerSelect => 'वक्ता का चयन करें';

  @override
  String get speakingPractice => 'बोलने का अभ्यास';

  @override
  String get startChat => 'चैट शुरू करें';

  @override
  String get startPractice => 'अभ्यास शुरू करें';

  @override
  String get startTutorial => 'टूर शुरू करें';

  @override
  String get startWarning => 'चेतावनी';

  @override
  String get startsWith => 'से शुरू होता है';

  @override
  String get statusCheckEmail =>
      'कृपया अपना ईमेल जांचें और प्रमाणीकरण पूरा करें.';

  @override
  String statusDownloading(Object name) {
    return 'डाउनलोड हो रहा है: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'आयात विफल: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name आयात करना पूर्ण हुआ';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'लॉगिन रद्द कर दिया गया।';

  @override
  String statusLoginFailed(Object error) {
    return 'लॉगिन विफल: $error';
  }

  @override
  String get statusLoginSuccess => 'लॉगिन सफल रहा।';

  @override
  String get statusLogoutSuccess => 'लॉग आउट हो गया है।';

  @override
  String statusSignUpFailed(Object error) {
    return 'साइन अप विफल: $error';
  }

  @override
  String get statusSigningUp => 'साइन अप कर रहा है...';

  @override
  String get stopPractice => 'अभ्यास रोकें';

  @override
  String get studyComplete => 'अध्ययन किया';

  @override
  String studyRecords(int count) {
    return 'रिकॉर्ड ($count)';
  }

  @override
  String get styleFormal => 'औपचारिक';

  @override
  String get styleInformal => 'अनौपचारिक';

  @override
  String get stylePolite => 'शिष्ट';

  @override
  String get styleSlang => 'स्लैंग/अपशब्द';

  @override
  String get subject => 'विषय:';

  @override
  String get swapLanguages => 'भाषाएं बदलें';

  @override
  String get switchToAi => 'एआई मोड पर स्विच करें';

  @override
  String get switchToPartner => 'पार्टनर मोड पर स्विच करें';

  @override
  String get syncingData => 'डेटा सिंक हो रहा है...';

  @override
  String get tabConversation => 'बातचीत';

  @override
  String tabReview(int count) {
    return 'समीक्षा ($count)';
  }

  @override
  String get tabSentence => 'वाक्य';

  @override
  String get tabSpeaking => 'बोलना';

  @override
  String tabStudyMaterial(int count) {
    return 'अध्ययन सामग्री ($count)';
  }

  @override
  String get tabWord => 'शब्द';

  @override
  String get tagFormal => 'शिष्टाचारपूर्ण';

  @override
  String get tagSelection => 'टैग चयन';

  @override
  String get targetLanguage => 'लक्ष्य भाषा';

  @override
  String get targetLanguageFilter => 'लक्ष्य भाषा फ़िल्टर:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'सही उत्तर प्रकट होने से पहले सोचने का समय।';

  @override
  String get thinkingTimeInterval => 'प्लेबैक विलंब';

  @override
  String get timeUp => 'समय समाप्त!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'शीर्षक टैग (संग्रह)';

  @override
  String get tooltipDecrease => 'कम करें';

  @override
  String get tooltipIncrease => 'बढ़ाएं';

  @override
  String get tooltipSearch => 'खोजें';

  @override
  String get tooltipSpeaking => 'बोलना';

  @override
  String get tooltipStudyReview => 'अध्ययन+समीक्षा';

  @override
  String totalRecords(int count) {
    return 'कुल $count रिकॉर्ड (सभी देखें)';
  }

  @override
  String get translate => 'अनुवाद';

  @override
  String get translating => 'अनुवाद कर रहा है...';

  @override
  String get translation => 'अनुवाद';

  @override
  String get translationComplete => 'अनुवाद पूर्ण (सहेजना आवश्यक)';

  @override
  String translationFailed(String error) {
    return 'अनुवाद विफल: $error';
  }

  @override
  String get translationLimitExceeded => 'अनुवाद सीमा पार हो गई';

  @override
  String get translationLimitMessage =>
      'आपने सभी दैनिक मुफ्त अनुवादों (5 बार) का उपयोग कर लिया है।\\n\\nक्या आप विज्ञापन देखकर तुरंत 5 बार रीफिल करना चाहेंगे?';

  @override
  String get translationLoaded => 'सहेजा गया अनुवाद लोड किया गया';

  @override
  String get translationRefilled => 'अनुवाद की संख्या 5 बार रीफिल की गई है!';

  @override
  String get translationResultHint => 'अनुवाद परिणाम - संपादन योग्य';

  @override
  String get tryAgain => 'पुनः प्रयास करें';

  @override
  String get tutorialAiChatDesc =>
      'एआई व्यक्तित्वों के साथ वास्तविक बातचीत का अभ्यास करें।';

  @override
  String get tutorialAiChatTitle => 'AI चैट';

  @override
  String get tutorialContextDesc =>
      'समान वाक्यों में अंतर करने के लिए संदर्भ (जैसे: सुबह) जोड़ें।';

  @override
  String get tutorialContextTitle => 'संदर्भ टैग';

  @override
  String get tutorialLangSettingsDesc =>
      'अनुवाद करने के लिए मूल भाषा और लक्ष्य भाषा सेट करें।';

  @override
  String get tutorialLangSettingsTitle => 'भाषा सेटिंग';

  @override
  String get tutorialM1ToggleDesc =>
      'यहां शब्द और वाक्य मोड के बीच स्विच करें।';

  @override
  String get tutorialM1ToggleTitle => 'शब्द/वाक्य मोड';

  @override
  String get tutorialM2DropdownDesc => 'अध्ययन सामग्री चुनें।';

  @override
  String get tutorialM2ImportDesc => 'डिवाइस फ़ोल्डर से JSON फ़ाइल आयात करें।';

  @override
  String get tutorialM2ListDesc =>
      'अपने सहेजे गए कार्ड देखें और उत्तर देखने के लिए उन्हें पलटें. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'अध्ययन सूची';

  @override
  String get tutorialM2SearchDesc =>
      'सहेजे गए शब्दों और वाक्यों को खोजकर जल्दी से खोजें।';

  @override
  String get tutorialM2SelectDesc =>
      'अध्ययन सामग्री चुनें या \'समीक्षा सभी\' पर स्विच करें.';

  @override
  String get tutorialM2SelectTitle => 'चुनें और फ़िल्टर करें';

  @override
  String get tutorialM3IntervalDesc =>
      'वाक्यों के बीच प्रतीक्षा समय समायोजित करें.';

  @override
  String get tutorialM3IntervalTitle => 'अंतराल';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc =>
      'बोलने के अभ्यास के लिए सामग्री सेट चुनें.';

  @override
  String get tutorialM3SelectTitle => 'सामग्री चुनें';

  @override
  String get tutorialM3StartDesc =>
      'सुनने और छायांकन शुरू करने के लिए प्ले टैप करें.';

  @override
  String get tutorialM3StartTitle => 'अभ्यास शुरू करें';

  @override
  String get tutorialM3WordsDesc =>
      'जांच करने पर, केवल सहेजे गए शब्दों का अभ्यास करें।';

  @override
  String get tutorialM3WordsTitle => 'शब्द अभ्यास';

  @override
  String get tutorialMicDesc =>
      'वॉइस इनपुट शुरू करने के लिए माइक बटन टैप करें.';

  @override
  String get tutorialMicTitle => 'वॉइस इनपुट';

  @override
  String get tutorialSaveDesc => 'अपनी अनुवाद को अध्ययन रिकॉर्ड में सहेजें.';

  @override
  String get tutorialSaveTitle => 'सहेजें';

  @override
  String get tutorialSwapDesc =>
      'मैं अपनी भाषा को उस भाषा से बदल लेता हूँ जिसे मैं सीख रहा हूँ।';

  @override
  String get tutorialTabDesc =>
      'आप यहां अपनी इच्छित सीखने की विधि चुन सकते हैं।';

  @override
  String get tutorialTapToContinue => 'जारी रखने के लिए टैप करें';

  @override
  String get tutorialTransDesc =>
      'अपना टेक्स्ट अनुवाद करने के लिए यहाँ टैप करें.';

  @override
  String get tutorialTransTitle => 'अनुवाद';

  @override
  String get typeExclamation => 'विस्मयादिबोधक वाक्य';

  @override
  String get typeImperative => 'आदेश';

  @override
  String get typeQuestion => 'प्रश्न';

  @override
  String get typeStatement => 'कथन';

  @override
  String get usageLimitTitle => 'सीमा तक पहुँच गए';

  @override
  String get useExistingText => 'मौजूदा उपयोग करें';

  @override
  String get viewOnlineGuide => 'ऑनलाइन गाइड देखें';

  @override
  String get voluntaryTranslations => 'स्वैच्छिक अनुवाद';

  @override
  String get watchAdAndRefill => 'विज्ञापन देखकर रीफिल करें (+5 बार)';

  @override
  String get word => 'शब्द';

  @override
  String get wordDefenseDesc =>
      'शत्रु के आने से पहले शब्द बोलकर अड्डे की रक्षा करें।';

  @override
  String get wordDefenseTitle => 'शब्द रक्षा';

  @override
  String get wordModeLabel => 'शब्द मोड';

  @override
  String get yourPronunciation => 'आपका उच्चारण';

  @override
  String get ttsUnsupportedNatively =>
      'यह उपकरण मूल रूप से इस भाषा में ध्वनि आउटपुट का समर्थन नहीं करता है.';

  @override
  String get welcomeTitle => 'Talkie में आपका स्वागत है!';

  @override
  String get welcomeDesc =>
      'Talkie 80 से अधिक भाषाओं का समर्थन करता है और यात्रियों के लिए एक स्मार्ट अनुवाद उपकरण है। AI चैट के माध्यम से अपने बोलने के कौशल को बढ़ाएं!';

  @override
  String get welcomeButton => 'शुरू करें';
}

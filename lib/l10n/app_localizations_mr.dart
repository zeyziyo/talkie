// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get accuracy => 'अचूकता';

  @override
  String get ttsMissing =>
      'या भाषेसाठी व्हॉइस इंजिन तुमच्या डिव्हाइसवर स्थापित केलेले नाही.';

  @override
  String get ttsInstallGuide =>
      'Android सेटिंग्ज > Google TTS मध्ये संबंधित भाषा डेटा स्थापित करा.';

  @override
  String get adLoading =>
      'जाहिरात लोड होत आहे. कृपया काही वेळाने पुन्हा प्रयत्न करा.';

  @override
  String get addNewSubject => 'नवीन शीर्षक जोडा';

  @override
  String get addParticipant => 'सहभागी जोडा';

  @override
  String get addTagHint => 'टॅग जोडा...';

  @override
  String get alreadyHaveAccount => 'आधीच खाते आहे?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'ऑटो प्ले';

  @override
  String get basic => 'मूलभूत';

  @override
  String get basicDefault => 'मूलभूत डीफॉल्ट';

  @override
  String get basicMaterialRepository => 'मूलभूत वाक्य/शब्द संग्रह';

  @override
  String get basicSentenceRepository => 'मूळ वाक्य भांडार';

  @override
  String get basicSentences => 'मूलभूत वाक्य संग्रह';

  @override
  String get basicWordRepository => 'मूळ शब्द भांडार';

  @override
  String get basicWords => 'मूलभूत शब्द संग्रह';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get caseObject => 'कर्म कारक';

  @override
  String get casePossessive => 'संबंध कारक';

  @override
  String get casePossessivePronoun => 'संबंधवाचक सर्वनाम';

  @override
  String get caseReflexive => 'आत्मवाचक सर्वनाम';

  @override
  String get caseSubject => 'कर्ता कारक';

  @override
  String get chatAiChat => 'चॅटिंग';

  @override
  String get chatAllConversations => 'सर्व संभाषणे';

  @override
  String get chatChoosePersona => 'व्यक्तिमत्व (Persona) निवडा';

  @override
  String get chatEndMessage => 'तुम्ही संभाषण समाप्त करू इच्छिता?';

  @override
  String get chatEndTitle => 'संभाषण समाप्त आणि जतन करा';

  @override
  String chatFailed(Object error) {
    return 'चॅट अयशस्वी: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'संभाषणातून निवड ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'चॅट इतिहास';

  @override
  String get chatNew => 'नवीन चॅट';

  @override
  String get chatNewChat => 'नवीन चॅट';

  @override
  String get chatNoConversations => 'अद्याप संभाषणे नाहीत';

  @override
  String get chatSaveAndExit => 'जतन करा आणि बाहेर पडा';

  @override
  String get chatStartNewPrompt => 'सरावासाठी नवीन संभाषण सुरू करा!';

  @override
  String get chatTypeHint => 'संदेश प्रविष्ट करा...';

  @override
  String get chatUntitled => 'शीर्षक नसलेले संभाषण';

  @override
  String get checking => 'तपासत आहे...';

  @override
  String get clearAll => 'सर्व साफ करा';

  @override
  String get confirm => 'ठीक आहे';

  @override
  String get confirmDelete => 'तुम्हाला नक्की हे रेकॉर्ड काढून टाकायचे आहे का?';

  @override
  String get confirmDeleteConversation =>
      'तुम्ही हे संभाषण हटवू इच्छिता?\nहटवलेले संभाषण पुनर्प्राप्त केले जाऊ शकत नाही.';

  @override
  String get confirmDeleteParticipant => 'तुम्ही हा सहभागी हटवू इच्छिता?';

  @override
  String get contextTagHint => 'नंतर ओळखण्यासाठी परिस्थिती लिहा';

  @override
  String get contextTagLabel =>
      'संदर्भ/परिस्थिती (वैकल्पिक) - उदा. सुप्रभात, आदरार्थी';

  @override
  String get copiedToClipboard => 'क्लिपबोर्डवर कॉपी केले!';

  @override
  String get copy => 'कॉपी करा';

  @override
  String get correctAnswer => 'बरोबर उत्तर';

  @override
  String get createNew => 'नवीन तयार करा';

  @override
  String get currentLocation => 'वर्तमान स्थान';

  @override
  String get currentMaterialLabel => 'सध्या निवडलेली सामग्री:';

  @override
  String get delete => 'काढून टाका';

  @override
  String deleteFailed(String error) {
    return 'काढणे अयशस्वी: $error';
  }

  @override
  String get deleteRecord => 'रेकॉर्ड काढून टाका';

  @override
  String get dialogueQuestDesc =>
      'रोलप्लेद्वारे संभाषणाचा सराव करा. योग्य प्रतिसाद निवडा आणि बोला.';

  @override
  String get dialogueQuestTitle => 'संवाद शोध';

  @override
  String get disambiguationPrompt => 'तुम्ही कोणता अर्थ वापरू इच्छिता?';

  @override
  String get disambiguationTitle => 'अर्थ निवडा';

  @override
  String get dontHaveAccount => 'खाते नाही?';

  @override
  String get editParticipant => 'सहभागी संपादित करा';

  @override
  String get email => 'ईमेल';

  @override
  String get emailAlreadyInUse =>
      'हे ईमेल आधीपासूनच नोंदणीकृत आहे. कृपया लॉग इन करा किंवा पासवर्ड रीसेट करा.';

  @override
  String get enterNewSubjectName => 'नवीन शीर्षक प्रविष्ट करा';

  @override
  String get enterSentenceHint => 'वाक्य प्रविष्ट करा...';

  @override
  String get enterTextHint => 'भाषांतर करण्यासाठी मजकूर प्रविष्ट करा';

  @override
  String get enterTextToTranslate => 'भाषांतरासाठी मजकूर प्रविष्ट करा';

  @override
  String get enterWordHint => 'शब्द प्रविष्ट करा...';

  @override
  String get error => 'त्रुटी';

  @override
  String get errorHateSpeech => 'तिरस्कारपूर्ण भाषेमुळे भाषांतर करता येत नाही.';

  @override
  String get errorOtherSafety => 'AI सुरक्षा धोरणांमुळे भाषांतर नाकारले.';

  @override
  String get errorProfanity => 'अपशब्दांमुळे भाषांतर करता येत नाही.';

  @override
  String get errorSelectCategory => 'प्रथम शब्द किंवा वाक्य निवडा!';

  @override
  String get errorSexualContent => 'लैंगिक सामग्रीमुळे भाषांतर करता येत नाही.';

  @override
  String get errors => 'त्रुटी:';

  @override
  String get female => 'स्त्री';

  @override
  String get file => 'फाइल:';

  @override
  String get filterAll => 'सर्व';

  @override
  String get flip => 'पलटवा';

  @override
  String get formComparative => 'तुलनात्मक रूप';

  @override
  String get formInfinitive => 'मूळ रूप/वर्तमानकाळ';

  @override
  String get formPast => 'भूतकाळ';

  @override
  String get formPastParticiple => 'भूतकालवाचक कृदंत';

  @override
  String get formPlural => 'अनेकवचन';

  @override
  String get formPositive => 'सामान्य रूप';

  @override
  String get formPresent => 'वर्तमानकाळ';

  @override
  String get formPresentParticiple => 'वर्तमानकालवाचक कृदंत (ing)';

  @override
  String get formSingular => 'एकवचन';

  @override
  String get formSuperlative => 'उत्कृष्ट रूप';

  @override
  String get formThirdPersonSingular => 'तृतीय पुरुष एकवचन';

  @override
  String get gameModeDesc => 'सरावासाठी गेम मोड निवडा';

  @override
  String get gameModeTitle => 'गेम मोड';

  @override
  String get gameOver => 'गेम संपला';

  @override
  String get gender => 'लिंग';

  @override
  String get generalTags => 'सामान्य टॅग';

  @override
  String get getMaterials => 'सामग्री मिळवा';

  @override
  String get good => 'चांगले';

  @override
  String get googleContinue => 'Google सह सुरू ठेवा';

  @override
  String get helpDialogueImportDesc =>
      'JSON फाइल वापरून संपूर्ण संवाद संच आयात करा.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'मोड 3 मध्ये आयात करण्यासाठी, JSON तयार करा:';

  @override
  String get helpJsonTypeDialogue => 'संभाषण (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'वाक्य (Sentence)';

  @override
  String get helpJsonTypeWord => 'शब्द (Word)';

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
      '• साहित्य संग्रह निवड: उजव्या कोपऱ्यातील मेनू (⋮) मधून \'अभ्यास साहित्य संग्रह निवडा\' किंवा \'ऑनलाइन साहित्य भांडार\' वापरा\n• कार्ड फिरवा: \'दर्शवा/लपवा\' वापरून भाषांतर तपासा\n• ऐका: स्पीकर चिन्हाने उच्चारण ऐका\n• अभ्यास पूर्ण: चेक मार्क (V) ने अभ्यास पूर्ण करा\n• हटवा: कार्ड लांब दाबा (Long Click) आणि रेकॉर्ड हटवा\n• शोधा आणि फिल्टर करा: सर्च बार (रिअल-टाइम स्मार्ट सर्च) आणि टॅग, सुरुवातीच्या अक्षराचे फिल्टर उपलब्ध';

  @override
  String get helpMode3Desc =>
      'वाक्य ऐका आणि त्याचे अनुकरण करून (शॅडोइंग) उच्चारणाचा सराव करा.';

  @override
  String get helpMode3Details =>
      '• निवडा: पॅकेज निवडा\n• मध्यांतर: [-] [+] प्रतीक्षा वेळ (3से-60से)\n• सुरू/थांबा: सत्र नियंत्रित करा\n• बोला: ऑडिओ ऐका आणि पुनरावृत्ती करा\n• स्कोअर: अचूकता (0-100)\n• पुन्हा प्रयत्न: आवाज न सापडल्यास बटण';

  @override
  String get helpModeChatDesc =>
      'AI व्यक्तिमत्त्वाशी बोलून प्रत्यक्ष संभाषणाचा सराव करा.';

  @override
  String get helpModeChatDetails =>
      '• AI चॅट: व्यक्तिरेखा (Personas) आणि प्रत्यक्ष संभाषणाचा सराव करा.\n• सहभागी व्यवस्थापन: तुमची भाषा आणि AI ची भाषा स्वतंत्रपणे सेट करून भाषिक विसंगती टाळा.\n• GPS Roleplay: तुमच्या वर्तमान स्थानावर आधारित नैसर्गिक संभाषणाचे प्रसंग तयार करा.\n• इतिहास जतन: सर्व संभाषणे ID आधारित सुरक्षितपणे जतन केली जातात आणि नाव बदलले तरी इतिहास जपला जातो.';

  @override
  String get helpTabJson => 'JSON फॉरमॅट';

  @override
  String get helpTabModes => 'मोड्स';

  @override
  String get helpTabTour => 'टूर';

  @override
  String get helpTitle => 'मदत आणि मार्गदर्शक';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'लपवा';

  @override
  String importAdded(int count) {
    return 'जोडले: $count';
  }

  @override
  String get importComplete => 'आयात पूर्ण';

  @override
  String get importDuplicateTitleError =>
      'समान नावाचा डेटा आधीपासून अस्तित्वात आहे. कृपया शीर्षक बदलून पुन्हा प्रयत्न करा.';

  @override
  String importErrorMessage(String error) {
    return 'फाइल आयात करण्यात अयशस्वी:\\n$error';
  }

  @override
  String get importFailed => 'आयात अयशस्वी';

  @override
  String importFile(String fileName) {
    return 'फाइल: $fileName';
  }

  @override
  String get importJsonFile => 'JSON आयात करा';

  @override
  String get importJsonFilePrompt => 'कृपया JSON फाइल आयात करा';

  @override
  String importSkipped(int count) {
    return 'वगळले: $count';
  }

  @override
  String importTotal(int count) {
    return 'एकूण: $count';
  }

  @override
  String get importing => 'आयात करत आहे...';

  @override
  String get inputModeTitle => 'इनपुट';

  @override
  String intervalSeconds(int seconds) {
    return 'मध्यांतर: $secondsसे';
  }

  @override
  String get invalidEmail => 'कृपया वैध ईमेल प्रविष्ट करा.';

  @override
  String get kakaoContinue => 'काकाओ वापरून पुढे सुरू ठेवा';

  @override
  String get labelLangCode => 'भाषा कोड (उदा. en-US, ko-KR)';

  @override
  String get labelName => 'नाव';

  @override
  String get labelNote => 'टीप';

  @override
  String get labelPOS => 'शब्दाचा प्रकार';

  @override
  String get labelRole => 'भूमिका';

  @override
  String get labelSentence => 'वाक्य';

  @override
  String get labelSentenceCollection => 'वाक्य संग्रह';

  @override
  String get labelSentenceType => 'वाक्याचा प्रकार';

  @override
  String get labelShowMemorized => 'पूर्ण झाले';

  @override
  String get labelType => 'प्रकार:';

  @override
  String get labelWord => 'शब्द';

  @override
  String get labelWordbook => 'शब्द संग्रह';

  @override
  String get language => 'भाषा';

  @override
  String get languageSettings => 'भाषा सेटिंग्ज';

  @override
  String get languageSettingsTitle => 'भाषा सेटिंग्ज';

  @override
  String get libTitleFirstMeeting => 'पहिली भेट';

  @override
  String get libTitleGreetings1 => 'नमस्कार 1';

  @override
  String get libTitleNouns1 => 'नाम 1';

  @override
  String get libTitleVerbs1 => 'क्रियापद 1';

  @override
  String get listen => 'ऐका';

  @override
  String get listening => 'ऐकत आहे...';

  @override
  String get loadingParticipants => 'सहभागी लोड करत आहे...';

  @override
  String get location => 'स्थान';

  @override
  String get login => 'लॉगिन';

  @override
  String get logout => 'लॉग आउट';

  @override
  String get logoutConfirmMessage =>
      'तुम्ही ह्या डिव्हाइसवरून लॉग आउट करू इच्छिता?';

  @override
  String get logoutConfirmTitle => 'लॉग आउट';

  @override
  String get male => 'पुरुष';

  @override
  String get manageParticipants => 'सहभागी व्यवस्थापित करा';

  @override
  String get manual => 'मैन्युअल इनपुट';

  @override
  String get markAsStudied => 'अभ्यास केले असे चिन्हांकित करा';

  @override
  String get materialInfo => 'साहित्य माहिती';

  @override
  String get me => 'मी';

  @override
  String get menuDeviceImport => 'डिव्हाइसवरून साहित्य आयात करा';

  @override
  String get menuHelp => 'मदत';

  @override
  String get menuLanguageSettings => 'भाषा सेटिंग्ज';

  @override
  String get menuOnlineLibrary => 'ऑनलाइन लायब्ररी';

  @override
  String get menuSelectMaterialSet => 'अभ्यास साहित्य निवडा';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'शिकवणी दौरा';

  @override
  String get menuWebDownload => 'वापरकर्ता पुस्तिका';

  @override
  String get metadataDialogTitle => 'तपशीलवार वर्गीकरण';

  @override
  String get metadataFormType => 'व्याकरणिक रूप';

  @override
  String get metadataRootWord => 'मूळ शब्द (Root Word)';

  @override
  String get micButtonTooltip => 'व्हॉइस ओळख सुरू करा';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'सध्या निवडलेली सामग्री: $name';
  }

  @override
  String get mode2Title => 'पुनरावलोकन';

  @override
  String get mode3Next => 'पुढील';

  @override
  String get mode3Start => 'सुरू';

  @override
  String get mode3Stop => 'थांबा';

  @override
  String get mode3TryAgain => 'पुन्हा प्रयत्न करा';

  @override
  String get mySentenceCollection => 'माझे वाक्य संग्रह';

  @override
  String get myWordbook => 'माझी शब्दसूची';

  @override
  String get neutral => 'तटस्थ';

  @override
  String get newSubjectName => 'नवीन शब्दसंग्रह/वाक्यसंग्रह शीर्षक';

  @override
  String get next => 'पुढील';

  @override
  String get noDialogueHistory => 'संवादाचा इतिहास नाही.';

  @override
  String get noInternetWarningMic =>
      'इंटरनेट कनेक्शन नाही. ऑफलाइन असताना व्हॉइस ओळख उपलब्ध नसू शकते.';

  @override
  String get noInternetWarningTranslate =>
      'इंटरनेट कनेक्शन नाही. ऑफलाइन असताना भाषांतर वैशिष्ट्य वापरता येणार नाही. कृपया पुनरावलोकन मोड वापरा.';

  @override
  String get noMaterialsInCategory => 'या श्रेणीत कोणतीही सामग्री नाही.';

  @override
  String get noParticipantsFound => 'नोंदणीकृत सहभागी आढळले नाहीत.';

  @override
  String get noRecords => 'निवडलेल्या भाषेसाठी कोणतेही रेकॉर्ड नाहीत';

  @override
  String get noStudyMaterial => 'अभ्यासासाठी साहित्य नाही.';

  @override
  String get noTextToPlay => 'प्ले करण्यासाठी मजकूर नाही';

  @override
  String get noTranslationToSave => 'जतन करण्यासाठी कोणतेही भाषांतर नाही';

  @override
  String get noVoiceDetected => 'आवाज आढळला नाही';

  @override
  String get notSelected => '- निवडलेले नाही -';

  @override
  String get onlineLibraryCheckInternet =>
      'तुमचे इंटरनेट कनेक्शन तपासा किंवा नंतर पुन्हा प्रयत्न करा.';

  @override
  String get onlineLibraryLoadFailed => 'सामग्री लोड करण्यात अयशस्वी.';

  @override
  String get onlineLibraryNoMaterials => 'सामग्री उपलब्ध नाही.';

  @override
  String get participantDeleted => 'सहभागी हटवला गेला आहे.';

  @override
  String get participantRename => 'सहभागीचे नाव बदला';

  @override
  String get partner => 'भागीदार';

  @override
  String get partnerMode => 'भागीदार मोड';

  @override
  String get password => 'पासवर्ड';

  @override
  String get passwordTooShort => 'पासवर्ड किमान 6 अक्षरे असावा.';

  @override
  String get perfect => 'उत्तम!';

  @override
  String get personaFriend => 'स्थानिक मित्र';

  @override
  String get personaGuide => 'ट्रॅव्हल गाइड';

  @override
  String get personaTeacher => 'इंग्रजी शिक्षक';

  @override
  String get playAgain => 'पुन्हा खेळा';

  @override
  String playbackFailed(String error) {
    return 'प्लेबॅक अयशस्वी: $error';
  }

  @override
  String get playing => 'प्ले करत आहे...';

  @override
  String get posAdjective => 'विशेषण';

  @override
  String get posAdverb => 'क्रियाविशेषण';

  @override
  String get posConjunction => 'उभयान्वयी अव्यय';

  @override
  String get posInterjection => 'केवलप्रयोगी अव्यय';

  @override
  String get posNoun => 'नाम';

  @override
  String get posPreposition => 'शब्दयोगी अव्यय';

  @override
  String get posPronoun => 'सर्वनाम';

  @override
  String get posVerb => 'क्रियापद';

  @override
  String get practiceModeTitle => 'सराव';

  @override
  String get practiceWordsOnly => 'फक्त शब्दांचा सराव करा';

  @override
  String progress(int current, int total) {
    return 'प्रगती: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'अलीकडील $count आयटम पहा';
  }

  @override
  String recognitionFailed(String error) {
    return 'आवाज ओळख अयशस्वी: $error';
  }

  @override
  String get recognized => 'ओळख पूर्ण';

  @override
  String get recognizedText => 'ओळखले जाणारे उच्चारण:';

  @override
  String get recordDeleted => 'रेकॉर्ड यशस्वीरित्या काढले';

  @override
  String get refresh => 'रीफ्रेश';

  @override
  String get reset => 'रीसेट करा';

  @override
  String get resetPracticeHistory => 'सरावाचा इतिहास रीसेट करा';

  @override
  String get retry => 'पुन्हा प्रयत्न करा?';

  @override
  String get reviewAll => 'सर्व पुनरावलोकन करा';

  @override
  String reviewCount(int count) {
    return '$count वेळा पुनरावलोकन केले';
  }

  @override
  String get reviewModeTitle => 'पुनरावलोकन';

  @override
  String get roleAi => 'एआय';

  @override
  String get roleThirdParty => 'तृतीय पक्ष';

  @override
  String get roleUser => 'वापरकर्ता';

  @override
  String get save => 'सेव्ह करा';

  @override
  String get saveData => 'जतन करा';

  @override
  String saveFailed(String error) {
    return 'जतन करणे अयशस्वी: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'शोध मोडमधून भाषांतरे जतन करा';

  @override
  String get saved => 'जतन केले';

  @override
  String get saving => 'जतन करत आहे...';

  @override
  String score(String score) {
    return 'अचूकता: $score%';
  }

  @override
  String get scoreLabel => 'गुण';

  @override
  String get search => 'शोधा';

  @override
  String get searchConditions => 'शोध अटी';

  @override
  String get searchSentenceHint => 'वाक्य शोधा...';

  @override
  String get searchWordHint => 'शब्द शोधा...';

  @override
  String get sectionSentence => 'वाक्य विभाग';

  @override
  String get sectionSentences => 'वाक्ये';

  @override
  String get sectionWord => 'शब्द विभाग';

  @override
  String get sectionWords => 'शब्द';

  @override
  String get selectExistingSubject => 'विद्यमान शीर्षक निवडा';

  @override
  String get selectMaterialPrompt => 'कृपया अभ्यास साहित्य निवडा';

  @override
  String get selectMaterialSet => 'अभ्यास साहित्य सेट निवडा';

  @override
  String get selectPOS => 'शब्दाचा भाग (Part of Speech) निवडा';

  @override
  String get selectParticipants => 'सहभागी निवडा';

  @override
  String get selectSentenceType => 'वाक्याचा प्रकार निवडा';

  @override
  String get selectStudyMaterial => 'साहित्य निवडा';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'वाक्य';

  @override
  String get signUp => 'साइन अप';

  @override
  String get similarTextFound => 'समान मजकूर सापडला';

  @override
  String get skip => 'सोडून द्या';

  @override
  String get source => 'स्रोत:';

  @override
  String get sourceLanguage => 'स्रोत भाषा';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'आता बोला!';

  @override
  String get speaker => 'वक्ता';

  @override
  String get speakerSelect => 'वक्ता निवडा';

  @override
  String get speakingPractice => 'बोलण्याचा सराव';

  @override
  String get startChat => 'चॅट सुरू करा';

  @override
  String get startPractice => 'सराव सुरू करा';

  @override
  String get startTutorial => 'टूर सुरू करा';

  @override
  String get startWarning => 'चेतावणी';

  @override
  String get startsWith => 'या अक्षराने सुरू होणारे';

  @override
  String get statusCheckEmail => 'कृपया ईमेल तपासा आणि प्रमाणीकरण पूर्ण करा.';

  @override
  String statusDownloading(Object name) {
    return '$name डाउनलोड करत आहे...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'आयात अयशस्वी: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name आयात करणे पूर्ण झाले';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'लॉगिन रद्द केले.';

  @override
  String statusLoginFailed(Object error) {
    return 'लॉगिन अयशस्वी: $error';
  }

  @override
  String get statusLoginSuccess => 'लॉगिन यशस्वी झाले.';

  @override
  String get statusLogoutSuccess => 'लॉगआउट झाले.';

  @override
  String statusSignUpFailed(Object error) {
    return 'साइन अप अयशस्वी: $error';
  }

  @override
  String get statusSigningUp => 'साइन अप करत आहे...';

  @override
  String get stopPractice => 'थांबा';

  @override
  String get studyComplete => 'अभ्यास पूर्ण';

  @override
  String studyRecords(int count) {
    return 'रेकॉर्ड्स ($count)';
  }

  @override
  String get styleFormal => 'औपचारिक';

  @override
  String get styleInformal => 'अनौपचारिक';

  @override
  String get stylePolite => 'नम्र';

  @override
  String get styleSlang => 'slang';

  @override
  String get subject => 'विषय:';

  @override
  String get swapLanguages => 'भाषा बदला';

  @override
  String get switchToAi => 'AI मोडवर स्विच करा';

  @override
  String get switchToPartner => 'भागीदार मोडवर स्विच करा';

  @override
  String get syncingData => 'डेटा सिंक करत आहे...';

  @override
  String get tabConversation => 'संभाषण';

  @override
  String tabReview(int count) {
    return 'पुनरावलोकन ($count)';
  }

  @override
  String get tabSentence => 'वाक्य';

  @override
  String get tabSpeaking => 'बोलणे';

  @override
  String tabStudyMaterial(int count) {
    return 'साहित्य ($count)';
  }

  @override
  String get tabWord => 'शब्द';

  @override
  String get tagFormal => 'आदरार्थी';

  @override
  String get tagSelection => 'टॅग निवड';

  @override
  String get targetLanguage => 'लक्ष्य भाषा';

  @override
  String get targetLanguageFilter => 'लक्ष्य भाषा फिल्टर:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'उत्तर उघड होण्यापूर्वी विचार करण्यासाठी वेळ.';

  @override
  String get thinkingTimeInterval => 'विचार करण्याची वेळ';

  @override
  String get timeUp => 'वेळ संपली!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'शीर्षक टॅग (संग्रह)';

  @override
  String get tooltipDecrease => 'कमी करा';

  @override
  String get tooltipIncrease => 'वाढवा';

  @override
  String get tooltipSearch => 'शोधा';

  @override
  String get tooltipSpeaking => 'बोलणे';

  @override
  String get tooltipStudyReview => 'अभ्यास+पुनरावलोकन';

  @override
  String totalRecords(int count) {
    return 'एकूण $count नोंदी (संपूर्ण पहा)';
  }

  @override
  String get translate => 'भाषांतर';

  @override
  String get translating => 'भाषांतर करत आहे...';

  @override
  String get translation => 'भाषांतर';

  @override
  String get translationComplete => 'भाषांतर पूर्ण (जतन करणे आवश्यक)';

  @override
  String translationFailed(String error) {
    return 'भाषांतर अयशस्वी: $error';
  }

  @override
  String get translationLimitExceeded => 'भाषांतर मर्यादा ओलांडली';

  @override
  String get translationLimitMessage =>
      'तुम्ही तुमची दैनंदिन मोफत भाषांतर मर्यादा (5 वेळा) वापरली आहे.\\n\\nतुम्ही जाहिरात पाहून 5 वेळा त्वरित रिचार्ज करू इच्छिता?';

  @override
  String get translationLoaded => 'जतन केलेले भाषांतर लोड केले';

  @override
  String get translationRefilled => 'भाषांतर ५ वेळा रिचार्ज झाले!';

  @override
  String get translationResultHint => 'भाषांतर निकाल - संपादन करण्यायोग्य';

  @override
  String get tryAgain => 'पुन्हा प्रयत्न करा';

  @override
  String get tutorialAiChatDesc =>
      'AI व्यक्तिरेखा (Personas) सोबत प्रत्यक्ष संभाषणाचा सराव करा.';

  @override
  String get tutorialAiChatTitle => 'AI चॅटिंग';

  @override
  String get tutorialContextDesc =>
      'समान वाक्ये वेगळी करण्यासाठी संदर्भ (उदा. सकाळ) जोडा.';

  @override
  String get tutorialContextTitle => 'संदर्भ टॅग';

  @override
  String get tutorialLangSettingsDesc =>
      'भाषांतर करण्यासाठी मूळ आणि लक्ष्य भाषा सेट करा.';

  @override
  String get tutorialLangSettingsTitle => 'भाषा सेटिंग्ज';

  @override
  String get tutorialM1ToggleDesc =>
      'येथे शब्द आणि वाक्य मोड दरम्यान स्विच करा.';

  @override
  String get tutorialM1ToggleTitle => 'शब्द/वाक्य मोड';

  @override
  String get tutorialM2DropdownDesc => 'अभ्यास साहित्य निवडा.';

  @override
  String get tutorialM2ImportDesc => 'डिव्हाइस फोल्डरमधून JSON फाइल आयात करा.';

  @override
  String get tutorialM2ListDesc =>
      'तुमची कार्ड तपासा आणि त्यांना पलटवा. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'अभ्यास सूची';

  @override
  String get tutorialM2SearchDesc =>
      'जतन केलेले शब्द आणि वाक्ये शोधा आणि त्वरित मिळवा.';

  @override
  String get tutorialM2SelectDesc =>
      'साहित्य निवडा किंवा \'सर्व पुनरावलोकन\' वर जा.';

  @override
  String get tutorialM2SelectTitle => 'निवडा आणि फिल्टर';

  @override
  String get tutorialM3IntervalDesc =>
      'वाक्यांमधील प्रतीक्षा वेळ समायोजित करा.';

  @override
  String get tutorialM3IntervalTitle => 'मध्यांतर';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'बोलण्याच्या सरावासाठी संच निवडा.';

  @override
  String get tutorialM3SelectTitle => 'साहित्य निवडा';

  @override
  String get tutorialM3StartDesc => 'सुरू करण्यासाठी प्ले टॅप करा.';

  @override
  String get tutorialM3StartTitle => 'सुरू करा';

  @override
  String get tutorialM3WordsDesc =>
      'चेक केल्यास, फक्त जतन केलेल्या शब्दांचा सराव करा.';

  @override
  String get tutorialM3WordsTitle => 'शब्द सराव';

  @override
  String get tutorialMicDesc => 'व्हॉइस इनपुटसाठी माईक बटण टॅप करा.';

  @override
  String get tutorialMicTitle => 'व्हॉइस इनपुट';

  @override
  String get tutorialSaveDesc => 'तुमचे भाषांतर जतन करा.';

  @override
  String get tutorialSaveTitle => 'जतन करा';

  @override
  String get tutorialSwapDesc => 'मी माझी भाषा शिकत असलेल्या भाषेशी बदलतो.';

  @override
  String get tutorialTabDesc =>
      'तुम्ही येथे तुमची इच्छित शिकण्याची पद्धत निवडू शकता.';

  @override
  String get tutorialTapToContinue => 'सुरू ठेवण्यासाठी टॅप करा';

  @override
  String get tutorialTransDesc =>
      'तुमचा मजकूर भाषांतरित करण्यासाठी येथे टॅप करा.';

  @override
  String get tutorialTransTitle => 'भाषांतर';

  @override
  String get typeExclamation => 'उद्गारवाचक वाक्य';

  @override
  String get typeImperative => 'आज्ञार्थी वाक्य';

  @override
  String get typeQuestion => 'प्रश्नार्थक वाक्य';

  @override
  String get typeStatement => 'विधानार्थी वाक्य';

  @override
  String get usageLimitTitle => 'वापर मर्यादा ओलांडली';

  @override
  String get useExistingText => 'विद्यमान वापरा';

  @override
  String get viewOnlineGuide => 'ऑनलाइन मार्गदर्शक पहा';

  @override
  String get voluntaryTranslations => 'स्वैच्छिक भाषांतर';

  @override
  String get watchAdAndRefill => 'जाहिरात पाहून रिचार्ज करा (+5 वेळा)';

  @override
  String get word => 'शब्द';

  @override
  String get wordDefenseDesc =>
      'शत्रू पोहोचण्यापूर्वी शब्द बोलून आपल्या तळाचे संरक्षण करा.';

  @override
  String get wordDefenseTitle => 'शब्द संरक्षण';

  @override
  String get wordModeLabel => 'शब्द मोड';

  @override
  String get yourPronunciation => 'तुमचे उच्चार';

  @override
  String get ttsUnsupportedNatively =>
      'हे डिव्हाइस मूळतः या भाषेतील आवाज आउटपुटला सपोर्ट करत नाही.';

  @override
  String get welcomeTitle => 'Talkie मध्ये आपले स्वागत आहे!';

  @override
  String get welcomeDesc =>
      'Talkie ८० हून अधिक भाषांना सपोर्ट करते आणि प्रवाशांसाठी स्मार्ट भाषांतर साधन आहे. AI चॅटद्वारे तुमचे बोलण्याचे कौशल्य वाढवा!';

  @override
  String get welcomeButton => 'सुरू करा';
}

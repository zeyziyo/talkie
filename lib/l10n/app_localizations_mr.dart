// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

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
  String get helpJsonDesc => 'मोड 3 मध्ये आयात करण्यासाठी, JSON तयार करा:';

  @override
  String get helpTourDesc =>
      'मुख्य वैशिष्ट्ये शिकण्यासाठी परस्परसंवादीूर सुरू करा.';

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
  String get tutorialM2ListDesc => 'तुमची कार्ड तपासा आणि त्यांना पलटवा.';

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
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

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
  String get materialInfo => 'Material Info';

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
  String get helpJsonDesc =>
      'मोड 3 में सामग्री आयात करने के लिए, निम्न संरचना के साथ JSON फ़ाइल बनाएं:';

  @override
  String get helpTourDesc =>
      'मुख्य विशेषताओं को जानने के लिए इंटरैक्टिव टूर शुरू करें.';

  @override
  String get startTutorial => 'टूर शुरू करें';

  @override
  String get tutorialMicTitle => 'वॉइस इनपुट';

  @override
  String get tutorialMicDesc =>
      'वॉइस इनपुट शुरू करने के लिए माइक बटन टैप करें.';

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
      'अपने सहेजे गए कार्ड देखें और उत्तर देखने के लिए उन्हें पलटें.';

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
}

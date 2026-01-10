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
  String get materialInfo => 'Material Info';

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
      'முக்கிய அம்சங்களைக் கற்க ஊடாடும் சுற்றுலாவைத் தொடங்கவும்.';

  @override
  String get startTutorial => 'சுற்றுலாவைத் தொடங்கு';

  @override
  String get tutorialMicTitle => 'குரல் உள்ளீடு';

  @override
  String get tutorialMicDesc => 'குரல் உள்ளீட்டிற்கு மைக் பொத்தானைத் தட்டவும்.';

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
      'உங்கள் கார்டுகளைச் சரிபார்த்து அவற்றைத் திருப்பவும்.';

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
}

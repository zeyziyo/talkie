// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Mapitio ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Nyenzo ($count)';
  }

  @override
  String get mode2Title => 'Mapitio';

  @override
  String get search => 'Tafuta';

  @override
  String get translate => 'Tafsiri';

  @override
  String get listen => 'Sikiliza';

  @override
  String get saveData => 'Hifadhi';

  @override
  String get saved => 'Imehifadhiwa';

  @override
  String get delete => 'Futa';

  @override
  String get materialInfo => 'Maelezo ya nyenzo';

  @override
  String get cancel => 'Ghairi';

  @override
  String get confirm => 'Sawa';

  @override
  String get refresh => 'Onyesha upya';

  @override
  String studyRecords(int count) {
    return 'Rekodi ($count)';
  }

  @override
  String get targetLanguageFilter => 'Kichujio cha Lugha:';

  @override
  String get noRecords => 'Hakuna rekodi kwa lugha iliyochaguliwa';

  @override
  String get saveTranslationsFromSearch =>
      'Hifadhi tafsiri kutoka kwa hali ya utafutaji';

  @override
  String get flip => 'Geuza';

  @override
  String get hide => 'Ficha';

  @override
  String get deleteRecord => 'Futa Rekodi';

  @override
  String get confirmDelete => 'Una uhakika unataka kufuta rekodi hii?';

  @override
  String get recordDeleted => 'Rekodi imefutwa';

  @override
  String deleteFailed(String error) {
    return 'Kufuta kumeshindikana: $error';
  }

  @override
  String get importJsonFile => 'Leta JSON';

  @override
  String get importing => 'inaleta...';

  @override
  String get importComplete => 'Kuleta Kukamilika';

  @override
  String get importFailed => 'Kuleta Kumeshindikana';

  @override
  String importFile(String fileName) {
    return 'Faili: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Jumla: $count';
  }

  @override
  String importAdded(int count) {
    return 'Imeongezwa: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Imerukwa: $count';
  }

  @override
  String get errors => 'Makosa:';

  @override
  String get error => 'Kosa';

  @override
  String importErrorMessage(String error) {
    return 'Imeshindwa kuleta faili:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Chagua Nyenzo';

  @override
  String get subject => 'Somo:';

  @override
  String get source => 'Chanzo:';

  @override
  String get file => 'Faili:';

  @override
  String progress(int current, int total) {
    return 'Maendeleo: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Tafadhali leta faili ya JSON';

  @override
  String get selectMaterialPrompt => 'Tafadhali chagua nyenzo za kusoma';

  @override
  String get studyComplete => 'Imesomwa';

  @override
  String get markAsStudied => 'Weka alama imesomwa';

  @override
  String get listening => 'Inasikiliza...';

  @override
  String get recognized => 'Utambuzi umekamilika';

  @override
  String recognitionFailed(String error) {
    return 'Utambuzi wa sauti umeshindikana: $error';
  }

  @override
  String get checking => 'Inaangalia...';

  @override
  String get translating => 'Inatafsiri...';

  @override
  String get translationComplete => 'Tafsiri imekamilika (inahitaji kuhifadhi)';

  @override
  String get translationLoaded => 'Tafsiri iliyohifadhiwa imepakiwa';

  @override
  String translationFailed(String error) {
    return 'Tafsiri imeshindikana: $error';
  }

  @override
  String get enterTextToTranslate => 'Weka maandishi ya kutafsiri';

  @override
  String get saving => 'Inahifadhi...';

  @override
  String get noTranslationToSave => 'Hakuna tafsiri ya kuhifadhi';

  @override
  String saveFailed(String error) {
    return 'Kuhifadhi kumeshindikana: $error';
  }

  @override
  String get playing => 'Inacheza...';

  @override
  String get noTextToPlay => 'Hakuna maandishi ya kucheza';

  @override
  String playbackFailed(String error) {
    return 'Kucheza kumeshindikana: $error';
  }

  @override
  String get sourceLanguage => 'Lugha Chanzo';

  @override
  String get targetLanguage => 'Lugha Lengwa';

  @override
  String get similarTextFound => 'Maandishi yanayofanana yamepatikana';

  @override
  String get useExistingText => 'Tumia Iliyopo';

  @override
  String get createNew => 'Unda Mpya';

  @override
  String reviewCount(int count) {
    return 'Imepitiwa mara $count';
  }

  @override
  String get tabSpeaking => 'Kuzungumza';

  @override
  String get speakingPractice => 'Mazoezi ya Kuzungumza';

  @override
  String intervalSeconds(int seconds) {
    return 'Muda: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Matamshi Yako';

  @override
  String get correctAnswer => 'Jibu Sahihi';

  @override
  String score(String score) {
    return 'Usahihi: $score%';
  }

  @override
  String get perfect => 'Nzuri sana!';

  @override
  String get good => 'Nzuri';

  @override
  String get tryAgain => 'Jaribu tena';

  @override
  String get startPractice => 'Anza Mazoezi';

  @override
  String get stopPractice => 'Simamisha';

  @override
  String get helpTitle => 'Msaada & Mwongozo';

  @override
  String get helpTabModes => 'Njia';

  @override
  String get helpTabJson => 'Muundo wa JSON';

  @override
  String get helpTabTour => 'Ziara';

  @override
  String get helpMode1Desc => 'Tambua sauti, tafsiri na sikiliza matokeo.';

  @override
  String get helpMode1Details =>
      '• Sauti: Gonga maikrofoni kuanza/kusimamisha\n• Maandishi: Andika moja kwa moja kwa kutafsiri\n• Utafutaji Kiotomatiki: Inagundua sentensi zinazofanana\n• Tafsiri: Kitufe cha tafsiri ya papo hapo\n• Sikiliza: Aikoni ya spika kwa TTS\n• Hifadhi: Inaongeza kwenye historia\n• Futa: Weka upya yote';

  @override
  String get helpMode2Desc =>
      'Pitia sentensi zilizohifadhiwa na tafsiri iliyofichwa.';

  @override
  String get helpMode2Details =>
      '• Chagua: Chagua seti au \'Pitia Zote\'\n• Geuza: \'Onyesha/Ficha\' tafsiri\n• Sikiliza: Cheza TTS kwa sentensi\n• Weka alama: Tiki (V) kwa zilizokamilika\n• Futa: Bonyeza kwa muda mrefu kufuta\n• Kichujio: Tazama zote au kwa nyenzo';

  @override
  String get helpMode3Desc =>
      'Fanya mazoezi ya kuzungumza kwa kusikiliza na kurudia (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Chagua: Chagua kifurushi\n• Muda: [-] [+] muda wa kusubiri (3s-60s)\n• Anza/Simama: Dhibiti kikao\n• Zungumza: Sikiliza na rudia\n• Alama: Usahihi (0-100)\n• Jaribu tena: Kitufe ikiwa sauti haigunduliwi';

  @override
  String get helpJsonDesc => 'Kwa kuleta katika Hali 3, unda JSON:';

  @override
  String get helpTourDesc => 'Anza ziara ya maingiliano kujifunza vipengele.';

  @override
  String get startTutorial => 'Anza Ziara';

  @override
  String get tutorialMicTitle => 'Ingizo la Sauti';

  @override
  String get tutorialMicDesc => 'Gonga maikrofoni kwa ingizo la sauti.';

  @override
  String get tutorialTabDesc =>
      'Unaweza kuchagua hali ya kujifunza unayotaka hapa.';

  @override
  String get tutorialTapToContinue => 'Gusa ili kuendelea';

  @override
  String get tutorialTransTitle => 'Tafsiri';

  @override
  String get tutorialTransDesc => 'Gonga hapa kutafsiri maandishi yako.';

  @override
  String get tutorialSaveTitle => 'Hifadhi';

  @override
  String get tutorialSaveDesc => 'Hifadhi tafsiri yako.';

  @override
  String get tutorialM2SelectTitle => 'Chagua & Kichujio';

  @override
  String get tutorialM2SelectDesc => 'Chagua nyenzo au \'Pitia Zote\'.';

  @override
  String get tutorialM2ListTitle => 'Orodha ya Kusoma';

  @override
  String get tutorialM2ListDesc => 'Angalia kadi zako na uzigeuze.';

  @override
  String get tutorialM3SelectTitle => 'Chagua Nyenzo';

  @override
  String get tutorialM3SelectDesc => 'Chagua seti kwa mazoezi ya kuzungumza.';

  @override
  String get tutorialM3IntervalTitle => 'Muda';

  @override
  String get tutorialM3IntervalDesc => 'Rekebisha muda wa kusubiri.';

  @override
  String get tutorialM3StartTitle => 'Anza';

  @override
  String get tutorialM3StartDesc => 'Bofya cheza ili kuanza.';

  @override
  String get startWarning => 'Onyo';

  @override
  String get noVoiceDetected => 'Sauti haijagunduliwa';

  @override
  String get tooltipSearch => 'Tafuta';

  @override
  String get tooltipStudyReview => 'Kusoma+Kurudia';

  @override
  String get tooltipSpeaking => 'Kuzungumza';

  @override
  String get tooltipDecrease => 'Punguza';

  @override
  String get tooltipIncrease => 'Ongeza';

  @override
  String get languageSettings => 'Mipangilio ya lugha';
}

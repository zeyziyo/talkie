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
  String get saveTranslationsFromSearch => 'Hifadhi tafsiri kutoka kwa hali ya utafutaji';

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
  String get helpMode1Details => '• Sauti: Gonga maikrofoni kuanza/kusimamisha\n• Maandishi: Andika moja kwa moja kwa kutafsiri\n• Utafutaji Kiotomatiki: Inagundua sentensi zinazofanana\n• Tafsiri: Kitufe cha tafsiri ya papo hapo\n• Sikiliza: Aikoni ya spika kwa TTS\n• Hifadhi: Inaongeza kwenye historia\n• Futa: Weka upya yote';

  @override
  String get helpMode2Desc => 'Pitia sentensi zilizohifadhiwa na tafsiri iliyofichwa.';

  @override
  String get helpMode2Details => '• Chagua: Chagua seti au \'Pitia Zote\'\n• Geuza: \'Onyesha/Ficha\' tafsiri\n• Sikiliza: Cheza TTS kwa sentensi\n• Weka alama: Tiki (V) kwa zilizokamilika\n• Futa: Bonyeza kwa muda mrefu kufuta\n• Kichujio: Tazama zote au kwa nyenzo';

  @override
  String get helpMode3Desc => 'Fanya mazoezi ya kuzungumza kwa kusikiliza na kurudia (Shadowing).';

  @override
  String get helpMode3Details => '• Chagua: Chagua kifurushi\n• Muda: [-] [+] muda wa kusubiri (3s-60s)\n• Anza/Simama: Dhibiti kikao\n• Zungumza: Sikiliza na rudia\n• Alama: Usahihi (0-100)\n• Jaribu tena: Kitufe ikiwa sauti haigunduliwi';

  @override
  String get helpJsonDesc => 'Kwa kuleta katika Hali 3, unda JSON:';

  @override
  String get helpTourDesc => 'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Anza Ziara';

  @override
  String get tutorialMicTitle => 'Ingizo la Sauti';

  @override
  String get tutorialMicDesc => 'Gonga maikrofoni kwa ingizo la sauti.';

  @override
  String get tutorialTabDesc => 'Unaweza kuchagua hali ya kujifunza unayotaka hapa.';

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
  String get tutorialM2ListDesc => 'Angalia kadi zako na uzigeuze. (Long-press to delete)';

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

  @override
  String get tutorialM2DropdownDesc => 'Chagua nyenzo za kusoma.';

  @override
  String get tutorialM2ImportDesc => 'Leta faili ya JSON kutoka kwenye folda ya kifaa.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc => 'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'Lebo ya Muktadha';

  @override
  String get tutorialContextDesc => 'Ongeza muktadha (k.m. Asubuhi) ili kutofautisha sentensi zinazofanana.';

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
  String get wordDefenseDesc => 'Defend your base by speaking words correctly before enemies reach you.';

  @override
  String get dialogueQuestTitle => 'Dialogue Quest';

  @override
  String get dialogueQuestDesc => 'Roleplay in scenarios. Choose the right response and speak it aloud.';

  @override
  String get tutorialM1ToggleDesc => 'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Word';

  @override
  String get labelSentence => 'Sentence';

  @override
  String get contextTagLabel => 'Context/Situation (Optional) - Ex: Morning greeting, polite form';

  @override
  String get contextTagHint => 'Describe situation for easier classification later';

  @override
  String get translationLimitExceeded => 'Translation Limit Exceeded';

  @override
  String get translationLimitMessage => 'You have used all your free daily translations (5). Watch an ad to refill 5 immediately?';

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
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc => 'Check this to practice only your saved words.';

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
  String get basicWords => 'Basic Words';

  @override
  String get basicSentences => 'Basic Sentences';

  @override
  String get selectMaterialSet => 'Select Study Material Set';

  @override
  String get sectionWords => 'Words';

  @override
  String get sectionSentences => 'Sentences';

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
  String get tutorialSwapDesc => 'Ninabadilisha lugha yangu na lugha ninayojifunza.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3ResetDesc => 'Clear your progress and accuracy scores to start fresh.';

  @override
  String get menuSelectMaterialSet => 'Chagua nyenzo ya kujifunzia';

  @override
  String get sectionWord => 'Sehemu ya maneno';

  @override
  String get sectionSentence => 'Sehemu ya sentensi';

  @override
  String get tabWord => 'neno';

  @override
  String get tabSentence => 'sentensi';

  @override
  String get errorProfanity => 'Translation cannot be processed due to profanity.';

  @override
  String get errorHateSpeech => 'Translation cannot be processed due to hate speech.';

  @override
  String get errorSexualContent => 'Translation cannot be processed due to sexual content.';

  @override
  String get errorOtherSafety => 'Translation was blocked by AI safety policy.';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }
}

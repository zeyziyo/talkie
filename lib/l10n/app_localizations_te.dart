// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

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
  String get helpJsonDesc => 'మోడ్ 3లో దిగుమతి చేయడానికి, JSONని సృష్టించండి:';

  @override
  String get helpTourDesc =>
      'ముఖ్య లక్షణాలను నేర్చుకోవడానికి ఇంటరాక్టివ్ టూర్‌ను ప్రారంభించండి.';

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
      'మీ కార్డులను తనిఖీ చేయండి మరియు వాటిని తిప్పండి.';

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
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';
}

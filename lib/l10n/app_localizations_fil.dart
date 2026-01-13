// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Balik-aral ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materyales ($count)';
  }

  @override
  String get mode2Title => 'Balik-aral';

  @override
  String get search => 'Hanapin';

  @override
  String get translate => 'Isalin';

  @override
  String get listen => 'Makinig';

  @override
  String get saveData => 'I-save';

  @override
  String get saved => 'Na-save';

  @override
  String get delete => 'Tanggalin';

  @override
  String get materialInfo => 'Impormasyon ng materyal';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'I-refresh';

  @override
  String studyRecords(int count) {
    return 'Mga Tala ($count)';
  }

  @override
  String get targetLanguageFilter => 'Target na Wika:';

  @override
  String get noRecords => 'Walang tala para sa napiling wika';

  @override
  String get saveTranslationsFromSearch =>
      'I-save ang mga pagsasalin mula sa search mode';

  @override
  String get flip => 'I-flip';

  @override
  String get hide => 'Itago';

  @override
  String get deleteRecord => 'Tanggalin ang Tala';

  @override
  String get confirmDelete => 'Sigurado ka bang gusto mong tanggalin ito?';

  @override
  String get recordDeleted => 'Matagumpay na natanggal ang tala';

  @override
  String deleteFailed(String error) {
    return 'Nabigong tanggalin: $error';
  }

  @override
  String get importJsonFile => 'Mag-import ng JSON';

  @override
  String get importing => 'Nag-iimport...';

  @override
  String get importComplete => 'Tapos na ang Pag-import';

  @override
  String get importFailed => 'Nabigong Mag-import';

  @override
  String importFile(String fileName) {
    return 'File: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Kabuuan: $count';
  }

  @override
  String importAdded(int count) {
    return 'Idinagdag: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Nilaktawan: $count';
  }

  @override
  String get errors => 'Mga Error:';

  @override
  String get error => 'Error';

  @override
  String importErrorMessage(String error) {
    return 'Nabigong i-import ang file:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Pumili ng Materyales';

  @override
  String get subject => 'Paksa:';

  @override
  String get source => 'Pinagmulan:';

  @override
  String get file => 'File:';

  @override
  String progress(int current, int total) {
    return 'Progreso: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Mangyaring mag-import ng JSON file';

  @override
  String get selectMaterialPrompt =>
      'Mangyaring pumili ng materyales sa pag-aaral';

  @override
  String get studyComplete => 'Napag-aralan na';

  @override
  String get markAsStudied => 'Markahan bilang Napag-aralan';

  @override
  String get listening => 'Nakikinig...';

  @override
  String get recognized => 'Natapos ang pagkilala';

  @override
  String recognitionFailed(String error) {
    return 'Nabigo ang pagkilala sa boses: $error';
  }

  @override
  String get checking => 'Sinusuri...';

  @override
  String get translating => 'Nagsasalin...';

  @override
  String get translationComplete =>
      'Tapos na ang pagsasalin (kailangang i-save)';

  @override
  String get translationLoaded => 'Na-load ang naka-save na pagsasalin';

  @override
  String translationFailed(String error) {
    return 'Nabigo ang pagsasalin: $error';
  }

  @override
  String get enterTextToTranslate => 'Ipasok ang teksto upang isalin';

  @override
  String get saving => 'Nagsa-save...';

  @override
  String get noTranslationToSave => 'Walang pagsasalin na i-save';

  @override
  String saveFailed(String error) {
    return 'Nabigong i-save: $error';
  }

  @override
  String get playing => 'Nagpe-play...';

  @override
  String get noTextToPlay => 'Walang teksto na i-play';

  @override
  String playbackFailed(String error) {
    return 'Nabigo ang pag-play: $error';
  }

  @override
  String get sourceLanguage => 'Pinagmulang Wika';

  @override
  String get targetLanguage => 'Target na Wika';

  @override
  String get similarTextFound => 'May natagpuang katulad na teksto';

  @override
  String get useExistingText => 'Gamitin ang Umiiral';

  @override
  String get createNew => 'Lumikha ng Bago';

  @override
  String reviewCount(int count) {
    return 'Binago nang $count beses';
  }

  @override
  String get tabSpeaking => 'Pagsasalita';

  @override
  String get speakingPractice => 'Pagsasanay sa Pagsasalita';

  @override
  String intervalSeconds(int seconds) {
    return 'Agwat: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Ang iyong Pagbigkas';

  @override
  String get correctAnswer => 'Tamang Sagot';

  @override
  String score(String score) {
    return 'Kawastuhan: $score%';
  }

  @override
  String get perfect => 'Perpekto!';

  @override
  String get good => 'Mahusay';

  @override
  String get tryAgain => 'Subukan muli';

  @override
  String get startPractice => 'Simulan ang Pagsasanay';

  @override
  String get stopPractice => 'Itigil';

  @override
  String get helpTitle => 'Tulong at Gabay';

  @override
  String get helpTabModes => 'Mga Mode';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabTour => 'Pasyal';

  @override
  String get helpMode1Desc =>
      'Kilalanin ang boses, isalin at pakinggan ang resulta.';

  @override
  String get helpMode1Details =>
      '• Boses: I-tap ang mikropono para magsimula/huminto\n• Teksto: Mag-type nang direkta para isalin\n• Auto-Search: Nakikita ang mga katulad na pangungusap\n• Isalin: Pindutan para sa agarang pagsasalin\n• Makinig: Speaker icon para sa TTS\n• I-save: Nagdaragdag sa kasaysayan\n• I-clear: I-reset ang lahat';

  @override
  String get helpMode2Desc => 'Balik-aralan ang mga na-save na pangungusap.';

  @override
  String get helpMode2Details =>
      '• Pumili: Pumili ng set o \'Balik-aralan Lahat\'\n• I-flip: \'Ipakita/Itago\' ang pagsasalin\n• Makinig: I-play ang TTS para sa pangungusap\n• Markahan: Tsek (V) para sa tapos na\n• Tanggalin: Pindutin nang matagal ang card para tanggalin\n• Filter: Tingnan lahat o ayon sa materyales';

  @override
  String get helpMode3Desc =>
      'Magsanay magsalita sa pamamagitan ng pakikinig at pag-uulit (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Pumili: Pumili ng package\n• Agwat: [-] [+] oras ng paghihintay (3s-60s)\n• Simulan/Itigil: Kontrolin ang sesyon\n• Magsalita: Makinig at ulitin\n• Marka: Kawastuhan (0-100)\n• Subukan muli: Button kung hindi makita ang boses';

  @override
  String get helpJsonDesc => 'Para sa pag-import sa Mode 3, lumikha ng JSON:';

  @override
  String get helpTourDesc =>
      'Simulan ang interactive na pasyal para matutunan ang mga feature.';

  @override
  String get startTutorial => 'Simulan ang Pasyal';

  @override
  String get tutorialMicTitle => 'Voice Input';

  @override
  String get tutorialMicDesc => 'I-tap ang mic button para sa voice input.';

  @override
  String get tutorialTabDesc =>
      'Maaari mong piliin ang nais na mode ng pag-aaral dito.';

  @override
  String get tutorialTapToContinue => 'I-tap upang magpatuloy';

  @override
  String get tutorialTransTitle => 'Isalin';

  @override
  String get tutorialTransDesc => 'I-tap dito para isalin ang iyong teksto.';

  @override
  String get tutorialSaveTitle => 'I-save';

  @override
  String get tutorialSaveDesc =>
      'I-save ang iyong pagsasalin sa mga tala ng pag-aaral.';

  @override
  String get tutorialM2SelectTitle => 'Pumili at Mag-filter';

  @override
  String get tutorialM2SelectDesc =>
      'Pumili ng materyales o lumipat sa \'Balik-aralan Lahat\'.';

  @override
  String get tutorialM2ListTitle => 'Listahan ng Pag-aaral';

  @override
  String get tutorialM2ListDesc =>
      'Suriin ang iyong mga na-save na card at i-flip ang mga ito.';

  @override
  String get tutorialM3SelectTitle => 'Pumili ng Materyales';

  @override
  String get tutorialM3SelectDesc =>
      'Pumili ng set para sa pagsasanay sa pagsasalita.';

  @override
  String get tutorialM3IntervalTitle => 'Agwat';

  @override
  String get tutorialM3IntervalDesc =>
      'Ayusin ang oras ng paghihintay sa pagitan ng mga pangungusap.';

  @override
  String get tutorialM3StartTitle => 'Simulan';

  @override
  String get tutorialM3StartDesc => 'I-tap ang play para magsimula.';

  @override
  String get startWarning => 'Babala';

  @override
  String get noVoiceDetected => 'Walang boses na nakita';

  @override
  String get tooltipSearch => 'Maghanap';

  @override
  String get tooltipStudyReview => 'Pag-aaral+Pagsusuri';

  @override
  String get tooltipSpeaking => 'Pagsasalita';

  @override
  String get tooltipDecrease => 'Bawasan';

  @override
  String get tooltipIncrease => 'Dagdagan';

  @override
  String get languageSettings => 'Mga setting ng wika';

  @override
  String get tutorialM2DropdownDesc => 'Pumili ng mga materyales sa pag-aaral.';

  @override
  String get tutorialM2ImportDesc =>
      'Mag-import ng JSON file mula sa folder ng device.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';
}

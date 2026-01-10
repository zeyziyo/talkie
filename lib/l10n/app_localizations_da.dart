// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Gennemgang ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materiale ($count)';
  }

  @override
  String get mode2Title => 'Gennemgang';

  @override
  String get search => 'Søg';

  @override
  String get translate => 'Oversæt';

  @override
  String get listen => 'Lyt';

  @override
  String get saveData => 'Gem';

  @override
  String get saved => 'Gemt';

  @override
  String get delete => 'Slet';

  @override
  String get materialInfo => 'Materialeinfo';

  @override
  String get cancel => 'Annuller';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Opdater';

  @override
  String studyRecords(int count) {
    return 'Optegnelser ($count)';
  }

  @override
  String get targetLanguageFilter => 'Målsprog Filter:';

  @override
  String get noRecords => 'Ingen optegnelser for valgt sprog';

  @override
  String get saveTranslationsFromSearch => 'Gem oversættelser fra søgetilstand';

  @override
  String get flip => 'Vend';

  @override
  String get hide => 'Skjul';

  @override
  String get deleteRecord => 'Slet Optegnelse';

  @override
  String get confirmDelete => 'Er du sikker på at slette denne optegnelse?';

  @override
  String get recordDeleted => 'Optegnelse slettet';

  @override
  String deleteFailed(String error) {
    return 'Sletning fejlede: $error';
  }

  @override
  String get importJsonFile => 'Importer JSON';

  @override
  String get importing => 'Importerer...';

  @override
  String get importComplete => 'Import Færdig';

  @override
  String get importFailed => 'Import Fejlede';

  @override
  String importFile(String fileName) {
    return 'Fil: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String importAdded(int count) {
    return 'Tilføjet: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Sprunget over: $count';
  }

  @override
  String get errors => 'Fejl:';

  @override
  String get error => 'Fejl';

  @override
  String importErrorMessage(String error) {
    return 'Kunne ikke importere fil:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Vælg Materiale';

  @override
  String get subject => 'Emne:';

  @override
  String get source => 'Kilde:';

  @override
  String get file => 'Fil:';

  @override
  String progress(int current, int total) {
    return 'Fremskridt: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Venligst importer en JSON fil';

  @override
  String get selectMaterialPrompt => 'Venligst vælg studiemateriale';

  @override
  String get studyComplete => 'Studeret';

  @override
  String get markAsStudied => 'Marker som Studeret';

  @override
  String get listening => 'Lytter...';

  @override
  String get recognized => 'Genkendelse færdig';

  @override
  String recognitionFailed(String error) {
    return 'Talegenkendelse fejlede: $error';
  }

  @override
  String get checking => 'Tjekker...';

  @override
  String get translating => 'Oversætter...';

  @override
  String get translationComplete => 'Oversættelse færdig (kræver gem)';

  @override
  String get translationLoaded => 'Gemt oversættelse indlæst';

  @override
  String translationFailed(String error) {
    return 'Oversættelse fejlede: $error';
  }

  @override
  String get enterTextToTranslate => 'Indtast tekst til oversættelse';

  @override
  String get saving => 'Gemmer...';

  @override
  String get noTranslationToSave => 'Ingen oversættelse at gemme';

  @override
  String saveFailed(String error) {
    return 'Gem fejlede: $error';
  }

  @override
  String get playing => 'Afspiller...';

  @override
  String get noTextToPlay => 'Ingen tekst at afspille';

  @override
  String playbackFailed(String error) {
    return 'Afspilning fejlede: $error';
  }

  @override
  String get sourceLanguage => 'Kildesprog';

  @override
  String get targetLanguage => 'Målsprog';

  @override
  String get similarTextFound => 'Lignende tekst fundet';

  @override
  String get useExistingText => 'Brug Eksisterende';

  @override
  String get createNew => 'Opret Ny';

  @override
  String reviewCount(int count) {
    return 'Gennemgået $count gange';
  }

  @override
  String get tabSpeaking => 'Tale';

  @override
  String get speakingPractice => 'Taleøvelse';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Din udtale';

  @override
  String get correctAnswer => 'Rigtigt Svar';

  @override
  String score(String score) {
    return 'Nøjagtighed: $score%';
  }

  @override
  String get perfect => 'Perfekt!';

  @override
  String get good => 'Godt';

  @override
  String get tryAgain => 'Prøv igen';

  @override
  String get startPractice => 'Start Øvelse';

  @override
  String get stopPractice => 'Stop';

  @override
  String get helpTitle => 'Hjælp & Guide';

  @override
  String get helpTabModes => 'Tilstande';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpMode1Desc =>
      'Talegenkendelse, oversættelse og lyt til resultat.';

  @override
  String get helpMode1Details =>
      '• Stemme: Tryk mikrofon for start/stop\n• Tekst: Skriv direkte for at oversætte\n• Auto-Søg: Finder lignende sætninger\n• Oversæt: Knap for øjeblikkelig oversættelse\n• Lyt: Højttalerikon for TTS\n• Gem: Tilføjer til historik\n• Ryd: Nulstil alt';

  @override
  String get helpMode2Desc =>
      'Gennemgå gemte sætninger med skjult oversættelse.';

  @override
  String get helpMode2Details =>
      '• Vælg: Vælg sæt eller \'Alle\'\n• Vend: \'Vis/Skjul\' oversættelse\n• Lyt: Afspil TTS for sætning\n• Marker: Flueben (V) for færdige\n• Slet: Langt tryk for at slette\n• Filter: Vis alle eller efter materiale';

  @override
  String get helpMode3Desc => 'Øv tale ved at lytte og gentage (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Vælg: Vælg pakke\n• Interval: [-] [+] ventetid (3s-60s)\n• Start/Stop: Kontroller session\n• Tal: Lyt og gentag\n• Score: Nøjagtighed (0-100)\n• Prøv igen: Knap hvis stemme ej fundet';

  @override
  String get helpJsonDesc => 'For import i Tilstand 3, opret JSON:';

  @override
  String get helpTourDesc => 'Start interaktiv tur for at lære funktioner.';

  @override
  String get startTutorial => 'Start Tur';

  @override
  String get tutorialMicTitle => 'Stemmeindput';

  @override
  String get tutorialMicDesc => 'Tryk på mikrofonen for stemmeindput.';

  @override
  String get tutorialTabDesc => 'Her kan du vælge den ønskede læringstilstand.';

  @override
  String get tutorialTapToContinue => 'Tryk for at fortsætte';

  @override
  String get tutorialTransTitle => 'Oversæt';

  @override
  String get tutorialTransDesc => 'Tryk her for at oversætte tekst.';

  @override
  String get tutorialSaveTitle => 'Gem';

  @override
  String get tutorialSaveDesc => 'Gem din oversættelse.';

  @override
  String get tutorialM2SelectTitle => 'Vælg & Filter';

  @override
  String get tutorialM2SelectDesc => 'Vælg materiale eller \'Gennemgå Alle\'.';

  @override
  String get tutorialM2ListTitle => 'Studieliste';

  @override
  String get tutorialM2ListDesc => 'Tjek kort og vend dem.';

  @override
  String get tutorialM3SelectTitle => 'Vælg Materiale';

  @override
  String get tutorialM3SelectDesc => 'Vælg sæt til taleøvelse.';

  @override
  String get tutorialM3IntervalTitle => 'Interval';

  @override
  String get tutorialM3IntervalDesc => 'Juster ventetid mellem sætninger.';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3StartDesc => 'Tryk play for at starte.';

  @override
  String get startWarning => 'Advarsel';

  @override
  String get noVoiceDetected => 'Ingen stemme registreret';

  @override
  String get tooltipSearch => 'Søg';

  @override
  String get tooltipStudyReview => 'Studie+Gentagelse';

  @override
  String get tooltipSpeaking => 'Tale';

  @override
  String get tooltipDecrease => 'Formindsk';

  @override
  String get tooltipIncrease => 'Forøg';

  @override
  String get languageSettings => 'Sprogindstillinger';
}

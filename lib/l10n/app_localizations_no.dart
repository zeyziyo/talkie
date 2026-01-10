// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Gjennomgang ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materiell ($count)';
  }

  @override
  String get mode2Title => 'Gjennomgang';

  @override
  String get search => 'Søk';

  @override
  String get translate => 'Oversett';

  @override
  String get listen => 'Lytt';

  @override
  String get saveData => 'Lagre';

  @override
  String get saved => 'Lagret';

  @override
  String get delete => 'Slett';

  @override
  String get materialInfo => 'Materialinfo';

  @override
  String get cancel => 'Avbryt';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Oppdater';

  @override
  String studyRecords(int count) {
    return 'Oppføringer ($count)';
  }

  @override
  String get targetLanguageFilter => 'Målspråk Filter:';

  @override
  String get noRecords => 'Ingen oppføringer for valgt språk';

  @override
  String get saveTranslationsFromSearch => 'Lagre oversettelser fra søkemodus';

  @override
  String get flip => 'Snu';

  @override
  String get hide => 'Skjul';

  @override
  String get deleteRecord => 'Slett Oppføring';

  @override
  String get confirmDelete =>
      'Er du sikker på at du vil slette denne oppføringen?';

  @override
  String get recordDeleted => 'Oppføring slettet';

  @override
  String deleteFailed(String error) {
    return 'Sletting feilet: $error';
  }

  @override
  String get importJsonFile => 'Importer JSON';

  @override
  String get importing => 'Importerer...';

  @override
  String get importComplete => 'Import Ferdig';

  @override
  String get importFailed => 'Import Feilet';

  @override
  String importFile(String fileName) {
    return 'Fil: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Totalt: $count';
  }

  @override
  String importAdded(int count) {
    return 'Lagt til: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Hoppet over: $count';
  }

  @override
  String get errors => 'Feil:';

  @override
  String get error => 'Feil';

  @override
  String importErrorMessage(String error) {
    return 'Kunne ikke importere fil:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Velg Materiell';

  @override
  String get subject => 'Emne:';

  @override
  String get source => 'Kilde:';

  @override
  String get file => 'Fil:';

  @override
  String progress(int current, int total) {
    return 'Fremdrift: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Vennligst importer en JSON-fil';

  @override
  String get selectMaterialPrompt => 'Vennligst velg studiemateriell';

  @override
  String get studyComplete => 'Studert';

  @override
  String get markAsStudied => 'Marker som Studert';

  @override
  String get listening => 'Lytter...';

  @override
  String get recognized => 'Gjenkjenning ferdig';

  @override
  String recognitionFailed(String error) {
    return 'Talegjenkjenning feilet: $error';
  }

  @override
  String get checking => 'Sjekker...';

  @override
  String get translating => 'Oversetter...';

  @override
  String get translationComplete => 'Oversettelse ferdig (må lagres)';

  @override
  String get translationLoaded => 'Lagret oversettelse lastet';

  @override
  String translationFailed(String error) {
    return 'Oversettelse feilet: $error';
  }

  @override
  String get enterTextToTranslate => 'Skriv inn tekst for oversettelse';

  @override
  String get saving => 'Lagrer...';

  @override
  String get noTranslationToSave => 'Ingen oversettelse å lagre';

  @override
  String saveFailed(String error) {
    return 'Lagring feilet: $error';
  }

  @override
  String get playing => 'Spiller...';

  @override
  String get noTextToPlay => 'Ingen tekst å spille';

  @override
  String playbackFailed(String error) {
    return 'Avspilling feilet: $error';
  }

  @override
  String get sourceLanguage => 'Kildespråk';

  @override
  String get targetLanguage => 'Målspråk';

  @override
  String get similarTextFound => 'Lignende tekst funnet';

  @override
  String get useExistingText => 'Bruk Eksisterende';

  @override
  String get createNew => 'Opprett Ny';

  @override
  String reviewCount(int count) {
    return 'Gjennomgått $count ganger';
  }

  @override
  String get tabSpeaking => 'Snakke';

  @override
  String get speakingPractice => 'Taleøvelse';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervall: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Din uttale';

  @override
  String get correctAnswer => 'Riktig Svar';

  @override
  String score(String score) {
    return 'Nøyaktighet: $score%';
  }

  @override
  String get perfect => 'Perfekt!';

  @override
  String get good => 'Bra';

  @override
  String get tryAgain => 'Prøv igjen';

  @override
  String get startPractice => 'Start';

  @override
  String get stopPractice => 'Stopp';

  @override
  String get helpTitle => 'Hjelp & Guide';

  @override
  String get helpTabModes => 'Moduser';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpMode1Desc =>
      'Talegjenkjenning, oversettelse og lytt til resultat.';

  @override
  String get helpMode1Details =>
      '• Stemme: Trykk mikrofon for start/stopp\n• Tekst: Skriv direkte for å oversette\n• Auto-Søk: Finner lignende setninger\n• Oversett: Knapp for umiddelbar oversettelse\n• Lytt: Høyttalerikon for TTS\n• Lagre: Legger til i historie\n• Tøm: Nullstill alt';

  @override
  String get helpMode2Desc =>
      'Gjennomgå lagrede setninger med skjult oversettelse.';

  @override
  String get helpMode2Details =>
      '• Velg: Velg sett eller \'Alle\'\n• Snu: \'Vis/Skjul\' oversettelse\n• Lytt: Spill TTS for setning\n• Marker: Hake (V) for ferdige\n• Slett: Langt trykk for å slette\n• Filter: Vis alle eller etter materiell';

  @override
  String get helpMode3Desc =>
      'Øv på å snakke ved å lytte og gjenta (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Velg: Velg pakke\n• Intervall: [-] [+] ventetid (3s-60s)\n• Start/Stopp: Kontroller økt\n• Snakk: Lytt og gjenta\n• Poeng: Nøyaktighet (0-100)\n• Prøv igjen: Knapp hvis stemme ikke funnet';

  @override
  String get helpJsonDesc => 'For import i Modus 3, opprett JSON:';

  @override
  String get helpTourDesc => 'Start interaktiv tur for å lære funksjoner.';

  @override
  String get startTutorial => 'Start Tur';

  @override
  String get tutorialMicTitle => 'Stemmeinndata';

  @override
  String get tutorialMicDesc => 'Trykk på mikrofonen for stemmeinndata.';

  @override
  String get tutorialTabDesc => 'Her kan du velge ønsket læringsmodus.';

  @override
  String get tutorialTapToContinue => 'Trykk for å fortsette';

  @override
  String get tutorialTransTitle => 'Oversett';

  @override
  String get tutorialTransDesc => 'Trykk her for å oversette tekst.';

  @override
  String get tutorialSaveTitle => 'Lagre';

  @override
  String get tutorialSaveDesc => 'Lagre oversettelsen i studieoppføringer.';

  @override
  String get tutorialM2SelectTitle => 'Velg & Filter';

  @override
  String get tutorialM2SelectDesc => 'Velg materiell eller \'Gjennomgå Alle\'.';

  @override
  String get tutorialM2ListTitle => 'Studieliste';

  @override
  String get tutorialM2ListDesc => 'Sjekk kortene og snu dem.';

  @override
  String get tutorialM3SelectTitle => 'Velg Materiell';

  @override
  String get tutorialM3SelectDesc => 'Velg sett for taleøvelse.';

  @override
  String get tutorialM3IntervalTitle => 'Intervall';

  @override
  String get tutorialM3IntervalDesc => 'Juster ventetid mellom setninger.';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3StartDesc => 'Trykk play for å starte.';

  @override
  String get startWarning => 'Advarsel';

  @override
  String get noVoiceDetected => 'Ingen stemme oppdaget';

  @override
  String get tooltipSearch => 'Søk';

  @override
  String get tooltipStudyReview => 'Studie+Repetisjon';

  @override
  String get tooltipSpeaking => 'Tale';

  @override
  String get tooltipDecrease => 'Reduser';

  @override
  String get tooltipIncrease => 'Øk';

  @override
  String get languageSettings => 'Språkinnstillinger';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Repetition ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Material ($count)';
  }

  @override
  String get mode2Title => 'Repetition';

  @override
  String get search => 'Sök';

  @override
  String get translate => 'Översätt';

  @override
  String get listen => 'Lyssna';

  @override
  String get saveData => 'Spara';

  @override
  String get saved => 'Sparad';

  @override
  String get delete => 'Ta bort';

  @override
  String get materialInfo => 'Materialinfo';

  @override
  String get cancel => 'Avbryt';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Uppdatera';

  @override
  String studyRecords(int count) {
    return 'Poster ($count)';
  }

  @override
  String get targetLanguageFilter => 'Målspråk Filter:';

  @override
  String get noRecords => 'Inga poster för valt språk';

  @override
  String get saveTranslationsFromSearch =>
      'Vänligen spara översättningar från sökläge';

  @override
  String get flip => 'Vänd';

  @override
  String get hide => 'Dölj';

  @override
  String get deleteRecord => 'Ta bort post';

  @override
  String get confirmDelete => 'Är du säker på att du vill ta bort denna post?';

  @override
  String get recordDeleted => 'Post borttagen';

  @override
  String deleteFailed(String error) {
    return 'Borttagning misslyckades: $error';
  }

  @override
  String get importJsonFile => 'Importera JSON';

  @override
  String get importing => 'Importerar...';

  @override
  String get importComplete => 'Import Klar';

  @override
  String get importFailed => 'Import Misslyckades';

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
    return 'Tillagd: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Hoppade över: $count';
  }

  @override
  String get errors => 'Fel:';

  @override
  String get error => 'Fel';

  @override
  String importErrorMessage(String error) {
    return 'Kunde inte importera fil:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Välj Material';

  @override
  String get subject => 'Ämne:';

  @override
  String get source => 'Källa:';

  @override
  String get file => 'Fil:';

  @override
  String progress(int current, int total) {
    return 'Framsteg: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Vänligen importera JSON fil';

  @override
  String get selectMaterialPrompt => 'Vänligen välj studiematerial';

  @override
  String get studyComplete => 'Studerad';

  @override
  String get markAsStudied => 'Markera som Studerad';

  @override
  String get listening => 'Lyssnar...';

  @override
  String get recognized => 'Igenkänning klar';

  @override
  String recognitionFailed(String error) {
    return 'Taligenkänning misslyckades: $error';
  }

  @override
  String get checking => 'Kontrollerar...';

  @override
  String get translating => 'Översätter...';

  @override
  String get translationComplete => 'Översättning klar (spara krävs)';

  @override
  String get translationLoaded => 'Sparad översättning laddad';

  @override
  String translationFailed(String error) {
    return 'Översättning misslyckades: $error';
  }

  @override
  String get enterTextToTranslate => 'Skriv text att översätta';

  @override
  String get saving => 'Sparar...';

  @override
  String get noTranslationToSave => 'Ingen översättning att spara';

  @override
  String saveFailed(String error) {
    return 'Spara misslyckades: $error';
  }

  @override
  String get playing => 'Spelar...';

  @override
  String get noTextToPlay => 'Ingen text att spela';

  @override
  String playbackFailed(String error) {
    return 'Uppspelning misslyckades: $error';
  }

  @override
  String get sourceLanguage => 'Källspråk';

  @override
  String get targetLanguage => 'Målspråk';

  @override
  String get similarTextFound => 'Liknande text hittades';

  @override
  String get useExistingText => 'Använd Befintlig';

  @override
  String get createNew => 'Skapa Ny';

  @override
  String reviewCount(int count) {
    return 'Repeterad $count gånger';
  }

  @override
  String get tabSpeaking => 'Tala';

  @override
  String get speakingPractice => 'Talövning';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervall: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Ditt uttal';

  @override
  String get correctAnswer => 'Rätt Svar';

  @override
  String score(String score) {
    return 'Noggrannhet: $score%';
  }

  @override
  String get perfect => 'Perfekt!';

  @override
  String get good => 'Bra';

  @override
  String get tryAgain => 'Försök igen';

  @override
  String get startPractice => 'Starta Övning';

  @override
  String get stopPractice => 'Stoppa';

  @override
  String get helpTitle => 'Hjälp & Guide';

  @override
  String get helpTabModes => 'Lägen';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpMode1Desc =>
      'Röstigenkänning, översättning och lyssna på resultat.';

  @override
  String get helpMode1Details =>
      '• Röst: Tryck mikrofon för start/stopp\n• Text: Skriv direkt för översättning\n• Auto-Sök: Hittar liknande meningar\n• Översätt: Knapp för direktöversättning\n• Lyssna: Ikon för TTS\n• Spara: Lägger till i historik\n• Rensa: Återställ allt';

  @override
  String get helpMode2Desc =>
      'Repetera sparade meningar med dold översättning.';

  @override
  String get helpMode2Details =>
      '• Välj: Välj set eller \'Alla\'\n• Vänd: \'Visa/Dölj\' översättning\n• Lyssna: Spela TTS för mening\n• Markera: Kryssa (V) för klara\n• Ta bort: Långtryck för att ta bort\n• Filter: Visa alla eller per material';

  @override
  String get helpMode3Desc =>
      'Öva tala genom att lyssna och upprepa (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Välj: Välj paket\n• Intervall: [-] [+] väntetid (3s-60s)\n• Start/Stopp: Kontrollera session\n• Tala: Lyssna och upprepa\n• Poäng: Noggrannhet (0-100)\n• Försök: Knapp om röst ej hittas';

  @override
  String get helpJsonDesc => 'För import i Läge 3, skapa JSON:';

  @override
  String get helpTourDesc =>
      'Starta interaktiv tur för att lära dig funktioner.';

  @override
  String get startTutorial => 'Starta Tur';

  @override
  String get tutorialMicTitle => 'Röstinmatning';

  @override
  String get tutorialMicDesc => 'Tryck på mikrofonen för röstinmatning.';

  @override
  String get tutorialTabDesc => 'Här kan du välja önskat inlärningsläge.';

  @override
  String get tutorialTapToContinue => 'Tryck för att fortsätta';

  @override
  String get tutorialTransTitle => 'Översätt';

  @override
  String get tutorialTransDesc => 'Tryck här för att översätta text.';

  @override
  String get tutorialSaveTitle => 'Spara';

  @override
  String get tutorialSaveDesc => 'Spara din översättning.';

  @override
  String get tutorialM2SelectTitle => 'Välj & Filter';

  @override
  String get tutorialM2SelectDesc => 'Välj material eller \'Repetera Alla\'.';

  @override
  String get tutorialM2ListTitle => 'Studielista';

  @override
  String get tutorialM2ListDesc => 'Kolla kort och vänd dem.';

  @override
  String get tutorialM3SelectTitle => 'Välj Material';

  @override
  String get tutorialM3SelectDesc => 'Välj set för talövning.';

  @override
  String get tutorialM3IntervalTitle => 'Intervall';

  @override
  String get tutorialM3IntervalDesc => 'Justera väntetid mellan meningar.';

  @override
  String get tutorialM3StartTitle => 'Starta';

  @override
  String get tutorialM3StartDesc => 'Tryck play för att börja.';

  @override
  String get startWarning => 'Varning';

  @override
  String get noVoiceDetected => 'Ingen röst upptäckt';

  @override
  String get tooltipSearch => 'Sök';

  @override
  String get tooltipStudyReview => 'Studie+Repetition';

  @override
  String get tooltipSpeaking => 'Tal';

  @override
  String get tooltipDecrease => 'Minska';

  @override
  String get tooltipIncrease => 'Öka';

  @override
  String get languageSettings => 'Språkinställningar';
}

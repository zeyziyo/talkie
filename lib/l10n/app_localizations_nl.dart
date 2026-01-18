// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Herhalen ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Studiemateriaal ($count)';
  }

  @override
  String get mode2Title => 'Herhaling';

  @override
  String get search => 'Zoeken';

  @override
  String get translate => 'Vertalen';

  @override
  String get listen => 'Luisteren';

  @override
  String get saveData => 'Opslaan';

  @override
  String get saved => 'Opgeslagen';

  @override
  String get delete => 'Verwijderen';

  @override
  String get materialInfo => 'Materiaalinfo';

  @override
  String get cancel => 'Annuleren';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Verversen';

  @override
  String studyRecords(int count) {
    return 'Records ($count)';
  }

  @override
  String get targetLanguageFilter => 'Doeltaal Filter:';

  @override
  String get noRecords => 'Geen records voor geselecteerde taal';

  @override
  String get saveTranslationsFromSearch => 'Vertaal uit zoekmodus opslaan';

  @override
  String get flip => 'Draaien';

  @override
  String get hide => 'Verbergen';

  @override
  String get deleteRecord => 'Record verwijderen';

  @override
  String get confirmDelete => 'Weet u zeker dat u dit record wilt verwijderen?';

  @override
  String get recordDeleted => 'Record succesvol verwijderd';

  @override
  String deleteFailed(String error) {
    return 'Verwijderen mislukt: $error';
  }

  @override
  String get importJsonFile => 'JSON Importeren';

  @override
  String get importing => 'Importeren...';

  @override
  String get importComplete => 'Import Voltooid';

  @override
  String get importFailed => 'Import Mislukt';

  @override
  String importFile(String fileName) {
    return 'Bestand: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Totaal: $count';
  }

  @override
  String importAdded(int count) {
    return 'Toegevoegd: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Overgeslagen: $count';
  }

  @override
  String get errors => 'Fouten:';

  @override
  String get error => 'Fout';

  @override
  String importErrorMessage(String error) {
    return 'Bestand importeren mislukt:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Selecteer Materiaal';

  @override
  String get subject => 'Onderwerp:';

  @override
  String get source => 'Bron:';

  @override
  String get file => 'Bestand:';

  @override
  String progress(int current, int total) {
    return 'Voortgang: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Importeer a.u.b. een JSON-bestand';

  @override
  String get selectMaterialPrompt => 'Selecteer a.u.b. studiemateriaal';

  @override
  String get studyComplete => 'Bestudeerd';

  @override
  String get markAsStudied => 'Markeren als Bestudeerd';

  @override
  String get listening => 'Luisteren...';

  @override
  String get recognized => 'Herkenning voltooid';

  @override
  String recognitionFailed(String error) {
    return 'Spraakherkenning mislukt: $error';
  }

  @override
  String get checking => 'Controleren...';

  @override
  String get translating => 'Vertalen...';

  @override
  String get translationComplete => 'Vertaling voltooid (opslaan vereist)';

  @override
  String get translationLoaded => 'Opgeslagen vertaling geladen';

  @override
  String translationFailed(String error) {
    return 'Vertaling mislukt: $error';
  }

  @override
  String get enterTextToTranslate => 'Voer tekst in om te vertalen';

  @override
  String get saving => 'Opslaan...';

  @override
  String get noTranslationToSave => 'Geen vertaling om op te slaan';

  @override
  String saveFailed(String error) {
    return 'Opslaan mislukt: $error';
  }

  @override
  String get playing => 'Afspelen...';

  @override
  String get noTextToPlay => 'Geen tekst om af te spelen';

  @override
  String playbackFailed(String error) {
    return 'Afspelen mislukt: $error';
  }

  @override
  String get sourceLanguage => 'Brontaal';

  @override
  String get targetLanguage => 'Doeltaal';

  @override
  String get similarTextFound => 'Vergelijkbare tekst gevonden';

  @override
  String get useExistingText => 'Gebruik Bestaande';

  @override
  String get createNew => 'Nieuwe Maken';

  @override
  String reviewCount(int count) {
    return '$count keer herhaald';
  }

  @override
  String get tabSpeaking => 'Spreken';

  @override
  String get speakingPractice => 'Spreekoefening';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Jouw Uitspraak';

  @override
  String get correctAnswer => 'Juiste Antwoord';

  @override
  String score(String score) {
    return 'Nauwkeurigheid: $score%';
  }

  @override
  String get perfect => 'Perfect!';

  @override
  String get good => 'Goed';

  @override
  String get tryAgain => 'Opnieuw Proberen';

  @override
  String get startPractice => 'Start Oefening';

  @override
  String get stopPractice => 'Stop Oefening';

  @override
  String get helpTitle => 'Hulp & Gids';

  @override
  String get helpTabModes => 'Modi';

  @override
  String get helpTabJson => 'JSON Formaat';

  @override
  String get helpTabTour => 'Rondleiding';

  @override
  String get helpMode1Desc =>
      'Herken stem, vertaal naar doeltaal en luister naar resultaat.';

  @override
  String get helpMode1Details =>
      '• Spraak: Tik microfoon om te starten/stoppen\n• Tekst: Typ direct om te vertalen\n• Auto-Zoek: Detecteert bestaande zinnen\n• Vertaal: Tik knop voor directe vertaling\n• Luister: Speaker icoon voor TTS\n• Opslaan: \'Data Opslaan\' voegt toe aan geschiedenis\n• Wissen: Reset alle invoer';

  @override
  String get helpMode2Desc =>
      'Herhaal opgeslagen zinnen met auto-verberg vertalingen.';

  @override
  String get helpMode2Details =>
      '• Selecteer Materiaal: Kies set of \'Alles Herhalen\'\n• Kaart Draaien: Gebruik \'Toon/Verberg\' voor vertaling\n• Luister: Speel TTS voor zin\n• Markeer Bestudeerd: Vinkje (V) voor voltooide items\n• Verwijder: Lang drukken op kaart om te verwijderen\n• Filter: Bekijk alles of filter op materiaal';

  @override
  String get helpMode3Desc =>
      'Oefen spreken door te luisteren en na te zeggen (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Selecteer Materiaal: Kies studiepakket\n• Interval: [-] [+] pas wachttijd aan (3s-60s)\n• Start/Stop: Beheer sessie\n• Spreek: Luister audio en herhaal\n• Feedback: Score (0-100)\n• Probeer Opnieuw: Knop als stem niet gedetecteerd';

  @override
  String get helpJsonDesc =>
      'Om studiematerialen in Modus 3 te importeren, maak JSON bestand met deze structuur:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Start Rondleiding';

  @override
  String get tutorialMicTitle => 'Spraakinvoer';

  @override
  String get tutorialMicDesc => 'Tik op de microfoonknop om te starten.';

  @override
  String get tutorialTabDesc => 'Hier kunt u de gewenste leermodus selecteren.';

  @override
  String get tutorialTapToContinue => 'Tik om door te gaan';

  @override
  String get tutorialTransTitle => 'Vertalen';

  @override
  String get tutorialTransDesc => 'Tik hier om je tekst te vertalen.';

  @override
  String get tutorialSaveTitle => 'Opslaan';

  @override
  String get tutorialSaveDesc => 'Sla je vertaling op in studierecords.';

  @override
  String get tutorialM2SelectTitle => 'Selecteer & Filter';

  @override
  String get tutorialM2SelectDesc =>
      'Kies materialen of wissel naar \'Alles Herhalen\'.';

  @override
  String get tutorialM2ListTitle => 'Studielijst';

  @override
  String get tutorialM2ListDesc =>
      'Bekijk opgeslagen kaarten en draai ze om. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Selecteer Materiaal';

  @override
  String get tutorialM3SelectDesc => 'Kies een set voor spreekoefening.';

  @override
  String get tutorialM3IntervalTitle => 'Interval';

  @override
  String get tutorialM3IntervalDesc => 'Pas de wachttijd tussen zinnen aan.';

  @override
  String get tutorialM3StartTitle => 'Start Oefening';

  @override
  String get tutorialM3StartDesc => 'Tik play om te luisteren en na te zeggen.';

  @override
  String get startWarning => 'Waarschuwing';

  @override
  String get noVoiceDetected => 'Geen stem gedetecteerd';

  @override
  String get tooltipSearch => 'Zoeken';

  @override
  String get tooltipStudyReview => 'Studie+Herhaling';

  @override
  String get tooltipSpeaking => 'Spreken';

  @override
  String get tooltipDecrease => 'Verminderen';

  @override
  String get tooltipIncrease => 'Verhogen';

  @override
  String get languageSettings => 'Taalinstellingen';

  @override
  String get tutorialM2DropdownDesc => 'Selecteer studiemateriaal.';

  @override
  String get tutorialM2ImportDesc => 'Importeer JSON-bestand uit apparaatmap.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'Contextlabel';

  @override
  String get tutorialContextDesc =>
      'Voeg context toe (bijv. Ochtend) om vergelijkbare zinnen te onderscheiden.';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc =>
      'Check this to practice only your saved words.';

  @override
  String get tutorialGameTitle => 'Rain Drop Game';

  @override
  String get tutorialGameDesc =>
      'Play a game to practice your vocabulary! Catch falling words by speaking their translation.';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Word';

  @override
  String get labelSentence => 'Sentence';

  @override
  String get contextTagLabel =>
      'Context/Situation (Optional) - Ex: Morning greeting, polite form';

  @override
  String get contextTagHint =>
      'Describe situation for easier classification later';

  @override
  String get translationLimitExceeded => 'Translation Limit Exceeded';

  @override
  String get translationLimitMessage =>
      'You have used all your free daily translations (5). Watch an ad to refill 5 immediately?';

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
  String get rainDropGame => 'Rain Drop Game';

  @override
  String get rainDropGameDesc => 'Speak the translation of the falling word!';

  @override
  String get gameDirection => 'Game Direction';

  @override
  String get speed => 'Speed';

  @override
  String get startGame => 'Start Game';

  @override
  String get gameOver => 'Game Over';

  @override
  String get finalScore => 'Final Score';

  @override
  String get playAgain => 'Play Again';

  @override
  String get speakNow => 'Speak now!';

  @override
  String get scoreLabel => 'Score';

  @override
  String get viewOnlineGuide => 'View Online User Guide';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Hersiening ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materiaal ($count)';
  }

  @override
  String get mode2Title => 'Hersiening';

  @override
  String get search => 'Soek';

  @override
  String get translate => 'Vertaal';

  @override
  String get listen => 'Luister';

  @override
  String get saveData => 'Stoor';

  @override
  String get saved => 'Gestoor';

  @override
  String get delete => 'Verwyder';

  @override
  String get materialInfo => 'Materiaalinligting';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Verfris';

  @override
  String studyRecords(int count) {
    return 'Rekords ($count)';
  }

  @override
  String get targetLanguageFilter => 'Teiltaal Filter:';

  @override
  String get noRecords => 'Geen rekords vir gekose taal';

  @override
  String get saveTranslationsFromSearch => 'Stoor vertalings vanaf soekmodus';

  @override
  String get flip => 'Draai';

  @override
  String get hide => 'Versteek';

  @override
  String get deleteRecord => 'Verwyder Rekord';

  @override
  String get confirmDelete => 'Is jy seker jy wil hierdie rekord verwyder?';

  @override
  String get recordDeleted => 'Rekord suksesvol verwyder';

  @override
  String deleteFailed(String error) {
    return 'Verwydering misluk: $error';
  }

  @override
  String get importJsonFile => 'Voer JSON in';

  @override
  String get importing => 'Voer in...';

  @override
  String get importComplete => 'Invoer Voltooi';

  @override
  String get importFailed => 'Invoer Misluk';

  @override
  String importFile(String fileName) {
    return 'Lêer: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Totaal: $count';
  }

  @override
  String importAdded(int count) {
    return 'Bygevoeg: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Oorgeslaan: $count';
  }

  @override
  String get errors => 'Foute:';

  @override
  String get error => 'Fout';

  @override
  String importErrorMessage(String error) {
    return 'Kon nie lêer invoer nie:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Kies Materiaal';

  @override
  String get subject => 'Onderwerp:';

  @override
  String get source => 'Bron:';

  @override
  String get file => 'Lêer:';

  @override
  String progress(int current, int total) {
    return 'Vordering: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Voer asseblief \'n JSON-lêer in';

  @override
  String get selectMaterialPrompt => 'Kies asseblief studiemateriaal';

  @override
  String get studyComplete => 'Bestudeer';

  @override
  String get markAsStudied => 'Merk as Bestudeer';

  @override
  String get listening => 'Luister...';

  @override
  String get recognized => 'Herkenning voltooi';

  @override
  String recognitionFailed(String error) {
    return 'Spraakherkenning misluk: $error';
  }

  @override
  String get checking => 'Kontroleer...';

  @override
  String get translating => 'Vertaal...';

  @override
  String get translationComplete => 'Vertaling voltooi (stoor vereis)';

  @override
  String get translationLoaded => 'Gestorde vertaling gelaai';

  @override
  String translationFailed(String error) {
    return 'Vertaling misluk: $error';
  }

  @override
  String get enterTextToTranslate => 'Voer teks in om te vertaal';

  @override
  String get saving => 'Stoor...';

  @override
  String get noTranslationToSave => 'Geen vertaling om te stoor';

  @override
  String saveFailed(String error) {
    return 'Stoor misluk: $error';
  }

  @override
  String get playing => 'Speel...';

  @override
  String get noTextToPlay => 'Geen teks om te speel';

  @override
  String playbackFailed(String error) {
    return 'Terugspeel misluk: $error';
  }

  @override
  String get sourceLanguage => 'Bron Taal';

  @override
  String get targetLanguage => 'Teiltaal';

  @override
  String get similarTextFound => 'Soortgelyke teks gevind';

  @override
  String get useExistingText => 'Gebruik Bestaande';

  @override
  String get createNew => 'Skep Nuwe';

  @override
  String reviewCount(int count) {
    return '$count keer hersien';
  }

  @override
  String get tabSpeaking => 'Praat';

  @override
  String get speakingPractice => 'Praatoefening';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Jou Uitspraak';

  @override
  String get correctAnswer => 'Korrekte Antwoord';

  @override
  String score(String score) {
    return 'Akkuraatheid: $score%';
  }

  @override
  String get perfect => 'Perfek!';

  @override
  String get good => 'Goed';

  @override
  String get tryAgain => 'Probeer weer';

  @override
  String get startPractice => 'Begin Oefening';

  @override
  String get stopPractice => 'Stop';

  @override
  String get helpTitle => 'Hulp & Gids';

  @override
  String get helpTabModes => 'Modusse';

  @override
  String get helpTabJson => 'JSON Formaat';

  @override
  String get helpTabTour => 'Toer';

  @override
  String get helpMode1Desc => 'Herken stem, vertaal en luister na resultaat.';

  @override
  String get helpMode1Details =>
      '• Stem: Tik mikrofoon vir begin/stop\n• Teks: Tik direk om te vertaal\n• Outo-Soek: Bespeur soortgelyke sinne\n• Vertaal: Knoppie vir direkte vertaling\n• Luister: Luidspreker-ikoon vir TTS\n• Stoor: Voeg by geskiedenis\n• Maak skoon: Stel alles terug';

  @override
  String get helpMode2Desc =>
      'Hersien gestorde sinne met versteekte vertaling.';

  @override
  String get helpMode2Details =>
      '• Kies: Kies stel of \'Hersien Alles\'\n• Draai: \'Wys/Versteek\' vertaling\n• Luister: Speel TTS vir sin\n• Merk: Merk (V) vir voltooi\n• Verwyder: Lang druk om te verwyder\n• Filter: Sien alles of per materiaal';

  @override
  String get helpMode3Desc =>
      'Oefen praat deur te luister en te herhaal (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Kies: Kies pakket\n• Interval: [-] [+] wagtyd (3s-60s)\n• Begin/Stop: Beheer sessie\n• Praat: Luister en herhaal\n• Telling: Akkuraatheid (0-100)\n• Probeer weer: Knoppie as stem nie bespeur word nie';

  @override
  String get helpJsonDesc => 'Vir invoer in Modus 3, skep JSON:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Begin Toer';

  @override
  String get tutorialMicTitle => 'Stem Invoer';

  @override
  String get tutorialMicDesc => 'Tik die mikrofoon vir stem invoer.';

  @override
  String get tutorialTabDesc => 'Jy kan die gewenste leerwyse hier kies.';

  @override
  String get tutorialTapToContinue => 'Tik om voort te gaan';

  @override
  String get tutorialTransTitle => 'Vertaal';

  @override
  String get tutorialTransDesc => 'Tik hier om jou teks te vertaal.';

  @override
  String get tutorialSaveTitle => 'Stoor';

  @override
  String get tutorialSaveDesc => 'Stoor jou vertaling.';

  @override
  String get tutorialM2SelectTitle => 'Kies & Filter';

  @override
  String get tutorialM2SelectDesc => 'Kies materiaal of \'Hersien Alles\'.';

  @override
  String get tutorialM2ListTitle => 'Studielys';

  @override
  String get tutorialM2ListDesc =>
      'Gaan jou kaarte na en draai hulle om. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Kies Materiaal';

  @override
  String get tutorialM3SelectDesc => 'Kies stel vir praatoefening.';

  @override
  String get tutorialM3IntervalTitle => 'Interval';

  @override
  String get tutorialM3IntervalDesc => 'Pas wagtyd tussen sinne aan.';

  @override
  String get tutorialM3StartTitle => 'Begin';

  @override
  String get tutorialM3StartDesc => 'Druk speel om te begin.';

  @override
  String get startWarning => 'Waarskuwing';

  @override
  String get noVoiceDetected => 'Geen stem bespeur';

  @override
  String get tooltipSearch => 'Soek';

  @override
  String get tooltipStudyReview => 'Studie+Hersiening';

  @override
  String get tooltipSpeaking => 'Praat';

  @override
  String get tooltipDecrease => 'Verminder';

  @override
  String get tooltipIncrease => 'Verhoog';

  @override
  String get languageSettings => 'Taalinstellings';

  @override
  String get tutorialM2DropdownDesc => 'Kies studiemateriaal.';

  @override
  String get tutorialM2ImportDesc => 'Voer JSON-lêer in vanaf toestelgids.';

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
  String get tutorialContextTitle => 'Konteks Merker';

  @override
  String get tutorialContextDesc =>
      'Voeg konteks by (bv. Oggend) om soortgelyke sinne te onderskei.';

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

  @override
  String get getMaterials => 'Get Materials';

  @override
  String get swapLanguages => 'Swap Languages';

  @override
  String get next => 'Next';
}

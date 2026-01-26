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
  String get saveTranslationsFromSearch => 'Vänligen spara översättningar från sökläge';

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
  String get helpMode1Desc => 'Röstigenkänning, översättning och lyssna på resultat.';

  @override
  String get helpMode1Details => '• Röst: Tryck mikrofon för start/stopp\n• Text: Skriv direkt för översättning\n• Auto-Sök: Hittar liknande meningar\n• Översätt: Knapp för direktöversättning\n• Lyssna: Ikon för TTS\n• Spara: Lägger till i historik\n• Rensa: Återställ allt';

  @override
  String get helpMode2Desc => 'Repetera sparade meningar med dold översättning.';

  @override
  String get helpMode2Details => '• Välj: Välj set eller \'Alla\'\n• Vänd: \'Visa/Dölj\' översättning\n• Lyssna: Spela TTS för mening\n• Markera: Kryssa (V) för klara\n• Ta bort: Långtryck för att ta bort\n• Filter: Visa alla eller per material';

  @override
  String get helpMode3Desc => 'Öva tala genom att lyssna och upprepa (Shadowing).';

  @override
  String get helpMode3Details => '• Välj: Välj paket\n• Intervall: [-] [+] väntetid (3s-60s)\n• Start/Stopp: Kontrollera session\n• Tala: Lyssna och upprepa\n• Poäng: Noggrannhet (0-100)\n• Försök: Knapp om röst ej hittas';

  @override
  String get helpJsonDesc => 'För import i Läge 3, skapa JSON:';

  @override
  String get helpTourDesc => 'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

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
  String get tutorialM2ListDesc => 'Kolla kort och vänd dem. (Long-press to delete)';

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

  @override
  String get tutorialM2DropdownDesc => 'Välj studiematerial.';

  @override
  String get tutorialM2ImportDesc => 'Importera JSON-fil från enhetsmapp.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc => 'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'Kontexttagg';

  @override
  String get tutorialContextDesc => 'Lägg till kontext (t.ex. Morgon) för att skilja liknande meningar åt.';

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
  String get tutorialSwapDesc => 'Jag byter ut mitt språk mot det språk jag lär mig.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3ResetDesc => 'Clear your progress and accuracy scores to start fresh.';

  @override
  String get menuSelectMaterialSet => 'Välj ett studiematerial';

  @override
  String get sectionWord => 'Ordavsnitt';

  @override
  String get sectionSentence => 'Meningsavsnitt';

  @override
  String get tabWord => 'ord';

  @override
  String get tabSentence => 'döma';

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

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
  String get confirmDelete => 'Er du sikker på at du vil slette denne oppføringen?';

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
  String get helpMode1Desc => 'Talegjenkjenning, oversettelse og lytt til resultat.';

  @override
  String get helpMode1Details => '• Stemme: Trykk mikrofon for start/stopp\n• Tekst: Skriv direkte for å oversette\n• Auto-Søk: Finner lignende setninger\n• Oversett: Knapp for umiddelbar oversettelse\n• Lytt: Høyttalerikon for TTS\n• Lagre: Legger til i historie\n• Tøm: Nullstill alt';

  @override
  String get helpMode2Desc => 'Gjennomgå lagrede setninger med skjult oversettelse.';

  @override
  String get helpMode2Details => '• Velg: Velg sett eller \'Alle\'\n• Snu: \'Vis/Skjul\' oversettelse\n• Lytt: Spill TTS for setning\n• Marker: Hake (V) for ferdige\n• Slett: Langt trykk for å slette\n• Filter: Vis alle eller etter materiell';

  @override
  String get helpMode3Desc => 'Øv på å snakke ved å lytte og gjenta (Shadowing).';

  @override
  String get helpMode3Details => '• Velg: Velg pakke\n• Intervall: [-] [+] ventetid (3s-60s)\n• Start/Stopp: Kontroller økt\n• Snakk: Lytt og gjenta\n• Poeng: Nøyaktighet (0-100)\n• Prøv igjen: Knapp hvis stemme ikke funnet';

  @override
  String get helpJsonDesc => 'For import i Modus 3, opprett JSON:';

  @override
  String get helpTourDesc => 'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

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
  String get tutorialM2ListDesc => 'Sjekk kortene og snu dem. (Long-press to delete)';

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

  @override
  String get tutorialM2DropdownDesc => 'Velg studiemateriale.';

  @override
  String get tutorialM2ImportDesc => 'Importer JSON-fil fra enhetsmappe.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc => 'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'Kontekstmerke';

  @override
  String get tutorialContextDesc => 'Legg til kontekst (f.eks. Morgen) for å skille lignende setninger.';

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
  String get tutorialSwapDesc => 'Jeg bytter ut språket mitt med språket jeg lærer.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3ResetDesc => 'Clear your progress and accuracy scores to start fresh.';

  @override
  String get menuSelectMaterialSet => 'Velg et studiemateriell';

  @override
  String get sectionWord => 'Ordseksjon';

  @override
  String get sectionSentence => 'Setningsseksjon';

  @override
  String get tabWord => 'ord';

  @override
  String get tabSentence => 'dømme';

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

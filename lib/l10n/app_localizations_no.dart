// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

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
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'For import i Modus 3, opprett JSON:';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get partnerMode => 'Partner Mode';

  @override
  String get manual => 'Manual';

  @override
  String get speaker => 'Speaker';

  @override
  String get switchToAi => 'Switch to AI';

  @override
  String get switchToPartner => 'Switch to Partner';

  @override
  String get currentLocation => 'Current Location';

  @override
  String get location => 'Sted';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Me';

  @override
  String get currentMaterialLabel => 'Current Selected Material:';

  @override
  String get basicMaterialRepository => 'Basic Repository';

  @override
  String get word => 'Word';

  @override
  String get sentence => 'Sentence';

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
  String get tutorialM2ListDesc =>
      'Sjekk kortene og snu dem. (Long-press to delete)';

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
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'Kontekstmerke';

  @override
  String get tutorialContextDesc =>
      'Legg til kontekst (f.eks. Morgen) for å skille lignende setninger.';

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
  String get wordDefenseDesc =>
      'Defend your base by speaking words correctly before enemies reach you.';

  @override
  String get dialogueQuestTitle => 'Dialogue Quest';

  @override
  String get dialogueQuestDesc =>
      'Roleplay in scenarios. Choose the right response and speak it aloud.';

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
  String get usageLimitTitle => 'Grense nådd';

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
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc =>
      'Check this to practice only your saved words.';

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
  String get basicWords => 'Basic Word Repository';

  @override
  String get basicSentences => 'Basic Sentence Repository';

  @override
  String get selectMaterialSet => 'Velg læremateriell';

  @override
  String get sectionWords => 'Ord';

  @override
  String get sectionSentences => 'Setninger';

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
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialSwapDesc =>
      'Jeg bytter ut språket mitt med språket jeg lærer.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

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
  String get errorProfanity =>
      'Kan ikke oversette fordi det inneholder banning.';

  @override
  String get errorHateSpeech =>
      'Kan ikke oversette fordi det inneholder hatefulle ytringer.';

  @override
  String get errorSexualContent =>
      'Kan ikke oversette fordi det inneholder seksuelt innhold.';

  @override
  String get errorOtherSafety =>
      'Oversettelsen ble avvist av AI-sikkerhetspolicyen.';

  @override
  String get clearAll => 'Fjern alle';

  @override
  String get disambiguationTitle => 'Velg betydning';

  @override
  String get disambiguationPrompt => 'Hvilken betydning vil du oversette med?';

  @override
  String get skip => 'Hopp over';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Conversation History';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => 'New Chat';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return 'From Conversation ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => 'Untitled Conversation';

  @override
  String get chatAiChat => 'AI Chat';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Current Material Set: $name';
  }

  @override
  String get basicWordRepository => 'Grunnleggende ordlager';

  @override
  String get basicSentenceRepository => 'Grunnleggende setningslager';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'Save & Exit';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get metadataDialogTitle => 'Details';

  @override
  String get tagFormal => 'Høflig';

  @override
  String get selectPOS => 'Select POS';

  @override
  String get selectSentenceType => 'Select Sentence Type';

  @override
  String get metadataRootWord => 'Root Word';

  @override
  String get posNoun => 'Noun';

  @override
  String get posVerb => 'Verb';

  @override
  String get posAdjective => 'Adjective';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posPronoun => 'Pronoun';

  @override
  String get posPreposition => 'Preposition';

  @override
  String get posConjunction => 'Conjunction';

  @override
  String get posInterjection => 'Interjection';

  @override
  String get typeStatement => 'Statement';

  @override
  String get typeQuestion => 'Question';

  @override
  String get typeExclamation => 'Exclamation';

  @override
  String get typeImperative => 'Imperative';

  @override
  String get labelNote => 'Note';

  @override
  String get labelShowMemorized => 'Finished';

  @override
  String get tagSelection => 'Select Tags';

  @override
  String get metadataFormType => 'Form Type';

  @override
  String get formInfinitive => 'Infinitive/Present';

  @override
  String get formPast => 'Past';

  @override
  String get formPastParticiple => 'Past Participle';

  @override
  String get formPresentParticiple => 'Present Participle';

  @override
  String get formPresent => 'Present';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get formSingular => 'Entall';

  @override
  String get caseSubject => 'Subject';

  @override
  String get caseObject => 'Object';

  @override
  String get casePossessive => 'Possessive';

  @override
  String get casePossessivePronoun => 'Possessive Pronoun';

  @override
  String get caseReflexive => 'Reflexive';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';

  @override
  String get searchConditions => 'Search Conditions';

  @override
  String recentNItems(int count) {
    return 'Recent $count items';
  }

  @override
  String get startsWith => 'Starts with';

  @override
  String get reset => 'Reset';

  @override
  String get participantRename => 'Rename Participant';

  @override
  String get labelName => 'Name';

  @override
  String get gender => 'Gender';

  @override
  String get language => 'Language';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get neutral => 'Nøytral';

  @override
  String get chatAllConversations => 'Alle samtaler';

  @override
  String get confirmDeleteConversation =>
      'Vil du slette denne samtalen?\nSlettede samtaler kan ikke gjenopprettes.';
}

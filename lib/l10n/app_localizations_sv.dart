// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

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
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'För import i Läge 3, skapa JSON:';

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
  String get location => 'Plats';

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
  String get tutorialM2ListDesc =>
      'Kolla kort och vänd dem. (Long-press to delete)';

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
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'Kontexttagg';

  @override
  String get tutorialContextDesc =>
      'Lägg till kontext (t.ex. Morgon) för att skilja liknande meningar åt.';

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
  String get usageLimitTitle => 'Användningsgräns nådd';

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
  String get selectMaterialSet => 'Välj läromedel';

  @override
  String get sectionWords => 'Ord';

  @override
  String get sectionSentences => 'Meningar';

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
      'Jag byter ut mitt språk mot det språk jag lär mig.';

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
  String get errorProfanity => 'Innehåller svordomar och kan inte översättas.';

  @override
  String get errorHateSpeech =>
      'Innehåller hatpropaganda och kan inte översättas.';

  @override
  String get errorSexualContent =>
      'Innehåller sexuellt innehåll och kan inte översättas.';

  @override
  String get errorOtherSafety =>
      'Översättningen nekades av AI:s säkerhetspolicy.';

  @override
  String get clearAll => 'Rensa allt';

  @override
  String get disambiguationTitle => 'Välj betydelse';

  @override
  String get disambiguationPrompt => 'Vilken betydelse vill du översätta?';

  @override
  String get skip => 'Hoppa över';

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
  String get basicWordRepository => 'Grundläggande ordlista';

  @override
  String get basicSentenceRepository => 'Grundläggande meningslista';

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
  String get labelShowMemorized => '외운것';

  @override
  String get tagSelection => '태그 선택';

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
  String get formPresent => '현재형';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get caseSubject => '주격';

  @override
  String get caseObject => '목적격';

  @override
  String get casePossessive => '소유격';

  @override
  String get casePossessivePronoun => '소유대명사';

  @override
  String get caseReflexive => '재귀대명사';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';
}

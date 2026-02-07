// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get helpTitle => 'Ajutor & Ghid';

  @override
  String get helpTabModes => 'Moduri';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpMode1Desc =>
      'Recunoaștere vocală, traducere și ascultare rezultat.';

  @override
  String get helpMode1Details =>
      '• Voce: Apasă microfon pentru start/stop\n• Text: Scrie direct pentru traducere\n• Auto-Căutare: Detectează propoziții similare\n• Traducere: Buton pentru traducere instantă\n• Ascultă: Icoană difuzor pentru TTS\n• Salvează: Adaugă în istoric\n• Șterge: Resetează tot';

  @override
  String get helpMode2Desc =>
      'Recapitulare propoziții salvate cu ascundere traducere.';

  @override
  String get helpMode2Details =>
      '• Selectare: Alege set sau \'Tot\'\n• Întoarce: \'Arată/Ascunde\' traducerea\n• Ascultă: Redă TTS propoziție\n• Studiat: Bifează (V) pentru completat\n• Șterge: Apăsare lungă pentru ștergere\n• Filtru: Toate sau după material';

  @override
  String get helpMode3Desc =>
      'Practică vorbire prin ascultare și repetare (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Selectare: Alege pachet\n• Interval: [-] [+] pauză (3s-60s)\n• Start/Stop: Control sesiune\n• Vorbește: Ascultă și repetă\n• Scor: Acuratețe (0-100)\n• Reîncearcă: Buton dacă vocea nu este detectată';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'Pentru import materiale în Mod 3, creați JSON:';

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
  String get location => 'Locație';

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
    return 'Recapitulare ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Material ($count)';
  }

  @override
  String get mode2Title => 'Recapitulare';

  @override
  String get search => 'Căutare';

  @override
  String get translate => 'Traducere';

  @override
  String get listen => 'Ascultă';

  @override
  String get saveData => 'Salvare';

  @override
  String get saved => 'Salvat';

  @override
  String get delete => 'Șterge';

  @override
  String get materialInfo => 'Informații material';

  @override
  String get cancel => 'Anulare';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Reîmprospătare';

  @override
  String studyRecords(int count) {
    return 'Înregistrări ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filtru Limbă:';

  @override
  String get noRecords => 'Nu există înregistrări pentru limba selectată';

  @override
  String get saveTranslationsFromSearch =>
      'Vă rugăm să salvați traducerile din modul de căutare';

  @override
  String get flip => 'Întoarce';

  @override
  String get hide => 'Ascunde';

  @override
  String get deleteRecord => 'Șterge Înregistrare';

  @override
  String get confirmDelete => 'Sigur doriți să ștergeți această înregistrare?';

  @override
  String get recordDeleted => 'Înregistrare ștearsă cu succes';

  @override
  String deleteFailed(String error) {
    return 'Ștergere eșuată: $error';
  }

  @override
  String get importJsonFile => 'Import JSON';

  @override
  String get importing => 'Se importă...';

  @override
  String get importComplete => 'Import Complet';

  @override
  String get importFailed => 'Import Eșuat';

  @override
  String importFile(String fileName) {
    return 'Fișier: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String importAdded(int count) {
    return 'Adăugat: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Sărit: $count';
  }

  @override
  String get errors => 'Erori:';

  @override
  String get error => 'Eroare';

  @override
  String importErrorMessage(String error) {
    return 'Nu s-a putut importa fișierul:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Selectare Material';

  @override
  String get subject => 'Subiect:';

  @override
  String get source => 'Sursă:';

  @override
  String get file => 'Fișier:';

  @override
  String progress(int current, int total) {
    return 'Progres: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Vă rugăm importați fișier JSON';

  @override
  String get selectMaterialPrompt => 'Vă rugăm selectați material de studiu';

  @override
  String get studyComplete => 'Studiat';

  @override
  String get markAsStudied => 'Marchează ca Studiat';

  @override
  String get listening => 'Ascult...';

  @override
  String get recognized => 'Recunoaștere completă';

  @override
  String recognitionFailed(String error) {
    return 'Recunoaștere vocală eșuată: $error';
  }

  @override
  String get checking => 'Verificare...';

  @override
  String get translating => 'Traducere...';

  @override
  String get translationComplete => 'Traducere completă (necesită salvare)';

  @override
  String get translationLoaded => 'Traducere salvată încărcată';

  @override
  String translationFailed(String error) {
    return 'Traducere eșuată: $error';
  }

  @override
  String get enterTextToTranslate => 'Introduceți text pentru traducere';

  @override
  String get saving => 'Salvare...';

  @override
  String get noTranslationToSave => 'Nicio traducere de salvat';

  @override
  String saveFailed(String error) {
    return 'Salvare eșuată: $error';
  }

  @override
  String get playing => 'Redare...';

  @override
  String get noTextToPlay => 'Nicio text de redat';

  @override
  String playbackFailed(String error) {
    return 'Redare eșuată: $error';
  }

  @override
  String get sourceLanguage => 'Limbă Sursă';

  @override
  String get targetLanguage => 'Limbă Țintă';

  @override
  String get similarTextFound => 'Text similar găsit';

  @override
  String get useExistingText => 'Folosește Existent';

  @override
  String get createNew => 'Creează Nou';

  @override
  String reviewCount(int count) {
    return 'Recapitulat de $count ori';
  }

  @override
  String get tabSpeaking => 'Vorbire';

  @override
  String get speakingPractice => 'Practică Vorbire';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Pronunția ta';

  @override
  String get correctAnswer => 'Răspuns Corect';

  @override
  String score(String score) {
    return 'Acuratețe: $score%';
  }

  @override
  String get perfect => 'Perfect!';

  @override
  String get good => 'Bine';

  @override
  String get tryAgain => 'Încearcă din nou';

  @override
  String get startPractice => 'Începe Practica';

  @override
  String get stopPractice => 'Oprește';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Start Tur';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Intrare Vocală';

  @override
  String get tutorialMicDesc => 'Apasă microfonul pentru intrare vocală.';

  @override
  String get tutorialTabDesc => 'Aici puteți selecta modul de învățare dorit.';

  @override
  String get tutorialTapToContinue => 'Atingeți pentru a continua';

  @override
  String get tutorialTransTitle => 'Traducere';

  @override
  String get tutorialTransDesc => 'Apasă aici pentru a traduce textul.';

  @override
  String get tutorialSaveTitle => 'Salvare';

  @override
  String get tutorialSaveDesc => 'Salvează traducerea în înregistrări.';

  @override
  String get tutorialM2SelectTitle => 'Selectare & Filtru';

  @override
  String get tutorialM2SelectDesc =>
      'Alege materiale sau \'Recapitulare Tot\'.';

  @override
  String get tutorialM2ListTitle => 'Listă Studiu';

  @override
  String get tutorialM2ListDesc =>
      'Verifică cardurile și întoarce-le. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Selectare Material';

  @override
  String get tutorialM3SelectDesc => 'Alege un set pentru practică.';

  @override
  String get tutorialM3IntervalTitle => 'Interval';

  @override
  String get tutorialM3IntervalDesc => 'Reglează timpul de așteptare';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3StartDesc => 'Apasă play pentru a începe.';

  @override
  String get startWarning => 'Avertisment';

  @override
  String get noVoiceDetected => 'Voce nedetectată';

  @override
  String get tooltipSearch => 'Căutare';

  @override
  String get tooltipStudyReview => 'Studiu+Revizuire';

  @override
  String get tooltipSpeaking => 'Vorbire';

  @override
  String get tooltipDecrease => 'Scădere';

  @override
  String get tooltipIncrease => 'Creștere';

  @override
  String get languageSettings => 'Setări limbă';

  @override
  String get tutorialM2DropdownDesc => 'Selectați materiale de studiu.';

  @override
  String get tutorialM2ImportDesc =>
      'Importați fișier JSON din folderul dispozitivului.';

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
  String get tutorialContextTitle => 'Etichetă context';

  @override
  String get tutorialContextDesc =>
      'Adăugați context (ex. Dimineața) pentru a distinge propoziții similare.';

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
  String get usageLimitTitle => 'Limita atinsă';

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
  String get selectMaterialSet => 'Selectați setul de materiale de învățare';

  @override
  String get sectionWords => 'Cuvinte';

  @override
  String get sectionSentences => 'Fraze';

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
  String get tutorialSwapDesc => 'Îmi schimb limba cu limba pe care o învăț.';

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
  String get menuSelectMaterialSet => 'Selectați un material de studiu';

  @override
  String get sectionWord => 'Secțiune de cuvinte';

  @override
  String get sectionSentence => 'Secțiunea de propoziții';

  @override
  String get tabWord => 'cuvânt';

  @override
  String get tabSentence => 'propoziție';

  @override
  String get errorProfanity =>
      'Nu se poate traduce deoarece conține cuvinte obscene.';

  @override
  String get errorHateSpeech =>
      'Nu se poate traduce deoarece conține discurs instigator la ură.';

  @override
  String get errorSexualContent =>
      'Nu se poate traduce deoarece conține conținut sexual explicit.';

  @override
  String get errorOtherSafety =>
      'Traducerea a fost refuzată de politica de siguranță AI.';

  @override
  String get clearAll => 'Șterge tot';

  @override
  String get disambiguationTitle => 'Selectați sensul';

  @override
  String get disambiguationPrompt => 'Ce sens doriți să traducem?';

  @override
  String get skip => 'Omite';

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
  String get basicWordRepository => 'Depozit de cuvinte de bază';

  @override
  String get basicSentenceRepository => 'Depozit de propoziții de bază';

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
  String get tagFormal => 'Formal';

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
  String get formSingular => 'Singular';

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
  String get neutral => 'Neutru';

  @override
  String get chatAllConversations => 'Toate conversațiile';

  @override
  String get confirmDeleteConversation =>
      'Sigur dorești să ștergi această conversație?\nConversațiile șterse nu pot fi recuperate.';
}

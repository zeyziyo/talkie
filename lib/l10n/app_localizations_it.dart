// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get helpTitle => 'Aiuto & Guida';

  @override
  String get helpTabModes => 'Modalità';

  @override
  String get helpTabJson => 'Formato JSON';

  @override
  String get helpTabTour => 'Tour';

  @override
  String get helpMode1Desc =>
      'Riconosci voce, traduci nella lingua di destinazione e ascolta il risultato.';

  @override
  String get helpMode1Details =>
      '• Input Vocale: Tocca microfono per iniziare/fermare\n• Input Testo: Scrivi direttamente per tradurre\n• Auto-Cerca: Rileva frasi simili esistenti\n• Traduci: Tocca pulsante per traduzione istantanea\n• Ascolta: Icona altoparlante per TTS\n• Salva: \'Salva Dati\' aggiunge alla cronologia\n• Pulisci: Resetta tutti gli input';

  @override
  String get helpMode2Desc =>
      'Ripassa frasi salvate con traduzioni nascoste automaticamente.';

  @override
  String get helpMode2Details =>
      '• Seleziona Materiale: Scegli set o \'Ripassa Tutto\'\n• Gira Carta: Usa \'Mostra/Nascondi\' per vedere traduzione\n• Ascolta: Riproduci TTS per la frase\n• Segna Studiato: Spunta (V) per elementi completati\n• Elimina: Premi a lungo carta per rimuovere\n• Filtro: Vedi tutto o filtra per materiale';

  @override
  String get helpMode3Desc =>
      'Pratica il parlato ascoltando e ripetendo (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Seleziona Materiale: Scegli pacchetto studio\n• Intervallo: [-] [+] regola attesa (3s-60s)\n• Start/Stop: Controlla sessione\n• Parla: Ascolta audio e ripeti\n• Feedback: Punteggio precisione (0-100)\n• Riprova: Usa pulsante riprova se voce non rilevata';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc =>
      'Per importare materiali di studio in Modalità 3, crea file JSON con questa struttura:';

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
  String get location => 'Posizione';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Io';

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
    return 'Ripasso ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materiale ($count)';
  }

  @override
  String get mode2Title => 'Ripasso';

  @override
  String get search => 'Cerca';

  @override
  String get translate => 'Traduci';

  @override
  String get listen => 'Ascolta';

  @override
  String get saveData => 'Salva Dati';

  @override
  String get saved => 'Salvato';

  @override
  String get delete => 'Elimina';

  @override
  String get materialInfo => 'Info materiale';

  @override
  String get cancel => 'Annulla';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Aggiorna';

  @override
  String studyRecords(int count) {
    return 'Registrazioni ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filtro Lingua:';

  @override
  String get noRecords => 'Nessuna registrazione per la lingua selezionata';

  @override
  String get saveTranslationsFromSearch =>
      'Salva traduzioni dalla modalità ricerca';

  @override
  String get flip => 'Gira';

  @override
  String get hide => 'Nascondi';

  @override
  String get deleteRecord => 'Elimina Record';

  @override
  String get confirmDelete => 'Sei sicuro di voler eliminare questo record?';

  @override
  String get recordDeleted => 'Record eliminato con successo';

  @override
  String deleteFailed(String error) {
    return 'Eliminazione fallita: $error';
  }

  @override
  String get importJsonFile => 'Importa JSON';

  @override
  String get importing => 'Importazione...';

  @override
  String get importComplete => 'Importazione Completata';

  @override
  String get importFailed => 'Importazione Fallita';

  @override
  String importFile(String fileName) {
    return 'File: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Totale: $count';
  }

  @override
  String importAdded(int count) {
    return 'Aggiunti: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Saltati: $count';
  }

  @override
  String get errors => 'Errori:';

  @override
  String get error => 'Errore';

  @override
  String importErrorMessage(String error) {
    return 'Impossibile importare file:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Seleziona Materiale';

  @override
  String get subject => 'Argomento:';

  @override
  String get source => 'Fonte:';

  @override
  String get file => 'File:';

  @override
  String progress(int current, int total) {
    return 'Progresso: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Per favore importa un file JSON';

  @override
  String get selectMaterialPrompt =>
      'Per favore seleziona un materiale di studio';

  @override
  String get studyComplete => 'Studiato';

  @override
  String get markAsStudied => 'Segna come Studiato';

  @override
  String get listening => 'Ascolto...';

  @override
  String get recognized => 'Riconoscimento completato';

  @override
  String recognitionFailed(String error) {
    return 'Riconoscimento vocale fallito: $error';
  }

  @override
  String get checking => 'Controllo...';

  @override
  String get translating => 'Traduzione...';

  @override
  String get translationComplete =>
      'Traduzione completata (salvataggio richiesto)';

  @override
  String get translationLoaded => 'Traduzione salvata caricata';

  @override
  String translationFailed(String error) {
    return 'Traduzione fallita: $error';
  }

  @override
  String get enterTextToTranslate => 'Inserisci testo da tradurre';

  @override
  String get saving => 'Salvataggio...';

  @override
  String get noTranslationToSave => 'Nessuna traduzione da salvare';

  @override
  String saveFailed(String error) {
    return 'Salvataggio fallito: $error';
  }

  @override
  String get playing => 'Riproduzione...';

  @override
  String get noTextToPlay => 'Nessun testo da riprodurre';

  @override
  String playbackFailed(String error) {
    return 'Riproduzione fallita: $error';
  }

  @override
  String get sourceLanguage => 'Lingua Sorgente';

  @override
  String get targetLanguage => 'Lingua Destinazione';

  @override
  String get similarTextFound => 'Testo simile trovato';

  @override
  String get useExistingText => 'Usa Esistente';

  @override
  String get createNew => 'Crea Nuovo';

  @override
  String reviewCount(int count) {
    return 'Ripassato $count volte';
  }

  @override
  String get tabSpeaking => 'Parlare';

  @override
  String get speakingPractice => 'Pratica Parlata';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervallo: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'La tua Pronuncia';

  @override
  String get correctAnswer => 'Risposta Corretta';

  @override
  String score(String score) {
    return 'Precisione: $score%';
  }

  @override
  String get perfect => 'Perfetto!';

  @override
  String get good => 'Bene';

  @override
  String get tryAgain => 'Riprova';

  @override
  String get startPractice => 'Inizia Pratica';

  @override
  String get stopPractice => 'Ferma Pratica';

  @override
  String get startTutorial => 'Inizia Tutorial';

  @override
  String get tutorialMicTitle => 'Input Vocale';

  @override
  String get tutorialMicDesc =>
      'Tocca il pulsante microfono per iniziare input vocale.';

  @override
  String get tutorialTabDesc =>
      'Qui puoi selezionare la modalità di apprendimento desiderata.';

  @override
  String get tutorialTapToContinue => 'Tocca per continuare';

  @override
  String get tutorialTransTitle => 'Traduci';

  @override
  String get tutorialTransDesc => 'Tocca qui per tradurre il tuo testo.';

  @override
  String get tutorialSaveTitle => 'Salva';

  @override
  String get tutorialSaveDesc =>
      'Salva la tua traduzione nei record di studio.';

  @override
  String get tutorialM2SelectTitle => 'Seleziona & Filtra';

  @override
  String get tutorialM2SelectDesc =>
      'Scegli materiali di studio o passa a \'Ripassa Tutto\'.';

  @override
  String get tutorialM2ListTitle => 'Lista Studio';

  @override
  String get tutorialM2ListDesc =>
      'Controlla le tue carte salvate e girale per vedere le risposte. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Seleziona Materiale';

  @override
  String get tutorialM3SelectDesc =>
      'Scegli un set di materiali per la pratica parlata.';

  @override
  String get tutorialM3IntervalTitle => 'Intervallo';

  @override
  String get tutorialM3IntervalDesc =>
      'Regola il tempo di attesa tra le frasi.';

  @override
  String get tutorialM3StartTitle => 'Inizia Pratica';

  @override
  String get tutorialM3StartDesc =>
      'Tocca play per iniziare ad ascoltare e ripetere.';

  @override
  String get startWarning => 'Avviso';

  @override
  String get noVoiceDetected => 'Nessuna voce rilevata';

  @override
  String get tooltipSearch => 'Cerca';

  @override
  String get tooltipStudyReview => 'Studio+Ripasso';

  @override
  String get tooltipSpeaking => 'Parlare';

  @override
  String get tooltipDecrease => 'Diminuisci';

  @override
  String get tooltipIncrease => 'Aumenta';

  @override
  String get languageSettings => 'Impostazioni lingua';

  @override
  String get tutorialM2DropdownDesc => 'Seleziona materiali di studio.';

  @override
  String get tutorialM2ImportDesc =>
      'Importa file JSON dalla cartella del dispositivo.';

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
  String get tutorialContextTitle => 'Tag contesto';

  @override
  String get tutorialContextDesc =>
      'Aggiungi contesto (es. Mattina) per distinguere frasi simili.';

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
  String get usageLimitTitle => 'Limite raggiunto';

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
  String get selectMaterialSet => 'Seleziona materiale didattico';

  @override
  String get sectionWords => 'Parole';

  @override
  String get sectionSentences => 'Frasi';

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
      'Scambio la mia lingua con la lingua che sto imparando.';

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
  String get menuSelectMaterialSet => 'Seleziona un materiale di studio';

  @override
  String get sectionWord => 'Sezione di parole';

  @override
  String get sectionSentence => 'Sezione della frase';

  @override
  String get tabWord => 'parola';

  @override
  String get tabSentence => 'frase';

  @override
  String get errorProfanity => 'Non posso tradurre perché contiene volgarità.';

  @override
  String get errorHateSpeech =>
      'Non posso tradurre perché contiene incitamento all\'odio.';

  @override
  String get errorSexualContent =>
      'Non posso tradurre perché contiene contenuti sessuali.';

  @override
  String get errorOtherSafety =>
      'Traduzione rifiutata in base alle norme di sicurezza dell\'IA.';

  @override
  String get clearAll => 'Cancella tutto';

  @override
  String get disambiguationTitle => 'Scegli il significato';

  @override
  String get disambiguationPrompt => 'Quale significato vuoi tradurre?';

  @override
  String get skip => 'Salta';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Cronologia';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => 'Nuova chat';

  @override
  String get chatChoosePersona => 'Scegli personaggio';

  @override
  String get chatTypeHint => 'Scrivi un messaggio...';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String get chatNoConversations => 'Nessuna conversazione';

  @override
  String get chatStartNewPrompt => 'Inizia una chat per fare pratica!';

  @override
  String chatFromConversation(Object speaker) {
    return 'From Conversation ($speaker)';
  }

  @override
  String get personaTeacher => 'Insegnante di inglese';

  @override
  String get personaGuide => 'Guida turistica';

  @override
  String get personaFriend => 'Amico locale';

  @override
  String get chatUntitled => 'Untitled Conversation';

  @override
  String get chatAiChat => 'Chat IA';

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
  String get basicWordRepository => 'Archivio parole base';

  @override
  String get basicSentenceRepository => 'Archivio frasi base';

  @override
  String get chatEndTitle => 'Fine e salva';

  @override
  String get chatEndMessage => 'Vuoi terminare la conversazione?';

  @override
  String get chatSaveAndExit => 'Salva ed esci';

  @override
  String get errorSelectCategory => 'Seleziona prima parola o frase!';

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
  String get formSingular => 'Singolare';

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

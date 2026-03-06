// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get accuracy => 'Precisione';

  @override
  String get ttsMissing =>
      'Il motore di sintesi vocale per questa lingua non è installato sul dispositivo.';

  @override
  String get ttsInstallGuide =>
      'Installa i dati della lingua in Impostazioni Android > Sintesi vocale di Google.';

  @override
  String get adLoading => 'Caricamento annuncio in corso. Riprova più tardi.';

  @override
  String get addNewSubject => 'Aggiungi nuovo titolo';

  @override
  String get addParticipant => 'Aggiungi partecipante';

  @override
  String get addTagHint => 'Aggiungi tag...';

  @override
  String get alreadyHaveAccount => 'Hai già un account?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Riproduzione automatica';

  @override
  String get basic => 'Base';

  @override
  String get basicDefault => 'Base';

  @override
  String get basicMaterialRepository => 'Archivio di frasi/parole di base';

  @override
  String get basicSentenceRepository => 'Archivio frasi base';

  @override
  String get basicSentences => 'Archivio di frasi di base';

  @override
  String get basicWordRepository => 'Archivio parole base';

  @override
  String get basicWords => 'Archivio di parole di base';

  @override
  String get cancel => 'Annulla';

  @override
  String get caseObject => 'Oggetto';

  @override
  String get casePossessive => 'Possessivo';

  @override
  String get casePossessivePronoun => 'Pronome possessivo';

  @override
  String get caseReflexive => 'Riflessivo';

  @override
  String get caseSubject => 'Soggetto';

  @override
  String get chatAiChat => 'Chat';

  @override
  String get chatAllConversations => 'Tutte le conversazioni';

  @override
  String get chatChoosePersona => 'Scegli personaggio';

  @override
  String get chatEndMessage => 'Vuoi terminare la conversazione?';

  @override
  String get chatEndTitle => 'Fine e salva';

  @override
  String chatFailed(Object error) {
    return 'Chat fallita: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Estratto dalla conversazione ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Cronologia';

  @override
  String get chatNew => 'Nuova chat';

  @override
  String get chatNewChat => 'Nuova chat';

  @override
  String get chatNoConversations => 'Nessuna conversazione';

  @override
  String get chatSaveAndExit => 'Salva ed esci';

  @override
  String get chatStartNewPrompt => 'Inizia una chat per fare pratica!';

  @override
  String get chatTypeHint => 'Scrivi un messaggio...';

  @override
  String get chatUntitled => 'Chat senza titolo';

  @override
  String get checking => 'Controllo...';

  @override
  String get clearAll => 'Cancella tutto';

  @override
  String get confirm => 'Conferma';

  @override
  String get confirmDelete => 'Sei sicuro di voler eliminare questo record?';

  @override
  String get confirmDeleteConversation =>
      'Vuoi eliminare questa conversazione?\nNon sarà possibile recuperarla.';

  @override
  String get confirmDeleteParticipant => 'Eliminare questo partecipante?';

  @override
  String get contextTagHint =>
      'Scrivi la situazione per facilitare l\'identificazione in futuro';

  @override
  String get contextTagLabel =>
      'Contesto/Situazione (opzionale) - es. Saluto mattutino, Formale';

  @override
  String get copiedToClipboard => 'Copiato negli appunti!';

  @override
  String get copy => 'Copia';

  @override
  String get correctAnswer => 'Risposta Corretta';

  @override
  String get createNew => 'Crea Nuovo';

  @override
  String get currentLocation => 'Posizione attuale';

  @override
  String get currentMaterialLabel => 'Materiale selezionato:';

  @override
  String get delete => 'Elimina';

  @override
  String deleteFailed(String error) {
    return 'Eliminazione fallita: $error';
  }

  @override
  String get deleteRecord => 'Elimina Record';

  @override
  String get dialogueQuestDesc =>
      'Esercitati a conversare attraverso un gioco di ruolo. Scegli la risposta appropriata e pronunciala.';

  @override
  String get dialogueQuestTitle => 'Missione dialogo';

  @override
  String get disambiguationPrompt => 'Quale significato vuoi tradurre?';

  @override
  String get disambiguationTitle => 'Scegli il significato';

  @override
  String get dontHaveAccount => 'Non hai un account?';

  @override
  String get editParticipant => 'Modifica partecipante';

  @override
  String get email => 'Email';

  @override
  String get emailAlreadyInUse =>
      'Questa email è già registrata. Accedi o recupera la password.';

  @override
  String get enterNewSubjectName => 'Inserisci nuovo titolo';

  @override
  String get enterSentenceHint => 'Inserisci una frase...';

  @override
  String get enterTextHint => 'Inserisci il testo da tradurre';

  @override
  String get enterTextToTranslate => 'Inserisci testo da tradurre';

  @override
  String get enterWordHint => 'Inserisci una parola...';

  @override
  String get error => 'Errore';

  @override
  String get errorHateSpeech =>
      'Non posso tradurre perché contiene incitamento all\'odio.';

  @override
  String get errorOtherSafety =>
      'Traduzione rifiutata in base alle norme di sicurezza dell\'IA.';

  @override
  String get errorProfanity => 'Non posso tradurre perché contiene volgarità.';

  @override
  String get errorSelectCategory => 'Seleziona prima parola o frase!';

  @override
  String get errorSexualContent =>
      'Non posso tradurre perché contiene contenuti sessuali.';

  @override
  String get errors => 'Errori:';

  @override
  String get female => 'Femmina';

  @override
  String get file => 'File:';

  @override
  String get filterAll => 'Tutto';

  @override
  String get flip => 'Gira';

  @override
  String get formComparative => 'Comparativo';

  @override
  String get formInfinitive => 'Infinito/Presente';

  @override
  String get formPast => 'Passato';

  @override
  String get formPastParticiple => 'Participio passato';

  @override
  String get formPlural => 'Plurale';

  @override
  String get formPositive => 'Positivo';

  @override
  String get formPresent => 'Presente';

  @override
  String get formPresentParticiple => 'Participio presente (ing)';

  @override
  String get formSingular => 'Singolare';

  @override
  String get formSuperlative => 'Superlativo';

  @override
  String get formThirdPersonSingular => 'Terza persona singolare';

  @override
  String get gameModeDesc => 'Seleziona una modalità di gioco per esercitarti';

  @override
  String get gameModeTitle => 'Modalità gioco';

  @override
  String get gameOver => 'Game Over';

  @override
  String get gender => 'Genere';

  @override
  String get generalTags => 'Tag generali';

  @override
  String get getMaterials => 'Ottieni materiali';

  @override
  String get good => 'Bene';

  @override
  String get googleContinue => 'Continua con Google';

  @override
  String get helpDialogueImportDesc =>
      'Importa un intero set di dialoghi da un file JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'Per importare materiali di studio in Modalità 3, crea file JSON con questa struttura:';

  @override
  String get helpJsonTypeDialogue => 'Dialogo';

  @override
  String get helpJsonTypeSentence => 'Frase';

  @override
  String get helpJsonTypeWord => 'Parola';

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
      'Ascolta e ripeti le frasi (Shadowing) per esercitare la pronuncia.';

  @override
  String get helpMode3Details =>
      '• Seleziona Materiale: Scegli pacchetto studio\n• Intervallo: [-] [+] regola attesa (3s-60s)\n• Start/Stop: Controlla sessione\n• Parla: Ascolta audio e ripeti\n• Feedback: Punteggio precisione (0-100)\n• Riprova: Usa pulsante riprova se voce non rilevata';

  @override
  String get helpModeChatDesc =>
      'Esercita le tue capacità di conversazione pratica chattando con una persona AI.';

  @override
  String get helpModeChatDetails =>
      '• Chat AI: Esercitati in conversazioni reali con personaggi.\n• Gestione partecipanti: Imposta la tua lingua e quella dell\'AI per evitare incongruenze linguistiche.\n• Simulazione GPS: Crea situazioni di conversazione realistiche basate sulla tua posizione attuale.\n• Conservazione della cronologia: Tutte le conversazioni vengono salvate in modo sicuro in base all\'ID e la cronologia viene mantenuta anche se cambi il nome.';

  @override
  String get helpTabJson => 'Formato JSON';

  @override
  String get helpTabModes => 'Modalità';

  @override
  String get helpTabTour => 'Guida introduttiva';

  @override
  String get helpTitle => 'Aiuto & Guida';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Nascondi';

  @override
  String importAdded(int count) {
    return 'Aggiunti: $count';
  }

  @override
  String get importComplete => 'Importazione Completata';

  @override
  String get importDuplicateTitleError =>
      'Esiste già un materiale con lo stesso titolo. Cambia il titolo e riprova.';

  @override
  String importErrorMessage(String error) {
    return 'Impossibile importare file:\\n$error';
  }

  @override
  String get importFailed => 'Importazione Fallita';

  @override
  String importFile(String fileName) {
    return 'File: $fileName';
  }

  @override
  String get importJsonFile => 'Importa JSON';

  @override
  String get importJsonFilePrompt => 'Per favore importa un file JSON';

  @override
  String importSkipped(int count) {
    return 'Saltati: $count';
  }

  @override
  String importTotal(int count) {
    return 'Totale: $count';
  }

  @override
  String get importing => 'Importazione...';

  @override
  String get inputModeTitle => 'Inserimento';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervallo: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Inserisci un\'email valida.';

  @override
  String get kakaoContinue => 'Continua con Kakao';

  @override
  String get labelLangCode => 'Codice lingua (es. en-US, ko-KR)';

  @override
  String get labelName => 'Nome';

  @override
  String get labelNote => 'Nota';

  @override
  String get labelPOS => 'Parte del discorso';

  @override
  String get labelRole => 'Ruolo';

  @override
  String get labelSentence => 'Frase';

  @override
  String get labelSentenceCollection => 'Raccolta di frasi';

  @override
  String get labelSentenceType => 'Tipo di frase';

  @override
  String get labelShowMemorized => 'Finito';

  @override
  String get labelType => 'Tipo:';

  @override
  String get labelWord => 'Parola';

  @override
  String get labelWordbook => 'Raccolta di parole';

  @override
  String get language => 'Lingua';

  @override
  String get languageSettings => 'Impostazioni lingua';

  @override
  String get languageSettingsTitle => 'Impostazioni lingua';

  @override
  String get libTitleFirstMeeting => 'Primo incontro';

  @override
  String get libTitleGreetings1 => 'Saluti 1';

  @override
  String get libTitleNouns1 => 'Sostantivi 1';

  @override
  String get libTitleVerbs1 => 'Verbi 1';

  @override
  String get listen => 'Ascolta';

  @override
  String get listening => 'Ascolto...';

  @override
  String get loadingParticipants => 'Caricamento partecipanti...';

  @override
  String get location => 'Posizione';

  @override
  String get login => 'Accedi';

  @override
  String get logout => 'Disconnetti';

  @override
  String get logoutConfirmMessage =>
      'Vuoi disconnetterti da questo dispositivo?';

  @override
  String get logoutConfirmTitle => 'Disconnetti';

  @override
  String get male => 'Maschio';

  @override
  String get manageParticipants => 'Gestisci partecipanti';

  @override
  String get manual => 'Inserimento manuale';

  @override
  String get markAsStudied => 'Segna come Studiato';

  @override
  String get materialInfo => 'Info materiale';

  @override
  String get me => 'Io';

  @override
  String get menuDeviceImport => 'Importa materiale dal dispositivo';

  @override
  String get menuHelp => 'Aiuto';

  @override
  String get menuLanguageSettings => 'Impostazioni lingua';

  @override
  String get menuOnlineLibrary => 'Libreria online';

  @override
  String get menuSelectMaterialSet => 'Seleziona un materiale di studio';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get menuWebDownload => 'Manuale utente';

  @override
  String get metadataDialogTitle => 'Classificazione dettagliata';

  @override
  String get metadataFormType => 'Forma grammaticale';

  @override
  String get metadataRootWord => 'Radice (Root Word)';

  @override
  String get micButtonTooltip => 'Inizia il riconoscimento vocale';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Materiale selezionato: $name';
  }

  @override
  String get mode2Title => 'Ripasso';

  @override
  String get mode3Next => 'Avanti';

  @override
  String get mode3Start => 'Inizia';

  @override
  String get mode3Stop => 'Fine';

  @override
  String get mode3TryAgain => 'Riprova';

  @override
  String get mySentenceCollection => 'La mia raccolta di frasi';

  @override
  String get myWordbook => 'Il mio quaderno di parole';

  @override
  String get neutral => 'Neutro';

  @override
  String get newSubjectName => 'Nuovo titolo quaderno/frasario';

  @override
  String get next => 'Avanti';

  @override
  String get noDialogueHistory => 'Nessuna cronologia dialoghi.';

  @override
  String get noInternetWarningMic =>
      'Nessuna connessione internet. Il riconoscimento vocale potrebbe non funzionare offline.';

  @override
  String get noInternetWarningTranslate =>
      'Nessuna connessione internet. La traduzione non è disponibile offline. Si prega di usare la modalità ripasso.';

  @override
  String get noMaterialsInCategory => 'Nessun materiale in questa categoria.';

  @override
  String get noParticipantsFound => 'Nessun partecipante registrato.';

  @override
  String get noRecords => 'Nessuna registrazione per la lingua selezionata';

  @override
  String get noStudyMaterial => 'Nessun materiale di studio.';

  @override
  String get noTextToPlay => 'Nessun testo da riprodurre';

  @override
  String get noTranslationToSave => 'Nessuna traduzione da salvare';

  @override
  String get noVoiceDetected => 'Nessuna voce rilevata';

  @override
  String get notSelected => '- Non selezionato -';

  @override
  String get onlineLibraryCheckInternet =>
      'Controlla la connessione internet o riprova più tardi.';

  @override
  String get onlineLibraryLoadFailed => 'Impossibile caricare il materiale.';

  @override
  String get onlineLibraryNoMaterials => 'Nessun materiale disponibile.';

  @override
  String get participantDeleted => 'Partecipante eliminato.';

  @override
  String get participantRename => 'Rinomina partecipante';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Modalità partner';

  @override
  String get password => 'Password';

  @override
  String get passwordTooShort =>
      'La password deve essere di almeno 6 caratteri.';

  @override
  String get perfect => 'Perfetto!';

  @override
  String get personaFriend => 'Amico locale';

  @override
  String get personaGuide => 'Guida turistica';

  @override
  String get personaTeacher => 'Insegnante di inglese';

  @override
  String get playAgain => 'Gioca di nuovo';

  @override
  String playbackFailed(String error) {
    return 'Riproduzione fallita: $error';
  }

  @override
  String get playing => 'Riproduzione...';

  @override
  String get posAdjective => 'Aggettivo';

  @override
  String get posAdverb => 'Avverbio';

  @override
  String get posConjunction => 'Congiunzione';

  @override
  String get posInterjection => 'Interiezione';

  @override
  String get posNoun => 'Sostantivo';

  @override
  String get posPreposition => 'Preposizione';

  @override
  String get posPronoun => 'Pronome';

  @override
  String get posVerb => 'Verbo';

  @override
  String get practiceModeTitle => 'Esercitati';

  @override
  String get practiceWordsOnly => 'Esercitati solo con le parole';

  @override
  String progress(int current, int total) {
    return 'Progresso: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Visualizza gli ultimi $count elementi creati';
  }

  @override
  String recognitionFailed(String error) {
    return 'Riconoscimento vocale fallito: $error';
  }

  @override
  String get recognized => 'Riconoscimento completato';

  @override
  String get recognizedText => 'Testo riconosciuto:';

  @override
  String get recordDeleted => 'Record eliminato con successo';

  @override
  String get refresh => 'Aggiorna';

  @override
  String get reset => 'Resetta';

  @override
  String get resetPracticeHistory => 'Resetta cronologia esercizi';

  @override
  String get retry => 'Riprovare?';

  @override
  String get reviewAll => 'Ripassa tutto';

  @override
  String reviewCount(int count) {
    return 'Ripassato $count volte';
  }

  @override
  String get reviewModeTitle => 'Ripasso';

  @override
  String get roleAi => 'IA';

  @override
  String get roleThirdParty => 'Terzo';

  @override
  String get roleUser => 'Utente';

  @override
  String get save => 'Salva';

  @override
  String get saveData => 'Salva Dati';

  @override
  String saveFailed(String error) {
    return 'Salvataggio fallito: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Salva traduzioni dalla modalità ricerca';

  @override
  String get saved => 'Salvato';

  @override
  String get saving => 'Salvataggio...';

  @override
  String score(String score) {
    return 'Precisione: $score%';
  }

  @override
  String get scoreLabel => 'Punteggio';

  @override
  String get search => 'Cerca';

  @override
  String get searchConditions => 'Condizioni di ricerca';

  @override
  String get searchSentenceHint => 'Cerca frase...';

  @override
  String get searchWordHint => 'Cerca parola...';

  @override
  String get sectionSentence => 'Sezione della frase';

  @override
  String get sectionSentences => 'Frasi';

  @override
  String get sectionWord => 'Sezione di parole';

  @override
  String get sectionWords => 'Parole';

  @override
  String get selectExistingSubject => 'Seleziona titolo esistente';

  @override
  String get selectMaterialPrompt =>
      'Per favore seleziona un materiale di studio';

  @override
  String get selectMaterialSet => 'Seleziona materiale didattico';

  @override
  String get selectPOS => 'Seleziona parte del discorso';

  @override
  String get selectParticipants => 'Seleziona partecipanti';

  @override
  String get selectSentenceType => 'Seleziona tipo di frase';

  @override
  String get selectStudyMaterial => 'Seleziona Materiale';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Frase';

  @override
  String get signUp => 'Registrati';

  @override
  String get similarTextFound => 'Testo simile trovato';

  @override
  String get skip => 'Salta';

  @override
  String get source => 'Fonte:';

  @override
  String get sourceLanguage => 'Lingua Sorgente';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Parla ora!';

  @override
  String get speaker => 'Parlante';

  @override
  String get speakerSelect => 'Seleziona parlante';

  @override
  String get speakingPractice => 'Pratica Parlata';

  @override
  String get startChat => 'Inizia chat';

  @override
  String get startPractice => 'Inizia Pratica';

  @override
  String get startTutorial => 'Inizia Tutorial';

  @override
  String get startWarning => 'Avviso';

  @override
  String get startsWith => 'Inizia con';

  @override
  String get statusCheckEmail =>
      'Verifica l\'email per completare l\'autenticazione.';

  @override
  String statusDownloading(Object name) {
    return 'Download in corso: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Importazione fallita: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name importato correttamente';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Accesso annullato.';

  @override
  String statusLoginFailed(Object error) {
    return 'Accesso fallito: $error';
  }

  @override
  String get statusLoginSuccess => 'Accesso effettuato con successo.';

  @override
  String get statusLogoutSuccess => 'Disconnessione effettuata.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Registrazione fallita: $error';
  }

  @override
  String get statusSigningUp => 'Registrazione in corso...';

  @override
  String get stopPractice => 'Ferma Pratica';

  @override
  String get studyComplete => 'Studiato';

  @override
  String studyRecords(int count) {
    return 'Registrazioni ($count)';
  }

  @override
  String get styleFormal => 'Formale';

  @override
  String get styleInformal => 'Informale';

  @override
  String get stylePolite => 'Cortese';

  @override
  String get styleSlang => 'Slang';

  @override
  String get subject => 'Argomento:';

  @override
  String get swapLanguages => 'Inverti lingue';

  @override
  String get switchToAi => 'Passa alla modalità AI';

  @override
  String get switchToPartner => 'Passa alla modalità partner';

  @override
  String get syncingData => 'Sincronizzazione dati...';

  @override
  String get tabConversation => 'Conversazione';

  @override
  String tabReview(int count) {
    return 'Ripasso ($count)';
  }

  @override
  String get tabSentence => 'frase';

  @override
  String get tabSpeaking => 'Parlare';

  @override
  String tabStudyMaterial(int count) {
    return 'Materiale ($count)';
  }

  @override
  String get tabWord => 'parola';

  @override
  String get tagFormal => 'Formale';

  @override
  String get tagSelection => 'Selezione tag';

  @override
  String get targetLanguage => 'Lingua Destinazione';

  @override
  String get targetLanguageFilter => 'Filtro Lingua:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Tempo per pensare prima di rivelare la risposta corretta.';

  @override
  String get thinkingTimeInterval => 'Ritardo di riproduzione';

  @override
  String get timeUp => 'Tempo scaduto!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Tag titolo (Raccolta)';

  @override
  String get tooltipDecrease => 'Diminuisci';

  @override
  String get tooltipIncrease => 'Aumenta';

  @override
  String get tooltipSearch => 'Cerca';

  @override
  String get tooltipSpeaking => 'Parlare';

  @override
  String get tooltipStudyReview => 'Studio+Ripasso';

  @override
  String totalRecords(int count) {
    return '$count record (vedi tutto)';
  }

  @override
  String get translate => 'Traduci';

  @override
  String get translating => 'Traduzione...';

  @override
  String get translation => 'Traduzione';

  @override
  String get translationComplete =>
      'Traduzione completata (salvataggio richiesto)';

  @override
  String translationFailed(String error) {
    return 'Traduzione fallita: $error';
  }

  @override
  String get translationLimitExceeded => 'Limite di traduzioni superato';

  @override
  String get translationLimitMessage =>
      'Hai utilizzato tutte le traduzioni gratuite giornaliere (5).\\n\\nVuoi guardare un annuncio per ricaricare immediatamente 5 traduzioni?';

  @override
  String get translationLoaded => 'Traduzione salvata caricata';

  @override
  String get translationRefilled => 'Hai ricaricato 5 traduzioni!';

  @override
  String get translationResultHint =>
      'Risultato della traduzione - modificabile';

  @override
  String get tryAgain => 'Riprova';

  @override
  String get tutorialAiChatDesc =>
      'Esercitati in conversazioni reali con personaggi AI.';

  @override
  String get tutorialAiChatTitle => 'Chat AI';

  @override
  String get tutorialContextDesc =>
      'Aggiungi contesto (es. Mattina) per distinguere frasi simili.';

  @override
  String get tutorialContextTitle => 'Tag contesto';

  @override
  String get tutorialLangSettingsDesc =>
      'Imposta la lingua di origine e la lingua di destinazione per la traduzione.';

  @override
  String get tutorialLangSettingsTitle => 'Impostazioni lingua';

  @override
  String get tutorialM1ToggleDesc =>
      'Cambia tra la modalità parola e frase qui.';

  @override
  String get tutorialM1ToggleTitle => 'Modalità Parola/Frase';

  @override
  String get tutorialM2DropdownDesc => 'Seleziona materiali di studio.';

  @override
  String get tutorialM2ImportDesc =>
      'Importa file JSON dalla cartella del dispositivo.';

  @override
  String get tutorialM2ListDesc =>
      'Controlla le tue carte salvate e girale per vedere le risposte. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Lista Studio';

  @override
  String get tutorialM2SearchDesc =>
      'Cerca e trova rapidamente parole e frasi salvate.';

  @override
  String get tutorialM2SelectDesc =>
      'Scegli materiali di studio o passa a \'Ripassa Tutto\'.';

  @override
  String get tutorialM2SelectTitle => 'Seleziona & Filtra';

  @override
  String get tutorialM3IntervalDesc =>
      'Regola il tempo di attesa tra le frasi.';

  @override
  String get tutorialM3IntervalTitle => 'Intervallo';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc =>
      'Scegli un set di materiali per la pratica parlata.';

  @override
  String get tutorialM3SelectTitle => 'Seleziona Materiale';

  @override
  String get tutorialM3StartDesc =>
      'Tocca play per iniziare ad ascoltare e ripetere.';

  @override
  String get tutorialM3StartTitle => 'Inizia Pratica';

  @override
  String get tutorialM3WordsDesc =>
      'Se spuntato, esercitati solo con le parole salvate.';

  @override
  String get tutorialM3WordsTitle => 'Esercizio di parole';

  @override
  String get tutorialMicDesc =>
      'Tocca il pulsante microfono per iniziare input vocale.';

  @override
  String get tutorialMicTitle => 'Input Vocale';

  @override
  String get tutorialSaveDesc =>
      'Salva la tua traduzione nei record di studio.';

  @override
  String get tutorialSaveTitle => 'Salva';

  @override
  String get tutorialSwapDesc =>
      'Scambio la mia lingua con la lingua che sto imparando.';

  @override
  String get tutorialTabDesc =>
      'Qui puoi selezionare la modalità di apprendimento desiderata.';

  @override
  String get tutorialTapToContinue => 'Tocca per continuare';

  @override
  String get tutorialTransDesc => 'Tocca qui per tradurre il tuo testo.';

  @override
  String get tutorialTransTitle => 'Traduci';

  @override
  String get typeExclamation => 'Esclamazione';

  @override
  String get typeImperative => 'Imperativo';

  @override
  String get typeQuestion => 'Domanda';

  @override
  String get typeStatement => 'Affermazione';

  @override
  String get usageLimitTitle => 'Limite raggiunto';

  @override
  String get useExistingText => 'Usa Esistente';

  @override
  String get viewOnlineGuide => 'Visualizza guida online';

  @override
  String get voluntaryTranslations => 'Traduzioni volontarie';

  @override
  String get watchAdAndRefill => 'Guarda l\'annuncio e ricarica (+5)';

  @override
  String get word => 'Parola';

  @override
  String get wordDefenseDesc =>
      'Difendi la base pronunciando le parole prima che i nemici arrivino.';

  @override
  String get wordDefenseTitle => 'Difesa delle parole';

  @override
  String get wordModeLabel => 'Modalità parola';

  @override
  String get yourPronunciation => 'La tua Pronuncia';

  @override
  String get ttsUnsupportedNatively =>
      'La sintesi vocale per questa lingua non è supportata nativamente su questo dispositivo.';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get basicWords => 'Repositori bàsic de paraules';

  @override
  String get inputLanguage => 'Idioma d\'entrada';

  @override
  String get translationLanguage => 'Idioma de traducció';

  @override
  String get simplifiedGuidance =>
      'Transforma converses quotidianes a un idioma estranger a l\'instant! Talkie registra la teva vida lingüística.';

  @override
  String get noDataForLanguage =>
      'No hi ha dades d\'aprenentatge per a l\'idioma seleccionat a la base de dades local. Descarregueu les dades o seleccioneu un altre idioma.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Cancel·la';

  @override
  String get accuracy => 'Precisió';

  @override
  String get ttsMissing =>
      'No s\'ha instal·lat el motor de veu per a aquest idioma al dispositiu.';

  @override
  String get ttsInstallGuide =>
      'Instal·leu les dades d\'idioma a Configuració d\'Android > TTS de Google.';

  @override
  String get adLoading =>
      'S\'està carregant l\'anunci. Torna-ho a provar més tard.';

  @override
  String get addNewSubject => 'Afegeix un títol nou';

  @override
  String get addParticipant => 'Afegir participant';

  @override
  String get addTagHint => 'Afegeix una etiqueta...';

  @override
  String get alreadyHaveAccount => 'Ja teniu un compte?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Reproducció automàtica';

  @override
  String get basic => 'Bàsic';

  @override
  String get basicDefault => 'Bàsic';

  @override
  String get basicMaterialRepository => 'Repositori bàsic de frases/paraules';

  @override
  String get basicSentenceRepository => 'Repositori bàsic de frases';

  @override
  String get basicSentences => 'Repositori bàsic de frases';

  @override
  String get basicWordRepository => 'Repositori bàsic de paraules';

  @override
  String get caseObject => 'Objecte';

  @override
  String get casePossessive => 'Possessiu';

  @override
  String get casePossessivePronoun => 'Pronom possessiu';

  @override
  String get caseReflexive => 'Reflexiu';

  @override
  String get caseSubject => 'Nominatiu';

  @override
  String get chatAiChat => 'Xat';

  @override
  String get chatAllConversations => 'Totes les converses';

  @override
  String get chatChoosePersona => 'Selecciona una persona';

  @override
  String get chatEndMessage => 'Vols finalitzar la conversa?';

  @override
  String get chatEndTitle => 'Finalitza i desa la conversa';

  @override
  String chatFailed(Object error) {
    return 'Error al xerrar: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Extret de la conversa ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Historial de xat';

  @override
  String get chatNew => 'Xat nou';

  @override
  String get chatNewChat => 'Xat nou';

  @override
  String get chatNoConversations => 'Encara no hi ha cap conversa';

  @override
  String get chatSearchHint => '대화 제목으로 검색...';

  @override
  String get chatSaveAndExit => 'Desa i surt';

  @override
  String get chatStartNewPrompt => 'Comença una conversa nova per practicar!';

  @override
  String get chatTypeHint => 'Escriu un missatge...';

  @override
  String get chatUntitled => 'Xat sense títol';

  @override
  String get checking => 'S\'està comprovant...';

  @override
  String get clearAll => 'Esborra-ho tot';

  @override
  String get confirm => 'Confirma';

  @override
  String get confirmDelete => 'Vols suprimir aquest enregistrament d\'estudi?';

  @override
  String get confirmDeleteConversation =>
      'Vols suprimir aquesta conversa?\nNo podràs recuperar-la.';

  @override
  String get confirmDeleteParticipant => 'Voleu suprimir aquest participant?';

  @override
  String get contextTagHint =>
      'Anota la situació per facilitar la distinció més endavant';

  @override
  String get contextTagLabel =>
      'Context/Situació (opcional) - Per exemple: Salutació del matí, Formal';

  @override
  String get copiedToClipboard => 'S\'ha copiat al porta-retalls!';

  @override
  String get copy => 'Copia';

  @override
  String get correctAnswer => 'Resposta correcta';

  @override
  String get createNew => 'Continua amb una frase nova';

  @override
  String get currentLocation => 'Ubicació actual';

  @override
  String get currentMaterialLabel =>
      'Col·lecció de material seleccionada actualment:';

  @override
  String get delete => 'Suprimeix';

  @override
  String deleteFailed(String error) {
    return 'Error al suprimir: $error';
  }

  @override
  String get deleteRecord => 'Suprimeix l\'enregistrament';

  @override
  String get dialogueQuestDesc =>
      'Practica la conversa mitjançant una obra de situació. Selecciona la resposta adequada i digues-la.';

  @override
  String get dialogueQuestTitle => 'Cerca de diàlegs';

  @override
  String get disambiguationPrompt => 'Amb quin significat vols traduir?';

  @override
  String get disambiguationTitle => 'Selecciona el significat';

  @override
  String get dontHaveAccount => 'No teniu cap compte?';

  @override
  String get editParticipant => 'Editar participant';

  @override
  String get email => 'Correu electrònic';

  @override
  String get emailAlreadyInUse =>
      'Aquest correu electrònic ja està registrat. Si us plau, inicia la sessió o recupera la contrasenya.';

  @override
  String get enterNewSubjectName => 'Introdueix un títol nou';

  @override
  String get enterSentenceHint => 'Introdueix una frase...';

  @override
  String get enterTextHint => 'Introdueix el text que vols traduir';

  @override
  String get enterTextToTranslate => 'Introdueix el text que vols traduir';

  @override
  String get enterWordHint => 'Introdueix una paraula...';

  @override
  String get error => 'Error';

  @override
  String get errorHateSpeech =>
      'No es pot traduir perquè conté incitació a l\'odi.';

  @override
  String get errorOtherSafety =>
      'La traducció s\'ha denegat a causa de la política de seguretat d\'IA.';

  @override
  String get errorProfanity => 'No es pot traduir perquè conté blasfèmies.';

  @override
  String get errorSelectCategory =>
      'Selecciona primer una paraula o una frase!';

  @override
  String get errorSexualContent =>
      'No es pot traduir perquè conté contingut sexual.';

  @override
  String get errors => 'Errors:';

  @override
  String get female => 'Dona';

  @override
  String get file => 'Fitxer:';

  @override
  String get filterAll => 'Tot';

  @override
  String get flip => 'Mostra';

  @override
  String get formComparative => 'Comparatiu';

  @override
  String get formInfinitive => 'Infinitiu/Present';

  @override
  String get formPast => 'Passat';

  @override
  String get formPastParticiple => 'Participi passat';

  @override
  String get formPlural => 'Plural';

  @override
  String get formPositive => 'Positiu';

  @override
  String get formPresent => 'Present';

  @override
  String get formPresentParticiple => 'Participi present (-ing)';

  @override
  String get formSingular => 'Singular';

  @override
  String get formSuperlative => 'Superlatiu';

  @override
  String get formThirdPersonSingular => 'Tercera persona del singular';

  @override
  String get gameModeDesc => 'Selecciona el mode de joc que vols practicar';

  @override
  String get gameModeTitle => 'Mode de joc';

  @override
  String get gameOver => 'S\'ha acabat el joc';

  @override
  String get gender => 'Gènere';

  @override
  String get labelFilterMaterial => 'Material';

  @override
  String get labelFilterTag => 'Etiqueta';

  @override
  String get generalTags => 'Etiquetes generals';

  @override
  String get getMaterials => 'Aconsegueix materials';

  @override
  String get good => 'Bé';

  @override
  String get googleContinue => 'Continua amb Google';

  @override
  String get helpDialogueImportDesc =>
      'Importa conjunts de diàlegs complets amb fitxers JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• Estructura JSON: Utilitza l\'array `dialogues` en comptes d\'`entries`\n• Recuperació automàtica: Es restauren el títol del diàleg, la persona i l\'ordre dels missatges.\n• Ubicació: Els diàlegs importats apareixen a la pestanya \'Historial\' del mode de xat amb IA.';

  @override
  String get helpJsonDesc =>
      'Segueix aquest format per importar material d\'aprenentatge en fitxers JSON que s\'utilitzaran al Mode 3:';

  @override
  String get helpJsonTypeDialogue => 'Diàleg';

  @override
  String get helpJsonTypeSentence => 'Frase';

  @override
  String get helpJsonTypeWord => 'Paraula';

  @override
  String get helpMode1Desc =>
      'Comença a aprendre idiomes de la manera més intuïtiva, amb un micròfon 3D premium i una icona de teclat gran.';

  @override
  String get helpMode1Details =>
      '• Configuració d\'idioma: Comproveu el meu idioma i l\'idioma que estic aprenent amb el botó d\'idioma a la part superior de la pantalla d\'inici i canvieu l\'idioma d\'aprenentatge.\n• Entrada senzilla: Introduïu-ho immediatament mitjançant el micròfon gran i la finestra de text al centre.\n• Comproveu la configuració: Un cop hàgiu acabat d\'introduir-ho, premeu el botó de marca de verificació blau a la dreta. Apareixerà una finestra de configuració detallada.\n• Configuració detallada: Podeu especificar la col·lecció de materials, les anotacions (notes) i les etiquetes per desar al diàleg que apareix.\n• Tradueix ara: Un cop hàgiu acabat de configurar, feu clic al botó de traducció verd i la intel·ligència artificial realitzarà la traducció immediatament.\n• Cerca automàtica: Detecta i mostra traduccions existents similars en temps real durant l\'entrada.\n• Escolteu i deseu: Escolteu la pronunciació amb la icona de l\'altaveu a la part inferior dels resultats de la traducció i afegiu-la a la llista d\'aprenentatge mitjançant \'Desa les dades\'.';

  @override
  String get helpMode2Desc =>
      'Repassa les frases desades i comprova si les recordes amb la funció d\'ocultació automàtica.';

  @override
  String get helpMode2Details =>
      '• Selecció de llibres de text: fes servir \'Selecciona un llibre de text\' o \'Llibreria en línia\' al menú (⋮) de la part superior dreta\n• Girar la targeta: \'Mostra/Amaga\' per comprovar la traducció\n• Escoltar: reprodueix la pronunciació amb la icona de l\'altaveu\n• Aprèn: marca amb una marca de verificació (V) per completar l\'aprenentatge\n• Suprimeix: mantén premuda la targeta (clic llarg) per suprimir l\'historial\n• Cerca i filtra: admet la barra de cerca (cerca intel·ligent en temps real) i els filtres d\'etiquetes, lletra inicial';

  @override
  String get helpMode3Desc =>
      'Escolteu i repetiu les frases (imitant) per practicar la pronunciació.';

  @override
  String get helpMode3Details =>
      '• Selecció de materials: Selecciona la col·lecció de materials que vols estudiar\n• Configuració de l\'interval: Ajusta el temps d\'espera entre frases amb els botons [-] [+](3 segons ~ 60 segons)\n• Comença/Atura: Controla la sessió de shadowing\n• Parla: Escolta la veu i repeteix\n• Comentaris: Puntuació de precisió (0-100) i visualització del color\n• Criteris de cerca: Filtra l\'objectiu de la pràctica per etiqueta, element recent o lletra inicial';

  @override
  String get helpModeChatDesc =>
      'Practiqueu la conversa real xerrant amb una IA personalitzada.';

  @override
  String get helpModeChatDetails =>
      '• Xat amb IA: Practica converses reals amb una persona al menú \'Xat\' a la barra de pestanyes inferior.\n• Configuració de la persona: Especifica lliurement el gènere, el nom i el codi d\'idioma de l\'interlocutor.\n• Situació de joc de rol GPS: Reconeix la teva ubicació actual i recomana temes de conversa adequats per al lloc.\n• 2 idiomes: La resposta de la IA es mostra amb la traducció per maximitzar l\'efecte d\'aprenentatge.\n• Gestió de l\'historial: Filtra l\'historial de converses passades i desa missatges específics de la conversa com a material d\'aprenentatge';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabModes => 'Descripció dels modes';

  @override
  String get helpTabTour => 'Fer un recorregut';

  @override
  String get helpTitle => 'Ajuda i guia';

  @override
  String get helpTourDesc =>
      'El **cercle de ressalt** et guiarà per les funcions principals.\n(Per exemple: pots suprimir les targetes mantenint premuda la targeta que indica el **cercle de ressalt**).';

  @override
  String get hide => 'Amaga';

  @override
  String importAdded(int count) {
    return 'S\'ha afegit: $count';
  }

  @override
  String get importComplete => 'S\'ha completat la importació';

  @override
  String get importDuplicateTitleError =>
      'Ja existeix un material amb el mateix títol. Canvieu el títol i torneu-ho a provar.';

  @override
  String importErrorMessage(String error) {
    return 'Error al carregar el fitxer:\\n$error';
  }

  @override
  String get importFailed => 'Error d\'importació';

  @override
  String importFile(String fileName) {
    return 'Fitxer: $fileName';
  }

  @override
  String get importJsonFile => 'Importa el fitxer JSON';

  @override
  String get importJsonFilePrompt => 'Carrega un fitxer JSON';

  @override
  String importSkipped(int count) {
    return 'S\'ha omès: $count';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String get importing => 'S\'està important...';

  @override
  String get inputModeTitle => 'Entrada';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds s';
  }

  @override
  String get invalidEmail => 'Introduïu un correu electrònic vàlid.';

  @override
  String get kakaoContinue => 'Continua amb Kakao';

  @override
  String get labelLangCode => 'Codi d\'idioma (p. ex., en-US, ko-KR)';

  @override
  String get labelName => 'Nom';

  @override
  String get labelNote => 'Nota';

  @override
  String get labelPOS => 'Categoria gramatical';

  @override
  String get labelRole => 'Rol';

  @override
  String get labelSentence => 'Frase';

  @override
  String get labelSentenceCollection => 'Recull de frases';

  @override
  String get labelSentenceType => 'Tipus de frase';

  @override
  String get labelShowMemorized => 'Fet';

  @override
  String get labelType => 'Tipus:';

  @override
  String get labelWord => 'Paraula';

  @override
  String get labelWordbook => 'Recull de paraules';

  @override
  String get language => 'Idioma';

  @override
  String get languageSettings => 'Configuració de l\'idioma';

  @override
  String get languageSettingsTitle => 'Configuració de l\'idioma';

  @override
  String get libTitleFirstMeeting => 'Primera trobada';

  @override
  String get libTitleGreetings1 => 'Salutacions 1';

  @override
  String get libTitleNouns1 => 'Substantius 1';

  @override
  String get libTitleVerbs1 => 'Verbs 1';

  @override
  String get listen => 'Escolta';

  @override
  String get listening => 'S\'està escoltant...';

  @override
  String get loadingParticipants => 'S\'estan carregant els participants...';

  @override
  String get location => 'Ubicació';

  @override
  String get login => 'Inicia sessió';

  @override
  String get logout => 'Tancar sessió';

  @override
  String get logoutConfirmMessage =>
      'Voleu tancar la sessió en aquest dispositiu?';

  @override
  String get logoutConfirmTitle => 'Tancar sessió';

  @override
  String get male => 'Home';

  @override
  String get manageParticipants => 'Gestiona els participants';

  @override
  String get manual => 'Entrada manual';

  @override
  String get markAsStudied => 'Marca com a estudiat';

  @override
  String get materialInfo => 'Informació del material';

  @override
  String get me => 'Jo';

  @override
  String get menuDeviceImport => 'Importa material des del dispositiu';

  @override
  String get menuHelp => 'Ajuda';

  @override
  String get menuLanguageSettings => 'Configuració d\'idioma';

  @override
  String get menuOnlineLibrary => 'Biblioteca en línia';

  @override
  String get menuSelectMaterialSet =>
      'Selecciona la col·lecció de material d\'estudi';

  @override
  String get menuSettings => 'Configuració de l\'idioma';

  @override
  String get menuTutorial => 'Tutorial d\'ús';

  @override
  String get menuWebDownload => 'Pàgina web';

  @override
  String get metadataDialogTitle => 'Classificació detallada';

  @override
  String get metadataFormType => 'Tipus de formulari';

  @override
  String get metadataRootWord => 'Arrel (Root Word)';

  @override
  String get micButtonTooltip => 'Inicia el reconeixement de veu';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Col·lecció de material seleccionada actualment: $name';
  }

  @override
  String get mode2Title => 'Repàs';

  @override
  String get mode3Next => 'Següent';

  @override
  String get mode3Start => 'Comença';

  @override
  String get mode3Stop => 'Atura';

  @override
  String get mode3TryAgain => 'Torna-ho a provar';

  @override
  String get mySentenceCollection => 'La meva col·lecció de frases';

  @override
  String get myWordbook => 'El meu vocabulari';

  @override
  String get neutral => 'Neutre';

  @override
  String get newSubjectName => 'Nou títol de la llista de vocabulari/frases';

  @override
  String get next => 'Següent';

  @override
  String get noDialogueHistory => 'No hi ha cap historial de diàlegs.';

  @override
  String get noInternetWarningMic =>
      'No hi ha connexió a Internet. El reconeixement de veu pot no funcionar fora de línia.';

  @override
  String get noInternetWarningTranslate =>
      'No hi ha connexió a Internet. La traducció no funcionarà fora de línia. Utilitzeu el mode de repàs.';

  @override
  String get noMaterialsInCategory =>
      'No hi ha materials en aquesta categoria.';

  @override
  String get noParticipantsFound =>
      'No s\'ha trobat cap participant registrat.';

  @override
  String get noRecords =>
      'No hi ha cap enregistrament d\'estudi per a l\'idioma seleccionat';

  @override
  String get noStudyMaterial => 'No hi ha material d\'estudi.';

  @override
  String get noTextToPlay => 'No hi ha cap text per reproduir';

  @override
  String get noTranslationToSave => 'No hi ha cap traducció per desar';

  @override
  String get noVoiceDetected => 'No s\'ha detectat cap veu';

  @override
  String get notSelected => '- Sense seleccionar -';

  @override
  String get onlineLibraryCheckInternet =>
      'Comproveu la vostra connexió a Internet o torneu-ho a provar més tard.';

  @override
  String get onlineLibraryLoadFailed =>
      'No s\'han pogut carregar els materials.';

  @override
  String get onlineLibraryNoMaterials => 'No hi ha materials.';

  @override
  String get participantDeleted => 'S\'ha suprimit el participant.';

  @override
  String get participantRename => 'Canvia el nom del participant';

  @override
  String get partner => 'Soci';

  @override
  String get partnerMode => 'Mode soci';

  @override
  String get password => 'Contrasenya';

  @override
  String get passwordTooShort =>
      'La contrasenya ha de tenir almenys 6 caràcters.';

  @override
  String get perfect => 'Perfecte!';

  @override
  String get personaFriend => 'Amic local';

  @override
  String get personaGuide => 'Guia turístic';

  @override
  String get personaTeacher => 'Professor d\'anglès';

  @override
  String get playAgain => 'Torna a jugar';

  @override
  String playbackFailed(String error) {
    return 'Error de reproducció: $error';
  }

  @override
  String get playing => 'S\'està reproduint...';

  @override
  String get posAdjective => 'Adjectiu';

  @override
  String get posAdverb => 'Adverbi';

  @override
  String get posConjunction => 'Conjunció';

  @override
  String get posInterjection => 'Interjecció';

  @override
  String get posNoun => 'Substantiu';

  @override
  String get posPreposition => 'Preposició';

  @override
  String get posPronoun => 'Pronom';

  @override
  String get posVerb => 'Verb';

  @override
  String get practiceModeTitle => 'Pràctica';

  @override
  String get practiceWordsOnly => 'Practica només les paraules';

  @override
  String progress(int current, int total) {
    return 'Progrés: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Mostra $count elements creats recentment';
  }

  @override
  String recognitionFailed(String error) {
    return 'Error al reconèixer la veu: $error';
  }

  @override
  String get recognized => 'S\'ha reconegut';

  @override
  String get recognizedText => 'Pronunciació reconeguda:';

  @override
  String get recordDeleted => 'S\'ha suprimit l\'enregistrament';

  @override
  String get refresh => 'Actualitza';

  @override
  String get reset => 'Restableix';

  @override
  String get resetPracticeHistory => 'Restableix l\'historial de pràctiques';

  @override
  String get retry => 'Torna-ho a provar?';

  @override
  String get reviewAll => 'Repàs complet';

  @override
  String reviewCount(int count) {
    return 'Repàs $count vegades';
  }

  @override
  String get reviewModeTitle => 'Repàs';

  @override
  String get roleAi => 'IA';

  @override
  String get roleThirdParty => 'Tercer';

  @override
  String get roleUser => 'Usuari';

  @override
  String get save => 'Desa';

  @override
  String get saveData => 'Desa les dades';

  @override
  String saveFailed(String error) {
    return 'Error al desar: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Prova de desar traduccions des del mode de cerca';

  @override
  String get saved => 'S\'ha desat';

  @override
  String get saving => 'S\'està desant...';

  @override
  String score(String score) {
    return 'Precisió: $score%';
  }

  @override
  String get scoreLabel => 'Puntuació';

  @override
  String get search => 'Cerca';

  @override
  String get searchConditions => 'Condicions de cerca';

  @override
  String get searchSentenceHint => 'Cerca una frase...';

  @override
  String get searchWordHint => 'Cerca una paraula...';

  @override
  String get sectionSentence => 'Secció de frases';

  @override
  String get sectionSentences => 'Frases';

  @override
  String get sectionWord => 'Secció de paraules';

  @override
  String get sectionWords => 'Paraules';

  @override
  String get selectExistingSubject => 'Selecciona un títol existent';

  @override
  String get selectMaterialPrompt => 'Selecciona el material d\'estudi';

  @override
  String get selectMaterialSet =>
      'Selecciona la col·lecció de material d\'estudi';

  @override
  String get selectPOS => 'Selecciona una categoria';

  @override
  String get selectParticipants => 'Selecciona participants';

  @override
  String get selectSentenceType => 'Selecciona un tipus de frase';

  @override
  String get selectStudyMaterial => 'Selecciona el material d\'estudi';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Frase';

  @override
  String get signUp => 'Registra\'t';

  @override
  String get similarTextFound => 'S\'ha trobat un text similar';

  @override
  String get skip => 'Omet';

  @override
  String get source => 'Font:';

  @override
  String get sourceLanguage => 'Idioma original';

  @override
  String get sourceLanguageLabel => 'El meu idioma (Source)';

  @override
  String get speakNow => 'Parla ara!';

  @override
  String get speaker => 'Parlant';

  @override
  String get speakerSelect => 'Selecciona el parlant';

  @override
  String get speakingPractice => 'Pràctica de parla';

  @override
  String get startChat => 'Inicia la conversa';

  @override
  String get startPractice => 'Comença la pràctica';

  @override
  String get startTutorial => 'Inicia el tutorial';

  @override
  String get startWarning => 'Atenció';

  @override
  String get startsWith => 'Comença amb';

  @override
  String get statusCheckEmail =>
      'Si us plau, verifica el teu correu electrònic per completar l\'autenticació.';

  @override
  String statusDownloading(Object name) {
    return 'S\'està baixant: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Error d\'importació: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name s\'ha importat correctament';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'S\'ha cancel·lat l\'inici de sessió.';

  @override
  String statusLoginFailed(Object error) {
    return 'Error en iniciar la sessió: $error';
  }

  @override
  String get statusLoginSuccess => 'S\'ha iniciat la sessió correctament.';

  @override
  String get statusLogoutSuccess => 'S\'ha tancat la sessió.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Error de registre: $error';
  }

  @override
  String get statusSigningUp => 'S\'està registrant...';

  @override
  String get stopPractice => 'Atura la pràctica';

  @override
  String get studyComplete => 'S\'ha completat l\'estudi';

  @override
  String studyRecords(int count) {
    return 'Enregistraments d\'estudi ($count)';
  }

  @override
  String get styleFormal => 'Formal';

  @override
  String get styleInformal => 'Informal';

  @override
  String get stylePolite => 'Educat';

  @override
  String get styleSlang => 'Argot';

  @override
  String get subject => 'Assumpte:';

  @override
  String get swapLanguages => 'Canvia d\'idioma';

  @override
  String get switchToAi => 'Canvia al mode IA';

  @override
  String get switchToPartner => 'Canvia al mode soci';

  @override
  String get syncingData => 'Sincronitzant dades...';

  @override
  String get tabConversation => 'Conversa';

  @override
  String tabReview(int count) {
    return 'Repàs ($count)';
  }

  @override
  String get tabSentence => 'Frase';

  @override
  String get tabSpeaking => 'Parla';

  @override
  String tabStudyMaterial(int count) {
    return 'Material d\'estudi ($count)';
  }

  @override
  String get tabWord => 'Paraula';

  @override
  String get tagFormal => 'Formal';

  @override
  String get tagSelection => 'Selecció d\'etiquetes';

  @override
  String get targetLanguage => 'Idioma de destinació';

  @override
  String get targetLanguageFilter => 'Filtre d\'idioma de destinació:';

  @override
  String get targetLanguageLabel => 'Idioma d\'aprenentatge (Target)';

  @override
  String get thinkingTimeDesc =>
      'Temps per pensar abans que es reveli la resposta.';

  @override
  String get thinkingTimeInterval => 'Interval de temps de reproducció';

  @override
  String get timeUp => 'S\'ha acabat el temps!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Etiquetes de títol (col·lecció)';

  @override
  String get tooltipDecrease => 'Redueix';

  @override
  String get tooltipIncrease => 'Augmenta';

  @override
  String get tooltipSearch => 'Cerca';

  @override
  String get tooltipSpeaking => 'Parla';

  @override
  String get tooltipStudyReview => 'Estudi+Repàs';

  @override
  String totalRecords(int count) {
    return 'Un total de $count enregistraments (Visualització completa)';
  }

  @override
  String get translate => 'Tradueix';

  @override
  String get translating => 'S\'està traduint...';

  @override
  String get translation => 'Traducció';

  @override
  String get translationComplete => 'S\'ha completat la traducció (cal desar)';

  @override
  String translationFailed(String error) {
    return 'Error de traducció: $error';
  }

  @override
  String get translationLimitExceeded => 'S\'ha superat el límit de traducció';

  @override
  String get translationLimitMessage =>
      'Has utilitzat totes les traduccions gratuïtes diàries (5 vegades).\\n\\nVols veure un anunci per recarregar 5 vegades immediatament?';

  @override
  String get translationLoaded => 'S\'ha carregat la traducció desada';

  @override
  String get translationRefilled => 'S\'han recarregat 5 traduccions!';

  @override
  String get translationResultHint => 'Resultat de la traducció - editable';

  @override
  String get tryAgain => 'Torna-ho a provar';

  @override
  String get tutorialAiChatDesc =>
      'Practica la conversa real amb una persona d\'IA.';

  @override
  String get tutorialAiChatTitle => 'Xat amb IA';

  @override
  String get tutorialContextDesc =>
      'Pots desar la mateixa frase per separat si anotes la situació (per exemple, matí, vespre).';

  @override
  String get tutorialContextTitle => 'Etiqueta de situació/context';

  @override
  String get tutorialLangSettingsDesc =>
      'Configura l\'idioma original i l\'idioma de destinació que vols traduir.';

  @override
  String get tutorialLangSettingsTitle => 'Configuració de l\'idioma';

  @override
  String get tutorialM1ToggleDesc =>
      'Canvia entre els modes de paraules i frases aquí.';

  @override
  String get tutorialM1ToggleTitle => 'Mode de paraules/frases';

  @override
  String get tutorialM2DropdownDesc =>
      'Pots seleccionar el material que vols estudiar mitjançant el menú superior.';

  @override
  String get tutorialM2ImportDesc =>
      'Importa un fitxer JSON des de la carpeta del dispositiu.';

  @override
  String get tutorialM2ListDesc =>
      'Pots suprimir aquesta targeta mantenint-la premuda (clic llarg). Comprova i gira les frases desades.';

  @override
  String get tutorialM2ListTitle => 'Llista d\'aprenentatge';

  @override
  String get tutorialM2SearchDesc =>
      'Cerqueu i trobeu ràpidament paraules i frases desades.';

  @override
  String get tutorialM2SelectDesc =>
      'Prem la icona de la col·lecció de material (📚) a la barra d\'aplicacions superior per seleccionar el material que vols estudiar.';

  @override
  String get tutorialM2SelectTitle => 'Selecciona el material';

  @override
  String get tutorialM3IntervalDesc =>
      'Ajusta el temps d\'espera entre frases.';

  @override
  String get tutorialM3IntervalTitle => 'Configura l\'interval';

  @override
  String get tutorialM3ResetDesc =>
      'Restableix el progrés i la puntuació de precisió per tornar a començar des del principi.';

  @override
  String get tutorialM3ResetTitle => 'Restableix l\'historial';

  @override
  String get tutorialM3SelectDesc =>
      'Prem la icona de la col·lecció de material (📚) a la barra d\'aplicacions superior per seleccionar el material que vols practicar.';

  @override
  String get tutorialM3SelectTitle => 'Selecciona el material';

  @override
  String get tutorialM3StartDesc =>
      'Prem el botó de reproducció per escoltar la veu d\'un parlant natiu i repetir.';

  @override
  String get tutorialM3StartTitle => 'Comença la pràctica';

  @override
  String get tutorialM3WordsDesc =>
      'Marca-ho per practicar només les paraules desades.';

  @override
  String get tutorialM3WordsTitle => 'Pràctica de paraules';

  @override
  String get tutorialMicDesc =>
      'Prem el botó del micròfon per introduir la veu.';

  @override
  String get tutorialMicTitle => 'Entrada de veu';

  @override
  String get tutorialSaveDesc =>
      'Desa els resultats traduïts a l\'historial d\'aprenentatge.';

  @override
  String get tutorialSaveTitle => 'Desa';

  @override
  String get tutorialSwapDesc =>
      'Canvia el meu idioma i l\'idioma d\'aprenentatge.';

  @override
  String get tutorialTabDesc =>
      'Aquí pots seleccionar el mode d\'aprenentatge que vulguis.';

  @override
  String get tutorialTapToContinue => 'Toca la pantalla per continuar';

  @override
  String get tutorialTransDesc => 'Tradueix el text que has introduït.';

  @override
  String get tutorialTransTitle => 'Tradueix';

  @override
  String get typeExclamation => 'Exclamació';

  @override
  String get typeImperative => 'Imperatiu';

  @override
  String get typeQuestion => 'Pregunta';

  @override
  String get typeStatement => 'Afirmació';

  @override
  String get usageLimitTitle => 'S\'ha arribat al límit';

  @override
  String get useExistingText => 'Utilitza el text existent';

  @override
  String get viewOnlineGuide => 'Consulta la guia en línia';

  @override
  String get voluntaryTranslations => 'Traduccions voluntàries';

  @override
  String get watchAdAndRefill => 'Mira l\'anunci i recarrega (+5 vegades)';

  @override
  String get word => 'Paraula';

  @override
  String get wordDefenseDesc =>
      'Digues la paraula abans que l\'enemic arribi per defensar la base.';

  @override
  String get wordDefenseTitle => 'Defensa de paraules';

  @override
  String get wordModeLabel => 'Mode de paraules';

  @override
  String get yourPronunciation => 'La teva pronunciació';

  @override
  String get ttsUnsupportedNatively =>
      'La configuració predeterminada d\'aquest dispositiu no admet la sortida de veu per a aquest idioma.';

  @override
  String get homeTab => 'Inici';

  @override
  String get welcomeTitle => 'Benvingut a Talkie!';

  @override
  String get welcomeDesc =>
      'Benvingut/da a Talkie! Admetem més de 80 idiomes d\'arreu del món amb una integritat del 100 %. Gaudeix d\'una experiència d\'aprenentatge perfecta amb nous dissenys 3D premium i rendiment optimitzat.';

  @override
  String get welcomeButton => 'Comença';

  @override
  String get labelDetails => 'Configuració detallada';

  @override
  String get translationResult => 'Resultat de la traducció';

  @override
  String get inputContent => 'Contingut d\'entrada';

  @override
  String get translateNow => 'Tradueix ara';

  @override
  String get tooltipSettingsConfirm => 'Confirma la configuració';

  @override
  String get hintNoteExample => 'Ex: Context, homònims, etc.';

  @override
  String get hintTagExample => 'Ex: Negocis, viatges...';

  @override
  String get addNew => 'Afegeix-ne un de nou';

  @override
  String get newNotebookTitle => 'Nom del nou quadern';

  @override
  String get enterNameHint => 'Introdueix el nom';

  @override
  String get add => 'Afegeix';

  @override
  String get openSettings => 'Obre la configuració';

  @override
  String get helpNotebook =>
      'Selecciona la carpeta on guardar els resultats traduïts.';

  @override
  String get helpNote =>
      'Anota lliurement el significat de les paraules, exemples o situacions.';

  @override
  String get helpTag =>
      'Introdueix paraules clau per classificar o cercar més tard.';

  @override
  String get requestTranslation => 'Sol·licitar traducció';

  @override
  String get statusRequestSuccess =>
      'La sol·licitud de traducció s\'ha completat.';

  @override
  String statusRequestFailed(String error) {
    return 'Error en la sol·licitud de traducció: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Idioma d\'estudi no compatible';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'El material seleccionat no és compatible amb l\'idioma d\'estudi actual ($targetLang) i no es pot desar localment. Voleu sol·licitar una traducció?';
  }
}

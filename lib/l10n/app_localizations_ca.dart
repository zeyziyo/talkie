// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get helpTitle => 'Ajuda i guia';

  @override
  String get helpTabModes => 'Descripció dels modes';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabTour => 'Fer un recorregut';

  @override
  String get helpMode1Desc =>
      'Reconeix la veu per traduir i escolta els resultats.';

  @override
  String get helpMode1Details =>
      '• Configuració de l\'idioma: Canvia l\'idioma prement les icones superior/inferior\n• Commutador de paraules/frases: Canvia de mode\n• Entrada de veu: Prem la icona del micròfon per començar/aturar l\'escolta\n• Entrada de text: Introdueix text directament per traduir\n• Cerca automàtica: Detecta frases existents similars\n• Traducció: Prem el botó de traducció per traduir immediatament\n• Escolta: Reprodueix TTS amb la icona de l\'altaveu\n• Desa: Afegeix enregistraments amb \'Desa les dades\'\n• Esborra: Inicialitza l\'entrada';

  @override
  String get helpMode2Desc =>
      'Repassa les frases desades i comprova si les recordes amb la funció d\'ocultació automàtica.';

  @override
  String get helpMode2Details =>
      '• Selecció de materials: Selecciona una col·lecció de materials específica o \'Repàs complet\'\n• Gira la targeta: Comprova la traducció amb \'Mostra/Amaga\' (comprovació d\'aprenentatge automàtic)\n• Escolta: Reprodueix TTS de la frase\n• Aprenentatge complet: Marca com a complet amb una marca de verificació (V)\n• Suprimeix: Mantén premuda la targeta per suprimir l\'enregistrament\n• Criteris de cerca: Filtra per etiqueta, element recent o lletra inicial';

  @override
  String get helpMode3Desc =>
      'Practica la pronunciació escoltant i repetint les frases (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Selecció de materials: Selecciona la col·lecció de materials que vols estudiar\n• Configuració de l\'interval: Ajusta el temps d\'espera entre frases amb els botons [-] [+](3 segons ~ 60 segons)\n• Comença/Atura: Controla la sessió de shadowing\n• Parla: Escolta la veu i repeteix\n• Comentaris: Puntuació de precisió (0-100) i visualització del color\n• Criteris de cerca: Filtra l\'objectiu de la pràctica per etiqueta, element recent o lletra inicial';

  @override
  String get helpModeChatDesc =>
      'Practica la conversa real xerrant amb una persona d\'IA.';

  @override
  String get helpModeChatDetails =>
      '• Xat amb IA: Practica la conversa parlant en el teu idioma\n• Persona múltiple: Canvia el gènere/idioma/nom de l\'altra persona amb el menú de sobre la bombolla de diàleg\n• Afegeix un soci: Afegeix una nova persona amb qui parlar (desconegut) amb el botó +\n• GPS: Obra de situació basada en la ubicació actual\n• Desa automàticament: Tradueix i desa automàticament el contingut de la conversa';

  @override
  String get helpJsonDesc =>
      'Segueix aquest format per importar material d\'aprenentatge en fitxers JSON que s\'utilitzaran al Mode 3:';

  @override
  String get helpDialogueImportDesc =>
      'Importa conjunts de diàlegs complets amb fitxers JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• Estructura JSON: Utilitza l\'array `dialogues` en comptes d\'`entries`\n• Recuperació automàtica: Es restauren el títol del diàleg, la persona i l\'ordre dels missatges.\n• Ubicació: Els diàlegs importats apareixen a la pestanya \'Historial\' del mode de xat amb IA.';

  @override
  String get helpTourDesc =>
      'El **cercle de ressalt** et guiarà per les funcions principals.\n(Per exemple: pots suprimir les targetes mantenint premuda la targeta que indica el **cercle de ressalt**).';

  @override
  String get partnerMode => 'Mode soci';

  @override
  String get manual => 'Entrada manual';

  @override
  String get speaker => 'Parlant';

  @override
  String get switchToAi => 'Canvia al mode IA';

  @override
  String get switchToPartner => 'Canvia al mode soci';

  @override
  String get currentLocation => 'Ubicació actual';

  @override
  String get location => 'Ubicació';

  @override
  String get partner => 'Soci';

  @override
  String get me => 'Jo';

  @override
  String get currentMaterialLabel =>
      'Col·lecció de material seleccionada actualment:';

  @override
  String get basicMaterialRepository => 'Repositori bàsic de frases/paraules';

  @override
  String get word => 'Paraula';

  @override
  String get sentence => 'Frase';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Repàs ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Material d\'estudi ($count)';
  }

  @override
  String get mode2Title => 'Repàs';

  @override
  String get search => 'Cerca';

  @override
  String get translate => 'Tradueix';

  @override
  String get listen => 'Escolta';

  @override
  String get saveData => 'Desa les dades';

  @override
  String get saved => 'S\'ha desat';

  @override
  String get delete => 'Suprimeix';

  @override
  String get materialInfo => 'Informació del material';

  @override
  String get cancel => 'Cancel·la';

  @override
  String get confirm => 'Confirma';

  @override
  String get refresh => 'Actualitza';

  @override
  String studyRecords(int count) {
    return 'Enregistraments d\'estudi ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filtre d\'idioma de destinació:';

  @override
  String get noRecords =>
      'No hi ha cap enregistrament d\'estudi per a l\'idioma seleccionat';

  @override
  String get saveTranslationsFromSearch =>
      'Prova de desar traduccions des del mode de cerca';

  @override
  String get flip => 'Mostra';

  @override
  String get hide => 'Amaga';

  @override
  String get deleteRecord => 'Suprimeix l\'enregistrament';

  @override
  String get confirmDelete => 'Vols suprimir aquest enregistrament d\'estudi?';

  @override
  String get recordDeleted => 'S\'ha suprimit l\'enregistrament';

  @override
  String deleteFailed(String error) {
    return 'Error al suprimir: $error';
  }

  @override
  String get importJsonFile => 'Importa el fitxer JSON';

  @override
  String get importing => 'S\'està important...';

  @override
  String get importComplete => 'S\'ha completat la importació';

  @override
  String get importFailed => 'Error d\'importació';

  @override
  String importFile(String fileName) {
    return 'Fitxer: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String importAdded(int count) {
    return 'S\'ha afegit: $count';
  }

  @override
  String importSkipped(int count) {
    return 'S\'ha omès: $count';
  }

  @override
  String get errors => 'Errors:';

  @override
  String get error => 'Error';

  @override
  String importErrorMessage(String error) {
    return 'Error al carregar el fitxer:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Selecciona el material d\'estudi';

  @override
  String get subject => 'Assumpte:';

  @override
  String get source => 'Font:';

  @override
  String get file => 'Fitxer:';

  @override
  String progress(int current, int total) {
    return 'Progrés: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Carrega un fitxer JSON';

  @override
  String get selectMaterialPrompt => 'Selecciona el material d\'estudi';

  @override
  String get studyComplete => 'S\'ha completat l\'estudi';

  @override
  String get markAsStudied => 'Marca com a estudiat';

  @override
  String get listening => 'S\'està escoltant...';

  @override
  String get recognized => 'S\'ha reconegut';

  @override
  String recognitionFailed(String error) {
    return 'Error al reconèixer la veu: $error';
  }

  @override
  String get checking => 'S\'està comprovant...';

  @override
  String get translating => 'S\'està traduint...';

  @override
  String get translationComplete => 'S\'ha completat la traducció (cal desar)';

  @override
  String get translationLoaded => 'S\'ha carregat la traducció desada';

  @override
  String translationFailed(String error) {
    return 'Error de traducció: $error';
  }

  @override
  String get enterTextToTranslate => 'Introdueix el text que vols traduir';

  @override
  String get saving => 'S\'està desant...';

  @override
  String get noTranslationToSave => 'No hi ha cap traducció per desar';

  @override
  String saveFailed(String error) {
    return 'Error al desar: $error';
  }

  @override
  String get playing => 'S\'està reproduint...';

  @override
  String get noTextToPlay => 'No hi ha cap text per reproduir';

  @override
  String playbackFailed(String error) {
    return 'Error de reproducció: $error';
  }

  @override
  String get sourceLanguage => 'Idioma original';

  @override
  String get targetLanguage => 'Idioma de destinació';

  @override
  String get similarTextFound => 'S\'ha trobat un text similar';

  @override
  String get useExistingText => 'Utilitza el text existent';

  @override
  String get createNew => 'Continua amb una frase nova';

  @override
  String reviewCount(int count) {
    return 'Repàs $count vegades';
  }

  @override
  String get tabSpeaking => 'Parla';

  @override
  String get speakingPractice => 'Pràctica de parla';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds s';
  }

  @override
  String get yourPronunciation => 'La teva pronunciació';

  @override
  String get correctAnswer => 'Resposta correcta';

  @override
  String score(String score) {
    return 'Precisió: $score%';
  }

  @override
  String get perfect => 'Perfecte!';

  @override
  String get good => 'Bé';

  @override
  String get tryAgain => 'Torna-ho a provar';

  @override
  String get startPractice => 'Comença la pràctica';

  @override
  String get stopPractice => 'Atura la pràctica';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Inicia el tutorial';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Entrada de veu';

  @override
  String get tutorialMicDesc =>
      'Prem el botó del micròfon per introduir la veu.';

  @override
  String get tutorialTabDesc =>
      'Aquí pots seleccionar el mode d\'aprenentatge que vulguis.';

  @override
  String get tutorialTapToContinue => 'Toca la pantalla per continuar';

  @override
  String get tutorialTransTitle => 'Tradueix';

  @override
  String get tutorialTransDesc => 'Tradueix el text que has introduït.';

  @override
  String get tutorialSaveTitle => 'Desa';

  @override
  String get tutorialSaveDesc =>
      'Desa els resultats traduïts a l\'historial d\'aprenentatge.';

  @override
  String get tutorialM2SelectTitle => 'Selecciona el material';

  @override
  String get tutorialM2SelectDesc =>
      'Prem la icona de la col·lecció de material (📚) a la barra d\'aplicacions superior per seleccionar el material que vols estudiar.';

  @override
  String get tutorialM2ListTitle => 'Llista d\'aprenentatge';

  @override
  String get tutorialM2ListDesc =>
      'Pots suprimir aquesta targeta mantenint-la premuda (clic llarg). Comprova i gira les frases desades.';

  @override
  String get tutorialM3SelectTitle => 'Selecciona el material';

  @override
  String get tutorialM3SelectDesc =>
      'Prem la icona de la col·lecció de material (📚) a la barra d\'aplicacions superior per seleccionar el material que vols practicar.';

  @override
  String get tutorialM3IntervalTitle => 'Configura l\'interval';

  @override
  String get tutorialM3IntervalDesc =>
      'Ajusta el temps d\'espera entre frases.';

  @override
  String get tutorialM3StartTitle => 'Comença la pràctica';

  @override
  String get tutorialM3StartDesc =>
      'Prem el botó de reproducció per escoltar la veu d\'un parlant natiu i repetir.';

  @override
  String get startWarning => 'Atenció';

  @override
  String get noVoiceDetected => 'No s\'ha detectat cap veu';

  @override
  String get tooltipSearch => 'Cerca';

  @override
  String get tooltipStudyReview => 'Estudi+Repàs';

  @override
  String get tooltipSpeaking => 'Parla';

  @override
  String get tooltipDecrease => 'Redueix';

  @override
  String get tooltipIncrease => 'Augmenta';

  @override
  String get languageSettings => 'Configuració de l\'idioma';

  @override
  String get tutorialM2DropdownDesc =>
      'Pots seleccionar el material que vols estudiar mitjançant el menú superior.';

  @override
  String get tutorialM2ImportDesc =>
      'Importa un fitxer JSON des de la carpeta del dispositiu.';

  @override
  String get tutorialLangSettingsTitle => 'Configuració de l\'idioma';

  @override
  String get tutorialLangSettingsDesc =>
      'Configura l\'idioma original i l\'idioma de destinació que vols traduir.';

  @override
  String get copy => 'Copia';

  @override
  String get copiedToClipboard => 'S\'ha copiat al porta-retalls!';

  @override
  String get tutorialContextTitle => 'Etiqueta de situació/context';

  @override
  String get tutorialContextDesc =>
      'Pots desar la mateixa frase per separat si anotes la situació (per exemple, matí, vespre).';

  @override
  String get thinkingTimeInterval => 'Interval de temps de reflexió';

  @override
  String get thinkingTimeDesc =>
      'Temps per pensar abans que es reveli la resposta.';

  @override
  String get autoPlay => 'Reproducció automàtica';

  @override
  String get timeUp => 'S\'ha acabat el temps!';

  @override
  String get gameModeTitle => 'Mode de joc';

  @override
  String get gameModeDesc => 'Selecciona el mode de joc que vols practicar';

  @override
  String get wordDefenseTitle => 'Defensa de paraules';

  @override
  String get wordDefenseDesc =>
      'Digues la paraula abans que l\'enemic arribi per defensar la base.';

  @override
  String get dialogueQuestTitle => 'Cerca de diàlegs';

  @override
  String get dialogueQuestDesc =>
      'Practica la conversa mitjançant una obra de situació. Selecciona la resposta adequada i digues-la.';

  @override
  String get labelType => 'Tipus:';

  @override
  String get labelWord => 'Paraula';

  @override
  String get labelSentence => 'Frase';

  @override
  String get contextTagLabel =>
      'Context/Situació (opcional) - Per exemple: Salutació del matí, Formal';

  @override
  String get contextTagHint =>
      'Anota la situació per facilitar la distinció més endavant';

  @override
  String get usageLimitTitle => 'S\'ha arribat al límit';

  @override
  String get translationLimitExceeded => 'S\'ha superat el límit de traducció';

  @override
  String get translationLimitMessage =>
      'Has utilitzat totes les traduccions gratuïtes diàries (5 vegades).\\n\\nVols veure un anunci per recarregar 5 vegades immediatament?';

  @override
  String get watchAdAndRefill => 'Mira l\'anunci i recarrega (+5 vegades)';

  @override
  String get translationRefilled => 'S\'han recarregat 5 traduccions!';

  @override
  String get adLoading =>
      'S\'està carregant l\'anunci. Torna-ho a provar més tard.';

  @override
  String get reviewAll => 'Repàs complet';

  @override
  String totalRecords(int count) {
    return 'Un total de $count enregistraments (Visualització completa)';
  }

  @override
  String get filterAll => 'Tot';

  @override
  String get practiceWordsOnly => 'Practica només les paraules';

  @override
  String get resetPracticeHistory => 'Restableix l\'historial de pràctiques';

  @override
  String get retry => 'Torna-ho a provar?';

  @override
  String get noStudyMaterial => 'No hi ha material d\'estudi.';

  @override
  String get gameOver => 'S\'ha acabat el joc';

  @override
  String get playAgain => 'Torna a jugar';

  @override
  String get speakNow => 'Parla ara!';

  @override
  String get scoreLabel => 'Puntuació';

  @override
  String get viewOnlineGuide => 'Consulta la guia en línia';

  @override
  String get getMaterials => 'Aconsegueix materials';

  @override
  String get swapLanguages => 'Canvia d\'idioma';

  @override
  String get next => 'Següent';

  @override
  String get wordModeLabel => 'Mode de paraules';

  @override
  String get accuracy => 'Precisió';

  @override
  String get basicDefault => 'Bàsic';

  @override
  String get basic => 'Bàsic';

  @override
  String get tutorialM3WordsTitle => 'Pràctica de paraules';

  @override
  String get tutorialM3WordsDesc =>
      'Marca-ho per practicar només les paraules desades.';

  @override
  String get enterTextHint => 'Introdueix el text que vols traduir';

  @override
  String get micButtonTooltip => 'Inicia el reconeixement de veu';

  @override
  String get menuHelp => 'Ajuda';

  @override
  String get menuWebDownload => 'Pàgina web';

  @override
  String get menuDeviceImport => 'Importa material des del dispositiu';

  @override
  String get menuSettings => 'Configuració de l\'idioma';

  @override
  String get basicWords => 'Repositori bàsic de paraules';

  @override
  String get basicSentences => 'Repositori bàsic de frases';

  @override
  String get selectMaterialSet =>
      'Selecciona la col·lecció de material d\'estudi';

  @override
  String get sectionWords => 'Paraules';

  @override
  String get sectionSentences => 'Frases';

  @override
  String get languageSettingsTitle => 'Configuració de l\'idioma';

  @override
  String get sourceLanguageLabel => 'El meu idioma (Source)';

  @override
  String get targetLanguageLabel => 'Idioma d\'aprenentatge (Target)';

  @override
  String get mode3Start => 'Comença';

  @override
  String get mode3Stop => 'Atura';

  @override
  String get mode3Next => 'Següent';

  @override
  String get mode3TryAgain => 'Torna-ho a provar';

  @override
  String get tutorialM3ResetTitle => 'Restableix l\'historial';

  @override
  String get tutorialSwapDesc =>
      'Canvia el meu idioma i l\'idioma d\'aprenentatge.';

  @override
  String get recognizedText => 'Pronunciació reconeguda:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Restableix el progrés i la puntuació de precisió per tornar a començar des del principi.';

  @override
  String get menuSelectMaterialSet =>
      'Selecciona la col·lecció de material d\'estudi';

  @override
  String get sectionWord => 'Secció de paraules';

  @override
  String get sectionSentence => 'Secció de frases';

  @override
  String get tabWord => 'Paraula';

  @override
  String get tabSentence => 'Frase';

  @override
  String get errorProfanity => 'No es pot traduir perquè conté blasfèmies.';

  @override
  String get errorHateSpeech =>
      'No es pot traduir perquè conté incitació a l\'odi.';

  @override
  String get errorSexualContent =>
      'No es pot traduir perquè conté contingut sexual.';

  @override
  String get errorOtherSafety =>
      'La traducció s\'ha denegat a causa de la política de seguretat d\'IA.';

  @override
  String get clearAll => 'Esborra-ho tot';

  @override
  String get disambiguationTitle => 'Selecciona el significat';

  @override
  String get disambiguationPrompt => 'Amb quin significat vols traduir?';

  @override
  String get skip => 'Omet';

  @override
  String get inputModeTitle => 'Entrada';

  @override
  String get reviewModeTitle => 'Repàs';

  @override
  String get practiceModeTitle => 'Pràctica de pronunciació';

  @override
  String get chatHistoryTitle => 'Historial de xat';

  @override
  String get chatNew => 'Xat nou';

  @override
  String get chatNewChat => 'Xat nou';

  @override
  String get chatChoosePersona => 'Selecciona una persona';

  @override
  String get chatTypeHint => 'Escriu un missatge...';

  @override
  String chatFailed(Object error) {
    return 'Error al xerrar: $error';
  }

  @override
  String get chatNoConversations => 'Encara no hi ha cap conversa';

  @override
  String get chatStartNewPrompt => 'Comença una conversa nova per practicar!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Extret de la conversa ($speaker)';
  }

  @override
  String get personaTeacher => 'Professor d\'anglès';

  @override
  String get personaGuide => 'Guia turístic';

  @override
  String get personaFriend => 'Amic local';

  @override
  String get chatUntitled => 'Xat sense títol';

  @override
  String get chatAiChat => 'Xat amb IA';

  @override
  String get tutorialAiChatTitle => 'Xat amb IA';

  @override
  String get tutorialAiChatDesc =>
      'Practica la conversa real amb una persona d\'IA.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Col·lecció de material seleccionada actualment: $name';
  }

  @override
  String get basicWordRepository => 'Repositori bàsic de paraules';

  @override
  String get basicSentenceRepository => 'Repositori bàsic de frases';

  @override
  String get chatEndTitle => 'Finalitza i desa la conversa';

  @override
  String get chatEndMessage => 'Vols finalitzar la conversa?';

  @override
  String get chatSaveAndExit => 'Desa i surt';

  @override
  String get errorSelectCategory =>
      'Selecciona primer una paraula o una frase!';

  @override
  String get tutorialM1ToggleTitle => 'Mode de paraules/frases';

  @override
  String get tutorialM1ToggleDesc =>
      'Canvia entre els modes de paraules i frases aquí.';

  @override
  String get metadataDialogTitle => 'Classificació detallada';

  @override
  String get tagFormal => 'Formal';

  @override
  String get selectPOS => 'Selecciona una categoria';

  @override
  String get selectSentenceType => 'Selecciona un tipus de frase';

  @override
  String get metadataRootWord => 'Arrel (Root Word)';

  @override
  String get posNoun => 'Substantiu';

  @override
  String get posVerb => 'Verb';

  @override
  String get posAdjective => 'Adjectiu';

  @override
  String get posAdverb => 'Adverbi';

  @override
  String get posPronoun => 'Pronom';

  @override
  String get posPreposition => 'Preposició';

  @override
  String get posConjunction => 'Conjunció';

  @override
  String get posInterjection => 'Interjecció';

  @override
  String get typeStatement => 'Afirmació';

  @override
  String get typeQuestion => 'Pregunta';

  @override
  String get typeExclamation => 'Exclamació';

  @override
  String get typeImperative => 'Imperatiu';

  @override
  String get labelNote => 'Nota';

  @override
  String get labelShowMemorized => 'Fet';

  @override
  String get tagSelection => 'Selecció d\'etiquetes';

  @override
  String get metadataFormType => 'Tipus de formulari';

  @override
  String get formInfinitive => 'Infinitiu/Present';

  @override
  String get formPast => 'Passat';

  @override
  String get formPastParticiple => 'Participi passat';

  @override
  String get formPresentParticiple => 'Participi present (-ing)';

  @override
  String get formPresent => 'Present';

  @override
  String get formThirdPersonSingular => 'Tercera persona del singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get formSingular => 'Singular';

  @override
  String get caseSubject => 'Nominatiu';

  @override
  String get caseObject => 'Objecte';

  @override
  String get casePossessive => 'Possessiu';

  @override
  String get casePossessivePronoun => 'Pronom possessiu';

  @override
  String get caseReflexive => 'Reflexiu';

  @override
  String get formPositive => 'Positiu';

  @override
  String get formComparative => 'Comparatiu';

  @override
  String get formSuperlative => 'Superlatiu';

  @override
  String get searchConditions => 'Condicions de cerca';

  @override
  String recentNItems(int count) {
    return 'Mostra $count elements creats recentment';
  }

  @override
  String get startsWith => 'Comença amb';

  @override
  String get reset => 'Restableix';

  @override
  String get participantRename => 'Canvia el nom del participant';

  @override
  String get labelName => 'Nom';

  @override
  String get gender => 'Gènere';

  @override
  String get language => 'Idioma';

  @override
  String get male => 'Home';

  @override
  String get female => 'Dona';

  @override
  String get neutral => 'Neutre';

  @override
  String get chatAllConversations => 'Totes les converses';

  @override
  String get confirmDeleteConversation =>
      'Vols suprimir aquesta conversa?\nNo podràs recuperar-la.';
}

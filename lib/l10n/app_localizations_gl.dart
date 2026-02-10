// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get helpTitle => 'Axuda e guía';

  @override
  String get helpTabModes => 'Descrición dos modos';

  @override
  String get helpTabJson => 'Formato JSON';

  @override
  String get helpTabTour => 'Visita guiada';

  @override
  String get helpMode1Desc =>
      'Recoñece a voz para traducir e permite escoitar os resultados.';

  @override
  String get helpMode1Details =>
      '• Axustes de idioma: toca as iconas superior/inferior para cambiar o idioma\n• Alternar palabra/frase: cambiar de modo\n• Entrada de voz: toca a icona do micrófono para comezar/deter a escoita\n• Entrada de texto: escribe directamente para traducir\n• Busca automática: detecta frases existentes similares\n• Tradución: toca o botón de tradución para traducir inmediatamente\n• Escoitar: reprodución de TTS mediante a icona do altofalante\n• Gardar: engade rexistros con «Gardar datos»\n• Borrar: inicializa a entrada';

  @override
  String get helpMode2Desc =>
      'Repasa as frases gardadas e comproba se as memorizaches coa función de ocultación automática.';

  @override
  String get helpMode2Details =>
      '• Selección de material: selecciona un libro de traballo específico ou «Repaso completo»\n• Dar a volta á tarxeta: comproba a tradución con «Mostrar/Ocultar» (marca de comprobación de aprendizaxe automática)\n• Escoitar: reprodución de TTS da frase\n• Aprendizaxe completa: marca de verificación (V) para marcar como aprendizaxe completa\n• Eliminar: mantén pulsada a tarxeta para eliminar o rexistro\n• Criterios de busca: filtrar por etiquetas, elementos recentes, letra inicial';

  @override
  String get helpMode3Desc =>
      'Escoita a frase e practica a pronunciación repetíndoa (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Selección de material: selecciona o libro de traballo para aprender\n• Axuste do intervalo: axusta o tempo de espera entre frases cos botóns [-] [+]. (3 segundos ~ 60 segundos)\n• Comezar/Deter: controlar a sesión de shadowing\n• Falar: escoitar a voz e repetir\n• Comentarios: puntuación de precisión (0-100) e visualización de cor\n• Criterios de busca: filtrar os obxectivos da práctica por etiquetas, elementos recentes, letra inicial';

  @override
  String get helpModeChatDesc =>
      'Practica a conversación real falando cunha personaxe de IA.';

  @override
  String get helpModeChatDetails =>
      '• Chat de IA: fala no teu idioma para practicar a conversa\n• Multi-persoa: podes cambiar o sexo/idioma/nome da outra persoa co menú sobre a burbulla de diálogo\n• Engadir socio: engade un novo compañeiro de conversa (estranxeiro) co botón +\n• GPS: situación baseada na localización actual\n• Gardado automático: tradución e gardado automático do contido da conversa';

  @override
  String get helpJsonDesc =>
      'Para importar material de aprendizaxe para usar no modo 3 como ficheiro JSON, siga o seguinte formato:';

  @override
  String get helpDialogueImportDesc =>
      'Importa un conxunto completo de diálogos como un ficheiro JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• Estrutura JSON: usa a matriz `dialogues` en lugar de `entries`\n• Recuperación automática: o título, a persoa e a orde da mensaxe do diálogo restablécense.\n• Localización: os diálogos importados aparecen na pestana «Historial» do modo de chat da IA.';

  @override
  String get helpTourDesc =>
      'Un **círculo resaltado** guiaráche polas funcións clave.\n(Ex: mantén pulsada a tarxeta que apunta o **círculo resaltado** para eliminar.)';

  @override
  String get partnerMode => 'Modo socio';

  @override
  String get manual => 'Entrada manual';

  @override
  String get speaker => 'Falante';

  @override
  String get switchToAi => 'Cambiar ao modo IA';

  @override
  String get switchToPartner => 'Cambiar ao modo socio';

  @override
  String get currentLocation => 'Localización actual';

  @override
  String get location => 'Localización';

  @override
  String get partner => 'Socio';

  @override
  String get me => 'Eu';

  @override
  String get currentMaterialLabel =>
      'Libro de traballo seleccionado actualmente:';

  @override
  String get basicMaterialRepository => 'Repositorio básico de frases/palabras';

  @override
  String get word => 'Palabra';

  @override
  String get sentence => 'Frase';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Repaso ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Material de estudo ($count)';
  }

  @override
  String get mode2Title => 'Repaso';

  @override
  String get search => 'Buscar';

  @override
  String get translate => 'Traducir';

  @override
  String get listen => 'Escoitar';

  @override
  String get saveData => 'Gardar datos';

  @override
  String get saved => 'Gardado';

  @override
  String get delete => 'Eliminar';

  @override
  String get materialInfo => 'Información do material';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get refresh => 'Actualizar';

  @override
  String studyRecords(int count) {
    return 'Rexistros de estudo ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filtro de idioma de destino:';

  @override
  String get noRecords =>
      'Non hai rexistros de estudo para o idioma seleccionado';

  @override
  String get saveTranslationsFromSearch =>
      'Tenta gardar as traducións desde o modo de busca';

  @override
  String get flip => 'Mostrar';

  @override
  String get hide => 'Ocultar';

  @override
  String get deleteRecord => 'Eliminar rexistro';

  @override
  String get confirmDelete => 'Queres eliminar este rexistro de estudo?';

  @override
  String get recordDeleted => 'Rexistro eliminado';

  @override
  String deleteFailed(String error) {
    return 'Erro ao eliminar: $error';
  }

  @override
  String get importJsonFile => 'Importar ficheiro JSON';

  @override
  String get importing => 'Importando...';

  @override
  String get importComplete => 'Importación completa';

  @override
  String get importFailed => 'Erro ao importar';

  @override
  String importFile(String fileName) {
    return 'Ficheiro: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String importAdded(int count) {
    return 'Engadido: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Omitido: $count';
  }

  @override
  String get errors => 'Erros:';

  @override
  String get error => 'Erro';

  @override
  String importErrorMessage(String error) {
    return 'Erro ao importar o ficheiro:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Selecciona o material de estudo';

  @override
  String get subject => 'Título:';

  @override
  String get source => 'Fonte:';

  @override
  String get file => 'Ficheiro:';

  @override
  String progress(int current, int total) {
    return 'Progreso: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Importa un ficheiro JSON';

  @override
  String get selectMaterialPrompt => 'Selecciona o material de estudo';

  @override
  String get studyComplete => 'Estudo completo';

  @override
  String get markAsStudied => 'Marcar como estudado';

  @override
  String get listening => 'Escoitando...';

  @override
  String get recognized => 'Recoñecido';

  @override
  String recognitionFailed(String error) {
    return 'Erro ao recoñecer a voz: $error';
  }

  @override
  String get checking => 'Comprobando...';

  @override
  String get translating => 'Traducindo...';

  @override
  String get translationComplete => 'Tradución completa (necesario gardar)';

  @override
  String get translationLoaded => 'Tradución gardada cargada';

  @override
  String translationFailed(String error) {
    return 'Erro ao traducir: $error';
  }

  @override
  String get enterTextToTranslate => 'Escribe o texto para traducir';

  @override
  String get saving => 'Gardando...';

  @override
  String get noTranslationToSave => 'Non hai tradución para gardar';

  @override
  String saveFailed(String error) {
    return 'Erro ao gardar: $error';
  }

  @override
  String get playing => 'Reproducindo...';

  @override
  String get noTextToPlay => 'Non hai texto para reproducir';

  @override
  String playbackFailed(String error) {
    return 'Erro ao reproducir: $error';
  }

  @override
  String get sourceLanguage => 'Idioma orixinal';

  @override
  String get targetLanguage => 'Idioma de destino';

  @override
  String get similarTextFound => 'Texto similar atopado';

  @override
  String get useExistingText => 'Usar o texto existente';

  @override
  String get createNew => 'Continuar cunha nova frase';

  @override
  String reviewCount(int count) {
    return 'Repasado $count veces';
  }

  @override
  String get tabSpeaking => 'Falar';

  @override
  String get speakingPractice => 'Práctica de fala';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervalo: $seconds segundos';
  }

  @override
  String get yourPronunciation => 'A túa pronuncia';

  @override
  String get correctAnswer => 'Resposta correcta';

  @override
  String score(String score) {
    return 'Precisión: $score%';
  }

  @override
  String get perfect => 'Perfecto!';

  @override
  String get good => 'Ben';

  @override
  String get tryAgain => 'Téntao de novo';

  @override
  String get startPractice => 'Comezar a practicar';

  @override
  String get stopPractice => 'Deter a práctica';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Comezar o titorial';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Entrada de voz';

  @override
  String get tutorialMicDesc =>
      'Podes escribir por voz premendo o botón do micrófono.';

  @override
  String get tutorialTabDesc =>
      'Aquí podes seleccionar o modo de aprendizaxe desexado.';

  @override
  String get tutorialTapToContinue => 'Toca a pantalla para continuar';

  @override
  String get tutorialTransTitle => 'Traducir';

  @override
  String get tutorialTransDesc => 'Traduce o texto que escribiches.';

  @override
  String get tutorialSaveTitle => 'Gardar';

  @override
  String get tutorialSaveDesc =>
      'Garda os resultados traducidos no teu rexistro de aprendizaxe.';

  @override
  String get tutorialM2SelectTitle => 'Selección de material';

  @override
  String get tutorialM2SelectDesc =>
      'Toca a icona do libro de traballo (📚) na barra de aplicacións superior para seleccionar o material que queres estudar.';

  @override
  String get tutorialM3SelectDesc =>
      'Toca a icona do libro de traballo (📚) na barra de aplicacións superior para seleccionar o material que queres practicar.';

  @override
  String get tutorialM2ListTitle => 'Lista de aprendizaxe';

  @override
  String get tutorialM2ListDesc =>
      'Podes eliminar esta tarxeta manténdoa pulsada (clic longo). Comproba e dá a volta á frase gardada.';

  @override
  String get tutorialM3SelectTitle => 'Selección de material';

  @override
  String get tutorialM3IntervalTitle => 'Axuste de intervalo';

  @override
  String get tutorialM3IntervalDesc => 'Axusta o tempo de espera entre frases.';

  @override
  String get tutorialM3StartTitle => 'Comezar a practicar';

  @override
  String get tutorialM3StartDesc =>
      'Preme o botón de reprodución para escoitar a voz dun falante nativo e repetir.';

  @override
  String get startWarning => 'Aviso';

  @override
  String get noVoiceDetected => 'Non se detectou ningunha voz';

  @override
  String get tooltipSearch => 'Buscar';

  @override
  String get tooltipStudyReview => 'Estudo+Repaso';

  @override
  String get tooltipSpeaking => 'Falar';

  @override
  String get tooltipDecrease => 'Diminuír';

  @override
  String get tooltipIncrease => 'Aumentar';

  @override
  String get languageSettings => 'Axustes de idioma';

  @override
  String get tutorialM2DropdownDesc =>
      'Podes seleccionar o material que queres estudar a través do menú superior.';

  @override
  String get tutorialM2ImportDesc =>
      'Importa un ficheiro JSON desde o cartafol do teu dispositivo.';

  @override
  String get tutorialLangSettingsTitle => 'Axustes de idioma';

  @override
  String get tutorialLangSettingsDesc =>
      'Establece o idioma orixinal e o idioma de destino para traducir.';

  @override
  String get copy => 'Copiar';

  @override
  String get copiedToClipboard => 'Copiado no portapapeis!';

  @override
  String get tutorialContextTitle => 'Etiqueta de situación/contexto';

  @override
  String get tutorialContextDesc =>
      'Podes gardar a mesma frase por separado se anotas a situación (por exemplo, mañá, noite).';

  @override
  String get thinkingTimeInterval => 'Intervalo de tempo de reflexión';

  @override
  String get thinkingTimeDesc =>
      'Este é o tempo para pensar antes de que se revele a resposta correcta.';

  @override
  String get autoPlay => 'Reprodución automática';

  @override
  String get timeUp => 'Rematou o tempo!';

  @override
  String get gameModeTitle => 'Modo de xogo';

  @override
  String get gameModeDesc => 'Selecciona o modo de xogo que queres practicar';

  @override
  String get wordDefenseTitle => 'Defensa de palabras';

  @override
  String get wordDefenseDesc =>
      'Defende a base dicindo a palabra antes de que chegue o inimigo.';

  @override
  String get dialogueQuestTitle => 'Busca de diálogos';

  @override
  String get dialogueQuestDesc =>
      'Practica diálogos a través de xogos de rol. Selecciona e di as respostas axeitadas.';

  @override
  String get labelType => 'Tipo:';

  @override
  String get labelWord => 'Palabra';

  @override
  String get labelSentence => 'Frase';

  @override
  String get contextTagLabel =>
      'Contexto/Situación (opcional) - Ex: Saúdo matinal, formal';

  @override
  String get contextTagHint =>
      'Escribe a situación para que sexa máis doado de distinguir máis tarde';

  @override
  String get usageLimitTitle => 'Límite acadado';

  @override
  String get translationLimitExceeded => 'Superouse o límite de tradución';

  @override
  String get translationLimitMessage =>
      'Usaches todas as traducións gratuítas diarias (5 veces).\\n\\nQueres ver un anuncio e recargar 5 veces ao instante?';

  @override
  String get watchAdAndRefill => 'Ver anuncio e recargar (+5 veces)';

  @override
  String get translationRefilled =>
      'O número de traducións recargouse 5 veces!';

  @override
  String get adLoading => 'Cargando anuncio. Téntao de novo en breve.';

  @override
  String get reviewAll => 'Repaso completo';

  @override
  String totalRecords(int count) {
    return 'Total de $count rexistros (ver todo)';
  }

  @override
  String get filterAll => 'Todo';

  @override
  String get practiceWordsOnly => 'Practicar só palabras';

  @override
  String get resetPracticeHistory => 'Restablecer o historial de práctica';

  @override
  String get retry => 'Tentar de novo?';

  @override
  String get noStudyMaterial => 'Non hai material de estudo.';

  @override
  String get gameOver => 'Fin da partida';

  @override
  String get playAgain => 'Xogar de novo';

  @override
  String get speakNow => 'Fala agora!';

  @override
  String get scoreLabel => 'Puntuación';

  @override
  String get viewOnlineGuide => 'Ver guía en liña';

  @override
  String get getMaterials => 'Obter materiais';

  @override
  String get swapLanguages => 'Cambiar idiomas';

  @override
  String get next => 'Seguinte';

  @override
  String get wordModeLabel => 'Modo palabra';

  @override
  String get accuracy => 'Precisión';

  @override
  String get basicDefault => 'Básico';

  @override
  String get basic => 'Básico';

  @override
  String get tutorialM3WordsTitle => 'Práctica de palabras';

  @override
  String get tutorialM3WordsDesc =>
      'Se marcas esta opción, só practicarás as palabras gardadas.';

  @override
  String get enterTextHint => 'Escribe o texto para traducir';

  @override
  String get micButtonTooltip => 'Comezar o recoñecemento de voz';

  @override
  String get menuHelp => 'Axuda';

  @override
  String get menuWebDownload => 'Páxina web';

  @override
  String get menuDeviceImport => 'Importar material desde o dispositivo';

  @override
  String get menuSettings => 'Axustes de idioma';

  @override
  String get basicWords => 'Repositorio básico de palabras';

  @override
  String get basicSentences => 'Repositorio básico de frases';

  @override
  String get selectMaterialSet => 'Seleccionar libro de traballo';

  @override
  String get sectionWords => 'Palabras';

  @override
  String get sectionSentences => 'Frases';

  @override
  String get languageSettingsTitle => 'Axustes de idioma';

  @override
  String get sourceLanguageLabel => 'O meu idioma (Orixinal)';

  @override
  String get targetLanguageLabel => 'Idioma de aprendizaxe (Destino)';

  @override
  String get mode3Start => 'Comezar';

  @override
  String get mode3Stop => 'Deter';

  @override
  String get mode3Next => 'Seguinte';

  @override
  String get mode3TryAgain => 'Tentar de novo';

  @override
  String get tutorialM3ResetTitle => 'Restablecer historial';

  @override
  String get tutorialSwapDesc =>
      'Cambia o meu idioma e o idioma de aprendizaxe entre si.';

  @override
  String get recognizedText => 'Pronuncia recoñecida:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Restablece o progreso e a puntuación de precisión para comezar de novo desde o principio.';

  @override
  String get menuSelectMaterialSet => 'Seleccionar libro de traballo';

  @override
  String get sectionWord => 'Sección de palabras';

  @override
  String get sectionSentence => 'Sección de frases';

  @override
  String get tabWord => 'Palabra';

  @override
  String get tabSentence => 'Frase';

  @override
  String get errorProfanity => 'Non se pode traducir porque contén blasfemias.';

  @override
  String get errorHateSpeech =>
      'Non se pode traducir porque contén incitación ao odio.';

  @override
  String get errorSexualContent =>
      'Non se pode traducir porque contén contido sexual.';

  @override
  String get errorOtherSafety =>
      'A tradución foi denegada pola política de seguridade da IA.';

  @override
  String get clearAll => 'Borrar todo';

  @override
  String get disambiguationTitle => 'Seleccionar significado';

  @override
  String get disambiguationPrompt => 'A que significado queres traducir?';

  @override
  String get skip => 'Omitir';

  @override
  String get inputModeTitle => 'Entrada';

  @override
  String get reviewModeTitle => 'Repaso';

  @override
  String get practiceModeTitle => 'Práctica';

  @override
  String get chatHistoryTitle => 'Historial de chat';

  @override
  String get chatNew => 'Novo chat';

  @override
  String get chatNewChat => 'Novo chat';

  @override
  String get chatChoosePersona => 'Seleccionar persoa';

  @override
  String get chatTypeHint => 'Escribe unha mensaxe...';

  @override
  String chatFailed(Object error) {
    return 'Erro no chat: $error';
  }

  @override
  String get chatNoConversations => 'Aínda non hai conversas';

  @override
  String get chatStartNewPrompt => 'Comeza unha nova conversa para practicar!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Extracto da conversa ($speaker)';
  }

  @override
  String get personaTeacher => 'Profesor de inglés';

  @override
  String get personaGuide => 'Guía turístico';

  @override
  String get personaFriend => 'Amigo local';

  @override
  String get chatUntitled => 'Conversa sen título';

  @override
  String get chatAiChat => 'Chat';

  @override
  String get tutorialAiChatTitle => 'Chat con IA';

  @override
  String get tutorialAiChatDesc =>
      'Practica a conversa real cunha persoa da IA.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Libro de traballo seleccionado actualmente: $name';
  }

  @override
  String get basicWordRepository => 'Repositorio básico de palabras';

  @override
  String get basicSentenceRepository => 'Repositorio básico de frases';

  @override
  String get chatEndTitle => 'Finalizar e gardar a conversa';

  @override
  String get chatEndMessage => 'Queres finalizar a conversa?';

  @override
  String get chatSaveAndExit => 'Gardar e saír';

  @override
  String get errorSelectCategory =>
      'Primeiro selecciona unha palabra ou unha frase!';

  @override
  String get tutorialM1ToggleTitle => 'Modo de palabra/frase';

  @override
  String get tutorialM1ToggleDesc =>
      'Cambia entre os modos de palabra e frase aquí.';

  @override
  String get metadataDialogTitle => 'Clasificación detallada';

  @override
  String get tagFormal => 'Formal';

  @override
  String get selectPOS => 'Seleccionar categoría gramatical';

  @override
  String get selectSentenceType => 'Seleccionar tipo de frase';

  @override
  String get metadataRootWord => 'Forma raíz (Root Word)';

  @override
  String get posNoun => 'Substantivo';

  @override
  String get posVerb => 'Verbo';

  @override
  String get posAdjective => 'Adxectivo';

  @override
  String get posAdverb => 'Adverbio';

  @override
  String get posPronoun => 'Pronome';

  @override
  String get posPreposition => 'Preposición';

  @override
  String get posConjunction => 'Conxunción';

  @override
  String get posInterjection => 'Interxección';

  @override
  String get typeStatement => 'Declaración';

  @override
  String get typeQuestion => 'Pregunta';

  @override
  String get typeExclamation => 'Exclamación';

  @override
  String get typeImperative => 'Imperativo';

  @override
  String get labelNote => 'Nota';

  @override
  String get labelShowMemorized => 'Rematado';

  @override
  String get titleTagSelection => 'Etiquetas do título (colección)';

  @override
  String get generalTags => 'Etiquetas xerais';

  @override
  String get tagSelection => 'Selección de etiquetas';

  @override
  String get metadataFormType => 'Tipo de forma gramatical';

  @override
  String get formInfinitive => 'Infinitivo/Presente';

  @override
  String get formPast => 'Pasado';

  @override
  String get formPastParticiple => 'Participio pasado';

  @override
  String get formPresentParticiple => 'Participio presente (ing)';

  @override
  String get formPresent => 'Presente';

  @override
  String get formThirdPersonSingular => 'Terceira persoa do singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get formSingular => 'Singular';

  @override
  String get caseSubject => 'Nominativo';

  @override
  String get caseObject => 'Obxectivo';

  @override
  String get casePossessive => 'Posesivo';

  @override
  String get casePossessivePronoun => 'Pronome posesivo';

  @override
  String get caseReflexive => 'Reflexivo';

  @override
  String get formPositive => 'Positivo';

  @override
  String get formComparative => 'Comparativo';

  @override
  String get formSuperlative => 'Superlativo';

  @override
  String get searchConditions => 'Condicións de busca';

  @override
  String recentNItems(int count) {
    return 'Mostrar os $count elementos creados recentemente';
  }

  @override
  String get startsWith => 'Comeza por';

  @override
  String get reset => 'Restablecer';

  @override
  String get participantRename => 'Cambiar o nome do participante';

  @override
  String get labelName => 'Nome';

  @override
  String get gender => 'Xénero';

  @override
  String get language => 'Idioma';

  @override
  String get male => 'Home';

  @override
  String get female => 'Muller';

  @override
  String get neutral => 'Neutro';

  @override
  String get chatAllConversations => 'Todas as conversas';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Queres eliminar esta conversa?\nNon poderás recuperala.';

  @override
  String get notSelected => '- Sen seleccionar -';

  @override
  String get myWordbook => 'O meu vocabulario';

  @override
  String get mySentenceCollection => 'A miña colección de frases';

  @override
  String get newSubjectName => '새 단어장/문장집 제목';

  @override
  String get enterNewSubjectName => '새 제목 입력';

  @override
  String get addNewSubject => '새 제목 추가';

  @override
  String get selectExistingSubject => '기존 제목 선택';

  @override
  String get addTagHint => '태그 추가...';
}

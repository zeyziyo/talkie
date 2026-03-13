// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get basicWords => 'Repositorio básico de palabras';

  @override
  String get inputLanguage => 'Idioma de entrada';

  @override
  String get translationLanguage => 'Idioma de tradución';

  @override
  String get simplifiedGuidance =>
      'Transforma conversas cotiás en idiomas estranxeiros ao instante! Talkie rexistra a túa vida lingüística.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get accuracy => 'Precisión';

  @override
  String get ttsMissing =>
      'Non hai o motor de voz para este idioma instalado no teu dispositivo.';

  @override
  String get ttsInstallGuide =>
      'Por favor, instala os datos do idioma en Configuración de Android > Google TTS.';

  @override
  String get adLoading => 'Cargando anuncio. Téntao de novo en breve.';

  @override
  String get addNewSubject => 'Engadir título novo';

  @override
  String get addParticipant => 'Engadir participante';

  @override
  String get addTagHint => 'Engadir etiqueta...';

  @override
  String get alreadyHaveAccount => 'Xa tes unha conta?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Reprodución automática';

  @override
  String get basic => 'Básico';

  @override
  String get basicDefault => 'Básico';

  @override
  String get basicMaterialRepository => 'Repositorio básico de frases/palabras';

  @override
  String get basicSentenceRepository => 'Repositorio básico de frases';

  @override
  String get basicSentences => 'Repositorio básico de frases';

  @override
  String get basicWordRepository => 'Repositorio básico de palabras';

  @override
  String get caseObject => 'Obxectivo';

  @override
  String get casePossessive => 'Posesivo';

  @override
  String get casePossessivePronoun => 'Pronome posesivo';

  @override
  String get caseReflexive => 'Reflexivo';

  @override
  String get caseSubject => 'Nominativo';

  @override
  String get chatAiChat => 'Chat';

  @override
  String get chatAllConversations => 'Todas as conversas';

  @override
  String get chatChoosePersona => 'Seleccionar persoa';

  @override
  String get chatEndMessage => 'Queres finalizar a conversa?';

  @override
  String get chatEndTitle => 'Finalizar e gardar a conversa';

  @override
  String chatFailed(Object error) {
    return 'Erro no chat: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Extracto da conversa ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Historial de chat';

  @override
  String get chatNew => 'Novo chat';

  @override
  String get chatNewChat => 'Novo chat';

  @override
  String get chatNoConversations => 'Aínda non hai conversas';

  @override
  String get chatSaveAndExit => 'Gardar e saír';

  @override
  String get chatStartNewPrompt => 'Comeza unha nova conversa para practicar!';

  @override
  String get chatTypeHint => 'Escribe unha mensaxe...';

  @override
  String get chatUntitled => 'Conversa sen título';

  @override
  String get checking => 'Comprobando...';

  @override
  String get clearAll => 'Borrar todo';

  @override
  String get confirm => 'Confirmar';

  @override
  String get confirmDelete => 'Queres eliminar este rexistro de estudo?';

  @override
  String get confirmDeleteConversation =>
      'Queres eliminar esta conversa?\nNon poderás recuperala.';

  @override
  String get confirmDeleteParticipant => 'Queres eliminar este participante?';

  @override
  String get contextTagHint =>
      'Escribe a situación para que sexa máis doado de distinguir máis tarde';

  @override
  String get contextTagLabel =>
      'Contexto/Situación (opcional) - Ex: Saúdo matinal, formal';

  @override
  String get copiedToClipboard => 'Copiado no portapapeis!';

  @override
  String get copy => 'Copiar';

  @override
  String get correctAnswer => 'Resposta correcta';

  @override
  String get createNew => 'Continuar cunha nova frase';

  @override
  String get currentLocation => 'Localización actual';

  @override
  String get currentMaterialLabel =>
      'Libro de traballo seleccionado actualmente:';

  @override
  String get delete => 'Eliminar';

  @override
  String deleteFailed(String error) {
    return 'Erro ao eliminar: $error';
  }

  @override
  String get deleteRecord => 'Eliminar rexistro';

  @override
  String get dialogueQuestDesc =>
      'Practica diálogos a través de xogos de rol. Selecciona e di as respostas axeitadas.';

  @override
  String get dialogueQuestTitle => 'Busca de diálogos';

  @override
  String get disambiguationPrompt => 'A que significado queres traducir?';

  @override
  String get disambiguationTitle => 'Seleccionar significado';

  @override
  String get dontHaveAccount => 'Non tes unha conta?';

  @override
  String get editParticipant => 'Editar participante';

  @override
  String get email => 'Correo electrónico';

  @override
  String get emailAlreadyInUse =>
      'Este correo electrónico xa está rexistrado. Inicia sesión ou usa a recuperación de contrasinal.';

  @override
  String get enterNewSubjectName => 'Introduce un título novo';

  @override
  String get enterSentenceHint => 'Escribe unha frase...';

  @override
  String get enterTextHint => 'Escribe o texto para traducir';

  @override
  String get enterTextToTranslate => 'Escribe o texto para traducir';

  @override
  String get enterWordHint => 'Escribe unha palabra...';

  @override
  String get error => 'Erro';

  @override
  String get errorHateSpeech =>
      'Non se pode traducir porque contén incitación ao odio.';

  @override
  String get errorOtherSafety =>
      'A tradución foi denegada pola política de seguridade da IA.';

  @override
  String get errorProfanity => 'Non se pode traducir porque contén blasfemias.';

  @override
  String get errorSelectCategory =>
      'Primeiro selecciona unha palabra ou unha frase!';

  @override
  String get errorSexualContent =>
      'Non se pode traducir porque contén contido sexual.';

  @override
  String get errors => 'Erros:';

  @override
  String get female => 'Muller';

  @override
  String get file => 'Ficheiro:';

  @override
  String get filterAll => 'Todo';

  @override
  String get flip => 'Mostrar';

  @override
  String get formComparative => 'Comparativo';

  @override
  String get formInfinitive => 'Infinitivo/Presente';

  @override
  String get formPast => 'Pasado';

  @override
  String get formPastParticiple => 'Participio pasado';

  @override
  String get formPlural => 'Plural';

  @override
  String get formPositive => 'Positivo';

  @override
  String get formPresent => 'Presente';

  @override
  String get formPresentParticiple => 'Participio presente (ing)';

  @override
  String get formSingular => 'Singular';

  @override
  String get formSuperlative => 'Superlativo';

  @override
  String get formThirdPersonSingular => 'Terceira persoa do singular';

  @override
  String get gameModeDesc => 'Selecciona o modo de xogo que queres practicar';

  @override
  String get gameModeTitle => 'Modo de xogo';

  @override
  String get gameOver => 'Fin da partida';

  @override
  String get gender => 'Xénero';

  @override
  String get labelFilterMaterial => 'Material';

  @override
  String get labelFilterTag => 'Etiqueta';

  @override
  String get generalTags => 'Etiquetas xerais';

  @override
  String get getMaterials => 'Obter materiais';

  @override
  String get good => 'Ben';

  @override
  String get googleContinue => 'Continuar con Google';

  @override
  String get helpDialogueImportDesc =>
      'Importa un conxunto completo de diálogos como un ficheiro JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• Estrutura JSON: usa a matriz `dialogues` en lugar de `entries`\n• Recuperación automática: o título, a persoa e a orde da mensaxe do diálogo restablécense.\n• Localización: os diálogos importados aparecen na pestana «Historial» do modo de chat da IA.';

  @override
  String get helpJsonDesc =>
      'Para importar material de aprendizaxe para usar no modo 3 como ficheiro JSON, siga o seguinte formato:';

  @override
  String get helpJsonTypeDialogue => 'Diálogo';

  @override
  String get helpJsonTypeSentence => 'Frase';

  @override
  String get helpJsonTypeWord => 'Palabra';

  @override
  String get helpMode1Desc => '음성을 인식하거나 텍스트를 입력하여 즉시 번역하고, 학습 리스트에 저장하세요.';

  @override
  String get helpMode1Details =>
      '• 언어 설정: 홈 화면 상단의 언어 버튼으로 내 언어와 학습 중인 언어를 확인하고 학습 언어를 변경할 수 있습니다.\n• 심플 입력: 중앙의 대형 마이크 및 텍스트 창을 통해 즉시 입력하세요.\n• 설정 확인: 입력이 끝나면 오른쪽의 파란색 체크 버튼을 누르세요. 상세 설정 창이 나타납니다.\n• 상세 설정: 나타난 다이얼로그에서 저장할 자료집, 주석(메모), 태그를 지정할 수 있습니다.\n• 지금 번역하기: 설정을 마친 후 초록색 번역 버튼을 누르면 인공지능이 즉시 번역을 수행합니다.\n• 자동 검색: 입력 중 유사한 기존 번역을 실시간으로 감지하여 보여줍니다.\n• 듣기 및 저장: 번역 결과 하단의 스피커 아이콘으로 발음을 듣고, \'데이터 저장\'을 통해 학습 리스트에 추가하세요.';

  @override
  String get helpMode2Desc =>
      'Repasa as frases gardadas e comproba se as memorizaches coa función de ocultación automática.';

  @override
  String get helpMode2Details =>
      '• Selección de material: Usa o menú (⋮) na parte superior dereita para \'Seleccionar material de estudo\' ou \'Biblioteca en liña\'.\n• Virar tarxeta: Comproba a tradución con \'Mostrar/Ocultar\'.\n• Escoitar: Reproduce a pronuncia co ícone do altofalante.\n• Aprendizaxe completa: Marca cun símbolo de verificación (V) para completar a aprendizaxe.\n• Eliminar: Mantén presionada a tarxeta (clic longo) para eliminar o rexistro.\n• Busca e filtro: Admite a barra de busca (busca intelixente en tempo real) e as etiquetas, filtro de letra inicial.';

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
      '• Chat de IA: practica conversas reais con personaxes no menú \'Chat\' na barra de pestanas inferior\n• Configuración de personaxe: especifica libremente o xénero, o nome e o código de idioma da outra persoa\n• Escenas de GPS: recoñece a miña localización actual e recomenda temas de conversa axeitados para o lugar\n• Dous idiomas: as respostas da IA móstranse coa tradución para maximizar o efecto da aprendizaxe\n• Xestión de rexistros: filtra o historial de conversas pasadas e garda mensaxes específicas das conversas como material de aprendizaxe';

  @override
  String get helpTabJson => 'Formato JSON';

  @override
  String get helpTabModes => 'Descrición dos modos';

  @override
  String get helpTabTour => 'Visita guiada';

  @override
  String get helpTitle => 'Axuda e guía';

  @override
  String get helpTourDesc =>
      'Un **círculo resaltado** guiaráche polas funcións clave.\n(Ex: mantén pulsada a tarxeta que apunta o **círculo resaltado** para eliminar.)';

  @override
  String get hide => 'Ocultar';

  @override
  String importAdded(int count) {
    return 'Engadido: $count';
  }

  @override
  String get importComplete => 'Importación completa';

  @override
  String get importDuplicateTitleError =>
      'Xa existe un material co mesmo título. Cambia o título e téntao de novo.';

  @override
  String importErrorMessage(String error) {
    return 'Erro ao importar o ficheiro:\\n$error';
  }

  @override
  String get importFailed => 'Erro ao importar';

  @override
  String importFile(String fileName) {
    return 'Ficheiro: $fileName';
  }

  @override
  String get importJsonFile => 'Importar ficheiro JSON';

  @override
  String get importJsonFilePrompt => 'Importa un ficheiro JSON';

  @override
  String importSkipped(int count) {
    return 'Omitido: $count';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String get importing => 'Importando...';

  @override
  String get inputModeTitle => 'Entrada';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervalo: $seconds segundos';
  }

  @override
  String get invalidEmail => 'Introduce un correo electrónico válido.';

  @override
  String get kakaoContinue => 'Continuar con Kakao';

  @override
  String get labelLangCode => 'Código de idioma (p. ex., en-US, ko-KR)';

  @override
  String get labelName => 'Nome';

  @override
  String get labelNote => 'Nota';

  @override
  String get labelPOS => 'Categoría gramatical';

  @override
  String get labelRole => 'Rol';

  @override
  String get labelSentence => 'Frase';

  @override
  String get labelSentenceCollection => 'Colección de frases';

  @override
  String get labelSentenceType => 'Tipo de frase';

  @override
  String get labelShowMemorized => 'Rematado';

  @override
  String get labelType => 'Tipo:';

  @override
  String get labelWord => 'Palabra';

  @override
  String get labelWordbook => 'Colección de palabras';

  @override
  String get language => 'Idioma';

  @override
  String get languageSettings => 'Axustes de idioma';

  @override
  String get languageSettingsTitle => 'Axustes de idioma';

  @override
  String get libTitleFirstMeeting => 'Primeira reunión';

  @override
  String get libTitleGreetings1 => 'Saúdos 1';

  @override
  String get libTitleNouns1 => 'Substantivos 1';

  @override
  String get libTitleVerbs1 => 'Verbos 1';

  @override
  String get listen => 'Escoitar';

  @override
  String get listening => 'Escoitando...';

  @override
  String get loadingParticipants => 'Cargando participantes...';

  @override
  String get location => 'Localización';

  @override
  String get login => 'Iniciar sesión';

  @override
  String get logout => 'Saír';

  @override
  String get logoutConfirmMessage => 'Queres saír deste dispositivo?';

  @override
  String get logoutConfirmTitle => 'Saír';

  @override
  String get male => 'Home';

  @override
  String get manageParticipants => 'Xestionar participantes';

  @override
  String get manual => 'Entrada manual';

  @override
  String get markAsStudied => 'Marcar como estudado';

  @override
  String get materialInfo => 'Información do material';

  @override
  String get me => 'Eu';

  @override
  String get menuDeviceImport => 'Importar material desde o dispositivo';

  @override
  String get menuHelp => 'Axuda';

  @override
  String get menuLanguageSettings => 'Configuración de idioma';

  @override
  String get menuOnlineLibrary => 'Biblioteca en liña';

  @override
  String get menuSelectMaterialSet => 'Seleccionar libro de traballo';

  @override
  String get menuSettings => 'Axustes de idioma';

  @override
  String get menuTutorial => 'Visita guiada';

  @override
  String get menuWebDownload => 'Páxina web';

  @override
  String get metadataDialogTitle => 'Clasificación detallada';

  @override
  String get metadataFormType => 'Tipo de forma gramatical';

  @override
  String get metadataRootWord => 'Forma raíz (Root Word)';

  @override
  String get micButtonTooltip => 'Comezar o recoñecemento de voz';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Libro de traballo seleccionado actualmente: $name';
  }

  @override
  String get mode2Title => 'Repaso';

  @override
  String get mode3Next => 'Seguinte';

  @override
  String get mode3Start => 'Comezar';

  @override
  String get mode3Stop => 'Deter';

  @override
  String get mode3TryAgain => 'Tentar de novo';

  @override
  String get mySentenceCollection => 'A miña colección de frases';

  @override
  String get myWordbook => 'O meu vocabulario';

  @override
  String get neutral => 'Neutro';

  @override
  String get newSubjectName => 'Novo título de tema/colección de frases';

  @override
  String get next => 'Seguinte';

  @override
  String get noDialogueHistory => 'Non hai historial de conversa.';

  @override
  String get noInternetWarningMic =>
      'Non hai conexión a internet. É posible que o recoñecemento de voz non funcione sen conexión.';

  @override
  String get noInternetWarningTranslate =>
      'Non hai conexión a internet. A función de tradución non está dispoñible sen conexión. Usa o modo de repaso.';

  @override
  String get noMaterialsInCategory => 'Non hai materiais nesta categoría.';

  @override
  String get noParticipantsFound =>
      'Non se atoparon participantes rexistrados.';

  @override
  String get noRecords =>
      'Non hai rexistros de estudo para o idioma seleccionado';

  @override
  String get noStudyMaterial => 'Non hai material de estudo.';

  @override
  String get noTextToPlay => 'Non hai texto para reproducir';

  @override
  String get noTranslationToSave => 'Non hai tradución para gardar';

  @override
  String get noVoiceDetected => 'Non se detectou ningunha voz';

  @override
  String get notSelected => '- Sen seleccionar -';

  @override
  String get onlineLibraryCheckInternet =>
      'Comproba a túa conexión a internet ou inténtao de novo máis tarde.';

  @override
  String get onlineLibraryLoadFailed => 'Non se puideron cargar os materiais.';

  @override
  String get onlineLibraryNoMaterials => 'Non hai materiais.';

  @override
  String get participantDeleted => 'Eliminouse o participante.';

  @override
  String get participantRename => 'Cambiar o nome do participante';

  @override
  String get partner => 'Socio';

  @override
  String get partnerMode => 'Modo socio';

  @override
  String get password => 'Contrasinal';

  @override
  String get passwordTooShort =>
      'O contrasinal debe ter polo menos 6 caracteres.';

  @override
  String get perfect => 'Perfecto!';

  @override
  String get personaFriend => 'Amigo local';

  @override
  String get personaGuide => 'Guía turístico';

  @override
  String get personaTeacher => 'Profesor de inglés';

  @override
  String get playAgain => 'Xogar de novo';

  @override
  String playbackFailed(String error) {
    return 'Erro ao reproducir: $error';
  }

  @override
  String get playing => 'Reproducindo...';

  @override
  String get posAdjective => 'Adxectivo';

  @override
  String get posAdverb => 'Adverbio';

  @override
  String get posConjunction => 'Conxunción';

  @override
  String get posInterjection => 'Interxección';

  @override
  String get posNoun => 'Substantivo';

  @override
  String get posPreposition => 'Preposición';

  @override
  String get posPronoun => 'Pronome';

  @override
  String get posVerb => 'Verbo';

  @override
  String get practiceModeTitle => 'Práctica';

  @override
  String get practiceWordsOnly => 'Practicar só palabras';

  @override
  String progress(int current, int total) {
    return 'Progreso: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Mostrar os $count elementos creados recentemente';
  }

  @override
  String recognitionFailed(String error) {
    return 'Erro ao recoñecer a voz: $error';
  }

  @override
  String get recognized => 'Recoñecido';

  @override
  String get recognizedText => 'Pronuncia recoñecida:';

  @override
  String get recordDeleted => 'Rexistro eliminado';

  @override
  String get refresh => 'Actualizar';

  @override
  String get reset => 'Restablecer';

  @override
  String get resetPracticeHistory => 'Restablecer o historial de práctica';

  @override
  String get retry => 'Tentar de novo?';

  @override
  String get reviewAll => 'Repaso completo';

  @override
  String reviewCount(int count) {
    return 'Repasado $count veces';
  }

  @override
  String get reviewModeTitle => 'Repaso';

  @override
  String get roleAi => 'IA';

  @override
  String get roleThirdParty => 'Terceiro';

  @override
  String get roleUser => 'Usuario';

  @override
  String get save => 'Gardar';

  @override
  String get saveData => 'Gardar datos';

  @override
  String saveFailed(String error) {
    return 'Erro ao gardar: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Tenta gardar as traducións desde o modo de busca';

  @override
  String get saved => 'Gardado';

  @override
  String get saving => 'Gardando...';

  @override
  String score(String score) {
    return 'Precisión: $score%';
  }

  @override
  String get scoreLabel => 'Puntuación';

  @override
  String get search => 'Buscar';

  @override
  String get searchConditions => 'Condicións de busca';

  @override
  String get searchSentenceHint => 'Buscar frases...';

  @override
  String get searchWordHint => 'Buscar palabras...';

  @override
  String get sectionSentence => 'Sección de frases';

  @override
  String get sectionSentences => 'Frases';

  @override
  String get sectionWord => 'Sección de palabras';

  @override
  String get sectionWords => 'Palabras';

  @override
  String get selectExistingSubject => 'Seleccionar título existente';

  @override
  String get selectMaterialPrompt => 'Selecciona o material de estudo';

  @override
  String get selectMaterialSet => 'Seleccionar libro de traballo';

  @override
  String get selectPOS => 'Seleccionar categoría gramatical';

  @override
  String get selectParticipants => 'Seleccionar participantes';

  @override
  String get selectSentenceType => 'Seleccionar tipo de frase';

  @override
  String get selectStudyMaterial => 'Selecciona o material de estudo';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Frase';

  @override
  String get signUp => 'Rexistrarse';

  @override
  String get similarTextFound => 'Texto similar atopado';

  @override
  String get skip => 'Omitir';

  @override
  String get source => 'Fonte:';

  @override
  String get sourceLanguage => 'Idioma orixinal';

  @override
  String get sourceLanguageLabel => 'O meu idioma (Orixinal)';

  @override
  String get speakNow => 'Fala agora!';

  @override
  String get speaker => 'Falante';

  @override
  String get speakerSelect => 'Seleccionar falante';

  @override
  String get speakingPractice => 'Práctica de fala';

  @override
  String get startChat => 'Comezar conversa';

  @override
  String get startPractice => 'Comezar a practicar';

  @override
  String get startTutorial => 'Comezar o titorial';

  @override
  String get startWarning => 'Aviso';

  @override
  String get startsWith => 'Comeza por';

  @override
  String get statusCheckEmail =>
      'Por favor, comproba o teu correo electrónico para completar a verificación.';

  @override
  String statusDownloading(Object name) {
    return 'Descargando: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Erro ao importar: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name importado correctamente';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Cancelouse o inicio de sesión.';

  @override
  String statusLoginFailed(Object error) {
    return 'Erro ao iniciar sesión: $error';
  }

  @override
  String get statusLoginSuccess => 'Sesión iniciada correctamente.';

  @override
  String get statusLogoutSuccess => 'Sesión pechada.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Erro ao rexistrarse: $error';
  }

  @override
  String get statusSigningUp => 'Rexistrando...';

  @override
  String get stopPractice => 'Deter a práctica';

  @override
  String get studyComplete => 'Estudo completo';

  @override
  String studyRecords(int count) {
    return 'Rexistros de estudo ($count)';
  }

  @override
  String get styleFormal => 'Formal';

  @override
  String get styleInformal => 'Informal';

  @override
  String get stylePolite => 'Educado';

  @override
  String get styleSlang => 'Xerga/argot';

  @override
  String get subject => 'Título:';

  @override
  String get swapLanguages => 'Cambiar idiomas';

  @override
  String get switchToAi => 'Cambiar ao modo IA';

  @override
  String get switchToPartner => 'Cambiar ao modo socio';

  @override
  String get syncingData => 'Sincronizando datos...';

  @override
  String get tabConversation => 'Conversa';

  @override
  String tabReview(int count) {
    return 'Repaso ($count)';
  }

  @override
  String get tabSentence => 'Frase';

  @override
  String get tabSpeaking => 'Falar';

  @override
  String tabStudyMaterial(int count) {
    return 'Material de estudo ($count)';
  }

  @override
  String get tabWord => 'Palabra';

  @override
  String get tagFormal => 'Formal';

  @override
  String get tagSelection => 'Selección de etiquetas';

  @override
  String get targetLanguage => 'Idioma de destino';

  @override
  String get targetLanguageFilter => 'Filtro de idioma de destino:';

  @override
  String get targetLanguageLabel => 'Idioma de aprendizaxe (Destino)';

  @override
  String get thinkingTimeDesc =>
      'Este é o tempo para pensar antes de que se revele a resposta correcta.';

  @override
  String get thinkingTimeInterval => 'Intervalo de tempo de reprodución';

  @override
  String get timeUp => 'Rematou o tempo!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Etiquetas do título (colección)';

  @override
  String get tooltipDecrease => 'Diminuír';

  @override
  String get tooltipIncrease => 'Aumentar';

  @override
  String get tooltipSearch => 'Buscar';

  @override
  String get tooltipSpeaking => 'Falar';

  @override
  String get tooltipStudyReview => 'Estudo+Repaso';

  @override
  String totalRecords(int count) {
    return 'Total de $count rexistros (ver todo)';
  }

  @override
  String get translate => 'Traducir';

  @override
  String get translating => 'Traducindo...';

  @override
  String get translation => 'Tradución';

  @override
  String get translationComplete => 'Tradución completa (necesario gardar)';

  @override
  String translationFailed(String error) {
    return 'Erro ao traducir: $error';
  }

  @override
  String get translationLimitExceeded => 'Superouse o límite de tradución';

  @override
  String get translationLimitMessage =>
      'Usaches todas as traducións gratuítas diarias (5 veces).\\n\\nQueres ver un anuncio e recargar 5 veces ao instante?';

  @override
  String get translationLoaded => 'Tradución gardada cargada';

  @override
  String get translationRefilled =>
      'O número de traducións recargouse 5 veces!';

  @override
  String get translationResultHint => 'Resultado da tradución - editable';

  @override
  String get tryAgain => 'Téntao de novo';

  @override
  String get tutorialAiChatDesc =>
      'Practica a conversa real cunha persoa da IA.';

  @override
  String get tutorialAiChatTitle => 'Chat con IA';

  @override
  String get tutorialContextDesc =>
      'Podes gardar a mesma frase por separado se anotas a situación (por exemplo, mañá, noite).';

  @override
  String get tutorialContextTitle => 'Etiqueta de situación/contexto';

  @override
  String get tutorialLangSettingsDesc =>
      'Establece o idioma orixinal e o idioma de destino para traducir.';

  @override
  String get tutorialLangSettingsTitle => 'Axustes de idioma';

  @override
  String get tutorialM1ToggleDesc =>
      'Cambia entre os modos de palabra e frase aquí.';

  @override
  String get tutorialM1ToggleTitle => 'Modo de palabra/frase';

  @override
  String get tutorialM2DropdownDesc =>
      'Podes seleccionar o material que queres estudar a través do menú superior.';

  @override
  String get tutorialM2ImportDesc =>
      'Importa un ficheiro JSON desde o cartafol do teu dispositivo.';

  @override
  String get tutorialM2ListDesc =>
      'Podes eliminar esta tarxeta manténdoa pulsada (clic longo). Comproba e dá a volta á frase gardada.';

  @override
  String get tutorialM2ListTitle => 'Lista de aprendizaxe';

  @override
  String get tutorialM2SearchDesc =>
      'Podes atopar rapidamente palabras e frases gardadas buscándoas.';

  @override
  String get tutorialM2SelectDesc =>
      'Toca a icona do libro de traballo (📚) na barra de aplicacións superior para seleccionar o material que queres estudar.';

  @override
  String get tutorialM2SelectTitle => 'Selección de material';

  @override
  String get tutorialM3IntervalDesc => 'Axusta o tempo de espera entre frases.';

  @override
  String get tutorialM3IntervalTitle => 'Axuste de intervalo';

  @override
  String get tutorialM3ResetDesc =>
      'Restablece o progreso e a puntuación de precisión para comezar de novo desde o principio.';

  @override
  String get tutorialM3ResetTitle => 'Restablecer historial';

  @override
  String get tutorialM3SelectDesc =>
      'Toca a icona do libro de traballo (📚) na barra de aplicacións superior para seleccionar o material que queres practicar.';

  @override
  String get tutorialM3SelectTitle => 'Selección de material';

  @override
  String get tutorialM3StartDesc =>
      'Preme o botón de reprodución para escoitar a voz dun falante nativo e repetir.';

  @override
  String get tutorialM3StartTitle => 'Comezar a practicar';

  @override
  String get tutorialM3WordsDesc =>
      'Se marcas esta opción, só practicarás as palabras gardadas.';

  @override
  String get tutorialM3WordsTitle => 'Práctica de palabras';

  @override
  String get tutorialMicDesc =>
      'Podes escribir por voz premendo o botón do micrófono.';

  @override
  String get tutorialMicTitle => 'Entrada de voz';

  @override
  String get tutorialSaveDesc =>
      'Garda os resultados traducidos no teu rexistro de aprendizaxe.';

  @override
  String get tutorialSaveTitle => 'Gardar';

  @override
  String get tutorialSwapDesc =>
      'Cambia o meu idioma e o idioma de aprendizaxe entre si.';

  @override
  String get tutorialTabDesc =>
      'Aquí podes seleccionar o modo de aprendizaxe desexado.';

  @override
  String get tutorialTapToContinue => 'Toca a pantalla para continuar';

  @override
  String get tutorialTransDesc => 'Traduce o texto que escribiches.';

  @override
  String get tutorialTransTitle => 'Traducir';

  @override
  String get typeExclamation => 'Exclamación';

  @override
  String get typeImperative => 'Imperativo';

  @override
  String get typeQuestion => 'Pregunta';

  @override
  String get typeStatement => 'Declaración';

  @override
  String get usageLimitTitle => 'Límite acadado';

  @override
  String get useExistingText => 'Usar o texto existente';

  @override
  String get viewOnlineGuide => 'Ver guía en liña';

  @override
  String get voluntaryTranslations => 'Traducións voluntarias';

  @override
  String get watchAdAndRefill => 'Ver anuncio e recargar (+5 veces)';

  @override
  String get word => 'Palabra';

  @override
  String get wordDefenseDesc =>
      'Defende a base dicindo a palabra antes de que chegue o inimigo.';

  @override
  String get wordDefenseTitle => 'Defensa de palabras';

  @override
  String get wordModeLabel => 'Modo palabra';

  @override
  String get yourPronunciation => 'A túa pronuncia';

  @override
  String get ttsUnsupportedNatively =>
      'A configuración predeterminada deste dispositivo non admite a saída de voz neste idioma.';

  @override
  String get homeTab => 'Inicio';

  @override
  String get welcomeTitle => 'Benvido a Talkie!';

  @override
  String get welcomeDesc =>
      'Con Talkie, podes traducir e practicar sen límites en 80 idiomas ao instante.';

  @override
  String get welcomeButton => 'Comezar';

  @override
  String get labelDetails => 'Axustes detallados';

  @override
  String get translationResult => 'Resultado da tradución';

  @override
  String get inputContent => 'Contido de entrada';

  @override
  String get translateNow => 'Traducir agora';

  @override
  String get tooltipSettingsConfirm => 'Confirmar axustes';

  @override
  String get hintNoteExample => 'Exemplo: Contexto, homónimos, etc.';

  @override
  String get hintTagExample => 'Exemplo: Negocios, viaxes...';

  @override
  String get addNew => 'Engadir novo';

  @override
  String get newNotebookTitle => 'Nome da nova colección';

  @override
  String get enterNameHint => 'Escribe un nome';

  @override
  String get add => 'Engadir';

  @override
  String get openSettings => 'Abrir axustes';

  @override
  String get helpNotebook =>
      'Selecciona un cartafol para gardar os resultados traducidos.';

  @override
  String get helpNote =>
      'Escribe libremente os significados das palabras, exemplos ou situacións.';

  @override
  String get helpTag =>
      'Introduce palabras clave para clasificar ou buscar máis tarde.';
}

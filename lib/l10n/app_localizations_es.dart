// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get accuracy => 'Precisión';

  @override
  String get ttsMissing =>
      'El motor de voz para este idioma no está instalado en el dispositivo.';

  @override
  String get ttsInstallGuide =>
      'Por favor, instala los datos del idioma en Ajustes de Android > Google TTS.';

  @override
  String get adLoading => 'Cargando anuncio. Inténtalo de nuevo en un momento.';

  @override
  String get addNewSubject => 'Añadir nuevo título';

  @override
  String get addParticipant => 'Añadir Participante';

  @override
  String get addTagHint => 'Añadir etiqueta...';

  @override
  String get alreadyHaveAccount => '¿Ya tienes una cuenta?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Reproducción automática';

  @override
  String get basic => 'Básico';

  @override
  String get basicDefault => 'Básico (predeterminado)';

  @override
  String get basicMaterialRepository => 'Repositorio básico de frases/palabras';

  @override
  String get basicSentenceRepository => 'Repositorio básico de frases';

  @override
  String get basicSentences => 'Repositorio de frases';

  @override
  String get basicWordRepository => 'Repositorio básico de palabras';

  @override
  String get basicWords => 'Repositorio de palabras';

  @override
  String get cancel => 'Cancelar';

  @override
  String get caseObject => 'Acusativo';

  @override
  String get casePossessive => 'Genitivo';

  @override
  String get casePossessivePronoun => 'Pronombre posesivo';

  @override
  String get caseReflexive => 'Reflexivo';

  @override
  String get caseSubject => 'Nominativo';

  @override
  String get chatAiChat => 'Chat';

  @override
  String get chatAllConversations => 'Todas las conversaciones';

  @override
  String get chatChoosePersona => 'Elige personaje';

  @override
  String get chatEndMessage => '¿Quieres finalizar la conversación?';

  @override
  String get chatEndTitle => 'Finalizar y guardar';

  @override
  String chatFailed(Object error) {
    return 'Fallo en el chat: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Extracto de la conversación ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Historial';

  @override
  String get chatNew => 'Nuevo chat';

  @override
  String get chatNewChat => 'Nuevo chat';

  @override
  String get chatNoConversations => 'Sin conversaciones';

  @override
  String get chatSaveAndExit => 'Guardar y salir';

  @override
  String get chatStartNewPrompt => '¡Inicia un chat para practicar!';

  @override
  String get chatTypeHint => 'Escribe aquí...';

  @override
  String get chatUntitled => 'Conversación sin título';

  @override
  String get checking => 'Comprobando...';

  @override
  String get clearAll => 'Borrar todo';

  @override
  String get confirm => 'Confirmar';

  @override
  String get confirmDelete => '¿Seguro que quieres eliminar este registro?';

  @override
  String get confirmDeleteConversation =>
      '¿Estás seguro de que quieres eliminar esta conversación?\nUna vez eliminada, no se podrá recuperar.';

  @override
  String get confirmDeleteParticipant =>
      '¿Estás seguro de que quieres eliminar a este participante?';

  @override
  String get contextTagHint =>
      'Añade el contexto para que sea más fácil distinguirlo más tarde';

  @override
  String get contextTagLabel =>
      'Contexto/Situación (opcional) - Ej: Saludo matutino, Formal';

  @override
  String get copiedToClipboard => '¡Copiado al portapapeles!';

  @override
  String get copy => 'Copiar';

  @override
  String get correctAnswer => 'Respuesta Correcta';

  @override
  String get createNew => 'Crear Nuevo';

  @override
  String get currentLocation => 'Ubicación actual';

  @override
  String get currentMaterialLabel => 'Material de estudio seleccionado:';

  @override
  String get delete => 'Eliminar';

  @override
  String deleteFailed(String error) {
    return 'Fallo al eliminar: $error';
  }

  @override
  String get deleteRecord => 'Eliminar registro';

  @override
  String get dialogueQuestDesc =>
      'Practica el diálogo a través de juegos de rol. Elige la respuesta adecuada y dilo.';

  @override
  String get dialogueQuestTitle => 'Búsqueda de diálogo';

  @override
  String get disambiguationPrompt =>
      '¿Qué significado quieres para la traducción?';

  @override
  String get disambiguationTitle => 'Seleccionar significado';

  @override
  String get dontHaveAccount => '¿No tienes una cuenta?';

  @override
  String get editParticipant => 'Editar Participante';

  @override
  String get email => 'Correo electrónico';

  @override
  String get emailAlreadyInUse =>
      'Este correo electrónico ya está en uso. Inicia sesión o recupera tu contraseña.';

  @override
  String get enterNewSubjectName => 'Introduce un nuevo título';

  @override
  String get enterSentenceHint => 'Escribe una frase...';

  @override
  String get enterTextHint => 'Introduce el texto para traducir';

  @override
  String get enterTextToTranslate => 'Ingresa texto para traducir';

  @override
  String get enterWordHint => 'Escribe una palabra...';

  @override
  String get error => 'Error';

  @override
  String get errorHateSpeech =>
      'No se puede traducir porque contiene discurso de odio.';

  @override
  String get errorOtherSafety =>
      'La traducción ha sido rechazada por la política de seguridad de la IA.';

  @override
  String get errorProfanity =>
      'No se puede traducir porque contiene lenguaje obsceno.';

  @override
  String get errorSelectCategory => '¡Selecciona palabra o frase primero!';

  @override
  String get errorSexualContent =>
      'No se puede traducir porque contiene contenido sexual.';

  @override
  String get errors => 'Errores:';

  @override
  String get female => 'Femenino';

  @override
  String get file => 'Archivo:';

  @override
  String get filterAll => 'Todos';

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
  String get formPresentParticiple => 'Participio presente (-ndo)';

  @override
  String get formSingular => 'Singular';

  @override
  String get formSuperlative => 'Superlativo';

  @override
  String get formThirdPersonSingular => 'Tercera persona singular';

  @override
  String get gameModeDesc => 'Selecciona un modo de juego para practicar';

  @override
  String get gameModeTitle => 'Modo de juego';

  @override
  String get gameOver => 'Fin del juego';

  @override
  String get gender => 'Género';

  @override
  String get generalTags => 'Etiquetas generales';

  @override
  String get getMaterials => 'Obtener materiales';

  @override
  String get good => 'Bien';

  @override
  String get googleContinue => 'Continuar con Google';

  @override
  String get helpDialogueImportDesc =>
      'Importa un conjunto de diálogos completo como archivo JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'Para importar materiales en Modo 3, crea un archivo JSON con esta estructura:';

  @override
  String get helpJsonTypeDialogue => 'Diálogo';

  @override
  String get helpJsonTypeSentence => 'Frase';

  @override
  String get helpJsonTypeWord => 'Palabra';

  @override
  String get helpMode1Desc =>
      'Reconoce voz, traduce al idioma destino y escucha el resultado.';

  @override
  String get helpMode1Details =>
      '• Configuración de idioma: Cambia el idioma mediante el icono de traducir superior\n• Ayuda: Consulta la guía mediante el icono de ayuda superior\n• Entrada de Voz: Toca el icono del micro para empezar/parar\n• Entrada de Texto: Escribe directamente para traducir\n• Auto-Búsqueda: Detecta frases existentes similares\n• Traducir: Toca para traducción instantánea\n• Escuchar: Icono de altavoz para TTS (Original/Traducido)\n• Guardar: \'Guardar\' añade al historial\n• Limpiar: Reinicia todos los campos';

  @override
  String get helpMode2Desc =>
      'Repasa oraciones guardadas con auto-ocultar traducciones y seguimiento.';

  @override
  String get helpMode2Details =>
      '• Seleccionar Material: Elige set o \'Repasar Todo\'\n• Girar Tarjeta: Usa \'Mostrar/Ocultar\' para ver traducción\n• Escuchar: Reproduce TTS para la oración \n• Marcar Estudiado: Check (V) para ítems completados\n• Eliminar: Mantén presionada la tarjeta\n• Filtro: Ver todo o filtrar por material';

  @override
  String get helpMode3Desc =>
      'Escucha y repite la frase (Shadowing) para practicar la pronunciación.';

  @override
  String get helpMode3Details =>
      '• Seleccionar Material: Elige paquete de aprendizaje\n• Intervalo: [-] [+] ajusta tiempo de espera (3s-60s)\n• Iniciar/Parar: Controla la sesión\n• Hablar: Escucha el audio y repite después\n• Feedback: Puntuación de precisión (0-100) con código de color\n• Reintentar: Usa el botón si no se detecta voz';

  @override
  String get helpModeChatDesc =>
      'Practica conversaciones reales hablando con una IA.';

  @override
  String get helpModeChatDetails =>
      '• Chat con IA: Practica conversaciones reales con personajes.\n• Gestión de participantes: Configura tu idioma y el de la IA para evitar discrepancias lingüísticas.\n• Juego de roles con GPS: Crea situaciones de conversación naturales basadas en tu ubicación actual.\n• Conservación de registros: Todas las conversaciones se guardan de forma segura con un ID y se mantienen incluso si cambias el nombre.';

  @override
  String get helpTabJson => 'Formato JSON';

  @override
  String get helpTabModes => 'Modos';

  @override
  String get helpTabTour => 'Hacer un recorrido';

  @override
  String get helpTitle => 'Ayuda y Guía';

  @override
  String get helpTourDesc =>
      'El **Círculo Resaltado** le guiará a través de las funciones principales.\n(p. ej., puede eliminar un registro manteniendo pulsado cuando el **Círculo Resaltado** lo señale.)';

  @override
  String get hide => 'Ocultar';

  @override
  String importAdded(int count) {
    return 'Añadidos: $count ítems';
  }

  @override
  String get importComplete => 'Importación completada';

  @override
  String get importDuplicateTitleError =>
      'Ya existe un material con el mismo título. Cambia el título e inténtalo de nuevo.';

  @override
  String importErrorMessage(String error) {
    return 'Fallo al importar archivo:\\n$error';
  }

  @override
  String get importFailed => 'Fallo al importar';

  @override
  String importFile(String fileName) {
    return 'Archivo: $fileName';
  }

  @override
  String get importJsonFile => 'Importar JSON';

  @override
  String get importJsonFilePrompt => 'Por favor importa un archivo JSON';

  @override
  String importSkipped(int count) {
    return 'Omitidos: $count ítems';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count ítems';
  }

  @override
  String get importing => 'Importando...';

  @override
  String get inputModeTitle => 'Entrada';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervalo: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Introduce un correo electrónico válido.';

  @override
  String get kakaoContinue => 'Continuar con Kakao';

  @override
  String get labelLangCode => 'Código de Idioma (ej. en-US, es-ES)';

  @override
  String get labelName => 'Nombre';

  @override
  String get labelNote => 'Nota';

  @override
  String get labelPOS => 'Categoría gramatical';

  @override
  String get labelRole => 'Rol';

  @override
  String get labelSentence => 'Frase';

  @override
  String get labelSentenceCollection => 'Colección de oraciones';

  @override
  String get labelSentenceType => 'Tipo de oración';

  @override
  String get labelShowMemorized => 'Hecho';

  @override
  String get labelType => 'Tipo:';

  @override
  String get labelWord => 'Palabra';

  @override
  String get labelWordbook => 'Colección de palabras';

  @override
  String get language => 'Idioma';

  @override
  String get languageSettings => 'Configuración de idioma';

  @override
  String get languageSettingsTitle => 'Configuración de idioma';

  @override
  String get libTitleFirstMeeting => 'Primer encuentro';

  @override
  String get libTitleGreetings1 => 'Saludos 1';

  @override
  String get libTitleNouns1 => 'Sustantivos 1';

  @override
  String get libTitleVerbs1 => 'Verbos 1';

  @override
  String get listen => 'Escuchar';

  @override
  String get listening => 'Escuchando...';

  @override
  String get loadingParticipants => 'Cargando participantes...';

  @override
  String get location => 'Ubicación';

  @override
  String get login => 'Iniciar sesión';

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get logoutConfirmMessage =>
      '¿Quieres cerrar sesión en este dispositivo?';

  @override
  String get logoutConfirmTitle => 'Cerrar sesión';

  @override
  String get male => 'Masculino';

  @override
  String get manageParticipants => 'Gestionar Participantes';

  @override
  String get manual => 'Entrada manual';

  @override
  String get markAsStudied => 'Marcar como estudiado';

  @override
  String get materialInfo => 'Info del Material';

  @override
  String get me => 'Yo';

  @override
  String get menuDeviceImport => 'Importar desde dispositivo';

  @override
  String get menuHelp => 'Ayuda';

  @override
  String get menuLanguageSettings => 'Ajustes de idioma';

  @override
  String get menuOnlineLibrary => 'Biblioteca en línea';

  @override
  String get menuSelectMaterialSet => 'Seleccione un material de estudio';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Tutorial de uso';

  @override
  String get menuWebDownload => 'Manual de usuario';

  @override
  String get metadataDialogTitle => 'Clasificación detallada';

  @override
  String get metadataFormType => 'Forma gramatical';

  @override
  String get metadataRootWord => 'Forma raíz (Root Word)';

  @override
  String get micButtonTooltip => 'Iniciar reconocimiento de voz';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Material de estudio seleccionado: $name';
  }

  @override
  String get mode2Title => 'Repaso';

  @override
  String get mode3Next => 'Siguiente';

  @override
  String get mode3Start => 'Iniciar';

  @override
  String get mode3Stop => 'Detener';

  @override
  String get mode3TryAgain => 'Reintentar';

  @override
  String get mySentenceCollection => 'Mi colección de frases';

  @override
  String get myWordbook => 'Mi vocabulario';

  @override
  String get neutral => 'Neutro';

  @override
  String get newSubjectName => 'Nuevo título de vocabulario/frases';

  @override
  String get next => 'Siguiente';

  @override
  String get noDialogueHistory => 'No hay historial de conversación.';

  @override
  String get noInternetWarningMic =>
      'No hay conexión a Internet. El reconocimiento de voz podría no estar disponible sin conexión.';

  @override
  String get noInternetWarningTranslate =>
      'No hay conexión a Internet. La función de traducción no está disponible sin conexión. Por favor, utiliza el modo de repaso.';

  @override
  String get noMaterialsInCategory => 'No hay materiales en esta categoría.';

  @override
  String get noParticipantsFound => 'No hay participantes registrados.';

  @override
  String get noRecords => 'No hay registros para el idioma seleccionado';

  @override
  String get noStudyMaterial => 'No hay material de estudio.';

  @override
  String get noTextToPlay => 'No hay texto para reproducir';

  @override
  String get noTranslationToSave => 'Nada para guardar';

  @override
  String get noVoiceDetected => 'No se detectó voz';

  @override
  String get notSelected => '- No seleccionado -';

  @override
  String get onlineLibraryCheckInternet =>
      'Comprueba tu conexión a Internet o inténtalo de nuevo más tarde.';

  @override
  String get onlineLibraryLoadFailed => 'Error al cargar los materiales.';

  @override
  String get onlineLibraryNoMaterials => 'No hay materiales.';

  @override
  String get participantDeleted => 'Participante eliminado.';

  @override
  String get participantRename => 'Cambiar nombre del participante';

  @override
  String get partner => 'Socio';

  @override
  String get partnerMode => 'Modo socio';

  @override
  String get password => 'Contraseña';

  @override
  String get passwordTooShort =>
      'La contraseña debe tener al menos 6 caracteres.';

  @override
  String get perfect => '¡Perfecto!';

  @override
  String get personaFriend => 'Amigo local';

  @override
  String get personaGuide => 'Guía de viaje';

  @override
  String get personaTeacher => 'Profesor de inglés';

  @override
  String get playAgain => 'Jugar de nuevo';

  @override
  String playbackFailed(String error) {
    return 'Fallo de reproducción: $error';
  }

  @override
  String get playing => 'Reproduciendo...';

  @override
  String get posAdjective => 'Adjetivo';

  @override
  String get posAdverb => 'Adverbio';

  @override
  String get posConjunction => 'Conjunción';

  @override
  String get posInterjection => 'Interjección';

  @override
  String get posNoun => 'Sustantivo';

  @override
  String get posPreposition => 'Preposición';

  @override
  String get posPronoun => 'Pronombre';

  @override
  String get posVerb => 'Verbo';

  @override
  String get practiceModeTitle => 'Práctica';

  @override
  String get practiceWordsOnly => 'Practicar solo palabras';

  @override
  String progress(int current, int total) {
    return 'Progreso: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Ver los $count elementos creados recientemente';
  }

  @override
  String recognitionFailed(String error) {
    return 'Fallo de reconocimiento: $error';
  }

  @override
  String get recognized => 'Reconocimiento completo';

  @override
  String get recognizedText => 'Texto reconocido:';

  @override
  String get recordDeleted => 'Registro eliminado con éxito';

  @override
  String get refresh => 'Actualizar';

  @override
  String get reset => 'Restablecer';

  @override
  String get resetPracticeHistory => 'Restablecer historial de práctica';

  @override
  String get retry => '¿Reintentar?';

  @override
  String get reviewAll => 'Repaso general';

  @override
  String reviewCount(int count) {
    return 'Repasado $count veces';
  }

  @override
  String get reviewModeTitle => 'Repaso';

  @override
  String get roleAi => 'IA';

  @override
  String get roleThirdParty => 'Tercero';

  @override
  String get roleUser => 'Usuario';

  @override
  String get save => 'Guardar';

  @override
  String get saveData => 'Guardar';

  @override
  String saveFailed(String error) {
    return 'Fallo al guardar: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Guarda traducciones en modo búsqueda';

  @override
  String get saved => 'Guardado';

  @override
  String get saving => 'Guardando...';

  @override
  String score(String score) {
    return 'Precisión: $score%';
  }

  @override
  String get scoreLabel => 'Puntuación';

  @override
  String get search => 'Buscar';

  @override
  String get searchConditions => 'Condiciones de búsqueda';

  @override
  String get searchSentenceHint => 'Buscar oración...';

  @override
  String get searchWordHint => 'Buscar palabra...';

  @override
  String get sectionSentence => 'Sección de oración';

  @override
  String get sectionSentences => 'Frases';

  @override
  String get sectionWord => 'Sección de palabras';

  @override
  String get sectionWords => 'Palabras';

  @override
  String get selectExistingSubject => 'Seleccionar título existente';

  @override
  String get selectMaterialPrompt => 'Por favor selecciona un material';

  @override
  String get selectMaterialSet => 'Seleccionar material de aprendizaje';

  @override
  String get selectPOS => 'Seleccionar parte de la oración';

  @override
  String get selectParticipants => 'Seleccionar participantes';

  @override
  String get selectSentenceType => 'Seleccionar tipo de oración';

  @override
  String get selectStudyMaterial => 'Seleccionar material';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Frase';

  @override
  String get signUp => 'Registrarse';

  @override
  String get similarTextFound => 'Texto similar encontrado';

  @override
  String get skip => 'Omitir';

  @override
  String get source => 'Fuente:';

  @override
  String get sourceLanguage => 'Idioma Origen';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => '¡Habla ahora!';

  @override
  String get speaker => 'Hablante';

  @override
  String get speakerSelect => 'Seleccionar hablante';

  @override
  String get speakingPractice => 'Práctica de Habla';

  @override
  String get startChat => 'Iniciar chat';

  @override
  String get startPractice => 'Iniciar Práctica';

  @override
  String get startTutorial => 'Iniciar Tutorial';

  @override
  String get startWarning => 'Advertencia';

  @override
  String get startsWith => 'Comienza con';

  @override
  String get statusCheckEmail =>
      'Por favor, revise su correo electrónico para completar la autenticación.';

  @override
  String statusDownloading(Object name) {
    return 'Descargando: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Error al importar: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name importado correctamente';
  }

  @override
  String get statusLoggingIn => 'Iniciando sesión...';

  @override
  String get statusLoginCancelled => 'Inicio de sesión cancelado.';

  @override
  String statusLoginFailed(Object error) {
    return 'Error al iniciar sesión: $error';
  }

  @override
  String get statusLoginSuccess => 'Sesión iniciada correctamente.';

  @override
  String get statusLogoutSuccess => 'Sesión cerrada.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Error al registrarse: $error';
  }

  @override
  String get statusSigningUp => 'Registrándose...';

  @override
  String get stopPractice => 'Detener Práctica';

  @override
  String get studyComplete => 'Estudiado';

  @override
  String studyRecords(int count) {
    return 'Registros ($count)';
  }

  @override
  String get styleFormal => 'Formal';

  @override
  String get styleInformal => 'Informal';

  @override
  String get stylePolite => 'Cortés';

  @override
  String get styleSlang => 'Argot';

  @override
  String get subject => 'Tema:';

  @override
  String get swapLanguages => 'Cambiar idiomas';

  @override
  String get switchToAi => 'Cambiar a modo IA';

  @override
  String get switchToPartner => 'Cambiar a modo socio';

  @override
  String get syncingData => 'Sincronizando datos...';

  @override
  String get tabConversation => 'Conversación';

  @override
  String tabReview(int count) {
    return 'Repaso ($count)';
  }

  @override
  String get tabSentence => 'oración';

  @override
  String get tabSpeaking => 'Hablar';

  @override
  String tabStudyMaterial(int count) {
    return 'Material ($count)';
  }

  @override
  String get tabWord => 'palabra';

  @override
  String get tagFormal => 'Formal';

  @override
  String get tagSelection => 'Selección de etiqueta';

  @override
  String get targetLanguage => 'Idioma Destino';

  @override
  String get targetLanguageFilter => 'Filtrar idioma destino:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Tiempo para pensar antes de que se revele la respuesta correcta.';

  @override
  String get thinkingTimeInterval => 'Retraso de reproducción';

  @override
  String get timeUp => '¡Tiempo!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Etiqueta de título (Colección)';

  @override
  String get tooltipDecrease => 'Disminuir';

  @override
  String get tooltipIncrease => 'Aumentar';

  @override
  String get tooltipSearch => 'Buscar';

  @override
  String get tooltipSpeaking => 'Hablar';

  @override
  String get tooltipStudyReview => 'Estudio+Repaso';

  @override
  String totalRecords(int count) {
    return 'Total de $count registros (Ver todo)';
  }

  @override
  String get translate => 'Traducir';

  @override
  String get translating => 'Traduciendo...';

  @override
  String get translation => 'Traducción';

  @override
  String get translationComplete => 'Traducción completa (guardar)';

  @override
  String translationFailed(String error) {
    return 'Fallo de traducción: $error';
  }

  @override
  String get translationLimitExceeded => 'Límite de traducción superado';

  @override
  String get translationLimitMessage =>
      'Has utilizado todas tus traducciones gratuitas diarias (5).\\n\\n¿Quieres ver un anuncio para recargar 5 traducciones al instante?';

  @override
  String get translationLoaded => 'Traducción guardada cargada';

  @override
  String get translationRefilled => '¡Se han recargado 5 traducciones!';

  @override
  String get translationResultHint => 'Resultado de traducción - editable';

  @override
  String get tryAgain => 'Intentar de nuevo';

  @override
  String get tutorialAiChatDesc =>
      'Practica conversaciones reales con personajes de IA.';

  @override
  String get tutorialAiChatTitle => 'Chat de IA';

  @override
  String get tutorialContextDesc =>
      'Agregue contexto (ej: Mañana) para distinguir oraciones similares.';

  @override
  String get tutorialContextTitle => 'Etiqueta de contexto';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure los idiomas de origen y destino para la traducción.';

  @override
  String get tutorialLangSettingsTitle => 'Configuración de idioma';

  @override
  String get tutorialM1ToggleDesc => 'Cambia entre modo palabra y frase aquí.';

  @override
  String get tutorialM1ToggleTitle => 'Modo Palabra/Frase';

  @override
  String get tutorialM2DropdownDesc => 'Selecciona materiales de estudio.';

  @override
  String get tutorialM2ImportDesc =>
      'Importar archivo JSON desde la carpeta del dispositivo.';

  @override
  String get tutorialM2ListDesc =>
      'Revisa tus tarjetas guardadas y gíralas para ver respuestas. (Mantén presionado para eliminar)';

  @override
  String get tutorialM2ListTitle => 'Lista de Estudio';

  @override
  String get tutorialM2SearchDesc =>
      'Busca palabras y frases guardadas para encontrarlas rápidamente.';

  @override
  String get tutorialM2SelectDesc =>
      'Elige materiales de estudio o cambia a \'Repasar Todo\'.';

  @override
  String get tutorialM2SelectTitle => 'Selección y Filtro';

  @override
  String get tutorialM3IntervalDesc =>
      'Ajusta el tiempo de espera entre oraciones.';

  @override
  String get tutorialM3IntervalTitle => 'Intervalo';

  @override
  String get tutorialM3ResetDesc =>
      'Restablece tu progreso y puntuación de precisión, comenzando nuevamente desde el principio.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc =>
      'Elige un set de material para practicar habla.';

  @override
  String get tutorialM3SelectTitle => 'Seleccionar Material';

  @override
  String get tutorialM3StartDesc =>
      'Toca reproducir para empezar a escuchar y repetir.';

  @override
  String get tutorialM3StartTitle => 'Iniciar Práctica';

  @override
  String get tutorialM3WordsDesc =>
      'Marca esta casilla para practicar solo las palabras guardadas.';

  @override
  String get tutorialM3WordsTitle => 'Práctica de palabras';

  @override
  String get tutorialMicDesc =>
      'Toca el micrófono para iniciar la entrada de voz.';

  @override
  String get tutorialMicTitle => 'Entrada de Voz';

  @override
  String get tutorialSaveDesc =>
      'Guarda tu traducción en los registros de estudio.';

  @override
  String get tutorialSaveTitle => 'Guardar';

  @override
  String get tutorialSwapDesc =>
      'Intercambio mi idioma con el idioma que estoy aprendiendo.';

  @override
  String get tutorialTabDesc =>
      'Aquí puedes seleccionar el modo de aprendizaje deseado.';

  @override
  String get tutorialTapToContinue => 'Toca para continuar';

  @override
  String get tutorialTransDesc => 'Toca aquí para traducir tu texto.';

  @override
  String get tutorialTransTitle => 'Traducir';

  @override
  String get typeExclamation => 'Exclamativa';

  @override
  String get typeImperative => 'Imperativa';

  @override
  String get typeQuestion => 'Interrogativa';

  @override
  String get typeStatement => 'Declarativa';

  @override
  String get usageLimitTitle => 'Límite alcanzado';

  @override
  String get useExistingText => 'Usar Existente';

  @override
  String get viewOnlineGuide => 'Ver guía en línea';

  @override
  String get voluntaryTranslations => 'Traducciones voluntarias';

  @override
  String get watchAdAndRefill => 'Ver anuncio y recargar (+5)';

  @override
  String get word => 'Palabra';

  @override
  String get wordDefenseDesc =>
      'Defiende la base diciendo la palabra antes de que llegue el enemigo.';

  @override
  String get wordDefenseTitle => 'Defensa de palabras';

  @override
  String get wordModeLabel => 'Modo palabra';

  @override
  String get yourPronunciation => 'Tu Pronunciación';

  @override
  String get ttsUnsupportedNatively =>
      'La configuración predeterminada de este dispositivo no es compatible con la salida de voz en este idioma.';
}

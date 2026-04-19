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
  String get adLoading => 'Cargando anuncio. Inténtalo de nuevo en un momento.';

  @override
  String get add => 'Añadir';

  @override
  String get addNew => 'Añadir nuevo';

  @override
  String get addNewSubject => 'Añadir nuevo título';

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
  String get checking => 'Comprobando...';

  @override
  String get clearAll => 'Borrar todo';

  @override
  String get confirm => 'Confirmar';

  @override
  String get confirmDelete => '¿Seguro que quieres eliminar este registro?';

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
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => '¿No tienes una cuenta?';

  @override
  String get email => 'Correo electrónico';

  @override
  String get emailAlreadyInUse =>
      'Este correo electrónico ya está en uso. Inicia sesión o recupera tu contraseña.';

  @override
  String get enterNameHint => 'Introduce el nombre';

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
  String get extractedText => 'Texto reconocido';

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
  String get helpJsonDesc =>
      'Para importar materiales en Modo 3, crea un archivo JSON con esta estructura:';

  @override
  String get helpJsonTypeSentence => 'Frase';

  @override
  String get helpJsonTypeWord => 'Palabra';

  @override
  String get helpMode1Desc =>
      'Empieza a aprender idiomas de la manera más intuitiva con un micrófono 3D premium y un icono de teclado grande.';

  @override
  String get helpMode1Details =>
      '• Ajustes de idioma: Verifica tu idioma nativo y el idioma de aprendizaje en la parte superior, y cambia el idioma de aprendizaje mediante los botones de idioma.\n• Entrada simple: Comienza al instante mediante el micrófono central grande o el cuadro de texto.\n• Confirmar ajustes: Tras la entrada, pulsa el botón azul de verificación a la derecha. Aparecerá la ventana de ajustes detallados.\n• Ajustes detallados: En el diálogo, puedes especificar el conjunto de materiales, la nota (memo) y las etiquetas para guardar.\n• Traducir ahora: Pulsa el botón verde de traducción tras la configuración para que la IA traduzca al instante.\n• Búsqueda automática: Detecta traducciones similares existentes en tiempo real mientras escribes.\n• Escuchar y guardar: Escucha la pronunciación mediante el icono de altavoz y pulsa \'Guardar datos\' para añadirlo a tu lista de estudio.';

  @override
  String get helpMode2Desc =>
      'Repasa oraciones guardadas con auto-ocultar traducciones y seguimiento.';

  @override
  String get helpMode2Details =>
      '• Seleccionar cuaderno: Usa \'Seleccionar cuaderno de estudio\' o \'Biblioteca en línea\' en el menú (⋮) en la esquina superior derecha.\n• Voltear tarjetas: Usa \'Mostrar/Ocultar\' para verificar la traducción.\n• Escuchar: Reproduce la pronunciación con el icono del altavoz.\n• Completar aprendizaje: Marca con un check (V) para indicar que el aprendizaje está completo.\n• Eliminar: Mantén presionada la tarjeta (clic largo) para eliminar el registro.\n• Buscar y filtrar: Admite la barra de búsqueda (búsqueda inteligente en tiempo real) y los filtros de etiquetas y letra inicial.';

  @override
  String get helpMode3Desc =>
      'Escucha y repite la frase (Shadowing) para practicar la pronunciación.';

  @override
  String get helpMode3Details =>
      '• Seleccionar Material: Elige paquete de aprendizaje\n• Intervalo: [-] [+] ajusta tiempo de espera (3s-60s)\n• Iniciar/Parar: Controla la sesión\n• Hablar: Escucha el audio y repite después\n• Feedback: Puntuación de precisión (0-100) con código de color\n• Reintentar: Usa el botón si no se detecta voz';

  @override
  String get helpNote =>
      'Escribe libremente el significado de la palabra, ejemplos o situaciones.';

  @override
  String get helpNotebook =>
      'Selecciona la carpeta donde guardar los resultados traducidos.';

  @override
  String get helpTabJson => 'Formato JSON';

  @override
  String get helpTabModes => 'Modos';

  @override
  String get helpTabQuickStart => 'Inicio rápido';

  @override
  String get helpTabTour => 'Hacer un recorrido';

  @override
  String get helpTag =>
      'Introduce palabras clave para clasificar o buscar más tarde.';

  @override
  String get helpTitle => 'Ayuda y Guía';

  @override
  String get helpTourDesc =>
      'El **Círculo Resaltado** le guiará a través de las funciones principales.\n(p. ej., puede eliminar un registro manteniendo pulsado cuando el **Círculo Resaltado** lo señale.)';

  @override
  String get hide => 'Ocultar';

  @override
  String get hintNoteExample => 'Ej: Contexto, sinónimos...';

  @override
  String get hintTagExample => 'Ej: Negocios, viajes...';

  @override
  String get homeTab => 'Traducción';

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
  String importFolderSuccess(num files, num entries) {
    return 'Se importaron $files archivos y $entries elementos.';
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
  String get importSourceFile => 'Archivo JSON individual';

  @override
  String get importSourceFolder =>
      'Carpeta (estructura de biblioteca por idioma)';

  @override
  String get importSourceTitle => 'Seleccionar origen de importación';

  @override
  String get importSourceZip => 'Archivo ZIP (carpeta comprimida)';

  @override
  String importTotal(int count) {
    return 'Total: $count ítems';
  }

  @override
  String get importing => 'Importando...';

  @override
  String get inputContent => 'Contenido de entrada';

  @override
  String get inputLanguage => 'Idioma de entrada';

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
  String get labelDetails => 'Configuración detallada';

  @override
  String get labelFilterMaterial => 'Materiales';

  @override
  String get labelFilterTag => 'Etiquetas';

  @override
  String get labelLangCode => 'Código de Idioma (ej. en-US, es-ES)';

  @override
  String get labelNote => 'Nota';

  @override
  String get labelPOS => 'Categoría gramatical';

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
  String get manual => 'Entrada manual';

  @override
  String get markAsStudied => 'Marcar como estudiado';

  @override
  String get materialInfo => 'Info del Material';

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
  String get newNotebookTitle => 'Nombre del nuevo cuaderno';

  @override
  String get newSubjectName => 'Nuevo título de vocabulario/frases';

  @override
  String get next => 'Siguiente';

  @override
  String get noDataForLanguage =>
      'No hay datos de aprendizaje para el idioma seleccionado en la base de datos local. Descarga los datos o selecciona otro idioma.';

  @override
  String get noMaterialsInCategory => 'No hay materiales en esta categoría.';

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
  String get noteGuidance =>
      'Ingrese detalles adicionales para una traducción más precisa';

  @override
  String get onlineLibraryCheckInternet =>
      'Comprueba tu conexión a Internet o inténtalo de nuevo más tarde.';

  @override
  String get onlineLibraryLoadFailed => 'Error al cargar los materiales.';

  @override
  String get onlineLibraryNoMaterials => 'No hay materiales.';

  @override
  String get openSettings => 'Abrir configuración';

  @override
  String get password => 'Contraseña';

  @override
  String get passwordTooShort =>
      'La contraseña debe tener al menos 6 caracteres.';

  @override
  String get perfect => '¡Perfecto!';

  @override
  String get pickGallery => 'Seleccionar de la galería';

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
  String get posArticle => 'Artículo';

  @override
  String get posConjunction => 'Conjunción';

  @override
  String get posInterjection => 'Interjección';

  @override
  String get posNoun => 'Sustantivo';

  @override
  String get posParticle => 'Partícula';

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
  String get processing => 'Procesando...';

  @override
  String progress(int current, int total) {
    return 'Progreso: $current / $total';
  }

  @override
  String get quickStartStep1Desc =>
      'Primero, especifica tu idioma y el idioma de aprendizaje en Menú > Configuración de idioma.';

  @override
  String get quickStartStep1Title => '1. Configuración de idioma';

  @override
  String get quickStartStep2Desc =>
      'Crea tus propias tarjetas de aprendizaje en el orden de entrada (micrófono/teclado) -> traducción -> guardar.';

  @override
  String get quickStartStep2Title => '2. Flujo básico';

  @override
  String get quickStartStep3Desc =>
      'Review translated words and sentences in your study list, and practice speaking directly in the pronunciation practice tab.';

  @override
  String get quickStartStep3Title => '3. Utilización de modos';

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
  String get requestTranslation => 'Solicitar traducción';

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
  String get save => 'Guardar';

  @override
  String get saveAsSentence => 'Guardar como oración';

  @override
  String get saveAsWord => 'Guardar como palabra';

  @override
  String get saveData => 'Guardar';

  @override
  String saveFailed(String error) {
    return 'Fallo al guardar: $error';
  }

  @override
  String get saveToHistory => 'Guardar en el historial de escaneo';

  @override
  String get saveTranslationsFromSearch =>
      'Guarda traducciones en modo búsqueda';

  @override
  String get saved => 'Guardado';

  @override
  String get saving => 'Guardando...';

  @override
  String get scanInstructions => 'Selecciona una imagen para escanear';

  @override
  String get scanLabel => 'Escanear';

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
  String get selectStudyMaterial => 'Seleccionar material';

  @override
  String get sentence => 'Frase';

  @override
  String get signUp => 'Registrarse';

  @override
  String get simplifiedGuidance =>
      '¡Transforma instantáneamente las conversaciones cotidianas a un idioma extranjero! Talkie registra tu vida lingüística.';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get startTutorial => 'Iniciar Tutorial';

  @override
  String get startsWith => 'Comienza con';

  @override
  String get statusCheckEmail =>
      'Por favor, revise su correo electrónico para completar la autenticación.';

  @override
  String statusDownloading(String name) {
    return 'Descargando: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return 'Error al importar: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$name importado correctamente';
  }

  @override
  String statusLoginFailed(String error) {
    return 'Error al iniciar sesión: $error';
  }

  @override
  String get statusLoginSuccess => 'Sesión iniciada correctamente.';

  @override
  String get statusLogoutSuccess => 'Sesión cerrada.';

  @override
  String statusRequestFailed(String error) {
    return 'Error al solicitar la traducción: $error';
  }

  @override
  String get statusRequestSuccess => 'Solicitud de traducción completada.';

  @override
  String get stopPractice => 'Detener Práctica';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'El material seleccionado no es compatible con el idioma de estudio actual ($targetLang), por lo que no se puede guardar localmente. ¿Desea solicitar una traducción?';
  }

  @override
  String get studyLangNotFoundTitle => 'Idioma de estudio no compatible';

  @override
  String get styleFormal => 'Formal';

  @override
  String get styleInformal => 'Informal';

  @override
  String get stylePolite => 'Cortés';

  @override
  String get styleSlang => 'Argot';

  @override
  String get swapLanguages => 'Cambiar idiomas';

  @override
  String get syncingData => 'Sincronizando datos...';

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
  String get tooltipSettingsConfirm => 'Confirmar configuración';

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
  String get translateNow => 'Traducir ahora';

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
  String get translationLanguage => 'Idioma de traducción';

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
  String get translationResult => 'Resultado de la traducción';

  @override
  String get translationResultHint => 'Resultado de traducción - editable';

  @override
  String get tryAgain => 'Intentar de nuevo';

  @override
  String get ttsInstallGuide =>
      'Por favor, instala los datos del idioma en Ajustes de Android > Google TTS.';

  @override
  String get ttsMissing =>
      'El motor de voz para este idioma no está instalado en el dispositivo.';

  @override
  String get ttsUnsupportedNatively =>
      'La configuración predeterminada de este dispositivo no es compatible con la salida de voz en este idioma.';

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
  String get typeIdiom => 'Modismo';

  @override
  String get typeImperative => 'Imperativa';

  @override
  String get typeProverb => 'Proverbio/Refrán';

  @override
  String get typeQuestion => 'Interrogativa';

  @override
  String get typeStatement => 'Declarativa';

  @override
  String get usageLimitTitle => 'Límite alcanzado';

  @override
  String get useExistingText => 'Usar Existente';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => 'Ver guía en línea';

  @override
  String get voluntaryTranslations => 'Traducciones voluntarias';

  @override
  String get watchAdAndRefill => 'Ver anuncio y recargar (+5)';

  @override
  String get welcomeButton => 'Empezar';

  @override
  String get welcomeDesc =>
      '¡Bienvenido a Talkie! Con soporte para más de 80 idiomas en todo el mundo con 100% de integridad, y un nuevo diseño 3D premium y rendimiento optimizado para la experiencia de aprendizaje perfecta.';

  @override
  String get welcomeTitle => '¡Bienvenido a Talkie!';

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
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Repaso ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Material ($count)';
  }

  @override
  String get mode2Title => 'Repaso';

  @override
  String get search => 'Buscar';

  @override
  String get translate => 'Traducir';

  @override
  String get listen => 'Escuchar';

  @override
  String get saveData => 'Guardar';

  @override
  String get saved => 'Guardado';

  @override
  String get delete => 'Eliminar';

  @override
  String get materialInfo => 'Info del Material';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Actualizar';

  @override
  String studyRecords(int count) {
    return 'Registros ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filtrar idioma destino:';

  @override
  String get noRecords => 'No hay registros para el idioma seleccionado';

  @override
  String get saveTranslationsFromSearch => 'Guarda traducciones en modo búsqueda';

  @override
  String get flip => 'Mostrar';

  @override
  String get hide => 'Ocultar';

  @override
  String get deleteRecord => 'Eliminar registro';

  @override
  String get confirmDelete => '¿Seguro que quieres eliminar este registro?';

  @override
  String get recordDeleted => 'Registro eliminado con éxito';

  @override
  String deleteFailed(String error) {
    return 'Fallo al eliminar: $error';
  }

  @override
  String get importJsonFile => 'Importar JSON';

  @override
  String get importing => 'Importando...';

  @override
  String get importComplete => 'Importación completada';

  @override
  String get importFailed => 'Fallo al importar';

  @override
  String importFile(String fileName) {
    return 'Archivo: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count ítems';
  }

  @override
  String importAdded(int count) {
    return 'Añadidos: $count ítems';
  }

  @override
  String importSkipped(int count) {
    return 'Omitidos: $count ítems';
  }

  @override
  String get errors => 'Errores:';

  @override
  String get error => 'Error';

  @override
  String importErrorMessage(String error) {
    return 'Fallo al importar archivo:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Seleccionar material';

  @override
  String get subject => 'Tema:';

  @override
  String get source => 'Fuente:';

  @override
  String get file => 'Archivo:';

  @override
  String progress(int current, int total) {
    return 'Progreso: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Por favor importa un archivo JSON';

  @override
  String get selectMaterialPrompt => 'Por favor selecciona un material';

  @override
  String get studyComplete => 'Estudiado';

  @override
  String get markAsStudied => 'Marcar como estudiado';

  @override
  String get listening => 'Escuchando...';

  @override
  String get recognized => 'Reconocimiento completo';

  @override
  String recognitionFailed(String error) {
    return 'Fallo de reconocimiento: $error';
  }

  @override
  String get checking => 'Comprobando...';

  @override
  String get translating => 'Traduciendo...';

  @override
  String get translationComplete => 'Traducción completa (guardar)';

  @override
  String get translationLoaded => 'Traducción guardada cargada';

  @override
  String translationFailed(String error) {
    return 'Fallo de traducción: $error';
  }

  @override
  String get enterTextToTranslate => 'Ingresa texto para traducir';

  @override
  String get saving => 'Guardando...';

  @override
  String get noTranslationToSave => 'Nada para guardar';

  @override
  String saveFailed(String error) {
    return 'Fallo al guardar: $error';
  }

  @override
  String get playing => 'Reproduciendo...';

  @override
  String get noTextToPlay => 'No hay texto para reproducir';

  @override
  String playbackFailed(String error) {
    return 'Fallo de reproducción: $error';
  }

  @override
  String get sourceLanguage => 'Idioma Origen';

  @override
  String get targetLanguage => 'Idioma Destino';

  @override
  String get similarTextFound => 'Texto similar encontrado';

  @override
  String get useExistingText => 'Usar Existente';

  @override
  String get createNew => 'Crear Nuevo';

  @override
  String reviewCount(int count) {
    return 'Repasado $count veces';
  }

  @override
  String get tabSpeaking => 'Hablar';

  @override
  String get speakingPractice => 'Práctica de Habla';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervalo: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Tu Pronunciación';

  @override
  String get correctAnswer => 'Respuesta Correcta';

  @override
  String score(String score) {
    return 'Precisión: $score%';
  }

  @override
  String get perfect => '¡Perfecto!';

  @override
  String get good => 'Bien';

  @override
  String get tryAgain => 'Intentar de nuevo';

  @override
  String get startPractice => 'Iniciar Práctica';

  @override
  String get stopPractice => 'Detener Práctica';

  @override
  String get helpTitle => 'Ayuda y Guía';

  @override
  String get helpTabModes => 'Modos';

  @override
  String get helpTabJson => 'Formato JSON';

  @override
  String get helpTabTour => 'Tour';

  @override
  String get helpMode1Desc => 'Reconoce voz, traduce al idioma destino y escucha el resultado.';

  @override
  String get helpMode1Details => '• Configuración de idioma: Cambia el idioma mediante el icono de traducir superior\n• Ayuda: Consulta la guía mediante el icono de ayuda superior\n• Entrada de Voz: Toca el icono del micro para empezar/parar\n• Entrada de Texto: Escribe directamente para traducir\n• Auto-Búsqueda: Detecta frases existentes similares\n• Traducir: Toca para traducción instantánea\n• Escuchar: Icono de altavoz para TTS (Original/Traducido)\n• Guardar: \'Guardar\' añade al historial\n• Limpiar: Reinicia todos los campos';

  @override
  String get helpMode2Desc => 'Repasa oraciones guardadas con auto-ocultar traducciones y seguimiento.';

  @override
  String get helpMode2Details => '• Seleccionar Material: Elige set o \'Repasar Todo\'\n• Girar Tarjeta: Usa \'Mostrar/Ocultar\' para ver traducción\n• Escuchar: Reproduce TTS para la oración \n• Marcar Estudiado: Check (V) para ítems completados\n• Eliminar: Mantén presionada la tarjeta\n• Filtro: Ver todo o filtrar por material';

  @override
  String get helpMode3Desc => 'Practica hablando escuchando y repitiendo oraciones (Shadowing).';

  @override
  String get helpMode3Details => '• Seleccionar Material: Elige paquete de aprendizaje\n• Intervalo: [-] [+] ajusta tiempo de espera (3s-60s)\n• Iniciar/Parar: Controla la sesión\n• Hablar: Escucha el audio y repite después\n• Feedback: Puntuación de precisión (0-100) con código de color\n• Reintentar: Usa el botón si no se detecta voz';

  @override
  String get helpJsonDesc => 'Para importar materiales en Modo 3, crea un archivo JSON con esta estructura:';

  @override
  String get helpTourDesc => 'El **Círculo Resaltado** le guiará a través de las funciones principales.\n(p. ej., puede eliminar un registro manteniendo pulsado cuando el **Círculo Resaltado** lo señale.)';

  @override
  String get startTutorial => 'Iniciar Tutorial';

  @override
  String get tutorialMicTitle => 'Entrada de Voz';

  @override
  String get tutorialMicDesc => 'Toca el micrófono para iniciar la entrada de voz.';

  @override
  String get tutorialTabDesc => 'Aquí puedes seleccionar el modo de aprendizaje deseado.';

  @override
  String get tutorialTapToContinue => 'Toca para continuar';

  @override
  String get tutorialTransTitle => 'Traducir';

  @override
  String get tutorialTransDesc => 'Toca aquí para traducir tu texto.';

  @override
  String get tutorialSaveTitle => 'Guardar';

  @override
  String get tutorialSaveDesc => 'Guarda tu traducción en los registros de estudio.';

  @override
  String get tutorialM2SelectTitle => 'Selección y Filtro';

  @override
  String get tutorialM2SelectDesc => 'Elige materiales de estudio o cambia a \'Repasar Todo\'.';

  @override
  String get tutorialM2ListTitle => 'Lista de Estudio';

  @override
  String get tutorialM2ListDesc => 'Revisa tus tarjetas guardadas y gíralas para ver respuestas. (Mantén presionado para eliminar)';

  @override
  String get tutorialM3SelectTitle => 'Seleccionar Material';

  @override
  String get tutorialM3SelectDesc => 'Elige un set de material para practicar habla.';

  @override
  String get tutorialM3IntervalTitle => 'Intervalo';

  @override
  String get tutorialM3IntervalDesc => 'Ajusta el tiempo de espera entre oraciones.';

  @override
  String get tutorialM3StartTitle => 'Iniciar Práctica';

  @override
  String get tutorialM3StartDesc => 'Toca reproducir para empezar a escuchar y repetir.';

  @override
  String get startWarning => 'Advertencia';

  @override
  String get noVoiceDetected => 'No se detectó voz';

  @override
  String get tooltipSearch => 'Buscar';

  @override
  String get tooltipStudyReview => 'Estudio+Repaso';

  @override
  String get tooltipSpeaking => 'Hablar';

  @override
  String get tooltipDecrease => 'Disminuir';

  @override
  String get tooltipIncrease => 'Aumentar';

  @override
  String get languageSettings => 'Configuración de idioma';

  @override
  String get tutorialM2DropdownDesc => 'Selecciona materiales de estudio.';

  @override
  String get tutorialM2ImportDesc => 'Importar archivo JSON desde la carpeta del dispositivo.';

  @override
  String get tutorialLangSettingsTitle => 'Configuración de idioma';

  @override
  String get tutorialLangSettingsDesc => 'Configure los idiomas de origen y destino para la traducción.';

  @override
  String get copy => 'Copiar';

  @override
  String get copiedToClipboard => '¡Copiado al portapapeles!';

  @override
  String get tutorialContextTitle => 'Etiqueta de contexto';

  @override
  String get tutorialContextDesc => 'Agregue contexto (ej: Mañana) para distinguir oraciones similares.';

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
  String get wordDefenseDesc => 'Defend your base by speaking words correctly before enemies reach you.';

  @override
  String get dialogueQuestTitle => 'Dialogue Quest';

  @override
  String get dialogueQuestDesc => 'Roleplay in scenarios. Choose the right response and speak it aloud.';

  @override
  String get tutorialM1ToggleDesc => 'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Word';

  @override
  String get labelSentence => 'Sentence';

  @override
  String get contextTagLabel => 'Context/Situation (Optional) - Ex: Morning greeting, polite form';

  @override
  String get contextTagHint => 'Describe situation for easier classification later';

  @override
  String get translationLimitExceeded => 'Translation Limit Exceeded';

  @override
  String get translationLimitMessage => 'You have used all your free daily translations (5). Watch an ad to refill 5 immediately?';

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
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc => 'Check this to practice only your saved words.';

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
  String get basicWords => 'Basic Words';

  @override
  String get basicSentences => 'Basic Sentences';

  @override
  String get selectMaterialSet => 'Select Study Material Set';

  @override
  String get sectionWords => 'Words';

  @override
  String get sectionSentences => 'Sentences';

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
  String get tutorialSwapDesc => 'Intercambio mi idioma con el idioma que estoy aprendiendo.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3ResetDesc => 'Restablece tu progreso y puntuación de precisión, comenzando nuevamente desde el principio.';

  @override
  String get menuSelectMaterialSet => 'Seleccione un material de estudio';

  @override
  String get sectionWord => 'Sección de palabras';

  @override
  String get sectionSentence => 'Sección de oración';

  @override
  String get tabWord => 'palabra';

  @override
  String get tabSentence => 'oración';

  @override
  String get errorProfanity => 'Translation cannot be processed due to profanity.';

  @override
  String get errorHateSpeech => 'Translation cannot be processed due to hate speech.';

  @override
  String get errorSexualContent => 'Translation cannot be processed due to sexual content.';

  @override
  String get errorOtherSafety => 'Translation was blocked by AI safety policy.';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }
}

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
    return 'Revisar ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Material de Estudio ($count)';
  }

  @override
  String get mode2Title => 'Review';

  @override
  String get search => 'Buscar';

  @override
  String get translate => 'Traducir';

  @override
  String get listen => 'Escuchar';

  @override
  String get saveData => 'Guardar Datos';

  @override
  String get saved => 'Guardado';

  @override
  String get delete => 'Eliminar';

  @override
  String get materialInfo => 'Material Info';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Actualizar';

  @override
  String studyRecords(int count) {
    return 'Registros de Estudio ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filtro de Idioma Destino:';

  @override
  String get noRecords =>
      'No hay registros de estudio para el idioma seleccionado';

  @override
  String get saveTranslationsFromSearch =>
      'Guardar traducciones desde el modo de búsqueda';

  @override
  String get flip => 'Voltear';

  @override
  String get hide => 'Ocultar';

  @override
  String get deleteRecord => 'Eliminar Registro';

  @override
  String get confirmDelete =>
      '¿Seguro que quieres eliminar este registro de estudio?';

  @override
  String get recordDeleted => 'Registro eliminado correctamente';

  @override
  String deleteFailed(String error) {
    return 'Eliminación fallida: $error';
  }

  @override
  String get importJsonFile => 'Importar Archivo JSON';

  @override
  String get importing => 'Importando...';

  @override
  String get importComplete => 'Importación Completa';

  @override
  String get importFailed => 'Importación Fallida';

  @override
  String importFile(String fileName) {
    return 'Archivo: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count elementos';
  }

  @override
  String importAdded(int count) {
    return 'Agregado: $count elementos';
  }

  @override
  String importSkipped(int count) {
    return 'Omitido: $count elementos';
  }

  @override
  String get errors => 'Errores:';

  @override
  String get error => 'Error';

  @override
  String importErrorMessage(String error) {
    return 'Error al importar archivo:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Seleccionar Material de Estudio';

  @override
  String get subject => 'Asunto:';

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
  String get selectMaterialPrompt =>
      'Por favor selecciona un material de estudio';

  @override
  String get studyComplete => 'Estudiado';

  @override
  String get markAsStudied => 'Marcar como Estudiado';

  @override
  String get listening => 'Escuchando...';

  @override
  String get recognized => 'Reconocimiento completo';

  @override
  String recognitionFailed(String error) {
    return 'Fallo en reconocimiento de voz: $error';
  }

  @override
  String get checking => 'Comprobando...';

  @override
  String get translating => 'Traduciendo...';

  @override
  String get translationComplete => 'Traducción completa (guardar requerido)';

  @override
  String get translationLoaded => 'Traducción guardada cargada';

  @override
  String translationFailed(String error) {
    return 'Traducción fallida: $error';
  }

  @override
  String get enterTextToTranslate => 'Por favor ingresa texto para traducir';

  @override
  String get saving => 'Guardando...';

  @override
  String get noTranslationToSave => 'No hay traducción para guardar';

  @override
  String saveFailed(String error) {
    return 'Guardado fallido: $error';
  }

  @override
  String get playing => 'Reproduciendo...';

  @override
  String get noTextToPlay => 'No hay texto para reproducir';

  @override
  String playbackFailed(String error) {
    return 'Reproducción fallida: $error';
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
  String get createNew => 'Crear Nueva Entrada';

  @override
  String reviewCount(int count) {
    return 'Revisado $count vez/veces';
  }

  @override
  String get tabSpeaking => 'Speaking';

  @override
  String get speakingPractice => 'Speaking Practice';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Your Pronunciation';

  @override
  String get correctAnswer => 'Correct Answer';

  @override
  String score(String score) {
    return 'Accuracy: $score%';
  }

  @override
  String get perfect => 'Perfect!';

  @override
  String get good => 'Good';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get startPractice => 'Start Practice';

  @override
  String get stopPractice => 'Stop Practice';

  @override
  String get helpTitle => 'Help & Guide';

  @override
  String get helpTabModes => 'Modes';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabTour => 'Tour';

  @override
  String get helpMode1Desc =>
      'Recognize voice, translate to target language, and listen to the result.';

  @override
  String get helpMode1Details =>
      '• Voice Input: Tap mic icon to start/stop listening\n• Text Input: Type directly to translate\n• Auto-Search: Detects similar existing sentences\n• Translate: Tap button for instant translation\n• Listen: Speaker icon for TTS (Original/Translated)\n• Save: \'Save Data\' adds to history\n• Clear: Reset all inputs';

  @override
  String get helpMode2Desc =>
      'Review saved sentences with auto-hide translations and track your review count.';

  @override
  String get helpMode2Details =>
      '• Select Material: Choose specific set or \'Review All\'\n• Flip Card: Use \'Show/Hide\' to check translation\n• Listen: Play TTS for specific sentence\n• Mark Studied: Checkmark (V) for completed items\n• Delete: Long-press card to remove record\n• Filter: View all or filter by material';

  @override
  String get helpMode3Desc =>
      'Practice speaking by listening to and shadowing sentences.';

  @override
  String get helpMode3Details =>
      '• Select Material: Choose learning pack\n• Interval: [-] [+] to adjust wait time (3s-60s)\n• Start/Stop: Control shadowing session\n• Speak: Listen to audio and repeat after it\n• Feedback: Accuracy score (0-100) with color code\n• Retry: Use retry button if voice not detected';

  @override
  String get helpJsonDesc =>
      'To import study materials in Mode 3, create a JSON file with the following structure:';

  @override
  String get helpTourDesc =>
      'Start the interactive tutorial to learn the main features.';

  @override
  String get startTutorial => 'Start Tutorial';

  @override
  String get tutorialMicTitle => 'Voice Input';

  @override
  String get tutorialMicDesc => 'Tap the mic button to start voice input.';

  @override
  String get tutorialTransTitle => 'Translate';

  @override
  String get tutorialTransDesc => 'Tap here to translate your text.';

  @override
  String get tutorialSaveTitle => 'Save';

  @override
  String get tutorialSaveDesc => 'Save your translation to study records.';

  @override
  String get tutorialM2SelectTitle => 'Select & Filter';

  @override
  String get tutorialM2SelectDesc =>
      'Choose study materials or switch to \'Review All\'.';

  @override
  String get tutorialM2ListTitle => 'Study List';

  @override
  String get tutorialM2ListDesc =>
      'Check your saved cards and flip them to see answers.';

  @override
  String get tutorialM3SelectTitle => 'Select Material';

  @override
  String get tutorialM3SelectDesc =>
      'Choose a material set for speaking practice.';

  @override
  String get tutorialM3IntervalTitle => 'Interval';

  @override
  String get tutorialM3IntervalDesc =>
      'Adjust the waiting time between sentences.';

  @override
  String get tutorialM3StartTitle => 'Start Practice';

  @override
  String get tutorialM3StartDesc =>
      'Tap play to start listening and shadowing.';

  @override
  String get startWarning => 'Warning';

  @override
  String get noVoiceDetected => 'No voice detected';
}

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
  String get saveTranslationsFromSearch =>
      'Guarda traducciones en modo búsqueda';

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
      'Practica hablando escuchando y repitiendo oraciones (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Seleccionar Material: Elige paquete de aprendizaje\n• Intervalo: [-] [+] ajusta tiempo de espera (3s-60s)\n• Iniciar/Parar: Controla la sesión\n• Hablar: Escucha el audio y repite después\n• Feedback: Puntuación de precisión (0-100) con código de color\n• Reintentar: Usa el botón si no se detecta voz';

  @override
  String get helpJsonDesc =>
      'Para importar materiales en Modo 3, crea un archivo JSON con esta estructura:';

  @override
  String get helpTourDesc =>
      'El **Círculo Resaltado** le guiará a través de las funciones principales.\n(p. ej., puede eliminar un registro manteniendo pulsado cuando el **Círculo Resaltado** lo señale.)';

  @override
  String get startTutorial => 'Iniciar Tutorial';

  @override
  String get tutorialMicTitle => 'Entrada de Voz';

  @override
  String get tutorialMicDesc =>
      'Toca el micrófono para iniciar la entrada de voz.';

  @override
  String get tutorialTabDesc =>
      'Aquí puedes seleccionar el modo de aprendizaje deseado.';

  @override
  String get tutorialTapToContinue => 'Toca para continuar';

  @override
  String get tutorialTransTitle => 'Traducir';

  @override
  String get tutorialTransDesc => 'Toca aquí para traducir tu texto.';

  @override
  String get tutorialSaveTitle => 'Guardar';

  @override
  String get tutorialSaveDesc =>
      'Guarda tu traducción en los registros de estudio.';

  @override
  String get tutorialM2SelectTitle => 'Selección y Filtro';

  @override
  String get tutorialM2SelectDesc =>
      'Elige materiales de estudio o cambia a \'Repasar Todo\'.';

  @override
  String get tutorialM2ListTitle => 'Lista de Estudio';

  @override
  String get tutorialM2ListDesc =>
      'Revisa tus tarjetas guardadas y gíralas para ver respuestas. (Mantén presionado para eliminar)';

  @override
  String get tutorialM3SelectTitle => 'Seleccionar Material';

  @override
  String get tutorialM3SelectDesc =>
      'Elige un set de material para practicar habla.';

  @override
  String get tutorialM3IntervalTitle => 'Intervalo';

  @override
  String get tutorialM3IntervalDesc =>
      'Ajusta el tiempo de espera entre oraciones.';

  @override
  String get tutorialM3StartTitle => 'Iniciar Práctica';

  @override
  String get tutorialM3StartDesc =>
      'Toca reproducir para empezar a escuchar y repetir.';

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
  String get tutorialM2ImportDesc =>
      'Importar archivo JSON desde la carpeta del dispositivo.';

  @override
  String get tutorialLangSettingsTitle => 'Configuración de idioma';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure los idiomas de origen y destino para la traducción.';

  @override
  String get copy => 'Copiar';

  @override
  String get copiedToClipboard => '¡Copiado al portapapeles!';

  @override
  String get tutorialContextTitle => 'Etiqueta de contexto';

  @override
  String get tutorialContextDesc =>
      'Agregue contexto (ej: Mañana) para distinguir oraciones similares.';

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
  String get basicWords => 'Repositorio de palabras';

  @override
  String get basicSentences => 'Repositorio de frases';

  @override
  String get selectMaterialSet => '학습 자료집 선택 (TODO: Translate)';

  @override
  String get sectionWords => '단어 (TODO: Translate)';

  @override
  String get sectionSentences => '문장 (TODO: Translate)';

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
      'Intercambio mi idioma con el idioma que estoy aprendiendo.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Restablece tu progreso y puntuación de precisión, comenzando nuevamente desde el principio.';

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
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorSexualContent =>
      '선정적인 내용이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다. (TODO: Translate)';

  @override
  String get clearAll => '모두 지우기 (TODO: Translate)';

  @override
  String get disambiguationTitle => '의미 선택 (TODO: Translate)';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까? (TODO: Translate)';

  @override
  String get skip => '건너뛰기 (TODO: Translate)';

  @override
  String get inputModeTitle => 'Entrada';

  @override
  String get reviewModeTitle => 'Repaso';

  @override
  String get practiceModeTitle => 'Práctica';

  @override
  String get chatHistoryTitle => 'Historial';

  @override
  String get chatNewChat => 'Nuevo chat';

  @override
  String get chatChoosePersona => 'Elige personaje';

  @override
  String get chatTypeHint => 'Escribe aquí...';

  @override
  String chatFailed(Object error) {
    return '채팅 실패: $error';
  }

  @override
  String get chatNoConversations => 'Sin conversaciones';

  @override
  String get chatStartNewPrompt => '¡Inicia un chat para practicar!';

  @override
  String chatFromConversation(Object speaker) {
    return '대화 발췌 ($speaker)';
  }

  @override
  String get personaTeacher => 'Profesor de inglés';

  @override
  String get personaGuide => 'Guía de viaje';

  @override
  String get personaFriend => 'Amigo local';

  @override
  String get chatUntitled => '제목 없는 대화';

  @override
  String get chatAiChat => 'Chat de IA';

  @override
  String get helpModeChatDesc => 'AI 페르소나와 대화하며 실전 회화를 연습하고 유용한 문장을 저장하세요.';

  @override
  String get helpModeChatDetails =>
      '• 채팅 시작: 상단 메뉴의 말풍선 아이콘 클릭\n• 페르소나 선택: 선생님, 가이드, 친구 중 선택\n• 대화 및 저장: AI 응답은 자동 번역됩니다. 메시지를 클릭하여 복습 모드로 저장하세요\n• 2개 국어 표시: 모든 메시지에 대해 모국어와 학습 언어를 함께 표시합니다\n• 듣기 기능 (TTS): 스피커 아이콘을 눌러 각 언어의 발음을 들어보세요\n• 자동 제목: 대화 주제에 따라 AI가 제목을 추천합니다\n• 이력 관리: 과거 대화 내용을 언제든 다시 확인할 수 있습니다';

  @override
  String get tutorialAiChatTitle => 'Chat de IA';

  @override
  String get tutorialAiChatDesc =>
      'Practica conversaciones reales con personajes de IA.';

  @override
  String get me => 'Yo';

  @override
  String get helpDialogueImportDesc => '완성된 대화문 세트를 JSON 파일로 한 번에 가져올 수 있습니다.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON 구조: `entries` 대신 `dialogues` 배열을 사용합니다.\n• 자동 생성: 대화 제목, 페르소나, 메시지 순서가 자동으로 구성됩니다.\n• 확인 위치: 가져온 대화는 AI 채팅 모드의 \'대화 기록\' 탭에서 확인할 수 있습니다.';

  @override
  String mode1SelectedMaterial(Object name) {
    return '현재 선택된 자료집: $name';
  }

  @override
  String get basicWordRepository => 'Repositorio básico de palabras';

  @override
  String get basicSentenceRepository => 'Repositorio básico de frases';

  @override
  String get chatEndTitle => 'Finalizar y guardar';

  @override
  String get chatEndMessage => '¿Quieres finalizar la conversación?';

  @override
  String get chatSaveAndExit => 'Guardar y salir';

  @override
  String get errorSelectCategory => '¡Selecciona palabra o frase primero!';

  @override
  String get tutorialM1ToggleTitle => 'Modo Palabra/Frase';

  @override
  String get tutorialM1ToggleDesc => 'Cambia entre modo palabra y frase aquí.';
}

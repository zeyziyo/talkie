// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Revisão ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Material ($count)';
  }

  @override
  String get mode2Title => 'Revisão';

  @override
  String get search => 'Buscar';

  @override
  String get translate => 'Traduzir';

  @override
  String get listen => 'Ouvir';

  @override
  String get saveData => 'Salvar';

  @override
  String get saved => 'Salvo';

  @override
  String get delete => 'Excluir';

  @override
  String get materialInfo => 'Info do material';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Atualizar';

  @override
  String studyRecords(int count) {
    return 'Registros ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filtro de Idioma:';

  @override
  String get noRecords => 'Nenhum registro para o idioma selecionado';

  @override
  String get saveTranslationsFromSearch => 'Salve traduções do modo de busca';

  @override
  String get flip => 'Virar';

  @override
  String get hide => 'Ocultar';

  @override
  String get deleteRecord => 'Excluir Registro';

  @override
  String get confirmDelete => 'Tem certeza que deseja excluir este registro?';

  @override
  String get recordDeleted => 'Registro excluído com sucesso';

  @override
  String deleteFailed(String error) {
    return 'Falha ao excluir: $error';
  }

  @override
  String get importJsonFile => 'Importar JSON';

  @override
  String get importing => 'Importando...';

  @override
  String get importComplete => 'Importação Concluída';

  @override
  String get importFailed => 'Importação Falhou';

  @override
  String importFile(String fileName) {
    return 'Arquivo: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String importAdded(int count) {
    return 'Adicionado: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Pulado: $count';
  }

  @override
  String get errors => 'Erros:';

  @override
  String get error => 'Erro';

  @override
  String importErrorMessage(String error) {
    return 'Falha ao importar arquivo:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Selecionar Material';

  @override
  String get subject => 'Assunto:';

  @override
  String get source => 'Fonte:';

  @override
  String get file => 'Arquivo:';

  @override
  String progress(int current, int total) {
    return 'Progresso: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Por favor importe um arquivo JSON';

  @override
  String get selectMaterialPrompt =>
      'Por favor selecione um material de estudo';

  @override
  String get studyComplete => 'Estudado';

  @override
  String get markAsStudied => 'Marcar como Estudado';

  @override
  String get listening => 'Ouvindo...';

  @override
  String get recognized => 'Reconhecimento concluído';

  @override
  String recognitionFailed(String error) {
    return 'Reconhecimento de voz falhou: $error';
  }

  @override
  String get checking => 'Verificando...';

  @override
  String get translating => 'Traduzindo...';

  @override
  String get translationComplete => 'Tradução concluída (salvar necessário)';

  @override
  String get translationLoaded => 'Tradução salva carregada';

  @override
  String translationFailed(String error) {
    return 'Tradução falhou: $error';
  }

  @override
  String get enterTextToTranslate => 'Digite texto para traduzir';

  @override
  String get saving => 'Salvando...';

  @override
  String get noTranslationToSave => 'Nenhuma tradução para salvar';

  @override
  String saveFailed(String error) {
    return 'Falha ao salvar: $error';
  }

  @override
  String get playing => 'Reproduzindo...';

  @override
  String get noTextToPlay => 'Nenhum texto para reproduzir';

  @override
  String playbackFailed(String error) {
    return 'Reprodução falhou: $error';
  }

  @override
  String get sourceLanguage => 'Idioma Origem';

  @override
  String get targetLanguage => 'Idioma Destino';

  @override
  String get similarTextFound => 'Texto similar encontrado';

  @override
  String get useExistingText => 'Usar Existente';

  @override
  String get createNew => 'Criar Novo';

  @override
  String reviewCount(int count) {
    return 'Revisado $count vezes';
  }

  @override
  String get tabSpeaking => 'Falar';

  @override
  String get speakingPractice => 'Prática de Fala';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervalo: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Sua Pronúncia';

  @override
  String get correctAnswer => 'Resposta Correta';

  @override
  String score(String score) {
    return 'Precisão: $score%';
  }

  @override
  String get perfect => 'Perfeito!';

  @override
  String get good => 'Bom';

  @override
  String get tryAgain => 'Tente Novamente';

  @override
  String get startPractice => 'Iniciar Prática';

  @override
  String get stopPractice => 'Parar Prática';

  @override
  String get helpTitle => 'Ajuda & Guia';

  @override
  String get helpTabModes => 'Modos';

  @override
  String get helpTabJson => 'Formato JSON';

  @override
  String get helpTabTour => 'Tour';

  @override
  String get helpMode1Desc =>
      'Reconhecer voz, traduzir para idioma de destino e ouvir o resultado.';

  @override
  String get helpMode1Details =>
      '• Voz: Toque no microfone para iniciar/parar\n• Texto: Digite diretamente para traduzir\n• Busca Auto: Detecta frases similares existentes\n• Traduzir: Toque no botão para tradução instantânea\n• Ouvir: Ícone de alto-falante para TTS\n• Salvar: \'Salvar Dados\' adiciona ao histórico\n• Limpar: Redefinir todas as entradas';

  @override
  String get helpMode2Desc =>
      'Revise frases salvas com tradução oculta automaticamente.';

  @override
  String get helpMode2Details =>
      '• Selecionar Material: Escolha conjunto ou \'Revisar Tudo\'\n• Virar Cartão: Use \'Mostrar/Ocultar\' para ver tradução\n• Ouvir: Reproduzir TTS para a frase\n• Marcar Estudado: Marque (V) para itens concluídos\n• Excluir: Pressione e segure cartão para remover\n• Filtro: Ver tudo ou filtrar por material';

  @override
  String get helpMode3Desc =>
      'Pratique a fala ouvindo e repetindo (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Selecionar Material: Escolha pacote de estudo\n• Intervalo: [-] [+] ajustar espera (3s-60s)\n• Iniciar/Parar: Controlar sessão\n• Falar: Ouvir áudio e repetir\n• Feedback: Pontuação de precisão (0-100)\n• Tentar: Botão de tentar novamente se voz não detectada';

  @override
  String get helpJsonDesc =>
      'Para importar materiais de estudo no Modo 3, crie arquivo JSON com esta estrutura:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Iniciar Tutorial';

  @override
  String get tutorialMicTitle => 'Entrada de Voz';

  @override
  String get tutorialMicDesc =>
      'Toque no botão do microfone para iniciar entrada de voz.';

  @override
  String get tutorialTabDesc =>
      'Você pode selecionar o modo de aprendizado desejado aqui.';

  @override
  String get tutorialTapToContinue => 'Toque para continuar';

  @override
  String get tutorialTransTitle => 'Traduzir';

  @override
  String get tutorialTransDesc => 'Toque aqui para traduzir seu texto.';

  @override
  String get tutorialSaveTitle => 'Salvar';

  @override
  String get tutorialSaveDesc => 'Salve sua tradução nos registros de estudo.';

  @override
  String get tutorialM2SelectTitle => 'Selecionar & Filtrar';

  @override
  String get tutorialM2SelectDesc =>
      'Escolha materiais de estudo ou mude para \'Revisar Tudo\'.';

  @override
  String get tutorialM2ListTitle => 'Lista de Estudo';

  @override
  String get tutorialM2ListDesc =>
      'Verifique seus cartões salvos e vire-os para ver as respostas. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Selecionar Material';

  @override
  String get tutorialM3SelectDesc =>
      'Escolha um conjunto de material para prática de fala.';

  @override
  String get tutorialM3IntervalTitle => 'Intervalo';

  @override
  String get tutorialM3IntervalDesc => 'Ajuste o tempo de espera entre frases.';

  @override
  String get tutorialM3StartTitle => 'Iniciar Prática';

  @override
  String get tutorialM3StartDesc =>
      'Toque play para começar a ouvir e repetir.';

  @override
  String get startWarning => 'Aviso';

  @override
  String get noVoiceDetected => 'Nenhuma voz detectada';

  @override
  String get tooltipSearch => 'Pesquisar';

  @override
  String get tooltipStudyReview => 'Estudo+Revisão';

  @override
  String get tooltipSpeaking => 'Falar';

  @override
  String get tooltipDecrease => 'Diminuir';

  @override
  String get tooltipIncrease => 'Aumentar';

  @override
  String get languageSettings => 'Configurações de idioma';

  @override
  String get tutorialM2DropdownDesc => 'Selecione materiais de estudo.';

  @override
  String get tutorialM2ImportDesc =>
      'Importar arquivo JSON da pasta do dispositivo.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'Etiqueta de contexto';

  @override
  String get tutorialContextDesc =>
      'Adicione contexto (ex: Manhã) para distinguir frases semelhantes.';

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
  String get basicWords => 'Basic Word Repository';

  @override
  String get basicSentences => 'Basic Sentence Repository';

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
      'Eu troco meu idioma pelo idioma que estou aprendendo.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get menuSelectMaterialSet => 'Selecione um material de estudo';

  @override
  String get sectionWord => 'Seção de palavras';

  @override
  String get sectionSentence => 'Seção de frases';

  @override
  String get tabWord => 'palavra';

  @override
  String get tabSentence => 'frase';

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
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Histórico';

  @override
  String get chatNewChat => 'Novo chat';

  @override
  String get chatChoosePersona => 'Escolha person.';

  @override
  String get chatTypeHint => 'Digite uma msg...';

  @override
  String chatFailed(Object error) {
    return '채팅 실패: $error';
  }

  @override
  String get chatNoConversations => 'Sem conversas';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return '대화 발췌 ($speaker)';
  }

  @override
  String get personaTeacher => 'Professor de Inglês';

  @override
  String get personaGuide => 'Guia de Viagem';

  @override
  String get personaFriend => 'Amigo Local';

  @override
  String get chatUntitled => '제목 없는 대화';

  @override
  String get chatAiChat => 'Chat IA';

  @override
  String get helpModeChatDesc => 'AI 페르소나와 대화하며 실전 회화를 연습하고 유용한 문장을 저장하세요.';

  @override
  String get helpModeChatDetails =>
      '• 채팅 시작: 상단 메뉴의 말풍선 아이콘 클릭\n• 페르소나 선택: 선생님, 가이드, 친구 중 선택\n• 대화 및 저장: AI 응답은 자동 번역됩니다. 메시지를 클릭하여 복습 모드로 저장하세요\n• 2개 국어 표시: 모든 메시지에 대해 모국어와 학습 언어를 함께 표시합니다\n• 듣기 기능 (TTS): 스피커 아이콘을 눌러 각 언어의 발음을 들어보세요\n• 자동 제목: 대화 주제에 따라 AI가 제목을 추천합니다\n• 이력 관리: 과거 대화 내용을 언제든 다시 확인할 수 있습니다';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String get me => 'Eu';

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
  String get basicWordRepository => 'Repositório de palavras básicas';

  @override
  String get basicSentenceRepository => 'Repositório de frases básicas';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'Salvar e Sair';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';
}

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
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc =>
      'Check this to practice only your saved words.';

  @override
  String get tutorialGameTitle => 'Rain Drop Game';

  @override
  String get tutorialGameDesc =>
      'Play a game to practice your vocabulary! Catch falling words by speaking their translation.';

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
  String get rainDropGame => 'Rain Drop Game';

  @override
  String get rainDropGameDesc => 'Speak the translation of the falling word!';

  @override
  String get gameDirection => 'Game Direction';

  @override
  String get speed => 'Speed';

  @override
  String get startGame => 'Start Game';

  @override
  String get gameOver => 'Game Over';

  @override
  String get finalScore => 'Final Score';

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
}

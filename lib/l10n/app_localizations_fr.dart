// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Révision ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Matériel ($count)';
  }

  @override
  String get mode2Title => 'Révision';

  @override
  String get search => 'Rechercher';

  @override
  String get translate => 'Traduire';

  @override
  String get listen => 'Écouter';

  @override
  String get saveData => 'Enregistrer';

  @override
  String get saved => 'Enregistré';

  @override
  String get delete => 'Supprimer';

  @override
  String get materialInfo => 'Info Matériel';

  @override
  String get cancel => 'Annuler';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Actualiser';

  @override
  String studyRecords(int count) {
    return 'Dossiers ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filtre langue cible:';

  @override
  String get noRecords => 'Aucun dossier pour la langue sélectionnée';

  @override
  String get saveTranslationsFromSearch =>
      'Enregistrez des traductions en mode recherche';

  @override
  String get flip => 'Afficher';

  @override
  String get hide => 'Masquer';

  @override
  String get deleteRecord => 'Supprimer l\'enregistrement';

  @override
  String get confirmDelete =>
      'Voulez-vous vraiment supprimer cet enregistrement?';

  @override
  String get recordDeleted => 'Enregistrement supprimé avec succès';

  @override
  String deleteFailed(String error) {
    return 'Échec de suppression: $error';
  }

  @override
  String get importJsonFile => 'Importer JSON';

  @override
  String get importing => 'Importation...';

  @override
  String get importComplete => 'Importation terminée';

  @override
  String get importFailed => 'Échec d\'importation';

  @override
  String importFile(String fileName) {
    return 'Fichier: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count éléments';
  }

  @override
  String importAdded(int count) {
    return 'Ajoutés: $count éléments';
  }

  @override
  String importSkipped(int count) {
    return 'Ignorés: $count éléments';
  }

  @override
  String get errors => 'Erreurs:';

  @override
  String get error => 'Erreur';

  @override
  String importErrorMessage(String error) {
    return 'Échec d\'importation du fichier:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Sélectionner matériel';

  @override
  String get subject => 'Sujet:';

  @override
  String get source => 'Source:';

  @override
  String get file => 'Fichier:';

  @override
  String progress(int current, int total) {
    return 'Progrès: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Veuillez importer un fichier JSON';

  @override
  String get selectMaterialPrompt =>
      'Veuillez sélectionner un matériel d\'étude';

  @override
  String get studyComplete => 'Étudié';

  @override
  String get markAsStudied => 'Marquer comme étudié';

  @override
  String get listening => 'Écoute...';

  @override
  String get recognized => 'Reconnaissance terminée';

  @override
  String recognitionFailed(String error) {
    return 'Échec de reconnaissance vocale: $error';
  }

  @override
  String get checking => 'Vérification...';

  @override
  String get translating => 'Traduction...';

  @override
  String get translationComplete => 'Traduction terminée (enregistrer)';

  @override
  String get translationLoaded => 'Traduction enregistrée chargée';

  @override
  String translationFailed(String error) {
    return 'Échec de traduction: $error';
  }

  @override
  String get enterTextToTranslate => 'Entrez le texte à traduire';

  @override
  String get saving => 'Enregistrement...';

  @override
  String get noTranslationToSave => 'Rien à enregistrer';

  @override
  String saveFailed(String error) {
    return 'Échec d\'enregistrement: $error';
  }

  @override
  String get playing => 'Lecture...';

  @override
  String get noTextToPlay => 'Aucun texte à lire';

  @override
  String playbackFailed(String error) {
    return 'Échec de lecture: $error';
  }

  @override
  String get sourceLanguage => 'Langue Source';

  @override
  String get targetLanguage => 'Langue Cible';

  @override
  String get similarTextFound => 'Texte similaire trouvé';

  @override
  String get useExistingText => 'Utiliser Existant';

  @override
  String get createNew => 'Créer Nouveau';

  @override
  String reviewCount(int count) {
    return 'Révisé $count fois';
  }

  @override
  String get tabSpeaking => 'Parler';

  @override
  String get speakingPractice => 'Pratique Orale';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervalle: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Votre Prononciation';

  @override
  String get correctAnswer => 'Bonne Réponse';

  @override
  String score(String score) {
    return 'Précision: $score%';
  }

  @override
  String get perfect => 'Parfait!';

  @override
  String get good => 'Bien';

  @override
  String get tryAgain => 'Réessayer';

  @override
  String get startPractice => 'Commencer';

  @override
  String get stopPractice => 'Arrêter';

  @override
  String get helpTitle => 'Aide et Guide';

  @override
  String get helpTabModes => 'Modes';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabTour => 'Tour';

  @override
  String get helpMode1Desc =>
      'Reconnaître la voix, traduire dans langue cible et écouter le résultat.';

  @override
  String get helpMode1Details =>
      '• Paramètres de langue : Changez la langue via l\'icône de traduction\n• Aide : Consultez le guide via l\'icône d\'aide\n• Entrée Vocale: Appuyez sur le micro pour démarrer/arrêter\n• Entrée Texte: Tapez directement pour traduire\n• Auto-Recherche: Détecte les phrases existantes similaires\n• Traduire: Appuyez pour une traduction instantanée\n• Écouter: Icône haut-parleur pour TTS (Original/Traduit)\n• Enregistrer: \'Enregistrer\' ajoute à l\'historique\n• Effacer: Réinitialiser toutes les entrées';

  @override
  String get helpMode2Desc =>
      'Révisez les phrases enregistrées avec masquage auto des traductions.';

  @override
  String get helpMode2Details =>
      '• Sélection Matériel: Choisissez un set ou \'Tout Réviser\'\n• Retourner Carte: Utilisez \'Afficher/Masquer\' pour voir la traduction\n• Écouter: Jouer TTS pour la phrase\n• Marquer Étudié: Coche (V) pour les éléments terminés\n• Supprimer: Appui long sur la carte\n• Filtre: Voir tout ou filtrer par matériel';

  @override
  String get helpMode3Desc =>
      'Pratiquez l\'oral en écoutant et répétant les phrases (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Sélection Matériel: Choisissez le pack d\'apprentissage\n• Intervalle: [-] [+] ajuster le temps d\'attente (3s-60s)\n• Début/Arrêt: Contrôler la session\n• Parler: Écoutez l\'audio et répétez après\n• Feedback: Score de précision (0-100) avec code couleur\n• Réessayer: Utilisez le bouton si aucune voix détectée';

  @override
  String get helpJsonDesc =>
      'Pour importer du matériel en Mode 3, créez un fichier JSON avec cette structure:';

  @override
  String get helpTourDesc =>
      'Le **Cercle de Surbrillance** vous guidera à travers les fonctionnalités principales.\n(ex : vous pouvez supprimer un enregistrement en appuyant longuement lorsque le **Cercle de Surbrillance** le pointe.)';

  @override
  String get startTutorial => 'Démarrer Tutoriel';

  @override
  String get tutorialMicTitle => 'Entrée Vocale';

  @override
  String get tutorialMicDesc =>
      'Appuyez sur le micro pour commencer l\'entrée vocale.';

  @override
  String get tutorialTabDesc =>
      'Vous pouvez sélectionner le mode d\'apprentissage souhaité ici.';

  @override
  String get tutorialTapToContinue => 'Appuyez pour continuer';

  @override
  String get tutorialTransTitle => 'Traduire';

  @override
  String get tutorialTransDesc => 'Appuyez ici pour traduire votre texte.';

  @override
  String get tutorialSaveTitle => 'Enregistrer';

  @override
  String get tutorialSaveDesc =>
      'Enregistrez votre traduction dans les dossiers d\'étude.';

  @override
  String get tutorialM2SelectTitle => 'Sélection & Filtre';

  @override
  String get tutorialM2SelectDesc =>
      'Choisissez le matériel d\'étude ou passez à \'Tout Réviser\'.';

  @override
  String get tutorialM2ListTitle => 'Liste d\'Étude';

  @override
  String get tutorialM2ListDesc =>
      'Vérifiez vos cartes enregistrées et retournez-les pour voir les réponses. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Sélectionner Matériel';

  @override
  String get tutorialM3SelectDesc =>
      'Choisissez un set de matériel pour pratiquer l\'oral.';

  @override
  String get tutorialM3IntervalTitle => 'Intervalle';

  @override
  String get tutorialM3IntervalDesc =>
      'Ajustez le temps d\'attente entre les phrases.';

  @override
  String get tutorialM3StartTitle => 'Commencer Pratique';

  @override
  String get tutorialM3StartDesc =>
      'Appuyez sur lecture pour commencer à écouter et répéter.';

  @override
  String get startWarning => 'Avertissement';

  @override
  String get noVoiceDetected => 'Aucune voix détectée';

  @override
  String get tooltipSearch => 'Rechercher';

  @override
  String get tooltipStudyReview => 'Étude+Révision';

  @override
  String get tooltipSpeaking => 'Parler';

  @override
  String get tooltipDecrease => 'Diminuer';

  @override
  String get tooltipIncrease => 'Augmenter';

  @override
  String get languageSettings => 'Paramètres de langue';

  @override
  String get tutorialM2DropdownDesc => 'Sélectionnez le matériel d\'étude.';

  @override
  String get tutorialM2ImportDesc =>
      'Importer un fichier JSON depuis le dossier de l\'appareil.';

  @override
  String get tutorialLangSettingsTitle => 'Paramètres de langue';

  @override
  String get tutorialLangSettingsDesc =>
      'Configurez les langues source et cible pour la traduction.';

  @override
  String get copy => 'Copier';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papier!';

  @override
  String get tutorialContextTitle => 'Balise de contexte';

  @override
  String get tutorialContextDesc =>
      'Ajoutez un contexte (ex: Matin) pour distinguer des phrases similaires.';

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
  String get basicWords => 'Répertoire de mots';

  @override
  String get basicSentences => 'Répertoire de phrases';

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
      'J\'alterne ma langue maternelle avec la langue que j\'apprends.';

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
  String get menuSelectMaterialSet => 'Sélectionnez un support d\'étude';

  @override
  String get sectionWord => 'Section Word';

  @override
  String get sectionSentence => 'Section de la phrase';

  @override
  String get tabWord => 'mot';

  @override
  String get tabSentence => 'phrase';

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
  String get chatHistoryTitle => 'Historique';

  @override
  String get chatNewChat => 'Nouveau chat';

  @override
  String get chatChoosePersona => 'Choisir un personnage';

  @override
  String get chatTypeHint => 'Écrivez ici...';

  @override
  String chatFailed(Object error) {
    return '채팅 실패: $error';
  }

  @override
  String get chatNoConversations => 'Aucune conversation';

  @override
  String get chatStartNewPrompt => 'Commencez un chat pour vous entraîner !';

  @override
  String chatFromConversation(Object speaker) {
    return '대화 발췌 ($speaker)';
  }

  @override
  String get personaTeacher => 'Professeur d\'anglais';

  @override
  String get personaGuide => 'Guide de voyage';

  @override
  String get personaFriend => 'Ami local';

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
  String get tutorialAiChatTitle => 'Chat IA';

  @override
  String get tutorialAiChatDesc =>
      'Pratiquez des conversations réelles avec des IA.';

  @override
  String get me => 'Moi';

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
  String get basicWordRepository => 'Répertoire de mots de base';

  @override
  String get basicSentenceRepository => 'Répertoire de phrases de base';

  @override
  String get chatEndTitle => 'Fin et sauvegarde';

  @override
  String get chatEndMessage => 'Voulez-vous terminer la conversation ?';

  @override
  String get chatSaveAndExit => 'Enregistrer et quitter';

  @override
  String get errorSelectCategory => 'Veuillez d\'abord choisir mot ou phrase !';

  @override
  String get tutorialM1ToggleTitle => 'Mode Mot/Phrase';

  @override
  String get tutorialM1ToggleDesc =>
      'Basculez entre le mode mot et phrase ici.';
}

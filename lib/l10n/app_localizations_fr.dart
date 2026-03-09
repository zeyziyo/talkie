// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get accuracy => 'Précision';

  @override
  String get ttsMissing =>
      'Le moteur de synthèse vocale pour cette langue n\'est pas installé sur votre appareil.';

  @override
  String get ttsInstallGuide =>
      'Veuillez installer les données de langue correspondantes dans les paramètres Android > Synthèse vocale Google.';

  @override
  String get adLoading =>
      'Chargement de la publicité en cours. Veuillez réessayer plus tard.';

  @override
  String get addNewSubject => 'Ajouter un nouveau titre';

  @override
  String get addParticipant => 'Ajouter un participant';

  @override
  String get addTagHint => 'Ajouter un tag...';

  @override
  String get alreadyHaveAccount => 'Vous avez déjà un compte ?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Lecture automatique';

  @override
  String get basic => 'De base';

  @override
  String get basicDefault => 'De base';

  @override
  String get basicMaterialRepository => 'Répertoire de phrases/mots de base';

  @override
  String get basicSentenceRepository => 'Répertoire de phrases de base';

  @override
  String get basicSentences => 'Répertoire de phrases';

  @override
  String get basicWordRepository => 'Répertoire de mots de base';

  @override
  String get basicWords => 'Répertoire de mots';

  @override
  String get cancel => 'Annuler';

  @override
  String get caseObject => 'Accusatif';

  @override
  String get casePossessive => 'Possessif';

  @override
  String get casePossessivePronoun => 'Pronom possessif';

  @override
  String get caseReflexive => 'Réfléchi';

  @override
  String get caseSubject => 'Nominatif';

  @override
  String get chatAiChat => 'Chat';

  @override
  String get chatAllConversations => 'Toutes les conversations';

  @override
  String get chatChoosePersona => 'Choisir un personnage';

  @override
  String get chatEndMessage => 'Voulez-vous terminer la conversation ?';

  @override
  String get chatEndTitle => 'Fin et sauvegarde';

  @override
  String chatFailed(Object error) {
    return 'Échec du chat : $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Extrait de la conversation ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Historique';

  @override
  String get chatNew => 'Nouvelle conversation';

  @override
  String get chatNewChat => 'Nouveau chat';

  @override
  String get chatNoConversations => 'Aucune conversation';

  @override
  String get chatSaveAndExit => 'Enregistrer et quitter';

  @override
  String get chatStartNewPrompt => 'Commencez un chat pour vous entraîner !';

  @override
  String get chatTypeHint => 'Écrivez ici...';

  @override
  String get chatUntitled => 'Conversation sans titre';

  @override
  String get checking => 'Vérification...';

  @override
  String get clearAll => 'Tout effacer';

  @override
  String get confirm => 'Confirmer';

  @override
  String get confirmDelete =>
      'Voulez-vous vraiment supprimer cet enregistrement?';

  @override
  String get confirmDeleteConversation =>
      'Êtes-vous sûr de vouloir supprimer cette conversation ?\nElle ne pourra pas être récupérée.';

  @override
  String get confirmDeleteParticipant => 'Supprimer ce participant ?';

  @override
  String get contextTagHint =>
      'Décrivez la situation pour une identification plus facile plus tard';

  @override
  String get contextTagLabel =>
      'Contexte/Situation (facultatif) - Ex : Salutation du matin, Formel';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papier!';

  @override
  String get copy => 'Copier';

  @override
  String get correctAnswer => 'Bonne Réponse';

  @override
  String get createNew => 'Créer Nouveau';

  @override
  String get currentLocation => 'Position actuelle';

  @override
  String get currentMaterialLabel => 'Matériel sélectionné :';

  @override
  String get delete => 'Supprimer';

  @override
  String deleteFailed(String error) {
    return 'Échec de suppression: $error';
  }

  @override
  String get deleteRecord => 'Supprimer l\'enregistrement';

  @override
  String get dialogueQuestDesc =>
      'Entraînez-vous à dialoguer à travers un jeu de rôle. Choisissez la bonne réponse et prononcez-la.';

  @override
  String get dialogueQuestTitle => 'Quête de dialogue';

  @override
  String get disambiguationPrompt =>
      'Quel sens voulez-vous pour la traduction ?';

  @override
  String get disambiguationTitle => 'Choisir le sens';

  @override
  String get dontHaveAccount => 'Vous n’avez pas de compte ?';

  @override
  String get editParticipant => 'Modifier le participant';

  @override
  String get email => 'E-mail';

  @override
  String get emailAlreadyInUse =>
      'Cet e-mail est déjà utilisé. Veuillez vous connecter ou réinitialiser votre mot de passe.';

  @override
  String get enterNewSubjectName => 'Entrer un nouveau titre';

  @override
  String get enterSentenceHint => 'Saisissez une phrase...';

  @override
  String get enterTextHint => 'Entrez le texte à traduire';

  @override
  String get enterTextToTranslate => 'Entrez le texte à traduire';

  @override
  String get enterWordHint => 'Saisissez un mot...';

  @override
  String get error => 'Erreur';

  @override
  String get errorHateSpeech =>
      'La traduction est impossible car elle contient des propos haineux.';

  @override
  String get errorOtherSafety =>
      'La traduction a été refusée en raison de la politique de sécurité de l\'IA.';

  @override
  String get errorProfanity =>
      'La traduction est impossible car elle contient des vulgarités.';

  @override
  String get errorSelectCategory => 'Veuillez d\'abord choisir mot ou phrase !';

  @override
  String get errorSexualContent =>
      'La traduction est impossible car elle contient du contenu à caractère sexuel.';

  @override
  String get errors => 'Erreurs:';

  @override
  String get female => 'Femme';

  @override
  String get file => 'Fichier:';

  @override
  String get filterAll => 'Tout';

  @override
  String get flip => 'Afficher';

  @override
  String get formComparative => 'Comparatif';

  @override
  String get formInfinitive => 'Infinitif/Présent';

  @override
  String get formPast => 'Passé';

  @override
  String get formPastParticiple => 'Participe passé';

  @override
  String get formPlural => 'Pluriel';

  @override
  String get formPositive => 'Positif';

  @override
  String get formPresent => 'Présent';

  @override
  String get formPresentParticiple => 'Participe présent (-ing)';

  @override
  String get formSingular => 'Singulier';

  @override
  String get formSuperlative => 'Superlatif';

  @override
  String get formThirdPersonSingular => 'Troisième personne du singulier';

  @override
  String get gameModeDesc => 'Sélectionnez un mode de jeu pour vous entraîner';

  @override
  String get gameModeTitle => 'Mode de jeu';

  @override
  String get gameOver => 'Fin de partie';

  @override
  String get gender => 'Genre';

  @override
  String get generalTags => 'Balises générales';

  @override
  String get getMaterials => 'Obtenir du matériel';

  @override
  String get good => 'Bien';

  @override
  String get googleContinue => 'Continuer avec Google';

  @override
  String get helpDialogueImportDesc =>
      'Importer un ensemble de dialogues complet à partir d’un fichier JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'Pour importer du matériel en Mode 3, créez un fichier JSON avec cette structure:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Phrase';

  @override
  String get helpJsonTypeWord => 'Mot';

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
      '• Sélection du manuel : utilisez le menu (⋮) en haut à droite pour sélectionner \'Choisir un manuel d\'apprentissage\' ou \'Bibliothèque de ressources en ligne\'.\n• Retourner les cartes : utilisez \'Afficher/Masquer\' pour vérifier la traduction.\n• Écouter : appuyez sur l\'icône du haut-parleur pour écouter la prononciation.\n• Apprentissage terminé : cochez la case (V) pour marquer l\'apprentissage comme terminé.\n• Supprimer : appuyez longuement sur une carte pour supprimer l\'enregistrement.\n• Recherche et filtre : prise en charge de la barre de recherche (recherche intelligente en temps réel) et des filtres par balises et par première lettre.';

  @override
  String get helpMode3Desc =>
      'Entraînez votre prononciation en écoutant et en répétant des phrases (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Sélection Matériel: Choisissez le pack d\'apprentissage\n• Intervalle: [-] [+] ajuster le temps d\'attente (3s-60s)\n• Début/Arrêt: Contrôler la session\n• Parler: Écoutez l\'audio et répétez après\n• Feedback: Score de précision (0-100) avec code couleur\n• Réessayer: Utilisez le bouton si aucune voix détectée';

  @override
  String get helpModeChatDesc =>
      'Entraînez-vous à la conversation réelle en discutant avec un personnage IA.';

  @override
  String get helpModeChatDetails =>
      '• Chat IA : Entraînez-vous à des conversations réalistes avec des personnages.\n• Gestion des participants : Définissez votre langue et celle de l’IA pour éviter les incohérences linguistiques.\n• Jeu de rôle GPS : Créez des scénarios de conversation naturels basés sur votre position actuelle.\n• Conservation des données : Toutes les conversations sont stockées en toute sécurité avec un identifiant, et l’historique est conservé même si vous changez de nom.';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabModes => 'Explication des modes';

  @override
  String get helpTabTour => 'Visite guidée';

  @override
  String get helpTitle => 'Aide et Guide';

  @override
  String get helpTourDesc =>
      'Le **Cercle de Surbrillance** vous guidera à travers les fonctionnalités principales.\n(ex : vous pouvez supprimer un enregistrement en appuyant longuement lorsque le **Cercle de Surbrillance** le pointe.)';

  @override
  String get hide => 'Masquer';

  @override
  String importAdded(int count) {
    return 'Ajoutés: $count éléments';
  }

  @override
  String get importComplete => 'Importation terminée';

  @override
  String get importDuplicateTitleError =>
      'Un document avec le même titre existe déjà. Veuillez modifier le titre et réessayer.';

  @override
  String importErrorMessage(String error) {
    return 'Échec d\'importation du fichier:\\n$error';
  }

  @override
  String get importFailed => 'Échec d\'importation';

  @override
  String importFile(String fileName) {
    return 'Fichier: $fileName';
  }

  @override
  String get importJsonFile => 'Importer JSON';

  @override
  String get importJsonFilePrompt => 'Veuillez importer un fichier JSON';

  @override
  String importSkipped(int count) {
    return 'Ignorés: $count éléments';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count éléments';
  }

  @override
  String get importing => 'Importation...';

  @override
  String get inputModeTitle => 'Saisie';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervalle: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Veuillez entrer un e-mail valide.';

  @override
  String get kakaoContinue => 'Continuer avec Kakao';

  @override
  String get labelLangCode => 'Code de langue (ex : en-US, ko-KR)';

  @override
  String get labelName => 'Nom';

  @override
  String get labelNote => 'Note';

  @override
  String get labelPOS => 'Catégorie grammaticale';

  @override
  String get labelRole => 'Rôle';

  @override
  String get labelSentence => 'Phrase';

  @override
  String get labelSentenceCollection => 'Corpus de phrases';

  @override
  String get labelSentenceType => 'Type de phrase';

  @override
  String get labelShowMemorized => 'Terminé';

  @override
  String get labelType => 'Type :';

  @override
  String get labelWord => 'Mot';

  @override
  String get labelWordbook => 'Lexique';

  @override
  String get language => 'Langue';

  @override
  String get languageSettings => 'Paramètres de langue';

  @override
  String get languageSettingsTitle => 'Paramètres de langue';

  @override
  String get libTitleFirstMeeting => 'Première rencontre';

  @override
  String get libTitleGreetings1 => 'Salutations 1';

  @override
  String get libTitleNouns1 => 'Noms 1';

  @override
  String get libTitleVerbs1 => 'Verbes 1';

  @override
  String get listen => 'Écouter';

  @override
  String get listening => 'Écoute...';

  @override
  String get loadingParticipants => 'Chargement des participants...';

  @override
  String get location => 'Emplacement';

  @override
  String get login => 'Connexion';

  @override
  String get logout => 'Déconnexion';

  @override
  String get logoutConfirmMessage =>
      'Voulez-vous vous déconnecter de cet appareil ?';

  @override
  String get logoutConfirmTitle => 'Déconnexion';

  @override
  String get male => 'Homme';

  @override
  String get manageParticipants => 'Gérer les participants';

  @override
  String get manual => 'Saisie manuelle';

  @override
  String get markAsStudied => 'Marquer comme étudié';

  @override
  String get materialInfo => 'Info Matériel';

  @override
  String get me => 'Moi';

  @override
  String get menuDeviceImport => 'Importer des documents depuis l’appareil';

  @override
  String get menuHelp => 'Aide';

  @override
  String get menuLanguageSettings => 'Paramètres de langue';

  @override
  String get menuOnlineLibrary => 'Bibliothèque en ligne';

  @override
  String get menuSelectMaterialSet => 'Sélectionnez un support d\'étude';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Visite guidée';

  @override
  String get menuWebDownload => 'Manuel d’utilisation';

  @override
  String get metadataDialogTitle => 'Classification détaillée';

  @override
  String get metadataFormType => 'Type grammatical';

  @override
  String get metadataRootWord => 'Forme de base (Root Word)';

  @override
  String get micButtonTooltip => 'Démarrer la reconnaissance vocale';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Documents sélectionnés : $name';
  }

  @override
  String get mode2Title => 'Révision';

  @override
  String get mode3Next => 'Suivant';

  @override
  String get mode3Start => 'Démarrer';

  @override
  String get mode3Stop => 'Arrêter';

  @override
  String get mode3TryAgain => 'Réessayer';

  @override
  String get mySentenceCollection => 'Mes phrases';

  @override
  String get myWordbook => 'Mon vocabulaire';

  @override
  String get neutral => 'Neutre';

  @override
  String get newSubjectName => 'Nouveau titre de sujet/recueil';

  @override
  String get next => 'Suivant';

  @override
  String get noDialogueHistory => 'Aucun historique de dialogue.';

  @override
  String get noInternetWarningMic =>
      'Pas de connexion Internet. La reconnaissance vocale peut ne pas fonctionner en mode hors ligne.';

  @override
  String get noInternetWarningTranslate =>
      'Pas de connexion Internet. La traduction ne fonctionne pas en mode hors ligne. Veuillez utiliser le mode révision.';

  @override
  String get noMaterialsInCategory =>
      'Il n’y a pas de matériel dans cette catégorie.';

  @override
  String get noParticipantsFound => 'Aucun participant enregistré.';

  @override
  String get noRecords => 'Aucun dossier pour la langue sélectionnée';

  @override
  String get noStudyMaterial => 'Aucun matériel d’étude.';

  @override
  String get noTextToPlay => 'Aucun texte à lire';

  @override
  String get noTranslationToSave => 'Rien à enregistrer';

  @override
  String get noVoiceDetected => 'Aucune voix détectée';

  @override
  String get notSelected => '- Non sélectionné -';

  @override
  String get onlineLibraryCheckInternet =>
      'Vérifiez votre connexion Internet ou réessayez plus tard.';

  @override
  String get onlineLibraryLoadFailed => 'Échec du chargement des documents.';

  @override
  String get onlineLibraryNoMaterials => 'Aucun document disponible.';

  @override
  String get participantDeleted => 'Participant supprimé.';

  @override
  String get participantRename => 'Renommer le participant';

  @override
  String get partner => 'Partenaire';

  @override
  String get partnerMode => 'Mode partenaire';

  @override
  String get password => 'Mot de passe';

  @override
  String get passwordTooShort =>
      'Le mot de passe doit contenir au moins 6 caractères.';

  @override
  String get perfect => 'Parfait!';

  @override
  String get personaFriend => 'Ami local';

  @override
  String get personaGuide => 'Guide de voyage';

  @override
  String get personaTeacher => 'Professeur d\'anglais';

  @override
  String get playAgain => 'Rejouer';

  @override
  String playbackFailed(String error) {
    return 'Échec de lecture: $error';
  }

  @override
  String get playing => 'Lecture...';

  @override
  String get posAdjective => 'Adjectif';

  @override
  String get posAdverb => 'Adverbe';

  @override
  String get posConjunction => 'Conjonction';

  @override
  String get posInterjection => 'Interjection';

  @override
  String get posNoun => 'Nom';

  @override
  String get posPreposition => 'Préposition/Postposition';

  @override
  String get posPronoun => 'Pronom';

  @override
  String get posVerb => 'Verbe';

  @override
  String get practiceModeTitle => 'Entraînement';

  @override
  String get practiceWordsOnly => 'S’entraîner avec les mots uniquement';

  @override
  String progress(int current, int total) {
    return 'Progrès: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Afficher les $count éléments créés récemment';
  }

  @override
  String recognitionFailed(String error) {
    return 'Échec de reconnaissance vocale: $error';
  }

  @override
  String get recognized => 'Reconnaissance terminée';

  @override
  String get recognizedText => 'Texte reconnu :';

  @override
  String get recordDeleted => 'Enregistrement supprimé avec succès';

  @override
  String get refresh => 'Actualiser';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get resetPracticeHistory =>
      'Réinitialiser l’historique d’entraînement';

  @override
  String get retry => 'Réessayer ?';

  @override
  String get reviewAll => 'Tout réviser';

  @override
  String reviewCount(int count) {
    return 'Révisé $count fois';
  }

  @override
  String get reviewModeTitle => 'Révision';

  @override
  String get roleAi => 'IA';

  @override
  String get roleThirdParty => 'Tiers';

  @override
  String get roleUser => 'Utilisateur';

  @override
  String get save => 'Enregistrer';

  @override
  String get saveData => 'Enregistrer';

  @override
  String saveFailed(String error) {
    return 'Échec d\'enregistrement: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Enregistrez des traductions en mode recherche';

  @override
  String get saved => 'Enregistré';

  @override
  String get saving => 'Enregistrement...';

  @override
  String score(String score) {
    return 'Précision: $score%';
  }

  @override
  String get scoreLabel => 'Score';

  @override
  String get search => 'Rechercher';

  @override
  String get searchConditions => 'Conditions de recherche';

  @override
  String get searchSentenceHint => 'Rechercher une phrase...';

  @override
  String get searchWordHint => 'Rechercher un mot...';

  @override
  String get sectionSentence => 'Section de la phrase';

  @override
  String get sectionSentences => 'Phrases';

  @override
  String get sectionWord => 'Section Word';

  @override
  String get sectionWords => 'Mots';

  @override
  String get selectExistingSubject => 'Sélectionner un titre existant';

  @override
  String get selectMaterialPrompt =>
      'Veuillez sélectionner un matériel d\'étude';

  @override
  String get selectMaterialSet =>
      'Sélectionner un ensemble de ressources pédagogiques';

  @override
  String get selectPOS => 'Sélectionner la partie du discours';

  @override
  String get selectParticipants => 'Sélectionner les participants';

  @override
  String get selectSentenceType => 'Sélectionner le type de phrase';

  @override
  String get selectStudyMaterial => 'Sélectionner matériel';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Phrase';

  @override
  String get signUp => 'Inscription';

  @override
  String get similarTextFound => 'Texte similaire trouvé';

  @override
  String get skip => 'Passer';

  @override
  String get source => 'Source :';

  @override
  String get sourceLanguage => 'Langue Source';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Parlez maintenant !';

  @override
  String get speaker => 'Locuteur';

  @override
  String get speakerSelect => 'Sélectionner le locuteur';

  @override
  String get speakingPractice => 'Pratique Orale';

  @override
  String get startChat => 'Démarrer la conversation';

  @override
  String get startPractice => 'Commencer';

  @override
  String get startTutorial => 'Démarrer Tutoriel';

  @override
  String get startWarning => 'Avertissement';

  @override
  String get startsWith => 'Commence par';

  @override
  String get statusCheckEmail =>
      'Veuillez vérifier votre e-mail pour terminer l\'authentification.';

  @override
  String statusDownloading(Object name) {
    return 'Téléchargement : $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Échec de l’importation : $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name importé avec succès';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Connexion annulée.';

  @override
  String statusLoginFailed(Object error) {
    return 'Échec de la connexion : $error';
  }

  @override
  String get statusLoginSuccess => 'Connexion réussie.';

  @override
  String get statusLogoutSuccess => 'Déconnexion réussie.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Échec de l’inscription : $error';
  }

  @override
  String get statusSigningUp => 'Inscription en cours...';

  @override
  String get stopPractice => 'Arrêter';

  @override
  String get studyComplete => 'Étudié';

  @override
  String studyRecords(int count) {
    return 'Dossiers ($count)';
  }

  @override
  String get styleFormal => 'Formel';

  @override
  String get styleInformal => 'Informel';

  @override
  String get stylePolite => 'Poli';

  @override
  String get styleSlang => 'Argot/Vulgaire';

  @override
  String get subject => 'Sujet:';

  @override
  String get swapLanguages => 'Inverser les langues';

  @override
  String get switchToAi => 'Passer en mode IA';

  @override
  String get switchToPartner => 'Passer en mode partenaire';

  @override
  String get syncingData => 'Synchronisation des données...';

  @override
  String get tabConversation => 'Conversation';

  @override
  String tabReview(int count) {
    return 'Révision ($count)';
  }

  @override
  String get tabSentence => 'phrase';

  @override
  String get tabSpeaking => 'Parler';

  @override
  String tabStudyMaterial(int count) {
    return 'Matériel ($count)';
  }

  @override
  String get tabWord => 'mot';

  @override
  String get tagFormal => 'Formel';

  @override
  String get tagSelection => 'Sélection des balises';

  @override
  String get targetLanguage => 'Langue Cible';

  @override
  String get targetLanguageFilter => 'Filtre langue cible:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Temps de réflexion avant que la réponse ne soit révélée.';

  @override
  String get thinkingTimeInterval => 'Délai de lecture';

  @override
  String get timeUp => 'Temps écoulé !';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Balises de titre (Recueil)';

  @override
  String get tooltipDecrease => 'Diminuer';

  @override
  String get tooltipIncrease => 'Augmenter';

  @override
  String get tooltipSearch => 'Rechercher';

  @override
  String get tooltipSpeaking => 'Parler';

  @override
  String get tooltipStudyReview => 'Étude+Révision';

  @override
  String totalRecords(int count) {
    return '$count enregistrements au total (voir tout)';
  }

  @override
  String get translate => 'Traduire';

  @override
  String get translating => 'Traduction...';

  @override
  String get translation => 'Traduction';

  @override
  String get translationComplete => 'Traduction terminée (enregistrer)';

  @override
  String translationFailed(String error) {
    return 'Échec de traduction: $error';
  }

  @override
  String get translationLimitExceeded => 'Limite de traduction dépassée';

  @override
  String get translationLimitMessage =>
      'Vous avez utilisé toutes vos traductions gratuites quotidiennes (5).\\n\\nVoulez-vous regarder une publicité pour en recharger 5 immédiatement ?';

  @override
  String get translationLoaded => 'Traduction enregistrée chargée';

  @override
  String get translationRefilled =>
      'Vos traductions ont été rechargées (5 fois) !';

  @override
  String get translationResultHint => 'Résultat de la traduction - Modifiable';

  @override
  String get tryAgain => 'Réessayer';

  @override
  String get tutorialAiChatDesc =>
      'Pratiquez des conversations réelles avec des IA.';

  @override
  String get tutorialAiChatTitle => 'Chat IA';

  @override
  String get tutorialContextDesc =>
      'Ajoutez un contexte (ex: Matin) pour distinguer des phrases similaires.';

  @override
  String get tutorialContextTitle => 'Balise de contexte';

  @override
  String get tutorialLangSettingsDesc =>
      'Configurez les langues source et cible pour la traduction.';

  @override
  String get tutorialLangSettingsTitle => 'Paramètres de langue';

  @override
  String get tutorialM1ToggleDesc =>
      'Basculez entre le mode mot et phrase ici.';

  @override
  String get tutorialM1ToggleTitle => 'Mode Mot/Phrase';

  @override
  String get tutorialM2DropdownDesc => 'Sélectionnez le matériel d\'étude.';

  @override
  String get tutorialM2ImportDesc =>
      'Importer un fichier JSON depuis le dossier de l\'appareil.';

  @override
  String get tutorialM2ListDesc =>
      'Vérifiez vos cartes enregistrées et retournez-les pour voir les réponses. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Liste d\'Étude';

  @override
  String get tutorialM2SearchDesc =>
      'Recherchez et trouvez rapidement les mots et les phrases enregistrés.';

  @override
  String get tutorialM2SelectDesc =>
      'Choisissez le matériel d\'étude ou passez à \'Tout Réviser\'.';

  @override
  String get tutorialM2SelectTitle => 'Sélection & Filtre';

  @override
  String get tutorialM3IntervalDesc =>
      'Ajustez le temps d\'attente entre les phrases.';

  @override
  String get tutorialM3IntervalTitle => 'Intervalle';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc =>
      'Choisissez un set de matériel pour pratiquer l\'oral.';

  @override
  String get tutorialM3SelectTitle => 'Sélectionner Matériel';

  @override
  String get tutorialM3StartDesc =>
      'Appuyez sur lecture pour commencer à écouter et répéter.';

  @override
  String get tutorialM3StartTitle => 'Commencer Pratique';

  @override
  String get tutorialM3WordsDesc =>
      'Cochez pour ne pratiquer que les mots enregistrés.';

  @override
  String get tutorialM3WordsTitle => 'Entraînement aux mots';

  @override
  String get tutorialMicDesc =>
      'Appuyez sur le micro pour commencer l\'entrée vocale.';

  @override
  String get tutorialMicTitle => 'Entrée Vocale';

  @override
  String get tutorialSaveDesc =>
      'Enregistrez votre traduction dans les dossiers d\'étude.';

  @override
  String get tutorialSaveTitle => 'Enregistrer';

  @override
  String get tutorialSwapDesc =>
      'J\'alterne ma langue maternelle avec la langue que j\'apprends.';

  @override
  String get tutorialTabDesc =>
      'Vous pouvez sélectionner le mode d\'apprentissage souhaité ici.';

  @override
  String get tutorialTapToContinue => 'Appuyez pour continuer';

  @override
  String get tutorialTransDesc => 'Appuyez ici pour traduire votre texte.';

  @override
  String get tutorialTransTitle => 'Traduire';

  @override
  String get typeExclamation => 'Exclamative';

  @override
  String get typeImperative => 'Impérative';

  @override
  String get typeQuestion => 'Interrogative';

  @override
  String get typeStatement => 'Déclarative';

  @override
  String get usageLimitTitle => 'Limite atteinte';

  @override
  String get useExistingText => 'Utiliser Existant';

  @override
  String get viewOnlineGuide => 'Voir le guide en ligne';

  @override
  String get voluntaryTranslations => 'Traductions volontaires';

  @override
  String get watchAdAndRefill => 'Regarder une pub et recharger (+5)';

  @override
  String get word => 'Mot';

  @override
  String get wordDefenseDesc =>
      'Défendez votre base en prononçant les mots avant que les ennemis n’arrivent.';

  @override
  String get wordDefenseTitle => 'Défense de mots';

  @override
  String get wordModeLabel => 'Mode mot';

  @override
  String get yourPronunciation => 'Votre Prononciation';

  @override
  String get ttsUnsupportedNatively =>
      'La synthèse vocale n\'est pas prise en charge nativement pour cette langue sur cet appareil.';

  @override
  String get welcomeTitle => 'Bienvenue sur Talkie !';

  @override
  String get welcomeDesc =>
      'Talkie supporte plus de 80 langues et est un outil intelligent pour les voyageurs. Améliorez votre expression orale avec le chat IA !';

  @override
  String get welcomeButton => 'Commencer';
}

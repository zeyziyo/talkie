// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get basicWords => 'Basic Word Repository';

  @override
  String get inputLanguage => 'Input Language';

  @override
  String get translationLanguage => 'Translation Language';

  @override
  String get simplifiedGuidance =>
      'Set \'My Language\' & \'Learning Language\' in Settings, then translate and save.';

  @override
  String get noDataForLanguage =>
      'No study materials for the selected language in local DB. Please download materials or select another language.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Cancel';

  @override
  String get accuracy => 'Accuracy';

  @override
  String get ttsMissing =>
      'The voice engine for this language is not installed on your device.';

  @override
  String get ttsInstallGuide =>
      'Please install the language data in Android Settings > Google TTS.';

  @override
  String get adLoading => 'Loading ad, please try again in a moment.';

  @override
  String get addNewSubject => 'Add New Subject';

  @override
  String get addParticipant => 'Add Participant';

  @override
  String get addTagHint => 'Add Tag...';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Auto-Play';

  @override
  String get basic => 'Basic';

  @override
  String get basicDefault => 'Basic (Default)';

  @override
  String get basicMaterialRepository => 'Basic Repository';

  @override
  String get basicSentenceRepository => 'Basic Sentence Repository';

  @override
  String get basicSentences => 'Basic Sentence Repository';

  @override
  String get basicWordRepository => 'Basic Word Repository';

  @override
  String get caseObject => 'Object';

  @override
  String get casePossessive => 'Possessive';

  @override
  String get casePossessivePronoun => 'Possessive Pronoun';

  @override
  String get caseReflexive => 'Reflexive';

  @override
  String get caseSubject => 'Subject';

  @override
  String get chatAiChat => 'Chat';

  @override
  String get chatAllConversations => 'All Conversations';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'From Conversation ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Conversation History';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => 'New Chat';

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatSearchHint => 'Search by dialogue title...';

  @override
  String get chatNoteSearchHint => 'Search by note...';

  @override
  String get chatSaveAndExit => 'Save & Exit';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String get chatUntitled => 'Untitled Conversation';

  @override
  String get checking => 'Checking...';

  @override
  String get clearAll => 'Clear All';

  @override
  String get confirm => 'OK';

  @override
  String get confirmDelete =>
      'Are you sure you want to delete this study record?';

  @override
  String get confirmDeleteConversation =>
      'Are you sure you want to delete this conversation?\nThis action cannot be undone.';

  @override
  String get confirmDeleteParticipant =>
      'Are you sure you want to delete this participant?';

  @override
  String get contextTagHint =>
      'Describe situation for easier classification later';

  @override
  String get contextTagLabel =>
      'Context/Situation (Optional) - Ex: Morning greeting, polite form';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get copy => 'Copy';

  @override
  String get correctAnswer => 'Correct Answer';

  @override
  String get createNew => 'Create New Entry';

  @override
  String get currentLocation => 'Current Location';

  @override
  String get currentMaterialLabel => 'Current Selected Material:';

  @override
  String get delete => 'Delete';

  @override
  String deleteFailed(String error) {
    return 'Delete failed: $error';
  }

  @override
  String get deleteRecord => 'Delete Record';

  @override
  String get dialogueQuestDesc =>
      'Roleplay in scenarios. Choose the right response and speak it aloud.';

  @override
  String get dialogueQuestTitle => 'Dialogue Quest';

  @override
  String get disambiguationPrompt => 'Which meaning do you intend?';

  @override
  String get disambiguationTitle => 'Select Meaning';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get editParticipant => 'Edit Participant';

  @override
  String get email => 'Email';

  @override
  String get emailAlreadyInUse =>
      'This email is already in use. Please log in or use password recovery.';

  @override
  String get enterNewSubjectName => 'Enter new subject name';

  @override
  String get enterSentenceHint => 'Enter sentence...';

  @override
  String get enterTextHint => 'Enter text to translate';

  @override
  String get enterTextToTranslate => 'Please enter text to translate';

  @override
  String get enterWordHint => 'Enter word...';

  @override
  String get error => 'Error';

  @override
  String get errorHateSpeech =>
      'Translation cannot be processed due to hate speech.';

  @override
  String get errorOtherSafety => 'Translation was blocked by AI safety policy.';

  @override
  String get errorProfanity =>
      'Translation cannot be processed due to profanity.';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get errorSexualContent =>
      'Translation cannot be processed due to sexual content.';

  @override
  String get errors => 'Errors:';

  @override
  String get female => 'Female';

  @override
  String get file => 'File:';

  @override
  String get filterAll => 'All';

  @override
  String get flip => 'Show';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formInfinitive => 'Infinitive/Present';

  @override
  String get formPast => 'Past';

  @override
  String get formPastParticiple => 'Past Participle';

  @override
  String get formPlural => 'Plural';

  @override
  String get formPositive => 'Positive';

  @override
  String get formPresent => 'Present';

  @override
  String get formPresentParticiple => 'Present Participle';

  @override
  String get formSingular => 'Singular';

  @override
  String get formSuperlative => 'Superlative';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get gameModeDesc => 'Choose your practice mode';

  @override
  String get gameModeTitle => 'Game Mode';

  @override
  String get gameOver => 'Game Over';

  @override
  String get gender => 'Gender';

  @override
  String get labelFilterMaterial => 'Study Material';

  @override
  String get labelFilterTag => 'Tags';

  @override
  String get generalTags => 'General Tags';

  @override
  String get getMaterials => 'Get Materials';

  @override
  String get good => 'Good';

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Use the `entries` array and specify a `speaker` for each turn.\n• Participants: Accurate `participants` data will auto-configure personas and languages in AI Chat.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'Learn how to import study materials in bulk using JSON files.';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpMode1Desc =>
      'Start language learning in the most intuitive way with premium 3D microphones and large keyboard icons.';

  @override
  String get helpMode1Details =>
      '• Language Settings: You can verify your native language and current learning language, and change the learning language via the top-bar language buttons.\n• Simple Input: Start instantly via the central large Mic or text input box.\n• Confirm Settings: After input, tap the blue check button on the right to open the Detailed Settings dialog.\n• Detailed Settings: Configure the material set, note (context), and tags for saving in the dialog.\n• Translate Now: Tap the green translation button after configuration to perform AI translation.\n• Auto-Search: Detects similar existing translations in real-time as you type.\n• Shadowing & Saving: Listen to pronunciation via the speaker icon and tap \'Save Data\' to add to your study list.';

  @override
  String get helpMode2Desc =>
      'Review saved words and sentences with hide/reveal functionality.';

  @override
  String get helpMode2Details =>
      '• Materials: Access \'Select Material Set\' or \'Online Library\' via the top-right menu (⋮).\n• Flip Card: Use \'Show/Hide\' to check translations.\n• Listen: Tap speaker icons for pronunciation.\n• Mastery: Mark items as studied with the checkmark (V).\n• Delete: Long-press a card to remove it from your records.\n• Filter: Real-time smart search and filter by tags or starting letters.';

  @override
  String get helpMode3Desc =>
      'Practice your pronunciation by listening to and shadowing sentences.';

  @override
  String get helpMode3Details =>
      '• Materials: Select a material set via the top-right menu (⋮).\n• Interval: Adjust wait time between sentences (3s to 60s) using [-] [+].\n• Start/Stop: Control shadowing sessions with central buttons.\n• Speak: Listen to the native speaker and repeat loudly.\n• Feedback: Real-time accuracy scores (0-100) and color coding.\n• Settings: Use the gear icon to filter practice scope by tags.';

  @override
  String get helpModeChatDesc =>
      'Practice real-world conversations by chatting with an AI persona.';

  @override
  String get helpModeChatDetails =>
      '• AI Chat: Practice real-world conversations via the \'Chat\' menu in the bottom navigation bar.\n• Persona Settings: Freely customize your partner\'s gender, name, and language code.\n• GPS Context: Recognizes your current location to suggest context-aware conversation topics.\n• Dual Language: AI responses are displayed with translations for maximum learning efficiency.\n• History & Save: Filter past conversations and save specific messages as study materials during the chat.';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabModes => 'Modes';

  @override
  String get helpTabQuickStart => 'Quick Start';

  @override
  String get helpTabTour => 'Tour';

  @override
  String get helpTitle => 'Help & Guide';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Hide';

  @override
  String importAdded(int count) {
    return 'Added: $count items';
  }

  @override
  String get importComplete => 'Import Complete';

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get importSourceTitle => 'Select Import Source';

  @override
  String get importSourceFile => 'Single JSON File';

  @override
  String get importSourceFolder => 'Folder (Language Library Structure)';

  @override
  String get importSourceZip => 'ZIP File (Compressed Folders)';

  @override
  String importFolderSuccess(num files, num entries) {
    return 'Imported $files files and $entries entries.';
  }

  @override
  String importErrorMessage(String error) {
    return 'Failed to import file:\\n$error';
  }

  @override
  String get importFailed => 'Import Failed';

  @override
  String importFile(String fileName) {
    return 'File: $fileName';
  }

  @override
  String get importJsonFile => 'Import JSON File';

  @override
  String get importJsonFilePrompt => 'Please import a JSON file';

  @override
  String importSkipped(int count) {
    return 'Skipped: $count items';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count items';
  }

  @override
  String get importing => 'Importing material...';

  @override
  String get inputModeTitle => 'Input';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Please enter a valid email.';

  @override
  String get kakaoContinue => 'Continue with Kakao';

  @override
  String get labelLangCode => 'Language Code (e.g. en-US, ko-KR)';

  @override
  String get labelName => 'Name';

  @override
  String get labelNote => 'Enter Note';

  @override
  String get labelPOS => 'Part of Speech';

  @override
  String get labelRole => 'Role';

  @override
  String get labelSentence => 'Sentence';

  @override
  String get labelSentenceCollection => 'Sentence Collection';

  @override
  String get labelSentenceType => 'Sentence Type';

  @override
  String get labelShowMemorized => 'Finished';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Word';

  @override
  String get labelWordbook => 'Wordbook';

  @override
  String get language => 'Language';

  @override
  String get languageSettings => 'Language Settings';

  @override
  String get languageSettingsTitle => 'Language Settings';

  @override
  String get libTitleFirstMeeting => 'First Meeting';

  @override
  String get libTitleGreetings1 => 'Greeting 1';

  @override
  String get libTitleNouns1 => 'Noun 1';

  @override
  String get libTitleVerbs1 => 'Verb 1';

  @override
  String get listen => 'Listen';

  @override
  String get listening => 'Listening...';

  @override
  String get loadingParticipants => 'Loading participants...';

  @override
  String get location => 'Location';

  @override
  String get login => 'Login';

  @override
  String get logout => 'Logout';

  @override
  String get logoutConfirmMessage =>
      'Are you sure you want to logout from this device?';

  @override
  String get logoutConfirmTitle => 'Logout';

  @override
  String get male => 'Male';

  @override
  String get manageParticipants => 'Manage Participants';

  @override
  String get manual => 'Manual';

  @override
  String get markAsStudied => 'Mark as Studied';

  @override
  String get materialInfo => 'Material Info';

  @override
  String get me => 'Me';

  @override
  String get menuDeviceImport => 'Import from Device';

  @override
  String get menuHelp => 'Help';

  @override
  String get menuLanguageSettings => 'Language Settings';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get menuSelectMaterialSet => 'Select Study Material Set';

  @override
  String get menuSettings => 'Language Settings';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get menuWebDownload => 'User Guide';

  @override
  String get metadataDialogTitle => 'Details';

  @override
  String get metadataFormType => 'Form Type';

  @override
  String get metadataRootWord => 'Root Word';

  @override
  String get micButtonTooltip => 'Start Listening';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Current Material Set: $name';
  }

  @override
  String get mode2Title => 'Review';

  @override
  String get mode3Next => 'Next';

  @override
  String get mode3Start => 'Start';

  @override
  String get mode3Stop => 'Stop';

  @override
  String get mode3TryAgain => 'Try Again';

  @override
  String get mySentenceCollection => 'My Sentence Collection';

  @override
  String get myWordbook => 'My Wordbook';

  @override
  String get neutral => 'Neutral';

  @override
  String get newSubjectName => 'New Subject Name';

  @override
  String get next => 'Next';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get noInternetWarningMic =>
      'No internet connection. Voice recognition may not work offline.';

  @override
  String get noInternetWarningTranslate =>
      'No internet connection. Translation is unavailable offline. Please use Review mode.';

  @override
  String get noMaterialsInCategory => 'No materials in this category.';

  @override
  String get noParticipantsFound => 'No participants found.';

  @override
  String get noRecords => 'No study records for selected language';

  @override
  String get noStudyMaterial => 'No study material found.';

  @override
  String get noTextToPlay => 'No text to play';

  @override
  String get noTranslationToSave => 'No translation to save';

  @override
  String get noVoiceDetected => 'No voice detected';

  @override
  String get notSelected => '- Not Selected -';

  @override
  String get onlineLibraryCheckInternet =>
      'Please check your internet connection or try again later.';

  @override
  String get onlineLibraryLoadFailed => 'Failed to load materials.';

  @override
  String get onlineLibraryNoMaterials => 'No materials found.';

  @override
  String get participantDeleted => 'Participant deleted.';

  @override
  String get participantRename => 'Rename Participant';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Partner Mode';

  @override
  String get password => 'Password';

  @override
  String get passwordTooShort => 'Password must be at least 6 characters.';

  @override
  String get perfect => 'Perfect!';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get playAgain => 'Play Again';

  @override
  String playbackFailed(String error) {
    return 'Playback failed: $error';
  }

  @override
  String get playing => 'Playing...';

  @override
  String get posAdjective => 'Adjective';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posConjunction => 'Conjunction';

  @override
  String get posInterjection => 'Interjection';

  @override
  String get posNoun => 'Noun';

  @override
  String get posPreposition => 'Preposition';

  @override
  String get posPronoun => 'Pronoun';

  @override
  String get posVerb => 'Verb';

  @override
  String get practiceModeTitle => 'Speaking Practice';

  @override
  String get practiceWordsOnly => 'Practice Words Only';

  @override
  String progress(int current, int total) {
    return 'Progress: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Recent $count items';
  }

  @override
  String recognitionFailed(String error) {
    return 'Speech recognition failed: $error';
  }

  @override
  String get recognized => 'Recognition complete';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String get recordDeleted => 'Record deleted successfully';

  @override
  String get refresh => 'Refresh';

  @override
  String get reset => 'Reset';

  @override
  String get resetPracticeHistory => 'Reset Practice History';

  @override
  String get retry => 'Retry?';

  @override
  String get reviewAll => 'Review All';

  @override
  String reviewCount(int count) {
    return 'Review $count time(s)';
  }

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Third Party';

  @override
  String get roleUser => 'User';

  @override
  String get save => 'Save';

  @override
  String get saveData => 'Save Data';

  @override
  String saveFailed(String error) {
    return 'Save failed: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'Save translations from search mode';

  @override
  String get saved => 'Saved';

  @override
  String get saving => 'Saving...';

  @override
  String score(String score) {
    return 'Accuracy: $score%';
  }

  @override
  String get scoreLabel => 'Score';

  @override
  String get search => 'Search';

  @override
  String get searchConditions => 'Search Conditions';

  @override
  String get searchSentenceHint => 'Search sentences...';

  @override
  String get searchWordHint => 'Search words...';

  @override
  String get sectionSentence => 'Sentence Section';

  @override
  String get sectionSentences => 'Sentences';

  @override
  String get sectionWord => 'Word Section';

  @override
  String get sectionWords => 'Words';

  @override
  String get selectExistingSubject => 'Select Existing Subject';

  @override
  String get selectMaterialPrompt => 'Please select a study material';

  @override
  String get selectMaterialSet => 'Select Study Material Set';

  @override
  String get selectPOS => 'Select POS';

  @override
  String get selectParticipants => 'Select Participants';

  @override
  String get selectSentenceType => 'Select Sentence Type';

  @override
  String get selectStudyMaterial => 'Select Study Material';

  @override
  String get sendingMessage => 'Sending message...';

  @override
  String get sentence => 'Sentence';

  @override
  String get signUp => 'Sign Up';

  @override
  String get similarTextFound => 'Similar text found';

  @override
  String get skip => 'Skip';

  @override
  String get source => 'Source:';

  @override
  String get sourceLanguage => 'Source Language';

  @override
  String get sourceLanguageLabel => 'My Language (Source)';

  @override
  String get speakNow => 'Speak now!';

  @override
  String get speaker => 'Speaker';

  @override
  String get speakerSelect => 'Select Speaker';

  @override
  String get speakingPractice => 'Speaking Practice';

  @override
  String get startChat => 'Start Chat';

  @override
  String get startPractice => 'Start Practice';

  @override
  String get startTutorial => 'Start Tutorial';

  @override
  String get startWarning => 'Warning';

  @override
  String get startsWith => 'Starts with';

  @override
  String get statusCheckEmail =>
      'Please check your email to complete authentication.';

  @override
  String statusDownloading(Object name) {
    return 'Downloading: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Import Failed: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name Imported Successfully';
  }

  @override
  String get statusLoggingIn => 'Logging in...';

  @override
  String get statusLoginCancelled => 'Login cancelled.';

  @override
  String statusLoginFailed(Object error) {
    return 'Login failed: $error';
  }

  @override
  String get statusLoginSuccess => 'Login successful.';

  @override
  String get statusLogoutSuccess => 'Logged out.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Sign up failed: $error';
  }

  @override
  String get statusSigningUp => 'Signing up...';

  @override
  String get stopPractice => 'Stop Practice';

  @override
  String get studyComplete => 'Studied';

  @override
  String studyRecords(int count) {
    return 'Study Records ($count)';
  }

  @override
  String get styleFormal => 'Formal';

  @override
  String get styleInformal => 'Informal';

  @override
  String get stylePolite => 'Polite';

  @override
  String get styleSlang => 'Slang';

  @override
  String get subject => 'Title:';

  @override
  String get swapLanguages => 'Swap Languages';

  @override
  String get switchToAi => 'Switch to AI';

  @override
  String get switchToPartner => 'Switch to Partner';

  @override
  String get syncingData => 'Syncing data...';

  @override
  String get tabConversation => 'Conversation';

  @override
  String tabReview(int count) {
    return 'Review ($count)';
  }

  @override
  String get tabSentence => 'sentence';

  @override
  String get tabSpeaking => 'Speaking';

  @override
  String tabStudyMaterial(int count) {
    return 'Study Material ($count)';
  }

  @override
  String get tabWord => 'word';

  @override
  String get tagFormal => 'Formal';

  @override
  String get tagSelection => 'Enter Tags';

  @override
  String get targetLanguage => 'Target Language';

  @override
  String get targetLanguageFilter => 'Target Language Filter:';

  @override
  String get targetLanguageLabel => 'Study Language (Target)';

  @override
  String get thinkingTimeDesc => 'Time to think before the answer is revealed.';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get timeUp => 'Time Up!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Title Tags (Materials)';

  @override
  String get tooltipDecrease => 'Decrease';

  @override
  String get tooltipIncrease => 'Increase';

  @override
  String get tooltipSearch => 'Search';

  @override
  String get tooltipSpeaking => 'Speaking';

  @override
  String get tooltipStudyReview => 'Study+Review';

  @override
  String totalRecords(int count) {
    return 'Total $count records (View All)';
  }

  @override
  String get translate => 'Translate';

  @override
  String get translating => 'Translating...';

  @override
  String get translation => 'Translation';

  @override
  String get translationComplete => 'Translation complete (save required)';

  @override
  String translationFailed(String error) {
    return 'Translation failed: $error';
  }

  @override
  String get translationLimitExceeded => 'Translation Limit Exceeded';

  @override
  String get translationLimitMessage =>
      'You have used all your free daily translations (5). Watch an ad to refill 5 immediately?';

  @override
  String get translationLoaded => 'Loaded saved translation';

  @override
  String get translationRefilled => 'Translations refilled by 5!';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialContextDesc =>
      'Add context (e.g., Morning) to distinguish similar sentences.';

  @override
  String get tutorialContextTitle => 'Context Tag';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM2DropdownDesc => 'Select study materials.';

  @override
  String get tutorialM2ImportDesc => 'Import JSON file from device folder.';

  @override
  String get tutorialM2ListDesc =>
      'Check and flip saved items. Long-press a card to delete it.';

  @override
  String get tutorialM2ListTitle => 'Study List';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2SelectDesc =>
      'Tap the top-right menu (⋮) to select a material set or visit the Online Library.';

  @override
  String get tutorialM2SelectTitle => 'Select Materials';

  @override
  String get tutorialM3IntervalDesc =>
      'Adjust the waiting time between sentences.';

  @override
  String get tutorialM3IntervalTitle => 'Interval';

  @override
  String get tutorialM3ResetDesc =>
      'You can set practice targets by selecting tags or excluding memorized items.';

  @override
  String get tutorialM3ResetTitle => 'Filter & Settings';

  @override
  String get tutorialM3SelectDesc =>
      'Choose a material set for speaking practice.';

  @override
  String get tutorialM3SelectTitle => 'Select Materials';

  @override
  String get tutorialM3StartDesc =>
      'Tap play to start listening and shadowing.';

  @override
  String get tutorialM3StartTitle => 'Start Practice';

  @override
  String get tutorialM3WordsDesc =>
      'Check this to practice only your saved words.';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialMicDesc => 'Tap the mic button to start voice input.';

  @override
  String get tutorialMicTitle => 'Voice Input';

  @override
  String get tutorialSaveDesc => 'Save your translation to study records.';

  @override
  String get tutorialSaveTitle => 'Save';

  @override
  String get tutorialSwapDesc => 'Switch between source and target languages.';

  @override
  String get tutorialTabDesc =>
      'You can select your desired learning mode here.';

  @override
  String get tutorialTapToContinue => 'Tap to continue';

  @override
  String get tutorialTransDesc => 'Tap here to translate your text.';

  @override
  String get tutorialTransTitle => 'Translate';

  @override
  String get typeExclamation => 'Exclamation';

  @override
  String get typeImperative => 'Imperative';

  @override
  String get typeQuestion => 'Question';

  @override
  String get typeStatement => 'Statement';

  @override
  String get usageLimitTitle => 'Limit Reached';

  @override
  String get useExistingText => 'Use Existing';

  @override
  String get viewOnlineGuide => 'View Online User Guide';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get watchAdAndRefill => 'Watch Ad & Refill (+5)';

  @override
  String get word => 'Word';

  @override
  String get wordDefenseDesc =>
      'Defend your base by speaking words correctly before enemies reach you.';

  @override
  String get wordDefenseTitle => 'Word Defense';

  @override
  String get wordModeLabel => 'Word Mode';

  @override
  String get yourPronunciation => 'Your Pronunciation';

  @override
  String get ttsUnsupportedNatively =>
      'This device does not natively support voice output for this language.';

  @override
  String get homeTab => 'Translation';

  @override
  String get welcomeTitle => 'Welcome to Talkie!';

  @override
  String get welcomeDesc =>
      'Welcome to Talkie! We support over 80 languages worldwide with 100% integrity and provide a perfect learning experience with new premium 3D designs and optimized performance.';

  @override
  String get welcomeButton => 'Get Started';

  @override
  String get labelDetails => 'Detail Settings';

  @override
  String get translationResult => 'Translation Result';

  @override
  String get inputContent => 'Input Content';

  @override
  String get translateNow => 'Translate Now';

  @override
  String get tooltipSettingsConfirm => 'Confirm Settings';

  @override
  String get hintNoteExample => 'e.g. context, homonyms...';

  @override
  String get hintTagExample => 'e.g. business, travel...';

  @override
  String get addNew => 'Add New';

  @override
  String get newNotebookTitle => 'New Material Set Name';

  @override
  String get enterNameHint => 'Enter name';

  @override
  String get add => 'Add';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get helpNotebook => 'Select a folder to save translated results.';

  @override
  String get helpNote => 'Record meanings, examples, or context freely.';

  @override
  String get helpTag => 'Enter keywords for categorization or searching later.';

  @override
  String get requestTranslation => 'Request Translation';

  @override
  String get statusRequestSuccess => 'Translation request submitted!';

  @override
  String statusRequestFailed(String error) {
    return 'Request failed: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Language Not Supported';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'The selected material does not support your current study language ($targetLang). Would you like to request a translation?';
  }

  @override
  String get quickStartStep1Title => '1. Set Languages';

  @override
  String get quickStartStep1Desc =>
      'First, specify your language and the language you are learning in Menu > Language Settings.';

  @override
  String get quickStartStep2Title => '2. Basic Flow';

  @override
  String get quickStartStep2Desc =>
      'Create your own learning cards in the order of Input (microphone/keyboard) -> Translation -> Save.';

  @override
  String get quickStartStep3Title => '3. Utilize Modes';

  @override
  String get quickStartStep3Desc =>
      'Practice with chat, and practice pronunciation by looking at the text and pronouncing it yourself in the Pronunciation Practice tab.';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

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
      '• Language Settings: Change via top/bottom Translate icon\n• Toggle: Switch between \'Word\' and \'Sentence\' mode\n• Voice Input: Tap mic icon to start/stop listening\n• Text Input: Type directly to translate\n• Auto-Search: Detects similar existing sentences\n• Translate: Tap button for instant translation\n• Listen: Speaker icon for TTS (Original/Translated)\n• Save: \'Save Data\' adds to history\n• Clear: Reset all inputs';

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
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc =>
      'To import study materials in Mode 3, create a JSON file with the following structure:';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get partnerMode => 'Partner Mode';

  @override
  String get manual => 'Manual';

  @override
  String get speaker => 'Speaker';

  @override
  String get switchToAi => 'Switch to AI';

  @override
  String get switchToPartner => 'Switch to Partner';

  @override
  String get currentLocation => 'Current Location';

  @override
  String get location => 'Location';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Me';

  @override
  String get currentMaterialLabel => 'Current Selected Material:';

  @override
  String get basicMaterialRepository => 'Basic Repository';

  @override
  String get word => 'Word';

  @override
  String get sentence => 'Sentence';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Review ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Study Material ($count)';
  }

  @override
  String get mode2Title => 'Review';

  @override
  String get search => 'Search';

  @override
  String get translate => 'Translate';

  @override
  String get listen => 'Listen';

  @override
  String get saveData => 'Save Data';

  @override
  String get saved => 'Saved';

  @override
  String get delete => 'Delete';

  @override
  String get materialInfo => 'Material Info';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Refresh';

  @override
  String studyRecords(int count) {
    return 'Study Records ($count)';
  }

  @override
  String get targetLanguageFilter => 'Target Language Filter:';

  @override
  String get noRecords => 'No study records for selected language';

  @override
  String get saveTranslationsFromSearch => 'Save translations from search mode';

  @override
  String get flip => 'Show';

  @override
  String get hide => 'Hide';

  @override
  String get deleteRecord => 'Delete Record';

  @override
  String get confirmDelete =>
      'Are you sure you want to delete this study record?';

  @override
  String get recordDeleted => 'Record deleted successfully';

  @override
  String deleteFailed(String error) {
    return 'Delete failed: $error';
  }

  @override
  String get importJsonFile => 'Import JSON File';

  @override
  String get importing => 'Importing...';

  @override
  String get importComplete => 'Import Complete';

  @override
  String get importFailed => 'Import Failed';

  @override
  String importFile(String fileName) {
    return 'File: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count items';
  }

  @override
  String importAdded(int count) {
    return 'Added: $count items';
  }

  @override
  String importSkipped(int count) {
    return 'Skipped: $count items';
  }

  @override
  String get errors => 'Errors:';

  @override
  String get error => 'Error';

  @override
  String importErrorMessage(String error) {
    return 'Failed to import file:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Select Study Material';

  @override
  String get subject => 'Subject:';

  @override
  String get source => 'Source:';

  @override
  String get file => 'File:';

  @override
  String progress(int current, int total) {
    return 'Progress: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Please import a JSON file';

  @override
  String get selectMaterialPrompt => 'Please select a study material';

  @override
  String get studyComplete => 'Studied';

  @override
  String get markAsStudied => 'Mark as Studied';

  @override
  String get listening => 'Listening...';

  @override
  String get recognized => 'Recognition complete';

  @override
  String recognitionFailed(String error) {
    return 'Speech recognition failed: $error';
  }

  @override
  String get checking => 'Checking...';

  @override
  String get translating => 'Translating...';

  @override
  String get translationComplete => 'Translation complete (save required)';

  @override
  String get translationLoaded => 'Loaded saved translation';

  @override
  String translationFailed(String error) {
    return 'Translation failed: $error';
  }

  @override
  String get enterTextToTranslate => 'Please enter text to translate';

  @override
  String get saving => 'Saving...';

  @override
  String get noTranslationToSave => 'No translation to save';

  @override
  String saveFailed(String error) {
    return 'Save failed: $error';
  }

  @override
  String get playing => 'Playing...';

  @override
  String get noTextToPlay => 'No text to play';

  @override
  String playbackFailed(String error) {
    return 'Playback failed: $error';
  }

  @override
  String get sourceLanguage => 'Source Language';

  @override
  String get targetLanguage => 'Target Language';

  @override
  String get similarTextFound => 'Similar text found';

  @override
  String get useExistingText => 'Use Existing';

  @override
  String get createNew => 'Create New Entry';

  @override
  String reviewCount(int count) {
    return 'Review $count time(s)';
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
  String get startTutorial => 'Start Tutorial';

  @override
  String get tutorialMicTitle => 'Voice Input';

  @override
  String get tutorialMicDesc => 'Tap the mic button to start voice input.';

  @override
  String get tutorialTabDesc =>
      'You can select your desired learning mode here.';

  @override
  String get tutorialTapToContinue => 'Tap to continue';

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
      'Long-press this card to delete it. Check your saved sentences and flip them.';

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

  @override
  String get tooltipSearch => 'Search';

  @override
  String get tooltipStudyReview => 'Study+Review';

  @override
  String get tooltipSpeaking => 'Speaking';

  @override
  String get tooltipDecrease => 'Decrease';

  @override
  String get tooltipIncrease => 'Increase';

  @override
  String get languageSettings => 'Language Settings';

  @override
  String get tutorialM2DropdownDesc => 'Select study materials.';

  @override
  String get tutorialM2ImportDesc => 'Import JSON file from device folder.';

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
  String get tutorialContextTitle => 'Context Tag';

  @override
  String get tutorialContextDesc =>
      'Add context (e.g., Morning) to distinguish similar sentences.';

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
  String get usageLimitTitle => 'Limit Reached';

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
  String get menuSettings => 'Language Settings';

  @override
  String get basicWords => 'Basic Word Repository';

  @override
  String get basicSentences => 'Basic Sentence Repository';

  @override
  String get selectMaterialSet => 'Select Study Material Set';

  @override
  String get sectionWords => 'Words';

  @override
  String get sectionSentences => 'Sentences';

  @override
  String get languageSettingsTitle => 'Language Settings';

  @override
  String get sourceLanguageLabel => 'My Language (Source)';

  @override
  String get targetLanguageLabel => 'Study Language (Target)';

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
  String get tutorialSwapDesc => 'Switch between source and target languages.';

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
  String get menuSelectMaterialSet => 'Select Study Material Set';

  @override
  String get sectionWord => 'Word Section';

  @override
  String get sectionSentence => 'Sentence Section';

  @override
  String get tabWord => 'word';

  @override
  String get tabSentence => 'sentence';

  @override
  String get errorProfanity =>
      'Translation cannot be processed due to profanity.';

  @override
  String get errorHateSpeech =>
      'Translation cannot be processed due to hate speech.';

  @override
  String get errorSexualContent =>
      'Translation cannot be processed due to sexual content.';

  @override
  String get errorOtherSafety => 'Translation was blocked by AI safety policy.';

  @override
  String get clearAll => 'Clear All';

  @override
  String get disambiguationTitle => 'Select Meaning';

  @override
  String get disambiguationPrompt => 'Which meaning do you intend?';

  @override
  String get skip => 'Skip';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Conversation History';

  @override
  String get chatNewChat => 'New Chat';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return 'From Conversation ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => 'Untitled Conversation';

  @override
  String get chatAiChat => 'AI Chat';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Current Material Set: $name';
  }

  @override
  String get basicWordRepository => 'Basic Word Repository';

  @override
  String get basicSentenceRepository => 'Basic Sentence Repository';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'Save & Exit';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';
}

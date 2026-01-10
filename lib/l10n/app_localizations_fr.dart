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
  String get tutorialTabDesc =>
      'Vous pouvez sélectionner le mode d\'apprentissage souhaité ici.';

  @override
  String get tutorialTapToContinue => 'Appuyez pour continuer';

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
}

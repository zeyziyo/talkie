import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('af'),
    Locale('ar'),
    Locale('bn'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('kn'),
    Locale('ko'),
    Locale('ml'),
    Locale('mr'),
    Locale('ms'),
    Locale('nl'),
    Locale('no'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW')
  ];

  /// Application title
  ///
  /// In en, this message translates to:
  /// **'Talkie'**
  String get appTitle;

  /// Review tab label with count
  ///
  /// In en, this message translates to:
  /// **'Review ({count})'**
  String tabReview(int count);

  /// Study material tab label with count
  ///
  /// In en, this message translates to:
  /// **'Study Material ({count})'**
  String tabStudyMaterial(int count);

  /// Mode 2 title for help dialog
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get mode2Title;

  /// Search mode label
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// Translate button
  ///
  /// In en, this message translates to:
  /// **'Translate'**
  String get translate;

  /// Listen/TTS button
  ///
  /// In en, this message translates to:
  /// **'Listen'**
  String get listen;

  /// Save translation button
  ///
  /// In en, this message translates to:
  /// **'Save Data'**
  String get saveData;

  /// Data saved status
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get saved;

  /// Delete button
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Title for material metadata section
  ///
  /// In en, this message translates to:
  /// **'Material Info'**
  String get materialInfo;

  /// Cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Confirm/OK button
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get confirm;

  /// Refresh button
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// Study records title with count
  ///
  /// In en, this message translates to:
  /// **'Study Records ({count})'**
  String studyRecords(int count);

  /// Language filter label
  ///
  /// In en, this message translates to:
  /// **'Target Language Filter:'**
  String get targetLanguageFilter;

  /// Empty state message
  ///
  /// In en, this message translates to:
  /// **'No study records for selected language'**
  String get noRecords;

  /// Instruction to save data
  ///
  /// In en, this message translates to:
  /// **'Save translations from search mode'**
  String get saveTranslationsFromSearch;

  /// Show translation button
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get flip;

  /// Hide translation button
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get hide;

  /// Delete record dialog title
  ///
  /// In en, this message translates to:
  /// **'Delete Record'**
  String get deleteRecord;

  /// Delete confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this study record?'**
  String get confirmDelete;

  /// Delete success message
  ///
  /// In en, this message translates to:
  /// **'Record deleted successfully'**
  String get recordDeleted;

  /// Delete error message
  ///
  /// In en, this message translates to:
  /// **'Delete failed: {error}'**
  String deleteFailed(String error);

  /// Import JSON button
  ///
  /// In en, this message translates to:
  /// **'Import JSON File'**
  String get importJsonFile;

  /// Import in progress
  ///
  /// In en, this message translates to:
  /// **'Importing...'**
  String get importing;

  /// Import success title
  ///
  /// In en, this message translates to:
  /// **'Import Complete'**
  String get importComplete;

  /// Import error title
  ///
  /// In en, this message translates to:
  /// **'Import Failed'**
  String get importFailed;

  /// Imported file name
  ///
  /// In en, this message translates to:
  /// **'File: {fileName}'**
  String importFile(String fileName);

  /// Total import count
  ///
  /// In en, this message translates to:
  /// **'Total: {count} items'**
  String importTotal(int count);

  /// Successfully imported count
  ///
  /// In en, this message translates to:
  /// **'Added: {count} items'**
  String importAdded(int count);

  /// Skipped import count
  ///
  /// In en, this message translates to:
  /// **'Skipped: {count} items'**
  String importSkipped(int count);

  /// Error section label
  ///
  /// In en, this message translates to:
  /// **'Errors:'**
  String get errors;

  /// Error dialog title
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// Import error message
  ///
  /// In en, this message translates to:
  /// **'Failed to import file:\\n{error}'**
  String importErrorMessage(String error);

  /// Study material selector label
  ///
  /// In en, this message translates to:
  /// **'Select Study Material'**
  String get selectStudyMaterial;

  /// Subject label
  ///
  /// In en, this message translates to:
  /// **'Subject:'**
  String get subject;

  /// Source label
  ///
  /// In en, this message translates to:
  /// **'Source:'**
  String get source;

  /// File label
  ///
  /// In en, this message translates to:
  /// **'File:'**
  String get file;

  /// Progress indicator
  ///
  /// In en, this message translates to:
  /// **'Progress: {current} / {total}'**
  String progress(int current, int total);

  /// Empty state prompt
  ///
  /// In en, this message translates to:
  /// **'Please import a JSON file'**
  String get importJsonFilePrompt;

  /// Selection prompt
  ///
  /// In en, this message translates to:
  /// **'Please select a study material'**
  String get selectMaterialPrompt;

  /// Study complete button text
  ///
  /// In en, this message translates to:
  /// **'Studied'**
  String get studyComplete;

  /// Mark study button text
  ///
  /// In en, this message translates to:
  /// **'Mark as Studied'**
  String get markAsStudied;

  /// STT listening status
  ///
  /// In en, this message translates to:
  /// **'Listening...'**
  String get listening;

  /// STT complete status
  ///
  /// In en, this message translates to:
  /// **'Recognition complete'**
  String get recognized;

  /// STT error message
  ///
  /// In en, this message translates to:
  /// **'Speech recognition failed: {error}'**
  String recognitionFailed(String error);

  /// Checking for duplicates
  ///
  /// In en, this message translates to:
  /// **'Checking...'**
  String get checking;

  /// Translation in progress
  ///
  /// In en, this message translates to:
  /// **'Translating...'**
  String get translating;

  /// Translation done status
  ///
  /// In en, this message translates to:
  /// **'Translation complete (save required)'**
  String get translationComplete;

  /// Existing translation loaded
  ///
  /// In en, this message translates to:
  /// **'Loaded saved translation'**
  String get translationLoaded;

  /// Translation error
  ///
  /// In en, this message translates to:
  /// **'Translation failed: {error}'**
  String translationFailed(String error);

  /// Empty input warning
  ///
  /// In en, this message translates to:
  /// **'Please enter text to translate'**
  String get enterTextToTranslate;

  /// Save in progress
  ///
  /// In en, this message translates to:
  /// **'Saving...'**
  String get saving;

  /// Save error - no data
  ///
  /// In en, this message translates to:
  /// **'No translation to save'**
  String get noTranslationToSave;

  /// Save error message
  ///
  /// In en, this message translates to:
  /// **'Save failed: {error}'**
  String saveFailed(String error);

  /// TTS playing status
  ///
  /// In en, this message translates to:
  /// **'Playing...'**
  String get playing;

  /// TTS error - no text
  ///
  /// In en, this message translates to:
  /// **'No text to play'**
  String get noTextToPlay;

  /// TTS error message
  ///
  /// In en, this message translates to:
  /// **'Playback failed: {error}'**
  String playbackFailed(String error);

  /// Source language label
  ///
  /// In en, this message translates to:
  /// **'Source Language'**
  String get sourceLanguage;

  /// Target language label
  ///
  /// In en, this message translates to:
  /// **'Target Language'**
  String get targetLanguage;

  /// Duplicate detection title
  ///
  /// In en, this message translates to:
  /// **'Similar text found'**
  String get similarTextFound;

  /// Use existing text button
  ///
  /// In en, this message translates to:
  /// **'Use Existing'**
  String get useExistingText;

  /// Create new entry button
  ///
  /// In en, this message translates to:
  /// **'Create New Entry'**
  String get createNew;

  /// Review count display
  ///
  /// In en, this message translates to:
  /// **'Review {count} time(s)'**
  String reviewCount(int count);

  /// No description provided for @tabSpeaking.
  ///
  /// In en, this message translates to:
  /// **'Speaking'**
  String get tabSpeaking;

  /// No description provided for @speakingPractice.
  ///
  /// In en, this message translates to:
  /// **'Speaking Practice'**
  String get speakingPractice;

  /// No description provided for @intervalSeconds.
  ///
  /// In en, this message translates to:
  /// **'Interval: {seconds}s'**
  String intervalSeconds(int seconds);

  /// No description provided for @yourPronunciation.
  ///
  /// In en, this message translates to:
  /// **'Your Pronunciation'**
  String get yourPronunciation;

  /// No description provided for @correctAnswer.
  ///
  /// In en, this message translates to:
  /// **'Correct Answer'**
  String get correctAnswer;

  /// No description provided for @score.
  ///
  /// In en, this message translates to:
  /// **'Accuracy: {score}%'**
  String score(String score);

  /// No description provided for @perfect.
  ///
  /// In en, this message translates to:
  /// **'Perfect!'**
  String get perfect;

  /// No description provided for @good.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get good;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// No description provided for @startPractice.
  ///
  /// In en, this message translates to:
  /// **'Start Practice'**
  String get startPractice;

  /// No description provided for @stopPractice.
  ///
  /// In en, this message translates to:
  /// **'Stop Practice'**
  String get stopPractice;

  /// No description provided for @helpTitle.
  ///
  /// In en, this message translates to:
  /// **'Help & Guide'**
  String get helpTitle;

  /// No description provided for @helpTabModes.
  ///
  /// In en, this message translates to:
  /// **'Modes'**
  String get helpTabModes;

  /// No description provided for @helpTabJson.
  ///
  /// In en, this message translates to:
  /// **'JSON Format'**
  String get helpTabJson;

  /// No description provided for @helpTabTour.
  ///
  /// In en, this message translates to:
  /// **'Tour'**
  String get helpTabTour;

  /// No description provided for @helpMode1Desc.
  ///
  /// In en, this message translates to:
  /// **'Recognize voice, translate to target language, and listen to the result.'**
  String get helpMode1Desc;

  /// No description provided for @helpMode1Details.
  ///
  /// In en, this message translates to:
  /// **'• Language Settings: Change language via top Translate icon\n• Help: Check guide via top Help icon\n• Voice Input: Tap mic icon to start/stop listening\n• Text Input: Type directly to translate\n• Auto-Search: Detects similar existing sentences\n• Translate: Tap button for instant translation\n• Listen: Speaker icon for TTS (Original/Translated)\n• Save: \'Save Data\' adds to history\n• Clear: Reset all inputs'**
  String get helpMode1Details;

  /// No description provided for @helpMode2Desc.
  ///
  /// In en, this message translates to:
  /// **'Review saved sentences with auto-hide translations and track your review count.'**
  String get helpMode2Desc;

  /// No description provided for @helpMode2Details.
  ///
  /// In en, this message translates to:
  /// **'• Select Material: Choose specific set or \'Review All\'\n• Flip Card: Use \'Show/Hide\' to check translation\n• Listen: Play TTS for specific sentence\n• Mark Studied: Checkmark (V) for completed items\n• Delete: Long-press card to remove record\n• Filter: View all or filter by material'**
  String get helpMode2Details;

  /// No description provided for @helpMode3Desc.
  ///
  /// In en, this message translates to:
  /// **'Practice speaking by listening to and shadowing sentences.'**
  String get helpMode3Desc;

  /// No description provided for @helpMode3Details.
  ///
  /// In en, this message translates to:
  /// **'• Select Material: Choose learning pack\n• Interval: [-] [+] to adjust wait time (3s-60s)\n• Start/Stop: Control shadowing session\n• Speak: Listen to audio and repeat after it\n• Feedback: Accuracy score (0-100) with color code\n• Retry: Use retry button if voice not detected'**
  String get helpMode3Details;

  /// No description provided for @helpJsonDesc.
  ///
  /// In en, this message translates to:
  /// **'To import study materials in Mode 3, create a JSON file with the following structure:'**
  String get helpJsonDesc;

  /// No description provided for @helpTourDesc.
  ///
  /// In en, this message translates to:
  /// **'The **Highlight Circle** will guide you through the main features.\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)'**
  String get helpTourDesc;

  /// No description provided for @startTutorial.
  ///
  /// In en, this message translates to:
  /// **'Start Tutorial'**
  String get startTutorial;

  /// No description provided for @tutorialMicTitle.
  ///
  /// In en, this message translates to:
  /// **'Voice Input'**
  String get tutorialMicTitle;

  /// No description provided for @tutorialMicDesc.
  ///
  /// In en, this message translates to:
  /// **'Tap the mic button to start voice input.'**
  String get tutorialMicDesc;

  /// No description provided for @tutorialTabDesc.
  ///
  /// In en, this message translates to:
  /// **'You can select your desired learning mode here.'**
  String get tutorialTabDesc;

  /// No description provided for @tutorialTapToContinue.
  ///
  /// In en, this message translates to:
  /// **'Tap to continue'**
  String get tutorialTapToContinue;

  /// No description provided for @tutorialTransTitle.
  ///
  /// In en, this message translates to:
  /// **'Translate'**
  String get tutorialTransTitle;

  /// No description provided for @tutorialTransDesc.
  ///
  /// In en, this message translates to:
  /// **'Tap here to translate your text.'**
  String get tutorialTransDesc;

  /// No description provided for @tutorialSaveTitle.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get tutorialSaveTitle;

  /// No description provided for @tutorialSaveDesc.
  ///
  /// In en, this message translates to:
  /// **'Save your translation to study records.'**
  String get tutorialSaveDesc;

  /// No description provided for @tutorialM2SelectTitle.
  ///
  /// In en, this message translates to:
  /// **'Select & Filter'**
  String get tutorialM2SelectTitle;

  /// No description provided for @tutorialM2SelectDesc.
  ///
  /// In en, this message translates to:
  /// **'Choose study materials or switch to \'Review All\'.'**
  String get tutorialM2SelectDesc;

  /// No description provided for @tutorialM2ListTitle.
  ///
  /// In en, this message translates to:
  /// **'Study List'**
  String get tutorialM2ListTitle;

  /// No description provided for @tutorialM2ListDesc.
  ///
  /// In en, this message translates to:
  /// **'Long-press this card to delete it. Check your saved sentences and flip them.'**
  String get tutorialM2ListDesc;

  /// No description provided for @tutorialM3SelectTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Material'**
  String get tutorialM3SelectTitle;

  /// No description provided for @tutorialM3SelectDesc.
  ///
  /// In en, this message translates to:
  /// **'Choose a material set for speaking practice.'**
  String get tutorialM3SelectDesc;

  /// No description provided for @tutorialM3IntervalTitle.
  ///
  /// In en, this message translates to:
  /// **'Interval'**
  String get tutorialM3IntervalTitle;

  /// No description provided for @tutorialM3IntervalDesc.
  ///
  /// In en, this message translates to:
  /// **'Adjust the waiting time between sentences.'**
  String get tutorialM3IntervalDesc;

  /// No description provided for @tutorialM3StartTitle.
  ///
  /// In en, this message translates to:
  /// **'Start Practice'**
  String get tutorialM3StartTitle;

  /// No description provided for @tutorialM3StartDesc.
  ///
  /// In en, this message translates to:
  /// **'Tap play to start listening and shadowing.'**
  String get tutorialM3StartDesc;

  /// No description provided for @startWarning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get startWarning;

  /// No description provided for @noVoiceDetected.
  ///
  /// In en, this message translates to:
  /// **'No voice detected'**
  String get noVoiceDetected;

  /// No description provided for @tooltipSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get tooltipSearch;

  /// No description provided for @tooltipStudyReview.
  ///
  /// In en, this message translates to:
  /// **'Study+Review'**
  String get tooltipStudyReview;

  /// No description provided for @tooltipSpeaking.
  ///
  /// In en, this message translates to:
  /// **'Speaking'**
  String get tooltipSpeaking;

  /// No description provided for @tooltipDecrease.
  ///
  /// In en, this message translates to:
  /// **'Decrease'**
  String get tooltipDecrease;

  /// No description provided for @tooltipIncrease.
  ///
  /// In en, this message translates to:
  /// **'Increase'**
  String get tooltipIncrease;

  /// No description provided for @languageSettings.
  ///
  /// In en, this message translates to:
  /// **'Language Settings'**
  String get languageSettings;

  /// No description provided for @tutorialM2DropdownDesc.
  ///
  /// In en, this message translates to:
  /// **'Select study materials.'**
  String get tutorialM2DropdownDesc;

  /// No description provided for @tutorialM2ImportDesc.
  ///
  /// In en, this message translates to:
  /// **'Import JSON file from device folder.'**
  String get tutorialM2ImportDesc;

  /// No description provided for @tutorialLangSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Language Settings'**
  String get tutorialLangSettingsTitle;

  /// No description provided for @tutorialLangSettingsDesc.
  ///
  /// In en, this message translates to:
  /// **'Configure source and target languages for translation.'**
  String get tutorialLangSettingsDesc;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard!'**
  String get copiedToClipboard;

  /// No description provided for @tutorialContextTitle.
  ///
  /// In en, this message translates to:
  /// **'Context Tag'**
  String get tutorialContextTitle;

  /// No description provided for @tutorialContextDesc.
  ///
  /// In en, this message translates to:
  /// **'Add context (e.g., Morning) to distinguish similar sentences.'**
  String get tutorialContextDesc;

  /// No description provided for @tutorialM1ToggleTitle.
  ///
  /// In en, this message translates to:
  /// **'Word/Sentence Mode'**
  String get tutorialM1ToggleTitle;

  /// No description provided for @tutorialM1ToggleDesc.
  ///
  /// In en, this message translates to:
  /// **'Switch between Word and Sentence mode here. Words are saved with larger text.'**
  String get tutorialM1ToggleDesc;

  /// No description provided for @tutorialM3WordsTitle.
  ///
  /// In en, this message translates to:
  /// **'Practice Words'**
  String get tutorialM3WordsTitle;

  /// No description provided for @tutorialM3WordsDesc.
  ///
  /// In en, this message translates to:
  /// **'Check this to practice only your saved words.'**
  String get tutorialM3WordsDesc;

  /// No description provided for @labelType.
  ///
  /// In en, this message translates to:
  /// **'Type:'**
  String get labelType;

  /// No description provided for @labelWord.
  ///
  /// In en, this message translates to:
  /// **'Word'**
  String get labelWord;

  /// No description provided for @labelSentence.
  ///
  /// In en, this message translates to:
  /// **'Sentence'**
  String get labelSentence;

  /// No description provided for @contextTagLabel.
  ///
  /// In en, this message translates to:
  /// **'Context/Situation (Optional) - Ex: Morning greeting, polite form'**
  String get contextTagLabel;

  /// No description provided for @contextTagHint.
  ///
  /// In en, this message translates to:
  /// **'Describe situation for easier classification later'**
  String get contextTagHint;

  /// No description provided for @translationLimitExceeded.
  ///
  /// In en, this message translates to:
  /// **'Translation Limit Exceeded'**
  String get translationLimitExceeded;

  /// No description provided for @translationLimitMessage.
  ///
  /// In en, this message translates to:
  /// **'You have used all your free daily translations (5). Watch an ad to refill 5 immediately?'**
  String get translationLimitMessage;

  /// No description provided for @watchAdAndRefill.
  ///
  /// In en, this message translates to:
  /// **'Watch Ad & Refill (+5)'**
  String get watchAdAndRefill;

  /// No description provided for @translationRefilled.
  ///
  /// In en, this message translates to:
  /// **'Translations refilled by 5!'**
  String get translationRefilled;

  /// No description provided for @adLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading ad, please try again in a moment.'**
  String get adLoading;

  /// No description provided for @reviewAll.
  ///
  /// In en, this message translates to:
  /// **'Review All'**
  String get reviewAll;

  /// No description provided for @totalRecords.
  ///
  /// In en, this message translates to:
  /// **'Total {count} records (View All)'**
  String totalRecords(int count);

  /// No description provided for @filterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get filterAll;

  /// No description provided for @practiceWordsOnly.
  ///
  /// In en, this message translates to:
  /// **'Practice Words Only'**
  String get practiceWordsOnly;

  /// No description provided for @resetPracticeHistory.
  ///
  /// In en, this message translates to:
  /// **'Reset Practice History'**
  String get resetPracticeHistory;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry?'**
  String get retry;

  /// No description provided for @noStudyMaterial.
  ///
  /// In en, this message translates to:
  /// **'No study material found.'**
  String get noStudyMaterial;

  /// No description provided for @gameOver.
  ///
  /// In en, this message translates to:
  /// **'Game Over'**
  String get gameOver;

  /// No description provided for @playAgain.
  ///
  /// In en, this message translates to:
  /// **'Play Again'**
  String get playAgain;

  /// No description provided for @speakNow.
  ///
  /// In en, this message translates to:
  /// **'Speak now!'**
  String get speakNow;

  /// No description provided for @scoreLabel.
  ///
  /// In en, this message translates to:
  /// **'Score'**
  String get scoreLabel;

  /// No description provided for @viewOnlineGuide.
  ///
  /// In en, this message translates to:
  /// **'View Online User Guide'**
  String get viewOnlineGuide;

  /// No description provided for @getMaterials.
  ///
  /// In en, this message translates to:
  /// **'Get Materials'**
  String get getMaterials;

  /// No description provided for @swapLanguages.
  ///
  /// In en, this message translates to:
  /// **'Swap Languages'**
  String get swapLanguages;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @thinkingTimeInterval.
  ///
  /// In en, this message translates to:
  /// **'Thinking Time Interval'**
  String get thinkingTimeInterval;

  /// No description provided for @thinkingTimeDesc.
  ///
  /// In en, this message translates to:
  /// **'Time to think before the answer is revealed.'**
  String get thinkingTimeDesc;

  /// No description provided for @autoPlay.
  ///
  /// In en, this message translates to:
  /// **'Auto-Play'**
  String get autoPlay;

  /// No description provided for @timeUp.
  ///
  /// In en, this message translates to:
  /// **'Time Up!'**
  String get timeUp;

  /// No description provided for @gameModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Game Mode'**
  String get gameModeTitle;

  /// No description provided for @gameModeDesc.
  ///
  /// In en, this message translates to:
  /// **'Choose your practice mode'**
  String get gameModeDesc;

  /// No description provided for @wordDefenseTitle.
  ///
  /// In en, this message translates to:
  /// **'Word Defense'**
  String get wordDefenseTitle;

  /// No description provided for @wordDefenseDesc.
  ///
  /// In en, this message translates to:
  /// **'Defend your base by speaking words correctly before enemies reach you.'**
  String get wordDefenseDesc;

  /// No description provided for @dialogueQuestTitle.
  ///
  /// In en, this message translates to:
  /// **'Dialogue Quest'**
  String get dialogueQuestTitle;

  /// No description provided for @dialogueQuestDesc.
  ///
  /// In en, this message translates to:
  /// **'Roleplay in scenarios. Choose the right response and speak it aloud.'**
  String get dialogueQuestDesc;

  /// No description provided for @micButtonTooltip.
  ///
  /// In en, this message translates to:
  /// **'Start Listening'**
  String get micButtonTooltip;

  /// No description provided for @enterTextHint.
  ///
  /// In en, this message translates to:
  /// **'Enter text to translate'**
  String get enterTextHint;

  /// No description provided for @wordModeLabel.
  ///
  /// In en, this message translates to:
  /// **'Word Mode'**
  String get wordModeLabel;

  /// No description provided for @accuracy.
  ///
  /// In en, this message translates to:
  /// **'Accuracy'**
  String get accuracy;

  /// No description provided for @basicDefault.
  ///
  /// In en, this message translates to:
  /// **'Basic (Default)'**
  String get basicDefault;

  /// No description provided for @basic.
  ///
  /// In en, this message translates to:
  /// **'Basic'**
  String get basic;

  /// No description provided for @menuHelp.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get menuHelp;

  /// No description provided for @menuWebDownload.
  ///
  /// In en, this message translates to:
  /// **'Get Material from Web'**
  String get menuWebDownload;

  /// No description provided for @menuDeviceImport.
  ///
  /// In en, this message translates to:
  /// **'Import from Device'**
  String get menuDeviceImport;

  /// No description provided for @menuSettings.
  ///
  /// In en, this message translates to:
  /// **'Language Settings'**
  String get menuSettings;

  /// No description provided for @languageSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Language Settings'**
  String get languageSettingsTitle;

  /// No description provided for @sourceLanguageLabel.
  ///
  /// In en, this message translates to:
  /// **'My Language (Source)'**
  String get sourceLanguageLabel;

  /// No description provided for @targetLanguageLabel.
  ///
  /// In en, this message translates to:
  /// **'Study Language (Target)'**
  String get targetLanguageLabel;

  /// No description provided for @mode3Start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get mode3Start;

  /// No description provided for @mode3Stop.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get mode3Stop;

  /// No description provided for @mode3Next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get mode3Next;

  /// No description provided for @mode3TryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get mode3TryAgain;

  /// No description provided for @tutorialSwapDesc.
  ///
  /// In en, this message translates to:
  /// **'Switch between source and target languages.'**
  String get tutorialSwapDesc;

  /// No description provided for @recognizedText.
  ///
  /// In en, this message translates to:
  /// **'Recognized Text:'**
  String get recognizedText;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'af',
        'ar',
        'bn',
        'cs',
        'da',
        'de',
        'el',
        'en',
        'es',
        'fa',
        'fi',
        'fil',
        'fr',
        'gu',
        'he',
        'hi',
        'hu',
        'id',
        'it',
        'ja',
        'kn',
        'ko',
        'ml',
        'mr',
        'ms',
        'nl',
        'no',
        'pa',
        'pl',
        'pt',
        'ro',
        'ru',
        'sv',
        'sw',
        'ta',
        'te',
        'th',
        'tr',
        'uk',
        'ur',
        'vi',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hu':
      return AppLocalizationsHu();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}

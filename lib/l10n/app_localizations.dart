import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';

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
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('ja'),
    Locale('ko')
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
  /// **'Flip'**
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
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es', 'fr', 'ja', 'ko'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}

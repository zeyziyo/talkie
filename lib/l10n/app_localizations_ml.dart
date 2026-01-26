// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'അവലോകനം ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'മെറ്റീരിയൽ ($count)';
  }

  @override
  String get mode2Title => 'അവലോകനം';

  @override
  String get search => 'തിരയുക';

  @override
  String get translate => 'വിവർത്തനം';

  @override
  String get listen => 'കേൾക്കുക';

  @override
  String get saveData => 'സേവ് ചെയ്യുക';

  @override
  String get saved => 'സേവ് ചെയ്തു';

  @override
  String get delete => 'നീക്കം ചെയ്യുക';

  @override
  String get materialInfo => 'മെറ്റീരിയൽ വിവരം';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get confirm => 'ശരി';

  @override
  String get refresh => 'പുതുക്കുക';

  @override
  String studyRecords(int count) {
    return 'രേഖകൾ ($count)';
  }

  @override
  String get targetLanguageFilter => 'ലക്ഷ്യ ഭാഷ ഫിൽട്ടർ:';

  @override
  String get noRecords => 'തിരഞ്ഞെടുത്ത ഭാഷയ്ക്ക് രേഖകളില്ല';

  @override
  String get saveTranslationsFromSearch => 'തിരയൽ മോഡിൽ നിന്ന് വിവർത്തനങ്ങൾ സേവ് ചെയ്യുക';

  @override
  String get flip => 'മറിക്കുക';

  @override
  String get hide => 'മറയ്ക്കുക';

  @override
  String get deleteRecord => 'രേഖ നീക്കം ചെയ്യുക';

  @override
  String get confirmDelete => 'ഈ രേഖ നീക്കം ചെയ്യാൻ ആഗ്രഹിക്കുന്നുണ്ടോ?';

  @override
  String get recordDeleted => 'രേഖ വിജയകരമായി നീക്കം ചെയ്തു';

  @override
  String deleteFailed(String error) {
    return 'നീക്കം ചെയ്യൽ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get importJsonFile => 'JSON ഇറക്കുമതി';

  @override
  String get importing => 'ഇറക്കുമതി ചെയ്യുന്നു...';

  @override
  String get importComplete => 'ഇറക്കുമതി പൂർത്തിയായി';

  @override
  String get importFailed => 'ഇറക്കുമതി പരാജയപ്പെട്ടു';

  @override
  String importFile(String fileName) {
    return 'ഫയൽ: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'ആകെ: $count';
  }

  @override
  String importAdded(int count) {
    return 'ചേർത്തത്: $count';
  }

  @override
  String importSkipped(int count) {
    return 'ഒഴിവാക്കിയത്: $count';
  }

  @override
  String get errors => 'പിശകുകൾ:';

  @override
  String get error => 'പിശക്';

  @override
  String importErrorMessage(String error) {
    return 'ഫയൽ ഇറക്കുമതി ചെയ്യുന്നതിൽ പരാജയപ്പെട്ടു:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'മെറ്റീരിയൽ തിരഞ്ഞെടുക്കുക';

  @override
  String get subject => 'വിഷയം:';

  @override
  String get source => 'ഉറവിടം:';

  @override
  String get file => 'ഫയൽ:';

  @override
  String progress(int current, int total) {
    return 'പുരോഗതി: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'ദയവായി JSON ഫയൽ ഇറക്കുമതി ചെയ്യുക';

  @override
  String get selectMaterialPrompt => 'ദയവായി പഠന സാമഗ്രികൾ തിരഞ്ഞെടുക്കുക';

  @override
  String get studyComplete => 'പഠിച്ചു';

  @override
  String get markAsStudied => 'പഠിച്ചതായി അടയാളപ്പെടുത്തുക';

  @override
  String get listening => 'കേൾക്കുന്നു...';

  @override
  String get recognized => 'തിരിച്ചറിയൽ പൂർത്തിയായി';

  @override
  String recognitionFailed(String error) {
    return 'ശബ്ദ തിരിച്ചറിയൽ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get checking => 'പരിശോധിക്കുന്നു...';

  @override
  String get translating => 'വിവർത്തനം ചെയ്യുന്നു...';

  @override
  String get translationComplete => 'വിവർത്തനം പൂർത്തിയായി (സേവ് ചെയ്യണം)';

  @override
  String get translationLoaded => 'സേവ് ചെയ്ത വിവർത്തനം ലോഡ് ചെയ്തു';

  @override
  String translationFailed(String error) {
    return 'വിവർത്തനം പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get enterTextToTranslate => 'വിവർത്തനം ചെയ്യാൻ ടെക്സ്റ്റ് നൽകുക';

  @override
  String get saving => 'സേവ് ചെയ്യുന്നു...';

  @override
  String get noTranslationToSave => 'സേവ് ചെയ്യാൻ വിവർത്തനമില്ല';

  @override
  String saveFailed(String error) {
    return 'സേവ് ചെയ്യുന്നത് പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get playing => 'പ്ലേ ചെയ്യുന്നു...';

  @override
  String get noTextToPlay => 'പ്ലേ ചെയ്യാൻ ടെക്സ്റ്റ് ഇല്ല';

  @override
  String playbackFailed(String error) {
    return 'പ്ലേബാക്ക് പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get sourceLanguage => 'ഉറവിട ഭാഷ';

  @override
  String get targetLanguage => 'ലക്ഷ്യ ഭാഷ';

  @override
  String get similarTextFound => 'സമാനമായ ടെക്സ്റ്റ് കണ്ടെത്തി';

  @override
  String get useExistingText => 'നിലവിലുള്ളത് ഉപയോഗിക്കുക';

  @override
  String get createNew => 'പുതിയത് സൃഷ്ടിക്കുക';

  @override
  String reviewCount(int count) {
    return '$count തവണ അവലോകനം ചെയ്തു';
  }

  @override
  String get tabSpeaking => 'സംസാരം';

  @override
  String get speakingPractice => 'സംസാര പരിശീലനം';

  @override
  String intervalSeconds(int seconds) {
    return 'ഇടവേള: $secondsസെക്കൻഡ്';
  }

  @override
  String get yourPronunciation => 'നിങ്ങളുടെ ഉച്ചാരണം';

  @override
  String get correctAnswer => 'ശരിയായ ഉത്തരം';

  @override
  String score(String score) {
    return 'കൃത്യത: $score%';
  }

  @override
  String get perfect => 'അതികഠിനം!';

  @override
  String get good => 'നല്ലത്';

  @override
  String get tryAgain => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get startPractice => 'പരിശീലനം ആരംഭിക്കുക';

  @override
  String get stopPractice => 'നിർത്തുക';

  @override
  String get helpTitle => 'സഹായവും വഴികാട്ടിയും';

  @override
  String get helpTabModes => 'മോഡുകൾ';

  @override
  String get helpTabJson => 'JSON ഫോർമാറ്റ്';

  @override
  String get helpTabTour => 'ടൂർ';

  @override
  String get helpMode1Desc => 'ശബ്ദം തിരിച്ചറിയുക, വിവർത്തനം ചെയ്യുക, ഫലം കേൾക്കുക.';

  @override
  String get helpMode1Details => '• ശബ്ദം: ആരംഭിക്കാൻ/നിർത്താൻ മൈക്ക് ടാപ്പ് ചെയ്യുക\n• ടെക്സ്റ്റ്: വിവർത്തനം ചെയ്യാൻ നേരിട്ട് ടൈപ്പ് ചെയ്യുക\n• ഓട്ടോ-സെർച്ച്: സമാനമായ വാക്യങ്ങൾ കണ്ടെത്തുന്നു\n• വിവർത്തനം: പെട്ടെന്നുള്ള വിവർത്തന ബട്ടൺ\n• കേൾക്കുക: TTS-നുള്ള സ്പീക്കർ ഐക്കൺ\n• സേവ്: ചരിത്രത്തിലേക്ക് ചേർക്കുന്നു\n• മായ്ക്കുക: എല്ലാം പുനഃസജ്ജമാക്കുക';

  @override
  String get helpMode2Desc => 'മറഞ്ഞിരിക്കുന്ന വിവർത്തനം ഉപയോഗിച്ച് സേവ് ചെയ്ത വാക്യങ്ങൾ അവലോകനം ചെയ്യുക.';

  @override
  String get helpMode2Details => '• തിരഞ്ഞെടുക്കുക: സെറ്റ് അല്ലെങ്കിൽ \'എല്ലാം അവലോകനം ചെയ്യുക\' തിരഞ്ഞെടുക്കുക\n• മറിക്കുക: വിവർത്തനം \'കാണിക്കുക/മറയ്ക്കുക\'\n• കേൾക്കുക: വാക്യത്തിനായി TTS പ്ലേ ചെയ്യുക\n• അടയാളപ്പെടുത്തുക: പൂർത്തിയായതിന് ടിക്ക് (V)\n• നീക്കം ചെയ്യുക: നീക്കം ചെയ്യാൻ കാർഡ് അമർത്തിപ്പിടിക്കുക\n• ഫിൽട്ടർ: എല്ലാം അല്ലെങ്കിൽ മെറ്റീരിയൽ പ്രകാരം കാണുക';

  @override
  String get helpMode3Desc => 'കേട്ട് ആവർത്തിച്ച് സംസാരിക്കാൻ പരിശീലിക്കുക (Shadowing).';

  @override
  String get helpMode3Details => '• തിരഞ്ഞെടുക്കുക: പാക്കേജ് തിരഞ്ഞെടുക്കുക\n• ഇടവേള: [-] [+] കാത്തിരിപ്പ് സമയം (3സെ-60സെ)\n• ആരംഭിക്കുക/നിർത്തുക: സെഷൻ നിയന്ത്രിക്കുക\n• സംസാരിക്കുക: ഓഡിയോ കേട്ട് ആവർത്തിക്കുക\n• സ്കോർ: കൃത്യത (0-100)\n• വീണ്ടും ശ്രമിക്കുക: ശബ്ദം കണ്ടെത്തിയില്ലെങ്കിൽ ബട്ടൺ';

  @override
  String get helpJsonDesc => 'മോഡ് 3-ൽ ഇറക്കുമതി ചെയ്യാൻ, JSON സൃഷ്ടിക്കുക:';

  @override
  String get helpTourDesc => 'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'ടൂർ ആരംഭിക്കുക';

  @override
  String get tutorialMicTitle => 'വോയ്സ് ഇൻപുട്ട്';

  @override
  String get tutorialMicDesc => 'വോയ്സ് ഇൻപുട്ടിനായി മൈക്ക് ബട്ടൺ ടാപ്പ് ചെയ്യുക.';

  @override
  String get tutorialTabDesc => 'നിങ്ങൾക്ക് ഇവിടെ നിങ്ങളുടെ ആവശ്യമുള്ള പഠന രീതി തിരഞ്ഞെടുക്കാം.';

  @override
  String get tutorialTapToContinue => 'തുടരാൻ ടാപ്പ് ചെയ്യുക';

  @override
  String get tutorialTransTitle => 'വിവർത്തനം';

  @override
  String get tutorialTransDesc => 'നിങ്ങളുടെ ടെക്സ്റ്റ് വിവർത്തനം ചെയ്യാൻ ഇവിടെ ടാപ്പ് ചെയ്യുക.';

  @override
  String get tutorialSaveTitle => 'സേവ്';

  @override
  String get tutorialSaveDesc => 'നിങ്ങളുടെ വിവർത്തനം സേവ് ചെയ്യുക.';

  @override
  String get tutorialM2SelectTitle => 'തിരഞ്ഞെടുക്കുക & ഫിൽട്ടർ';

  @override
  String get tutorialM2SelectDesc => 'മെറ്റീരിയലുകൾ തിരഞ്ഞെടുക്കുക അല്ലെങ്കിൽ \'എല്ലാം അവലോകനം ചെയ്യുക\' എന്നതിലേക്ക് മാറുക.';

  @override
  String get tutorialM2ListTitle => 'പഠന ലിസ്റ്റ്';

  @override
  String get tutorialM2ListDesc => 'നിങ്ങളുടെ കാർഡുകൾ പരിശോധിച്ച് അവ മറിക്കുക. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'മെറ്റീരിയൽ തിരഞ്ഞെടുക്കുക';

  @override
  String get tutorialM3SelectDesc => 'സംസാര പരിശീലനത്തിനായി സെറ്റ് തിരഞ്ഞെടുക്കുക.';

  @override
  String get tutorialM3IntervalTitle => 'ഇടവേള';

  @override
  String get tutorialM3IntervalDesc => 'വാക്യങ്ങൾക്കിടയിലുള്ള കാത്തിരിപ്പ് സമയം ക്രമീകരിക്കുക.';

  @override
  String get tutorialM3StartTitle => 'ആരംഭിക്കുക';

  @override
  String get tutorialM3StartDesc => 'ആരംഭിക്കാൻ പ്ലേ ടാപ്പ് ചെയ്യുക.';

  @override
  String get startWarning => 'മുന്നറിയിപ്പ്';

  @override
  String get noVoiceDetected => 'ശബ്ദം കണ്ടെത്തിയില്ല';

  @override
  String get tooltipSearch => 'തിരയുക';

  @override
  String get tooltipStudyReview => 'പഠനം+അവലോകനം';

  @override
  String get tooltipSpeaking => 'സംസാരിക്കുക';

  @override
  String get tooltipDecrease => 'കുറയ്ക്കുക';

  @override
  String get tooltipIncrease => 'വർദ്ധിപ്പിക്കുക';

  @override
  String get languageSettings => 'ഭാഷാ ക്രമീകരണങ്ങൾ';

  @override
  String get tutorialM2DropdownDesc => 'പഠന സാമഗ്രികൾ തിരഞ്ഞെടുക്കുക.';

  @override
  String get tutorialM2ImportDesc => 'ഉപകരണ ഫോൾഡറിൽ നിന്ന് JSON ഫയൽ ഇറക്കുമതി ചെയ്യുക.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc => 'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'സന്ദർഭ ടാഗ്';

  @override
  String get tutorialContextDesc => 'സമാന വാക്യങ്ങൾ വേർതിരിക്കാൻ സന്ദർഭം (ഉദാ. രാവിലെ) ചേർക്കുക.';

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
  String get wordDefenseDesc => 'Defend your base by speaking words correctly before enemies reach you.';

  @override
  String get dialogueQuestTitle => 'Dialogue Quest';

  @override
  String get dialogueQuestDesc => 'Roleplay in scenarios. Choose the right response and speak it aloud.';

  @override
  String get tutorialM1ToggleDesc => 'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Word';

  @override
  String get labelSentence => 'Sentence';

  @override
  String get contextTagLabel => 'Context/Situation (Optional) - Ex: Morning greeting, polite form';

  @override
  String get contextTagHint => 'Describe situation for easier classification later';

  @override
  String get translationLimitExceeded => 'Translation Limit Exceeded';

  @override
  String get translationLimitMessage => 'You have used all your free daily translations (5). Watch an ad to refill 5 immediately?';

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
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc => 'Check this to practice only your saved words.';

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
  String get basicWords => 'Basic Words';

  @override
  String get basicSentences => 'Basic Sentences';

  @override
  String get selectMaterialSet => 'Select Study Material Set';

  @override
  String get sectionWords => 'Words';

  @override
  String get sectionSentences => 'Sentences';

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
  String get tutorialSwapDesc => 'ഞാൻ എന്റെ ഭാഷ പഠിക്കുന്ന ഭാഷയുമായി മാറ്റുന്നു.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3ResetDesc => 'Clear your progress and accuracy scores to start fresh.';

  @override
  String get menuSelectMaterialSet => 'ഒരു പഠന സാമഗ്രി തിരഞ്ഞെടുക്കുക';

  @override
  String get sectionWord => 'പദ വിഭാഗം';

  @override
  String get sectionSentence => 'വാക്യ വിഭാഗം';

  @override
  String get tabWord => 'വാക്ക്';

  @override
  String get tabSentence => 'വാചകം';

  @override
  String get errorProfanity => 'Translation cannot be processed due to profanity.';

  @override
  String get errorHateSpeech => 'Translation cannot be processed due to hate speech.';

  @override
  String get errorSexualContent => 'Translation cannot be processed due to sexual content.';

  @override
  String get errorOtherSafety => 'Translation was blocked by AI safety policy.';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }
}

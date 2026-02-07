// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get helpTitle => 'עזרה ומדריך';

  @override
  String get helpTabModes => 'מצבים';

  @override
  String get helpTabJson => 'פורמט JSON';

  @override
  String get helpTabTour => 'סיור';

  @override
  String get helpMode1Desc => 'זיהוי קול, תרגום והאזנה לתוצאה.';

  @override
  String get helpMode1Details =>
      '• קול: הקש על המיקרופון להתחלה/עצירה\n• טקסט: הקלד ישירות לתרגום\n• חיפוש אוטומטי: מזהה משפטים דומים\n• תרגם: כפתור לתרגום מיידי\n• האזן: סמל רמקול ל-TTS\n• שמור: מוסיף להיסטוריה\n• נקה: אפס הכל';

  @override
  String get helpMode2Desc => 'חזור על משפטים שמורים עם הסתרת תרגום.';

  @override
  String get helpMode2Details =>
      '• בחר: בחר סט או \'חזור על הכל\'\n• הפוך: \'הצג/הסתר\' תרגום\n• האזן: נגן TTS למשפט\n• סמן: וי (V) להושלם\n• מחק: לחיצה ארוכה למחיקה\n• מסנן: הצג הכל או לפי חומר';

  @override
  String get helpMode3Desc => 'תרגל דיבור על ידי האזנה וחזרה (Shadowing).';

  @override
  String get helpMode3Details =>
      '• בחר: בחר חבילה\n• מרווח: [-] [+] זמן המתנה (3ש\'-60ש\')\n• התחל/עצור: שליטה בסשן\n• דבר: האזן וחזור\n• ניקוד: דיוק (0-100)\n• נסה שוב: כפתור אם קול לא מזוהה';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'לייבוא חומרים במצב 3, צור JSON:';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

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
  String get location => 'מיקום';

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
    return 'חזרה ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'חומר ($count)';
  }

  @override
  String get mode2Title => 'חזרה';

  @override
  String get search => 'חיפוש';

  @override
  String get translate => 'תרגם';

  @override
  String get listen => 'האזן';

  @override
  String get saveData => 'שמור';

  @override
  String get saved => 'נשמר';

  @override
  String get delete => 'מחק';

  @override
  String get materialInfo => 'מידע על חומר';

  @override
  String get cancel => 'ביטול';

  @override
  String get confirm => 'אישור';

  @override
  String get refresh => 'רענן';

  @override
  String studyRecords(int count) {
    return 'רשומות ($count)';
  }

  @override
  String get targetLanguageFilter => 'מסנן שפת יעד:';

  @override
  String get noRecords => 'אין רשומות לשפה שנבחרה';

  @override
  String get saveTranslationsFromSearch => 'שמור תרגומים ממצב חיפוש';

  @override
  String get flip => 'הפוך';

  @override
  String get hide => 'הסתר';

  @override
  String get deleteRecord => 'מחק רשומה';

  @override
  String get confirmDelete => 'האם אתה בטוח שברצונך למחוק רשומה זו?';

  @override
  String get recordDeleted => 'הרשומה נמחקה בהצלחה';

  @override
  String deleteFailed(String error) {
    return 'המחיקה נכשלה: $error';
  }

  @override
  String get importJsonFile => 'ייבא JSON';

  @override
  String get importing => 'מייבא...';

  @override
  String get importComplete => 'הייבוא הושלם';

  @override
  String get importFailed => 'הייבוא נכשל';

  @override
  String importFile(String fileName) {
    return 'קובץ: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'סה\"כ: $count';
  }

  @override
  String importAdded(int count) {
    return 'נוסף: $count';
  }

  @override
  String importSkipped(int count) {
    return 'דלג: $count';
  }

  @override
  String get errors => 'שגיאות:';

  @override
  String get error => 'שגיאה';

  @override
  String importErrorMessage(String error) {
    return 'ייבוא הקובץ נכשל:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'בחר חומר';

  @override
  String get subject => 'נושא:';

  @override
  String get source => 'מקור:';

  @override
  String get file => 'קובץ:';

  @override
  String progress(int current, int total) {
    return 'התקדמות: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'אנא ייבא קובץ JSON';

  @override
  String get selectMaterialPrompt => 'אנא בחר חומר לימוד';

  @override
  String get studyComplete => 'נלמד';

  @override
  String get markAsStudied => 'סמן כנלמד';

  @override
  String get listening => 'מקשיב...';

  @override
  String get recognized => 'הזיהוי הושלם';

  @override
  String recognitionFailed(String error) {
    return 'זיהוי דיבור נכשל: $error';
  }

  @override
  String get checking => 'בודק...';

  @override
  String get translating => 'מתרגם...';

  @override
  String get translationComplete => 'התרגום הושלם (נדרש שמירה)';

  @override
  String get translationLoaded => 'תרגום שמור נטען';

  @override
  String translationFailed(String error) {
    return 'התרגום נכשל: $error';
  }

  @override
  String get enterTextToTranslate => 'הכנס טקסט לתרגום';

  @override
  String get saving => 'שומר...';

  @override
  String get noTranslationToSave => 'אין תרגום לשמירה';

  @override
  String saveFailed(String error) {
    return 'השמירה נכשלה: $error';
  }

  @override
  String get playing => 'מנגן...';

  @override
  String get noTextToPlay => 'אין טקסט לנגן';

  @override
  String playbackFailed(String error) {
    return 'הניגון נכשל: $error';
  }

  @override
  String get sourceLanguage => 'שפת מקור';

  @override
  String get targetLanguage => 'שפת יעד';

  @override
  String get similarTextFound => 'נמצא טקסט דומה';

  @override
  String get useExistingText => 'השתמש בקיים';

  @override
  String get createNew => 'צור חדש';

  @override
  String reviewCount(int count) {
    return 'נחזר $count פעמים';
  }

  @override
  String get tabSpeaking => 'דיבור';

  @override
  String get speakingPractice => 'תרגול דיבור';

  @override
  String intervalSeconds(int seconds) {
    return 'מרווח: $secondsש\'';
  }

  @override
  String get yourPronunciation => 'ההגייה שלך';

  @override
  String get correctAnswer => 'תשובה נכונה';

  @override
  String score(String score) {
    return 'דיוק: $score%';
  }

  @override
  String get perfect => 'מושלם!';

  @override
  String get good => 'טוב';

  @override
  String get tryAgain => 'נסה שוב';

  @override
  String get startPractice => 'התחל תרגול';

  @override
  String get stopPractice => 'עצור';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'התחל סיור';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'קלט קולי';

  @override
  String get tutorialMicDesc => 'הקש על המיקרופון לקלט קולי.';

  @override
  String get tutorialTabDesc => 'כאן תוכל לבחור את מצב הלמידה הרצוי.';

  @override
  String get tutorialTapToContinue => 'הקש כדי להמשיך';

  @override
  String get tutorialTransTitle => 'תרגם';

  @override
  String get tutorialTransDesc => 'הקש כאן לתרגום.';

  @override
  String get tutorialSaveTitle => 'שמור';

  @override
  String get tutorialSaveDesc => 'שמור את התרגום שלך.';

  @override
  String get tutorialM2SelectTitle => 'בחר ומסנן';

  @override
  String get tutorialM2SelectDesc => 'בחר חומרים או \'חזור על הכל\'.';

  @override
  String get tutorialM2ListTitle => 'רשימת לימוד';

  @override
  String get tutorialM2ListDesc =>
      'בדוק את הכרטיסים והפוך אותם. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'בחר חומר';

  @override
  String get tutorialM3SelectDesc => 'בחר סט לתרגול דיבור.';

  @override
  String get tutorialM3IntervalTitle => 'מרווח';

  @override
  String get tutorialM3IntervalDesc => 'כוון את זמן ההמתנה.';

  @override
  String get tutorialM3StartTitle => 'התחל';

  @override
  String get tutorialM3StartDesc => 'לחץ על נגן להתחלה.';

  @override
  String get startWarning => 'אזהרה';

  @override
  String get noVoiceDetected => 'לא זוהה קול';

  @override
  String get tooltipSearch => 'חיפוש';

  @override
  String get tooltipStudyReview => 'לימוד+חזרה';

  @override
  String get tooltipSpeaking => 'דיבור';

  @override
  String get tooltipDecrease => 'הפחתה';

  @override
  String get tooltipIncrease => 'הגדלה';

  @override
  String get languageSettings => 'הגדרות שפה';

  @override
  String get tutorialM2DropdownDesc => 'בחר חומרי לימוד.';

  @override
  String get tutorialM2ImportDesc => 'ייבא קובץ JSON מתיקיית המכשיר.';

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
  String get tutorialContextTitle => 'תגית הקשר';

  @override
  String get tutorialContextDesc =>
      'הוסף הקשר (למשל: בוקר) להבחנה בין משפטים דומים.';

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
  String get usageLimitTitle => 'הגעת למגבלת השימוש';

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
  String get selectMaterialSet => 'בחר ערכת חומרי לימוד';

  @override
  String get sectionWords => 'מילים';

  @override
  String get sectionSentences => 'משפטים';

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
  String get tutorialSwapDesc => 'אני מחליף את השפה שלי עם השפה שאני לומד.';

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
  String get menuSelectMaterialSet => 'בחירת חומר לימוד';

  @override
  String get sectionWord => 'מקטע מילים';

  @override
  String get sectionSentence => 'קטע משפט';

  @override
  String get tabWord => 'מִלָה';

  @override
  String get tabSentence => 'מִשׁפָּט';

  @override
  String get errorProfanity => 'לא ניתן לתרגם כי קיימת שפה גסה.';

  @override
  String get errorHateSpeech => 'לא ניתן לתרגם כי קיימת שפה משתלחת.';

  @override
  String get errorSexualContent => 'לא ניתן לתרגם כי קיים תוכן מיני.';

  @override
  String get errorOtherSafety => 'התרגום נדחה על ידי מדיניות הבטיחות של AI.';

  @override
  String get clearAll => 'נקה הכל';

  @override
  String get disambiguationTitle => 'בחר משמעות';

  @override
  String get disambiguationPrompt => 'לאיזו משמעות תרצה לתרגם?';

  @override
  String get skip => 'דלג';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Conversation History';

  @override
  String get chatNew => 'New Chat';

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
  String get basicWordRepository => 'מאגר מילים בסיסי';

  @override
  String get basicSentenceRepository => 'מאגר משפטים בסיסי';

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

  @override
  String get metadataDialogTitle => 'Details';

  @override
  String get tagFormal => 'לשון נימוס';

  @override
  String get selectPOS => 'Select POS';

  @override
  String get selectSentenceType => 'Select Sentence Type';

  @override
  String get metadataRootWord => 'Root Word';

  @override
  String get posNoun => 'Noun';

  @override
  String get posVerb => 'Verb';

  @override
  String get posAdjective => 'Adjective';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posPronoun => 'Pronoun';

  @override
  String get posPreposition => 'Preposition';

  @override
  String get posConjunction => 'Conjunction';

  @override
  String get posInterjection => 'Interjection';

  @override
  String get typeStatement => 'Statement';

  @override
  String get typeQuestion => 'Question';

  @override
  String get typeExclamation => 'Exclamation';

  @override
  String get typeImperative => 'Imperative';

  @override
  String get labelNote => 'Note';

  @override
  String get labelShowMemorized => 'Finished';

  @override
  String get tagSelection => 'Select Tags';

  @override
  String get metadataFormType => 'Form Type';

  @override
  String get formInfinitive => 'Infinitive/Present';

  @override
  String get formPast => 'Past';

  @override
  String get formPastParticiple => 'Past Participle';

  @override
  String get formPresentParticiple => 'Present Participle';

  @override
  String get formPresent => 'Present';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get formSingular => 'יחיד';

  @override
  String get caseSubject => 'Subject';

  @override
  String get caseObject => 'Object';

  @override
  String get casePossessive => 'Possessive';

  @override
  String get casePossessivePronoun => 'Possessive Pronoun';

  @override
  String get caseReflexive => 'Reflexive';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';

  @override
  String get searchConditions => 'Search Conditions';

  @override
  String recentNItems(int count) {
    return 'Recent $count items';
  }

  @override
  String get startsWith => 'Starts with';

  @override
  String get reset => 'Reset';

  @override
  String get participantRename => 'Rename Participant';

  @override
  String get labelName => 'Name';

  @override
  String get gender => 'Gender';

  @override
  String get language => 'Language';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get neutral => 'ניטרלי';

  @override
  String get chatAllConversations => 'כל השיחות';

  @override
  String get confirmDeleteConversation =>
      'האם למחוק שיחה זו?\nלא ניתן יהיה לשחזר שיחה שנמחקה.';
}

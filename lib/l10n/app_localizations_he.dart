// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get basicWords => 'מאגר מילים בסיסי';

  @override
  String get inputLanguage => 'שפת מקור';

  @override
  String get translationLanguage => 'שפת תרגום';

  @override
  String get simplifiedGuidance =>
      'תרגום מיידי של שיחות יומיומיות לשפה זרה! Talkie יתעד את חיי השפה שלך.';

  @override
  String get noDataForLanguage =>
      'אין נתונים זמינים עבור שפה זו במסד הנתונים המקומי. נא להוריד נתונים או לבחור שפה אחרת.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'ביטול';

  @override
  String get accuracy => 'דיוק';

  @override
  String get ttsMissing => 'מנוע הדיבור לשפה זו אינו מותקן במכשיר שלך.';

  @override
  String get ttsInstallGuide =>
      'התקן את נתוני השפה בהגדרות אנדרואיד > Google TTS.';

  @override
  String get adLoading => 'טוען מודעה. אנא נסה שוב מאוחר יותר.';

  @override
  String get addNewSubject => 'הוסף כותרת חדשה';

  @override
  String get addParticipant => 'הוסף משתתף';

  @override
  String get addTagHint => 'הוסף תג...';

  @override
  String get alreadyHaveAccount => 'כבר יש לך חשבון?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'הפעלה אוטומטית';

  @override
  String get basic => 'בסיסי';

  @override
  String get basicDefault => 'בסיסי';

  @override
  String get basicMaterialRepository => 'מאגר משפטים/מילים בסיסי';

  @override
  String get basicSentenceRepository => 'מאגר משפטים בסיסי';

  @override
  String get basicSentences => 'מאגר משפטים בסיסי';

  @override
  String get basicWordRepository => 'מאגר מילים בסיסי';

  @override
  String get caseObject => 'מושא';

  @override
  String get casePossessive => 'שייכות';

  @override
  String get casePossessivePronoun => 'כינוי שייכות';

  @override
  String get caseReflexive => 'כינוי חוזר';

  @override
  String get caseSubject => 'נושא';

  @override
  String get chatAiChat => 'צ\'אט';

  @override
  String get chatAllConversations => 'כל השיחות';

  @override
  String get chatChoosePersona => 'בחר דמות';

  @override
  String get chatEndMessage => 'האם ברצונך לסיים את השיחה?';

  @override
  String get chatEndTitle => 'סיים ושמור שיחה';

  @override
  String chatFailed(Object error) {
    return 'השיחה נכשלה: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'קטע משיחה ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'היסטוריית שיחות';

  @override
  String get chatNew => 'שיחה חדשה';

  @override
  String get chatNewChat => 'שיחה חדשה';

  @override
  String get chatNoConversations => 'עדיין אין שיחות';

  @override
  String get chatSearchHint => 'חיפוש לפי שם צ\'אט…';

  @override
  String get chatSaveAndExit => 'שמור וצא';

  @override
  String get chatStartNewPrompt => 'התחל שיחה חדשה כדי לתרגל!';

  @override
  String get chatTypeHint => 'הקלד הודעה...';

  @override
  String get chatUntitled => 'שיחה ללא כותרת';

  @override
  String get checking => 'בודק...';

  @override
  String get clearAll => 'נקה הכל';

  @override
  String get confirm => 'אישור';

  @override
  String get confirmDelete => 'האם אתה בטוח שברצונך למחוק רשומה זו?';

  @override
  String get confirmDeleteConversation =>
      'האם למחוק שיחה זו?\nלא ניתן יהיה לשחזר שיחה שנמחקה.';

  @override
  String get confirmDeleteParticipant => 'האם למחוק משתתף זה?';

  @override
  String get contextTagHint => 'רשום את המצב כדי להקל על ההבחנה בהמשך';

  @override
  String get contextTagLabel =>
      'הקשר/מצב (אופציונלי) - לדוגמה: ברכת בוקר, נימוס';

  @override
  String get copiedToClipboard => 'הועתק ללוח!';

  @override
  String get copy => 'העתק';

  @override
  String get correctAnswer => 'תשובה נכונה';

  @override
  String get createNew => 'צור חדש';

  @override
  String get currentLocation => 'מיקום נוכחי';

  @override
  String get currentMaterialLabel => 'אוסף החומרים הנבחר כעת:';

  @override
  String get delete => 'מחק';

  @override
  String deleteFailed(String error) {
    return 'המחיקה נכשלה: $error';
  }

  @override
  String get deleteRecord => 'מחק רשומה';

  @override
  String get dialogueQuestDesc =>
      'תרגל שיחות באמצעות משחק תפקידים. בחר את התשובות המתאימות ואמור אותן.';

  @override
  String get dialogueQuestTitle => 'משימת דיאלוג';

  @override
  String get disambiguationPrompt => 'לאיזו משמעות תרצה לתרגם?';

  @override
  String get disambiguationTitle => 'בחר משמעות';

  @override
  String get dontHaveAccount => 'אין לך חשבון?';

  @override
  String get editParticipant => 'ערוך משתתף';

  @override
  String get email => 'אימייל';

  @override
  String get emailAlreadyInUse =>
      'כתובת האימייל כבר רשומה. יש להתחבר או לשחזר את הסיסמה.';

  @override
  String get enterNewSubjectName => 'הזן כותרת חדשה';

  @override
  String get enterSentenceHint => 'כתוב משפט...';

  @override
  String get enterTextHint => 'הזן טקסט לתרגום';

  @override
  String get enterTextToTranslate => 'הכנס טקסט לתרגום';

  @override
  String get enterWordHint => 'כתוב מילה...';

  @override
  String get error => 'שגיאה';

  @override
  String get errorHateSpeech => 'לא ניתן לתרגם כי קיימת שפה משתלחת.';

  @override
  String get errorOtherSafety => 'התרגום נדחה על ידי מדיניות הבטיחות של AI.';

  @override
  String get errorProfanity => 'לא ניתן לתרגם כי קיימת שפה גסה.';

  @override
  String get errorSelectCategory => 'אנא בחר תחילה מילה או משפט!';

  @override
  String get errorSexualContent => 'לא ניתן לתרגם כי קיים תוכן מיני.';

  @override
  String get errors => 'שגיאות:';

  @override
  String get female => 'נקבה';

  @override
  String get file => 'קובץ:';

  @override
  String get filterAll => 'הכל';

  @override
  String get flip => 'הפוך';

  @override
  String get formComparative => 'השוואתי';

  @override
  String get formInfinitive => 'צורת מקור';

  @override
  String get formPast => 'עבר';

  @override
  String get formPastParticiple => 'צורת בינוני פועל';

  @override
  String get formPlural => 'רבים';

  @override
  String get formPositive => 'חיובי';

  @override
  String get formPresent => 'הווה';

  @override
  String get formPresentParticiple => 'צורת בינוני פעול';

  @override
  String get formSingular => 'יחיד';

  @override
  String get formSuperlative => 'סופרלטיבי';

  @override
  String get formThirdPersonSingular => 'גוף שלישי יחיד';

  @override
  String get gameModeDesc => 'בחר מצב משחק לתרגול';

  @override
  String get gameModeTitle => 'מצב משחק';

  @override
  String get gameOver => 'המשחק נגמר';

  @override
  String get gender => 'מגדר';

  @override
  String get labelFilterMaterial => 'חוברת חומרים';

  @override
  String get labelFilterTag => 'תגית';

  @override
  String get generalTags => 'תגים כלליים';

  @override
  String get getMaterials => 'קבל חומרים';

  @override
  String get good => 'טוב';

  @override
  String get googleContinue => 'המשך עם Google';

  @override
  String get helpDialogueImportDesc => 'ייבא ערכת דיאלוג שלמה מקובץ JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'לייבוא חומרים במצב 3, צור JSON:';

  @override
  String get helpJsonTypeDialogue => 'דיאלוג (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'משפט (Sentence)';

  @override
  String get helpJsonTypeWord => 'מילה (Word)';

  @override
  String get helpMode1Desc =>
      'התחילו ללמוד שפה בצורה האינטואיטיבית ביותר, באמצעות מיקרופון תלת מימדי פרימיום ואייקוני מקלדת גדולים.';

  @override
  String get helpMode1Details =>
      '• הגדרות שפה: בדוק את השפה שלך ואת השפה שאתה לומד באמצעות לחצן השפה בחלק העליון של מסך הבית, ותוכל לשנות את שפת הלימוד.\n• קלט פשוט: הזן מיד דרך המיקרופון הגדול וחלון הטקסט במרכז.\n• אשר הגדרות: לאחר שתסיים להזין, לחץ על כפתור הסימון הכחול בצד ימין. יופיע חלון הגדרות מפורטות.\n• הגדרות מפורטות: בתיבת הדו-שיח שמופיעה, תוכל לציין את אוסף החומרים לשמירה, הערות (תזכירים) ותגיות.\n• תרגם עכשיו: לאחר השלמת ההגדרות, לחץ על כפתור התרגום הירוק והבינה המלאכותית תתרגם מיד.\n• חיפוש אוטומטי: מזהה ומציג תרגומים קיימים דומים בזמן אמת במהלך ההקלדה.\n• האזנה ושמירה: האזן להגייה עם סמל הרמקול בתחתית תוצאת התרגום והוסף אותה לרשימת הלמידה באמצעות \'שמור נתונים\'.';

  @override
  String get helpMode2Desc => 'חזור על משפטים שמורים עם הסתרת תרגום.';

  @override
  String get helpMode2Details =>
      '• בחירת אוסף חומרים: השתמשו בתפריט (⋮) בפינה הימנית העליונה כדי לבחור \'בחר אוסף חומרים\' או \'ספריית חומרים מקוונת\'\n• היפוך כרטיסייה: השתמשו ב\'הצג/הסתר\' כדי לבדוק את התרגום\n• האזנה: לחצו על סמל הרמקול כדי להשמיע את ההגייה\n• סיום לימוד: סמנו ✓ כדי לסמן שלימדתם את הכרטיסייה\n• מחיקה: לחצו לחיצה ארוכה על הכרטיסייה כדי למחוק את התיעוד\n• חיפוש וסינון: תומך בסרגל חיפוש (חיפוש חכם בזמן אמת) ומסנני תגיות, אותיות התחלה';

  @override
  String get helpMode3Desc =>
      'תרגלו הגייה על ידי האזנה וחזרה על משפטים (Shadowing).';

  @override
  String get helpMode3Details =>
      '• בחר: בחר חבילה\n• מרווח: [-] [+] זמן המתנה (3ש\'-60ש\')\n• התחל/עצור: שליטה בסשן\n• דבר: האזן וחזור\n• ניקוד: דיוק (0-100)\n• נסה שוב: כפתור אם קול לא מזוהה';

  @override
  String get helpModeChatDesc => 'תרגלו שיחה אמיתית על ידי שיחה עם דמות AI.';

  @override
  String get helpModeChatDetails =>
      '• צ\'אט AI: תרגל שיחות מעשיות עם דמויות דרך תפריט \'צ\'אט\' בסרגל הכרטיסיות התחתון.\n• הגדרת דמות: ציין באופן חופשי את מין, שם וקוד השפה של הצד השני.\n• משחק תפקידים GPS: המלצה על נושאי שיחה המתאימים למקום על ידי זיהוי המיקום הנוכחי שלך.\n• דו לשוני: תשובות ה-AI מוצגות עם תרגום כדי למקסם את אפקט הלמידה.\n• ניהול רשומות: סינון היסטוריית שיחות קודמות ושמירת הודעות ספציפיות במהלך שיחות כחומרי לימוד.';

  @override
  String get helpTabJson => 'פורמט JSON';

  @override
  String get helpTabModes => 'מצבים';

  @override
  String get helpTabTour => 'סיור';

  @override
  String get helpTitle => 'עזרה ומדריך';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'הסתר';

  @override
  String importAdded(int count) {
    return 'נוסף: $count';
  }

  @override
  String get importComplete => 'הייבוא הושלם';

  @override
  String get importDuplicateTitleError =>
      'חומר עם שם זהה כבר קיים. שנה את השם ונסה שוב.';

  @override
  String importErrorMessage(String error) {
    return 'ייבוא הקובץ נכשל:\\n$error';
  }

  @override
  String get importFailed => 'הייבוא נכשל';

  @override
  String importFile(String fileName) {
    return 'קובץ: $fileName';
  }

  @override
  String get importJsonFile => 'ייבא JSON';

  @override
  String get importJsonFilePrompt => 'אנא ייבא קובץ JSON';

  @override
  String importSkipped(int count) {
    return 'דלג: $count';
  }

  @override
  String importTotal(int count) {
    return 'סה\"כ: $count';
  }

  @override
  String get importing => 'מייבא...';

  @override
  String get inputModeTitle => 'קלט';

  @override
  String intervalSeconds(int seconds) {
    return 'מרווח: $secondsש\'';
  }

  @override
  String get invalidEmail => 'אנא הזן אימייל חוקי.';

  @override
  String get kakaoContinue => 'המשך עם קקאו';

  @override
  String get labelLangCode => 'קוד שפה (לדוגמה: en-US, ko-KR)';

  @override
  String get labelName => 'שם';

  @override
  String get labelNote => 'הערה';

  @override
  String get labelPOS => 'חלקי דיבר';

  @override
  String get labelRole => 'תפקיד';

  @override
  String get labelSentence => 'משפט';

  @override
  String get labelSentenceCollection => 'אוסף משפטים';

  @override
  String get labelSentenceType => 'סוג המשפט';

  @override
  String get labelShowMemorized => 'סיימתי';

  @override
  String get labelType => 'סוג:';

  @override
  String get labelWord => 'מילה';

  @override
  String get labelWordbook => 'אוסף מילים';

  @override
  String get language => 'שפה';

  @override
  String get languageSettings => 'הגדרות שפה';

  @override
  String get languageSettingsTitle => 'הגדרות שפה';

  @override
  String get libTitleFirstMeeting => 'פגישה ראשונה';

  @override
  String get libTitleGreetings1 => 'ברכות 1';

  @override
  String get libTitleNouns1 => 'שמות עצם 1';

  @override
  String get libTitleVerbs1 => 'פעלים 1';

  @override
  String get listen => 'האזן';

  @override
  String get listening => 'מקשיב...';

  @override
  String get loadingParticipants => 'טוען משתתפים...';

  @override
  String get location => 'מיקום';

  @override
  String get login => 'התחברות';

  @override
  String get logout => 'התנתק';

  @override
  String get logoutConfirmMessage => 'האם ברצונך להתנתק מהמכשיר הנוכחי?';

  @override
  String get logoutConfirmTitle => 'התנתקות';

  @override
  String get male => 'זכר';

  @override
  String get manageParticipants => 'נהל משתתפים';

  @override
  String get manual => 'הזנה ידנית';

  @override
  String get markAsStudied => 'סמן כנלמד';

  @override
  String get materialInfo => 'מידע על חומר';

  @override
  String get me => 'אני';

  @override
  String get menuDeviceImport => 'ייבא חומרים מהמכשיר';

  @override
  String get menuHelp => 'עזרה';

  @override
  String get menuLanguageSettings => 'הגדרות שפה';

  @override
  String get menuOnlineLibrary => 'ספרייה מקוונת';

  @override
  String get menuSelectMaterialSet => 'בחירת חומר לימוד';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'מדריך שימוש';

  @override
  String get menuWebDownload => 'מדריך הוראות';

  @override
  String get metadataDialogTitle => 'סיווג מפורט';

  @override
  String get metadataFormType => 'צורה דקדוקית';

  @override
  String get metadataRootWord => 'מילת שורש (Root Word)';

  @override
  String get micButtonTooltip => 'התחל זיהוי קולי';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'אוסף החומרים שנבחר כעת: $name';
  }

  @override
  String get mode2Title => 'חזרה';

  @override
  String get mode3Next => 'הבא';

  @override
  String get mode3Start => 'התחל';

  @override
  String get mode3Stop => 'עצור';

  @override
  String get mode3TryAgain => 'נסה שוב';

  @override
  String get mySentenceCollection => 'אוסף המשפטים שלי';

  @override
  String get myWordbook => 'אוצר המילים שלי';

  @override
  String get neutral => 'ניטרלי';

  @override
  String get newSubjectName => 'כותרת מחברת/אוסף חדש';

  @override
  String get next => 'הבא';

  @override
  String get noDialogueHistory => 'אין היסטוריית שיחות.';

  @override
  String get noInternetWarningMic =>
      'אין חיבור לאינטרנט. ייתכן שזיהוי קולי אינו אפשרי במצב לא מקוון.';

  @override
  String get noInternetWarningTranslate =>
      'אין חיבור לאינטרנט. תכונת התרגום לא תעבוד. אנא השתמש במצב חזרה.';

  @override
  String get noMaterialsInCategory => 'אין חומרים בקטגוריה זו.';

  @override
  String get noParticipantsFound => 'לא נמצאו משתתפים רשומים.';

  @override
  String get noRecords => 'אין רשומות לשפה שנבחרה';

  @override
  String get noStudyMaterial => 'אין חומר לימוד.';

  @override
  String get noTextToPlay => 'אין טקסט לנגן';

  @override
  String get noTranslationToSave => 'אין תרגום לשמירה';

  @override
  String get noVoiceDetected => 'לא זוהה קול';

  @override
  String get notSelected => '- לא נבחר -';

  @override
  String get onlineLibraryCheckInternet =>
      'אנא בדוק את חיבור האינטרנט שלך או נסה שוב מאוחר יותר.';

  @override
  String get onlineLibraryLoadFailed => 'הטעינה של החומרים נכשלה.';

  @override
  String get onlineLibraryNoMaterials => 'אין חומרים.';

  @override
  String get participantDeleted => 'המשתתף נמחק.';

  @override
  String get participantRename => 'שנה שם משתתף';

  @override
  String get partner => 'שותף';

  @override
  String get partnerMode => 'מצב שותף';

  @override
  String get password => 'סיסמה';

  @override
  String get passwordTooShort => 'הסיסמה חייבת להיות באורך 6 תווים לפחות.';

  @override
  String get perfect => 'מושלם!';

  @override
  String get personaFriend => 'חבר מקומי';

  @override
  String get personaGuide => 'מדריך טיולים';

  @override
  String get personaTeacher => 'מורה לאנגלית';

  @override
  String get playAgain => 'שחק שוב';

  @override
  String playbackFailed(String error) {
    return 'הניגון נכשל: $error';
  }

  @override
  String get playing => 'מנגן...';

  @override
  String get posAdjective => 'שם תואר';

  @override
  String get posAdverb => 'תואר הפועל';

  @override
  String get posConjunction => 'מילת קישור';

  @override
  String get posInterjection => 'מילת קריאה';

  @override
  String get posNoun => 'שם עצם';

  @override
  String get posPreposition => 'מילת יחס';

  @override
  String get posPronoun => 'כינוי גוף';

  @override
  String get posVerb => 'פועל';

  @override
  String get practiceModeTitle => 'תרגול';

  @override
  String get practiceWordsOnly => 'תרגל מילים בלבד';

  @override
  String progress(int current, int total) {
    return 'התקדמות: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'הצג את $count הפריטים שנוצרו לאחרונה';
  }

  @override
  String recognitionFailed(String error) {
    return 'זיהוי דיבור נכשל: $error';
  }

  @override
  String get recognized => 'הזיהוי הושלם';

  @override
  String get recognizedText => 'טקסט מזוהה:';

  @override
  String get recordDeleted => 'הרשומה נמחקה בהצלחה';

  @override
  String get refresh => 'רענן';

  @override
  String get reset => 'איפוס';

  @override
  String get resetPracticeHistory => 'אפס היסטוריית תרגול';

  @override
  String get retry => 'לנסות שוב?';

  @override
  String get reviewAll => 'חזרה על הכל';

  @override
  String reviewCount(int count) {
    return 'נחזר $count פעמים';
  }

  @override
  String get reviewModeTitle => 'חזרה';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'צד שלישי';

  @override
  String get roleUser => 'משתמש';

  @override
  String get save => 'שמור';

  @override
  String get saveData => 'שמור';

  @override
  String saveFailed(String error) {
    return 'השמירה נכשלה: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'שמור תרגומים ממצב חיפוש';

  @override
  String get saved => 'נשמר';

  @override
  String get saving => 'שומר...';

  @override
  String score(String score) {
    return 'דיוק: $score%';
  }

  @override
  String get scoreLabel => 'ניקוד';

  @override
  String get search => 'חיפוש';

  @override
  String get searchConditions => 'תנאי חיפוש';

  @override
  String get searchSentenceHint => 'חפש משפט...';

  @override
  String get searchWordHint => 'חפש מילה...';

  @override
  String get sectionSentence => 'קטע משפט';

  @override
  String get sectionSentences => 'משפטים';

  @override
  String get sectionWord => 'מקטע מילים';

  @override
  String get sectionWords => 'מילים';

  @override
  String get selectExistingSubject => 'בחר כותרת קיימת';

  @override
  String get selectMaterialPrompt => 'אנא בחר חומר לימוד';

  @override
  String get selectMaterialSet => 'בחר ערכת חומרי לימוד';

  @override
  String get selectPOS => 'בחר חלק דיבר';

  @override
  String get selectParticipants => 'בחר משתתפים';

  @override
  String get selectSentenceType => 'בחר סוג משפט';

  @override
  String get selectStudyMaterial => 'בחר חומר';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'משפט';

  @override
  String get signUp => 'הרשמה';

  @override
  String get similarTextFound => 'נמצא טקסט דומה';

  @override
  String get skip => 'דלג';

  @override
  String get source => 'מקור:';

  @override
  String get sourceLanguage => 'שפת מקור';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'דבר עכשיו!';

  @override
  String get speaker => 'דובר';

  @override
  String get speakerSelect => 'בחר דובר';

  @override
  String get speakingPractice => 'תרגול דיבור';

  @override
  String get startChat => 'התחל שיחה';

  @override
  String get startPractice => 'התחל תרגול';

  @override
  String get startTutorial => 'התחל סיור';

  @override
  String get startWarning => 'אזהרה';

  @override
  String get startsWith => 'מתחיל ב';

  @override
  String get statusCheckEmail =>
      'אמת את כתובת האימייל שלך כדי להשלים את האימות.';

  @override
  String statusDownloading(Object name) {
    return 'מוריד: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'הייבוא נכשל: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name יובא בהצלחה';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'ההתחברות בוטלה.';

  @override
  String statusLoginFailed(Object error) {
    return 'ההתחברות נכשלה: $error';
  }

  @override
  String get statusLoginSuccess => 'התחברת בהצלחה.';

  @override
  String get statusLogoutSuccess => 'התנתקת בהצלחה.';

  @override
  String statusSignUpFailed(Object error) {
    return 'ההרשמה נכשלה: $error';
  }

  @override
  String get statusSigningUp => 'נרשם...';

  @override
  String get stopPractice => 'עצור';

  @override
  String get studyComplete => 'נלמד';

  @override
  String studyRecords(int count) {
    return 'רשומות ($count)';
  }

  @override
  String get styleFormal => 'רשמי';

  @override
  String get styleInformal => 'לא רשמי';

  @override
  String get stylePolite => 'מנומס';

  @override
  String get styleSlang => 'סלנג';

  @override
  String get subject => 'נושא:';

  @override
  String get swapLanguages => 'החלף שפות';

  @override
  String get switchToAi => 'מעבר למצב AI';

  @override
  String get switchToPartner => 'מעבר למצב שותף';

  @override
  String get syncingData => 'מסנכרן נתונים...';

  @override
  String get tabConversation => 'שיחה';

  @override
  String tabReview(int count) {
    return 'חזרה ($count)';
  }

  @override
  String get tabSentence => 'מִשׁפָּט';

  @override
  String get tabSpeaking => 'דיבור';

  @override
  String tabStudyMaterial(int count) {
    return 'חומר ($count)';
  }

  @override
  String get tabWord => 'מִלָה';

  @override
  String get tagFormal => 'לשון נימוס';

  @override
  String get tagSelection => 'בחירת תגיות';

  @override
  String get targetLanguage => 'שפת יעד';

  @override
  String get targetLanguageFilter => 'מסנן שפת יעד:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'זמן לחשוב לפני שהתשובה הנכונה נחשפת.';

  @override
  String get thinkingTimeInterval => 'השהיית חשיבה';

  @override
  String get timeUp => 'הזמן נגמר!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'תג כותרת (קובץ עזר)';

  @override
  String get tooltipDecrease => 'הפחתה';

  @override
  String get tooltipIncrease => 'הגדלה';

  @override
  String get tooltipSearch => 'חיפוש';

  @override
  String get tooltipSpeaking => 'דיבור';

  @override
  String get tooltipStudyReview => 'לימוד+חזרה';

  @override
  String totalRecords(int count) {
    return 'סה\"כ $count רשומות (הצג הכל)';
  }

  @override
  String get translate => 'תרגם';

  @override
  String get translating => 'מתרגם...';

  @override
  String get translation => 'תרגום';

  @override
  String get translationComplete => 'התרגום הושלם (נדרש שמירה)';

  @override
  String translationFailed(String error) {
    return 'התרגום נכשל: $error';
  }

  @override
  String get translationLimitExceeded => 'חריגה ממגבלת תרגום';

  @override
  String get translationLimitMessage =>
      'ניצלת את כל מכסת התרגומים החינמיים היומית שלך (5 פעמים).\\n\\nהאם ברצונך לצפות במודעה כדי למלא מיד 5 תרגומים?';

  @override
  String get translationLoaded => 'תרגום שמור נטען';

  @override
  String get translationRefilled => 'מכסת התרגומים שלך מולאה ב-5!';

  @override
  String get translationResultHint => 'תוצאת תרגום - ניתן לעריכה';

  @override
  String get tryAgain => 'נסה שוב';

  @override
  String get tutorialAiChatDesc => 'תרגל שיחות אמיתיות עם דמויות AI.';

  @override
  String get tutorialAiChatTitle => 'צ\'אט AI';

  @override
  String get tutorialContextDesc =>
      'הוסף הקשר (למשל: בוקר) להבחנה בין משפטים דומים.';

  @override
  String get tutorialContextTitle => 'תגית הקשר';

  @override
  String get tutorialLangSettingsDesc => 'הגדר את שפת המקור ושפת היעד לתרגום.';

  @override
  String get tutorialLangSettingsTitle => 'הגדרות שפה';

  @override
  String get tutorialM1ToggleDesc => 'עבור בין מצב מילה למצב משפט כאן.';

  @override
  String get tutorialM1ToggleTitle => 'מצב מילה/משפט';

  @override
  String get tutorialM2DropdownDesc => 'בחר חומרי לימוד.';

  @override
  String get tutorialM2ImportDesc => 'ייבא קובץ JSON מתיקיית המכשיר.';

  @override
  String get tutorialM2ListDesc =>
      'בדוק את הכרטיסים והפוך אותם. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'רשימת לימוד';

  @override
  String get tutorialM2SearchDesc => 'חפש ומצא במהירות מילים ומשפטים שמורים.';

  @override
  String get tutorialM2SelectDesc => 'בחר חומרים או \'חזור על הכל\'.';

  @override
  String get tutorialM2SelectTitle => 'בחר ומסנן';

  @override
  String get tutorialM3IntervalDesc => 'כוון את זמן ההמתנה.';

  @override
  String get tutorialM3IntervalTitle => 'מרווח';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'בחר סט לתרגול דיבור.';

  @override
  String get tutorialM3SelectTitle => 'בחר חומר';

  @override
  String get tutorialM3StartDesc => 'לחץ על נגן להתחלה.';

  @override
  String get tutorialM3StartTitle => 'התחל';

  @override
  String get tutorialM3WordsDesc => 'סמן כדי לתרגל רק מילים שמורות.';

  @override
  String get tutorialM3WordsTitle => 'תרגול מילים';

  @override
  String get tutorialMicDesc => 'הקש על המיקרופון לקלט קולי.';

  @override
  String get tutorialMicTitle => 'קלט קולי';

  @override
  String get tutorialSaveDesc => 'שמור את התרגום שלך.';

  @override
  String get tutorialSaveTitle => 'שמור';

  @override
  String get tutorialSwapDesc => 'אני מחליף את השפה שלי עם השפה שאני לומד.';

  @override
  String get tutorialTabDesc => 'כאן תוכל לבחור את מצב הלמידה הרצוי.';

  @override
  String get tutorialTapToContinue => 'הקש כדי להמשיך';

  @override
  String get tutorialTransDesc => 'הקש כאן לתרגום.';

  @override
  String get tutorialTransTitle => 'תרגם';

  @override
  String get typeExclamation => 'קריאה';

  @override
  String get typeImperative => 'ציווי';

  @override
  String get typeQuestion => 'שאלה';

  @override
  String get typeStatement => 'הצהרה';

  @override
  String get usageLimitTitle => 'הגעת למגבלת השימוש';

  @override
  String get useExistingText => 'השתמש בקיים';

  @override
  String get viewOnlineGuide => 'הצג מדריך מקוון';

  @override
  String get voluntaryTranslations => 'תרגומים בהתנדבות';

  @override
  String get watchAdAndRefill => 'צפה במודעה ומלא מחדש (+5 פעמים)';

  @override
  String get word => 'מילה';

  @override
  String get wordDefenseDesc =>
      'הגן על הבסיס שלך על ידי אמירת מילים לפני שהאויבים מגיעים.';

  @override
  String get wordDefenseTitle => 'הגנת מילים';

  @override
  String get wordModeLabel => 'מצב מילים';

  @override
  String get yourPronunciation => 'ההגייה שלך';

  @override
  String get ttsUnsupportedNatively =>
      'הגדרות ברירת המחדל של מכשיר זה אינן תומכות בפלט קולי בשפה זו.';

  @override
  String get homeTab => 'תרגום';

  @override
  String get welcomeTitle => 'ברוכים הבאים ל-Talkie!';

  @override
  String get welcomeDesc =>
      'ברוכים הבאים ל-Talkie! אנו תומכים ביותר מ-80 שפות ברחבי העולם ב-100% תקינות, ומספקים חווית למידה מושלמת עם עיצוב תלת מימדי פרימיום חדש וביצועים מיטביים.';

  @override
  String get welcomeButton => 'מתחילים';

  @override
  String get labelDetails => 'הגדרות מתקדמות';

  @override
  String get translationResult => 'תוצאת תרגום';

  @override
  String get inputContent => 'תוכן קלט';

  @override
  String get translateNow => 'תרגם עכשיו';

  @override
  String get tooltipSettingsConfirm => 'אישור הגדרות';

  @override
  String get hintNoteExample => 'לדוגמה: הקשר, מילים נרדפות וכו\'';

  @override
  String get hintTagExample => 'לדוגמה: עסקים, נסיעות...';

  @override
  String get addNew => 'הוסף חדש';

  @override
  String get newNotebookTitle => 'שם מחברת חדשה';

  @override
  String get enterNameHint => 'הזן שם';

  @override
  String get add => 'הוסף';

  @override
  String get openSettings => 'פתח הגדרות';

  @override
  String get helpNotebook => 'בחר תיקייה לשמירת התרגומים.';

  @override
  String get helpNote =>
      'רשום באופן חופשי את משמעות המילה, דוגמאות, הקשר וכו\'.';

  @override
  String get helpTag => 'הזן מילות מפתח למיון או חיפוש מאוחר יותר.';

  @override
  String get requestTranslation => 'בקש תרגום';

  @override
  String get statusRequestSuccess => 'בקשת התרגום הושלמה.';

  @override
  String statusRequestFailed(String error) {
    return 'בקשת התרגום נכשלה: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'שפת לימוד לא נתמכת';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'החומר שבחרת אינו תומך בשפת הלימוד הנוכחית שלך ($targetLang) ולכן לא ניתן לשמור אותו באופן מקומי. האם תרצה לבקש תרגום?';
  }
}

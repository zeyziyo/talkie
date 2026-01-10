// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

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
  String get materialInfo => 'Material Info';

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
  String get helpJsonDesc => 'לייבוא חומרים במצב 3, צור JSON:';

  @override
  String get helpTourDesc => 'התחל את הסיור האינטראקטיבי ללימוד התכונות.';

  @override
  String get startTutorial => 'התחל סיור';

  @override
  String get tutorialMicTitle => 'קלט קולי';

  @override
  String get tutorialMicDesc => 'הקש על המיקרופון לקלט קולי.';

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
  String get tutorialM2ListDesc => 'בדוק את הכרטיסים והפוך אותם.';

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
}

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
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'התחל סיור';

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
  String get selectMaterialSet => '학습 자료집 선택 (TODO: Translate)';

  @override
  String get sectionWords => '단어 (TODO: Translate)';

  @override
  String get sectionSentences => '문장 (TODO: Translate)';

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
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorSexualContent =>
      '선정적인 내용이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다. (TODO: Translate)';

  @override
  String get clearAll => '모두 지우기 (TODO: Translate)';

  @override
  String get disambiguationTitle => '의미 선택 (TODO: Translate)';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까? (TODO: Translate)';

  @override
  String get skip => '건너뛰기 (TODO: Translate)';

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
    return '채팅 실패: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return '대화 발췌 ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => '제목 없는 대화';

  @override
  String get chatAiChat => 'AI Chat';

  @override
  String get helpModeChatDesc => 'AI 페르소나와 대화하며 실전 회화를 연습하고 유용한 문장을 저장하세요.';

  @override
  String get helpModeChatDetails =>
      '• 채팅 시작: 상단 메뉴의 말풍선 아이콘 클릭\n• 페르소나 선택: 선생님, 가이드, 친구 중 선택\n• 대화 및 저장: AI 응답은 자동 번역됩니다. 메시지를 클릭하여 복습 모드로 저장하세요\n• 2개 국어 표시: 모든 메시지에 대해 모국어와 학습 언어를 함께 표시합니다\n• 듣기 기능 (TTS): 스피커 아이콘을 눌러 각 언어의 발음을 들어보세요\n• 자동 제목: 대화 주제에 따라 AI가 제목을 추천합니다\n• 이력 관리: 과거 대화 내용을 언제든 다시 확인할 수 있습니다';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String get me => 'Me';

  @override
  String get helpDialogueImportDesc => '완성된 대화문 세트를 JSON 파일로 한 번에 가져올 수 있습니다.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON 구조: `entries` 대신 `dialogues` 배열을 사용합니다.\n• 자동 생성: 대화 제목, 페르소나, 메시지 순서가 자동으로 구성됩니다.\n• 확인 위치: 가져온 대화는 AI 채팅 모드의 \'대화 기록\' 탭에서 확인할 수 있습니다.';

  @override
  String mode1SelectedMaterial(Object name) {
    return '현재 선택된 자료집: $name';
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
}

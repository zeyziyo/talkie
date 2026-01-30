// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get helpTitle => 'Βοήθεια & Οδηγός';

  @override
  String get helpTabModes => 'Λειτουργίες';

  @override
  String get helpTabJson => 'Μορφή JSON';

  @override
  String get helpTabTour => 'Περιήγηση';

  @override
  String get helpMode1Desc =>
      'Αναγνώριση φωνής, μετάφραση και ακρόαση αποτελέσματος.';

  @override
  String get helpMode1Details =>
      '• Φωνή: Πατήστε μικρόφωνο για έναρξη/διακοπή\n• Κείμενο: Πληκτρολογήστε για μετάφραση\n• Auto-Search: Εντοπίζει παρόμοιες προτάσεις\n• Μετάφραση: Κουμπί για άμεση μετάφραση\n• Ακρόαση: Εικονίδιο ηχείου για TTS\n• Αποθήκευση: Προσθήκη στο ιστορικό\n• Καθαρισμός: Επαναφορά όλων';

  @override
  String get helpMode2Desc =>
      'Επανάληψη αποθηκευμένων προτάσεων με απόκρυψη μετάφρασης.';

  @override
  String get helpMode2Details =>
      '• Επιλογή: Διαλέξτε σετ ή \'Όλα\'\n• Γύρισμα: \'Εμφάνιση/Απόκρυψη\' μετάφρασης\n• Ακρόαση: Αναπαραγωγή TTS\n• Σήμανση: Τικ (V) για ολοκληρωμένα\n• Διαγραφή: Παρατεταμένο πάτημα κάρτας\n• Φίλτρο: Προβολή όλων ή ανά υλικό';

  @override
  String get helpMode3Desc =>
      'Πρακτική ομιλίας μέσω ακρόασης και επανάληψης (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Επιλογή: Διαλέξτε πακέτο\n• Διάστημα: [-] [+] χρόνος αναμονής (3δ-60δ)\n• Start/Stop: Έλεγχος συνεδρίας\n• Ομιλία: Ακούστε και επαναλάβετε\n• Βαθμολογία: Ακρίβεια (0-100)\n• Επανάληψη: Κουμπί δοκιμής ξανά';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc =>
      'Για εισαγωγή υλικού στη Λειτουργία 3, δημιουργήστε JSON:';

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
  String get location => 'Τοποθεσία';

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
    return 'Επανάληψη ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Υλικό ($count)';
  }

  @override
  String get mode2Title => 'Επανάληψη';

  @override
  String get search => 'Αναζήτηση';

  @override
  String get translate => 'Μετάφραση';

  @override
  String get listen => 'Ακρόαση';

  @override
  String get saveData => 'Αποθήκευση';

  @override
  String get saved => 'Αποθηκεύτηκε';

  @override
  String get delete => 'Διαγραφή';

  @override
  String get materialInfo => 'Πληροφορίες υλικού';

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Ανανέωση';

  @override
  String studyRecords(int count) {
    return 'Εγγραφές ($count)';
  }

  @override
  String get targetLanguageFilter => 'Φίλτρο Γλώσσας:';

  @override
  String get noRecords => 'Χωρίς εγγραφές για την επιλεγμένη γλώσσα';

  @override
  String get saveTranslationsFromSearch =>
      'Αποθηκεύστε μεταφράσεις από τη λειτουργία αναζήτησης';

  @override
  String get flip => 'Γύρισμα';

  @override
  String get hide => 'Απόκρυψη';

  @override
  String get deleteRecord => 'Διαγραφή Εγγραφής';

  @override
  String get confirmDelete => 'Είστε σίγουροι για τη διαγραφή;';

  @override
  String get recordDeleted => 'Η εγγραφή διαγράφηκε επιτυχώς';

  @override
  String deleteFailed(String error) {
    return 'Αποτυχία διαγραφής: $error';
  }

  @override
  String get importJsonFile => 'Εισαγωγή JSON';

  @override
  String get importing => 'Εισαγωγή...';

  @override
  String get importComplete => 'Ολοκληρώθηκε';

  @override
  String get importFailed => 'Απέτυχε';

  @override
  String importFile(String fileName) {
    return 'Αρχείο: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Σύνολο: $count';
  }

  @override
  String importAdded(int count) {
    return 'Προστέθηκαν: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Παραλείφθηκαν: $count';
  }

  @override
  String get errors => 'Σφάλματα:';

  @override
  String get error => 'Σφάλμα';

  @override
  String importErrorMessage(String error) {
    return 'Αποτυχία εισαγωγής:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Επιλογή Υλικού';

  @override
  String get subject => 'Θέμα:';

  @override
  String get source => 'Πηγή:';

  @override
  String get file => 'Αρχείο:';

  @override
  String progress(int current, int total) {
    return 'Πρόοδος: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Παρακαλώ εισάγετε αρχείο JSON';

  @override
  String get selectMaterialPrompt => 'Παρακαλώ επιλέξτε υλικό μελέτης';

  @override
  String get studyComplete => 'Μελετήθηκε';

  @override
  String get markAsStudied => 'Σήμανση ως Μελετημένο';

  @override
  String get listening => 'Ακούγοντας...';

  @override
  String get recognized => 'Αναγνώριση ολοκληρώθηκε';

  @override
  String recognitionFailed(String error) {
    return 'Αποτυχία αναγνώρισης φωνής: $error';
  }

  @override
  String get checking => 'Έλεγχος...';

  @override
  String get translating => 'Μετάφραση...';

  @override
  String get translationComplete =>
      'Μετάφραση ολοκληρώθηκε (απαιτείται αποθήκευση)';

  @override
  String get translationLoaded => 'Φορτώθηκε αποθηκευμένη μετάφραση';

  @override
  String translationFailed(String error) {
    return 'Αποτυχία μετάφρασης: $error';
  }

  @override
  String get enterTextToTranslate => 'Εισάγετε κείμενο προς μετάφραση';

  @override
  String get saving => 'Αποθήκευση...';

  @override
  String get noTranslationToSave => 'Καμία μετάφραση για αποθήκευση';

  @override
  String saveFailed(String error) {
    return 'Αποτυχία αποθήκευσης: $error';
  }

  @override
  String get playing => 'Αναπαραγωγή...';

  @override
  String get noTextToPlay => 'Κανένα κείμενο για αναπαραγωγή';

  @override
  String playbackFailed(String error) {
    return 'Αποτυχία αναπαραγωγής: $error';
  }

  @override
  String get sourceLanguage => 'Γλώσσα Πηγή';

  @override
  String get targetLanguage => 'Γλώσσα Στόχος';

  @override
  String get similarTextFound => 'Βρέθηκε παρόμοιο κείμενο';

  @override
  String get useExistingText => 'Χρήση Υπάρχοντος';

  @override
  String get createNew => 'Δημιουργία Νέου';

  @override
  String reviewCount(int count) {
    return 'Επαναλήφθηκε $count φορές';
  }

  @override
  String get tabSpeaking => 'Ομιλία';

  @override
  String get speakingPractice => 'Πρακτική Ομιλίας';

  @override
  String intervalSeconds(int seconds) {
    return 'Διάστημα: $secondsδ';
  }

  @override
  String get yourPronunciation => 'Η προφορά σας';

  @override
  String get correctAnswer => 'Σωστή Απάντηση';

  @override
  String score(String score) {
    return 'Ακρίβεια: $score%';
  }

  @override
  String get perfect => 'Τέλεια!';

  @override
  String get good => 'Καλά';

  @override
  String get tryAgain => 'Δοκιμάστε ξανά';

  @override
  String get startPractice => 'Έναρξη Πρακτικής';

  @override
  String get stopPractice => 'Διακοπή';

  @override
  String get startTutorial => 'Έναρξη Περιήγησης';

  @override
  String get tutorialMicTitle => 'Φωνητική Είσοδος';

  @override
  String get tutorialMicDesc => 'Πατήστε το μικρόφωνο για φωνητική εισαγωγή.';

  @override
  String get tutorialTabDesc =>
      'Μπορείτε να επιλέξετε την επιθυμητή λειτουργία μάθησης εδώ.';

  @override
  String get tutorialTapToContinue => 'Πατήστε για συνέχεια';

  @override
  String get tutorialTransTitle => 'Μετάφραση';

  @override
  String get tutorialTransDesc => 'Πατήστε εδώ για μετάφραση.';

  @override
  String get tutorialSaveTitle => 'Αποθήκευση';

  @override
  String get tutorialSaveDesc => 'Αποθηκεύστε τη μετάφραση.';

  @override
  String get tutorialM2SelectTitle => 'Επιλογή & Φίλτρο';

  @override
  String get tutorialM2SelectDesc => 'Επιλέξτε υλικό ή \'Επανάληψη Όλων\'.';

  @override
  String get tutorialM2ListTitle => 'Λίστα Μελέτης';

  @override
  String get tutorialM2ListDesc =>
      'Ελέγξτε τις κάρτες και γυρίστε τις. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Επιλογή Υλικού';

  @override
  String get tutorialM3SelectDesc => 'Επιλέξτε σετ για πρακτική ομιλίας.';

  @override
  String get tutorialM3IntervalTitle => 'Διάστημα';

  @override
  String get tutorialM3IntervalDesc => 'Ρυθμίστε το χρόνο αναμονής.';

  @override
  String get tutorialM3StartTitle => 'Έναρξη';

  @override
  String get tutorialM3StartDesc => 'Πατήστε play για έναρξη.';

  @override
  String get startWarning => 'Προειδοποίηση';

  @override
  String get noVoiceDetected => 'Δεν ανιχνεύθηκε φωνή';

  @override
  String get tooltipSearch => 'Αναζήτηση';

  @override
  String get tooltipStudyReview => 'Μελέτη+Επανάληψη';

  @override
  String get tooltipSpeaking => 'Ομιλία';

  @override
  String get tooltipDecrease => 'Μείωση';

  @override
  String get tooltipIncrease => 'Αύξηση';

  @override
  String get languageSettings => 'Ρυθμίσεις γλώσσας';

  @override
  String get tutorialM2DropdownDesc => 'Επιλέξτε εκπαιδευτικό υλικό.';

  @override
  String get tutorialM2ImportDesc =>
      'Εισαγωγή αρχείου JSON από φάκελο συσκευής.';

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
  String get tutorialContextTitle => 'Ετικέτα περιβάλλοντος';

  @override
  String get tutorialContextDesc =>
      'Προσθέστε πλαίσιο (π.χ. Πρωί) για να διακρίνετε παρόμοιες προτάσεις.';

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
  String get usageLimitTitle => 'Έφτασε το όριο';

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
  String get selectMaterialSet => '학습 자료집 선택';

  @override
  String get sectionWords => '단어';

  @override
  String get sectionSentences => '문장';

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
  String get tutorialSwapDesc =>
      'Ανταλλάσσω τη γλώσσα μου με τη γλώσσα που μαθαίνω.';

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
  String get menuSelectMaterialSet => 'Επιλέξτε ένα υλικό μελέτης';

  @override
  String get sectionWord => 'Ενότητα λέξεων';

  @override
  String get sectionSentence => 'Ενότητα προτάσεων';

  @override
  String get tabWord => 'λέξη';

  @override
  String get tabSentence => 'πρόταση';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get clearAll => '모두 지우기';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get skip => '건너뛰기';

  @override
  String get inputModeTitle => '입력';

  @override
  String get reviewModeTitle => '복습';

  @override
  String get practiceModeTitle => '발음 연습';

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
  String get basicWordRepository => 'Βασικό Αποθετήριο Λέξεων';

  @override
  String get basicSentenceRepository => 'Βασικό Αποθετήριο Φράσεων';

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
  String get metadataDialogTitle => '상세 정보';

  @override
  String get selectPOS => '품사 선택';

  @override
  String get selectSentenceType => '문장 종류 선택';

  @override
  String get metadataRootWord => '원형 (Root Word)';

  @override
  String get posNoun => '명사';

  @override
  String get posVerb => '동사';

  @override
  String get posAdjective => '형용사';

  @override
  String get posAdverb => '부사';

  @override
  String get posPronoun => '대명사';

  @override
  String get posPreposition => '전치사/조사';

  @override
  String get posConjunction => '접속사';

  @override
  String get posInterjection => '감탄사';

  @override
  String get typeStatement => '평서문';

  @override
  String get typeQuestion => '의문문';

  @override
  String get typeExclamation => '감탄문';

  @override
  String get typeImperative => '명령문';
}

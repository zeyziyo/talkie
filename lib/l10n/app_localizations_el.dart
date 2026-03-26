// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get basicWords => 'Βασικό αποθετήριο λέξεων';

  @override
  String get inputLanguage => 'Γλώσσα εισαγωγής';

  @override
  String get translationLanguage => 'Γλώσσα μετάφρασης';

  @override
  String get simplifiedGuidance =>
      'Μετατρέψτε άμεσα τις καθημερινές συνομιλίες σε ξένη γλώσσα! Το Talkie καταγράφει την γλωσσική σας ζωή.';

  @override
  String get noDataForLanguage =>
      'Δεν υπάρχουν μαθησιακά δεδομένα για την επιλεγμένη γλώσσα στην τοπική βάση δεδομένων. Κάντε λήψη των δεδομένων ή επιλέξτε άλλη γλώσσα.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get accuracy => 'Ακρίβεια';

  @override
  String get ttsMissing =>
      'Η φωνητική μηχανή για αυτήν τη γλώσσα δεν είναι εγκατεστημένη στη συσκευή σας.';

  @override
  String get ttsInstallGuide =>
      'Εγκαταστήστε τα δεδομένα γλώσσας στις Ρυθμίσεις Android > Google TTS.';

  @override
  String get adLoading => 'Φόρτωση διαφήμισης. Προσπαθήστε ξανά σε λίγο.';

  @override
  String get addNewSubject => 'Προσθήκη νέου τίτλου';

  @override
  String get addParticipant => 'Προσθήκη συμμετέχοντα';

  @override
  String get addTagHint => 'Προσθήκη ετικέτας...';

  @override
  String get alreadyHaveAccount => 'Έχετε ήδη λογαριασμό;';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Αυτόματη αναπαραγωγή';

  @override
  String get basic => 'Βασικό';

  @override
  String get basicDefault => 'Βασικό';

  @override
  String get basicMaterialRepository => 'Βασικό αποθετήριο προτάσεων/λέξεων';

  @override
  String get basicSentenceRepository => 'Βασικό Αποθετήριο Φράσεων';

  @override
  String get basicSentences => 'Βασικό αποθετήριο προτάσεων';

  @override
  String get basicWordRepository => 'Βασικό Αποθετήριο Λέξεων';

  @override
  String get caseObject => 'Αιτιατική';

  @override
  String get casePossessive => 'Γενική';

  @override
  String get casePossessivePronoun => 'Κτητική αντωνυμία';

  @override
  String get caseReflexive => 'Αυτοπαθής';

  @override
  String get caseSubject => 'Ονομαστική';

  @override
  String get chatAiChat => 'Συνομιλία';

  @override
  String get chatAllConversations => 'Όλες οι συνομιλίες';

  @override
  String get chatChoosePersona => 'Επιλογή περσόνας';

  @override
  String get chatEndMessage => 'Θέλετε να τερματίσετε τη συνομιλία;';

  @override
  String get chatEndTitle => 'Τερματισμός και αποθήκευση συνομιλίας';

  @override
  String chatFailed(Object error) {
    return 'Αποτυχία συνομιλίας: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Απόσπασμα συνομιλίας ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Ιστορικό συνομιλιών';

  @override
  String get chatNew => 'Νέα συνομιλία';

  @override
  String get chatNewChat => 'Νέα συνομιλία';

  @override
  String get chatNoConversations => 'Δεν υπάρχουν ακόμη συνομιλίες';

  @override
  String get chatSearchHint => 'Αναζήτηση με βάση τον τίτλο της συνομιλίας...';

  @override
  String get chatNoteSearchHint => 'Αναζήτηση στις σημειώσεις...';

  @override
  String get chatSaveAndExit => 'Αποθήκευση και έξοδος';

  @override
  String get chatStartNewPrompt => 'Ξεκινήστε μια νέα συνομιλία για εξάσκηση!';

  @override
  String get chatTypeHint => 'Πληκτρολογήστε ένα μήνυμα...';

  @override
  String get chatUntitled => 'Συνομιλία χωρίς τίτλο';

  @override
  String get checking => 'Έλεγχος...';

  @override
  String get clearAll => '모두 지우기';

  @override
  String get confirm => 'Επιβεβαίωση';

  @override
  String get confirmDelete => 'Είστε σίγουροι για τη διαγραφή;';

  @override
  String get confirmDeleteConversation =>
      'Θέλετε να διαγράψετε αυτήν τη συνομιλία;\nΔεν θα μπορείτε να την επαναφέρετε.';

  @override
  String get confirmDeleteParticipant =>
      'Θέλετε να διαγράψετε αυτόν τον συμμετέχοντα;';

  @override
  String get contextTagHint =>
      'Γράψτε την κατάσταση για να τη διακρίνετε αργότερα';

  @override
  String get contextTagLabel =>
      'Πλαίσιο/Κατάσταση (προαιρετικό) - π.χ. Καλημέρα, Ευγενική ομιλία';

  @override
  String get copiedToClipboard => 'Αντιγράφηκε στο πρόχειρο!';

  @override
  String get copy => 'Αντιγραφή';

  @override
  String get correctAnswer => 'Σωστή Απάντηση';

  @override
  String get createNew => 'Δημιουργία Νέου';

  @override
  String get currentLocation => 'Τρέχουσα τοποθεσία';

  @override
  String get currentMaterialLabel => 'Τρέχουσα επιλεγμένη συλλογή υλικού:';

  @override
  String get delete => 'Διαγραφή';

  @override
  String deleteFailed(String error) {
    return 'Αποτυχία διαγραφής: $error';
  }

  @override
  String get deleteRecord => 'Διαγραφή Εγγραφής';

  @override
  String get dialogueQuestDesc =>
      'Εξασκήστε συνομιλίες μέσω παιχνιδιού ρόλων. Επιλέξτε και πείτε τις κατάλληλες απαντήσεις.';

  @override
  String get dialogueQuestTitle => 'Αποστολή διαλόγου';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get dontHaveAccount => 'Δεν έχετε λογαριασμό;';

  @override
  String get editParticipant => 'Επεξεργασία συμμετέχοντα';

  @override
  String get email => 'Email';

  @override
  String get emailAlreadyInUse =>
      'Αυτό το email χρησιμοποιείται ήδη. Συνδεθείτε ή χρησιμοποιήστε την ανάκτηση κωδικού πρόσβασης.';

  @override
  String get enterNewSubjectName => 'Εισαγωγή νέου τίτλου';

  @override
  String get enterSentenceHint => 'Εισαγάγετε μια πρόταση...';

  @override
  String get enterTextHint => 'Εισαγάγετε το κείμενο για μετάφραση';

  @override
  String get enterTextToTranslate => 'Εισάγετε κείμενο προς μετάφραση';

  @override
  String get enterWordHint => 'Εισαγάγετε μια λέξη...';

  @override
  String get error => 'Σφάλμα';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorSelectCategory => 'Επιλέξτε πρώτα μια λέξη ή πρόταση!';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errors => 'Σφάλματα:';

  @override
  String get female => 'Γυναίκα';

  @override
  String get file => 'Αρχείο:';

  @override
  String get filterAll => 'Όλα';

  @override
  String get flip => 'Γύρισμα';

  @override
  String get formComparative => 'Συγκριτικός βαθμός';

  @override
  String get formInfinitive => 'Απαρέμφατο/Ενεστώτας';

  @override
  String get formPast => 'Παρελθόν';

  @override
  String get formPastParticiple => 'Παθητική μετοχή';

  @override
  String get formPlural => 'Πληθυντικός';

  @override
  String get formPositive => 'Θετικός βαθμός';

  @override
  String get formPresent => 'Ενεστώτας';

  @override
  String get formPresentParticiple => 'Ενεργητική μετοχή (-ing)';

  @override
  String get formSingular => 'Ενικός';

  @override
  String get formSuperlative => 'Υπερθετικός βαθμός';

  @override
  String get formThirdPersonSingular => '3ο ενικό πρόσωπο';

  @override
  String get gameModeDesc => 'Επιλέξτε μια λειτουργία παιχνιδιού για εξάσκηση';

  @override
  String get gameModeTitle => 'Λειτουργία παιχνιδιού';

  @override
  String get gameOver => 'Τέλος παιχνιδιού';

  @override
  String get gender => 'Φύλο';

  @override
  String get labelFilterMaterial => 'Υλικό';

  @override
  String get labelFilterTag => 'Ετικέτα';

  @override
  String get generalTags => 'Γενικές ετικέτες';

  @override
  String get getMaterials => 'Λήψη υλικών';

  @override
  String get good => 'Καλά';

  @override
  String get googleContinue => 'Συνέχεια με το Google';

  @override
  String get helpDialogueImportDesc =>
      'Εισαγάγετε ένα ολόκληρο σετ διαλόγων από ένα αρχείο JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'Για εισαγωγή υλικού στη Λειτουργία 3, δημιουργήστε JSON:';

  @override
  String get helpJsonTypeDialogue => 'Διάλογος';

  @override
  String get helpJsonTypeSentence => 'Πρόταση';

  @override
  String get helpJsonTypeWord => 'Λέξη';

  @override
  String get helpMode1Desc =>
      'Ξεκινήστε την εκμάθηση γλωσσών με τον πιο διαισθητικό τρόπο με ένα premium 3D μικρόφωνο και μεγάλα εικονίδια πληκτρολογίου.';

  @override
  String get helpMode1Details =>
      '• Ρύθμιση γλώσσας: Ελέγξτε τη γλώσσα σας και τη γλώσσα που μαθαίνετε με το κουμπί γλώσσας στο πάνω μέρος της αρχικής οθόνης και αλλάξτε τη γλώσσα εκμάθησης.\n• Απλή εισαγωγή: Εισαγάγετε αμέσως μέσω του μεγάλου μικροφώνου και του παραθύρου κειμένου στο κέντρο.\n• Επιβεβαίωση ρυθμίσεων: Αφού ολοκληρώσετε την εισαγωγή, πατήστε το μπλε κουμπί ελέγχου στα δεξιά. Εμφανίζεται ένα παράθυρο λεπτομερών ρυθμίσεων.\n• Λεπτομερείς ρυθμίσεις: Μπορείτε να καθορίσετε το σημειωματάριο, τη σημείωση (σημείωση) και την ετικέτα που θα αποθηκεύσετε στο παράθυρο διαλόγου που εμφανίζεται.\n• Μετάφραση τώρα: Αφού ολοκληρώσετε τις ρυθμίσεις, πατήστε το πράσινο κουμπί μετάφρασης για να εκτελέσει αμέσως η τεχνητή νοημοσύνη τη μετάφραση.\n• Αυτόματη αναζήτηση: Εντοπίζει και εμφανίζει παρόμοιες υπάρχουσες μεταφράσεις σε πραγματικό χρόνο κατά την εισαγωγή.\n• Ακούστε και αποθηκεύστε: Ακούστε την προφορά με το εικονίδιο του ηχείου στο κάτω μέρος του αποτελέσματος της μετάφρασης και προσθέστε το στη λίστα εκμάθησης μέσω της «Αποθήκευσης δεδομένων».';

  @override
  String get helpMode2Desc =>
      'Επανάληψη αποθηκευμένων προτάσεων με απόκρυψη μετάφρασης.';

  @override
  String get helpMode2Details =>
      '• Επιλογή συλλογής: Χρησιμοποιήστε το μενού (⋮) επάνω δεξιά για να επιλέξετε \'Επιλογή συλλογής εκμάθησης\' ή \'Διαδικτυακή βιβλιοθήκη\'\n• Αναστροφή κάρτας: Ελέγξτε τη μετάφραση με \'Εμφάνιση/Απόκρυψη\'\n• Ακρόαση: Αναπαραγωγή προφοράς με το εικονίδιο του ηχείου\n• Ολοκλήρωση εκμάθησης: Σημειώστε ως ολοκληρωμένο με ένα σημάδι ελέγχου (V)\n• Διαγραφή: Διαγράψτε την εγγραφή πατώντας παρατεταμένα την κάρτα\n• Αναζήτηση και φίλτρα: Υποστηρίζεται γραμμή αναζήτησης (έξυπνη αναζήτηση σε πραγματικό χρόνο) και φίλτρα ετικετών, αρχικού γράμματος';

  @override
  String get helpMode3Desc =>
      'Εξασκήστε την προφορά σας ακούγοντας και επαναλαμβάνοντας φράσεις (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Επιλογή: Διαλέξτε πακέτο\n• Διάστημα: [-] [+] χρόνος αναμονής (3δ-60δ)\n• Start/Stop: Έλεγχος συνεδρίας\n• Ομιλία: Ακούστε και επαναλάβετε\n• Βαθμολογία: Ακρίβεια (0-100)\n• Επανάληψη: Κουμπί δοκιμής ξανά';

  @override
  String get helpModeChatDesc =>
      'Εξασκήστε την πρακτική συνομιλία μιλώντας με μια περσόνα AI.';

  @override
  String get helpModeChatDetails =>
      '• Συνομιλία AI: Εξασκήστε πρακτικές συνομιλίες με μια περσόνα στο μενού «Συνομιλία» στην κάτω γραμμή καρτελών\n• Ρύθμιση περσόνας: Καθορίστε ελεύθερα το φύλο, το όνομα και τον κωδικό γλώσσας του άλλου ατόμου\n• Δράμα GPS: Αναγνωρίζει την τρέχουσα τοποθεσία μου και προτείνει θέματα συζήτησης κατάλληλα για το μέρος\n• 2 γλώσσες: Οι απαντήσεις της AI εμφανίζονται μαζί με τη μετάφραση για μεγιστοποίηση της μαθησιακής επίδρασης\n• Διαχείριση αρχείων: Φιλτράρετε το ιστορικό προηγούμενων συνομιλιών και αποθηκεύστε συγκεκριμένα μηνύματα κατά τη διάρκεια της συνομιλίας ως μαθησιακό υλικό';

  @override
  String get helpTabJson => 'Μορφή JSON';

  @override
  String get helpTabModes => 'Λειτουργίες';

  @override
  String get helpTabQuickStart => 'Γρήγορη εκκίνηση';

  @override
  String get helpTabTour => 'Περιήγηση';

  @override
  String get helpTitle => 'Βοήθεια & Οδηγός';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Απόκρυψη';

  @override
  String importAdded(int count) {
    return 'Προστέθηκαν: $count';
  }

  @override
  String get importComplete => 'Ολοκληρώθηκε';

  @override
  String get importDuplicateTitleError =>
      'Υπάρχει ήδη υλικό με τον ίδιο τίτλο. Αλλάξτε τον τίτλο και δοκιμάστε ξανά.';

  @override
  String importErrorMessage(String error) {
    return 'Αποτυχία εισαγωγής:\\n$error';
  }

  @override
  String get importFailed => 'Απέτυχε';

  @override
  String importFile(String fileName) {
    return 'Αρχείο: $fileName';
  }

  @override
  String get importJsonFile => 'Εισαγωγή JSON';

  @override
  String get importJsonFilePrompt => 'Παρακαλώ εισάγετε αρχείο JSON';

  @override
  String importSkipped(int count) {
    return 'Παραλείφθηκαν: $count';
  }

  @override
  String importTotal(int count) {
    return 'Σύνολο: $count';
  }

  @override
  String get importing => 'Εισαγωγή...';

  @override
  String get inputModeTitle => '입력';

  @override
  String intervalSeconds(int seconds) {
    return 'Διάστημα: $secondsδ';
  }

  @override
  String get invalidEmail => 'Εισαγάγετε ένα έγκυρο email.';

  @override
  String get kakaoContinue => 'Συνέχεια με Kakao';

  @override
  String get labelLangCode => 'Κωδικός γλώσσας (π.χ. en-US, ko-KR)';

  @override
  String get labelName => 'Όνομα';

  @override
  String get labelNote => 'Σημείωση';

  @override
  String get labelPOS => 'Μέρος του λόγου';

  @override
  String get labelRole => 'Ρόλος';

  @override
  String get labelSentence => 'Πρόταση';

  @override
  String get labelSentenceCollection => 'Συλλογή προτάσεων';

  @override
  String get labelSentenceType => 'Τύπος πρότασης';

  @override
  String get labelShowMemorized => 'Ολοκληρωμένο';

  @override
  String get labelType => 'Τύπος:';

  @override
  String get labelWord => 'Λέξη';

  @override
  String get labelWordbook => 'Λεξιλόγιο';

  @override
  String get language => 'Γλώσσα';

  @override
  String get languageSettings => 'Ρυθμίσεις γλώσσας';

  @override
  String get languageSettingsTitle => 'Ρυθμίσεις γλώσσας';

  @override
  String get libTitleFirstMeeting => 'Πρώτη γνωριμία';

  @override
  String get libTitleGreetings1 => 'Χαιρετισμοί 1';

  @override
  String get libTitleNouns1 => 'Ουσιαστικά 1';

  @override
  String get libTitleVerbs1 => 'Ρήματα 1';

  @override
  String get listen => 'Ακρόαση';

  @override
  String get listening => 'Ακούγοντας...';

  @override
  String get loadingParticipants => 'Φόρτωση συμμετεχόντων...';

  @override
  String get location => 'Τοποθεσία';

  @override
  String get login => 'Σύνδεση';

  @override
  String get logout => 'Αποσύνδεση';

  @override
  String get logoutConfirmMessage =>
      'Θέλετε να αποσυνδεθείτε από αυτήν τη συσκευή;';

  @override
  String get logoutConfirmTitle => 'Αποσύνδεση';

  @override
  String get male => 'Άνδρας';

  @override
  String get manageParticipants => 'Διαχείριση συμμετεχόντων';

  @override
  String get manual => 'Χειροκίνητη εισαγωγή';

  @override
  String get markAsStudied => 'Σήμανση ως Μελετημένο';

  @override
  String get materialInfo => 'Πληροφορίες υλικού';

  @override
  String get me => 'Εγώ';

  @override
  String get menuDeviceImport => 'Εισαγωγή υλικού από τη συσκευή';

  @override
  String get menuHelp => 'Βοήθεια';

  @override
  String get menuLanguageSettings => 'Ρυθμίσεις γλώσσας';

  @override
  String get menuOnlineLibrary => 'Διαδικτυακή βιβλιοθήκη';

  @override
  String get menuSelectMaterialSet => 'Επιλέξτε ένα υλικό μελέτης';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Ξενάγηση χρήσης';

  @override
  String get menuWebDownload => 'Εγχειρίδιο χρήστη';

  @override
  String get metadataDialogTitle => 'Αναλυτική ταξινόμηση';

  @override
  String get metadataFormType => 'Μορφή γραμματικής';

  @override
  String get metadataRootWord => 'Ρίζα λέξης';

  @override
  String get micButtonTooltip => 'Έναρξη αναγνώρισης φωνής';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Τρέχουσα επιλεγμένη συλλογή υλικού: $name';
  }

  @override
  String get mode2Title => 'Επανάληψη';

  @override
  String get mode3Next => 'Επόμενο';

  @override
  String get mode3Start => 'Έναρξη';

  @override
  String get mode3Stop => 'Τέλος';

  @override
  String get mode3TryAgain => 'Ξανά';

  @override
  String get mySentenceCollection => 'Η συλλογή μου από προτάσεις';

  @override
  String get myWordbook => 'Το βιβλίο μου με λέξεις';

  @override
  String get neutral => 'Ουδέτερο';

  @override
  String get newSubjectName => 'Νέος τίτλος Λεξιλογίου/Φράσεων';

  @override
  String get next => 'Επόμενο';

  @override
  String get noDialogueHistory => 'Δεν υπάρχει ιστορικό διαλόγων.';

  @override
  String get noInternetWarningMic =>
      'Δεν υπάρχει σύνδεση στο διαδίκτυο. Η αναγνώριση φωνής ενδέχεται να μην είναι δυνατή εκτός σύνδεσης.';

  @override
  String get noInternetWarningTranslate =>
      'Δεν υπάρχει σύνδεση στο διαδίκτυο. Η λειτουργία μετάφρασης δεν είναι διαθέσιμη εκτός σύνδεσης. Χρησιμοποιήστε τη λειτουργία επανάληψης.';

  @override
  String get noMaterialsInCategory =>
      'Δεν υπάρχουν υλικά σε αυτήν την κατηγορία.';

  @override
  String get noParticipantsFound => 'Δεν βρέθηκαν εγγεγραμμένοι συμμετέχοντες.';

  @override
  String get noRecords => 'Χωρίς εγγραφές για την επιλεγμένη γλώσσα';

  @override
  String get noStudyMaterial => 'Δεν υπάρχει υλικό μελέτης.';

  @override
  String get noTextToPlay => 'Κανένα κείμενο για αναπαραγωγή';

  @override
  String get noTranslationToSave => 'Καμία μετάφραση για αποθήκευση';

  @override
  String get noVoiceDetected => 'Δεν ανιχνεύθηκε φωνή';

  @override
  String get notSelected => '- Δεν έχει επιλεγεί -';

  @override
  String get onlineLibraryCheckInternet =>
      'Ελέγξτε τη σύνδεσή σας στο διαδίκτυο ή δοκιμάστε ξανά αργότερα.';

  @override
  String get onlineLibraryLoadFailed => 'Αποτυχία φόρτωσης υλικών.';

  @override
  String get onlineLibraryNoMaterials => 'Δεν υπάρχουν υλικά.';

  @override
  String get participantDeleted => 'Ο συμμετέχων διαγράφηκε.';

  @override
  String get participantRename => 'Μετονομασία συμμετέχοντα';

  @override
  String get partner => 'Συνεργάτης';

  @override
  String get partnerMode => 'Λειτουργία συνεργάτη';

  @override
  String get password => 'Κωδικός πρόσβασης';

  @override
  String get passwordTooShort =>
      'Ο κωδικός πρόσβασης πρέπει να έχει τουλάχιστον 6 χαρακτήρες.';

  @override
  String get perfect => 'Τέλεια!';

  @override
  String get personaFriend => 'Τοπικός φίλος';

  @override
  String get personaGuide => 'Τουριστικός οδηγός';

  @override
  String get personaTeacher => 'Δάσκαλος Αγγλικών';

  @override
  String get playAgain => 'Ξανά';

  @override
  String playbackFailed(String error) {
    return 'Αποτυχία αναπαραγωγής: $error';
  }

  @override
  String get playing => 'Αναπαραγωγή...';

  @override
  String get posAdjective => 'Επίθετο';

  @override
  String get posAdverb => 'Επίρρημα';

  @override
  String get posConjunction => 'Σύνδεσμος';

  @override
  String get posInterjection => 'Επιφώνημα';

  @override
  String get posNoun => 'Ουσιαστικό';

  @override
  String get posPreposition => 'Πρόθεση';

  @override
  String get posPronoun => 'Αντωνυμία';

  @override
  String get posVerb => 'Ρήμα';

  @override
  String get practiceModeTitle => 'Εξάσκηση';

  @override
  String get practiceWordsOnly => 'Εξάσκηση μόνο λέξεων';

  @override
  String progress(int current, int total) {
    return 'Πρόοδος: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Εμφάνιση $count πρόσφατα δημιουργημένων';
  }

  @override
  String recognitionFailed(String error) {
    return 'Αποτυχία αναγνώρισης φωνής: $error';
  }

  @override
  String get recognized => 'Αναγνώριση ολοκληρώθηκε';

  @override
  String get recognizedText => 'Αναγνωρισμένο κείμενο:';

  @override
  String get recordDeleted => 'Η εγγραφή διαγράφηκε επιτυχώς';

  @override
  String get refresh => 'Ανανέωση';

  @override
  String get reset => 'Επαναφορά';

  @override
  String get resetPracticeHistory => 'Επαναφορά ιστορικού εξάσκησης';

  @override
  String get retry => 'Επανάληψη;';

  @override
  String get reviewAll => 'Επισκόπηση όλων';

  @override
  String reviewCount(int count) {
    return 'Επαναλήφθηκε $count φορές';
  }

  @override
  String get reviewModeTitle => '복습';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Τρίτος';

  @override
  String get roleUser => 'Χρήστης';

  @override
  String get save => 'Αποθήκευση';

  @override
  String get saveData => 'Αποθήκευση';

  @override
  String saveFailed(String error) {
    return 'Αποτυχία αποθήκευσης: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Αποθηκεύστε μεταφράσεις από τη λειτουργία αναζήτησης';

  @override
  String get saved => 'Αποθηκεύτηκε';

  @override
  String get saving => 'Αποθήκευση...';

  @override
  String score(String score) {
    return 'Ακρίβεια: $score%';
  }

  @override
  String get scoreLabel => 'Σκορ';

  @override
  String get search => 'Αναζήτηση';

  @override
  String get searchConditions => 'Όροι αναζήτησης';

  @override
  String get searchSentenceHint => 'Αναζήτηση πρότασης...';

  @override
  String get searchWordHint => 'Αναζήτηση λέξης...';

  @override
  String get sectionSentence => 'Ενότητα προτάσεων';

  @override
  String get sectionSentences => '문장';

  @override
  String get sectionWord => 'Ενότητα λέξεων';

  @override
  String get sectionWords => '단어';

  @override
  String get selectExistingSubject => 'Επιλογή υπάρχοντος τίτλου';

  @override
  String get selectMaterialPrompt => 'Παρακαλώ επιλέξτε υλικό μελέτης';

  @override
  String get selectMaterialSet => '학습 자료집 선택';

  @override
  String get selectPOS => 'Επιλογή μέρους του λόγου';

  @override
  String get selectParticipants => 'Επιλογή συμμετεχόντων';

  @override
  String get selectSentenceType => 'Επιλογή τύπου πρότασης';

  @override
  String get selectStudyMaterial => 'Επιλογή Υλικού';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Πρόταση';

  @override
  String get signUp => 'Εγγραφή';

  @override
  String get similarTextFound => 'Βρέθηκε παρόμοιο κείμενο';

  @override
  String get skip => '건너뛰기';

  @override
  String get source => 'Πηγή:';

  @override
  String get sourceLanguage => 'Γλώσσα Πηγή';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Μιλήστε τώρα!';

  @override
  String get speaker => 'Ομιλητής';

  @override
  String get speakerSelect => 'Επιλογή ομιλητή';

  @override
  String get speakingPractice => 'Πρακτική Ομιλίας';

  @override
  String get startChat => 'Έναρξη συνομιλίας';

  @override
  String get startPractice => 'Έναρξη Πρακτικής';

  @override
  String get startTutorial => 'Έναρξη Περιήγησης';

  @override
  String get startWarning => 'Προειδοποίηση';

  @override
  String get startsWith => 'Ξεκινά με';

  @override
  String get statusCheckEmail =>
      'Ελέγξτε το email σας για να ολοκληρώσετε την επαλήθευση.';

  @override
  String statusDownloading(Object name) {
    return 'Λήψη: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Αποτυχία εισαγωγής: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name εισαγωγή ολοκληρώθηκε';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Η σύνδεση ακυρώθηκε.';

  @override
  String statusLoginFailed(Object error) {
    return 'Αποτυχία σύνδεσης: $error';
  }

  @override
  String get statusLoginSuccess => 'Επιτυχής σύνδεση.';

  @override
  String get statusLogoutSuccess => 'Αποσυνδεθήκατε.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Αποτυχία εγγραφής: $error';
  }

  @override
  String get statusSigningUp => 'Εγγραφή...';

  @override
  String get stopPractice => 'Διακοπή';

  @override
  String get studyComplete => 'Μελετήθηκε';

  @override
  String studyRecords(int count) {
    return 'Εγγραφές ($count)';
  }

  @override
  String get styleFormal => 'Επίσημο';

  @override
  String get styleInformal => 'Ανεπιτήδευτο';

  @override
  String get stylePolite => 'Ευγενικό';

  @override
  String get styleSlang => 'Αργκό';

  @override
  String get subject => 'Θέμα:';

  @override
  String get swapLanguages => 'Αντιμετάθεση γλωσσών';

  @override
  String get switchToAi => 'Εναλλαγή σε λειτουργία AI';

  @override
  String get switchToPartner => 'Εναλλαγή σε λειτουργία συνεργάτη';

  @override
  String get syncingData => 'Συγχρονισμός δεδομένων...';

  @override
  String get tabConversation => 'Συνομιλία';

  @override
  String tabReview(int count) {
    return 'Επανάληψη ($count)';
  }

  @override
  String get tabSentence => 'πρόταση';

  @override
  String get tabSpeaking => 'Ομιλία';

  @override
  String tabStudyMaterial(int count) {
    return 'Υλικό ($count)';
  }

  @override
  String get tabWord => 'λέξη';

  @override
  String get tagFormal => 'Επίσημο';

  @override
  String get tagSelection => 'Επιλογή ετικέτας';

  @override
  String get targetLanguage => 'Γλώσσα Στόχος';

  @override
  String get targetLanguageFilter => 'Φίλτρο Γλώσσας:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Χρόνος για σκέψη πριν αποκαλυφθεί η σωστή απάντηση.';

  @override
  String get thinkingTimeInterval => 'Χρονικό διάστημα σκέψης';

  @override
  String get timeUp => 'Έληξε ο χρόνος!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Ετικέτα τίτλου (Συλλογή)';

  @override
  String get tooltipDecrease => 'Μείωση';

  @override
  String get tooltipIncrease => 'Αύξηση';

  @override
  String get tooltipSearch => 'Αναζήτηση';

  @override
  String get tooltipSpeaking => 'Ομιλία';

  @override
  String get tooltipStudyReview => 'Μελέτη+Επανάληψη';

  @override
  String totalRecords(int count) {
    return 'Σύνολο $count εγγραφών (Προβολή όλων)';
  }

  @override
  String get translate => 'Μετάφραση';

  @override
  String get translating => 'Μετάφραση...';

  @override
  String get translation => 'Μετάφραση';

  @override
  String get translationComplete =>
      'Μετάφραση ολοκληρώθηκε (απαιτείται αποθήκευση)';

  @override
  String translationFailed(String error) {
    return 'Αποτυχία μετάφρασης: $error';
  }

  @override
  String get translationLimitExceeded => 'Υπέρβαση ορίου μετάφρασης';

  @override
  String get translationLimitMessage =>
      'Έχετε χρησιμοποιήσει όλες τις δωρεάν μεταφράσεις της ημέρας (5).\\n\\nΘέλετε να παρακολουθήσετε μια διαφήμιση για να ανανεώσετε αμέσως 5 μεταφράσεις;';

  @override
  String get translationLoaded => 'Φορτώθηκε αποθηκευμένη μετάφραση';

  @override
  String get translationRefilled => 'Οι μεταφράσεις σας ανανεώθηκαν κατά 5!';

  @override
  String get translationResultHint => 'Αποτέλεσμα μετάφρασης - Επεξεργάσιμο';

  @override
  String get tryAgain => 'Δοκιμάστε ξανά';

  @override
  String get tutorialAiChatDesc =>
      'Εξασκήστε ρεαλιστικές συνομιλίες με περσόνες AI.';

  @override
  String get tutorialAiChatTitle => 'Συνομιλία AI';

  @override
  String get tutorialContextDesc =>
      'Προσθέστε πλαίσιο (π.χ. Πρωί) για να διακρίνετε παρόμοιες προτάσεις.';

  @override
  String get tutorialContextTitle => 'Ετικέτα περιβάλλοντος';

  @override
  String get tutorialLangSettingsDesc =>
      'Ορίστε την αρχική και την επιθυμητή γλώσσα για μετάφραση.';

  @override
  String get tutorialLangSettingsTitle => 'Ρυθμίσεις γλώσσας';

  @override
  String get tutorialM1ToggleDesc =>
      'Αλλάξτε τη λειτουργία λέξεων και προτάσεων εδώ.';

  @override
  String get tutorialM1ToggleTitle => 'Λειτουργία λέξεων/προτάσεων';

  @override
  String get tutorialM2DropdownDesc => 'Επιλέξτε εκπαιδευτικό υλικό.';

  @override
  String get tutorialM2ImportDesc =>
      'Εισαγωγή αρχείου JSON από φάκελο συσκευής.';

  @override
  String get tutorialM2ListDesc =>
      'Ελέγξτε τις κάρτες και γυρίστε τις. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Λίστα Μελέτης';

  @override
  String get tutorialM2SearchDesc =>
      'Αναζητήστε και βρείτε γρήγορα αποθηκευμένες λέξεις και προτάσεις.';

  @override
  String get tutorialM2SelectDesc => 'Επιλέξτε υλικό ή \'Επανάληψη Όλων\'.';

  @override
  String get tutorialM2SelectTitle => 'Επιλογή & Φίλτρο';

  @override
  String get tutorialM3IntervalDesc => 'Ρυθμίστε το χρόνο αναμονής.';

  @override
  String get tutorialM3IntervalTitle => 'Διάστημα';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Επιλέξτε σετ για πρακτική ομιλίας.';

  @override
  String get tutorialM3SelectTitle => 'Επιλογή Υλικού';

  @override
  String get tutorialM3StartDesc => 'Πατήστε play για έναρξη.';

  @override
  String get tutorialM3StartTitle => 'Έναρξη';

  @override
  String get tutorialM3WordsDesc =>
      'Εάν επιλεγεί, μόνο οι αποθηκευμένες λέξεις θα εξασκηθούν.';

  @override
  String get tutorialM3WordsTitle => 'Εξάσκηση λέξεων';

  @override
  String get tutorialMicDesc => 'Πατήστε το μικρόφωνο για φωνητική εισαγωγή.';

  @override
  String get tutorialMicTitle => 'Φωνητική Είσοδος';

  @override
  String get tutorialSaveDesc => 'Αποθηκεύστε τη μετάφραση.';

  @override
  String get tutorialSaveTitle => 'Αποθήκευση';

  @override
  String get tutorialSwapDesc =>
      'Ανταλλάσσω τη γλώσσα μου με τη γλώσσα που μαθαίνω.';

  @override
  String get tutorialTabDesc =>
      'Μπορείτε να επιλέξετε την επιθυμητή λειτουργία μάθησης εδώ.';

  @override
  String get tutorialTapToContinue => 'Πατήστε για συνέχεια';

  @override
  String get tutorialTransDesc => 'Πατήστε εδώ για μετάφραση.';

  @override
  String get tutorialTransTitle => 'Μετάφραση';

  @override
  String get typeExclamation => 'Επιφώνημα';

  @override
  String get typeImperative => 'Προστακτική';

  @override
  String get typeQuestion => 'Ερώτηση';

  @override
  String get typeStatement => 'Δήλωση';

  @override
  String get usageLimitTitle => 'Έφτασε το όριο';

  @override
  String get useExistingText => 'Χρήση Υπάρχοντος';

  @override
  String get viewOnlineGuide => 'Προβολή διαδικτυακού οδηγού';

  @override
  String get voluntaryTranslations => 'Εθελοντικές μεταφράσεις';

  @override
  String get watchAdAndRefill =>
      'Παρακολουθήστε μια διαφήμιση και ανανεώστε (+5)';

  @override
  String get word => 'Λέξη';

  @override
  String get wordDefenseDesc =>
      'Υπερασπιστείτε τη βάση σας λέγοντας τις λέξεις πριν φτάσουν οι εχθροί.';

  @override
  String get wordDefenseTitle => 'Άμυνα λέξεων';

  @override
  String get wordModeLabel => 'Λειτουργία λέξεων';

  @override
  String get yourPronunciation => 'Η προφορά σας';

  @override
  String get ttsUnsupportedNatively =>
      'Η προεπιλεγμένη ρύθμιση αυτής της συσκευής δεν υποστηρίζει έξοδο φωνής για αυτήν τη γλώσσα.';

  @override
  String get homeTab => 'Μετάφραση';

  @override
  String get welcomeTitle => 'Καλώς ήρθατε στο Talkie!';

  @override
  String get welcomeDesc =>
      'Καλώς ήρθατε στο Talkie! Υποστηρίζουμε όλες τις γλώσσες, πάνω από 80 παγκοσμίως, με 100% ακεραιότητα, με νέα premium 3D σχέδια και βελτιστοποιημένη απόδοση για μια τέλεια μαθησιακή εμπειρία.';

  @override
  String get welcomeButton => 'Ξεκινήστε';

  @override
  String get labelDetails => 'Λεπτομέρειες';

  @override
  String get translationResult => 'Αποτέλεσμα μετάφρασης';

  @override
  String get inputContent => 'Περιεχόμενο εισαγωγής';

  @override
  String get translateNow => 'Μετάφραση τώρα';

  @override
  String get tooltipSettingsConfirm => 'Επιβεβαίωση ρυθμίσεων';

  @override
  String get hintNoteExample => 'Π.χ.: Περιβάλλον, ομώνυμα, κ.λπ.';

  @override
  String get hintTagExample => 'Π.χ.: Επιχειρήσεις, ταξίδια...';

  @override
  String get addNew => 'Προσθήκη νέου';

  @override
  String get newNotebookTitle => 'Όνομα νέου σημειωματάριου';

  @override
  String get enterNameHint => 'Εισαγάγετε όνομα';

  @override
  String get add => 'Προσθήκη';

  @override
  String get openSettings => 'Άνοιγμα ρυθμίσεων';

  @override
  String get helpNotebook =>
      'Επιλέξτε έναν φάκελο για να αποθηκεύσετε τα μεταφρασμένα αποτελέσματα.';

  @override
  String get helpNote =>
      'Καταγράψτε ελεύθερα τις έννοιες, τα παραδείγματα ή τις περιστάσεις των λέξεων.';

  @override
  String get helpTag =>
      'Εισαγάγετε λέξεις-κλειδιά για να ταξινομήσετε ή να αναζητήσετε αργότερα.';

  @override
  String get requestTranslation => 'Αίτημα μετάφρασης';

  @override
  String get statusRequestSuccess => 'Το αίτημα μετάφρασης ολοκληρώθηκε.';

  @override
  String statusRequestFailed(String error) {
    return 'Αποτυχία αιτήματος μετάφρασης: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Μη υποστηριζόμενη γλώσσα εκμάθησης';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Το υλικό που επιλέξατε δεν υποστηρίζει την τρέχουσα γλώσσα εκμάθησης ($targetLang) και δεν μπορεί να αποθηκευτεί τοπικά. Θέλετε να ζητήσετε μετάφραση;';
  }

  @override
  String get quickStartStep1Title => '1. Ρύθμιση γλώσσας';

  @override
  String get quickStartStep1Desc =>
      'Ορίστε πρώτα τη γλώσσα σας και τη γλώσσα εκμάθησης στο Μενού > Ρύθμιση γλώσσας.';

  @override
  String get quickStartStep2Title => '2. Βασική ροή';

  @override
  String get quickStartStep2Desc =>
      'Δημιουργήστε τις δικές σας κάρτες εκμάθησης με τη σειρά: Εισαγωγή (Μικρόφωνο/Πληκτρολόγιο) -> Μετάφραση -> Αποθήκευση.';

  @override
  String get quickStartStep3Title => '3. Χρήση λειτουργιών';

  @override
  String get quickStartStep3Desc =>
      'Εξασκηθείτε μέσω συνομιλίας και εξασκήστε την άρθρωση προφέροντας απευθείας το κείμενο στην καρτέλα εξάσκησης προφοράς.';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

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
  String get helpJsonDesc =>
      'Για εισαγωγή υλικού στη Λειτουργία 3, δημιουργήστε JSON:';

  @override
  String get helpTourDesc =>
      'Ξεκινήστε την περιήγηση για να μάθετε τις λειτουργίες.';

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
  String get tutorialM2ListDesc => 'Ελέγξτε τις κάρτες και γυρίστε τις.';

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
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get helpTitle => 'Bantuan & Panduan';

  @override
  String get helpTabModes => 'Mode';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpMode1Desc =>
      'Kenali suara, terjemahkan, dan dengarkan hasilnya.';

  @override
  String get helpMode1Details =>
      '• Input Suara: Ketuk ikon mikrofon untuk mulai/berhenti\n• Input Teks: Ketik langsung untuk menerjemahkan\n• Cari Otomatis: Mendeteksi kalimat serupa yang ada\n• Terjemahkan: Ketuk tombol untuk terjemahan instan\n• Dengar: Ikon speaker untuk TTS\n• Simpan: \'Simpan Data\' menambahkan ke riwayat\n• Hapus: Atur ulang semua input';

  @override
  String get helpMode2Desc =>
      'Ulas kalimat tersimpan dengan terjemahan sembunyi otomatis.';

  @override
  String get helpMode2Details =>
      '• Pilih Materi: Pilih set atau \'Ulas Semua\'\n• Balik Kartu: Gunakan \'Tampil/Sembunyi\' untuk melihat terjemahan\n• Dengar: Mainkan TTS untuk kalimat\n• Tandai: Centang (V) untuk item selesai\n• Hapus: Tekan lama kartu untuk menghapus\n• Filter: Lihat semua atau filter berdasarkan materi';

  @override
  String get helpMode3Desc =>
      'Latihan bicara dengan mendengar dan menirukan (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Pilih Materi: Pilih paket belajar\n• Interval: [-] [+] atur waktu tunggu (3d-60d)\n• Mulai/Berhenti: Kontrol sesi\n• Bicara: Dengar audio dan ulangi\n• Umpan Balik: Skor akurasi (0-100)\n• Coba Lagi: Gunakan tombol coba lagi jika suara tidak terdeteksi';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc =>
      'Untuk mengimpor materi belajar di Mode 3, buat file JSON dengan struktur berikut:';

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
  String get location => 'Lokasi';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Saya';

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
    return 'Ulasan ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materi Belajar ($count)';
  }

  @override
  String get mode2Title => 'Ulasan';

  @override
  String get search => 'Cari';

  @override
  String get translate => 'Terjemahkan';

  @override
  String get listen => 'Dengar';

  @override
  String get saveData => 'Simpan';

  @override
  String get saved => 'Tersimpan';

  @override
  String get delete => 'Hapus';

  @override
  String get materialInfo => 'Info materi';

  @override
  String get cancel => 'Batal';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Segarkan';

  @override
  String studyRecords(int count) {
    return 'Catatan ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filter Bahasa:';

  @override
  String get noRecords => 'Tidak ada catatan untuk bahasa yang dipilih';

  @override
  String get saveTranslationsFromSearch =>
      'Simpan terjemahan dari mode pencarian';

  @override
  String get flip => 'Balik';

  @override
  String get hide => 'Sembunyikan';

  @override
  String get deleteRecord => 'Hapus Catatan';

  @override
  String get confirmDelete => 'Anda yakin ingin menghapus catatan ini?';

  @override
  String get recordDeleted => 'Catatan berhasil dihapus';

  @override
  String deleteFailed(String error) {
    return 'Penghapusan gagal: $error';
  }

  @override
  String get importJsonFile => 'Impor JSON';

  @override
  String get importing => 'Mengimpor...';

  @override
  String get importComplete => 'Impor Selesai';

  @override
  String get importFailed => 'Impor Gagal';

  @override
  String importFile(String fileName) {
    return 'File: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String importAdded(int count) {
    return 'Ditambahkan: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Dilewati: $count';
  }

  @override
  String get errors => 'Kesalahan:';

  @override
  String get error => 'Kesalahan';

  @override
  String importErrorMessage(String error) {
    return 'Gagal mengimpor file:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Pilih Materi Belajar';

  @override
  String get subject => 'Subjek:';

  @override
  String get source => 'Sumber:';

  @override
  String get file => 'File:';

  @override
  String progress(int current, int total) {
    return 'Progres: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Silakan impor file JSON';

  @override
  String get selectMaterialPrompt => 'Silakan pilih materi belajar';

  @override
  String get studyComplete => 'Dipelajari';

  @override
  String get markAsStudied => 'Tandai Sudah Dipelajari';

  @override
  String get listening => 'Mendengarkan...';

  @override
  String get recognized => 'Pengenalan selesai';

  @override
  String recognitionFailed(String error) {
    return 'Pengenalan suara gagal: $error';
  }

  @override
  String get checking => 'Memeriksa...';

  @override
  String get translating => 'Menerjemahkan...';

  @override
  String get translationComplete => 'Terjemahan selesai (perlu disimpan)';

  @override
  String get translationLoaded => 'Terjemahan tersimpan dimuat';

  @override
  String translationFailed(String error) {
    return 'Terjemahan gagal: $error';
  }

  @override
  String get enterTextToTranslate => 'Masukkan teks untuk diterjemahkan';

  @override
  String get saving => 'Menyimpan...';

  @override
  String get noTranslationToSave => 'Tidak ada terjemahan untuk disimpan';

  @override
  String saveFailed(String error) {
    return 'Penyimpanan gagal: $error';
  }

  @override
  String get playing => 'Memutar...';

  @override
  String get noTextToPlay => 'Tidak ada teks untuk diputar';

  @override
  String playbackFailed(String error) {
    return 'Pemutaran gagal: $error';
  }

  @override
  String get sourceLanguage => 'Bahasa Asal';

  @override
  String get targetLanguage => 'Bahasa Tujuan';

  @override
  String get similarTextFound => 'Teks serupa ditemukan';

  @override
  String get useExistingText => 'Gunakan Ada';

  @override
  String get createNew => 'Buat Baru';

  @override
  String reviewCount(int count) {
    return 'Diulas $count kali';
  }

  @override
  String get tabSpeaking => 'Berbicara';

  @override
  String get speakingPractice => 'Latihan Bicara';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}d';
  }

  @override
  String get yourPronunciation => 'Lafal Anda';

  @override
  String get correctAnswer => 'Jawaban Benar';

  @override
  String score(String score) {
    return 'Akurasi: $score%';
  }

  @override
  String get perfect => 'Sempurna!';

  @override
  String get good => 'Bagus';

  @override
  String get tryAgain => 'Coba Lagi';

  @override
  String get startPractice => 'Mulai Latihan';

  @override
  String get stopPractice => 'Hentikan Latihan';

  @override
  String get startTutorial => 'Mulai Tur';

  @override
  String get tutorialMicTitle => 'Input Suara';

  @override
  String get tutorialMicDesc =>
      'Ketuk tombol mikrofon untuk mulai input suara.';

  @override
  String get tutorialTabDesc =>
      'Anda dapat memilih mode pembelajaran yang diinginkan di sini.';

  @override
  String get tutorialTapToContinue => 'Ketuk untuk melanjutkan';

  @override
  String get tutorialTransTitle => 'Terjemahkan';

  @override
  String get tutorialTransDesc =>
      'Ketuk di sini untuk menerjemahkan teks Anda.';

  @override
  String get tutorialSaveTitle => 'Simpan';

  @override
  String get tutorialSaveDesc => 'Simpan terjemahan Anda ke catatan belajar.';

  @override
  String get tutorialM2SelectTitle => 'Pilih & Filter';

  @override
  String get tutorialM2SelectDesc =>
      'Pilih materi belajar atau beralih ke \'Ulas Semua\'.';

  @override
  String get tutorialM2ListTitle => 'Daftar Belajar';

  @override
  String get tutorialM2ListDesc =>
      'Periksa kartu tersimpan Anda dan balik untuk melihat jawaban. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Pilih Materi';

  @override
  String get tutorialM3SelectDesc => 'Pilih set materi untuk latihan bicara.';

  @override
  String get tutorialM3IntervalTitle => 'Interval';

  @override
  String get tutorialM3IntervalDesc => 'Atur waktu tunggu antar kalimat.';

  @override
  String get tutorialM3StartTitle => 'Mulai Latihan';

  @override
  String get tutorialM3StartDesc =>
      'Ketuk putar untuk mulai mendengar dan menirukan.';

  @override
  String get startWarning => 'Peringatan';

  @override
  String get noVoiceDetected => 'Suara tidak terdeteksi';

  @override
  String get tooltipSearch => 'Cari';

  @override
  String get tooltipStudyReview => 'Belajar+Ulasan';

  @override
  String get tooltipSpeaking => 'Berbicara';

  @override
  String get tooltipDecrease => 'Kurangi';

  @override
  String get tooltipIncrease => 'Tambah';

  @override
  String get languageSettings => 'Pengaturan bahasa';

  @override
  String get tutorialM2DropdownDesc => 'Pilih materi belajar.';

  @override
  String get tutorialM2ImportDesc => 'Impor file JSON dari folder perangkat.';

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
  String get tutorialContextTitle => 'Tag Konteks';

  @override
  String get tutorialContextDesc =>
      'Tambahkan konteks (misal: Pagi) untuk membedakan kalimat serupa.';

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
  String get usageLimitTitle => 'Batas Penggunaan Tercapai';

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
  String get selectMaterialSet => 'Pilih Set Materi Pembelajaran';

  @override
  String get sectionWords => 'Kata';

  @override
  String get sectionSentences => 'Kalimat';

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
      'Saya mengganti bahasa saya dengan bahasa yang sedang saya pelajari.';

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
  String get menuSelectMaterialSet => 'Pilih bahan pembelajaran';

  @override
  String get sectionWord => 'Bagian kata';

  @override
  String get sectionSentence => 'Bagian kalimat';

  @override
  String get tabWord => 'kata';

  @override
  String get tabSentence => 'kalimat';

  @override
  String get errorProfanity =>
      'Tidak dapat menerjemahkan karena mengandung kata-kata kotor.';

  @override
  String get errorHateSpeech =>
      'Tidak dapat menerjemahkan karena mengandung ujaran kebencian.';

  @override
  String get errorSexualContent =>
      'Tidak dapat menerjemahkan karena mengandung konten seksual.';

  @override
  String get errorOtherSafety =>
      'Penerjemahan ditolak oleh kebijakan keamanan AI.';

  @override
  String get clearAll => 'Hapus Semua';

  @override
  String get disambiguationTitle => 'Pilih Makna';

  @override
  String get disambiguationPrompt => 'Makna mana yang ingin Anda terjemahkan?';

  @override
  String get skip => 'Lewati';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Riwayat Obrolan';

  @override
  String get chatNewChat => 'Obrolan Baru';

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
  String get chatAiChat => 'Obrolan AI';

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
  String get basicWordRepository => 'Repositori Kata Dasar';

  @override
  String get basicSentenceRepository => 'Repositori Kalimat Dasar';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'Simpan & Keluar';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';
}

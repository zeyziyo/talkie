// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get accuracy => 'Akurasi';

  @override
  String get ttsMissing =>
      'Mesin suara untuk bahasa ini belum terpasang di perangkat Anda.';

  @override
  String get ttsInstallGuide =>
      'Silakan pasang data bahasa yang sesuai di Setelan Android > Google TTS.';

  @override
  String get adLoading => 'Memuat iklan. Silakan coba lagi nanti.';

  @override
  String get addNewSubject => 'Tambahkan Judul Baru';

  @override
  String get addParticipant => 'Tambah Peserta';

  @override
  String get addTagHint => 'Tambahkan tag...';

  @override
  String get alreadyHaveAccount => 'Sudah punya akun?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Putar Otomatis';

  @override
  String get basic => 'Dasar';

  @override
  String get basicDefault => 'Dasar';

  @override
  String get basicMaterialRepository => 'Repositori Kalimat/Kata Dasar';

  @override
  String get basicSentenceRepository => 'Repositori Kalimat Dasar';

  @override
  String get basicSentences => 'Repositori Kalimat Dasar';

  @override
  String get basicWordRepository => 'Repositori Kata Dasar';

  @override
  String get basicWords => 'Repositori Kata Dasar';

  @override
  String get cancel => 'Batal';

  @override
  String get caseObject => 'Kasus Objek';

  @override
  String get casePossessive => 'Kasus Kepemilikan';

  @override
  String get casePossessivePronoun => 'Kata Ganti Kepemilikan';

  @override
  String get caseReflexive => 'Kata Ganti Refleksif';

  @override
  String get caseSubject => 'Kasus Subjek';

  @override
  String get chatAiChat => 'Obrolan';

  @override
  String get chatAllConversations => 'Semua percakapan';

  @override
  String get chatChoosePersona => 'Pilih Persona';

  @override
  String get chatEndMessage => 'Apakah Anda ingin mengakhiri percakapan?';

  @override
  String get chatEndTitle => 'Akhiri dan Simpan Percakapan';

  @override
  String chatFailed(Object error) {
    return 'Obrolan Gagal: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Kutipan Percakapan ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Riwayat Obrolan';

  @override
  String get chatNew => 'Obrolan Baru';

  @override
  String get chatNewChat => 'Obrolan Baru';

  @override
  String get chatNoConversations => 'Belum ada percakapan';

  @override
  String get chatSaveAndExit => 'Simpan & Keluar';

  @override
  String get chatStartNewPrompt => 'Mulai percakapan baru untuk latihan!';

  @override
  String get chatTypeHint => 'Ketik pesan...';

  @override
  String get chatUntitled => 'Obrolan Tanpa Judul';

  @override
  String get checking => 'Memeriksa...';

  @override
  String get clearAll => 'Hapus Semua';

  @override
  String get confirm => 'Konfirmasi';

  @override
  String get confirmDelete => 'Anda yakin ingin menghapus catatan ini?';

  @override
  String get confirmDeleteConversation =>
      'Anda yakin ingin menghapus percakapan ini?\nPercakapan yang dihapus tidak dapat dipulihkan.';

  @override
  String get confirmDeleteParticipant =>
      'Apakah Anda yakin ingin menghapus peserta ini?';

  @override
  String get contextTagHint => 'Tulis situasinya agar mudah dibedakan nanti';

  @override
  String get contextTagLabel =>
      'Konteks/Situasi (Opsional) - Contoh: Sapaan Pagi, Formal';

  @override
  String get copiedToClipboard => 'Disalin ke clipboard!';

  @override
  String get copy => 'Salin';

  @override
  String get correctAnswer => 'Jawaban Benar';

  @override
  String get createNew => 'Buat Baru';

  @override
  String get currentLocation => 'Lokasi Saat Ini';

  @override
  String get currentMaterialLabel => 'Kumpulan Materi yang Dipilih Saat Ini:';

  @override
  String get delete => 'Hapus';

  @override
  String deleteFailed(String error) {
    return 'Penghapusan gagal: $error';
  }

  @override
  String get deleteRecord => 'Hapus Catatan';

  @override
  String get dialogueQuestDesc =>
      'Berlatih percakapan melalui bermain peran. Pilih jawaban yang tepat dan ucapkan.';

  @override
  String get dialogueQuestTitle => 'Misi Dialog';

  @override
  String get disambiguationPrompt => 'Makna mana yang ingin Anda terjemahkan?';

  @override
  String get disambiguationTitle => 'Pilih Makna';

  @override
  String get dontHaveAccount => 'Belum punya akun?';

  @override
  String get editParticipant => 'Edit Peserta';

  @override
  String get email => 'Email';

  @override
  String get emailAlreadyInUse =>
      'Email sudah terdaftar. Silakan masuk atau gunakan fitur lupa kata sandi.';

  @override
  String get enterNewSubjectName => 'Masukkan Judul Baru';

  @override
  String get enterSentenceHint => 'Masukkan kalimat...';

  @override
  String get enterTextHint => 'Masukkan teks untuk diterjemahkan';

  @override
  String get enterTextToTranslate => 'Masukkan teks untuk diterjemahkan';

  @override
  String get enterWordHint => 'Masukkan kata...';

  @override
  String get error => 'Kesalahan';

  @override
  String get errorHateSpeech =>
      'Tidak dapat menerjemahkan karena mengandung ujaran kebencian.';

  @override
  String get errorOtherSafety =>
      'Penerjemahan ditolak oleh kebijakan keamanan AI.';

  @override
  String get errorProfanity =>
      'Tidak dapat menerjemahkan karena mengandung kata-kata kotor.';

  @override
  String get errorSelectCategory => 'Pilih kata atau kalimat terlebih dahulu!';

  @override
  String get errorSexualContent =>
      'Tidak dapat menerjemahkan karena mengandung konten seksual.';

  @override
  String get errors => 'Kesalahan:';

  @override
  String get female => 'Wanita';

  @override
  String get file => 'File:';

  @override
  String get filterAll => 'Semua';

  @override
  String get flip => 'Balik';

  @override
  String get formComparative => 'Komparatif';

  @override
  String get formInfinitive => 'Infinitive/Bentuk Sekarang';

  @override
  String get formPast => 'Bentuk Lampau';

  @override
  String get formPastParticiple => 'Partisipel lampau';

  @override
  String get formPlural => 'Jamak';

  @override
  String get formPositive => 'Positif';

  @override
  String get formPresent => 'Bentuk Sekarang';

  @override
  String get formPresentParticiple => 'Present Participle (-ing)';

  @override
  String get formSingular => 'Tunggal';

  @override
  String get formSuperlative => 'Superlatif';

  @override
  String get formThirdPersonSingular => 'Orang Ketiga Tunggal';

  @override
  String get gameModeDesc => 'Pilih mode game untuk berlatih';

  @override
  String get gameModeTitle => 'Mode Game';

  @override
  String get gameOver => 'Game Selesai';

  @override
  String get gender => 'Jenis Kelamin';

  @override
  String get generalTags => 'Tag Umum';

  @override
  String get getMaterials => 'Dapatkan Materi';

  @override
  String get good => 'Bagus';

  @override
  String get googleContinue => 'Lanjutkan dengan Google';

  @override
  String get helpDialogueImportDesc =>
      'Impor seluruh set dialog dengan file JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'Untuk mengimpor materi belajar di Mode 3, buat file JSON dengan struktur berikut:';

  @override
  String get helpJsonTypeDialogue => 'Dialog';

  @override
  String get helpJsonTypeSentence => 'Kalimat';

  @override
  String get helpJsonTypeWord => 'Kata';

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
      'Berlatih pengucapan dengan mendengarkan dan menirukan kalimat (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Pilih Materi: Pilih paket belajar\n• Interval: [-] [+] atur waktu tunggu (3d-60d)\n• Mulai/Berhenti: Kontrol sesi\n• Bicara: Dengar audio dan ulangi\n• Umpan Balik: Skor akurasi (0-100)\n• Coba Lagi: Gunakan tombol coba lagi jika suara tidak terdeteksi';

  @override
  String get helpModeChatDesc =>
      'Berlatih percakapan nyata dengan berinteraksi dengan persona AI.';

  @override
  String get helpModeChatDetails =>
      '• Obrolan AI: Latih percakapan praktis dengan persona.\n• Manajemen peserta: Atur bahasa Anda dan bahasa AI untuk mencegah perbedaan bahasa.\n• Situasi GPS: Ciptakan situasi percakapan alami berdasarkan lokasi Anda saat ini.\n• Penyimpanan riwayat: Semua percakapan disimpan dengan aman berdasarkan ID, dan riwayat dipertahankan bahkan jika Anda mengubah nama.';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabModes => 'Mode';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpTitle => 'Bantuan & Panduan';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Sembunyikan';

  @override
  String importAdded(int count) {
    return 'Ditambahkan: $count';
  }

  @override
  String get importComplete => 'Impor Selesai';

  @override
  String get importDuplicateTitleError =>
      'Materi dengan judul yang sama sudah ada. Ubah judul dan coba lagi.';

  @override
  String importErrorMessage(String error) {
    return 'Gagal mengimpor file:\\n$error';
  }

  @override
  String get importFailed => 'Impor Gagal';

  @override
  String importFile(String fileName) {
    return 'File: $fileName';
  }

  @override
  String get importJsonFile => 'Impor JSON';

  @override
  String get importJsonFilePrompt => 'Silakan impor file JSON';

  @override
  String importSkipped(int count) {
    return 'Dilewati: $count';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String get importing => 'Mengimpor...';

  @override
  String get inputModeTitle => 'Input';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}d';
  }

  @override
  String get invalidEmail => 'Masukkan email yang valid.';

  @override
  String get kakaoContinue => 'Lanjutkan dengan Kakao';

  @override
  String get labelLangCode => 'Kode Bahasa (mis: en-US, ko-KR)';

  @override
  String get labelName => 'Nama';

  @override
  String get labelNote => 'Catatan';

  @override
  String get labelPOS => 'Kelas Kata';

  @override
  String get labelRole => 'Peran';

  @override
  String get labelSentence => 'Kalimat';

  @override
  String get labelSentenceCollection => 'Koleksi Kalimat';

  @override
  String get labelSentenceType => 'Jenis Kalimat';

  @override
  String get labelShowMemorized => 'Selesai';

  @override
  String get labelType => 'Jenis:';

  @override
  String get labelWord => 'Kata';

  @override
  String get labelWordbook => 'Koleksi Kata';

  @override
  String get language => 'Bahasa';

  @override
  String get languageSettings => 'Pengaturan bahasa';

  @override
  String get languageSettingsTitle => 'Pengaturan Bahasa';

  @override
  String get libTitleFirstMeeting => 'Pertemuan Pertama';

  @override
  String get libTitleGreetings1 => 'Salam 1';

  @override
  String get libTitleNouns1 => 'Kata Benda 1';

  @override
  String get libTitleVerbs1 => 'Kata Kerja 1';

  @override
  String get listen => 'Dengar';

  @override
  String get listening => 'Mendengarkan...';

  @override
  String get loadingParticipants => 'Memuat Peserta...';

  @override
  String get location => 'Lokasi';

  @override
  String get login => 'Masuk';

  @override
  String get logout => 'Keluar';

  @override
  String get logoutConfirmMessage =>
      'Apakah Anda yakin ingin keluar dari perangkat ini?';

  @override
  String get logoutConfirmTitle => 'Keluar';

  @override
  String get male => 'Pria';

  @override
  String get manageParticipants => 'Kelola Peserta';

  @override
  String get manual => 'Input Manual';

  @override
  String get markAsStudied => 'Tandai Sudah Dipelajari';

  @override
  String get materialInfo => 'Info materi';

  @override
  String get me => 'Saya';

  @override
  String get menuDeviceImport => 'Impor Materi dari Perangkat';

  @override
  String get menuHelp => 'Bantuan';

  @override
  String get menuLanguageSettings => 'Pengaturan Bahasa';

  @override
  String get menuOnlineLibrary => 'Perpustakaan Online';

  @override
  String get menuSelectMaterialSet => 'Pilih bahan pembelajaran';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Tur Penggunaan';

  @override
  String get menuWebDownload => 'Panduan Pengguna';

  @override
  String get metadataDialogTitle => 'Klasifikasi Detail';

  @override
  String get metadataFormType => 'Bentuk Tata Bahasa';

  @override
  String get metadataRootWord => 'Kata Dasar (Root Word)';

  @override
  String get micButtonTooltip => 'Mulai Pengenalan Suara';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Kumpulan materi yang dipilih saat ini: $name';
  }

  @override
  String get mode2Title => 'Ulasan';

  @override
  String get mode3Next => 'Berikutnya';

  @override
  String get mode3Start => 'Mulai';

  @override
  String get mode3Stop => 'Berhenti';

  @override
  String get mode3TryAgain => 'Coba Lagi';

  @override
  String get mySentenceCollection => 'Koleksi Kalimat Saya';

  @override
  String get myWordbook => 'Buku Kata Saya';

  @override
  String get neutral => 'Netral';

  @override
  String get newSubjectName => 'Judul Subjek/Kalimat Baru';

  @override
  String get next => 'Berikutnya';

  @override
  String get noDialogueHistory => 'Tidak ada riwayat dialog.';

  @override
  String get noInternetWarningMic =>
      'Tidak ada koneksi internet. Pengenalan suara mungkin tidak berfungsi dalam mode offline.';

  @override
  String get noInternetWarningTranslate =>
      'Tidak ada koneksi internet. Fitur terjemahan tidak tersedia dalam mode offline. Silakan gunakan mode review.';

  @override
  String get noMaterialsInCategory => 'Tidak ada materi dalam kategori ini.';

  @override
  String get noParticipantsFound => 'Tidak ada peserta terdaftar.';

  @override
  String get noRecords => 'Tidak ada catatan untuk bahasa yang dipilih';

  @override
  String get noStudyMaterial => 'Tidak ada materi pelajaran.';

  @override
  String get noTextToPlay => 'Tidak ada teks untuk diputar';

  @override
  String get noTranslationToSave => 'Tidak ada terjemahan untuk disimpan';

  @override
  String get noVoiceDetected => 'Suara tidak terdeteksi';

  @override
  String get notSelected => '- Tidak Dipilih -';

  @override
  String get onlineLibraryCheckInternet =>
      'Periksa koneksi internet Anda atau coba lagi nanti.';

  @override
  String get onlineLibraryLoadFailed => 'Gagal memuat materi.';

  @override
  String get onlineLibraryNoMaterials => 'Tidak ada materi.';

  @override
  String get participantDeleted => 'Peserta telah dihapus.';

  @override
  String get participantRename => 'Ubah Nama Peserta';

  @override
  String get partner => 'Mitra';

  @override
  String get partnerMode => 'Mode Partner';

  @override
  String get password => 'Kata Sandi';

  @override
  String get passwordTooShort => 'Kata sandi harus lebih dari 6 karakter.';

  @override
  String get perfect => 'Sempurna!';

  @override
  String get personaFriend => 'Teman Lokal';

  @override
  String get personaGuide => 'Pemandu Wisata';

  @override
  String get personaTeacher => 'Guru Bahasa Inggris';

  @override
  String get playAgain => 'Main Lagi';

  @override
  String playbackFailed(String error) {
    return 'Pemutaran gagal: $error';
  }

  @override
  String get playing => 'Memutar...';

  @override
  String get posAdjective => 'Kata Sifat';

  @override
  String get posAdverb => 'Kata Keterangan';

  @override
  String get posConjunction => 'Kata Hubung';

  @override
  String get posInterjection => 'Kata Seru';

  @override
  String get posNoun => 'Kata Benda';

  @override
  String get posPreposition => 'Kata Depan';

  @override
  String get posPronoun => 'Kata Ganti';

  @override
  String get posVerb => 'Kata Kerja';

  @override
  String get practiceModeTitle => 'Latihan';

  @override
  String get practiceWordsOnly => 'Latih Kata Saja';

  @override
  String progress(int current, int total) {
    return 'Progres: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Tampilkan $count item yang baru dibuat';
  }

  @override
  String recognitionFailed(String error) {
    return 'Pengenalan suara gagal: $error';
  }

  @override
  String get recognized => 'Pengenalan selesai';

  @override
  String get recognizedText => 'Teks yang Dikenali:';

  @override
  String get recordDeleted => 'Catatan berhasil dihapus';

  @override
  String get refresh => 'Segarkan';

  @override
  String get reset => 'Reset';

  @override
  String get resetPracticeHistory => 'Reset Riwayat Latihan';

  @override
  String get retry => 'Coba Lagi?';

  @override
  String get reviewAll => 'Tinjau Semua';

  @override
  String reviewCount(int count) {
    return 'Diulas $count kali';
  }

  @override
  String get reviewModeTitle => 'Ulasan';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Pihak Ketiga';

  @override
  String get roleUser => 'Pengguna';

  @override
  String get save => 'Simpan';

  @override
  String get saveData => 'Simpan';

  @override
  String saveFailed(String error) {
    return 'Penyimpanan gagal: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Simpan terjemahan dari mode pencarian';

  @override
  String get saved => 'Tersimpan';

  @override
  String get saving => 'Menyimpan...';

  @override
  String score(String score) {
    return 'Akurasi: $score%';
  }

  @override
  String get scoreLabel => 'Skor';

  @override
  String get search => 'Cari';

  @override
  String get searchConditions => 'Kondisi Pencarian';

  @override
  String get searchSentenceHint => 'Cari kalimat...';

  @override
  String get searchWordHint => 'Cari kata...';

  @override
  String get sectionSentence => 'Bagian kalimat';

  @override
  String get sectionSentences => 'Kalimat';

  @override
  String get sectionWord => 'Bagian kata';

  @override
  String get sectionWords => 'Kata';

  @override
  String get selectExistingSubject => 'Pilih Judul yang Ada';

  @override
  String get selectMaterialPrompt => 'Silakan pilih materi belajar';

  @override
  String get selectMaterialSet => 'Pilih Set Materi Pembelajaran';

  @override
  String get selectPOS => 'Pilih Kelas Kata';

  @override
  String get selectParticipants => 'Pilih Peserta';

  @override
  String get selectSentenceType => 'Pilih Jenis Kalimat';

  @override
  String get selectStudyMaterial => 'Pilih Materi Belajar';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Kalimat';

  @override
  String get signUp => 'Daftar';

  @override
  String get similarTextFound => 'Teks serupa ditemukan';

  @override
  String get skip => 'Lewati';

  @override
  String get source => 'Sumber:';

  @override
  String get sourceLanguage => 'Bahasa Asal';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Bicaralah Sekarang!';

  @override
  String get speaker => 'Pembicara';

  @override
  String get speakerSelect => 'Pilih Pembicara';

  @override
  String get speakingPractice => 'Latihan Bicara';

  @override
  String get startChat => 'Mulai Obrolan';

  @override
  String get startPractice => 'Mulai Latihan';

  @override
  String get startTutorial => 'Mulai Tur';

  @override
  String get startWarning => 'Peringatan';

  @override
  String get startsWith => 'Mulai Dengan';

  @override
  String get statusCheckEmail =>
      'Silakan periksa email Anda untuk menyelesaikan verifikasi.';

  @override
  String statusDownloading(Object name) {
    return 'Mengunduh: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Gagal mengimpor: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name berhasil diimpor';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Masuk dibatalkan.';

  @override
  String statusLoginFailed(Object error) {
    return 'Gagal masuk: $error';
  }

  @override
  String get statusLoginSuccess => 'Berhasil masuk.';

  @override
  String get statusLogoutSuccess => 'Berhasil keluar.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Gagal mendaftar: $error';
  }

  @override
  String get statusSigningUp => 'Mendaftar...';

  @override
  String get stopPractice => 'Hentikan Latihan';

  @override
  String get studyComplete => 'Dipelajari';

  @override
  String studyRecords(int count) {
    return 'Catatan ($count)';
  }

  @override
  String get styleFormal => 'Formal';

  @override
  String get styleInformal => 'Informal';

  @override
  String get stylePolite => 'Sopan';

  @override
  String get styleSlang => 'Slang';

  @override
  String get subject => 'Subjek:';

  @override
  String get swapLanguages => 'Tukar Bahasa';

  @override
  String get switchToAi => 'Beralih ke Mode AI';

  @override
  String get switchToPartner => 'Beralih ke Mode Partner';

  @override
  String get syncingData => 'Menyinkronkan data...';

  @override
  String get tabConversation => 'Percakapan';

  @override
  String tabReview(int count) {
    return 'Ulasan ($count)';
  }

  @override
  String get tabSentence => 'kalimat';

  @override
  String get tabSpeaking => 'Berbicara';

  @override
  String tabStudyMaterial(int count) {
    return 'Materi Belajar ($count)';
  }

  @override
  String get tabWord => 'kata';

  @override
  String get tagFormal => 'Formal';

  @override
  String get tagSelection => 'Pilihan Tag';

  @override
  String get targetLanguage => 'Bahasa Tujuan';

  @override
  String get targetLanguageFilter => 'Filter Bahasa:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Waktu untuk berpikir sebelum jawaban yang benar terungkap.';

  @override
  String get thinkingTimeInterval => 'Penundaan Pemutaran';

  @override
  String get timeUp => 'Waktu Habis!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Tag Judul (Kliping)';

  @override
  String get tooltipDecrease => 'Kurangi';

  @override
  String get tooltipIncrease => 'Tambah';

  @override
  String get tooltipSearch => 'Cari';

  @override
  String get tooltipSpeaking => 'Berbicara';

  @override
  String get tooltipStudyReview => 'Belajar+Ulasan';

  @override
  String totalRecords(int count) {
    return 'Total $count catatan (Lihat semua)';
  }

  @override
  String get translate => 'Terjemahkan';

  @override
  String get translating => 'Menerjemahkan...';

  @override
  String get translation => 'Terjemahan';

  @override
  String get translationComplete => 'Terjemahan selesai (perlu disimpan)';

  @override
  String translationFailed(String error) {
    return 'Terjemahan gagal: $error';
  }

  @override
  String get translationLimitExceeded => 'Batas terjemahan terlampaui';

  @override
  String get translationLimitMessage =>
      'Anda telah menggunakan semua terjemahan gratis harian (5 kali).\\n\\nApakah Anda ingin menonton iklan untuk mengisi ulang 5 kali secara instan?';

  @override
  String get translationLoaded => 'Terjemahan tersimpan dimuat';

  @override
  String get translationRefilled =>
      'Jumlah terjemahan telah diisi ulang 5 kali!';

  @override
  String get translationResultHint => 'Hasil Terjemahan - Dapat diedit';

  @override
  String get tryAgain => 'Coba Lagi';

  @override
  String get tutorialAiChatDesc =>
      'Latih percakapan praktis dengan persona AI.';

  @override
  String get tutorialAiChatTitle => 'Obrolan AI';

  @override
  String get tutorialContextDesc =>
      'Tambahkan konteks (misal: Pagi) untuk membedakan kalimat serupa.';

  @override
  String get tutorialContextTitle => 'Tag Konteks';

  @override
  String get tutorialLangSettingsDesc =>
      'Atur bahasa sumber dan target untuk diterjemahkan.';

  @override
  String get tutorialLangSettingsTitle => 'Pengaturan Bahasa';

  @override
  String get tutorialM1ToggleDesc =>
      'Beralih antara mode kata dan kalimat di sini.';

  @override
  String get tutorialM1ToggleTitle => 'Mode Kata/Kalimat';

  @override
  String get tutorialM2DropdownDesc => 'Pilih materi belajar.';

  @override
  String get tutorialM2ImportDesc => 'Impor file JSON dari folder perangkat.';

  @override
  String get tutorialM2ListDesc =>
      'Periksa kartu tersimpan Anda dan balik untuk melihat jawaban. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Daftar Belajar';

  @override
  String get tutorialM2SearchDesc =>
      'Cari dan temukan kata dan kalimat yang disimpan dengan cepat.';

  @override
  String get tutorialM2SelectDesc =>
      'Pilih materi belajar atau beralih ke \'Ulas Semua\'.';

  @override
  String get tutorialM2SelectTitle => 'Pilih & Filter';

  @override
  String get tutorialM3IntervalDesc => 'Atur waktu tunggu antar kalimat.';

  @override
  String get tutorialM3IntervalTitle => 'Atur Interval';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Pilih set materi untuk latihan bicara.';

  @override
  String get tutorialM3SelectTitle => 'Pilih Materi';

  @override
  String get tutorialM3StartDesc =>
      'Ketuk putar untuk mulai mendengar dan menirukan.';

  @override
  String get tutorialM3StartTitle => 'Mulai Latihan';

  @override
  String get tutorialM3WordsDesc =>
      'Periksa untuk berlatih hanya kata-kata yang disimpan.';

  @override
  String get tutorialM3WordsTitle => 'Latihan Kata';

  @override
  String get tutorialMicDesc =>
      'Ketuk tombol mikrofon untuk mulai input suara.';

  @override
  String get tutorialMicTitle => 'Input Suara';

  @override
  String get tutorialSaveDesc => 'Simpan terjemahan Anda ke catatan belajar.';

  @override
  String get tutorialSaveTitle => 'Simpan';

  @override
  String get tutorialSwapDesc =>
      'Saya mengganti bahasa saya dengan bahasa yang sedang saya pelajari.';

  @override
  String get tutorialTabDesc =>
      'Anda dapat memilih mode pembelajaran yang diinginkan di sini.';

  @override
  String get tutorialTapToContinue => 'Ketuk untuk melanjutkan';

  @override
  String get tutorialTransDesc =>
      'Ketuk di sini untuk menerjemahkan teks Anda.';

  @override
  String get tutorialTransTitle => 'Terjemahkan';

  @override
  String get typeExclamation => 'Seruan';

  @override
  String get typeImperative => 'Perintah';

  @override
  String get typeQuestion => 'Pertanyaan';

  @override
  String get typeStatement => 'Pernyataan';

  @override
  String get usageLimitTitle => 'Batas Penggunaan Tercapai';

  @override
  String get useExistingText => 'Gunakan Ada';

  @override
  String get viewOnlineGuide => 'Lihat Panduan Online';

  @override
  String get voluntaryTranslations => 'Terjemahan Sukarela';

  @override
  String get watchAdAndRefill => 'Tonton Iklan dan Isi Ulang (+5 kali)';

  @override
  String get word => 'Kata';

  @override
  String get wordDefenseDesc =>
      'Pertahankan markas Anda dengan mengucapkan kata-kata sebelum musuh tiba.';

  @override
  String get wordDefenseTitle => 'Pertahanan Kata';

  @override
  String get wordModeLabel => 'Mode Kata';

  @override
  String get yourPronunciation => 'Lafal Anda';

  @override
  String get ttsUnsupportedNatively =>
      'Perangkat ini tidak mendukung output suara untuk bahasa ini secara bawaan.';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

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
  String get helpJsonDesc =>
      'Untuk mengimpor materi belajar di Mode 3, buat file JSON dengan struktur berikut:';

  @override
  String get helpTourDesc =>
      'Mulai tur interaktif untuk mempelajari fitur utama.';

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
      'Periksa kartu tersimpan Anda dan balik untuk melihat jawaban.';

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
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';
}

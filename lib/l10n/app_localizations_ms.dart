// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Ulasan ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Bahan ($count)';
  }

  @override
  String get mode2Title => 'Ulasan';

  @override
  String get search => 'Cari';

  @override
  String get translate => 'Terjemah';

  @override
  String get listen => 'Dengar';

  @override
  String get saveData => 'Simpan';

  @override
  String get saved => 'Disimpan';

  @override
  String get delete => 'Padam';

  @override
  String get materialInfo => 'Material Info';

  @override
  String get cancel => 'Batal';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Segar semula';

  @override
  String studyRecords(int count) {
    return 'Rekod ($count)';
  }

  @override
  String get targetLanguageFilter => 'Bahasa Sasaran:';

  @override
  String get noRecords => 'Tiada rekod untuk bahasa dipilih';

  @override
  String get saveTranslationsFromSearch => 'Simpan terjemahan dari mod carian';

  @override
  String get flip => 'Terbalikkan';

  @override
  String get hide => 'Sembunyi';

  @override
  String get deleteRecord => 'Padam Rekod';

  @override
  String get confirmDelete => 'Adakah anda pasti mahu memadam rekod ini?';

  @override
  String get recordDeleted => 'Rekod berjaya dipadam';

  @override
  String deleteFailed(String error) {
    return 'Padam gagal: $error';
  }

  @override
  String get importJsonFile => 'Import JSON';

  @override
  String get importing => 'Mengimport...';

  @override
  String get importComplete => 'Import Selesai';

  @override
  String get importFailed => 'Import Gagal';

  @override
  String importFile(String fileName) {
    return 'Fail: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Jumlah: $count';
  }

  @override
  String importAdded(int count) {
    return 'Ditambah: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Dilepaskan: $count';
  }

  @override
  String get errors => 'Ralat:';

  @override
  String get error => 'Ralat';

  @override
  String importErrorMessage(String error) {
    return 'Gagal mengimport fail:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Pilih Bahan';

  @override
  String get subject => 'Subjek:';

  @override
  String get source => 'Sumber:';

  @override
  String get file => 'Fail:';

  @override
  String progress(int current, int total) {
    return 'Kemajuan: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Sila import fail JSON';

  @override
  String get selectMaterialPrompt => 'Sila pilih bahan kajian';

  @override
  String get studyComplete => 'Dipelajari';

  @override
  String get markAsStudied => 'Tanda sebagai Dipelajari';

  @override
  String get listening => 'Mendengar...';

  @override
  String get recognized => 'Pengenalan selesai';

  @override
  String recognitionFailed(String error) {
    return 'Pengenalan suara gagal: $error';
  }

  @override
  String get checking => 'Memeriksa...';

  @override
  String get translating => 'Menterjemah...';

  @override
  String get translationComplete => 'Terjemahan selesai (perlu simpan)';

  @override
  String get translationLoaded => 'Terjemahan disimpan dimuatkan';

  @override
  String translationFailed(String error) {
    return 'Terjemahan gagal: $error';
  }

  @override
  String get enterTextToTranslate => 'Masukkan teks untuk diterjemahkan';

  @override
  String get saving => 'Menyimpan...';

  @override
  String get noTranslationToSave => 'Tiada terjemahan untuk disimpan';

  @override
  String saveFailed(String error) {
    return 'Simpan gagal: $error';
  }

  @override
  String get playing => 'Memainkan...';

  @override
  String get noTextToPlay => 'Tiada teks untuk dimainkan';

  @override
  String playbackFailed(String error) {
    return 'Main balik gagal: $error';
  }

  @override
  String get sourceLanguage => 'Bahasa Sumber';

  @override
  String get targetLanguage => 'Bahasa Sasaran';

  @override
  String get similarTextFound => 'Teks serupa ditemui';

  @override
  String get useExistingText => 'Guna Sedia Ada';

  @override
  String get createNew => 'Cipta Baru';

  @override
  String reviewCount(int count) {
    return 'Diulas $count kali';
  }

  @override
  String get tabSpeaking => 'Bercakap';

  @override
  String get speakingPractice => 'Latihan Bercakap';

  @override
  String intervalSeconds(int seconds) {
    return 'Selang: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Sebutan Anda';

  @override
  String get correctAnswer => 'Jawapan Betul';

  @override
  String score(String score) {
    return 'Ketepatan: $score%';
  }

  @override
  String get perfect => 'Sempurna!';

  @override
  String get good => 'Baik';

  @override
  String get tryAgain => 'Cuba lagi';

  @override
  String get startPractice => 'Mula Latihan';

  @override
  String get stopPractice => 'Berhenti';

  @override
  String get helpTitle => 'Bantuan & Panduan';

  @override
  String get helpTabModes => 'Mod';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabTour => 'Lawatan';

  @override
  String get helpMode1Desc => 'Kenal pasti suara, terjemah dan dengar hasil.';

  @override
  String get helpMode1Details =>
      '• Suara: Ketik mikrofon untuk mula/berhenti\n• Teks: Taip terus untuk menterjemah\n• Auto-Cari: Mengesan ayat serupa\n• Terjemah: Butang untuk terjemahan segera\n• Dengar: Ikon pembesar suara untuk TTS\n• Simpan: Menambah ke sejarah\n• Padam: Tetapkan semula semua';

  @override
  String get helpMode2Desc =>
      'Ulas ayat disimpan dengan terjemahan tersembunyi.';

  @override
  String get helpMode2Details =>
      '• Pilih: Pilih set atau \'Ulas Semua\'\n• Terbalikkan: \'Tunjuk/Sembunyi\' terjemahan\n• Dengar: Mainkan TTS untuk ayat\n• Tanda: Tanda (V) untuk selesai\n• Padam: Tekan lama kad untuk padam\n• Penapis: Lihat semua atau ikut bahan';

  @override
  String get helpMode3Desc =>
      'Latih bercakap dengan mendengar dan mengulang (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Pilih: Pilih pakej\n• Selang: [-] [+] masa menunggu (3s-60s)\n• Mula/Berhenti: Kawal sesi\n• Bercakap: Dengar dan ulang\n• Skor: Ketepatan (0-100)\n• Cuba lagi: Butang jika suara tidak dikesan';

  @override
  String get helpJsonDesc => 'Untuk import Mod 3, cipta JSON:';

  @override
  String get helpTourDesc =>
      'Mulakan lawatan interaktif untuk belajar fungsi utama.';

  @override
  String get startTutorial => 'Mula Lawatan';

  @override
  String get tutorialMicTitle => 'Input Suara';

  @override
  String get tutorialMicDesc => 'Ketik butang mikrofon untuk input suara.';

  @override
  String get tutorialTransTitle => 'Terjemah';

  @override
  String get tutorialTransDesc => 'Ketik di sini untuk menterjemah teks anda.';

  @override
  String get tutorialSaveTitle => 'Simpan';

  @override
  String get tutorialSaveDesc => 'Simpan terjemahan anda ke rekod kajian.';

  @override
  String get tutorialM2SelectTitle => 'Pilih & Penapis';

  @override
  String get tutorialM2SelectDesc =>
      'Pilih bahan atau tukar ke \'Ulas Semua\'.';

  @override
  String get tutorialM2ListTitle => 'Senarai Kajian';

  @override
  String get tutorialM2ListDesc => 'Semak kad disimpan anda dan terbalikkan.';

  @override
  String get tutorialM3SelectTitle => 'Pilih Bahan';

  @override
  String get tutorialM3SelectDesc => 'Pilih set untuk latihan bercakap.';

  @override
  String get tutorialM3IntervalTitle => 'Selang';

  @override
  String get tutorialM3IntervalDesc => 'Laraskan masa menunggu antara ayat.';

  @override
  String get tutorialM3StartTitle => 'Mula';

  @override
  String get tutorialM3StartDesc => 'Tekan main untuk mula.';

  @override
  String get startWarning => 'Amaran';

  @override
  String get noVoiceDetected => 'Tiada suara dikesan';
}

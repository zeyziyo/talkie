// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Tekrar ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materyal ($count)';
  }

  @override
  String get mode2Title => 'Tekrar';

  @override
  String get search => 'Ara';

  @override
  String get translate => 'Çevir';

  @override
  String get listen => 'Dinle';

  @override
  String get saveData => 'Kaydet';

  @override
  String get saved => 'Kaydedildi';

  @override
  String get delete => 'Sil';

  @override
  String get materialInfo => 'Materyal bilgisi';

  @override
  String get cancel => 'İptal';

  @override
  String get confirm => 'Tamam';

  @override
  String get refresh => 'Yenile';

  @override
  String studyRecords(int count) {
    return 'Kayıtlar ($count)';
  }

  @override
  String get targetLanguageFilter => 'Hedef Dil Filtresi:';

  @override
  String get noRecords => 'Seçili dil için kayıt yok';

  @override
  String get saveTranslationsFromSearch => 'Arama modundan çevirileri kaydet';

  @override
  String get flip => 'Çevir';

  @override
  String get hide => 'Gizle';

  @override
  String get deleteRecord => 'Kaydı Sil';

  @override
  String get confirmDelete => 'Bu kaydı silmek istediğinizden emin misiniz?';

  @override
  String get recordDeleted => 'Kayıt başarıyla silindi';

  @override
  String deleteFailed(String error) {
    return 'Silme başarısız: $error';
  }

  @override
  String get importJsonFile => 'JSON İçe Aktar';

  @override
  String get importing => 'Aktarılıyor...';

  @override
  String get importComplete => 'Aktarım Tamamlandı';

  @override
  String get importFailed => 'Aktarım Başarısız';

  @override
  String importFile(String fileName) {
    return 'Dosya: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Toplam: $count';
  }

  @override
  String importAdded(int count) {
    return 'Eklendi: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Atlandı: $count';
  }

  @override
  String get errors => 'Hatalar:';

  @override
  String get error => 'Hata';

  @override
  String importErrorMessage(String error) {
    return 'Dosya aktarılamadı:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Materyal Seç';

  @override
  String get subject => 'Konu:';

  @override
  String get source => 'Kaynak:';

  @override
  String get file => 'Dosya:';

  @override
  String progress(int current, int total) {
    return 'İlerleme: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Lütfen JSON dosyası aktarın';

  @override
  String get selectMaterialPrompt => 'Lütfen çalışma materyali seçin';

  @override
  String get studyComplete => 'Çalışıldı';

  @override
  String get markAsStudied => 'Çalışıldı Olarak İşaretle';

  @override
  String get listening => 'Dinleniyor...';

  @override
  String get recognized => 'Tanıma tamamlandı';

  @override
  String recognitionFailed(String error) {
    return 'Ses tanıma başarısız: $error';
  }

  @override
  String get checking => 'Kontrol ediliyor...';

  @override
  String get translating => 'Çevriliyor...';

  @override
  String get translationComplete => 'Çeviri tamamlandı (kayıt gerekli)';

  @override
  String get translationLoaded => 'Kayıtlı çeviri yüklendi';

  @override
  String translationFailed(String error) {
    return 'Çeviri başarısız: $error';
  }

  @override
  String get enterTextToTranslate => 'Çevirmek için metin girin';

  @override
  String get saving => 'Kaydediliyor...';

  @override
  String get noTranslationToSave => 'Kaydedilecek çeviri yok';

  @override
  String saveFailed(String error) {
    return 'Kaydetme başarısız: $error';
  }

  @override
  String get playing => 'Çalınıyor...';

  @override
  String get noTextToPlay => 'Çalınacak metin yok';

  @override
  String playbackFailed(String error) {
    return 'Oynatma başarısız: $error';
  }

  @override
  String get sourceLanguage => 'Kaynak Dil';

  @override
  String get targetLanguage => 'Hedef Dil';

  @override
  String get similarTextFound => 'Benzer metin bulundu';

  @override
  String get useExistingText => 'Mevcudu Kullan';

  @override
  String get createNew => 'Yeni Oluştur';

  @override
  String reviewCount(int count) {
    return '$count kez tekrarlandı';
  }

  @override
  String get tabSpeaking => 'Konuşma';

  @override
  String get speakingPractice => 'Konuşma Pratiği';

  @override
  String intervalSeconds(int seconds) {
    return 'Aralık: ${seconds}sn';
  }

  @override
  String get yourPronunciation => 'Telaffuzunuz';

  @override
  String get correctAnswer => 'Doğru Cevap';

  @override
  String score(String score) {
    return 'Doğruluk: $score%';
  }

  @override
  String get perfect => 'Mükemmel!';

  @override
  String get good => 'İyi';

  @override
  String get tryAgain => 'Tekrar Dene';

  @override
  String get startPractice => 'Pratiği Başlat';

  @override
  String get stopPractice => 'Durdur';

  @override
  String get helpTitle => 'Yardım & Rehber';

  @override
  String get helpTabModes => 'Modlar';

  @override
  String get helpTabJson => 'JSON Formatı';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpMode1Desc => 'Sesi tanı, hedef dile çevir ve sonucu dinle.';

  @override
  String get helpMode1Details =>
      '• Ses Girişi: Başlat/durdur için mikrofona dokun\n• Metin Girişi: Çevirmek için yaz\n• Oto-Arama: Benzer cümleleri bulur\n• Çevir: Anında çeviri butonu\n• Dinle: TTS için hoparlör simgesi\n• Kaydet: \'Veri Kaydet\' geçmişe ekler\n• Temizle: Tüm girişleri sıfırla';

  @override
  String get helpMode2Desc => 'Kayıtlı cümleleri gizli çevirilerle tekrar et.';

  @override
  String get helpMode2Details =>
      '• Materyal Seç: Set veya \'Tümünü Tekrarla\' seç\n• Kart Çevir: Çeviri için \'Göster/Gizle\'\n• Dinle: Cümle için TTS oynat\n• İşaretle: Tamamlananlar için tik (V)\n• Sil: Karta uzun basarak sil\n• Filtre: Tümünü gör veya materyale göre filtrele';

  @override
  String get helpMode3Desc =>
      'Dinleyip tekrarlayarak konuşma pratiği yap (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Materyal Seç: Çalışma paketi seç\n• Aralık: [-] [+] bekleme süresi (3sn-60sn)\n• Başlat/Durdur: Oturumu kontrol et\n• Konuş: Sesi dinle ve tekrarla\n• Geri Bildirim: Doğruluk puanı (0-100)\n• Tekrar Dene: Ses algılanmazsa butonu kullan';

  @override
  String get helpJsonDesc =>
      'Mod 3\'te materyal aktarmak için bu yapıda JSON oluşturun:';

  @override
  String get helpTourDesc =>
      'Ana özellikleri öğrenmek için interaktif turu başlatın.';

  @override
  String get startTutorial => 'Turu Başlat';

  @override
  String get tutorialMicTitle => 'Ses Girişi';

  @override
  String get tutorialMicDesc =>
      'Ses girişini başlatmak için mikrofon butonuna dokunun.';

  @override
  String get tutorialTabDesc =>
      'Buradan istediğiniz öğrenme modunu seçebilirsiniz.';

  @override
  String get tutorialTapToContinue => 'Devam etmek için dokunun';

  @override
  String get tutorialTransTitle => 'Çevir';

  @override
  String get tutorialTransDesc => 'Metnini çevirmek için buraya dokun.';

  @override
  String get tutorialSaveTitle => 'Kaydet';

  @override
  String get tutorialSaveDesc => 'Çevirini çalışma kayıtlarına kaydet.';

  @override
  String get tutorialM2SelectTitle => 'Seç & Filtrele';

  @override
  String get tutorialM2SelectDesc =>
      'Materyal seç veya \'Tümünü Tekrarla\'ya geç.';

  @override
  String get tutorialM2ListTitle => 'Çalışma Listesi';

  @override
  String get tutorialM2ListDesc =>
      'Kayıtlı kartlarını kontrol et ve cevapları gör.';

  @override
  String get tutorialM3SelectTitle => 'Materyal Seç';

  @override
  String get tutorialM3SelectDesc => 'Konuşma pratiği için bir set seç.';

  @override
  String get tutorialM3IntervalTitle => 'Aralık';

  @override
  String get tutorialM3IntervalDesc =>
      'Cümleler arası bekleme süresini ayarla.';

  @override
  String get tutorialM3StartTitle => 'Pratiği Başlat';

  @override
  String get tutorialM3StartDesc => 'Dinleyip tekrarlamak için oynat\'a bas.';

  @override
  String get startWarning => 'Uyarı';

  @override
  String get noVoiceDetected => 'Ses algılanmadı';

  @override
  String get tooltipSearch => 'Ara';

  @override
  String get tooltipStudyReview => 'Çalışma+Tekrar';

  @override
  String get tooltipSpeaking => 'Konuşma';

  @override
  String get tooltipDecrease => 'Azalt';

  @override
  String get tooltipIncrease => 'Artır';

  @override
  String get languageSettings => 'Dil ayarları';
}

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
  String get helpMode1Details => '• Ses Girişi: Başlat/durdur için mikrofona dokun\n• Metin Girişi: Çevirmek için yaz\n• Oto-Arama: Benzer cümleleri bulur\n• Çevir: Anında çeviri butonu\n• Dinle: TTS için hoparlör simgesi\n• Kaydet: \'Veri Kaydet\' geçmişe ekler\n• Temizle: Tüm girişleri sıfırla';

  @override
  String get helpMode2Desc => 'Kayıtlı cümleleri gizli çevirilerle tekrar et.';

  @override
  String get helpMode2Details => '• Materyal Seç: Set veya \'Tümünü Tekrarla\' seç\n• Kart Çevir: Çeviri için \'Göster/Gizle\'\n• Dinle: Cümle için TTS oynat\n• İşaretle: Tamamlananlar için tik (V)\n• Sil: Karta uzun basarak sil\n• Filtre: Tümünü gör veya materyale göre filtrele';

  @override
  String get helpMode3Desc => 'Dinleyip tekrarlayarak konuşma pratiği yap (Shadowing).';

  @override
  String get helpMode3Details => '• Materyal Seç: Çalışma paketi seç\n• Aralık: [-] [+] bekleme süresi (3sn-60sn)\n• Başlat/Durdur: Oturumu kontrol et\n• Konuş: Sesi dinle ve tekrarla\n• Geri Bildirim: Doğruluk puanı (0-100)\n• Tekrar Dene: Ses algılanmazsa butonu kullan';

  @override
  String get helpJsonDesc => 'Mod 3\'te materyal aktarmak için bu yapıda JSON oluşturun:';

  @override
  String get helpTourDesc => 'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Turu Başlat';

  @override
  String get tutorialMicTitle => 'Ses Girişi';

  @override
  String get tutorialMicDesc => 'Ses girişini başlatmak için mikrofon butonuna dokunun.';

  @override
  String get tutorialTabDesc => 'Buradan istediğiniz öğrenme modunu seçebilirsiniz.';

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
  String get tutorialM2SelectDesc => 'Materyal seç veya \'Tümünü Tekrarla\'ya geç.';

  @override
  String get tutorialM2ListTitle => 'Çalışma Listesi';

  @override
  String get tutorialM2ListDesc => 'Kayıtlı kartlarını kontrol et ve cevapları gör. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Materyal Seç';

  @override
  String get tutorialM3SelectDesc => 'Konuşma pratiği için bir set seç.';

  @override
  String get tutorialM3IntervalTitle => 'Aralık';

  @override
  String get tutorialM3IntervalDesc => 'Cümleler arası bekleme süresini ayarla.';

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

  @override
  String get tutorialM2DropdownDesc => 'Çalışma materyallerini seçin.';

  @override
  String get tutorialM2ImportDesc => 'Cihaz klasöründen JSON dosyası içe aktarın.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc => 'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'Bağlam Etiketi';

  @override
  String get tutorialContextDesc => 'Benzer cümleleri ayırt etmek için bağlam (örn. Sabah) ekleyin.';

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
  String get wordDefenseDesc => 'Defend your base by speaking words correctly before enemies reach you.';

  @override
  String get dialogueQuestTitle => 'Dialogue Quest';

  @override
  String get dialogueQuestDesc => 'Roleplay in scenarios. Choose the right response and speak it aloud.';

  @override
  String get tutorialM1ToggleDesc => 'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Word';

  @override
  String get labelSentence => 'Sentence';

  @override
  String get contextTagLabel => 'Context/Situation (Optional) - Ex: Morning greeting, polite form';

  @override
  String get contextTagHint => 'Describe situation for easier classification later';

  @override
  String get translationLimitExceeded => 'Translation Limit Exceeded';

  @override
  String get translationLimitMessage => 'You have used all your free daily translations (5). Watch an ad to refill 5 immediately?';

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
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc => 'Check this to practice only your saved words.';

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
  String get basicWords => 'Basic Words';

  @override
  String get basicSentences => 'Basic Sentences';

  @override
  String get selectMaterialSet => 'Select Study Material Set';

  @override
  String get sectionWords => 'Words';

  @override
  String get sectionSentences => 'Sentences';

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
  String get tutorialSwapDesc => 'Kendi dilimi, öğrenmekte olduğum dille değiştiriyorum.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3ResetDesc => 'Clear your progress and accuracy scores to start fresh.';

  @override
  String get menuSelectMaterialSet => 'Bir çalışma materyali seçin';

  @override
  String get sectionWord => 'Kelime bölümü';

  @override
  String get sectionSentence => 'Cümle bölümü';

  @override
  String get tabWord => 'kelime';

  @override
  String get tabSentence => 'cümle';

  @override
  String get errorProfanity => 'Translation cannot be processed due to profanity.';

  @override
  String get errorHateSpeech => 'Translation cannot be processed due to hate speech.';

  @override
  String get errorSexualContent => 'Translation cannot be processed due to sexual content.';

  @override
  String get errorOtherSafety => 'Translation was blocked by AI safety policy.';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }
}

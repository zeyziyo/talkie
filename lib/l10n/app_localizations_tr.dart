// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get accuracy => 'Doğruluk';

  @override
  String get ttsMissing =>
      'Bu dil için konuşma motoru cihazınızda yüklü değil.';

  @override
  String get ttsInstallGuide =>
      'Lütfen Android Ayarları > Google TTS\'den ilgili dil verilerini yükleyin.';

  @override
  String get adLoading =>
      'Reklam yükleniyor. Lütfen daha sonra tekrar deneyin.';

  @override
  String get addNewSubject => 'Yeni Başlık Ekle';

  @override
  String get addParticipant => 'Katılımcı Ekle';

  @override
  String get addTagHint => 'Etiket ekle...';

  @override
  String get alreadyHaveAccount => 'Zaten bir hesabınız var mı?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Otomatik Oynat';

  @override
  String get basic => 'Temel';

  @override
  String get basicDefault => 'Temel';

  @override
  String get basicMaterialRepository => 'Temel Cümle/Kelime Deposu';

  @override
  String get basicSentenceRepository => 'Temel Cümle Deposu';

  @override
  String get basicSentences => 'Temel Cümle Deposu';

  @override
  String get basicWordRepository => 'Temel Kelime Deposu';

  @override
  String get basicWords => 'Temel Kelime Deposu';

  @override
  String get cancel => 'İptal';

  @override
  String get caseObject => 'Nesne';

  @override
  String get casePossessive => 'İyelik';

  @override
  String get casePossessivePronoun => 'İyelik Zamiri';

  @override
  String get caseReflexive => 'Dönüşlü';

  @override
  String get caseSubject => 'Özne';

  @override
  String get chatAiChat => 'Sohbet';

  @override
  String get chatAllConversations => 'Tüm Sohbetler';

  @override
  String get chatChoosePersona => 'Kişilik Seç';

  @override
  String get chatEndMessage => 'Sohbeti bitirmek istediğinizden emin misiniz?';

  @override
  String get chatEndTitle => 'Sohbeti Bitir ve Kaydet';

  @override
  String chatFailed(Object error) {
    return 'Sohbet başarısız: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Sohbetten Alıntı ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Sohbet Geçmişi';

  @override
  String get chatNew => 'Yeni Sohbet';

  @override
  String get chatNewChat => 'Yeni Sohbet';

  @override
  String get chatNoConversations => 'Henüz bir sohbet yok';

  @override
  String get chatSaveAndExit => 'Kaydet ve Çık';

  @override
  String get chatStartNewPrompt =>
      'Pratik yapmak için yeni bir sohbete başlayın!';

  @override
  String get chatTypeHint => 'Bir mesaj yazın...';

  @override
  String get chatUntitled => 'Başlıksız Sohbet';

  @override
  String get checking => 'Kontrol ediliyor...';

  @override
  String get clearAll => 'Tümünü Temizle';

  @override
  String get confirm => 'Tamam';

  @override
  String get confirmDelete => 'Bu kaydı silmek istediğinizden emin misiniz?';

  @override
  String get confirmDeleteConversation =>
      'Bu konuşmayı silmek istediğinizden emin misiniz?\nSilinen konuşmalar geri alınamaz.';

  @override
  String get confirmDeleteParticipant =>
      'Bu katılımcıyı silmek istediğinizden emin misiniz?';

  @override
  String get contextTagHint =>
      'Daha sonra kolayca ayırt etmek için durumu girin';

  @override
  String get contextTagLabel =>
      'Bağlam/Durum (İsteğe Bağlı) - Örn: Sabah Selamı, Resmi';

  @override
  String get copiedToClipboard => 'Panoya kopyalandı!';

  @override
  String get copy => 'Kopyala';

  @override
  String get correctAnswer => 'Doğru Cevap';

  @override
  String get createNew => 'Yeni Oluştur';

  @override
  String get currentLocation => 'Mevcut Konum';

  @override
  String get currentMaterialLabel => 'Seçilen Materyal Kitaplığı:';

  @override
  String get delete => 'Sil';

  @override
  String deleteFailed(String error) {
    return 'Silme başarısız: $error';
  }

  @override
  String get deleteRecord => 'Kaydı Sil';

  @override
  String get dialogueQuestDesc =>
      'Senaryolar aracılığıyla konuşma pratiği yapın. Uygun cevapları seçin ve söyleyin.';

  @override
  String get dialogueQuestTitle => 'Diyalog Görevi';

  @override
  String get disambiguationPrompt => 'Hangi anlamda çevirmek istersiniz?';

  @override
  String get disambiguationTitle => 'Anlam Seçimi';

  @override
  String get dontHaveAccount => 'Hesabınız yok mu?';

  @override
  String get editParticipant => 'Katılımcıyı Düzenle';

  @override
  String get email => 'E-posta';

  @override
  String get emailAlreadyInUse =>
      'Bu e-posta adresi zaten kullanımda. Lütfen giriş yapın veya şifrenizi sıfırlayın.';

  @override
  String get enterNewSubjectName => 'Yeni Başlık Girin';

  @override
  String get enterSentenceHint => 'Cümle girin...';

  @override
  String get enterTextHint => 'Çevrilecek metni girin';

  @override
  String get enterTextToTranslate => 'Çevirmek için metin girin';

  @override
  String get enterWordHint => 'Kelime girin...';

  @override
  String get error => 'Hata';

  @override
  String get errorHateSpeech => 'Nefret söylemi içerdiği için çevrilemiyor.';

  @override
  String get errorOtherSafety =>
      'AI güvenlik politikaları nedeniyle çeviri reddedildi.';

  @override
  String get errorProfanity => 'Küfür içerdiği için çevrilemiyor.';

  @override
  String get errorSelectCategory => 'Önce bir kelime veya cümle seçin!';

  @override
  String get errorSexualContent =>
      'Müstehcen içerik içerdiği için çevrilemiyor.';

  @override
  String get errors => 'Hatalar:';

  @override
  String get female => 'Kadın';

  @override
  String get file => 'Dosya:';

  @override
  String get filterAll => 'Tümü';

  @override
  String get flip => 'Çevir';

  @override
  String get formComparative => 'Karşılaştırmalı';

  @override
  String get formInfinitive => 'Mastar/Şimdiki Zaman';

  @override
  String get formPast => 'Geçmiş Zaman';

  @override
  String get formPastParticiple => 'Geçmiş Zaman Ortacı';

  @override
  String get formPlural => 'Çoğul';

  @override
  String get formPositive => 'Yalın';

  @override
  String get formPresent => 'Şimdiki Zaman';

  @override
  String get formPresentParticiple => 'Şimdiki Zaman Ortacı (ing)';

  @override
  String get formSingular => 'Tekil';

  @override
  String get formSuperlative => 'Üstün';

  @override
  String get formThirdPersonSingular => '3. Tekil Şahıs';

  @override
  String get gameModeDesc => 'Pratik yapmak için bir oyun modu seçin';

  @override
  String get gameModeTitle => 'Oyun Modu';

  @override
  String get gameOver => 'Oyun Bitti';

  @override
  String get gender => 'Cinsiyet';

  @override
  String get generalTags => 'Genel Etiketler';

  @override
  String get getMaterials => 'Materyalleri Al';

  @override
  String get good => 'İyi';

  @override
  String get googleContinue => 'Google ile Devam Et';

  @override
  String get helpDialogueImportDesc =>
      'JSON dosyasıyla tüm diyalog kümesini içe aktarın.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'Mod 3\'te materyal aktarmak için bu yapıda JSON oluşturun:';

  @override
  String get helpJsonTypeDialogue => 'Diyalog (Konuşma)';

  @override
  String get helpJsonTypeSentence => 'Cümle';

  @override
  String get helpJsonTypeWord => 'Kelime';

  @override
  String get helpMode1Desc => 'Sesi tanı, hedef dile çevir ve sonucu dinle.';

  @override
  String get helpMode1Details =>
      '• Ses Girişi: Başlat/durdur için mikrofona dokun\n• Metin Girişi: Çevirmek için yaz\n• Oto-Arama: Benzer cümleleri bulur\n• Çevir: Anında çeviri butonu\n• Dinle: TTS için hoparlör simgesi\n• Kaydet: \'Veri Kaydet\' geçmişe ekler\n• Temizle: Tüm girişleri sıfırla';

  @override
  String get helpMode2Desc => 'Kayıtlı cümleleri gizli çevirilerle tekrar et.';

  @override
  String get helpMode2Details =>
      '• Materyal Seçimi: Sağ üst menüden (⋮) \'Çalışma Materyali Seç\' veya \'Online Materyal Arşivi\'ni kullanın\n• Kart Çevirme: \'Göster/Gizle\' ile çeviriyi kontrol edin\n• Dinleme: Hoparlör ikonu ile telaffuzu dinleyin\n• Öğrenme Tamamlama: Onay işareti (V) ile öğrenmeyi tamamlayın\n• Silme: Kartı uzun süre basılı tutarak (Uzun Tıklama) kaydı silin\n• Arama ve Filtre: Arama çubuğu (gerçek zamanlı akıllı arama) ve etiketler, başlangıç harfi filtresi desteği';

  @override
  String get helpMode3Desc =>
      'Cümleyi dinleyerek tekrar edin (Shadowing) ve telaffuzunuzu geliştirin.';

  @override
  String get helpMode3Details =>
      '• Materyal Seç: Çalışma paketi seç\n• Aralık: [-] [+] bekleme süresi (3sn-60sn)\n• Başlat/Durdur: Oturumu kontrol et\n• Konuş: Sesi dinle ve tekrarla\n• Geri Bildirim: Doğruluk puanı (0-100)\n• Tekrar Dene: Ses algılanmazsa butonu kullan';

  @override
  String get helpModeChatDesc =>
      'AI karakterlerle sohbet ederek gerçek hayattaki konuşmaları alıştırma yapın.';

  @override
  String get helpModeChatDetails =>
      '• AI Sohbet: Personel ile gerçek hayattaki konuşmaları pratik yapın.\n• Katılımcı Yönetimi: Dil uyuşmazlıklarını önlemek için kendi dilinizi ve AI\'nın dilini ayrı ayrı ayarlayabilirsiniz.\n• GPS Senaryosu: Mevcut konumunuza göre doğal konuşma senaryoları oluşturun.\n• Kayıt Tutma: Tüm konuşmalar, ID tabanlı olarak güvenli bir şekilde saklanır ve adını değiştirseniz bile kayıtlar korunur.';

  @override
  String get helpTabJson => 'JSON Formatı';

  @override
  String get helpTabModes => 'Modlar';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpTitle => 'Yardım & Rehber';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Gizle';

  @override
  String importAdded(int count) {
    return 'Eklendi: $count';
  }

  @override
  String get importComplete => 'Aktarım Tamamlandı';

  @override
  String get importDuplicateTitleError =>
      'Aynı başlığa sahip bir materyal zaten var. Lütfen başlığı değiştirip tekrar deneyin.';

  @override
  String importErrorMessage(String error) {
    return 'Dosya aktarılamadı:\\n$error';
  }

  @override
  String get importFailed => 'Aktarım Başarısız';

  @override
  String importFile(String fileName) {
    return 'Dosya: $fileName';
  }

  @override
  String get importJsonFile => 'JSON İçe Aktar';

  @override
  String get importJsonFilePrompt => 'Lütfen JSON dosyası aktarın';

  @override
  String importSkipped(int count) {
    return 'Atlandı: $count';
  }

  @override
  String importTotal(int count) {
    return 'Toplam: $count';
  }

  @override
  String get importing => 'Aktarılıyor...';

  @override
  String get inputModeTitle => 'Giriş';

  @override
  String intervalSeconds(int seconds) {
    return 'Aralık: ${seconds}sn';
  }

  @override
  String get invalidEmail => 'Lütfen geçerli bir e-posta adresi girin.';

  @override
  String get kakaoContinue => 'Kakao ile devam et';

  @override
  String get labelLangCode => 'Dil Kodu (Örn: en-US, ko-KR)';

  @override
  String get labelName => 'Ad';

  @override
  String get labelNote => 'Not';

  @override
  String get labelPOS => 'Kelime Türü';

  @override
  String get labelRole => 'Rol';

  @override
  String get labelSentence => 'Cümle';

  @override
  String get labelSentenceCollection => 'Cümle Koleksiyonu';

  @override
  String get labelSentenceType => 'Cümle Türü';

  @override
  String get labelShowMemorized => 'Bitti';

  @override
  String get labelType => 'Tür:';

  @override
  String get labelWord => 'Kelime';

  @override
  String get labelWordbook => 'Kelime Defteri';

  @override
  String get language => 'Dil';

  @override
  String get languageSettings => 'Dil ayarları';

  @override
  String get languageSettingsTitle => 'Dil Ayarları';

  @override
  String get libTitleFirstMeeting => 'İlk Buluşma';

  @override
  String get libTitleGreetings1 => 'Selamlaşma 1';

  @override
  String get libTitleNouns1 => 'İsimler 1';

  @override
  String get libTitleVerbs1 => 'Fiiller 1';

  @override
  String get listen => 'Dinle';

  @override
  String get listening => 'Dinleniyor...';

  @override
  String get loadingParticipants => 'Katılımcılar yükleniyor...';

  @override
  String get location => 'Konum';

  @override
  String get login => 'Giriş Yap';

  @override
  String get logout => 'Çıkış Yap';

  @override
  String get logoutConfirmMessage =>
      'Bu cihazdan çıkış yapmak istediğinizden emin misiniz?';

  @override
  String get logoutConfirmTitle => 'Çıkış Yap';

  @override
  String get male => 'Erkek';

  @override
  String get manageParticipants => 'Katılımcıları Yönet';

  @override
  String get manual => 'Manuel Giriş';

  @override
  String get markAsStudied => 'Çalışıldı Olarak İşaretle';

  @override
  String get materialInfo => 'Materyal bilgisi';

  @override
  String get me => 'Ben';

  @override
  String get menuDeviceImport => 'Cihazdan Materyal İçe Aktar';

  @override
  String get menuHelp => 'Yardım';

  @override
  String get menuLanguageSettings => 'Dil Ayarları';

  @override
  String get menuOnlineLibrary => 'Çevrimiçi Kütüphane';

  @override
  String get menuSelectMaterialSet => 'Bir çalışma materyali seçin';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Nasıl Kullanılır Turu';

  @override
  String get menuWebDownload => 'Kullanım Kılavuzu';

  @override
  String get metadataDialogTitle => 'Ayrıntılı Sınıflandırma';

  @override
  String get metadataFormType => 'Dilbilgisi Biçimi';

  @override
  String get metadataRootWord => 'Kök Kelime';

  @override
  String get micButtonTooltip => 'Ses Tanımayı Başlat';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Seçilen Materyal Kitaplığı: $name';
  }

  @override
  String get mode2Title => 'Tekrar';

  @override
  String get mode3Next => 'İleri';

  @override
  String get mode3Start => 'Başlat';

  @override
  String get mode3Stop => 'Durdur';

  @override
  String get mode3TryAgain => 'Tekrar Dene';

  @override
  String get mySentenceCollection => 'Cümle Koleksiyonum';

  @override
  String get myWordbook => 'Kelime Defterim';

  @override
  String get neutral => 'Nötr';

  @override
  String get newSubjectName => 'Yeni Kelime Defteri/Cümle Koleksiyonu Başlığı';

  @override
  String get next => 'İleri';

  @override
  String get noDialogueHistory => 'Konuşma geçmişi yok.';

  @override
  String get noInternetWarningMic =>
      'İnternet bağlantısı yok. Çevrimdışı modda ses tanıma kullanılamayabilir.';

  @override
  String get noInternetWarningTranslate =>
      'İnternet bağlantısı yok. Çevrimdışı modda çeviri işlevi kullanılamaz. Lütfen tekrar modunu kullanın.';

  @override
  String get noMaterialsInCategory => 'Bu kategoride materyal yok.';

  @override
  String get noParticipantsFound => 'Kayıtlı katılımcı yok.';

  @override
  String get noRecords => 'Seçili dil için kayıt yok';

  @override
  String get noStudyMaterial => 'Çalışma materyali yok.';

  @override
  String get noTextToPlay => 'Çalınacak metin yok';

  @override
  String get noTranslationToSave => 'Kaydedilecek çeviri yok';

  @override
  String get noVoiceDetected => 'Ses algılanmadı';

  @override
  String get notSelected => '- Seçilmedi -';

  @override
  String get onlineLibraryCheckInternet =>
      'Lütfen internet bağlantınızı kontrol edin veya daha sonra tekrar deneyin.';

  @override
  String get onlineLibraryLoadFailed =>
      'Materyaller yüklenirken bir hata oluştu.';

  @override
  String get onlineLibraryNoMaterials => 'Materyal yok.';

  @override
  String get participantDeleted => 'Katılımcı silindi.';

  @override
  String get participantRename => 'Katılımcıyı Yeniden Adlandır';

  @override
  String get partner => 'Ortak';

  @override
  String get partnerMode => 'Ortak Modu';

  @override
  String get password => 'Şifre';

  @override
  String get passwordTooShort =>
      'Şifre en az 6 karakter uzunluğunda olmalıdır.';

  @override
  String get perfect => 'Mükemmel!';

  @override
  String get personaFriend => 'Yerel Arkadaş';

  @override
  String get personaGuide => 'Seyahat Rehberi';

  @override
  String get personaTeacher => 'İngilizce Öğretmeni';

  @override
  String get playAgain => 'Tekrar Oyna';

  @override
  String playbackFailed(String error) {
    return 'Oynatma başarısız: $error';
  }

  @override
  String get playing => 'Çalınıyor...';

  @override
  String get posAdjective => 'Sıfat';

  @override
  String get posAdverb => 'Zarf';

  @override
  String get posConjunction => 'Bağlaç';

  @override
  String get posInterjection => 'Ünlem';

  @override
  String get posNoun => 'İsim';

  @override
  String get posPreposition => 'Edat';

  @override
  String get posPronoun => 'Zamir';

  @override
  String get posVerb => 'Fiil';

  @override
  String get practiceModeTitle => 'Alıştırma';

  @override
  String get practiceWordsOnly => 'Sadece Kelimeleri Pratik Yap';

  @override
  String progress(int current, int total) {
    return 'İlerleme: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Son Oluşturulan $count Öğe';
  }

  @override
  String recognitionFailed(String error) {
    return 'Ses tanıma başarısız: $error';
  }

  @override
  String get recognized => 'Tanıma tamamlandı';

  @override
  String get recognizedText => 'Tanınan Telaffuz:';

  @override
  String get recordDeleted => 'Kayıt başarıyla silindi';

  @override
  String get refresh => 'Yenile';

  @override
  String get reset => 'Sıfırla';

  @override
  String get resetPracticeHistory => 'Pratik Geçmişini Sıfırla';

  @override
  String get retry => 'Tekrar Dene?';

  @override
  String get reviewAll => 'Tümünü Gözden Geçir';

  @override
  String reviewCount(int count) {
    return '$count kez tekrarlandı';
  }

  @override
  String get reviewModeTitle => 'Gözden Geçir';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Üçüncü Taraf';

  @override
  String get roleUser => 'Kullanıcı';

  @override
  String get save => 'Kaydet';

  @override
  String get saveData => 'Kaydet';

  @override
  String saveFailed(String error) {
    return 'Kaydetme başarısız: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'Arama modundan çevirileri kaydet';

  @override
  String get saved => 'Kaydedildi';

  @override
  String get saving => 'Kaydediliyor...';

  @override
  String score(String score) {
    return 'Doğruluk: $score%';
  }

  @override
  String get scoreLabel => 'Puan';

  @override
  String get search => 'Ara';

  @override
  String get searchConditions => 'Arama Koşulları';

  @override
  String get searchSentenceHint => 'Cümle ara...';

  @override
  String get searchWordHint => 'Kelime ara...';

  @override
  String get sectionSentence => 'Cümle bölümü';

  @override
  String get sectionSentences => 'Cümleler';

  @override
  String get sectionWord => 'Kelime bölümü';

  @override
  String get sectionWords => 'Kelimeler';

  @override
  String get selectExistingSubject => 'Mevcut Başlığı Seç';

  @override
  String get selectMaterialPrompt => 'Lütfen çalışma materyali seçin';

  @override
  String get selectMaterialSet => 'Öğrenme Materyali Seti Seç';

  @override
  String get selectPOS => 'Konuşma Bölümü Seç';

  @override
  String get selectParticipants => 'Katılımcıları Seç';

  @override
  String get selectSentenceType => 'Cümle Türü Seç';

  @override
  String get selectStudyMaterial => 'Materyal Seç';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Cümle';

  @override
  String get signUp => 'Kaydol';

  @override
  String get similarTextFound => 'Benzer metin bulundu';

  @override
  String get skip => 'Atla';

  @override
  String get source => 'Kaynak:';

  @override
  String get sourceLanguage => 'Kaynak Dil';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Şimdi Konuş!';

  @override
  String get speaker => 'Konuşmacı';

  @override
  String get speakerSelect => 'Konuşmacı Seç';

  @override
  String get speakingPractice => 'Konuşma Pratiği';

  @override
  String get startChat => 'Sohbete Başla';

  @override
  String get startPractice => 'Pratiği Başlat';

  @override
  String get startTutorial => 'Turu Başlat';

  @override
  String get startWarning => 'Uyarı';

  @override
  String get startsWith => 'Şununla Başlar';

  @override
  String get statusCheckEmail =>
      'Lütfen e-postanızı kontrol ederek doğrulamayı tamamlayın.';

  @override
  String statusDownloading(Object name) {
    return '$name indiriliyor...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'İçe aktarma başarısız: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name başarıyla içe aktarıldı';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Giriş iptal edildi.';

  @override
  String statusLoginFailed(Object error) {
    return 'Giriş başarısız: $error';
  }

  @override
  String get statusLoginSuccess => 'Giriş başarılı.';

  @override
  String get statusLogoutSuccess => 'Çıkış yapıldı.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Kayıt başarısız: $error';
  }

  @override
  String get statusSigningUp => 'Kaydolunuyor...';

  @override
  String get stopPractice => 'Durdur';

  @override
  String get studyComplete => 'Çalışıldı';

  @override
  String studyRecords(int count) {
    return 'Kayıtlar ($count)';
  }

  @override
  String get styleFormal => 'Resmi';

  @override
  String get styleInformal => 'Gayri Resmi';

  @override
  String get stylePolite => 'Nezaket';

  @override
  String get styleSlang => 'Argo';

  @override
  String get subject => 'Konu:';

  @override
  String get swapLanguages => 'Dilleri Değiştir';

  @override
  String get switchToAi => 'AI Moduna Geç';

  @override
  String get switchToPartner => 'Ortak Moduna Geç';

  @override
  String get syncingData => 'Veri senkronize ediliyor...';

  @override
  String get tabConversation => 'Konuşma';

  @override
  String tabReview(int count) {
    return 'Tekrar ($count)';
  }

  @override
  String get tabSentence => 'cümle';

  @override
  String get tabSpeaking => 'Konuşma';

  @override
  String tabStudyMaterial(int count) {
    return 'Materyal ($count)';
  }

  @override
  String get tabWord => 'kelime';

  @override
  String get tagFormal => 'Resmi';

  @override
  String get tagSelection => 'Etiket Seçimi';

  @override
  String get targetLanguage => 'Hedef Dil';

  @override
  String get targetLanguageFilter => 'Hedef Dil Filtresi:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Doğru cevap açıklanmadan önce düşünmek için süre.';

  @override
  String get thinkingTimeInterval => 'Oynatma Gecikmesi';

  @override
  String get timeUp => 'Süre Doldu!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Başlık Etiketi (Koleksiyon)';

  @override
  String get tooltipDecrease => 'Azalt';

  @override
  String get tooltipIncrease => 'Artır';

  @override
  String get tooltipSearch => 'Ara';

  @override
  String get tooltipSpeaking => 'Konuşma';

  @override
  String get tooltipStudyReview => 'Çalışma+Tekrar';

  @override
  String totalRecords(int count) {
    return 'Toplam $count Kayıt (Tümünü Görüntüle)';
  }

  @override
  String get translate => 'Çevir';

  @override
  String get translating => 'Çevriliyor...';

  @override
  String get translation => 'Çeviri';

  @override
  String get translationComplete => 'Çeviri tamamlandı (kayıt gerekli)';

  @override
  String translationFailed(String error) {
    return 'Çeviri başarısız: $error';
  }

  @override
  String get translationLimitExceeded => 'Çeviri limiti aşıldı';

  @override
  String get translationLimitMessage =>
      'Günlük ücretsiz çeviri sınırına (5 kez) ulaştınız.\\n\\nReklam izleyerek hemen 5 çeviri hakkı kazanmak ister misiniz?';

  @override
  String get translationLoaded => 'Kayıtlı çeviri yüklendi';

  @override
  String get translationRefilled => 'Çeviri sayısı 5\'e tamamlandı!';

  @override
  String get translationResultHint => 'Çeviri Sonucu - Düzenlenebilir';

  @override
  String get tryAgain => 'Tekrar Dene';

  @override
  String get tutorialAiChatDesc =>
      'AI personeli ile gerçek hayattaki konuşmaları pratik yapın.';

  @override
  String get tutorialAiChatTitle => 'AI Sohbet';

  @override
  String get tutorialContextDesc =>
      'Benzer cümleleri ayırt etmek için bağlam (örn. Sabah) ekleyin.';

  @override
  String get tutorialContextTitle => 'Bağlam Etiketi';

  @override
  String get tutorialLangSettingsDesc =>
      'Çevrilecek kaynak dili ve hedef dili ayarlayın.';

  @override
  String get tutorialLangSettingsTitle => 'Dil Ayarları';

  @override
  String get tutorialM1ToggleDesc =>
      'Kelime ve cümle modları arasında buradan geçiş yapın.';

  @override
  String get tutorialM1ToggleTitle => 'Kelime/Cümle Modu';

  @override
  String get tutorialM2DropdownDesc => 'Çalışma materyallerini seçin.';

  @override
  String get tutorialM2ImportDesc =>
      'Cihaz klasöründen JSON dosyası içe aktarın.';

  @override
  String get tutorialM2ListDesc =>
      'Kayıtlı kartlarını kontrol et ve cevapları gör. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Çalışma Listesi';

  @override
  String get tutorialM2SearchDesc =>
      'Kaydedilmiş kelimeleri ve cümleleri arayarak hızlıca bulun.';

  @override
  String get tutorialM2SelectDesc =>
      'Materyal seç veya \'Tümünü Tekrarla\'ya geç.';

  @override
  String get tutorialM2SelectTitle => 'Seç & Filtrele';

  @override
  String get tutorialM3IntervalDesc =>
      'Cümleler arası bekleme süresini ayarla.';

  @override
  String get tutorialM3IntervalTitle => 'Aralık';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Konuşma pratiği için bir set seç.';

  @override
  String get tutorialM3SelectTitle => 'Materyal Seç';

  @override
  String get tutorialM3StartDesc => 'Dinleyip tekrarlamak için oynat\'a bas.';

  @override
  String get tutorialM3StartTitle => 'Pratiği Başlat';

  @override
  String get tutorialM3WordsDesc =>
      'İşaretlerseniz, sadece kaydedilmiş kelimeleri alıştırın.';

  @override
  String get tutorialM3WordsTitle => 'Kelime Alıştırması';

  @override
  String get tutorialMicDesc =>
      'Ses girişini başlatmak için mikrofon butonuna dokunun.';

  @override
  String get tutorialMicTitle => 'Ses Girişi';

  @override
  String get tutorialSaveDesc => 'Çevirini çalışma kayıtlarına kaydet.';

  @override
  String get tutorialSaveTitle => 'Kaydet';

  @override
  String get tutorialSwapDesc =>
      'Kendi dilimi, öğrenmekte olduğum dille değiştiriyorum.';

  @override
  String get tutorialTabDesc =>
      'Buradan istediğiniz öğrenme modunu seçebilirsiniz.';

  @override
  String get tutorialTapToContinue => 'Devam etmek için dokunun';

  @override
  String get tutorialTransDesc => 'Metnini çevirmek için buraya dokun.';

  @override
  String get tutorialTransTitle => 'Çevir';

  @override
  String get typeExclamation => 'Ünlem Cümlesi';

  @override
  String get typeImperative => 'Emir Cümlesi';

  @override
  String get typeQuestion => 'Soru Cümlesi';

  @override
  String get typeStatement => 'Düz Cümle';

  @override
  String get usageLimitTitle => 'Kullanım Limiti Aşıldı';

  @override
  String get useExistingText => 'Mevcudu Kullan';

  @override
  String get viewOnlineGuide => 'Çevrimiçi Kılavuzu Görüntüle';

  @override
  String get voluntaryTranslations => 'Gönüllü Çeviriler';

  @override
  String get watchAdAndRefill => 'Reklam İzle ve Yenile (+5 Çeviri)';

  @override
  String get word => 'Kelime';

  @override
  String get wordDefenseDesc =>
      'Düşmanlar ulaşmadan kelimeyi söyleyerek üssü savunun.';

  @override
  String get wordDefenseTitle => 'Kelime Savunması';

  @override
  String get wordModeLabel => 'Kelime Modu';

  @override
  String get yourPronunciation => 'Telaffuzunuz';

  @override
  String get ttsUnsupportedNatively =>
      'Bu cihazda bu dil için yerel olarak sesli okuma desteği bulunmuyor.';

  @override
  String get welcomeTitle => 'Talkie\'ye Hoş Geldiniz!';

  @override
  String get welcomeDesc =>
      'Talkie 80\'den fazla dili destekler ve gezginler için akıllı bir çeviri aracıdır. AI Chat ile konuşma becerilerinizi geliştirin!';

  @override
  String get welcomeButton => 'Başla';
}

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
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

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
      'Kayıtlı kartlarını kontrol et ve cevapları gör. (Long-press to delete)';

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

  @override
  String get tutorialM2DropdownDesc => 'Çalışma materyallerini seçin.';

  @override
  String get tutorialM2ImportDesc =>
      'Cihaz klasöründen JSON dosyası içe aktarın.';

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
  String get tutorialContextTitle => 'Bağlam Etiketi';

  @override
  String get tutorialContextDesc =>
      'Benzer cümleleri ayırt etmek için bağlam (örn. Sabah) ekleyin.';

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
  String get selectMaterialSet => '학습 자료집 선택 (TODO: Translate)';

  @override
  String get sectionWords => '단어 (TODO: Translate)';

  @override
  String get sectionSentences => '문장 (TODO: Translate)';

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
      'Kendi dilimi, öğrenmekte olduğum dille değiştiriyorum.';

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
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorSexualContent =>
      '선정적인 내용이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다. (TODO: Translate)';

  @override
  String get clearAll => '모두 지우기 (TODO: Translate)';

  @override
  String get disambiguationTitle => '의미 선택 (TODO: Translate)';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까? (TODO: Translate)';

  @override
  String get skip => '건너뛰기 (TODO: Translate)';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Sohbet Geçmişi';

  @override
  String get chatNewChat => 'Yeni Sohbet';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String chatFailed(Object error) {
    return '채팅 실패: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return '대화 발췌 ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => '제목 없는 대화';

  @override
  String get chatAiChat => 'Yapay Zeka Sohbeti';

  @override
  String get helpModeChatDesc => 'AI 페르소나와 대화하며 실전 회화를 연습하고 유용한 문장을 저장하세요.';

  @override
  String get helpModeChatDetails =>
      '• 채팅 시작: 상단 메뉴의 말풍선 아이콘 클릭\n• 페르소나 선택: 선생님, 가이드, 친구 중 선택\n• 대화 및 저장: AI 응답은 자동 번역됩니다. 메시지를 클릭하여 복습 모드로 저장하세요\n• 2개 국어 표시: 모든 메시지에 대해 모국어와 학습 언어를 함께 표시합니다\n• 듣기 기능 (TTS): 스피커 아이콘을 눌러 각 언어의 발음을 들어보세요\n• 자동 제목: 대화 주제에 따라 AI가 제목을 추천합니다\n• 이력 관리: 과거 대화 내용을 언제든 다시 확인할 수 있습니다';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String get me => 'Ben';

  @override
  String get helpDialogueImportDesc => '완성된 대화문 세트를 JSON 파일로 한 번에 가져올 수 있습니다.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON 구조: `entries` 대신 `dialogues` 배열을 사용합니다.\n• 자동 생성: 대화 제목, 페르소나, 메시지 순서가 자동으로 구성됩니다.\n• 확인 위치: 가져온 대화는 AI 채팅 모드의 \'대화 기록\' 탭에서 확인할 수 있습니다.';

  @override
  String mode1SelectedMaterial(Object name) {
    return '현재 선택된 자료집: $name';
  }

  @override
  String get basicWordRepository => 'Temel Kelime Deposu';

  @override
  String get basicSentenceRepository => 'Temel Cümle Deposu';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'Kaydet ve Çık';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';
}

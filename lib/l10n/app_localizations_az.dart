// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'Kakao ilə davam et';

  @override
  String get logout => 'Logout';

  @override
  String get logoutConfirmTitle => 'Logout';

  @override
  String get logoutConfirmMessage =>
      'Are you sure you want to logout from this device?';

  @override
  String get syncingData => 'Syncing data...';

  @override
  String get helpTitle => 'Kömək & Bələdçi';

  @override
  String get helpTabModes => 'Rejim Açıqlaması';

  @override
  String get helpTabJson => 'JSON Formatı';

  @override
  String get helpTabTour => 'Sınaqdan Keç';

  @override
  String get helpMode1Desc =>
      'Səsi tanıyaraq tərcümə edin və nəticələrə qulaq asa bilərsiniz.';

  @override
  String get helpMode1Details =>
      '• Dil seçimi: Yuxarı/aşağı işarələrə basaraq dili dəyişdirin\n• Söz/cümlə keçidi: Rejimi dəyişdirin\n• Səsli giriş: Dinləməyə başlamaq/dayandırmaq üçün mikrofon işarəsinə basın\n• Mətn girişi: Birbaşa daxil edərək tərcümə edin\n• Avtomatik axtarış: Bənzər mövcud cümlələri aşkar edin\n• Tərcümə: Dərhal tərcümə etmək üçün tərcümə düyməsinə basın\n• Dinləmə: TTS-i səsləndirmək üçün dinamik işarəsi\n• Saxlama: \'Məlumatları Saxla\' ilə qeyd əlavə edin\n• Təmizləmə: Girişi sıfırlayın';

  @override
  String get helpMode2Desc =>
      'Saxlanılan cümlələri nəzərdən keçirin və avtomatik gizlətmə funksiyası ilə əzbərləməyi yoxlayın.';

  @override
  String get helpMode2Details =>
      '• Material seçimi: Müəyyən material toplusunu və ya \'Bütün təkrar\'ı seçin\n• Kartı çevirin: Tərcüməni yoxlamaq üçün \'Göstər/Gizlət\' (avtomatik öyrənmə yoxlaması)\n• Dinləmə: Cümlə TTS səsləndirməsi\n• Öyrənmə tamamlandı: İşarə ilə (V) öyrənməni tamamlayın\n• Silmə: Qeydləri silmək üçün karta uzun müddət basın\n• Axtarış şərtləri: Etiket, son elementlər, başlanğıc hərflərlə filtrləyin';

  @override
  String get helpMode3Desc =>
      'Cümlələri dinləyərək və təkrarlayaraq (kölgələmə) tələffüzünüzü məşq edin.';

  @override
  String get helpMode3Details =>
      '• Material seçimi: Öyrənmək üçün material toplusunu seçin\n• İnterval təyin edin: [-] [+] düymələri ilə cümlələr arasındakı gözləmə müddətini tənzimləyin (3 saniyə ~ 60 saniyə)\n• Başlat/Dayandır: Kölgələmə seansını idarə edin\n• Danışmaq: Səsi dinləyin və təkrarlayın\n• Rəy: Dəqiqlik balı (0-100) və rəngli ekran\n• Axtarış şərtləri: Etiket, son elementlər, başlanğıc hərflərlə məşq hədəfini filtrləyin';

  @override
  String get helpModeChatDesc =>
      'Süni intellekt personajı ilə danışaraq real söhbət bacarıqlarınızı məşq edin.';

  @override
  String get helpModeChatDetails =>
      '• AI Söhbət: Dilinizdə danışaraq söhbət bacarıqlarınızı məşq edin\n• Çoxlu personaj: Nitq balonunun yuxarısındakı menyu ilə qarşı tərəfin cinsini/dilini/adını dəyişdirə bilərsiniz\n• Tərəfdaş əlavə edin: + düyməsi ilə yeni söhbət ortağı (Yad) əlavə edin\n• GPS: Mövcud yerə əsaslanan teatrlaşdırılmış vəziyyət\n• Avtomatik saxla: Söhbət məzmununun avtomatik tərcüməsi və saxlanılması';

  @override
  String get helpJsonDesc =>
      '3-cü Rejimdə istifadə etmək üçün öyrənmə materiallarını JSON faylı kimi idxal etmək üçün aşağıdakı formata əməl edin:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'Bütün dialoq dəstlərini JSON faylı olaraq idxal edin.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON strukturu: `Girişlər` əvəzinə `dialoqlar` massivindən istifadə edin\n• Avtomatik bərpa: Dialoq başlığı, persona, mesaj ardıcıllığı bərpa edilir.\n• Yer: İdxal olunan dialoqlar Süni İntellekt Söhbət rejiminin \'Qeydlər\' sekmesinde görünür.';

  @override
  String get helpTourDesc =>
      '**Vurğulanan dairə** əsas funksiyaları göstərir.\n(Məsələn, **vurğulanan dairənin** göstərdiyi kartı silmək üçün uzun müddət basın.)';

  @override
  String get partnerMode => 'Tərəfdaş rejimi';

  @override
  String get manual => 'Əl ilə giriş';

  @override
  String get speaker => 'Danışan';

  @override
  String get switchToAi => 'AI Rejiminə Keç';

  @override
  String get switchToPartner => 'Tərəfdaş Rejiminə Keç';

  @override
  String get currentLocation => 'Hazırkı Yer';

  @override
  String get location => 'Yer';

  @override
  String get partner => 'Tərəfdaş';

  @override
  String get me => 'Mən';

  @override
  String get currentMaterialLabel => 'Cari Seçilmiş Material Toplusu:';

  @override
  String get basicMaterialRepository => 'Əsas Cümlə/Söz Deposu';

  @override
  String get word => 'Söz';

  @override
  String get sentence => 'Cümlə';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Təkrar ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Öyrənmə Materialı ($count)';
  }

  @override
  String get mode2Title => 'Təkrar';

  @override
  String get search => 'Axtar';

  @override
  String get translate => 'Tərcümə Et';

  @override
  String get listen => 'Dinlə';

  @override
  String get saveData => 'Məlumatları Saxla';

  @override
  String get saved => 'Saxlama Tamamlandı';

  @override
  String get delete => 'Sil';

  @override
  String get materialInfo => 'Material Məlumatları';

  @override
  String get cancel => 'Ləğv Et';

  @override
  String get confirm => 'Təsdiq Et';

  @override
  String get refresh => 'Yenilə';

  @override
  String studyRecords(int count) {
    return 'Öyrənmə Qeydləri ($count)';
  }

  @override
  String get targetLanguageFilter => 'Hədəf Dil Filtrini:';

  @override
  String get noRecords => 'Seçilmiş dildə öyrənmə qeydləri yoxdur';

  @override
  String get saveTranslationsFromSearch =>
      'Axtarış rejimindən tərcümələri saxlayın';

  @override
  String get flip => 'Göstər';

  @override
  String get hide => 'Gizlət';

  @override
  String get deleteRecord => 'Qeydi Sil';

  @override
  String get confirmDelete => 'Bu öyrənmə qeydini silmək istəyirsiniz?';

  @override
  String get recordDeleted => 'Qeyd Silindi';

  @override
  String deleteFailed(String error) {
    return 'Silmə Uğursuz oldu: $error';
  }

  @override
  String get importJsonFile => 'JSON Faylını İdxal Et';

  @override
  String get importing => 'İdxal Edilir...';

  @override
  String get importComplete => 'İdxal Tamamlandı';

  @override
  String get importFailed => 'İdxal Uğursuz oldu';

  @override
  String importFile(String fileName) {
    return 'Fayl: $fileName';
  }

  @override
  String get addParticipant => 'Add Participant';

  @override
  String get editParticipant => 'Edit Participant';

  @override
  String get labelRole => 'Role';

  @override
  String get labelLangCode => 'Language Code (e.g. en-US, ko-KR)';

  @override
  String get roleUser => 'User';

  @override
  String get roleAi => 'AI';

  @override
  String get participantDeleted => 'Participant deleted.';

  @override
  String get confirmDeleteParticipant =>
      'Are you sure you want to delete this participant?';

  @override
  String importTotal(int count) {
    return 'Ümumi: $count ədəd';
  }

  @override
  String importAdded(int count) {
    return 'Əlavə Edildi: $count ədəd';
  }

  @override
  String importSkipped(int count) {
    return 'Buraxıldı: $count ədəd';
  }

  @override
  String get errors => 'Səhvlər:';

  @override
  String get error => 'Səhv';

  @override
  String importErrorMessage(String error) {
    return 'Faylın idxalı uğursuz oldu:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get selectStudyMaterial => 'Öyrənmə Materialını Seçin';

  @override
  String get subject => 'Başlıq:';

  @override
  String get source => 'Mənbə:';

  @override
  String get file => 'Fayl:';

  @override
  String progress(int current, int total) {
    return 'Gedişat: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'JSON faylını idxal edin';

  @override
  String get selectMaterialPrompt => 'Öyrənmə materialını seçin';

  @override
  String get studyComplete => 'Öyrənmə Tamamlandı';

  @override
  String get markAsStudied => 'Öyrənilmiş kimi qeyd edin';

  @override
  String get listening => 'Dinlənilir...';

  @override
  String get recognized => 'Tanınma Tamamlandı';

  @override
  String recognitionFailed(String error) {
    return 'Səsin Tanınması Uğursuz oldu: $error';
  }

  @override
  String get checking => 'Yoxlanılır...';

  @override
  String get translating => 'Tərcümə Edilir...';

  @override
  String get translationComplete => 'Tərcümə Tamamlandı (Saxlama Tələb Olunur)';

  @override
  String get translationLoaded => 'Saxlanılan tərcümə yükləndi';

  @override
  String translationFailed(String error) {
    return 'Tərcümə Uğursuz oldu: $error';
  }

  @override
  String get enterTextToTranslate => 'Tərcümə etmək üçün mətn daxil edin';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => 'Saxlanılır...';

  @override
  String get noTranslationToSave => 'Saxlamaq üçün tərcümə yoxdur';

  @override
  String saveFailed(String error) {
    return 'Saxlama Uğursuz oldu: $error';
  }

  @override
  String get playing => 'Səsləndirilir...';

  @override
  String get noTextToPlay => 'Səsləndirmək üçün mətn yoxdur';

  @override
  String playbackFailed(String error) {
    return 'Səsləndirmə Uğursuz oldu: $error';
  }

  @override
  String get sourceLanguage => 'Mənbə Dili';

  @override
  String get targetLanguage => 'Hədəf Dili';

  @override
  String get similarTextFound => 'Bənzər mətn tapıldı';

  @override
  String get useExistingText => 'Mövcud mətndən istifadə edin';

  @override
  String get createNew => 'Yeni cümlə ilə davam edin';

  @override
  String reviewCount(int count) {
    return 'Təkrar $count dəfə';
  }

  @override
  String get tabSpeaking => 'Danışmaq';

  @override
  String get speakingPractice => 'Danışıq Məşqi';

  @override
  String intervalSeconds(int seconds) {
    return 'İnterval: $seconds saniyə';
  }

  @override
  String get yourPronunciation => 'Mənim Tələffüzüm';

  @override
  String get correctAnswer => 'Düzgün Cavab';

  @override
  String score(String score) {
    return 'Dəqiqlik: $score%';
  }

  @override
  String get perfect => 'Mükəmməldir!';

  @override
  String get good => 'Yaxşıdır';

  @override
  String get tryAgain => 'Yenidən Cəhd Edin';

  @override
  String get startPractice => 'Məşqə Başlayın';

  @override
  String get stopPractice => 'Məşqi Dayandırın';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Təlimata Başlayın';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Səs Girişi';

  @override
  String get tutorialMicDesc =>
      'Səsli giriş üçün mikrofon düyməsinə toxuna bilərsiniz.';

  @override
  String get tutorialTabDesc =>
      'Burada istədiyiniz öyrənmə rejimini seçə bilərsiniz.';

  @override
  String get tutorialTapToContinue => 'Davam Etmək Üçün Ekrana Toxunun';

  @override
  String get tutorialTransTitle => 'Tərcümə Et';

  @override
  String get tutorialTransDesc => 'Daxil edilmiş mətni tərcümə edin.';

  @override
  String get tutorialSaveTitle => 'Saxla';

  @override
  String get tutorialSaveDesc =>
      'Tərcümə edilmiş nəticələri öyrənmə qeydlərinizə saxlayın.';

  @override
  String get selectParticipants => 'Select Participants';

  @override
  String get loadingParticipants => 'Loading participants...';

  @override
  String get noParticipantsFound => 'No participants found.';

  @override
  String get noInternetWarningMic =>
      'No internet connection. Voice recognition may not work offline.';

  @override
  String get noInternetWarningTranslate =>
      'No internet connection. Translation is unavailable offline. Please use Review mode.';

  @override
  String get noMaterialsInCategory => 'No materials in this category.';

  @override
  String get onlineLibraryLoadFailed => 'Failed to load materials.';

  @override
  String get onlineLibraryCheckInternet =>
      'Please check your internet connection or try again later.';

  @override
  String get onlineLibraryNoMaterials => 'No materials found.';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get startChat => 'Start Chat';

  @override
  String get manageParticipants => 'Manage Participants';

  @override
  String get tutorialAiChatTitle => 'Süni İntellekt Söhbəti';

  @override
  String get tutorialAiChatDesc =>
      'Süni intellekt personajları ilə real söhbət bacarıqlarınızı məşq edin.';

  @override
  String get tutorialM2SelectTitle => 'Material Seçimi';

  @override
  String get tutorialM2SelectDesc =>
      'Öyrənmək üçün material seçmək üçün yuxarıdakı proqram çubuğundakı material toplusu işarəsinə (📚) toxunun.';

  @override
  String get tutorialM2ListTitle => 'Öyrənmə Siyahısı';

  @override
  String get tutorialM2ListDesc =>
      'Saxlanılan cümlələri yoxlamaq və çevirmək üçün bu karta uzun müddət (Uzun Klik) toxunun. Onu silmək üçün.';

  @override
  String get tutorialM3SelectTitle => 'Material Seçimi';

  @override
  String get tutorialM3SelectDesc =>
      'Məşq etmək üçün material seçmək üçün yuxarıdakı proqram çubuğundakı material toplusu işarəsinə (📚) toxunun.';

  @override
  String get tutorialM3IntervalTitle => 'İnterval Təyin Edin';

  @override
  String get tutorialM3IntervalDesc =>
      'Cümlələr arasındakı gözləmə müddətini tənzimləyin.';

  @override
  String get tutorialM3StartTitle => 'Məşqə Başlayın';

  @override
  String get tutorialM3StartDesc =>
      'Ana dilində danışanın səsini dinləmək və təkrar etmək üçün səsləndirmə düyməsinə toxunun.';

  @override
  String get startWarning => 'Diqqət';

  @override
  String get noVoiceDetected => 'Səs aşkarlanmadı';

  @override
  String get tooltipSearch => 'Axtarış';

  @override
  String get tooltipStudyReview => 'Öyrənmə + Təkrar';

  @override
  String get tooltipSpeaking => 'Danışmaq';

  @override
  String get tooltipDecrease => 'Azalt';

  @override
  String get tooltipIncrease => 'Artır';

  @override
  String get languageSettings => 'Dil Parametrləri';

  @override
  String get tutorialM2DropdownDesc =>
      'Yuxarıdakı menyu vasitəsilə öyrənmək üçün material seçə bilərsiniz.';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc =>
      'JSON faylını cihazınızın qovluğundan idxal edin.';

  @override
  String get tutorialLangSettingsTitle => 'Dil Parametrləri';

  @override
  String get tutorialLangSettingsDesc =>
      'Tərcümə etmək üçün mənbə və hədəf dilləri təyin edin.';

  @override
  String get copy => 'Kopyala';

  @override
  String get copiedToClipboard => 'Panoya kopyalandı!';

  @override
  String get tutorialContextTitle => 'Vəziyyət/Məzmun Etiketi';

  @override
  String get tutorialContextDesc =>
      'Eyni cümlə olsa belə, vəziyyəti (məsələn, səhər, axşam) qeyd etsəniz, onu ayrı saxlayabilirsiniz.';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get thinkingTimeDesc =>
      'Düzgün cavab açıqlanmazdan əvvəl düşünmək üçün vaxt.';

  @override
  String get autoPlay => 'Avtomatik Səsləndirmə';

  @override
  String get timeUp => 'Vaxt Bitdi!';

  @override
  String get gameModeTitle => 'Oyun Rejimi';

  @override
  String get gameModeDesc => 'Məşq etmək üçün oyun rejimini seçin';

  @override
  String get wordDefenseTitle => 'Söz Müdafiəsi';

  @override
  String get wordDefenseDesc =>
      'Düşmənlər gəlmədən sözləri deyərək bazanı müdafiə edin.';

  @override
  String get dialogueQuestTitle => 'Dialoq Tapşırığı';

  @override
  String get dialogueQuestDesc =>
      'Teatrlaşdırılmış vəziyyət vasitəsilə dialoq məşqi edin. Müvafiq cavabları seçin və deyin.';

  @override
  String get translation => 'Translation';

  @override
  String get labelType => 'Növü:';

  @override
  String get labelWord => 'Söz';

  @override
  String get labelSentence => 'Cümlə';

  @override
  String get contextTagLabel =>
      'Məzmun/Vəziyyət (İsteğe bağlı) - Məsələn: Səhər Salamı, Rəsmi';

  @override
  String get contextTagHint =>
      'Daha sonra ayırd etmək üçün vəziyyəti qeyd edin';

  @override
  String get usageLimitTitle => 'Limitə Çatdı';

  @override
  String get translationLimitExceeded => 'Tərcümə limiti aşıldı';

  @override
  String get translationLimitMessage =>
      'Gündəlik pulsuz tərcümələrinizdən (5 dəfə) istifadə etdiniz.\\n\\nReklama baxaraq dərhal 5 dəfə doldurmaq istəyirsiniz?';

  @override
  String get watchAdAndRefill => 'Reklama baxaraq doldurun (+5 dəfə)';

  @override
  String get translationRefilled => 'Tərcümə sayı 5 dəfə dolduruldu!';

  @override
  String get adLoading =>
      'Reklam yüklənir. Zəhmət olmasa, bir az sonra yenidən cəhd edin.';

  @override
  String get reviewAll => 'Bütün Təkrar';

  @override
  String totalRecords(int count) {
    return 'Cəmi $count qeyd (Hamısına Bax)';
  }

  @override
  String get filterAll => 'Hamısı';

  @override
  String get practiceWordsOnly => 'Yalnız Sözləri Məşq Edin';

  @override
  String get resetPracticeHistory => 'Məşq Tarixini Sıfırla';

  @override
  String get retry => 'Yenidən cəhd edilsin?';

  @override
  String get noStudyMaterial => 'Öyrənmə materialı yoxdur.';

  @override
  String get gameOver => 'Oyun Bitdi';

  @override
  String get playAgain => 'Yenidən Oyna';

  @override
  String get speakNow => 'İndi Danış!';

  @override
  String get scoreLabel => 'Bal';

  @override
  String get viewOnlineGuide => 'Onlayn Bələdçiyə Bax';

  @override
  String get getMaterials => 'Materialları Əldə Edin';

  @override
  String get swapLanguages => 'Dilləri Dəyişdir';

  @override
  String get next => 'Sonrakı';

  @override
  String get wordModeLabel => 'Söz Rejimi';

  @override
  String get accuracy => 'Dəqiqlik';

  @override
  String get basicDefault => 'Əsas';

  @override
  String get basic => 'Əsas';

  @override
  String get tutorialM3WordsTitle => 'Söz Məşqi';

  @override
  String get tutorialM3WordsDesc =>
      'Yoxlanılıbsa, yalnız saxlanılan sözləri məşq edin.';

  @override
  String get enterTextHint => 'Tərcümə etmək üçün mətn daxil edin';

  @override
  String get micButtonTooltip => 'Səsin Tanınmasına Başla';

  @override
  String get menuHelp => 'Kömək';

  @override
  String get menuWebDownload => 'Ana Səhifə';

  @override
  String get menuDeviceImport => 'Cihazdan Material İdxal Et';

  @override
  String get menuSettings => 'Dil Parametrləri';

  @override
  String get basicWords => 'Əsas Söz Deposu';

  @override
  String get basicSentences => 'Əsas Cümlə Deposu';

  @override
  String get selectMaterialSet => 'Öyrənmə Materialı Toplusunu Seçin';

  @override
  String get sectionWords => 'Sözlər';

  @override
  String get sectionSentences => 'Cümlələr';

  @override
  String get languageSettingsTitle => 'Dil Parametrləri';

  @override
  String get sourceLanguageLabel => 'Mənim Dilim (Mənbə)';

  @override
  String get targetLanguageLabel => 'Öyrənmə Dili (Hədəf)';

  @override
  String get mode3Start => 'Başla';

  @override
  String get mode3Stop => 'Dayandır';

  @override
  String get mode3Next => 'Sonrakı';

  @override
  String get mode3TryAgain => 'Yenidən Cəhd Et';

  @override
  String get tutorialM3ResetTitle => 'Tarixi Sıfırla';

  @override
  String get tutorialSwapDesc => 'Mənim dilimi və öyrənmə dilini dəyişdirir.';

  @override
  String get recognizedText => 'Tanınan Tələffüz:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Gedişatı və dəqiqlik balını sıfırlayaraq yenidən başlayın.';

  @override
  String get menuSelectMaterialSet => 'Öyrənmə Materialı Toplusunu Seçin';

  @override
  String get sectionWord => 'Söz Bölməsi';

  @override
  String get sectionSentence => 'Cümlə Bölməsi';

  @override
  String get tabWord => 'Söz';

  @override
  String get tabSentence => 'Cümlə';

  @override
  String get errorProfanity =>
      'Təhqiramiz ifadələr ehtiva etdiyi üçün tərcümə edilə bilməz.';

  @override
  String get errorHateSpeech =>
      'Nifrət nitqi ehtiva etdiyi üçün tərcümə edilə bilməz.';

  @override
  String get errorSexualContent =>
      'Cinsi məzmun ehtiva etdiyi üçün tərcümə edilə bilməz.';

  @override
  String get errorOtherSafety =>
      'Süni intellekt təhlükəsizlik siyasəti səbəbi ilə tərcümə rədd edildi.';

  @override
  String get clearAll => 'Hamısını Təmizlə';

  @override
  String get disambiguationTitle => 'Məna Seçimi';

  @override
  String get disambiguationPrompt => 'Hansı mənada tərcümə etmək istərdiniz?';

  @override
  String get skip => 'Burax';

  @override
  String get inputModeTitle => 'Giriş';

  @override
  String get reviewModeTitle => 'Təkrar';

  @override
  String get practiceModeTitle => 'Məşq';

  @override
  String get chatHistoryTitle => 'Söhbət Tarixi';

  @override
  String get chatNew => 'Yeni Söhbət';

  @override
  String get chatNewChat => 'Yeni Söhbət';

  @override
  String get chatChoosePersona => 'Personaj Seçin';

  @override
  String get chatTypeHint => 'Mesajınızı yazın...';

  @override
  String chatFailed(Object error) {
    return 'Söhbət Uğursuz oldu: $error';
  }

  @override
  String get chatNoConversations => 'Hələ heç bir söhbət yoxdur';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt => 'Məşq üçün yeni söhbətə başlayın!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Söhbətdən Çıxarış ($speaker)';
  }

  @override
  String get personaTeacher => 'İngilis Dili Müəllimi';

  @override
  String get personaGuide => 'Səyahət Bələdçisi';

  @override
  String get personaFriend => 'Yerli Dost';

  @override
  String get chatUntitled => 'Başlıqsız Söhbət';

  @override
  String get chatAiChat => 'Söhbət';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Cari seçilmiş material toplusu: $name';
  }

  @override
  String get basicWordRepository => 'Əsas Söz Deposu';

  @override
  String get basicSentenceRepository => 'Əsas Cümlə Deposu';

  @override
  String get chatEndTitle => 'Söhbəti Bitirin və Saxlayın';

  @override
  String get chatEndMessage => 'Söhbəti bitirmək istəyirsiniz?';

  @override
  String get chatSaveAndExit => 'Saxlayın və Çıxın';

  @override
  String get errorSelectCategory => 'Əvvəlcə söz və ya cümlə seçin!';

  @override
  String get tutorialM1ToggleTitle => 'Söz/Cümlə Rejimi';

  @override
  String get tutorialM1ToggleDesc =>
      'Söz və cümlə rejimlərini burada dəyişdirin.';

  @override
  String get metadataDialogTitle => 'Ətraflı Təsnifat';

  @override
  String get tagFormal => 'Rəsmi';

  @override
  String get selectPOS => 'Nitq Hissəsini Seçin';

  @override
  String get selectSentenceType => 'Cümlə Növünü Seçin';

  @override
  String get metadataRootWord => 'Kök Söz';

  @override
  String get posNoun => 'İsim';

  @override
  String get posVerb => 'Fiil';

  @override
  String get posAdjective => 'Sıfat';

  @override
  String get posAdverb => 'Zərf';

  @override
  String get posPronoun => 'Əvəzlik';

  @override
  String get posPreposition => 'Ön söz';

  @override
  String get posConjunction => 'Bağlayıcı';

  @override
  String get posInterjection => 'Nida';

  @override
  String get typeStatement => 'Bildiriş';

  @override
  String get typeQuestion => 'Sual';

  @override
  String get typeExclamation => 'Nida';

  @override
  String get typeImperative => 'Əmr';

  @override
  String get labelNote => 'Qeyd';

  @override
  String get labelShowMemorized => 'Bitirildi';

  @override
  String get titleTagSelection => 'Başlıq etiketi (Kitabxana)';

  @override
  String get generalTags => 'Ümumi etiketlər';

  @override
  String get tagSelection => 'Etiket Seçimi';

  @override
  String get metadataFormType => 'Qrammatik Forma';

  @override
  String get formInfinitive => 'İnfinitive/İndiki Zaman';

  @override
  String get formPast => 'Keçmiş Zaman';

  @override
  String get formPastParticiple => 'Keçmiş Feli Sifət';

  @override
  String get formPresentParticiple => 'İndiki Feli Sifət (ing)';

  @override
  String get formPresent => 'İndiki Zaman';

  @override
  String get formThirdPersonSingular => 'Üçüncü Şəxs Tək';

  @override
  String get formPlural => 'Cəm';

  @override
  String get formSingular => 'Tək';

  @override
  String get caseSubject => 'Subyekt';

  @override
  String get caseObject => 'Obyekt';

  @override
  String get casePossessive => 'Yiyəlik';

  @override
  String get casePossessivePronoun => 'Yiyəlik Əvəzlik';

  @override
  String get caseReflexive => 'Qayıdış Əvəzlik';

  @override
  String get formPositive => 'Müsbət';

  @override
  String get formComparative => 'Müqayisəli';

  @override
  String get formSuperlative => 'Üstün';

  @override
  String get searchConditions => 'Axtarış Şərtləri';

  @override
  String recentNItems(int count) {
    return 'Son $count ədədə baxın';
  }

  @override
  String get startsWith => 'Başlayan Hərflər';

  @override
  String get reset => 'Sıfırla';

  @override
  String get participantRename => 'İştirakçının Adını Dəyişdirin';

  @override
  String get labelName => 'Ad';

  @override
  String get gender => 'Cins';

  @override
  String get language => 'Dil';

  @override
  String get male => 'Kişi';

  @override
  String get female => 'Qadın';

  @override
  String get neutral => 'neytral';

  @override
  String get chatAllConversations => 'Bütün söhbətlər';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Bu söhbəti silmək istədiyinizə əminsinizmi?\nSilinmiş söhbətləri geri qaytarmaq mümkün deyil.';

  @override
  String get notSelected => '- Seçilməyib -';

  @override
  String get myWordbook => 'Mənim Söz Kitabım';

  @override
  String get mySentenceCollection => 'Mənim Cümlə Kolleksiyam';

  @override
  String get newSubjectName => 'Yeni Mövzu Adı';

  @override
  String get enterNewSubjectName => 'Yeni ad daxil edin';

  @override
  String get addNewSubject => 'Yeni ad əlavə edin';

  @override
  String get selectExistingSubject => 'Mövcud adı seçin';

  @override
  String get addTagHint => 'Etiket əlavə edin...';

  @override
  String get save => 'Saxla';

  @override
  String get styleFormal => 'Formal';

  @override
  String get styleInformal => 'Informal';

  @override
  String get stylePolite => 'Polite';

  @override
  String get styleSlang => 'Slang';

  @override
  String statusDownloading(Object name) {
    return 'Downloading: $name...';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name Imported Successfully';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Import Failed: $error';
  }

  @override
  String get statusLoginSuccess => 'Login successful.';

  @override
  String statusLoginFailed(Object error) {
    return 'Login failed: $error';
  }

  @override
  String get statusLoginCancelled => 'Login cancelled.';

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLogoutSuccess => 'Logged out.';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get login => 'Login';

  @override
  String get signUp => 'Sign Up';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get invalidEmail => 'Please enter a valid email.';

  @override
  String get passwordTooShort => 'Password must be at least 6 characters.';

  @override
  String get statusSigningUp => 'Signing up...';

  @override
  String statusSignUpFailed(Object error) {
    return 'Sign up failed: $error';
  }

  @override
  String get statusCheckEmail =>
      'Zəhmət olmasa, identifikasiyanı tamamlamaq üçün e-poçtunuzu yoxlayın.';

  @override
  String get emailAlreadyInUse =>
      'Bu e-poçt artıq qeydiyyatdan keçib. Daxil olun və ya şifrəni bərpa etmək üçün istifadə edin.';
}

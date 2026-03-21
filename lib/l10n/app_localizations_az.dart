// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get basicWords => 'Əsas Söz Deposu';

  @override
  String get inputLanguage => 'Giriş dili';

  @override
  String get translationLanguage => 'Tərcümə dili';

  @override
  String get simplifiedGuidance =>
      'Gündəlik söhbətləri anında xarici dilə çevirin! Talkie dil həyatınızı qeyd edir.';

  @override
  String get noDataForLanguage =>
      'Seçdiyiniz dil üçün təlim materialları lokal verilənlər bazasında mövcud deyil. Materialları yükləyin və ya başqa dil seçin.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Ləğv Et';

  @override
  String get accuracy => 'Dəqiqlik';

  @override
  String get ttsMissing =>
      'Bu dil üçün mətn-nitq mühərriki cihazda quraşdırılmayıb.';

  @override
  String get ttsInstallGuide =>
      'Zəhmət olmasa, Android Parametrləri > Google TTS bölməsindən müvafiq dil məlumatlarını quraşdırın.';

  @override
  String get adLoading =>
      'Reklam yüklənir. Zəhmət olmasa, bir az sonra yenidən cəhd edin.';

  @override
  String get addNewSubject => 'Yeni ad əlavə edin';

  @override
  String get addParticipant => 'İştirakçı əlavə et';

  @override
  String get addTagHint => 'Etiket əlavə edin...';

  @override
  String get alreadyHaveAccount => 'Artıq hesabınız var?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Avtomatik Səsləndirmə';

  @override
  String get basic => 'Əsas';

  @override
  String get basicDefault => 'Əsas';

  @override
  String get basicMaterialRepository => 'Əsas Cümlə/Söz Deposu';

  @override
  String get basicSentenceRepository => 'Əsas Cümlə Deposu';

  @override
  String get basicSentences => 'Əsas Cümlə Deposu';

  @override
  String get basicWordRepository => 'Əsas Söz Deposu';

  @override
  String get caseObject => 'Obyekt';

  @override
  String get casePossessive => 'Yiyəlik';

  @override
  String get casePossessivePronoun => 'Yiyəlik Əvəzlik';

  @override
  String get caseReflexive => 'Qayıdış Əvəzlik';

  @override
  String get caseSubject => 'Subyekt';

  @override
  String get chatAiChat => 'Söhbət';

  @override
  String get chatAllConversations => 'Bütün söhbətlər';

  @override
  String get chatChoosePersona => 'Personaj Seçin';

  @override
  String get chatEndMessage => 'Söhbəti bitirmək istəyirsiniz?';

  @override
  String get chatEndTitle => 'Söhbəti Bitirin və Saxlayın';

  @override
  String chatFailed(Object error) {
    return 'Söhbət Uğursuz oldu: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Söhbətdən Çıxarış ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Söhbət Tarixi';

  @override
  String get chatNew => 'Yeni Söhbət';

  @override
  String get chatNewChat => 'Yeni Söhbət';

  @override
  String get chatNoConversations => 'Hələ heç bir söhbət yoxdur';

  @override
  String get chatSaveAndExit => 'Saxlayın və Çıxın';

  @override
  String get chatStartNewPrompt => 'Məşq üçün yeni söhbətə başlayın!';

  @override
  String get chatTypeHint => 'Mesajınızı yazın...';

  @override
  String get chatUntitled => 'Başlıqsız Söhbət';

  @override
  String get checking => 'Yoxlanılır...';

  @override
  String get clearAll => 'Hamısını Təmizlə';

  @override
  String get confirm => 'Təsdiq Et';

  @override
  String get confirmDelete => 'Bu öyrənmə qeydini silmək istəyirsiniz?';

  @override
  String get confirmDeleteConversation =>
      'Bu söhbəti silmək istədiyinizə əminsinizmi?\nSilinmiş söhbətləri geri qaytarmaq mümkün deyil.';

  @override
  String get confirmDeleteParticipant => 'Bu iştirakçını silmək istəyirsiniz?';

  @override
  String get contextTagHint =>
      'Daha sonra ayırd etmək üçün vəziyyəti qeyd edin';

  @override
  String get contextTagLabel =>
      'Məzmun/Vəziyyət (İsteğe bağlı) - Məsələn: Səhər Salamı, Rəsmi';

  @override
  String get copiedToClipboard => 'Panoya kopyalandı!';

  @override
  String get copy => 'Kopyala';

  @override
  String get correctAnswer => 'Düzgün Cavab';

  @override
  String get createNew => 'Yeni cümlə ilə davam edin';

  @override
  String get currentLocation => 'Hazırkı Yer';

  @override
  String get currentMaterialLabel => 'Cari Seçilmiş Material Toplusu:';

  @override
  String get delete => 'Sil';

  @override
  String deleteFailed(String error) {
    return 'Silmə Uğursuz oldu: $error';
  }

  @override
  String get deleteRecord => 'Qeydi Sil';

  @override
  String get dialogueQuestDesc =>
      'Teatrlaşdırılmış vəziyyət vasitəsilə dialoq məşqi edin. Müvafiq cavabları seçin və deyin.';

  @override
  String get dialogueQuestTitle => 'Dialoq Tapşırığı';

  @override
  String get disambiguationPrompt => 'Hansı mənada tərcümə etmək istərdiniz?';

  @override
  String get disambiguationTitle => 'Məna Seçimi';

  @override
  String get dontHaveAccount => 'Hesabınız yoxdur?';

  @override
  String get editParticipant => 'İştirakçını redaktə et';

  @override
  String get email => 'E-poçt';

  @override
  String get emailAlreadyInUse =>
      'Bu e-poçt artıq qeydiyyatdan keçib. Daxil olun və ya şifrəni bərpa etmək üçün istifadə edin.';

  @override
  String get enterNewSubjectName => 'Yeni ad daxil edin';

  @override
  String get enterSentenceHint => 'Cümlə daxil edin...';

  @override
  String get enterTextHint => 'Tərcümə etmək üçün mətn daxil edin';

  @override
  String get enterTextToTranslate => 'Tərcümə etmək üçün mətn daxil edin';

  @override
  String get enterWordHint => 'Söz daxil edin...';

  @override
  String get error => 'Səhv';

  @override
  String get errorHateSpeech =>
      'Nifrət nitqi ehtiva etdiyi üçün tərcümə edilə bilməz.';

  @override
  String get errorOtherSafety =>
      'Süni intellekt təhlükəsizlik siyasəti səbəbi ilə tərcümə rədd edildi.';

  @override
  String get errorProfanity =>
      'Təhqiramiz ifadələr ehtiva etdiyi üçün tərcümə edilə bilməz.';

  @override
  String get errorSelectCategory => 'Əvvəlcə söz və ya cümlə seçin!';

  @override
  String get errorSexualContent =>
      'Cinsi məzmun ehtiva etdiyi üçün tərcümə edilə bilməz.';

  @override
  String get errors => 'Səhvlər:';

  @override
  String get female => 'Qadın';

  @override
  String get file => 'Fayl:';

  @override
  String get filterAll => 'Hamısı';

  @override
  String get flip => 'Göstər';

  @override
  String get formComparative => 'Müqayisəli';

  @override
  String get formInfinitive => 'İnfinitive/İndiki Zaman';

  @override
  String get formPast => 'Keçmiş Zaman';

  @override
  String get formPastParticiple => 'Keçmiş Feli Sifət';

  @override
  String get formPlural => 'Cəm';

  @override
  String get formPositive => 'Müsbət';

  @override
  String get formPresent => 'İndiki Zaman';

  @override
  String get formPresentParticiple => 'İndiki Feli Sifət (ing)';

  @override
  String get formSingular => 'Tək';

  @override
  String get formSuperlative => 'Üstün';

  @override
  String get formThirdPersonSingular => 'Üçüncü Şəxs Tək';

  @override
  String get gameModeDesc => 'Məşq etmək üçün oyun rejimini seçin';

  @override
  String get gameModeTitle => 'Oyun Rejimi';

  @override
  String get gameOver => 'Oyun Bitdi';

  @override
  String get gender => 'Cins';

  @override
  String get labelFilterMaterial => 'Materiallar';

  @override
  String get labelFilterTag => 'Etiketlər';

  @override
  String get generalTags => 'Ümumi etiketlər';

  @override
  String get getMaterials => 'Materialları Əldə Edin';

  @override
  String get good => 'Yaxşıdır';

  @override
  String get googleContinue => 'Google ilə davam et';

  @override
  String get helpDialogueImportDesc =>
      'Bütün dialoq dəstlərini JSON faylı olaraq idxal edin.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON strukturu: `Girişlər` əvəzinə `dialoqlar` massivindən istifadə edin\n• Avtomatik bərpa: Dialoq başlığı, persona, mesaj ardıcıllığı bərpa edilir.\n• Yer: İdxal olunan dialoqlar Süni İntellekt Söhbət rejiminin \'Qeydlər\' sekmesinde görünür.';

  @override
  String get helpJsonDesc =>
      '3-cü Rejimdə istifadə etmək üçün öyrənmə materiallarını JSON faylı kimi idxal etmək üçün aşağıdakı formata əməl edin:';

  @override
  String get helpJsonTypeDialogue => 'Dialoq';

  @override
  String get helpJsonTypeSentence => 'Cümlə';

  @override
  String get helpJsonTypeWord => 'Söz';

  @override
  String get helpMode1Desc =>
      'Premium 3D mikrofonlar və böyük klaviatura ikonları vasitəsilə dil öyrənməyə ən intuitiv şəkildə başlayın.';

  @override
  String get helpMode1Details =>
      '• Dil seçimi: Ana ekranın yuxarısındakı dil düyməsi ilə öz dilinizi və öyrəndiyiniz dili yoxlaya və öyrənmə dilinizi dəyişə bilərsiniz.\n• Sadə giriş: Mərkəzdəki böyük mikrofon və mətn pəncərəsi vasitəsilə dərhal daxil edin.\n• Parametrləri yoxlayın: Giriş bitdikdən sonra sağdakı mavi işarə düyməsini basın. Ətraflı parametrlər pəncərəsi görünəcəkdir.\n• Ətraflı parametrlər: Açılan dialoqda yadda saxlanılacaq məlumat kitabını, şərhi (qeyd) və teqləri təyin edə bilərsiniz.\n• İndi tərcümə edin: Parametrləri tamamladıqdan sonra yaşıl tərcümə düyməsini basdıqda süni intellekt dərhal tərcüməni həyata keçirəcəkdir.\n• Avtomatik axtarış: Daxil etmə zamanı oxşar mövcud tərcümələri real vaxtda aşkar edərək göstərir.\n• Dinləyin və yadda saxlayın: Tərcümə nəticəsinin altındakı dinamik ikonası ilə tələffüzü dinləyin və \'Məlumatları yadda saxla\' vasitəsilə öyrənmə siyahısına əlavə edin.';

  @override
  String get helpMode2Desc =>
      'Saxlanılan cümlələri nəzərdən keçirin və avtomatik gizlətmə funksiyası ilə əzbərləməyi yoxlayın.';

  @override
  String get helpMode2Details =>
      '• Material seçimi: Sağ üst menyudan (⋮) \'Tədris materialı seçimi\' və ya \'Onlayn material kitabxanası\' istifadə edin\n• Kartı çevirmək: \'Göstər/Gizlət\' vasitəsilə tərcüməni yoxlayın\n• Dinləmək: Dinləmək üçün dinamik işarəsinə toxunun\n• Tədrisi bitirmək: Tədrisi bitirmək üçün onay işarəsinə(V) toxunun\n• Silmək: Qeydləri silmək üçün karta uzun basın\n• Axtarış və filtrləmə: Axtarış paneli (real vaxt ağıllı axtarış) və etiket, başlanğıc hərf filtrləri dəstəklənir';

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
      '• Süni intellekt söhbəti: Aşağıdakı tab paneli menyusundakı \'Söhbət\' menyusunda şəxsiyyətinizlə real söhbət təcrübəsi\n• Şəxsiyyət tənzimləməsi: Qarşı tərəfin cinsiyyətini, adını və dil kodunu sərbəst şəkildə təyin edin\n• GPS vəziyyət oyunu: Cari yerinizi tanıyaraq yerə uyğun söhbət mövzularını tövsiyə edin\n• İkidilli: Süni intellektin cavabı tərcümə ilə birlikdə göstərilir və öyrənmə effektini maksimuma çatdırır\n• Qeyd idarəetmə: Keçmiş söhbət tarixçəsini filtrləmə və söhbət zamanı müəyyən mesajları öyrənmə materialı kimi saxlama';

  @override
  String get helpTabJson => 'JSON Formatı';

  @override
  String get helpTabModes => 'Rejim Açıqlaması';

  @override
  String get helpTabTour => 'Sınaqdan Keç';

  @override
  String get helpTitle => 'Kömək & Bələdçi';

  @override
  String get helpTourDesc =>
      '**Vurğulanan dairə** əsas funksiyaları göstərir.\n(Məsələn, **vurğulanan dairənin** göstərdiyi kartı silmək üçün uzun müddət basın.)';

  @override
  String get hide => 'Gizlət';

  @override
  String importAdded(int count) {
    return 'Əlavə Edildi: $count ədəd';
  }

  @override
  String get importComplete => 'İdxal Tamamlandı';

  @override
  String get importDuplicateTitleError =>
      'Eyni başlıqlı material artıq mövcuddur. Başlığı dəyişdirib yenidən cəhd edin.';

  @override
  String importErrorMessage(String error) {
    return 'Faylın idxalı uğursuz oldu:\\n$error';
  }

  @override
  String get importFailed => 'İdxal Uğursuz oldu';

  @override
  String importFile(String fileName) {
    return 'Fayl: $fileName';
  }

  @override
  String get importJsonFile => 'JSON Faylını İdxal Et';

  @override
  String get importJsonFilePrompt => 'JSON faylını idxal edin';

  @override
  String importSkipped(int count) {
    return 'Buraxıldı: $count ədəd';
  }

  @override
  String importTotal(int count) {
    return 'Ümumi: $count ədəd';
  }

  @override
  String get importing => 'İdxal Edilir...';

  @override
  String get inputModeTitle => 'Giriş';

  @override
  String intervalSeconds(int seconds) {
    return 'İnterval: $seconds saniyə';
  }

  @override
  String get invalidEmail => 'Zəhmət olmasa, düzgün e-poçt ünvanı daxil edin.';

  @override
  String get kakaoContinue => 'Kakao ilə davam et';

  @override
  String get labelLangCode => 'Dil kodu (məsələn, en-US, ko-KR)';

  @override
  String get labelName => 'Ad';

  @override
  String get labelNote => 'Qeyd';

  @override
  String get labelPOS => 'Nitq hissəsi';

  @override
  String get labelRole => 'Rol';

  @override
  String get labelSentence => 'Cümlə';

  @override
  String get labelSentenceCollection => 'Cümlə kolleksiyası';

  @override
  String get labelSentenceType => 'Cümlə növü';

  @override
  String get labelShowMemorized => 'Bitirildi';

  @override
  String get labelType => 'Növü:';

  @override
  String get labelWord => 'Söz';

  @override
  String get labelWordbook => 'Söz kitabı';

  @override
  String get language => 'Dil';

  @override
  String get languageSettings => 'Dil Parametrləri';

  @override
  String get languageSettingsTitle => 'Dil Parametrləri';

  @override
  String get libTitleFirstMeeting => 'İlk görüş';

  @override
  String get libTitleGreetings1 => 'Salamlaşma 1';

  @override
  String get libTitleNouns1 => 'İsimlər 1';

  @override
  String get libTitleVerbs1 => 'Fellər 1';

  @override
  String get listen => 'Dinlə';

  @override
  String get listening => 'Dinlənilir...';

  @override
  String get loadingParticipants => 'İştirakçılar yüklənir...';

  @override
  String get location => 'Yer';

  @override
  String get login => 'Giriş';

  @override
  String get logout => 'Çıxış';

  @override
  String get logoutConfirmMessage => 'Bu cihazdan çıxış etmək istəyirsiniz?';

  @override
  String get logoutConfirmTitle => 'Çıxış';

  @override
  String get male => 'Kişi';

  @override
  String get manageParticipants => 'İştirakçıları idarə et';

  @override
  String get manual => 'Əl ilə giriş';

  @override
  String get markAsStudied => 'Öyrənilmiş kimi qeyd edin';

  @override
  String get materialInfo => 'Material Məlumatları';

  @override
  String get me => 'Mən';

  @override
  String get menuDeviceImport => 'Cihazdan Material İdxal Et';

  @override
  String get menuHelp => 'Kömək';

  @override
  String get menuLanguageSettings => 'Dil parametrləri';

  @override
  String get menuOnlineLibrary => 'Onlayn kitabxana';

  @override
  String get menuSelectMaterialSet => 'Öyrənmə Materialı Toplusunu Seçin';

  @override
  String get menuSettings => 'Dil Parametrləri';

  @override
  String get menuTutorial => 'Təlimat turu';

  @override
  String get menuWebDownload => 'Ana Səhifə';

  @override
  String get metadataDialogTitle => 'Ətraflı Təsnifat';

  @override
  String get metadataFormType => 'Qrammatik Forma';

  @override
  String get metadataRootWord => 'Kök Söz';

  @override
  String get micButtonTooltip => 'Səsin Tanınmasına Başla';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Cari seçilmiş material toplusu: $name';
  }

  @override
  String get mode2Title => 'Təkrar';

  @override
  String get mode3Next => 'Sonrakı';

  @override
  String get mode3Start => 'Başla';

  @override
  String get mode3Stop => 'Dayandır';

  @override
  String get mode3TryAgain => 'Yenidən Cəhd Et';

  @override
  String get mySentenceCollection => 'Mənim Cümlə Kolleksiyam';

  @override
  String get myWordbook => 'Mənim Söz Kitabım';

  @override
  String get neutral => 'neytral';

  @override
  String get newSubjectName => 'Yeni Mövzu Adı';

  @override
  String get next => 'Sonrakı';

  @override
  String get noDialogueHistory => 'Söhbət tarixçəsi yoxdur.';

  @override
  String get noInternetWarningMic =>
      'İnternet bağlantısı yoxdur. Oflayn rejimdə səs tanıma mümkün olmaya bilər.';

  @override
  String get noInternetWarningTranslate =>
      'İnternet bağlantısı yoxdur. Oflayn rejimdə tərcümə funksiyası istifadə edilə bilməz. Təkrar rejimindən istifadə edin.';

  @override
  String get noMaterialsInCategory => 'Bu kateqoriyada material yoxdur.';

  @override
  String get noParticipantsFound => 'Qeydiyyatdan keçmiş iştirakçı yoxdur.';

  @override
  String get noRecords => 'Seçilmiş dildə öyrənmə qeydləri yoxdur';

  @override
  String get noStudyMaterial => 'Öyrənmə materialı yoxdur.';

  @override
  String get noTextToPlay => 'Səsləndirmək üçün mətn yoxdur';

  @override
  String get noTranslationToSave => 'Saxlamaq üçün tərcümə yoxdur';

  @override
  String get noVoiceDetected => 'Səs aşkarlanmadı';

  @override
  String get notSelected => '- Seçilməyib -';

  @override
  String get onlineLibraryCheckInternet =>
      'İnternet bağlantınızı yoxlayın və ya sonra yenidən cəhd edin.';

  @override
  String get onlineLibraryLoadFailed => 'Materialları yükləmək alınmadı.';

  @override
  String get onlineLibraryNoMaterials => 'Material yoxdur.';

  @override
  String get participantDeleted => 'İştirakçı silindi.';

  @override
  String get participantRename => 'İştirakçının Adını Dəyişdirin';

  @override
  String get partner => 'Tərəfdaş';

  @override
  String get partnerMode => 'Tərəfdaş rejimi';

  @override
  String get password => 'Şifrə';

  @override
  String get passwordTooShort => 'Şifrə 6 simvoldan az olmamalıdır.';

  @override
  String get perfect => 'Mükəmməldir!';

  @override
  String get personaFriend => 'Yerli Dost';

  @override
  String get personaGuide => 'Səyahət Bələdçisi';

  @override
  String get personaTeacher => 'İngilis Dili Müəllimi';

  @override
  String get playAgain => 'Yenidən Oyna';

  @override
  String playbackFailed(String error) {
    return 'Səsləndirmə Uğursuz oldu: $error';
  }

  @override
  String get playing => 'Səsləndirilir...';

  @override
  String get posAdjective => 'Sıfat';

  @override
  String get posAdverb => 'Zərf';

  @override
  String get posConjunction => 'Bağlayıcı';

  @override
  String get posInterjection => 'Nida';

  @override
  String get posNoun => 'İsim';

  @override
  String get posPreposition => 'Ön söz';

  @override
  String get posPronoun => 'Əvəzlik';

  @override
  String get posVerb => 'Fiil';

  @override
  String get practiceModeTitle => 'Məşq';

  @override
  String get practiceWordsOnly => 'Yalnız Sözləri Məşq Edin';

  @override
  String progress(int current, int total) {
    return 'Gedişat: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Son $count ədədə baxın';
  }

  @override
  String recognitionFailed(String error) {
    return 'Səsin Tanınması Uğursuz oldu: $error';
  }

  @override
  String get recognized => 'Tanınma Tamamlandı';

  @override
  String get recognizedText => 'Tanınan Tələffüz:';

  @override
  String get recordDeleted => 'Qeyd Silindi';

  @override
  String get refresh => 'Yenilə';

  @override
  String get reset => 'Sıfırla';

  @override
  String get resetPracticeHistory => 'Məşq Tarixini Sıfırla';

  @override
  String get retry => 'Yenidən cəhd edilsin?';

  @override
  String get reviewAll => 'Bütün Təkrar';

  @override
  String reviewCount(int count) {
    return 'Təkrar $count dəfə';
  }

  @override
  String get reviewModeTitle => 'Təkrar';

  @override
  String get roleAi => 'Süni intellekt';

  @override
  String get roleThirdParty => 'Üçüncü tərəf';

  @override
  String get roleUser => 'İstifadəçi';

  @override
  String get save => 'Saxla';

  @override
  String get saveData => 'Məlumatları Saxla';

  @override
  String saveFailed(String error) {
    return 'Saxlama Uğursuz oldu: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Axtarış rejimindən tərcümələri saxlayın';

  @override
  String get saved => 'Saxlama Tamamlandı';

  @override
  String get saving => 'Saxlanılır...';

  @override
  String score(String score) {
    return 'Dəqiqlik: $score%';
  }

  @override
  String get scoreLabel => 'Bal';

  @override
  String get search => 'Axtar';

  @override
  String get searchConditions => 'Axtarış Şərtləri';

  @override
  String get searchSentenceHint => 'Cümlə axtar...';

  @override
  String get searchWordHint => 'Söz axtar...';

  @override
  String get sectionSentence => 'Cümlə Bölməsi';

  @override
  String get sectionSentences => 'Cümlələr';

  @override
  String get sectionWord => 'Söz Bölməsi';

  @override
  String get sectionWords => 'Sözlər';

  @override
  String get selectExistingSubject => 'Mövcud adı seçin';

  @override
  String get selectMaterialPrompt => 'Öyrənmə materialını seçin';

  @override
  String get selectMaterialSet => 'Öyrənmə Materialı Toplusunu Seçin';

  @override
  String get selectPOS => 'Nitq Hissəsini Seçin';

  @override
  String get selectParticipants => 'İştirakçıları seç';

  @override
  String get selectSentenceType => 'Cümlə Növünü Seçin';

  @override
  String get selectStudyMaterial => 'Öyrənmə Materialını Seçin';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Cümlə';

  @override
  String get signUp => 'Qeydiyyat';

  @override
  String get similarTextFound => 'Bənzər mətn tapıldı';

  @override
  String get skip => 'Burax';

  @override
  String get source => 'Mənbə:';

  @override
  String get sourceLanguage => 'Mənbə Dili';

  @override
  String get sourceLanguageLabel => 'Mənim Dilim (Mənbə)';

  @override
  String get speakNow => 'İndi Danış!';

  @override
  String get speaker => 'Danışan';

  @override
  String get speakerSelect => 'Danışanı seç';

  @override
  String get speakingPractice => 'Danışıq Məşqi';

  @override
  String get startChat => 'Söhbətə başla';

  @override
  String get startPractice => 'Məşqə Başlayın';

  @override
  String get startTutorial => 'Təlimata Başlayın';

  @override
  String get startWarning => 'Diqqət';

  @override
  String get startsWith => 'Başlayan Hərflər';

  @override
  String get statusCheckEmail =>
      'Zəhmət olmasa, identifikasiyanı tamamlamaq üçün e-poçtunuzu yoxlayın.';

  @override
  String statusDownloading(Object name) {
    return 'Yüklənir: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'İdxal uğursuz oldu: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name idxalı tamamlandı';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Giriş ləğv edildi.';

  @override
  String statusLoginFailed(Object error) {
    return 'Giriş uğursuz oldu: $error';
  }

  @override
  String get statusLoginSuccess => 'Giriş uğurlu oldu.';

  @override
  String get statusLogoutSuccess => 'Çıxış edildi.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Qeydiyyat uğursuz oldu: $error';
  }

  @override
  String get statusSigningUp => 'Qeydiyyatdan keçilir...';

  @override
  String get stopPractice => 'Məşqi Dayandırın';

  @override
  String get studyComplete => 'Öyrənmə Tamamlandı';

  @override
  String studyRecords(int count) {
    return 'Öyrənmə Qeydləri ($count)';
  }

  @override
  String get styleFormal => 'Rəsmi';

  @override
  String get styleInformal => 'Qeyri-rəsmi';

  @override
  String get stylePolite => 'Nəzakətli';

  @override
  String get styleSlang => 'Jarqon/argo';

  @override
  String get subject => 'Başlıq:';

  @override
  String get swapLanguages => 'Dilləri Dəyişdir';

  @override
  String get switchToAi => 'AI Rejiminə Keç';

  @override
  String get switchToPartner => 'Tərəfdaş Rejiminə Keç';

  @override
  String get syncingData => 'Məlumat sinxronizasiya olunur...';

  @override
  String get tabConversation => 'Söhbət';

  @override
  String tabReview(int count) {
    return 'Təkrar ($count)';
  }

  @override
  String get tabSentence => 'Cümlə';

  @override
  String get tabSpeaking => 'Danışmaq';

  @override
  String tabStudyMaterial(int count) {
    return 'Öyrənmə Materialı ($count)';
  }

  @override
  String get tabWord => 'Söz';

  @override
  String get tagFormal => 'Rəsmi';

  @override
  String get tagSelection => 'Etiket Seçimi';

  @override
  String get targetLanguage => 'Hədəf Dili';

  @override
  String get targetLanguageFilter => 'Hədəf Dil Filtrini:';

  @override
  String get targetLanguageLabel => 'Öyrənmə Dili (Hədəf)';

  @override
  String get thinkingTimeDesc =>
      'Düzgün cavab açıqlanmazdan əvvəl düşünmək üçün vaxt.';

  @override
  String get thinkingTimeInterval => 'Oynatma fasiləsi';

  @override
  String get timeUp => 'Vaxt Bitdi!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Başlıq etiketi (Kitabxana)';

  @override
  String get tooltipDecrease => 'Azalt';

  @override
  String get tooltipIncrease => 'Artır';

  @override
  String get tooltipSearch => 'Axtarış';

  @override
  String get tooltipSpeaking => 'Danışmaq';

  @override
  String get tooltipStudyReview => 'Öyrənmə + Təkrar';

  @override
  String totalRecords(int count) {
    return 'Cəmi $count qeyd (Hamısına Bax)';
  }

  @override
  String get translate => 'Tərcümə Et';

  @override
  String get translating => 'Tərcümə Edilir...';

  @override
  String get translation => 'Tərcümə';

  @override
  String get translationComplete => 'Tərcümə Tamamlandı (Saxlama Tələb Olunur)';

  @override
  String translationFailed(String error) {
    return 'Tərcümə Uğursuz oldu: $error';
  }

  @override
  String get translationLimitExceeded => 'Tərcümə limiti aşıldı';

  @override
  String get translationLimitMessage =>
      'Gündəlik pulsuz tərcümələrinizdən (5 dəfə) istifadə etdiniz.\\n\\nReklama baxaraq dərhal 5 dəfə doldurmaq istəyirsiniz?';

  @override
  String get translationLoaded => 'Saxlanılan tərcümə yükləndi';

  @override
  String get translationRefilled => 'Tərcümə sayı 5 dəfə dolduruldu!';

  @override
  String get translationResultHint => 'Tərcümə nəticəsi - redaktə edilə bilər';

  @override
  String get tryAgain => 'Yenidən Cəhd Edin';

  @override
  String get tutorialAiChatDesc =>
      'Süni intellekt personajları ilə real söhbət bacarıqlarınızı məşq edin.';

  @override
  String get tutorialAiChatTitle => 'Süni İntellekt Söhbəti';

  @override
  String get tutorialContextDesc =>
      'Eyni cümlə olsa belə, vəziyyəti (məsələn, səhər, axşam) qeyd etsəniz, onu ayrı saxlayabilirsiniz.';

  @override
  String get tutorialContextTitle => 'Vəziyyət/Məzmun Etiketi';

  @override
  String get tutorialLangSettingsDesc =>
      'Tərcümə etmək üçün mənbə və hədəf dilləri təyin edin.';

  @override
  String get tutorialLangSettingsTitle => 'Dil Parametrləri';

  @override
  String get tutorialM1ToggleDesc =>
      'Söz və cümlə rejimlərini burada dəyişdirin.';

  @override
  String get tutorialM1ToggleTitle => 'Söz/Cümlə Rejimi';

  @override
  String get tutorialM2DropdownDesc =>
      'Yuxarıdakı menyu vasitəsilə öyrənmək üçün material seçə bilərsiniz.';

  @override
  String get tutorialM2ImportDesc =>
      'JSON faylını cihazınızın qovluğundan idxal edin.';

  @override
  String get tutorialM2ListDesc =>
      'Saxlanılan cümlələri yoxlamaq və çevirmək üçün bu karta uzun müddət (Uzun Klik) toxunun. Onu silmək üçün.';

  @override
  String get tutorialM2ListTitle => 'Öyrənmə Siyahısı';

  @override
  String get tutorialM2SearchDesc =>
      'Saxlanılan sözləri və cümlələri axtarış edərək tez tapa bilərsiniz.';

  @override
  String get tutorialM2SelectDesc =>
      'Öyrənmək üçün material seçmək üçün yuxarıdakı proqram çubuğundakı material toplusu işarəsinə (📚) toxunun.';

  @override
  String get tutorialM2SelectTitle => 'Material Seçimi';

  @override
  String get tutorialM3IntervalDesc =>
      'Cümlələr arasındakı gözləmə müddətini tənzimləyin.';

  @override
  String get tutorialM3IntervalTitle => 'İnterval Təyin Edin';

  @override
  String get tutorialM3ResetDesc =>
      'Gedişatı və dəqiqlik balını sıfırlayaraq yenidən başlayın.';

  @override
  String get tutorialM3ResetTitle => 'Tarixi Sıfırla';

  @override
  String get tutorialM3SelectDesc =>
      'Məşq etmək üçün material seçmək üçün yuxarıdakı proqram çubuğundakı material toplusu işarəsinə (📚) toxunun.';

  @override
  String get tutorialM3SelectTitle => 'Material Seçimi';

  @override
  String get tutorialM3StartDesc =>
      'Ana dilində danışanın səsini dinləmək və təkrar etmək üçün səsləndirmə düyməsinə toxunun.';

  @override
  String get tutorialM3StartTitle => 'Məşqə Başlayın';

  @override
  String get tutorialM3WordsDesc =>
      'Yoxlanılıbsa, yalnız saxlanılan sözləri məşq edin.';

  @override
  String get tutorialM3WordsTitle => 'Söz Məşqi';

  @override
  String get tutorialMicDesc =>
      'Səsli giriş üçün mikrofon düyməsinə toxuna bilərsiniz.';

  @override
  String get tutorialMicTitle => 'Səs Girişi';

  @override
  String get tutorialSaveDesc =>
      'Tərcümə edilmiş nəticələri öyrənmə qeydlərinizə saxlayın.';

  @override
  String get tutorialSaveTitle => 'Saxla';

  @override
  String get tutorialSwapDesc => 'Mənim dilimi və öyrənmə dilini dəyişdirir.';

  @override
  String get tutorialTabDesc =>
      'Burada istədiyiniz öyrənmə rejimini seçə bilərsiniz.';

  @override
  String get tutorialTapToContinue => 'Davam Etmək Üçün Ekrana Toxunun';

  @override
  String get tutorialTransDesc => 'Daxil edilmiş mətni tərcümə edin.';

  @override
  String get tutorialTransTitle => 'Tərcümə Et';

  @override
  String get typeExclamation => 'Nida';

  @override
  String get typeImperative => 'Əmr';

  @override
  String get typeQuestion => 'Sual';

  @override
  String get typeStatement => 'Bildiriş';

  @override
  String get usageLimitTitle => 'Limitə Çatdı';

  @override
  String get useExistingText => 'Mövcud mətndən istifadə edin';

  @override
  String get viewOnlineGuide => 'Onlayn Bələdçiyə Bax';

  @override
  String get voluntaryTranslations => 'Könüllü tərcümələr';

  @override
  String get watchAdAndRefill => 'Reklama baxaraq doldurun (+5 dəfə)';

  @override
  String get word => 'Söz';

  @override
  String get wordDefenseDesc =>
      'Düşmənlər gəlmədən sözləri deyərək bazanı müdafiə edin.';

  @override
  String get wordDefenseTitle => 'Söz Müdafiəsi';

  @override
  String get wordModeLabel => 'Söz Rejimi';

  @override
  String get yourPronunciation => 'Mənim Tələffüzüm';

  @override
  String get ttsUnsupportedNatively =>
      'Bu cihazda bu dil üçün doğma səs dəstəyi yoxdur.';

  @override
  String get homeTab => 'Əsas Səhifə';

  @override
  String get welcomeTitle => 'Talkie-yə xoş gəlmisiniz!';

  @override
  String get welcomeDesc =>
      'Talkie-yə xoş gəlmisiniz! Dünyada 80-dən çox dili 100% sədaqətlə dəstəkləyirik və yeni premium 3D dizaynı və optimallaşdırılmış performansı ilə mükəmməl öyrənmə təcrübəsi təqdim edirik.';

  @override
  String get welcomeButton => 'Başla';

  @override
  String get labelDetails => 'Ətraflı parametrlər';

  @override
  String get translationResult => 'Tərcümə nəticəsi';

  @override
  String get inputContent => 'Daxil edilən məzmun';

  @override
  String get translateNow => 'İndi tərcümə et';

  @override
  String get tooltipSettingsConfirm => 'Parametrləri təsdiqlə';

  @override
  String get hintNoteExample => 'Nümunə: Kontekst, omonimlər və s.';

  @override
  String get hintTagExample => 'Nümunə: Biznes, Səyahət...';

  @override
  String get addNew => 'Yeni əlavə et';

  @override
  String get newNotebookTitle => 'Yeni qeyd dəftərinin adı';

  @override
  String get enterNameHint => 'Ad daxil edin';

  @override
  String get add => 'Əlavə et';

  @override
  String get openSettings => 'Parametrləri aç';

  @override
  String get helpNotebook =>
      'Tərcümə olunmuş nəticələri saxlamaq üçün qovluq seçin.';

  @override
  String get helpNote =>
      'Sözün mənasını, nümunələrini və ya vəziyyətlərini sərbəst şəkildə qeyd edin.';

  @override
  String get helpTag =>
      'Sonra təsnif etmək və ya axtarmaq üçün açar sözlər daxil edin.';

  @override
  String get requestTranslation => 'Tərcümə tələb et';

  @override
  String get statusRequestSuccess => 'Tərcümə tələbi tamamlandı.';

  @override
  String statusRequestFailed(String error) {
    return 'Tərcümə tələbi uğursuz oldu: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Öyrənmə dili dəstəklənmir';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Seçdiyiniz material hal-hazırda təyin edilmiş öyrənmə dilinizi ($targetLang) dəstəkləmir və yerli olaraq saxlanıla bilməz. Tərcümə tələb etmək istəyirsiniz?';
  }
}

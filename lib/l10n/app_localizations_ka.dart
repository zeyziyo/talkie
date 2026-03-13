// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get basicWords => 'სიტყვების ძირითადი საცავი';

  @override
  String get inputLanguage => 'შეყვანის ენა';

  @override
  String get translationLanguage => 'თარგმანის ენა';

  @override
  String get simplifiedGuidance =>
      'მყისიერად გადააკეთეთ ყოველდღიური საუბრები უცხო ენებზე! Talkie აღწერს თქვენს ენობრივ ცხოვრებას.';

  @override
  String get cancel => 'გაუქმება';

  @override
  String get accuracy => 'სიზუსტე';

  @override
  String get ttsMissing =>
      'ამ ენისთვის მეტყველების ძრავა თქვენს მოწყობილობაზე დაინსტალირებული არ არის.';

  @override
  String get ttsInstallGuide =>
      'გთხოვთ, დააინსტალიროთ ენის მონაცემები Android-ის პარამეტრებიდან > Google TTS.';

  @override
  String get adLoading =>
      'მიმდინარეობს რეკლამის ჩატვირთვა. გთხოვთ, სცადოთ მოგვიანებით.';

  @override
  String get addNewSubject => 'ახალი სათაურის დამატება';

  @override
  String get addParticipant => 'მონაწილის დამატება';

  @override
  String get addTagHint => 'ტეგის დამატება...';

  @override
  String get alreadyHaveAccount => 'უკვე გაქვთ ანგარიში?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'ავტომატური დაკვრა';

  @override
  String get basic => 'ძირითადი';

  @override
  String get basicDefault => 'ძირითადი';

  @override
  String get basicMaterialRepository =>
      'ძირითადი წინადადებების/სიტყვების საცავი';

  @override
  String get basicSentenceRepository => 'წინადადებების ძირითადი საცავი';

  @override
  String get basicSentences => 'წინადადებების ძირითადი საცავი';

  @override
  String get basicWordRepository => 'სიტყვების ძირითადი საცავი';

  @override
  String get caseObject => 'ბრალდებითი ბრუნვა';

  @override
  String get casePossessive => 'ნათესაობითი ბრუნვა';

  @override
  String get casePossessivePronoun => 'მიმთითებელი ნაცვალსახელი';

  @override
  String get caseReflexive => 'რეფლექსური';

  @override
  String get caseSubject => 'სახელობითი ბრუნვა';

  @override
  String get chatAiChat => 'ჩეთი';

  @override
  String get chatAllConversations => 'ყველა საუბარი';

  @override
  String get chatChoosePersona => 'პერსონას არჩევა';

  @override
  String get chatEndMessage => 'გსურთ საუბრის დასრულება?';

  @override
  String get chatEndTitle => 'საუბრის დასრულება და შენახვა';

  @override
  String chatFailed(Object error) {
    return 'ჩატი ვერ მოხერხდა: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'საუბრის ამონარიდი ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'საუბრის ისტორია';

  @override
  String get chatNew => 'ახალი საუბარი';

  @override
  String get chatNewChat => 'ახალი საუბარი';

  @override
  String get chatNoConversations => 'ჯერ საუბრები არ არის';

  @override
  String get chatSaveAndExit => 'შენახვა და გამოსვლა';

  @override
  String get chatStartNewPrompt => 'სცადეთ ახალი საუბრის დაწყება სავარჯიშოდ!';

  @override
  String get chatTypeHint => 'დაწერეთ შეტყობინება...';

  @override
  String get chatUntitled => 'უსათაურო საუბარი';

  @override
  String get checking => 'მიმდინარეობს შემოწმება...';

  @override
  String get clearAll => 'ყველას გასუფთავება';

  @override
  String get confirm => 'დადასტურება';

  @override
  String get confirmDelete => 'გსურთ ამ სწავლის ჩანაწერის წაშლა?';

  @override
  String get confirmDeleteConversation =>
      'გსურთ ამ საუბრის წაშლა?\nწაშლილი საუბრის აღდგენა შეუძლებელია.';

  @override
  String get confirmDeleteParticipant => 'გსურთ ამ მონაწილის წაშლა?';

  @override
  String get contextTagHint =>
      'ჩაწერეთ სიტუაცია, რომ მოგვიანებით გაადვილოთ განსხვავება';

  @override
  String get contextTagLabel =>
      'კონტექსტი (სურვილისამებრ) - მაგ: დილის მისალმება, თავაზიანი';

  @override
  String get copiedToClipboard => 'დაკოპირებულია ბუფერში!';

  @override
  String get copy => 'კოპირება';

  @override
  String get correctAnswer => 'სწორი პასუხი';

  @override
  String get createNew => 'გაგრძელება ახალი წინადადებით';

  @override
  String get currentLocation => 'მიმდინარე ადგილმდებარეობა';

  @override
  String get currentMaterialLabel => 'ამჟამად არჩეული მასალების ნაკრები:';

  @override
  String get delete => 'წაშლა';

  @override
  String deleteFailed(String error) {
    return 'წაშლა ვერ მოხერხდა: $error';
  }

  @override
  String get deleteRecord => 'ჩანაწერის წაშლა';

  @override
  String get dialogueQuestDesc =>
      'ივარჯიშეთ დიალოგში სიტუაციური თამაშის საშუალებით. აირჩიეთ და თქვით შესაბამისი პასუხები.';

  @override
  String get dialogueQuestTitle => 'დიალოგის ქვესტი';

  @override
  String get disambiguationPrompt => 'რომელი მნიშვნელობით გსურთ თარგმნა?';

  @override
  String get disambiguationTitle => 'მნიშვნელობის არჩევა';

  @override
  String get dontHaveAccount => 'ჯერ არ გაქვთ ანგარიში?';

  @override
  String get editParticipant => 'მონაწილის შეცვლა';

  @override
  String get email => 'ელ. ფოსტა';

  @override
  String get emailAlreadyInUse =>
      'ეს ელფოსტა უკვე რეგისტრირებულია. გთხოვთ, შეხვიდეთ სისტემაში ან გამოიყენოთ პაროლის აღდგენა.';

  @override
  String get enterNewSubjectName => 'ახალი სათაურის შეყვანა';

  @override
  String get enterSentenceHint => 'შეიყვანეთ წინადადება...';

  @override
  String get enterTextHint => 'შეიყვანეთ ტექსტი თარგმნისთვის';

  @override
  String get enterTextToTranslate => 'შეიყვანეთ ტექსტი თარგმნისთვის';

  @override
  String get enterWordHint => 'შეიყვანეთ სიტყვა...';

  @override
  String get error => 'შეცდომა';

  @override
  String get errorHateSpeech =>
      'შეიცავს სიძულვილის ენას, ამიტომ მისი თარგმნა შეუძლებელია.';

  @override
  String get errorOtherSafety => 'AI-ს უსაფრთხოების პოლიტიკამ უარყო თარგმანი.';

  @override
  String get errorProfanity =>
      'შეიცავს უცენზურო სიტყვებს, ამიტომ მისი თარგმნა შეუძლებელია.';

  @override
  String get errorSelectCategory => 'ჯერ აირჩიეთ სიტყვა ან წინადადება!';

  @override
  String get errorSexualContent =>
      'შეიცავს სექსუალურ კონტენტს, ამიტომ მისი თარგმნა შეუძლებელია.';

  @override
  String get errors => 'შეცდომები:';

  @override
  String get female => 'მდედრობითი';

  @override
  String get file => 'ფაილი:';

  @override
  String get filterAll => 'ყველა';

  @override
  String get flip => 'ჩვენება';

  @override
  String get formComparative => 'შედარებითი ფორმა';

  @override
  String get formInfinitive => 'ინფინიტივი/აწმყო დრო';

  @override
  String get formPast => 'წარსული დრო';

  @override
  String get formPastParticiple => 'წარსული ნაწილაკი';

  @override
  String get formPlural => 'მრავლობითი';

  @override
  String get formPositive => 'დადებითი ფორმა';

  @override
  String get formPresent => 'აწმყო დრო';

  @override
  String get formPresentParticiple => 'აწმყო ნაწილაკი (ing)';

  @override
  String get formSingular => 'მხოლობითი';

  @override
  String get formSuperlative => 'უპირატესი ფორმა';

  @override
  String get formThirdPersonSingular => 'მესამე პირის მხოლობითი';

  @override
  String get gameModeDesc => 'აირჩიეთ თამაშის რეჟიმი ვარჯიშისთვის';

  @override
  String get gameModeTitle => 'თამაშის რეჟიმი';

  @override
  String get gameOver => 'თამაში დასრულდა';

  @override
  String get gender => 'სქესი';

  @override
  String get labelFilterMaterial => 'მასალები';

  @override
  String get labelFilterTag => 'ტეგები';

  @override
  String get generalTags => 'ზოგადი ტეგები';

  @override
  String get getMaterials => 'მასალების მიღება';

  @override
  String get good => 'კარგია';

  @override
  String get googleContinue => 'გაგრძელება Google-ით';

  @override
  String get helpDialogueImportDesc =>
      'მთელი დიალოგის ნაკრების იმპორტი JSON ფაილიდან.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON სტრუქტურა: გამოიყენეთ `dialogues` მასივი `entries`-ის ნაცვლად\n• ავტომატური აღდგენა: აღდგება დიალოგის სათაური, პერსონა და შეტყობინების თანმიმდევრობა.\n• მდებარეობა: იმპორტირებული დიალოგები გამოჩნდება AI Chat რეჟიმის ჩანართში „ისტორია“.';

  @override
  String get helpJsonDesc =>
      'მიჰყევით ამ ფორმატს, თუ გსურთ სასწავლო მასალების იმპორტი JSON ფაილში გამოსაყენებლად Mode 3-ში:';

  @override
  String get helpJsonTypeDialogue => 'დიალოგი';

  @override
  String get helpJsonTypeSentence => 'წინადადება';

  @override
  String get helpJsonTypeWord => 'სიტყვა';

  @override
  String get helpMode1Desc => '음성을 인식하거나 텍스트를 입력하여 즉시 번역하고, 학습 리스트에 저장하세요.';

  @override
  String get helpMode1Details =>
      '• 언어 설정: 홈 화면 상단의 언어 버튼으로 내 언어와 학습 중인 언어를 확인하고 학습 언어를 변경할 수 있습니다.\n• 심플 입력: 중앙의 대형 마이크 및 텍스트 창을 통해 즉시 입력하세요.\n• 설정 확인: 입력이 끝나면 오른쪽의 파란색 체크 버튼을 누르세요. 상세 설정 창이 나타납니다.\n• 상세 설정: 나타난 다이얼로그에서 저장할 자료집, 주석(메모), 태그를 지정할 수 있습니다.\n• 지금 번역하기: 설정을 마친 후 초록색 번역 버튼을 누르면 인공지능이 즉시 번역을 수행합니다.\n• 자동 검색: 입력 중 유사한 기존 번역을 실시간으로 감지하여 보여줍니다.\n• 듣기 및 저장: 번역 결과 하단의 스피커 아이콘으로 발음을 듣고, \'데이터 저장\'을 통해 학습 리스트에 추가하세요.';

  @override
  String get helpMode2Desc =>
      'გაიმეორეთ შენახული წინადადებები და შეამოწმეთ დამახსოვრება ავტომატური დამალვის ფუნქციით.';

  @override
  String get helpMode2Details =>
      '• კრებულის არჩევა: გამოიყენეთ მარჯვენა ზედა მენიუ (⋮) \'სასწავლო კრებულის არჩევა\' ან \'ონლაინ ბიბლიოთეკა\'\n• ბარათის გადაბრუნება: შეამოწმეთ თარგმანი \'ჩვენება/დამალვა\'-ს საშუალებით\n• მოსმენა: გამოთქმის დასაკრავად გამოიყენეთ დინამიკის ხატულა\n• სწავლის დასრულება: მონიშნეთ (V) სასწავლო პროცესის დასასრულებლად\n• წაშლა: ჩანაწერის წასაშლელად დიდხანს დააჭირეთ ბარათს (Long Click)\n• ძიება და ფილტრი: მხარდაჭერილია საძიებო ზოლი (რეალურ დროში ჭკვიანი ძიება) და ტეგები, საწყისი ასოების ფილტრი';

  @override
  String get helpMode3Desc =>
      'მოუსმინეთ წინადადებას და გაიმეორეთ (Shadowing) გამოთქმის სავარჯიშოდ.';

  @override
  String get helpMode3Details =>
      '• მასალის არჩევა: აირჩიეთ მასალა სასწავლად.\n• ინტერვალის დაყენება: დაარეგულირეთ ლოდინის დრო წინადადებებს შორის [-] [+] ღილაკებით (3 წმ-დან 60 წმ-მდე)\n• დაწყება/შეჩერება: დაჩრდილვის სესიის კონტროლი\n• საუბარი: მოუსმინეთ და გაიმეორეთ ხმა\n• გამოხმაურება: სიზუსტის ქულა (0-100) და ფერის ჩვენება\n• საძიებო პირობები: გაფილტრეთ სავარჯიშო მიზნები ტეგებით, ბოლო ელემენტებით ან საწყისი ასოებით';

  @override
  String get helpModeChatDesc =>
      'ივარჯიშეთ რეალურ საუბარში AI პერსონასთან საუბრით.';

  @override
  String get helpModeChatDetails =>
      '• AI ჩატი: ივარჯიშეთ რეალურ საუბარში პერსონაჟთან ქვედა ჩანართის ზოლის მენიუდან „ჩატში“.\n• პერსონაჟის დაყენება: თავისუფლად მიუთითეთ მოწინააღმდეგის სქესი, სახელი და ენის კოდი.\n• GPS სიტუაციური დრამა: გირჩევთ საუბრის თემებს, რომლებიც შეესაბამება ადგილს თქვენი ამჟამინდელი მდებარეობის ამოცნობით.\n• 2 ენა: AI-ის პასუხი ნაჩვენებია თარგმანთან ერთად, რაც მაქსიმალურად ზრდის სწავლის ეფექტს.\n• ჩანაწერების მართვა: წარსული საუბრების ისტორიის გაფილტვრა და კონკრეტული შეტყობინებების შენახვა საუბრის დროს, როგორც სასწავლო მასალა';

  @override
  String get helpTabJson => 'JSON ფორმატი';

  @override
  String get helpTabModes => 'რეჟიმების აღწერა';

  @override
  String get helpTabTour => 'დემო';

  @override
  String get helpTitle => 'დახმარება და გზამკვლევი';

  @override
  String get helpTourDesc =>
      '**მონიშნული წრე** გაგიწევთ სახელმძღვანელოს ძირითადი ფუნქციების შესახებ.\n(მაგალითად: შეგიძლიათ წაშალოთ ბარათი **მონიშნულ წრეზე** მითითებულზე ხანგრძლივი დაჭერით.)';

  @override
  String get hide => 'დამალვა';

  @override
  String importAdded(int count) {
    return 'დამატებულია: $count';
  }

  @override
  String get importComplete => 'იმპორტი დასრულებულია';

  @override
  String get importDuplicateTitleError =>
      'მსგავსი სათაურის მასალა უკვე არსებობს. შეცვალეთ სათაური და სცადეთ ხელახლა.';

  @override
  String importErrorMessage(String error) {
    return 'ფაილის იმპორტი ვერ მოხერხდა:\\n$error';
  }

  @override
  String get importFailed => 'იმპორტი ვერ მოხერხდა';

  @override
  String importFile(String fileName) {
    return 'ფაილი: $fileName';
  }

  @override
  String get importJsonFile => 'JSON ფაილის იმპორტი';

  @override
  String get importJsonFilePrompt => 'გთხოვთ, შემოიტანოთ JSON ფაილი';

  @override
  String importSkipped(int count) {
    return 'გამოტოვებულია: $count';
  }

  @override
  String importTotal(int count) {
    return 'სულ: $count';
  }

  @override
  String get importing => 'მიმდინარეობს იმპორტი...';

  @override
  String get inputModeTitle => 'შეყვანა';

  @override
  String intervalSeconds(int seconds) {
    return 'ინტერვალი: $seconds წმ';
  }

  @override
  String get invalidEmail => 'გთხოვთ, შეიყვანოთ ვალიდური ელ. ფოსტა.';

  @override
  String get kakaoContinue => 'გაგრძელება Kakao-თი';

  @override
  String get labelLangCode => 'ენის კოდი (მაგ: en-US, ko-KR)';

  @override
  String get labelName => 'სახელი';

  @override
  String get labelNote => 'შენიშვნა';

  @override
  String get labelPOS => 'მეტყველების ნაწილი';

  @override
  String get labelRole => 'როლი';

  @override
  String get labelSentence => 'წინადადება';

  @override
  String get labelSentenceCollection => 'წინადადებების კრებული';

  @override
  String get labelSentenceType => 'წინადადების ტიპი';

  @override
  String get labelShowMemorized => 'დასრულებული';

  @override
  String get labelType => 'ტიპი:';

  @override
  String get labelWord => 'სიტყვა';

  @override
  String get labelWordbook => 'სიტყვების კრებული';

  @override
  String get language => 'ენა';

  @override
  String get languageSettings => 'ენის პარამეტრები';

  @override
  String get languageSettingsTitle => 'ენის პარამეტრები';

  @override
  String get libTitleFirstMeeting => 'პირველი შეხვედრა';

  @override
  String get libTitleGreetings1 => 'მისალმებები 1';

  @override
  String get libTitleNouns1 => 'არსებითი სახელები 1';

  @override
  String get libTitleVerbs1 => 'ზმნები 1';

  @override
  String get listen => 'მოსმენა';

  @override
  String get listening => 'მიმდინარეობს მოსმენა...';

  @override
  String get loadingParticipants => 'მონაწილეების ჩატვირთვა...';

  @override
  String get location => 'მდებარეობა';

  @override
  String get login => 'შესვლა';

  @override
  String get logout => 'გამოსვლა';

  @override
  String get logoutConfirmMessage => 'გსურთ ამ მოწყობილობიდან გამოსვლა?';

  @override
  String get logoutConfirmTitle => 'გამოსვლა';

  @override
  String get male => 'მამრობითი';

  @override
  String get manageParticipants => 'მონაწილეების მართვა';

  @override
  String get manual => 'მექანიკური შეყვანა';

  @override
  String get markAsStudied => 'მონიშვნა, როგორც შესწავლილი';

  @override
  String get materialInfo => 'მასალის ინფორმაცია';

  @override
  String get me => 'მე';

  @override
  String get menuDeviceImport => 'მასალების შემოტანა მოწყობილობიდან';

  @override
  String get menuHelp => 'დახმარება';

  @override
  String get menuLanguageSettings => 'ენის პარამეტრები';

  @override
  String get menuOnlineLibrary => 'ონლაინ ბიბლიოთეკა';

  @override
  String get menuSelectMaterialSet => 'სასწავლო მასალების ნაკრების არჩევა';

  @override
  String get menuSettings => 'ენის პარამეტრები';

  @override
  String get menuTutorial => 'გამოყენების ტური';

  @override
  String get menuWebDownload => 'საწყისი გვერდი';

  @override
  String get metadataDialogTitle => 'დეტალური კლასიფიკაცია';

  @override
  String get metadataFormType => 'გრამატიკული ფორმა';

  @override
  String get metadataRootWord => 'ძირითადი სიტყვა (Root Word)';

  @override
  String get micButtonTooltip => 'ხმის ამოცნობის დაწყება';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'ამჟამად არჩეული მასალების ნაკრები: $name';
  }

  @override
  String get mode2Title => 'გამეორება';

  @override
  String get mode3Next => 'შემდეგი';

  @override
  String get mode3Start => 'დაწყება';

  @override
  String get mode3Stop => 'შეჩერება';

  @override
  String get mode3TryAgain => 'ხელახლა ცდა';

  @override
  String get mySentenceCollection => 'ჩემი წინადადებების კრებული';

  @override
  String get myWordbook => 'ჩემი სიტყვების წიგნი';

  @override
  String get neutral => 'ნეიტრალური';

  @override
  String get newSubjectName =>
      'ახალი თემატური ლექსიკონის/ფრაზების კრებულის სათაური';

  @override
  String get next => 'შემდეგი';

  @override
  String get noDialogueHistory => 'საუბრის ისტორია არ არის.';

  @override
  String get noInternetWarningMic =>
      'ინტერნეტთან კავშირი არ არის. ხმოვანი ამოცნობა შესაძლოა ხაზგარეშე არ მუშაობდეს.';

  @override
  String get noInternetWarningTranslate =>
      'ინტერნეტთან კავშირი არ არის. თარგმანის ფუნქცია ხაზგარეშე არ მუშაობს. გამოიყენეთ გამეორების რეჟიმი.';

  @override
  String get noMaterialsInCategory => 'ამ კატეგორიაში მასალები არ არის.';

  @override
  String get noParticipantsFound => 'მონაწილეები ვერ მოიძებნა.';

  @override
  String get noRecords => 'არ არის სწავლის ჩანაწერები არჩეული ენისთვის';

  @override
  String get noStudyMaterial => 'სასწავლო მასალა არ არის.';

  @override
  String get noTextToPlay => 'დასაკრავი ტექსტი არ არის';

  @override
  String get noTranslationToSave => 'შესანახი თარგმანი არ არის';

  @override
  String get noVoiceDetected => 'ხმა არ არის აღმოჩენილი';

  @override
  String get notSelected => '- არ არის არჩეული -';

  @override
  String get onlineLibraryCheckInternet =>
      'შეამოწმეთ ინტერნეტ კავშირი ან სცადეთ მოგვიანებით.';

  @override
  String get onlineLibraryLoadFailed => 'მასალების ჩატვირთვა ვერ მოხერხდა.';

  @override
  String get onlineLibraryNoMaterials => 'მასალები არ არის.';

  @override
  String get participantDeleted => 'მონაწილე წაიშალა.';

  @override
  String get participantRename => 'მონაწილის სახელის შეცვლა';

  @override
  String get partner => 'პარტნიორი';

  @override
  String get partnerMode => 'პარტნიორის რეჟიმი';

  @override
  String get password => 'პაროლი';

  @override
  String get passwordTooShort =>
      'პაროლი უნდა შედგებოდეს მინიმუმ 6 სიმბოლოსგან.';

  @override
  String get perfect => 'შესანიშნავია!';

  @override
  String get personaFriend => 'ადგილობრივი მეგობარი';

  @override
  String get personaGuide => 'ტურის გიდი';

  @override
  String get personaTeacher => 'ინგლისურის მასწავლებელი';

  @override
  String get playAgain => 'ხელახლა თამაში';

  @override
  String playbackFailed(String error) {
    return 'დაკვრა ვერ მოხერხდა: $error';
  }

  @override
  String get playing => 'მიმდინარეობს დაკვრა...';

  @override
  String get posAdjective => 'ზედსართავი სახელი';

  @override
  String get posAdverb => 'ზმნიზედა';

  @override
  String get posConjunction => 'კავშირი';

  @override
  String get posInterjection => 'შორისდებული';

  @override
  String get posNoun => 'არსებითი სახელი';

  @override
  String get posPreposition => 'წინდებული/ნაწილაკი';

  @override
  String get posPronoun => 'ნაცვალსახელი';

  @override
  String get posVerb => 'ზმნა';

  @override
  String get practiceModeTitle => 'ვარჯიში';

  @override
  String get practiceWordsOnly => 'ივარჯიშეთ მხოლოდ სიტყვები';

  @override
  String progress(int current, int total) {
    return 'პროგრესი: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'ბოლო $count ელემენტის ჩვენება';
  }

  @override
  String recognitionFailed(String error) {
    return 'ხმის ამოცნობა ვერ მოხერხდა: $error';
  }

  @override
  String get recognized => 'ამოცნობა დასრულებულია';

  @override
  String get recognizedText => 'ამოცნობილი ტექსტი:';

  @override
  String get recordDeleted => 'ჩანაწერი წაშლილია';

  @override
  String get refresh => 'განახლება';

  @override
  String get reset => 'გადატვირთვა';

  @override
  String get resetPracticeHistory => 'სავარჯიშო ისტორიის გადატვირთვა';

  @override
  String get retry => 'ხელახლა სცადოთ?';

  @override
  String get reviewAll => 'ყველა გამეორება';

  @override
  String reviewCount(int count) {
    return 'გამეორება $count ჯერ';
  }

  @override
  String get reviewModeTitle => 'გამეორება';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'მესამე მხარე';

  @override
  String get roleUser => 'მომხმარებელი';

  @override
  String get save => 'შენახვა';

  @override
  String get saveData => 'მონაცემების შენახვა';

  @override
  String saveFailed(String error) {
    return 'შენახვა ვერ მოხერხდა: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'სცადეთ თარგმანების შენახვა ძიების რეჟიმში';

  @override
  String get saved => 'შენახულია';

  @override
  String get saving => 'მიმდინარეობს შენახვა...';

  @override
  String score(String score) {
    return 'სიზუსტე: $score%';
  }

  @override
  String get scoreLabel => 'ქულა';

  @override
  String get search => 'ძებნა';

  @override
  String get searchConditions => 'საძიებო პირობები';

  @override
  String get searchSentenceHint => 'წინადადების ძიება...';

  @override
  String get searchWordHint => 'სიტყვის ძიება...';

  @override
  String get sectionSentence => 'წინადადებების განყოფილება';

  @override
  String get sectionSentences => 'წინადადებები';

  @override
  String get sectionWord => 'სიტყვების განყოფილება';

  @override
  String get sectionWords => 'სიტყვები';

  @override
  String get selectExistingSubject => 'არსებული სათაურის არჩევა';

  @override
  String get selectMaterialPrompt => 'აირჩიეთ სასწავლო მასალა';

  @override
  String get selectMaterialSet => 'სასწავლო მასალების ნაკრების არჩევა';

  @override
  String get selectPOS => 'მეტყველების ნაწილის არჩევა';

  @override
  String get selectParticipants => 'მონაწილეების არჩევა';

  @override
  String get selectSentenceType => 'წინადადების ტიპის არჩევა';

  @override
  String get selectStudyMaterial => 'სასწავლო მასალის არჩევა';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'წინადადება';

  @override
  String get signUp => 'რეგისტრაცია';

  @override
  String get similarTextFound => 'მსგავსი ტექსტი ნაპოვნია';

  @override
  String get skip => 'გამოტოვება';

  @override
  String get source => 'წყარო:';

  @override
  String get sourceLanguage => 'წყარო ენა';

  @override
  String get sourceLanguageLabel => 'ჩემი ენა (წყარო)';

  @override
  String get speakNow => 'ილაპარაკე ახლა!';

  @override
  String get speaker => 'მომხსენებელი';

  @override
  String get speakerSelect => 'მომხსენებლის არჩევა';

  @override
  String get speakingPractice => 'საუბრის პრაქტიკა';

  @override
  String get startChat => 'საუბრის დაწყება';

  @override
  String get startPractice => 'ვარჯიშის დაწყება';

  @override
  String get startTutorial => 'სახელმძღვანელოს დაწყება';

  @override
  String get startWarning => 'გაფრთხილება';

  @override
  String get startsWith => 'იწყება ასოთი';

  @override
  String get statusCheckEmail =>
      'გთხოვთ, გადაამოწმოთ ელფოსტა ავტორიზაციის დასასრულებლად.';

  @override
  String statusDownloading(Object name) {
    return 'ჩამოტვირთვა: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'იმპორტი ვერ მოხერხდა: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name-ის იმპორტი წარმატებით დასრულდა';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'ავტორიზაცია გაუქმდა.';

  @override
  String statusLoginFailed(Object error) {
    return 'ავტორიზაცია ვერ მოხერხდა: $error';
  }

  @override
  String get statusLoginSuccess => 'ავტორიზაცია წარმატებით შესრულდა.';

  @override
  String get statusLogoutSuccess => 'თქვენ გამოხვედით.';

  @override
  String statusSignUpFailed(Object error) {
    return 'რეგისტრაცია ვერ მოხერხდა: $error';
  }

  @override
  String get statusSigningUp => 'რეგისტრაცია...';

  @override
  String get stopPractice => 'ვარჯიშის შეწყვეტა';

  @override
  String get studyComplete => 'სწავლა დასრულებულია';

  @override
  String studyRecords(int count) {
    return 'სწავლის ჩანაწერები ($count)';
  }

  @override
  String get styleFormal => 'ოფიციალური';

  @override
  String get styleInformal => 'არაფორმალური';

  @override
  String get stylePolite => 'თავაზიანი';

  @override
  String get styleSlang => 'სლენგი';

  @override
  String get subject => 'სათაური:';

  @override
  String get swapLanguages => 'ენების შეცვლა';

  @override
  String get switchToAi => 'AI რეჟიმზე გადართვა';

  @override
  String get switchToPartner => 'პარტნიორის რეჟიმზე გადართვა';

  @override
  String get syncingData => 'მონაცემთა სინქრონიზაცია...';

  @override
  String get tabConversation => 'საუბარი';

  @override
  String tabReview(int count) {
    return 'გამეორება ($count)';
  }

  @override
  String get tabSentence => 'წინადადება';

  @override
  String get tabSpeaking => 'საუბარი';

  @override
  String tabStudyMaterial(int count) {
    return 'სასწავლო მასალა ($count)';
  }

  @override
  String get tabWord => 'სიტყვა';

  @override
  String get tagFormal => 'თავაზიანი';

  @override
  String get tagSelection => 'ტეგების არჩევა';

  @override
  String get targetLanguage => 'სამიზნე ენა';

  @override
  String get targetLanguageFilter => 'სამიზნე ენის ფილტრი:';

  @override
  String get targetLanguageLabel => 'სასწავლო ენა (სამიზნე)';

  @override
  String get thinkingTimeDesc => 'დრო, რომ იფიქროთ პასუხის გამოვლენამდე.';

  @override
  String get thinkingTimeInterval => 'დაკვრის ინტერვალი';

  @override
  String get timeUp => 'დრო ამოიწურა!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'სათაურის ტეგი (კრებული)';

  @override
  String get tooltipDecrease => 'შემცირება';

  @override
  String get tooltipIncrease => 'გაზრდა';

  @override
  String get tooltipSearch => 'ძებნა';

  @override
  String get tooltipSpeaking => 'საუბარი';

  @override
  String get tooltipStudyReview => 'სწავლა+გამეორება';

  @override
  String totalRecords(int count) {
    return 'სულ $count ჩანაწერი (ყველას ნახვა)';
  }

  @override
  String get translate => 'თარგმნა';

  @override
  String get translating => 'მიმდინარეობს თარგმნა...';

  @override
  String get translation => 'თარგმანი';

  @override
  String get translationComplete => 'თარგმანი დასრულებულია (საჭიროა შენახვა)';

  @override
  String translationFailed(String error) {
    return 'თარგმანი ვერ მოხერხდა: $error';
  }

  @override
  String get translationLimitExceeded => 'თარგმანის ლიმიტი გადაჭარბებულია';

  @override
  String get translationLimitMessage =>
      'თქვენ ამოწურეთ თქვენი უფასო ყოველდღიური თარგმანები (5-ჯერ).\\n\\nგსურთ ნახოთ რეკლამა 5-ჯერ მყისიერად შესავსებად?';

  @override
  String get translationLoaded => 'შენახული თარგმანი ჩატვირთულია';

  @override
  String get translationRefilled => 'თქვენი თარგმანის რაოდენობა შეივსო 5-ჯერ!';

  @override
  String get translationResultHint => 'თარგმანის შედეგი - შესაძლებელია შეცვლა';

  @override
  String get tryAgain => 'სცადეთ ხელახლა';

  @override
  String get tutorialAiChatDesc =>
      'ივარჯიშეთ რეალურ საუბრებში AI პერსონაჟებთან ერთად.';

  @override
  String get tutorialAiChatTitle => 'AI ჩეთი';

  @override
  String get tutorialContextDesc =>
      'ერთი და იგივე წინადადებაც კი შეიძლება ცალკე შენახული იყოს სიტუაციის მითითებით (მაგ. დილა, საღამო).';

  @override
  String get tutorialContextTitle => 'კონტექსტური ტეგი';

  @override
  String get tutorialLangSettingsDesc =>
      'დააყენეთ წყარო ენა და სამიზნე ენა თარგმნისთვის.';

  @override
  String get tutorialLangSettingsTitle => 'ენის პარამეტრები';

  @override
  String get tutorialM1ToggleDesc =>
      'გადართეთ სიტყვების და წინადადებების რეჟიმებს შორის აქ.';

  @override
  String get tutorialM1ToggleTitle => 'სიტყვა/წინადადების რეჟიმი';

  @override
  String get tutorialM2DropdownDesc =>
      'ზედა მენიუს საშუალებით შეგიძლიათ აირჩიოთ სასწავლო მასალა.';

  @override
  String get tutorialM2ImportDesc =>
      'ჩამოტვირთეთ JSON ფაილი თქვენი მოწყობილობის საქაღალდიდან.';

  @override
  String get tutorialM2ListDesc =>
      'ამ ბარათზე ხანგრძლივი დაჭერით (Long Click) შეგიძლიათ წაშალოთ იგი. შეამოწმეთ შენახული წინადადებები და გადააბრუნეთ ისინი.';

  @override
  String get tutorialM2ListTitle => 'სწავლის სია';

  @override
  String get tutorialM2SearchDesc =>
      'შეინახეთ და მოძებნეთ სიტყვები და წინადადებები სწრაფად.';

  @override
  String get tutorialM2SelectDesc =>
      'აირჩიეთ მასალა შესასწავლად მასალების ნაკრების ხატულაზე (📚) ზედა ზოლზე დაჭერით.';

  @override
  String get tutorialM2SelectTitle => 'მასალის არჩევა';

  @override
  String get tutorialM3IntervalDesc =>
      'დაარეგულირეთ ლოდინის დრო წინადადებებს შორის.';

  @override
  String get tutorialM3IntervalTitle => 'ინტერვალის დაყენება';

  @override
  String get tutorialM3ResetDesc =>
      'პროგრესის და სიზუსტის ქულების გადატვირთვა თავიდან დასაწყებად.';

  @override
  String get tutorialM3ResetTitle => 'ისტორიის გადატვირთვა';

  @override
  String get tutorialM3SelectDesc =>
      'აირჩიეთ მასალა სავარჯიშოდ მასალების ნაკრების ხატულაზე (📚) ზედა ზოლზე დაჭერით.';

  @override
  String get tutorialM3SelectTitle => 'მასალის არჩევა';

  @override
  String get tutorialM3StartDesc =>
      'მოუსმინეთ მშობლიური ენის ხმას და გაიმეორეთ დაკვრის ღილაკზე დაჭერით.';

  @override
  String get tutorialM3StartTitle => 'ვარჯიშის დაწყება';

  @override
  String get tutorialM3WordsDesc =>
      'მონიშნეთ პრაქტიკა მხოლოდ შენახული სიტყვებით.';

  @override
  String get tutorialM3WordsTitle => 'სიტყვების პრაქტიკა';

  @override
  String get tutorialMicDesc =>
      'შეგიძლიათ ხმოვანი შეყვანა მიკროფონის ღილაკზე დაჭერით.';

  @override
  String get tutorialMicTitle => 'ხმოვანი შეყვანა';

  @override
  String get tutorialSaveDesc =>
      'შეინახეთ თარგმნილი შედეგები თქვენს სასწავლო ჩანაწერებში.';

  @override
  String get tutorialSaveTitle => 'შენახვა';

  @override
  String get tutorialSwapDesc => 'ჩემი ენის და სასწავლო ენის შეცვლა.';

  @override
  String get tutorialTabDesc =>
      'აქ შეგიძლიათ აირჩიოთ სასურველი სწავლის რეჟიმი.';

  @override
  String get tutorialTapToContinue => 'გააგრძელეთ ეკრანზე შეხებით';

  @override
  String get tutorialTransDesc => 'თარგმნეთ შეყვანილი ტექსტი.';

  @override
  String get tutorialTransTitle => 'თარგმნა';

  @override
  String get typeExclamation => 'ძახილი';

  @override
  String get typeImperative => 'ბრძანება';

  @override
  String get typeQuestion => 'კითხვა';

  @override
  String get typeStatement => 'განცხადება';

  @override
  String get usageLimitTitle => 'ლიმიტი მიღწეულია';

  @override
  String get useExistingText => 'არსებული ტექსტის გამოყენება';

  @override
  String get viewOnlineGuide => 'ონლაინ სახელმძღვანელოს ნახვა';

  @override
  String get voluntaryTranslations => 'ნებაყოფლობითი თარგმანები';

  @override
  String get watchAdAndRefill => 'რეკლამის ყურება და შევსება (+5-ჯერ)';

  @override
  String get word => 'სიტყვა';

  @override
  String get wordDefenseDesc =>
      'დაიცავით ბაზა სიტყვების თქმით, სანამ მტრები მოვლენ.';

  @override
  String get wordDefenseTitle => 'სიტყვების დაცვა';

  @override
  String get wordModeLabel => 'სიტყვების რეჟიმი';

  @override
  String get yourPronunciation => 'თქვენი გამოთქმა';

  @override
  String get ttsUnsupportedNatively =>
      'ამ მოწყობილობის პარამეტრებში ამ ენის ხმოვანი გამოტანა არ არის მხარდაჭერილი.';

  @override
  String get homeTab => 'მთავარი';

  @override
  String get welcomeTitle => 'კეთილი იყოს თქვენი მობრძანება Talkie-ში!';

  @override
  String get welcomeDesc =>
      'Talkie-ით შეგიძლიათ მყისიერად თარგმნოთ და ისწავლოთ 80 ენაზე შეუზღუდავად.';

  @override
  String get welcomeButton => 'დაწყება';

  @override
  String get labelDetails => 'დეტალური პარამეტრები';

  @override
  String get translationResult => 'თარგმანის შედეგი';

  @override
  String get inputContent => 'შეყვანის შინაარსი';

  @override
  String get translateNow => 'ახლავე თარგმნეთ';

  @override
  String get tooltipSettingsConfirm => 'პარამეტრების დადასტურება';

  @override
  String get hintNoteExample => 'მაგ.: კონტექსტი, ჰომონიმები და ა.შ.';

  @override
  String get hintTagExample => 'მაგ.: ბიზნესი, მოგზაურობა...';

  @override
  String get addNew => 'ახლის დამატება';

  @override
  String get newNotebookTitle => 'ახალი ბლოკნოტის სათაური';

  @override
  String get enterNameHint => 'შეიყვანეთ სახელი';

  @override
  String get add => 'დამატება';

  @override
  String get openSettings => 'პარამეტრების გახსნა';

  @override
  String get helpNotebook => 'აირჩიეთ საქაღალდე თარგმანების შესანახად.';

  @override
  String get helpNote =>
      'თავისუფლად ჩაიწერეთ სიტყვების მნიშვნელობები, მაგალითები ან კონტექსტი.';

  @override
  String get helpTag =>
      'შეიყვანეთ საკვანძო სიტყვები შემდგომი კლასიფიკაციისთვის ან ძიებისთვის.';
}

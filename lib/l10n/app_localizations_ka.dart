// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'გაგრძელება Kakao-თი';

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
  String get helpTitle => 'დახმარება და გზამკვლევი';

  @override
  String get helpTabModes => 'რეჟიმების აღწერა';

  @override
  String get helpTabJson => 'JSON ფორმატი';

  @override
  String get helpTabTour => 'დემო';

  @override
  String get helpMode1Desc => 'თარგმნეთ თქვენი ხმა და მოუსმინეთ შედეგებს.';

  @override
  String get helpMode1Details =>
      '• ენის პარამეტრები: შეცვალეთ ენები ზედა/ქვედა ხატულებზე დაჭერით.\n• სიტყვა/წინადადება: რეჟიმების შეცვლა\n• ხმოვანი შეყვანა: დაიწყეთ/შეაჩერეთ მოსმენა მიკროფონის ხატულაზე დაჭერით.\n• ტექსტის შეყვანა: შეიყვანეთ ტექსტი თარგმნისთვის.\n• ავტომატური ძებნა: მსგავსი არსებული წინადადებების ამოცნობა\n• თარგმნა: დააჭირეთ ღილაკს თარგმნა მყისიერი თარგმანისთვის.\n• მოსმენა: TTS დაკვრა დინამიკის ხატულაზე.\n• შენახვა: ჩანაწერების დამატება „მონაცემების შენახვით“\n• გასუფთავება: შეყვანის ინიციალიზაცია';

  @override
  String get helpMode2Desc =>
      'გაიმეორეთ შენახული წინადადებები და შეამოწმეთ დამახსოვრება ავტომატური დამალვის ფუნქციით.';

  @override
  String get helpMode2Details =>
      '• მასალის არჩევა: აირჩიეთ კონკრეტული კრებული ან „ყველა გამეორება“.\n• ბარათების გადაბრუნება: შეამოწმეთ თარგმანი „ჩვენება/დამალვით“ (ავტომატური სწავლის შემოწმება).\n• მოსმენა: წინადადების TTS დაკვრა\n• სწავლის დასრულება: მონიშნეთ (V) დასრულებულად\n• წაშლა: ხანგრძლივად დააჭირეთ ბარათს ჩანაწერის წასაშლელად.\n• საძიებო პირობები: გაფილტრეთ ტეგებით, უახლესი ელემენტებით ან საწყისი ასოებით';

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
      '• AI ჩატი: ისაუბრეთ ჩემს ენაზე საუბრის სავარჯიშოდ.\n• მრავალი პერსონაჟი: შეცვალეთ მეორე მხარის სქესი/ენა/სახელი მეტყველების ბუშტის ზემოთ მენიუდან.\n• პარტნიორის დამატება: დაამატეთ ახალი თანამოსაუბრე (უცნობი) + ღილაკით.\n• GPS: სიტუაციური თამაშები მიმდინარე მდებარეობაზე დაყრდნობით.\n• ავტომატური შენახვა: საუბრის ავტომატური თარგმნა და შენახვა';

  @override
  String get helpJsonDesc =>
      'მიჰყევით ამ ფორმატს, თუ გსურთ სასწავლო მასალების იმპორტი JSON ფაილში გამოსაყენებლად Mode 3-ში:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'მთელი დიალოგის ნაკრების იმპორტი JSON ფაილიდან.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON სტრუქტურა: გამოიყენეთ `dialogues` მასივი `entries`-ის ნაცვლად\n• ავტომატური აღდგენა: აღდგება დიალოგის სათაური, პერსონა და შეტყობინების თანმიმდევრობა.\n• მდებარეობა: იმპორტირებული დიალოგები გამოჩნდება AI Chat რეჟიმის ჩანართში „ისტორია“.';

  @override
  String get helpTourDesc =>
      '**მონიშნული წრე** გაგიწევთ სახელმძღვანელოს ძირითადი ფუნქციების შესახებ.\n(მაგალითად: შეგიძლიათ წაშალოთ ბარათი **მონიშნულ წრეზე** მითითებულზე ხანგრძლივი დაჭერით.)';

  @override
  String get partnerMode => 'პარტნიორის რეჟიმი';

  @override
  String get manual => 'მექანიკური შეყვანა';

  @override
  String get speaker => 'მომხსენებელი';

  @override
  String get switchToAi => 'AI რეჟიმზე გადართვა';

  @override
  String get switchToPartner => 'პარტნიორის რეჟიმზე გადართვა';

  @override
  String get currentLocation => 'მიმდინარე ადგილმდებარეობა';

  @override
  String get location => 'მდებარეობა';

  @override
  String get partner => 'პარტნიორი';

  @override
  String get me => 'მე';

  @override
  String get currentMaterialLabel => 'ამჟამად არჩეული მასალების ნაკრები:';

  @override
  String get basicMaterialRepository =>
      'ძირითადი წინადადებების/სიტყვების საცავი';

  @override
  String get word => 'სიტყვა';

  @override
  String get sentence => 'წინადადება';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'გამეორება ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'სასწავლო მასალა ($count)';
  }

  @override
  String get mode2Title => 'გამეორება';

  @override
  String get search => 'ძებნა';

  @override
  String get translate => 'თარგმნა';

  @override
  String get listen => 'მოსმენა';

  @override
  String get saveData => 'მონაცემების შენახვა';

  @override
  String get saved => 'შენახულია';

  @override
  String get delete => 'წაშლა';

  @override
  String get materialInfo => 'მასალის ინფორმაცია';

  @override
  String get cancel => 'გაუქმება';

  @override
  String get confirm => 'დადასტურება';

  @override
  String get refresh => 'განახლება';

  @override
  String studyRecords(int count) {
    return 'სწავლის ჩანაწერები ($count)';
  }

  @override
  String get targetLanguageFilter => 'სამიზნე ენის ფილტრი:';

  @override
  String get noRecords => 'არ არის სწავლის ჩანაწერები არჩეული ენისთვის';

  @override
  String get saveTranslationsFromSearch =>
      'სცადეთ თარგმანების შენახვა ძიების რეჟიმში';

  @override
  String get flip => 'ჩვენება';

  @override
  String get hide => 'დამალვა';

  @override
  String get deleteRecord => 'ჩანაწერის წაშლა';

  @override
  String get confirmDelete => 'გსურთ ამ სწავლის ჩანაწერის წაშლა?';

  @override
  String get recordDeleted => 'ჩანაწერი წაშლილია';

  @override
  String deleteFailed(String error) {
    return 'წაშლა ვერ მოხერხდა: $error';
  }

  @override
  String get importJsonFile => 'JSON ფაილის იმპორტი';

  @override
  String get importing => 'მიმდინარეობს იმპორტი...';

  @override
  String get importComplete => 'იმპორტი დასრულებულია';

  @override
  String get importFailed => 'იმპორტი ვერ მოხერხდა';

  @override
  String importFile(String fileName) {
    return 'ფაილი: $fileName';
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
    return 'სულ: $count';
  }

  @override
  String importAdded(int count) {
    return 'დამატებულია: $count';
  }

  @override
  String importSkipped(int count) {
    return 'გამოტოვებულია: $count';
  }

  @override
  String get errors => 'შეცდომები:';

  @override
  String get error => 'შეცდომა';

  @override
  String importErrorMessage(String error) {
    return 'ფაილის იმპორტი ვერ მოხერხდა:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get selectStudyMaterial => 'სასწავლო მასალის არჩევა';

  @override
  String get subject => 'სათაური:';

  @override
  String get source => 'წყარო:';

  @override
  String get file => 'ფაილი:';

  @override
  String progress(int current, int total) {
    return 'პროგრესი: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'გთხოვთ, შემოიტანოთ JSON ფაილი';

  @override
  String get selectMaterialPrompt => 'აირჩიეთ სასწავლო მასალა';

  @override
  String get studyComplete => 'სწავლა დასრულებულია';

  @override
  String get markAsStudied => 'მონიშვნა, როგორც შესწავლილი';

  @override
  String get listening => 'მიმდინარეობს მოსმენა...';

  @override
  String get recognized => 'ამოცნობა დასრულებულია';

  @override
  String recognitionFailed(String error) {
    return 'ხმის ამოცნობა ვერ მოხერხდა: $error';
  }

  @override
  String get checking => 'მიმდინარეობს შემოწმება...';

  @override
  String get translating => 'მიმდინარეობს თარგმნა...';

  @override
  String get translationComplete => 'თარგმანი დასრულებულია (საჭიროა შენახვა)';

  @override
  String get translationLoaded => 'შენახული თარგმანი ჩატვირთულია';

  @override
  String translationFailed(String error) {
    return 'თარგმანი ვერ მოხერხდა: $error';
  }

  @override
  String get enterTextToTranslate => 'შეიყვანეთ ტექსტი თარგმნისთვის';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => 'მიმდინარეობს შენახვა...';

  @override
  String get noTranslationToSave => 'შესანახი თარგმანი არ არის';

  @override
  String saveFailed(String error) {
    return 'შენახვა ვერ მოხერხდა: $error';
  }

  @override
  String get playing => 'მიმდინარეობს დაკვრა...';

  @override
  String get noTextToPlay => 'დასაკრავი ტექსტი არ არის';

  @override
  String playbackFailed(String error) {
    return 'დაკვრა ვერ მოხერხდა: $error';
  }

  @override
  String get sourceLanguage => 'წყარო ენა';

  @override
  String get targetLanguage => 'სამიზნე ენა';

  @override
  String get similarTextFound => 'მსგავსი ტექსტი ნაპოვნია';

  @override
  String get useExistingText => 'არსებული ტექსტის გამოყენება';

  @override
  String get createNew => 'გაგრძელება ახალი წინადადებით';

  @override
  String reviewCount(int count) {
    return 'გამეორება $count ჯერ';
  }

  @override
  String get tabSpeaking => 'საუბარი';

  @override
  String get speakingPractice => 'საუბრის პრაქტიკა';

  @override
  String intervalSeconds(int seconds) {
    return 'ინტერვალი: $seconds წმ';
  }

  @override
  String get yourPronunciation => 'თქვენი გამოთქმა';

  @override
  String get correctAnswer => 'სწორი პასუხი';

  @override
  String score(String score) {
    return 'სიზუსტე: $score%';
  }

  @override
  String get perfect => 'შესანიშნავია!';

  @override
  String get good => 'კარგია';

  @override
  String get tryAgain => 'სცადეთ ხელახლა';

  @override
  String get startPractice => 'ვარჯიშის დაწყება';

  @override
  String get stopPractice => 'ვარჯიშის შეწყვეტა';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'სახელმძღვანელოს დაწყება';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'ხმოვანი შეყვანა';

  @override
  String get tutorialMicDesc =>
      'შეგიძლიათ ხმოვანი შეყვანა მიკროფონის ღილაკზე დაჭერით.';

  @override
  String get tutorialTabDesc =>
      'აქ შეგიძლიათ აირჩიოთ სასურველი სწავლის რეჟიმი.';

  @override
  String get tutorialTapToContinue => 'გააგრძელეთ ეკრანზე შეხებით';

  @override
  String get tutorialTransTitle => 'თარგმნა';

  @override
  String get tutorialTransDesc => 'თარგმნეთ შეყვანილი ტექსტი.';

  @override
  String get tutorialSaveTitle => 'შენახვა';

  @override
  String get tutorialSaveDesc =>
      'შეინახეთ თარგმნილი შედეგები თქვენს სასწავლო ჩანაწერებში.';

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
  String get tutorialAiChatTitle => 'AI ჩეთი';

  @override
  String get tutorialAiChatDesc =>
      'ივარჯიშეთ რეალურ საუბრებში AI პერსონაჟებთან ერთად.';

  @override
  String get tutorialM2SelectTitle => 'მასალის არჩევა';

  @override
  String get tutorialM2SelectDesc =>
      'აირჩიეთ მასალა შესასწავლად მასალების ნაკრების ხატულაზე (📚) ზედა ზოლზე დაჭერით.';

  @override
  String get tutorialM2ListTitle => 'სწავლის სია';

  @override
  String get tutorialM2ListDesc =>
      'ამ ბარათზე ხანგრძლივი დაჭერით (Long Click) შეგიძლიათ წაშალოთ იგი. შეამოწმეთ შენახული წინადადებები და გადააბრუნეთ ისინი.';

  @override
  String get tutorialM3SelectTitle => 'მასალის არჩევა';

  @override
  String get tutorialM3SelectDesc =>
      'აირჩიეთ მასალა სავარჯიშოდ მასალების ნაკრების ხატულაზე (📚) ზედა ზოლზე დაჭერით.';

  @override
  String get tutorialM3IntervalTitle => 'ინტერვალის დაყენება';

  @override
  String get tutorialM3IntervalDesc =>
      'დაარეგულირეთ ლოდინის დრო წინადადებებს შორის.';

  @override
  String get tutorialM3StartTitle => 'ვარჯიშის დაწყება';

  @override
  String get tutorialM3StartDesc =>
      'მოუსმინეთ მშობლიური ენის ხმას და გაიმეორეთ დაკვრის ღილაკზე დაჭერით.';

  @override
  String get startWarning => 'გაფრთხილება';

  @override
  String get noVoiceDetected => 'ხმა არ არის აღმოჩენილი';

  @override
  String get tooltipSearch => 'ძებნა';

  @override
  String get tooltipStudyReview => 'სწავლა+გამეორება';

  @override
  String get tooltipSpeaking => 'საუბარი';

  @override
  String get tooltipDecrease => 'შემცირება';

  @override
  String get tooltipIncrease => 'გაზრდა';

  @override
  String get languageSettings => 'ენის პარამეტრები';

  @override
  String get tutorialM2DropdownDesc =>
      'ზედა მენიუს საშუალებით შეგიძლიათ აირჩიოთ სასწავლო მასალა.';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc =>
      'ჩამოტვირთეთ JSON ფაილი თქვენი მოწყობილობის საქაღალდიდან.';

  @override
  String get tutorialLangSettingsTitle => 'ენის პარამეტრები';

  @override
  String get tutorialLangSettingsDesc =>
      'დააყენეთ წყარო ენა და სამიზნე ენა თარგმნისთვის.';

  @override
  String get copy => 'კოპირება';

  @override
  String get copiedToClipboard => 'დაკოპირებულია ბუფერში!';

  @override
  String get tutorialContextTitle => 'კონტექსტური ტეგი';

  @override
  String get tutorialContextDesc =>
      'ერთი და იგივე წინადადებაც კი შეიძლება ცალკე შენახული იყოს სიტუაციის მითითებით (მაგ. დილა, საღამო).';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get thinkingTimeDesc => 'დრო, რომ იფიქროთ პასუხის გამოვლენამდე.';

  @override
  String get autoPlay => 'ავტომატური დაკვრა';

  @override
  String get timeUp => 'დრო ამოიწურა!';

  @override
  String get gameModeTitle => 'თამაშის რეჟიმი';

  @override
  String get gameModeDesc => 'აირჩიეთ თამაშის რეჟიმი ვარჯიშისთვის';

  @override
  String get wordDefenseTitle => 'სიტყვების დაცვა';

  @override
  String get wordDefenseDesc =>
      'დაიცავით ბაზა სიტყვების თქმით, სანამ მტრები მოვლენ.';

  @override
  String get dialogueQuestTitle => 'დიალოგის ქვესტი';

  @override
  String get dialogueQuestDesc =>
      'ივარჯიშეთ დიალოგში სიტუაციური თამაშის საშუალებით. აირჩიეთ და თქვით შესაბამისი პასუხები.';

  @override
  String get translation => 'Translation';

  @override
  String get labelType => 'ტიპი:';

  @override
  String get labelWord => 'სიტყვა';

  @override
  String get labelSentence => 'წინადადება';

  @override
  String get contextTagLabel =>
      'კონტექსტი (სურვილისამებრ) - მაგ: დილის მისალმება, თავაზიანი';

  @override
  String get contextTagHint =>
      'ჩაწერეთ სიტუაცია, რომ მოგვიანებით გაადვილოთ განსხვავება';

  @override
  String get usageLimitTitle => 'ლიმიტი მიღწეულია';

  @override
  String get translationLimitExceeded => 'თარგმანის ლიმიტი გადაჭარბებულია';

  @override
  String get translationLimitMessage =>
      'თქვენ ამოწურეთ თქვენი უფასო ყოველდღიური თარგმანები (5-ჯერ).\\n\\nგსურთ ნახოთ რეკლამა 5-ჯერ მყისიერად შესავსებად?';

  @override
  String get watchAdAndRefill => 'რეკლამის ყურება და შევსება (+5-ჯერ)';

  @override
  String get translationRefilled => 'თქვენი თარგმანის რაოდენობა შეივსო 5-ჯერ!';

  @override
  String get adLoading =>
      'მიმდინარეობს რეკლამის ჩატვირთვა. გთხოვთ, სცადოთ მოგვიანებით.';

  @override
  String get reviewAll => 'ყველა გამეორება';

  @override
  String totalRecords(int count) {
    return 'სულ $count ჩანაწერი (ყველას ნახვა)';
  }

  @override
  String get filterAll => 'ყველა';

  @override
  String get practiceWordsOnly => 'ივარჯიშეთ მხოლოდ სიტყვები';

  @override
  String get resetPracticeHistory => 'სავარჯიშო ისტორიის გადატვირთვა';

  @override
  String get retry => 'ხელახლა სცადოთ?';

  @override
  String get noStudyMaterial => 'სასწავლო მასალა არ არის.';

  @override
  String get gameOver => 'თამაში დასრულდა';

  @override
  String get playAgain => 'ხელახლა თამაში';

  @override
  String get speakNow => 'ილაპარაკე ახლა!';

  @override
  String get scoreLabel => 'ქულა';

  @override
  String get viewOnlineGuide => 'ონლაინ სახელმძღვანელოს ნახვა';

  @override
  String get getMaterials => 'მასალების მიღება';

  @override
  String get swapLanguages => 'ენების შეცვლა';

  @override
  String get next => 'შემდეგი';

  @override
  String get wordModeLabel => 'სიტყვების რეჟიმი';

  @override
  String get accuracy => 'სიზუსტე';

  @override
  String get basicDefault => 'ძირითადი';

  @override
  String get basic => 'ძირითადი';

  @override
  String get tutorialM3WordsTitle => 'სიტყვების პრაქტიკა';

  @override
  String get tutorialM3WordsDesc =>
      'მონიშნეთ პრაქტიკა მხოლოდ შენახული სიტყვებით.';

  @override
  String get enterTextHint => 'შეიყვანეთ ტექსტი თარგმნისთვის';

  @override
  String get micButtonTooltip => 'ხმის ამოცნობის დაწყება';

  @override
  String get menuHelp => 'დახმარება';

  @override
  String get menuWebDownload => 'საწყისი გვერდი';

  @override
  String get menuDeviceImport => 'მასალების შემოტანა მოწყობილობიდან';

  @override
  String get menuSettings => 'ენის პარამეტრები';

  @override
  String get basicWords => 'სიტყვების ძირითადი საცავი';

  @override
  String get basicSentences => 'წინადადებების ძირითადი საცავი';

  @override
  String get selectMaterialSet => 'სასწავლო მასალების ნაკრების არჩევა';

  @override
  String get sectionWords => 'სიტყვები';

  @override
  String get sectionSentences => 'წინადადებები';

  @override
  String get languageSettingsTitle => 'ენის პარამეტრები';

  @override
  String get sourceLanguageLabel => 'ჩემი ენა (წყარო)';

  @override
  String get targetLanguageLabel => 'სასწავლო ენა (სამიზნე)';

  @override
  String get mode3Start => 'დაწყება';

  @override
  String get mode3Stop => 'შეჩერება';

  @override
  String get mode3Next => 'შემდეგი';

  @override
  String get mode3TryAgain => 'ხელახლა ცდა';

  @override
  String get tutorialM3ResetTitle => 'ისტორიის გადატვირთვა';

  @override
  String get tutorialSwapDesc => 'ჩემი ენის და სასწავლო ენის შეცვლა.';

  @override
  String get recognizedText => 'ამოცნობილი ტექსტი:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'პროგრესის და სიზუსტის ქულების გადატვირთვა თავიდან დასაწყებად.';

  @override
  String get menuSelectMaterialSet => 'სასწავლო მასალების ნაკრების არჩევა';

  @override
  String get sectionWord => 'სიტყვების განყოფილება';

  @override
  String get sectionSentence => 'წინადადებების განყოფილება';

  @override
  String get tabWord => 'სიტყვა';

  @override
  String get tabSentence => 'წინადადება';

  @override
  String get errorProfanity =>
      'შეიცავს უცენზურო სიტყვებს, ამიტომ მისი თარგმნა შეუძლებელია.';

  @override
  String get errorHateSpeech =>
      'შეიცავს სიძულვილის ენას, ამიტომ მისი თარგმნა შეუძლებელია.';

  @override
  String get errorSexualContent =>
      'შეიცავს სექსუალურ კონტენტს, ამიტომ მისი თარგმნა შეუძლებელია.';

  @override
  String get errorOtherSafety => 'AI-ს უსაფრთხოების პოლიტიკამ უარყო თარგმანი.';

  @override
  String get clearAll => 'ყველას გასუფთავება';

  @override
  String get disambiguationTitle => 'მნიშვნელობის არჩევა';

  @override
  String get disambiguationPrompt => 'რომელი მნიშვნელობით გსურთ თარგმნა?';

  @override
  String get skip => 'გამოტოვება';

  @override
  String get inputModeTitle => 'შეყვანა';

  @override
  String get reviewModeTitle => 'გამეორება';

  @override
  String get practiceModeTitle => 'ვარჯიში';

  @override
  String get chatHistoryTitle => 'საუბრის ისტორია';

  @override
  String get chatNew => 'ახალი საუბარი';

  @override
  String get chatNewChat => 'ახალი საუბარი';

  @override
  String get chatChoosePersona => 'პერსონას არჩევა';

  @override
  String get chatTypeHint => 'დაწერეთ შეტყობინება...';

  @override
  String chatFailed(Object error) {
    return 'ჩატი ვერ მოხერხდა: $error';
  }

  @override
  String get chatNoConversations => 'ჯერ საუბრები არ არის';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt => 'სცადეთ ახალი საუბრის დაწყება სავარჯიშოდ!';

  @override
  String chatFromConversation(Object speaker) {
    return 'საუბრის ამონარიდი ($speaker)';
  }

  @override
  String get personaTeacher => 'ინგლისურის მასწავლებელი';

  @override
  String get personaGuide => 'ტურის გიდი';

  @override
  String get personaFriend => 'ადგილობრივი მეგობარი';

  @override
  String get chatUntitled => 'უსათაურო საუბარი';

  @override
  String get chatAiChat => 'ჩეთი';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'ამჟამად არჩეული მასალების ნაკრები: $name';
  }

  @override
  String get basicWordRepository => 'სიტყვების ძირითადი საცავი';

  @override
  String get basicSentenceRepository => 'წინადადებების ძირითადი საცავი';

  @override
  String get chatEndTitle => 'საუბრის დასრულება და შენახვა';

  @override
  String get chatEndMessage => 'გსურთ საუბრის დასრულება?';

  @override
  String get chatSaveAndExit => 'შენახვა და გამოსვლა';

  @override
  String get errorSelectCategory => 'ჯერ აირჩიეთ სიტყვა ან წინადადება!';

  @override
  String get tutorialM1ToggleTitle => 'სიტყვა/წინადადების რეჟიმი';

  @override
  String get tutorialM1ToggleDesc =>
      'გადართეთ სიტყვების და წინადადებების რეჟიმებს შორის აქ.';

  @override
  String get metadataDialogTitle => 'დეტალური კლასიფიკაცია';

  @override
  String get tagFormal => 'თავაზიანი';

  @override
  String get selectPOS => 'მეტყველების ნაწილის არჩევა';

  @override
  String get selectSentenceType => 'წინადადების ტიპის არჩევა';

  @override
  String get metadataRootWord => 'ძირითადი სიტყვა (Root Word)';

  @override
  String get posNoun => 'არსებითი სახელი';

  @override
  String get posVerb => 'ზმნა';

  @override
  String get posAdjective => 'ზედსართავი სახელი';

  @override
  String get posAdverb => 'ზმნიზედა';

  @override
  String get posPronoun => 'ნაცვალსახელი';

  @override
  String get posPreposition => 'წინდებული/ნაწილაკი';

  @override
  String get posConjunction => 'კავშირი';

  @override
  String get posInterjection => 'შორისდებული';

  @override
  String get typeStatement => 'განცხადება';

  @override
  String get typeQuestion => 'კითხვა';

  @override
  String get typeExclamation => 'ძახილი';

  @override
  String get typeImperative => 'ბრძანება';

  @override
  String get labelNote => 'შენიშვნა';

  @override
  String get labelShowMemorized => 'დასრულებული';

  @override
  String get titleTagSelection => 'სათაურის ტეგი (კრებული)';

  @override
  String get generalTags => 'ზოგადი ტეგები';

  @override
  String get tagSelection => 'ტეგების არჩევა';

  @override
  String get metadataFormType => 'გრამატიკული ფორმა';

  @override
  String get formInfinitive => 'ინფინიტივი/აწმყო დრო';

  @override
  String get formPast => 'წარსული დრო';

  @override
  String get formPastParticiple => 'წარსული ნაწილაკი';

  @override
  String get formPresentParticiple => 'აწმყო ნაწილაკი (ing)';

  @override
  String get formPresent => 'აწმყო დრო';

  @override
  String get formThirdPersonSingular => 'მესამე პირის მხოლობითი';

  @override
  String get formPlural => 'მრავლობითი';

  @override
  String get formSingular => 'მხოლობითი';

  @override
  String get caseSubject => 'სახელობითი ბრუნვა';

  @override
  String get caseObject => 'ბრალდებითი ბრუნვა';

  @override
  String get casePossessive => 'ნათესაობითი ბრუნვა';

  @override
  String get casePossessivePronoun => 'მიმთითებელი ნაცვალსახელი';

  @override
  String get caseReflexive => 'რეფლექსური';

  @override
  String get formPositive => 'დადებითი ფორმა';

  @override
  String get formComparative => 'შედარებითი ფორმა';

  @override
  String get formSuperlative => 'უპირატესი ფორმა';

  @override
  String get searchConditions => 'საძიებო პირობები';

  @override
  String recentNItems(int count) {
    return 'ბოლო $count ელემენტის ჩვენება';
  }

  @override
  String get startsWith => 'იწყება ასოთი';

  @override
  String get reset => 'გადატვირთვა';

  @override
  String get participantRename => 'მონაწილის სახელის შეცვლა';

  @override
  String get labelName => 'სახელი';

  @override
  String get gender => 'სქესი';

  @override
  String get language => 'ენა';

  @override
  String get male => 'მამრობითი';

  @override
  String get female => 'მდედრობითი';

  @override
  String get neutral => 'ნეიტრალური';

  @override
  String get chatAllConversations => 'ყველა საუბარი';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'გსურთ ამ საუბრის წაშლა?\nწაშლილი საუბრის აღდგენა შეუძლებელია.';

  @override
  String get notSelected => '- არ არის არჩეული -';

  @override
  String get myWordbook => 'ჩემი სიტყვების წიგნი';

  @override
  String get mySentenceCollection => 'ჩემი წინადადებების კრებული';

  @override
  String get newSubjectName =>
      'ახალი თემატური ლექსიკონის/ფრაზების კრებულის სათაური';

  @override
  String get enterNewSubjectName => 'ახალი სათაურის შეყვანა';

  @override
  String get addNewSubject => 'ახალი სათაურის დამატება';

  @override
  String get selectExistingSubject => 'არსებული სათაურის არჩევა';

  @override
  String get addTagHint => 'ტეგის დამატება...';

  @override
  String get save => 'შენახვა';

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
      'გთხოვთ, გადაამოწმოთ ელფოსტა ავტორიზაციის დასასრულებლად.';

  @override
  String get emailAlreadyInUse =>
      'ეს ელფოსტა უკვე რეგისტრირებულია. გთხოვთ, შეხვიდეთ სისტემაში ან გამოიყენოთ პაროლის აღდგენა.';
}

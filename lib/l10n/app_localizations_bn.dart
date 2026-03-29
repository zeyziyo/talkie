// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get basicWords => 'বেসিক শব্দ ভাণ্ডার';

  @override
  String get inputLanguage => 'ইনপুট ভাষা';

  @override
  String get translationLanguage => 'অনুবাদ ভাষা';

  @override
  String get simplifiedGuidance =>
      'দৈনন্দিন কথোপকথনগুলিকে তাৎক্ষণিকভাবে একটি বিদেশী ভাষায় রূপান্তর করুন! Talkie আপনার ভাষার জীবনকে রেকর্ড করে।';

  @override
  String get noDataForLanguage =>
      'নির্বাচিত ভাষার জন্য কোনো শিক্ষণীয় উপকরণ লোকাল ডেটাবেসে নেই। অনুগ্রহ করে ডেটা ডাউনলোড করুন অথবা অন্য কোনো ভাষা নির্বাচন করুন।';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'বাতিল';

  @override
  String get accuracy => 'সঠিকতা';

  @override
  String get ttsMissing =>
      'এই ভাষার ভয়েস ইঞ্জিন আপনার ডিভাইসে ইনস্টল করা নেই।';

  @override
  String get ttsInstallGuide =>
      'Android সেটিংস > Google TTS থেকে এই ভাষার ডেটা ইনস্টল করুন।';

  @override
  String get adLoading => 'বিজ্ঞাপন লোড হচ্ছে। কিছুক্ষণ পর আবার চেষ্টা করুন।';

  @override
  String get addNewSubject => 'নতুন শিরোনাম যোগ করুন';

  @override
  String get addParticipant => 'অংশগ্রহণকারী যোগ করুন';

  @override
  String get addTagHint => 'ট্যাগ যোগ করুন...';

  @override
  String get alreadyHaveAccount => 'ইতিমধ্যে অ্যাকাউন্ট আছে?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'অটো প্লে';

  @override
  String get basic => 'বেসিক';

  @override
  String get basicDefault => 'বেসিক';

  @override
  String get basicMaterialRepository => 'বেসিক বাক্য/শব্দ ভাণ্ডার';

  @override
  String get basicSentenceRepository => 'মৌলিক বাক্য ভান্ডার';

  @override
  String get basicSentences => 'বেসিক বাক্য ভাণ্ডার';

  @override
  String get basicWordRepository => 'মৌলিক শব্দ ভান্ডার';

  @override
  String get caseObject => 'কর্মকারক';

  @override
  String get casePossessive => 'সম্বন্ধ পদ';

  @override
  String get casePossessivePronoun => 'সম্বন্ধবাচক সর্বনাম';

  @override
  String get caseReflexive => 'রিফ্লেক্সিভ';

  @override
  String get caseSubject => 'কর্তৃকারক';

  @override
  String get chatAiChat => 'চ্যাট';

  @override
  String get chatAllConversations => 'সকল কথোপকথন';

  @override
  String get chatChoosePersona => 'ব্যক্তিত্ব নির্বাচন করুন';

  @override
  String get chatEndMessage => 'আপনি কি কথোপকথন শেষ করতে চান?';

  @override
  String get chatEndTitle => 'কথোপকথন শেষ এবং সংরক্ষণ করুন';

  @override
  String chatFailed(Object error) {
    return 'চ্যাট ব্যর্থ হয়েছে: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'কথোপকথন থেকে উদ্ধৃত ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'কথোপকথনের ইতিহাস';

  @override
  String get chatNew => 'নতুন কথোপকথন';

  @override
  String get chatNewChat => 'নতুন কথোপকথন';

  @override
  String get chatNoConversations => 'এখনও কোনও কথোপকথন নেই';

  @override
  String get chatSearchHint => 'কথোপকথনের শিরোনাম দিয়ে খুঁজুন...';

  @override
  String get chatNoteSearchHint => 'মন্তব্য দিয়ে খুঁজুন...';

  @override
  String get chatSaveAndExit => 'সংরক্ষণ করে শেষ করুন';

  @override
  String get chatStartNewPrompt =>
      'অনুশীলনের জন্য একটি নতুন কথোপকথন শুরু করুন!';

  @override
  String get chatTypeHint => 'এখানে একটি বার্তা লিখুন...';

  @override
  String get chatUntitled => 'শিরোনামহীন কথোপকথন';

  @override
  String get checking => 'যাচাই করা হচ্ছে...';

  @override
  String get clearAll => '모두 지우기';

  @override
  String get confirm => 'ঠিক আছে';

  @override
  String get confirmDelete => 'আপনি কি নিশ্চিত যে আপনি এই রেকর্ডটি মুছতে চান?';

  @override
  String get confirmDeleteConversation =>
      'আপনি কি এই কথোপকথনটি মুছে ফেলতে চান?\nমোছা কথোপকথন পুনরুদ্ধার করা যাবে না।';

  @override
  String get confirmDeleteParticipant =>
      'আপনি কি এই অংশগ্রহণকারীকে মুছে ফেলতে চান?';

  @override
  String get contextTagHint => 'পরে সহজে সনাক্তকরণের জন্য পরিস্থিতি লিখুন';

  @override
  String get contextTagLabel =>
      'প্রসঙ্গ/পরিস্থিতি (ঐচ্ছিক) - যেমন: শুভ সকাল, সম্মানসূচক';

  @override
  String get copiedToClipboard => 'ক্লিপবোর্ডে কপি করা হয়েছে!';

  @override
  String get copy => 'কপি';

  @override
  String get correctAnswer => 'সঠিক উত্তর';

  @override
  String get createNew => 'নতুন তৈরি করুন';

  @override
  String get currentLocation => 'বর্তমান অবস্থান';

  @override
  String get currentMaterialLabel => 'বর্তমানে নির্বাচিত উপকরণ:';

  @override
  String get delete => 'মুছুন';

  @override
  String deleteFailed(String error) {
    return 'মুছতে ব্যর্থ: $error';
  }

  @override
  String get deleteRecord => 'রেকর্ড মুছুন';

  @override
  String get dialogueQuestDesc =>
      'পরিস্থিতি অনুযায়ী সংলাপের মাধ্যমে কথোপকথনের অনুশীলন করুন। উপযুক্ত উত্তর নির্বাচন করুন এবং বলুন।';

  @override
  String get dialogueQuestTitle => 'সংলাপ কোয়েস্ট';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get dontHaveAccount => 'অ্যাকাউন্ট নেই?';

  @override
  String get editParticipant => 'অংশগ্রহণকারী সম্পাদনা করুন';

  @override
  String get email => 'ইমেইল';

  @override
  String get emailAlreadyInUse =>
      'এই ইমেলটি ইতিমধ্যে ব্যবহার করা হয়েছে। লগইন করুন অথবা পাসওয়ার্ড রিসেট করার চেষ্টা করুন।';

  @override
  String get enterNewSubjectName => 'নতুন শিরোনাম লিখুন';

  @override
  String get enterSentenceHint => 'একটি বাক্য লিখুন...';

  @override
  String get enterTextHint => 'অনুবাদ করার জন্য পাঠ্য প্রবেশ করুন';

  @override
  String get enterTextToTranslate => 'অনুবাদের জন্য পাঠ্য লিখুন';

  @override
  String get enterWordHint => 'একটি শব্দ লিখুন...';

  @override
  String get error => 'ত্রুটি';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorSelectCategory => 'প্রথমে একটি শব্দ বা বাক্য নির্বাচন করুন!';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errors => 'ত্রুটি:';

  @override
  String get female => 'মহিলা';

  @override
  String get file => 'ফাইল:';

  @override
  String get filterAll => 'সব';

  @override
  String get flip => 'উল্টান';

  @override
  String get formComparative => 'তুলনামূলক';

  @override
  String get formInfinitive => 'বেস/বর্তমান রূপ';

  @override
  String get formPast => 'অতীত রূপ';

  @override
  String get formPastParticiple => 'পাস্ট পার্টিসিপল';

  @override
  String get formPlural => 'বহুবচন';

  @override
  String get formPositive => 'পজিটিভ';

  @override
  String get formPresent => 'বর্তমান কাল';

  @override
  String get formPresentParticiple => 'বর্তমান কৃদন্ত (ing)';

  @override
  String get formSingular => 'একবচন';

  @override
  String get formSuperlative => 'সুপারলেটিভ';

  @override
  String get formThirdPersonSingular => 'তৃতীয় ব্যক্তি একবচন';

  @override
  String get gameModeDesc => 'অনুশীলনের জন্য গেম মোড নির্বাচন করুন';

  @override
  String get gameModeTitle => 'গেম মোড';

  @override
  String get gameOver => 'Game Over';

  @override
  String get gender => 'লিঙ্গ';

  @override
  String get labelFilterMaterial => 'উপকরণ';

  @override
  String get labelFilterTag => 'ট্যাগ';

  @override
  String get generalTags => 'সাধারণ ট্যাগ';

  @override
  String get getMaterials => 'উপকরণ পান';

  @override
  String get good => 'ভালো';

  @override
  String get googleContinue => 'Google এর মাধ্যমে চালিয়ে যান';

  @override
  String get helpDialogueImportDesc =>
      'JSON ফাইল থেকে সম্পূর্ণ সংলাপ সেট আমদানি করুন।';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'মোড ৩-এ আমদানির জন্য, JSON তৈরি করুন:';

  @override
  String get helpJsonTypeDialogue => 'সংলাপ (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'বাক্য (Sentence)';

  @override
  String get helpJsonTypeWord => 'শব্দ (Word)';

  @override
  String get helpMode1Desc =>
      'প্রিমিয়াম 3D মাইক্রোফোন এবং বড় কীবোর্ড আইকনের মাধ্যমে সবচেয়ে সহজ উপায়ে ভাষা শেখা শুরু করুন।';

  @override
  String get helpMode1Details =>
      '• ভাষার সেটিংস: হোম স্ক্রিনের উপরে ভাষা বোতাম দিয়ে আমার ভাষা এবং শেখার ভাষা যাচাই করুন এবং শেখার ভাষা পরিবর্তন করতে পারেন।\n• সরল প্রবেশ: মাঝের বড় মাইক্রোফোন এবং টেক্সট উইন্ডোর মাধ্যমে তাৎক্ষণিকভাবে প্রবেশ করুন।\n• সেটিংস যাচাই: প্রবেশ শেষ করার পরে ডানদিকের নীল চেকবক্স বোতামটি চাপুন। বিস্তারিত সেটিংস উইন্ডো প্রদর্শিত হবে।\n• বিস্তারিত সেটিংস: প্রদর্শিত ডায়ালগ থেকে সংরক্ষণ করার মতো ডেটা, টীকা (মেমো), ট্যাগ নির্ধারণ করতে পারেন।\n• এখন অনুবাদ করুন: সেটিংস শেষ করার পরে সবুজ অনুবাদ বোতামটি চাপলে কৃত্রিম বুদ্ধিমত্তা তাৎক্ষণিকভাবে অনুবাদ করবে।\n• স্বয়ংক্রিয় অনুসন্ধান: প্রবেশ করার সময় অনুরূপ পূর্ববর্তী অনুবাদ রিয়েল-টাইমে খুঁজে বের করে দেখায়।\n• শুনুন এবং সংরক্ষণ করুন: অনুবাদের ফলাফলের নিচে স্পিকার আইকনের মাধ্যমে উচ্চারণ শুনুন, এবং \'ডেটা সংরক্ষণ করুন\' এর মাধ্যমে শেখার তালিকায় যুক্ত করুন।';

  @override
  String get helpMode2Desc => 'লুকানো অনুবাদ সহ সংরক্ষিত বাক্য রিভিউ করুন।';

  @override
  String get helpMode2Details =>
      '• রিসোর্স নির্বাচন: উপরের ডানদিকের মেনু(⋮) থেকে \'শিক্ষণ রিসোর্স নির্বাচন করুন\' অথবা \'অনলাইন রিসোর্স লাইব্রেরি\' ব্যবহার করুন\n• কার্ড ফ্লিপ: \'দেখানো/ লুকানো\' দিয়ে অনুবাদ দেখুন\n• শোনা: স্পিকার আইকনে উচ্চারণ শুনুন\n• শেখা সম্পন্ন: চেকমার্ক (V) দিয়ে শেখা সম্পন্ন করুন\n• মুছুন: কার্ডটি লম্বা সময় ধরে চেপে ধরে (Long Click) রেকর্ড মুছুন\n• অনুসন্ধান এবং ফিল্টার: অনুসন্ধান বার (রিয়েল-টাইম স্মার্ট সার্চ) এবং ট্যাগ, শুরুর অক্ষর ফিল্টার সমর্থন করে';

  @override
  String get helpMode3Desc =>
      'একটি বাক্য শুনে বলার (শ্যাডোয়িং) মাধ্যমে উচ্চারণ অনুশীলন করুন।';

  @override
  String get helpMode3Details =>
      '• নির্বাচন: প্যাকেজ বেছে নিন\n• বিরতি: [-] [+] অপেক্ষার সময় (৩সে-৬০সে)\n• শুরু/বন্ধ: সেশন নিয়ন্ত্রণ করুন\n• বলুন: অডিও শুনুন এবং পুনরাবৃত্তি করুন\n• স্কোর: নির্ভুলতা (০-১০০)\n• পুনরাবৃত্তি: ভয়েস শনাক্ত না হলে বোতাম';

  @override
  String get helpModeChatDesc =>
      'AI ব্যক্তিত্বের সাথে কথোপকথনের মাধ্যমে বাস্তব কথোপকথন অনুশীলন করুন।';

  @override
  String get helpModeChatDetails =>
      '• এআই চ্যাট: নীচের ট্যাব বারে \'চ্যাট\' মেনু থেকে ব্যক্তিত্বের সাথে বাস্তব কথোপকথনের অনুশীলন করুন\n• ব্যক্তিত্ব সেটিংস: প্রতিপক্ষের লিঙ্গ, নাম এবং ভাষা কোড অবাধে নির্দিষ্ট করুন\n• জিপিএস পরিস্থিতি: বর্তমান অবস্থান সনাক্ত করে জায়গার জন্য উপযুক্ত কথোপকথনের বিষয় সুপারিশ করে\n• ২টি ভাষা: AI এর উত্তর অনুবাদ সহ প্রদর্শিত হয়, শেখার প্রভাব সর্বাধিক করে\n• রেকর্ড ব্যবস্থাপনা: অতীতের কথোপকথন ফিল্টার করা এবং কথোপকথনের সময় নির্দিষ্ট বার্তা শিক্ষার উপাদান হিসাবে সংরক্ষণ করা';

  @override
  String get helpTabJson => 'JSON ফরম্যাট';

  @override
  String get helpTabModes => 'মোড';

  @override
  String get helpTabQuickStart => 'দ্রুত শুরু';

  @override
  String get helpTabTour => 'ট্যুর';

  @override
  String get helpTitle => 'সাহায্য ও নির্দেশিকা';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'লুকান';

  @override
  String importAdded(int count) {
    return 'যোগ করা হয়েছে: $count';
  }

  @override
  String get importComplete => 'আমদানী সম্পন্ন';

  @override
  String get importDuplicateTitleError =>
      'একই নামের উপাদান ইতিমধ্যে বিদ্যমান। শিরোনাম পরিবর্তন করে আবার চেষ্টা করুন।';

  @override
  String get importSourceTitle => '가져오기 원본 선택';

  @override
  String get importSourceFile => '단일 JSON 파일';

  @override
  String get importSourceFolder => '폴더 (언어별 라이브러리 구조)';

  @override
  String get importSourceZip => 'ZIP 파일 (압축된 폴더)';

  @override
  String importFolderSuccess(num files, num entries) {
    return '$files개 파일, $entries개 항목을 가져왔습니다.';
  }

  @override
  String importErrorMessage(String error) {
    return 'ফাইল আমদানি করতে ব্যর্থ:\\n$error';
  }

  @override
  String get importFailed => 'আমদানী ব্যর্থ';

  @override
  String importFile(String fileName) {
    return 'ফাইল: $fileName';
  }

  @override
  String get importJsonFile => 'JSON আমদানি';

  @override
  String get importJsonFilePrompt => 'অনুগ্রহ করে একটি JSON ফাইল আমদানি করুন';

  @override
  String importSkipped(int count) {
    return 'বাদ দেওয়া হয়েছে: $count';
  }

  @override
  String importTotal(int count) {
    return 'মোট: $count';
  }

  @override
  String get importing => 'আমদানী হচ্ছে...';

  @override
  String get inputModeTitle => '입력';

  @override
  String intervalSeconds(int seconds) {
    return 'বিরতি: $secondsসেকেন্ড';
  }

  @override
  String get invalidEmail => 'একটি সঠিক ইমেল লিখুন।';

  @override
  String get kakaoContinue => 'কাকাও দিয়ে চালিয়ে যান';

  @override
  String get labelLangCode => 'ভাষা কোড (যেমন: en-US, ko-KR)';

  @override
  String get labelName => 'নাম';

  @override
  String get labelNote => 'নোট';

  @override
  String get labelPOS => 'শব্দের শ্রেণী';

  @override
  String get labelRole => 'ভূমিকা';

  @override
  String get labelSentence => 'বাক্য';

  @override
  String get labelSentenceCollection => 'বাক্য সংগ্রহ';

  @override
  String get labelSentenceType => 'বাক্যের ধরণ';

  @override
  String get labelShowMemorized => 'শেষ হয়েছে';

  @override
  String get labelType => 'ধরন:';

  @override
  String get labelWord => 'শব্দ';

  @override
  String get labelWordbook => 'শব্দকোষ';

  @override
  String get language => 'ভাষা';

  @override
  String get languageSettings => 'ভাষা সেটিংস';

  @override
  String get languageSettingsTitle => 'ভাষা সেটিংস';

  @override
  String get libTitleFirstMeeting => 'প্রথম সাক্ষাৎ';

  @override
  String get libTitleGreetings1 => 'শুভেচ্ছা 1';

  @override
  String get libTitleNouns1 => 'বিশেষ্য 1';

  @override
  String get libTitleVerbs1 => 'ক্রিয়া 1';

  @override
  String get listen => 'শুনুন';

  @override
  String get listening => 'শুনছি...';

  @override
  String get loadingParticipants => 'অংশগ্রহণকারীদের লোড করা হচ্ছে...';

  @override
  String get location => 'অবস্থান';

  @override
  String get login => 'লগইন';

  @override
  String get logout => 'লগ আউট';

  @override
  String get logoutConfirmMessage => 'আপনি কি এই ডিভাইস থেকে লগ আউট করতে চান?';

  @override
  String get logoutConfirmTitle => 'লগ আউট';

  @override
  String get male => 'পুরুষ';

  @override
  String get manageParticipants => 'অংশগ্রহণকারী পরিচালনা করুন';

  @override
  String get manual => 'ম্যানুয়াল ইনপুট';

  @override
  String get markAsStudied => 'অধ্যয়ন করা হিসেবে চিহ্নিত করুন';

  @override
  String get materialInfo => 'উপাদান তথ্য';

  @override
  String get me => 'আমি';

  @override
  String get menuDeviceImport => 'ডিভাইস থেকে উপাদান আমদানি করুন';

  @override
  String get menuHelp => 'সাহায্য';

  @override
  String get menuLanguageSettings => 'ভাষা সেটিংস';

  @override
  String get menuOnlineLibrary => 'অনলাইন লাইব্রেরি';

  @override
  String get menuSelectMaterialSet => 'একটি অধ্যয়নের উপাদান নির্বাচন করুন';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'ব্যবহারবিধি দেখুন';

  @override
  String get menuWebDownload => 'ব্যবহারকারী ম্যানুয়াল';

  @override
  String get metadataDialogTitle => 'বিস্তারিত শ্রেণীবিভাগ';

  @override
  String get metadataFormType => 'ব্যাকরণগত গঠন';

  @override
  String get metadataRootWord => 'মূল শব্দ (Root Word)';

  @override
  String get micButtonTooltip => 'ভয়েস রিকগনিশন শুরু করুন';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'বর্তমানে নির্বাচিত উপাদান: $name';
  }

  @override
  String get mode2Title => 'রিভিউ';

  @override
  String get mode3Next => 'পরবর্তী';

  @override
  String get mode3Start => 'শুরু';

  @override
  String get mode3Stop => 'শেষ';

  @override
  String get mode3TryAgain => 'আবার চেষ্টা করুন';

  @override
  String get mySentenceCollection => 'আমার বাক্য সংগ্রহ';

  @override
  String get myWordbook => 'আমার শব্দভাণ্ডার';

  @override
  String get neutral => 'নিরপেক্ষ';

  @override
  String get newSubjectName => 'নতুন শব্দভাণ্ডার/বাক্য সংগ্রহ শিরোনাম';

  @override
  String get next => 'পরবর্তী';

  @override
  String get noDialogueHistory => 'কোনো সংলাপের ইতিহাস নেই।';

  @override
  String get noInternetWarningMic =>
      'ইন্টারনেট সংযোগ নেই। অফলাইন অবস্থায় ভয়েস রিকগনিশন সম্ভব নাও হতে পারে।';

  @override
  String get noInternetWarningTranslate =>
      'ইন্টারনেট সংযোগ নেই। অফলাইন অবস্থায় অনুবাদ করার সুবিধা উপলব্ধ নাও হতে পারে। অনুগ্রহ করে রিভিশন মোড ব্যবহার করুন।';

  @override
  String get noMaterialsInCategory => 'এই শ্রেণীতে কোনো উপাদান নেই।';

  @override
  String get noParticipantsFound => 'কোনো অংশগ্রহণকারী পাওয়া যায়নি।';

  @override
  String get noRecords => 'নির্বাচিত ভাষার জন্য কোনো রেকর্ড নেই';

  @override
  String get noStudyMaterial => 'কোনো অধ্যয়নের উপাদান নেই।';

  @override
  String get noTextToPlay => 'চালানোর জন্য কোনো পাঠ্য নেই';

  @override
  String get noTranslationToSave => 'সংরক্ষণ করার মতো কোনো অনুবাদ নেই';

  @override
  String get noVoiceDetected => 'কোনো ভয়েস শনাক্ত হয়নি';

  @override
  String get notSelected => '- নির্বাচন করা হয়নি -';

  @override
  String get onlineLibraryCheckInternet =>
      'আপনার ইন্টারনেট সংযোগ পরীক্ষা করুন বা পরে আবার চেষ্টা করুন।';

  @override
  String get onlineLibraryLoadFailed => 'উপাদান লোড করতে ব্যর্থ হয়েছে।';

  @override
  String get onlineLibraryNoMaterials => 'কোনো উপাদান নেই।';

  @override
  String get participantDeleted => 'অংশগ্রহণকারী মুছে ফেলা হয়েছে।';

  @override
  String get participantRename => 'অংশগ্রহণকারীর নাম পরিবর্তন করুন';

  @override
  String get partner => 'পার্টনার';

  @override
  String get partnerMode => 'পার্টনার মোড';

  @override
  String get password => 'পাসওয়ার্ড';

  @override
  String get passwordTooShort => 'পাসওয়ার্ড কমপক্ষে ৬ অক্ষরের হতে হবে।';

  @override
  String get perfect => 'নিখুঁত!';

  @override
  String get personaFriend => 'স্থানীয় বন্ধু';

  @override
  String get personaGuide => 'ভ্রমণ গাইড';

  @override
  String get personaTeacher => 'ইংরেজি শিক্ষক';

  @override
  String get playAgain => 'আবার খেলুন';

  @override
  String playbackFailed(String error) {
    return 'প্লেব্যাক ব্যর্থ: $error';
  }

  @override
  String get playing => 'চালানো হচ্ছে...';

  @override
  String get posAdjective => 'বিশেষণ';

  @override
  String get posAdverb => 'ক্রিয়া বিশেষণ';

  @override
  String get posConjunction => 'সংযোজক অব্যয়';

  @override
  String get posInterjection => 'বিস্ময়সূচক';

  @override
  String get posNoun => 'বিশেষ্য';

  @override
  String get posPreposition => 'পদান্বয়ী অব্যয়/ অনুসর্গ';

  @override
  String get posPronoun => 'সর্বনাম';

  @override
  String get posVerb => 'ক্রিয়া';

  @override
  String get practiceModeTitle => 'অনুশীলন';

  @override
  String get practiceWordsOnly => 'শুধুমাত্র শব্দ অনুশীলন করুন';

  @override
  String progress(int current, int total) {
    return 'অগ্রগতি: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'সর্বশেষ $countটি আইটেম দেখুন';
  }

  @override
  String recognitionFailed(String error) {
    return 'কথা শনাক্তকরণ ব্যর্থ: $error';
  }

  @override
  String get recognized => 'শনাক্তকরণ সম্পন্ন';

  @override
  String get recognizedText => 'স্বীকৃত উচ্চারণ:';

  @override
  String get recordDeleted => 'রেকর্ড সফলভাবে মুছে ফেলা হয়েছে';

  @override
  String get refresh => 'রিফ্রেশ';

  @override
  String get reset => 'রিসেট';

  @override
  String get resetPracticeHistory => 'অনুশীলনের ইতিহাস রিসেট করুন';

  @override
  String get retry => 'আবার চেষ্টা করবেন?';

  @override
  String get reviewAll => 'পুরোটা দেখুন';

  @override
  String reviewCount(int count) {
    return '$count বার রিভিউ করা হয়েছে';
  }

  @override
  String get reviewModeTitle => '복습';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'তৃতীয় পক্ষ';

  @override
  String get roleUser => 'ব্যবহারকারী';

  @override
  String get save => 'সংরক্ষণ করুন';

  @override
  String get saveData => 'সংরক্ষণ';

  @override
  String saveFailed(String error) {
    return 'সংরক্ষণ ব্যর্থ: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'অনুসন্ধান মোড থেকে অনুবাদ সংরক্ষণ করুন';

  @override
  String get saved => 'সংরক্ষিত';

  @override
  String get saving => 'সংরক্ষণ করা হচ্ছে...';

  @override
  String score(String score) {
    return 'নির্ভুলতা: $score%';
  }

  @override
  String get scoreLabel => 'স্কোর';

  @override
  String get search => 'অনুসন্ধান';

  @override
  String get searchConditions => 'অনুসন্ধানের শর্ত';

  @override
  String get searchSentenceHint => 'বাক্য অনুসন্ধান করুন...';

  @override
  String get searchWordHint => 'শব্দ অনুসন্ধান করুন...';

  @override
  String get sectionSentence => 'বাক্য বিভাগ';

  @override
  String get sectionSentences => '문장';

  @override
  String get sectionWord => 'শব্দ বিভাগ';

  @override
  String get sectionWords => '단어';

  @override
  String get selectExistingSubject => 'বিদ্যমান শিরোনাম নির্বাচন করুন';

  @override
  String get selectMaterialPrompt =>
      'অনুগ্রহ করে অধ্যয়নের উপকরণ নির্বাচন করুন';

  @override
  String get selectMaterialSet => '학습 자료집 선택';

  @override
  String get selectPOS => 'পার্টস অফ স্পিচ নির্বাচন করুন';

  @override
  String get selectParticipants => 'অংশগ্রহণকারী নির্বাচন করুন';

  @override
  String get selectSentenceType => 'বাক্যের প্রকার নির্বাচন করুন';

  @override
  String get selectStudyMaterial => 'উপকরণ নির্বাচন করুন';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'বাক্য';

  @override
  String get signUp => 'সাইন আপ';

  @override
  String get similarTextFound => 'অনুরূপ পাঠ্য পাওয়া গেছে';

  @override
  String get skip => '건너뛰기';

  @override
  String get source => 'উৎস:';

  @override
  String get sourceLanguage => 'উৎস ভাষা';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'এখন বলুন!';

  @override
  String get speaker => 'বক্তা';

  @override
  String get speakerSelect => 'বক্তা নির্বাচন করুন';

  @override
  String get speakingPractice => 'কথা বলার অনুশীলন';

  @override
  String get startChat => 'কথোপকথন শুরু করুন';

  @override
  String get startPractice => 'অনুশীলন শুরু করুন';

  @override
  String get startTutorial => 'ট্যুর শুরু করুন';

  @override
  String get startWarning => 'সতর্কতা';

  @override
  String get startsWith => 'দিয়ে শুরু';

  @override
  String get statusCheckEmail =>
      'অনুগ্রহ করে ইমেল যাচাই করে আপনার প্রমাণীকরণ সম্পূর্ণ করুন।';

  @override
  String statusDownloading(Object name) {
    return 'ডাউনলোড হচ্ছে: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'আমদানি ব্যর্থ হয়েছে: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name আমদানি সম্পন্ন হয়েছে';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'লগইন বাতিল করা হয়েছে।';

  @override
  String statusLoginFailed(Object error) {
    return 'লগইন ব্যর্থ হয়েছে: $error';
  }

  @override
  String get statusLoginSuccess => 'লগইন সফল হয়েছে।';

  @override
  String get statusLogoutSuccess => 'লগআউট হয়ে গেছে।';

  @override
  String statusSignUpFailed(Object error) {
    return 'সাইন আপ ব্যর্থ হয়েছে: $error';
  }

  @override
  String get statusSigningUp => 'সাইন আপ করা হচ্ছে...';

  @override
  String get stopPractice => 'থানান';

  @override
  String get studyComplete => 'অধ্যয়ন সম্পন্ন';

  @override
  String studyRecords(int count) {
    return 'রেকর্ড ($count)';
  }

  @override
  String get styleFormal => 'সম্মানসূচক';

  @override
  String get styleInformal => 'অনানুষ্ঠানিক';

  @override
  String get stylePolite => 'ভদ্র';

  @override
  String get styleSlang => 'অপভাষা/ চলিত ভাষা';

  @override
  String get subject => 'বিষয়:';

  @override
  String get swapLanguages => 'ভাষা পরিবর্তন করুন';

  @override
  String get switchToAi => 'AI মোডে স্যুইচ করুন';

  @override
  String get switchToPartner => 'পার্টনার মোডে স্যুইচ করুন';

  @override
  String get syncingData => 'ডেটা সিঙ্ক্রোনাইজ করা হচ্ছে...';

  @override
  String get tabConversation => 'কথোপকথন';

  @override
  String tabReview(int count) {
    return 'রিভিউ ($count)';
  }

  @override
  String get tabSentence => 'বাক্য';

  @override
  String get tabSpeaking => 'কথা বলা';

  @override
  String tabStudyMaterial(int count) {
    return 'উপকরণ ($count)';
  }

  @override
  String get tabWord => 'শব্দ';

  @override
  String get tagFormal => 'সম্মানসূচক';

  @override
  String get tagSelection => 'ট্যাগ নির্বাচন';

  @override
  String get targetLanguage => 'লক্ষ্য ভাষা';

  @override
  String get targetLanguageFilter => 'লক্ষ্য ভাষা ফিল্টার:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'সঠিক উত্তর প্রকাশের আগে চিন্তা করার সময়।';

  @override
  String get thinkingTimeInterval => 'সময় বিরতি';

  @override
  String get timeUp => 'সময় শেষ!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'শিরোনাম ট্যাগ (সংগ্রহ)';

  @override
  String get tooltipDecrease => 'হ্রাস';

  @override
  String get tooltipIncrease => 'বৃদ্ধি';

  @override
  String get tooltipSearch => 'অনুসন্ধান';

  @override
  String get tooltipSpeaking => 'কথা বলা';

  @override
  String get tooltipStudyReview => 'অধ্যয়ন+পর্যালোচনা';

  @override
  String totalRecords(int count) {
    return 'মোট $countটি রেকর্ড (পুরোটা দেখুন)';
  }

  @override
  String get translate => 'অনুবাদ';

  @override
  String get translating => 'অনুবাদ করা হচ্ছে...';

  @override
  String get translation => 'অনুবাদ';

  @override
  String get translationComplete => 'অনুবাদ সম্পন্ন (সংরক্ষণ প্রয়োজন)';

  @override
  String translationFailed(String error) {
    return 'অনুবাদ ব্যর্থ: $error';
  }

  @override
  String get translationLimitExceeded => 'অনুবাদ সীমা অতিক্রম করেছে';

  @override
  String get translationLimitMessage =>
      'আপনি দৈনিক বিনামূল্যে অনুবাদ (৫ বার) ব্যবহার করেছেন।\\n\\nআপনি কি বিজ্ঞাপন দেখে অবিলম্বে ৫ বার রিফিল করতে চান?';

  @override
  String get translationLoaded => 'সংরক্ষিত অনুবাদ লোড করা হয়েছে';

  @override
  String get translationRefilled => 'অনুবাদ ৫ বার রিফিল করা হয়েছে!';

  @override
  String get translationResultHint => 'অনুবাদ ফলাফল - পরিবর্তনযোগ্য';

  @override
  String get tryAgain => 'আবার চেষ্টা করুন';

  @override
  String get tutorialAiChatDesc =>
      'AI ব্যক্তিত্বের সাথে বাস্তব কথোপকথনের অনুশীলন করুন।';

  @override
  String get tutorialAiChatTitle => 'AI চ্যাট';

  @override
  String get tutorialContextDesc =>
      'অনুরূপ বাক্যগুলি আলাদা করতে প্রসঙ্গ (যেমন: সকাল) যোগ করুন।';

  @override
  String get tutorialContextTitle => 'প্রসঙ্গ ট্যাগ';

  @override
  String get tutorialLangSettingsDesc =>
      'অনুবাদ করার জন্য উৎস ভাষা এবং গন্তব্য ভাষা নির্বাচন করুন।';

  @override
  String get tutorialLangSettingsTitle => 'ভাষা সেটিংস';

  @override
  String get tutorialM1ToggleDesc => 'এখানে শব্দ এবং বাক্য মোড পরিবর্তন করুন।';

  @override
  String get tutorialM1ToggleTitle => 'শব্দ/বাক্য মোড';

  @override
  String get tutorialM2DropdownDesc => 'অধ্যয়ন উপকরণ নির্বাচন করুন।';

  @override
  String get tutorialM2ImportDesc =>
      'ডিভাইস ফোল্ডার থেকে JSON ফাইল আমদানি করুন।';

  @override
  String get tutorialM2ListDesc =>
      'আপনার কার্ডগুলি পরীক্ষা করুন এবং উল্টান। (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'অধ্যয়ন তালিকা';

  @override
  String get tutorialM2SearchDesc =>
      'সংরক্ষিত শব্দ এবং বাক্য খুঁজে বের করতে দ্রুত অনুসন্ধান করুন।';

  @override
  String get tutorialM2SelectDesc =>
      'উপকরণ নির্বাচন করুন বা \'সব রিভিউ\' টগল করুন।';

  @override
  String get tutorialM2SelectTitle => 'নির্বাচন ও ফিল্টার';

  @override
  String get tutorialM3IntervalDesc =>
      'বাক্যের মধ্যে অপেক্ষার সময় সামঞ্জস্য করুন।';

  @override
  String get tutorialM3IntervalTitle => 'বিরতি';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'কথা বলার অনুশীলনের জন্য সেট বেছে নিন।';

  @override
  String get tutorialM3SelectTitle => 'উপকরণ নির্বাচন';

  @override
  String get tutorialM3StartDesc => 'শুরু করতে প্লে ট্যাপ করুন।';

  @override
  String get tutorialM3StartTitle => 'শুরু';

  @override
  String get tutorialM3WordsDesc =>
      'চেক করলে শুধুমাত্র সংরক্ষিত শব্দ অনুশীলন হবে।';

  @override
  String get tutorialM3WordsTitle => 'শব্দ অনুশীলন';

  @override
  String get tutorialMicDesc => 'ভয়েস ইনপুটের জন্য মাইক বোতাম ট্যাপ করুন।';

  @override
  String get tutorialMicTitle => 'ভয়েস ইনপুট';

  @override
  String get tutorialSaveDesc => 'আপনার অনুবাদ সংরক্ষণ করুন।';

  @override
  String get tutorialSaveTitle => 'সংরক্ষণ';

  @override
  String get tutorialSwapDesc =>
      'আমি যে ভাষা শিখছি তার সাথে আমার ভাষা বদল করি।';

  @override
  String get tutorialTabDesc =>
      'আপনি এখানে আপনার পছন্দের শেখার মোড নির্বাচন করতে পারেন।';

  @override
  String get tutorialTapToContinue => 'চালিয়ে যেতে ট্যাপ করুন';

  @override
  String get tutorialTransDesc => 'আপনার পাঠ্য অনুবাদ করতে এখানে ট্যাপ করুন।';

  @override
  String get tutorialTransTitle => 'অনুবাদ';

  @override
  String get typeExclamation => 'বিস্ময়সূচক বাক্য';

  @override
  String get typeImperative => 'অনুজ্ঞাসূচক বাক্য';

  @override
  String get typeQuestion => 'প্রশ্নবোধক বাক্য';

  @override
  String get typeStatement => 'বিবৃতিমূলক বাক্য';

  @override
  String get usageLimitTitle => 'সীমা পৌঁছে গেছে';

  @override
  String get useExistingText => 'বিদ্যমান ব্যবহার করুন';

  @override
  String get viewOnlineGuide => 'অনলাইন গাইড দেখুন';

  @override
  String get voluntaryTranslations => 'স্বেচ্ছায় অনুবাদ';

  @override
  String get watchAdAndRefill => 'বিজ্ঞাপন দেখে রিফিল করুন (+৫ বার)';

  @override
  String get word => 'শব্দ';

  @override
  String get wordDefenseDesc =>
      'শত্রুরা পৌঁছানোর আগে শব্দ বলে আপনার বেস রক্ষা করুন।';

  @override
  String get wordDefenseTitle => 'শব্দ প্রতিরক্ষা';

  @override
  String get wordModeLabel => 'শব্দ মোড';

  @override
  String get yourPronunciation => 'আপনার উচ্চারণ';

  @override
  String get ttsUnsupportedNatively =>
      'এই ডিভাইসের ডিফল্ট সেটিংস এই ভাষার ভয়েস আউটপুট সমর্থন করে না।';

  @override
  String get homeTab => 'অনুবাদ';

  @override
  String get welcomeTitle => 'Talkie-তে স্বাগতম!';

  @override
  String get welcomeDesc =>
      'Talkie-তে স্বাগতম! বিশ্বব্যাপী ৮০টিরও বেশি ভাষার ১০০% নির্ভুল সমর্থন এবং নতুন প্রিমিয়াম 3D ডিজাইন ও অপ্টিমাইজ করা পারফরম্যান্সের সাথে একটি নিখুঁত শেখার অভিজ্ঞতা উপভোগ করুন।';

  @override
  String get welcomeButton => 'শুরু করুন';

  @override
  String get labelDetails => 'বিস্তারিত সেটিংস';

  @override
  String get translationResult => 'অনুবাদ ফলাফল';

  @override
  String get inputContent => 'ইনপুট সামগ্রী';

  @override
  String get translateNow => 'এখনই অনুবাদ করুন';

  @override
  String get tooltipSettingsConfirm => 'সেটিংস নিশ্চিত করুন';

  @override
  String get hintNoteExample =>
      'উদাহরণ: পরিস্থিতির ব্যাখ্যা, সমার্থক শব্দ ইত্যাদি';

  @override
  String get hintTagExample => 'উদাহরণ: ব্যবসা, ভ্রমণ...';

  @override
  String get addNew => 'নতুন যোগ করুন';

  @override
  String get newNotebookTitle => 'নতুন নোটবুকের নাম';

  @override
  String get enterNameHint => 'নাম লিখুন';

  @override
  String get add => 'যোগ করুন';

  @override
  String get openSettings => 'সেটিংস খুলুন';

  @override
  String get helpNotebook =>
      'অনুবাদিত ফলাফল সংরক্ষণের জন্য একটি ফোল্ডার নির্বাচন করুন।';

  @override
  String get helpNote =>
      'শব্দের অর্থ, উদাহরণ বা পরিস্থিতি ইত্যাদি নির্দ্বিধায় লিখুন।';

  @override
  String get helpTag => 'শ্রেণীবদ্ধ বা অনুসন্ধানের জন্য কীওয়ার্ড লিখুন।';

  @override
  String get requestTranslation => 'অনুবাদ করার জন্য অনুরোধ করুন';

  @override
  String get statusRequestSuccess => 'অনুবাদ করার অনুরোধটি সম্পন্ন হয়েছে।';

  @override
  String statusRequestFailed(String error) {
    return 'অনুবাদ করার অনুরোধটি ব্যর্থ হয়েছে: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'শেখার ভাষা সমর্থিত নয়';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'আপনি যে উপাদানটি নির্বাচন করেছেন তা বর্তমানে আপনার নির্বাচিত শেখার ভাষা ($targetLang) সমর্থন করে না, তাই এটি স্থানীয়ভাবে সংরক্ষণ করা যাবে না। আপনি কি অনুবাদ করার জন্য অনুরোধ করতে চান?';
  }

  @override
  String get quickStartStep1Title => '১. ভাষা নির্বাচন করুন';

  @override
  String get quickStartStep1Desc =>
      'মেনু > ভাষা সেটিং থেকে আপনার ভাষা এবং শেখার ভাষা নির্বাচন করুন।';

  @override
  String get quickStartStep2Title => '২. মূল প্রবাহ';

  @override
  String get quickStartStep2Desc =>
      'ইনপুট (মাইক্রোফোন/কীবোর্ড) -> অনুবাদ -> সংরক্ষণ ক্রমে আপনার নিজস্ব লার্নিং কার্ড তৈরি করুন।';

  @override
  String get quickStartStep3Title => '৩. মোড ব্যবহার করুন';

  @override
  String get quickStartStep3Desc =>
      'চ্যাটের মাধ্যমে অনুশীলন করুন এবং উচ্চারণ অনুশীলন ট্যাবে টেক্সট দেখে সরাসরি উচ্চারণ করে অনুশীলন করুন।';
}

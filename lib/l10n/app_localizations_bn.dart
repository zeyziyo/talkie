// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get helpTitle => 'সাহায্য ও নির্দেশিকা';

  @override
  String get helpTabModes => 'মোড';

  @override
  String get helpTabJson => 'JSON ফরম্যাট';

  @override
  String get helpTabTour => 'ট্যুর';

  @override
  String get helpMode1Desc =>
      'কণ্ঠস্বর শনাক্ত করুন, অনুবাদ করুন এবং ফলাফল শুনুন।';

  @override
  String get helpMode1Details =>
      '• ভয়েস: শুরু/বন্ধ করতে মাইক ট্যাপ করুন\n• পাঠ্য: অনুবাদের জন্য সরাসরি টাইপ করুন\n• অটো-সার্চ: অনুরূপ বাক্য শনাক্ত করে\n• অনুবাদ: তাৎক্ষণিক অনুবাদের বোতাম\n• শুনুন: TTS-এর জন্য স্পিকার আইকন\n• সংরক্ষণ: ইতিহাসে যোগ করে\n• সাফ করুন: সব রিসেট করুন';

  @override
  String get helpMode2Desc => 'লুকানো অনুবাদ সহ সংরক্ষিত বাক্য রিভিউ করুন।';

  @override
  String get helpMode2Details =>
      '• নির্বাচন: সেট বা \'সব রিভিউ\' বেছে নিন\n• উল্টান: অনুবাদ \'দেখান/লুকান\'\n• শুনুন: বাক্যের জন্য TTS চালান\n• চিহ্নিত করুন: সম্পন্ন হলে টিক (V) দিন\n• মুছুন: মুছতে কার্ড টিপে ধরে রাখুন\n• ফিল্টার: সব দেখুন বা উপকরণ অনুযায়ী';

  @override
  String get helpMode3Desc =>
      'শুনে এবং পুনরাবৃত্তি করে কথা বলার অনুশীলন করুন (Shadowing)।';

  @override
  String get helpMode3Details =>
      '• নির্বাচন: প্যাকেজ বেছে নিন\n• বিরতি: [-] [+] অপেক্ষার সময় (৩সে-৬০সে)\n• শুরু/বন্ধ: সেশন নিয়ন্ত্রণ করুন\n• বলুন: অডিও শুনুন এবং পুনরাবৃত্তি করুন\n• স্কোর: নির্ভুলতা (০-১০০)\n• পুনরাবৃত্তি: ভয়েস শনাক্ত না হলে বোতাম';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'মোড ৩-এ আমদানির জন্য, JSON তৈরি করুন:';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get partnerMode => 'Partner Mode';

  @override
  String get manual => 'Manual';

  @override
  String get speaker => 'Speaker';

  @override
  String get switchToAi => 'Switch to AI';

  @override
  String get switchToPartner => 'Switch to Partner';

  @override
  String get currentLocation => 'Current Location';

  @override
  String get location => 'অবস্থান';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Me';

  @override
  String get currentMaterialLabel => 'Current Selected Material:';

  @override
  String get basicMaterialRepository => 'Basic Repository';

  @override
  String get word => 'Word';

  @override
  String get sentence => 'Sentence';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'রিভিউ ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'উপকরণ ($count)';
  }

  @override
  String get mode2Title => 'রিভিউ';

  @override
  String get search => 'অনুসন্ধান';

  @override
  String get translate => 'অনুবাদ';

  @override
  String get listen => 'শুনুন';

  @override
  String get saveData => 'সংরক্ষণ';

  @override
  String get saved => 'সংরক্ষিত';

  @override
  String get delete => 'মুছুন';

  @override
  String get materialInfo => 'উপাদান তথ্য';

  @override
  String get cancel => 'বাতিল';

  @override
  String get confirm => 'ঠিক আছে';

  @override
  String get refresh => 'রিফ্রেশ';

  @override
  String studyRecords(int count) {
    return 'রেকর্ড ($count)';
  }

  @override
  String get targetLanguageFilter => 'লক্ষ্য ভাষা ফিল্টার:';

  @override
  String get noRecords => 'নির্বাচিত ভাষার জন্য কোনো রেকর্ড নেই';

  @override
  String get saveTranslationsFromSearch =>
      'অনুসন্ধান মোড থেকে অনুবাদ সংরক্ষণ করুন';

  @override
  String get flip => 'উল্টান';

  @override
  String get hide => 'লুকান';

  @override
  String get deleteRecord => 'রেকর্ড মুছুন';

  @override
  String get confirmDelete => 'আপনি কি নিশ্চিত যে আপনি এই রেকর্ডটি মুছতে চান?';

  @override
  String get recordDeleted => 'রেকর্ড সফলভাবে মুছে ফেলা হয়েছে';

  @override
  String deleteFailed(String error) {
    return 'মুছতে ব্যর্থ: $error';
  }

  @override
  String get importJsonFile => 'JSON আমদানি';

  @override
  String get importing => 'আমদানী হচ্ছে...';

  @override
  String get importComplete => 'আমদানী সম্পন্ন';

  @override
  String get importFailed => 'আমদানী ব্যর্থ';

  @override
  String importFile(String fileName) {
    return 'ফাইল: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'মোট: $count';
  }

  @override
  String importAdded(int count) {
    return 'যোগ করা হয়েছে: $count';
  }

  @override
  String importSkipped(int count) {
    return 'বাদ দেওয়া হয়েছে: $count';
  }

  @override
  String get errors => 'ত্রুটি:';

  @override
  String get error => 'ত্রুটি';

  @override
  String importErrorMessage(String error) {
    return 'ফাইল আমদানি করতে ব্যর্থ:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'উপকরণ নির্বাচন করুন';

  @override
  String get subject => 'বিষয়:';

  @override
  String get source => 'উৎস:';

  @override
  String get file => 'ফাইল:';

  @override
  String progress(int current, int total) {
    return 'অগ্রগতি: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'অনুগ্রহ করে একটি JSON ফাইল আমদানি করুন';

  @override
  String get selectMaterialPrompt =>
      'অনুগ্রহ করে অধ্যয়নের উপকরণ নির্বাচন করুন';

  @override
  String get studyComplete => 'অধ্যয়ন সম্পন্ন';

  @override
  String get markAsStudied => 'অধ্যয়ন করা হিসেবে চিহ্নিত করুন';

  @override
  String get listening => 'শুনছি...';

  @override
  String get recognized => 'শনাক্তকরণ সম্পন্ন';

  @override
  String recognitionFailed(String error) {
    return 'কথা শনাক্তকরণ ব্যর্থ: $error';
  }

  @override
  String get checking => 'যাচাই করা হচ্ছে...';

  @override
  String get translating => 'অনুবাদ করা হচ্ছে...';

  @override
  String get translationComplete => 'অনুবাদ সম্পন্ন (সংরক্ষণ প্রয়োজন)';

  @override
  String get translationLoaded => 'সংরক্ষিত অনুবাদ লোড করা হয়েছে';

  @override
  String translationFailed(String error) {
    return 'অনুবাদ ব্যর্থ: $error';
  }

  @override
  String get enterTextToTranslate => 'অনুবাদের জন্য পাঠ্য লিখুন';

  @override
  String get saving => 'সংরক্ষণ করা হচ্ছে...';

  @override
  String get noTranslationToSave => 'সংরক্ষণ করার মতো কোনো অনুবাদ নেই';

  @override
  String saveFailed(String error) {
    return 'সংরক্ষণ ব্যর্থ: $error';
  }

  @override
  String get playing => 'চালানো হচ্ছে...';

  @override
  String get noTextToPlay => 'চালানোর জন্য কোনো পাঠ্য নেই';

  @override
  String playbackFailed(String error) {
    return 'প্লেব্যাক ব্যর্থ: $error';
  }

  @override
  String get sourceLanguage => 'উৎস ভাষা';

  @override
  String get targetLanguage => 'লক্ষ্য ভাষা';

  @override
  String get similarTextFound => 'অনুরূপ পাঠ্য পাওয়া গেছে';

  @override
  String get useExistingText => 'বিদ্যমান ব্যবহার করুন';

  @override
  String get createNew => 'নতুন তৈরি করুন';

  @override
  String reviewCount(int count) {
    return '$count বার রিভিউ করা হয়েছে';
  }

  @override
  String get tabSpeaking => 'কথা বলা';

  @override
  String get speakingPractice => 'কথা বলার অনুশীলন';

  @override
  String intervalSeconds(int seconds) {
    return 'বিরতি: $secondsসেকেন্ড';
  }

  @override
  String get yourPronunciation => 'আপনার উচ্চারণ';

  @override
  String get correctAnswer => 'সঠিক উত্তর';

  @override
  String score(String score) {
    return 'নির্ভুলতা: $score%';
  }

  @override
  String get perfect => 'নিখুঁত!';

  @override
  String get good => 'ভালো';

  @override
  String get tryAgain => 'আবার চেষ্টা করুন';

  @override
  String get startPractice => 'অনুশীলন শুরু করুন';

  @override
  String get stopPractice => 'থানান';

  @override
  String get startTutorial => 'ট্যুর শুরু করুন';

  @override
  String get tutorialMicTitle => 'ভয়েস ইনপুট';

  @override
  String get tutorialMicDesc => 'ভয়েস ইনপুটের জন্য মাইক বোতাম ট্যাপ করুন।';

  @override
  String get tutorialTabDesc =>
      'আপনি এখানে আপনার পছন্দের শেখার মোড নির্বাচন করতে পারেন।';

  @override
  String get tutorialTapToContinue => 'চালিয়ে যেতে ট্যাপ করুন';

  @override
  String get tutorialTransTitle => 'অনুবাদ';

  @override
  String get tutorialTransDesc => 'আপনার পাঠ্য অনুবাদ করতে এখানে ট্যাপ করুন।';

  @override
  String get tutorialSaveTitle => 'সংরক্ষণ';

  @override
  String get tutorialSaveDesc => 'আপনার অনুবাদ সংরক্ষণ করুন।';

  @override
  String get tutorialM2SelectTitle => 'নির্বাচন ও ফিল্টার';

  @override
  String get tutorialM2SelectDesc =>
      'উপকরণ নির্বাচন করুন বা \'সব রিভিউ\' টগল করুন।';

  @override
  String get tutorialM2ListTitle => 'অধ্যয়ন তালিকা';

  @override
  String get tutorialM2ListDesc =>
      'আপনার কার্ডগুলি পরীক্ষা করুন এবং উল্টান। (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'উপকরণ নির্বাচন';

  @override
  String get tutorialM3SelectDesc => 'কথা বলার অনুশীলনের জন্য সেট বেছে নিন।';

  @override
  String get tutorialM3IntervalTitle => 'বিরতি';

  @override
  String get tutorialM3IntervalDesc =>
      'বাক্যের মধ্যে অপেক্ষার সময় সামঞ্জস্য করুন।';

  @override
  String get tutorialM3StartTitle => 'শুরু';

  @override
  String get tutorialM3StartDesc => 'শুরু করতে প্লে ট্যাপ করুন।';

  @override
  String get startWarning => 'সতর্কতা';

  @override
  String get noVoiceDetected => 'কোনো ভয়েস শনাক্ত হয়নি';

  @override
  String get tooltipSearch => 'অনুসন্ধান';

  @override
  String get tooltipStudyReview => 'অধ্যয়ন+পর্যালোচনা';

  @override
  String get tooltipSpeaking => 'কথা বলা';

  @override
  String get tooltipDecrease => 'হ্রাস';

  @override
  String get tooltipIncrease => 'বৃদ্ধি';

  @override
  String get languageSettings => 'ভাষা সেটিংস';

  @override
  String get tutorialM2DropdownDesc => 'অধ্যয়ন উপকরণ নির্বাচন করুন।';

  @override
  String get tutorialM2ImportDesc =>
      'ডিভাইস ফোল্ডার থেকে JSON ফাইল আমদানি করুন।';

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
  String get tutorialContextTitle => 'প্রসঙ্গ ট্যাগ';

  @override
  String get tutorialContextDesc =>
      'অনুরূপ বাক্যগুলি আলাদা করতে প্রসঙ্গ (যেমন: সকাল) যোগ করুন।';

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
  String get usageLimitTitle => 'সীমা পৌঁছে গেছে';

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
  String get selectMaterialSet => '학습 자료집 선택';

  @override
  String get sectionWords => '단어';

  @override
  String get sectionSentences => '문장';

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
      'আমি যে ভাষা শিখছি তার সাথে আমার ভাষা বদল করি।';

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
  String get menuSelectMaterialSet => 'একটি অধ্যয়নের উপাদান নির্বাচন করুন';

  @override
  String get sectionWord => 'শব্দ বিভাগ';

  @override
  String get sectionSentence => 'বাক্য বিভাগ';

  @override
  String get tabWord => 'শব্দ';

  @override
  String get tabSentence => 'বাক্য';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get clearAll => '모두 지우기';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get skip => '건너뛰기';

  @override
  String get inputModeTitle => '입력';

  @override
  String get reviewModeTitle => '복습';

  @override
  String get practiceModeTitle => '발음 연습';

  @override
  String get chatHistoryTitle => 'Conversation History';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => 'New Chat';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return 'From Conversation ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => 'Untitled Conversation';

  @override
  String get chatAiChat => 'AI Chat';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Current Material Set: $name';
  }

  @override
  String get basicWordRepository => 'মৌলিক শব্দ ভান্ডার';

  @override
  String get basicSentenceRepository => 'মৌলিক বাক্য ভান্ডার';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'Save & Exit';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get metadataDialogTitle => 'Details';

  @override
  String get selectPOS => 'Select POS';

  @override
  String get selectSentenceType => 'Select Sentence Type';

  @override
  String get metadataRootWord => 'Root Word';

  @override
  String get posNoun => 'Noun';

  @override
  String get posVerb => 'Verb';

  @override
  String get posAdjective => 'Adjective';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posPronoun => 'Pronoun';

  @override
  String get posPreposition => 'Preposition';

  @override
  String get posConjunction => 'Conjunction';

  @override
  String get posInterjection => 'Interjection';

  @override
  String get typeStatement => 'Statement';

  @override
  String get typeQuestion => 'Question';

  @override
  String get typeExclamation => 'Exclamation';

  @override
  String get typeImperative => 'Imperative';

  @override
  String get labelNote => 'Note';

  @override
  String get labelShowMemorized => '외운것';

  @override
  String get tagSelection => '태그 선택';

  @override
  String get metadataFormType => 'Form Type';

  @override
  String get formInfinitive => 'Infinitive/Present';

  @override
  String get formPast => 'Past';

  @override
  String get formPastParticiple => 'Past Participle';

  @override
  String get formPresentParticiple => 'Present Participle';

  @override
  String get formPresent => '현재형';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get caseSubject => '주격';

  @override
  String get caseObject => '목적격';

  @override
  String get casePossessive => '소유격';

  @override
  String get casePossessivePronoun => '소유대명사';

  @override
  String get caseReflexive => '재귀대명사';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';
}

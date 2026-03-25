// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get basicWords => 'বেচিক শব্দ ভঁৰাল';

  @override
  String get inputLanguage => 'ইনপুট ভাষা';

  @override
  String get translationLanguage => 'অনুবাদ ভাষা';

  @override
  String get simplifiedGuidance =>
      'দৈনন্দিন কথোপকথনবোৰক বিদেশী ভাষালৈ তৎক্ষণাত ৰূপান্তৰ কৰক! Talkieয়ে আপোনাৰ ভাষাৰ জীৱন লিপিবদ্ধ কৰিব।';

  @override
  String get noDataForLanguage =>
      'আপুনি নিৰ্বাচিত কৰা ভাষাৰ বাবে কোনো শিকন সামগ্ৰী স্থানীয় DBত নাই। সামগ্ৰী ডাউনলোড কৰক বা অন্য ভাষা নিৰ্বাচন কৰক।';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'বাতিল কৰক';

  @override
  String get accuracy => 'সঠিকতা';

  @override
  String get ttsMissing =>
      'এই ভাষাৰ বাবে কণ্ঠ ইঞ্জিন আপোনাৰ ডিভাইচত ইনস্টল কৰা হোৱা নাই।';

  @override
  String get ttsInstallGuide =>
      'অনুগ্রহ কৰি Android ছেটিং > Google TTS-ৰ পৰা এই ভাষাৰ ডেটা ইনস্টল কৰক।';

  @override
  String get adLoading =>
      'বিজ্ঞাপন লোড কৰি থকা হৈছে। অনুগ্ৰহ কৰি কিছু সময়ৰ পিছত পুনৰ চেষ্টা কৰক।';

  @override
  String get addNewSubject => 'নতুন নাম যোগ কৰক';

  @override
  String get addParticipant => 'অংশগ্ৰহণকাৰী যোগ কৰক';

  @override
  String get addTagHint => 'টেগ যোগ কৰক...';

  @override
  String get alreadyHaveAccount => 'আপোনাৰ ইতিমধ্যে একাউণ্ট আছে নেকি?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'স্বয়ংক্ৰিয় প্লে’';

  @override
  String get basic => 'বেচিক';

  @override
  String get basicDefault => 'বেচিক';

  @override
  String get basicMaterialRepository => 'বেচিক বাক্য/শব্দ ভঁৰাল';

  @override
  String get basicSentenceRepository => 'বেচিক বাক্য ভঁৰাল';

  @override
  String get basicSentences => 'বেচিক বাক্য ভঁৰাল';

  @override
  String get basicWordRepository => 'বেচিক শব্দ ভঁৰাল';

  @override
  String get caseObject => 'কৰ্ম কাৰক';

  @override
  String get casePossessive => 'অধিকাৰবোধক';

  @override
  String get casePossessivePronoun => 'অধিকাৰবোধক সৰ্বনাম';

  @override
  String get caseReflexive => 'প্ৰতিফলিত';

  @override
  String get caseSubject => 'কৰ্তা কাৰক';

  @override
  String get chatAiChat => 'চ্যাটিং';

  @override
  String get chatAllConversations => 'সকলো কথোপকথন';

  @override
  String get chatChoosePersona => 'এটা ব্যক্তি নিৰ্বাচন কৰক';

  @override
  String get chatEndMessage => 'আপুনি বাৰ্তালাপ শেষ কৰিব বিচাৰেনে?';

  @override
  String get chatEndTitle => 'বাৰ্তালাপ শেষ কৰা আৰু সংৰক্ষণ কৰা';

  @override
  String chatFailed(Object error) {
    return 'চেট ব্যৰ্থ হ’ল: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'বাৰ্তালাপৰ উদ্ধৃতি ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'চেটৰ ইতিহাস';

  @override
  String get chatNew => 'নতুন বাৰ্তালাপ';

  @override
  String get chatNewChat => 'নতুন বাৰ্তালাপ';

  @override
  String get chatNoConversations => 'এতিয়ালৈকে কোনো বাৰ্তালাপ নাই';

  @override
  String get chatSearchHint => ' কথোপকথনৰ শিৰোনাম অনুসৰি সন্ধান কৰক...';

  @override
  String get chatNoteSearchHint => 'টোকাৰ সহায়ত সন্ধান কৰক...';

  @override
  String get chatSaveAndExit => 'সংৰক্ষণ কৰক আৰু ওলাই যাওক';

  @override
  String get chatStartNewPrompt =>
      'অনুশীলনৰ বাবে এটা নতুন বাৰ্তালাপ আৰম্ভ কৰিবলৈ চেষ্টা কৰক!';

  @override
  String get chatTypeHint => 'এটা বাৰ্তা লিখক...';

  @override
  String get chatUntitled => 'শিৰোনামবিহীন বাৰ্তালাপ';

  @override
  String get checking => 'পৰীক্ষা কৰি থকা হৈছে...';

  @override
  String get clearAll => 'সকলো মচি পেলোৱা';

  @override
  String get confirm => 'নিশ্চিত কৰক';

  @override
  String get confirmDelete => 'আপুনি এই শিকন ৰেকৰ্ড মচিব বিচাৰেনে?';

  @override
  String get confirmDeleteConversation =>
      'আপুনি এই কথোপকথনটো মচিব বিচাৰে নেকি?\nমচাৰ পিছত কথোপকথনটো পুনৰুদ্ধাৰ কৰিব নোৱাৰিব।';

  @override
  String get confirmDeleteParticipant =>
      'আপুনি এই অংশগ্ৰহণকাৰীক মচিব বিচাৰেনে?';

  @override
  String get contextTagHint => 'ভৱিষ্যতে পৃথক কৰিবলৈ পৰিস্থিতি লিখক';

  @override
  String get contextTagLabel =>
      'প্ৰসংগ/পৰিস্থিতি (ঐচ্ছিক) – উদাহৰণ: ৰাতিপুৱাৰ সম্ভাষণ, আনুষ্ঠানিক';

  @override
  String get copiedToClipboard => 'ক্লিপবৰ্ডত কপি কৰা হ’ল!';

  @override
  String get copy => 'কপি কৰক';

  @override
  String get correctAnswer => 'সঠিক উত্তৰ';

  @override
  String get createNew => 'এটা নতুন বাক্যৰ সৈতে আগবাঢ়ক';

  @override
  String get currentLocation => 'বৰ্তমানৰ অৱস্থান';

  @override
  String get currentMaterialLabel => 'বৰ্তমান নিৰ্বাচিত সামগ্ৰী সংকলন:';

  @override
  String get delete => 'মচি পেলোৱা';

  @override
  String deleteFailed(String error) {
    return 'মচিবলৈ ব্যৰ্থ: $error';
  }

  @override
  String get deleteRecord => 'ৰেকৰ্ড মচি পেলোৱা';

  @override
  String get dialogueQuestDesc =>
      'এটা পৰিস্থিতি নাটকৰ জৰিয়তে বাৰ্তালাপৰ অনুশীলন কৰক। উপযুক্ত উত্তৰ নিৰ্বাচন কৰক আৰু কওক।';

  @override
  String get dialogueQuestTitle => 'বাৰ্তালাপৰ সন্ধান';

  @override
  String get disambiguationPrompt => 'আপুনি ইয়াক কি অৰ্থত অনুবাদ কৰিব?';

  @override
  String get disambiguationTitle => 'অৰ্থ নিৰ্বাচন';

  @override
  String get dontHaveAccount => 'আপোনাৰ একাউণ্ট নাই নেকি?';

  @override
  String get editParticipant => 'অংশগ্ৰহণকাৰী সম্পাদনা কৰক';

  @override
  String get email => 'ইমেইল';

  @override
  String get emailAlreadyInUse =>
      'এই ইমেইল ইতিমধ্যে ব্যৱহৃত হৈছে। লগইন কৰক বা পাছৱৰ্ড পুনৰুদ্ধাৰ কৰাৰ চেষ্টা কৰক।';

  @override
  String get enterNewSubjectName => 'নতুন নাম লিখক';

  @override
  String get enterSentenceHint => 'এটা বাক্য লিখাৰ ইংগিত...';

  @override
  String get enterTextHint => 'অনুবাদ কৰিবলৈ টেক্সট লিখক';

  @override
  String get enterTextToTranslate => 'অনুবাদ কৰিবলৈ টেক্সট লিখক';

  @override
  String get enterWordHint => 'এটা শব্দ লিখাৰ ইংগিত...';

  @override
  String get error => 'error';

  @override
  String get errorHateSpeech => 'ইয়াত ঘৃণা ভাষণ থকা বাবে অনুবাদ কৰিব নোৱাৰি।';

  @override
  String get errorOtherSafety =>
      'এআই সুৰক্ষা নীতিৰ দ্বাৰা অনুবাদ নাকচ কৰা হ’ল।';

  @override
  String get errorProfanity => 'ইয়াত অশ্লীল শব্দ থকা বাবে অনুবাদ কৰিব নোৱাৰি।';

  @override
  String get errorSelectCategory => 'প্ৰথমে এটা শব্দ বা বাক্য নিৰ্বাচন কৰক!';

  @override
  String get errorSexualContent =>
      'ইয়াত যৌনতাপূৰ্ণ সামগ্ৰী থকা বাবে অনুবাদ কৰিব নোৱাৰি।';

  @override
  String get errors => 'error:';

  @override
  String get female => 'মহিলা';

  @override
  String get file => 'ফাইল:';

  @override
  String get filterAll => 'সকলো';

  @override
  String get flip => 'দেখুৱাওক';

  @override
  String get formComparative => 'তুলনাত্মক';

  @override
  String get formInfinitive => 'ইনফিনিটিভ/বৰ্তমান';

  @override
  String get formPast => 'অতীত';

  @override
  String get formPastParticiple => 'অতীতৰ অংশ';

  @override
  String get formPlural => 'বহুবচন';

  @override
  String get formPositive => 'ইতিবাচক';

  @override
  String get formPresent => 'বৰ্তমান';

  @override
  String get formPresentParticiple => 'বৰ্তমানৰ অংশ (ing)';

  @override
  String get formSingular => 'একবচন';

  @override
  String get formSuperlative => 'সৰ্বোত্তম';

  @override
  String get formThirdPersonSingular => 'তৃতীয় ব্যক্তি একবচন';

  @override
  String get gameModeDesc => 'অনুশীলন কৰিবলৈ এটা গেম মোড নিৰ্বাচন কৰক';

  @override
  String get gameModeTitle => 'গেম মোড';

  @override
  String get gameOver => 'গেম শেষ';

  @override
  String get gender => 'লিংগ';

  @override
  String get labelFilterMaterial => 'সামগ্ৰী';

  @override
  String get labelFilterTag => 'টেগ';

  @override
  String get generalTags => 'সাধাৰণ টেগসমূহ';

  @override
  String get getMaterials => 'সামগ্ৰী লাভ কৰক';

  @override
  String get good => 'ভাল';

  @override
  String get googleContinue => 'Google ৰ সৈতে আগবাঢ়ক';

  @override
  String get helpDialogueImportDesc =>
      'JSON ফাইল হিচাপে সম্পূৰ্ণ বাৰ্তালাপৰ এটা সংহতি ইম্প’ৰ্ট কৰক।';

  @override
  String get helpDialogueImportDetails =>
      '• JSON গঠন: `এন্ট্ৰী`ৰ পৰিৱৰ্তে `ডাইলগ` এৰে ব্যৱহাৰ কৰক\n• স্বয়ংক্ৰিয় পুনৰুদ্ধাৰ: বাৰ্তালাপৰ শিৰোনাম, ব্যক্তি, বাৰ্তাৰ ক্ৰম পুনৰুদ্ধাৰ কৰা হৈছে।\n• অৱস্থান: ইম্প’ৰ্ট কৰা বাৰ্তালাপ এআই চেট মোডৰ ‘ইতিহাস’ টেবত দৃশ্যমান হ’ব।';

  @override
  String get helpJsonDesc =>
      'মোড 3 ত ব্যৱহাৰ কৰিবলৈ JSON ফাইল হিচাপে শিকন সামগ্ৰী ইম্প’ৰ্ট কৰিবলৈ, নিম্নলিখিত বিন্যাস ব্যৱহাৰ কৰক:';

  @override
  String get helpJsonTypeDialogue => 'কথা-বতৰা (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'বাক্য (Sentence)';

  @override
  String get helpJsonTypeWord => 'শব্দ (Word)';

  @override
  String get helpMode1Desc =>
      'এটাৰ প্ৰিমিয়াম 3D মাইক্ৰ\'ফোন আৰু ডাঙৰ কিবৰ্ড আইকনৰ সহায়ত ভাষা শিকাৰ আটাইতকৈ সহজ উপায়টো আৰম্ভ কৰক।';

  @override
  String get helpMode1Details =>
      '• ভাষা ছেটিং: হোম স্ক্ৰীণৰ শীৰ্ষত থকা ভাষা বুটামৰ সৈতে আপোনাৰ ভাষা আৰু আপুনি শিকা ভাষা পৰীক্ষা কৰক, আৰু শিকা ভাষা সলনি কৰিব পাৰে।\n• সহজ ইনপুট: কেন্দ্ৰত থকা ডাঙৰ মাইক্ৰোফোন আৰু পাঠ্য উইণ্ডোৰ জৰিয়তে ততালিকে ইনপুট কৰক।\n• ছেটিং পৰীক্ষা কৰক: আপুনি ইনপুট কৰাৰ পিছত, সোঁফালে থকা নীলা চেকবক্স বুটাম টিপক। এটা বিশদ ছেটিং উইণ্ডো দেখা যাব।\n• বিশদ ছেটিং: আপুনি ডাইলগ বক্সত সংৰক্ষণ কৰিবলৈ ডাটা সংগ্ৰহ, টোকা (মেমো), আৰু টেগ নিৰ্ধাৰণ কৰিব পাৰে।\n• এতিয়া অনুবাদ কৰক: ছেটিং সম্পূৰ্ণ কৰাৰ পিছত, সেউজীয়া অনুবাদ বুটাম টিপিলে কৃত্ৰিম বুদ্ধিমত্তাই ততালিকে অনুবাদ কৰিব।\n• স্বয়ংক্ৰিয় সন্ধান: ইনপুট কৰাৰ সময়ত, ই ৰিয়েল টাইমত একে ধৰণৰ বিদ্যমান অনুবাদ ধৰা পেলায় আৰু দেখুৱায়।\n• শুনক আৰু সংৰক্ষণ কৰক: অনুবাদ ফলাফলৰ তলত থকা স্পীকাৰ আইকনৰ সৈতে উচ্চাৰণ শুনক, আৰু \'ডাটা সংৰক্ষণ কৰক\'ৰ জৰিয়তে আপোনাৰ শিকাৰ তালিকাত যোগ দিয়ক।';

  @override
  String get helpMode2Desc =>
      'সংৰক্ষিত বাক্যবোৰ পুনৰীক্ষণ কৰক আৰু স্বয়ংক্ৰিয়ভাৱে লুকুৱাই থোৱা বৈশিষ্ট্যৰ সৈতে আপুনি মনত ৰাখিছেনে নাই সেইটো পৰীক্ষা কৰক।';

  @override
  String get helpMode2Details =>
      '• সংগ্ৰহণ নিৰ্বাচন কৰক: ওপৰৰ সোঁ মেনু(⋮)ৰ পৰা \'শিকা সামগ্ৰীৰ সংগ্ৰহণ নিৰ্বাচন কৰক\' বা \'অনলাইন সংগ্ৰহালয়\' ব্যৱহাৰ কৰক\n• কাৰ্ড ফ্লিপ কৰক: অনুবাদ চাবলৈ \'দেখুৱাওক/লুকুৱাওক\'\n• শুনক: উচ্চাৰণ পুনৰ প্লে\' কৰিবলৈ স্পীকাৰ আইকন\n• শিকা সম্পূৰ্ণ কৰা হ’ল: এটা চেকেৰে(V) শিকা সম্পূৰ্ণ কৰা হ’ল বুলি চিহ্নিত কৰক\n• মচি দিয়ক: ৰেকৰ্ড মচিবলৈ কাৰ্ডখন দীঘলীয়াকৈ টিপি ধৰক (লং ক্লিক)\n• সন্ধান আৰু ফিল্টাৰ: সন্ধান বাৰ (ৰিয়েল-টাইম স্মাৰ্ট সন্ধান) আৰু টেগ, আৰম্ভণি আখৰৰ ফিল্টাৰ সমৰ্থিত';

  @override
  String get helpMode3Desc =>
      'এটা শুনি বাক্যবোৰ দোহাৰি (শ্বেডৱিং) উচ্চাৰণৰ অনুশীলন কৰক।';

  @override
  String get helpMode3Details =>
      '• সামগ্ৰী নিৰ্বাচন: শিকিবলৈ এটা সামগ্ৰী সংকলন নিৰ্বাচন কৰক\n• সময় নিৰ্ধাৰণ: বাক্যৰ মাজত অপেক্ষাৰ সময় এডজাষ্ট কৰিবলৈ [-] [+] বুটাম (3 চেকেণ্ড – 60 চেকেণ্ড)\n• আৰম্ভ/বন্ধ: শ্বেড’ইং ছেচন নিয়ন্ত্ৰণ কৰক\n• কোৱা: কথাবোৰ শুনক আৰু পুনৰাবৃত্তি কৰক\n• ফীডবেক: সঠিকতাৰ নম্বৰ (0-100) আৰু ৰং প্ৰদৰ্শন\n• সন্ধানৰ চৰ্তসমূহ: টেগ, শেহতীয়া আইটেম, আৰম্ভণিৰ আখৰৰ দ্বাৰা অনুশীলন লক্ষ্য ফিল্টাৰ কৰা';

  @override
  String get helpModeChatDesc =>
      'এআই ব্যক্তিত্বৰ সৈতে কথা পাতি বাস্তৱিক কথোপকথনৰ অনুশীলন কৰক।';

  @override
  String get helpModeChatDetails =>
      '• এআই চেটিং: তলৰ টেবলৈ ‘চেটিং’ মেনুৰ পৰা ব্যক্তিত্বৰ সৈতে অনুশীলন কৰক\n• ব্যক্তিত্বৰ ছেটিং: বিপৰীত লিংগ, নাম, ভাষাৰ ক’ড ইচ্ছামতে নিৰ্ধাৰণ কৰক\n• জিপিএছ পৰিস্থিতি: বৰ্তমানৰ মোৰ অৱস্থান চিনাক্ত কৰি স্থানৰ সৈতে খাপ খোৱা কথোপকথনৰ বিষয়ৰ পৰামৰ্শ দিয়ক\n• ২টা ভাষা: এআইৰ উত্তৰ অনুবাদৰ সৈতে প্ৰদৰ্শিত হয় আৰু শিক্ষাৰ প্ৰভাৱ সৰ্বাধিক হয়\n• ৰেকৰ্ড ব্যৱস্থাপনা: পূৰ্বৰ কথোপকথনৰ ইতিহাস ফিল্টাৰ কৰক আৰু কথোপকথনৰ মাজত বিশেষ বাৰ্তা শিক্ষাৰ সামগ্ৰী হিচাপে সংৰক্ষণ কৰক';

  @override
  String get helpTabJson => 'JSON বিন্যাস';

  @override
  String get helpTabModes => 'মোডৰ বিষয়ে';

  @override
  String get helpTabTour => 'অনুভৱ কৰক';

  @override
  String get helpTitle => 'সহায়িকা & নিৰ্দেশনা';

  @override
  String get helpTourDesc =>
      'হাইলাইট কৰা বৃত্তই মূল বৈশিষ্ট্যসমূহৰ মাজেৰে আপোনাক পথ দেখুৱাব।\n(উদাহৰণস্বৰূপে: ইয়াক মচিবলৈ হাইলাইট কৰা বৃত্তই নিৰ্দেশ কৰা কাৰ্ডখন টিপি ধৰি ৰাখিব পাৰি।)';

  @override
  String get hide => 'লুকুৱাওক';

  @override
  String importAdded(int count) {
    return 'যোগ কৰা হ’ল: $countটা';
  }

  @override
  String get importComplete => 'ইম্প’ৰ্ট সম্পূৰ্ণ হ’ল';

  @override
  String get importDuplicateTitleError =>
      'একে শিৰোনামৰ সামগ্ৰী ইতিমধ্যে আছে। শিৰোনাম সলনি কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String importErrorMessage(String error) {
    return 'ফাইল ইম্প’ৰ্ট কৰিবলৈ ব্যৰ্থ:\\n$error';
  }

  @override
  String get importFailed => 'ইম্প’ৰ্ট ব্যৰ্থ হ’ল';

  @override
  String importFile(String fileName) {
    return 'ফাইল: $fileName';
  }

  @override
  String get importJsonFile => 'JSON ফাইল ইম্প’ৰ্ট কৰক';

  @override
  String get importJsonFilePrompt => 'অনুগ্ৰহ কৰি এটা JSON ফাইল ইম্প’ৰ্ট কৰক';

  @override
  String importSkipped(int count) {
    return 'এৰি যোৱা হ’ল: $countটা';
  }

  @override
  String importTotal(int count) {
    return 'মুঠ: $countটা';
  }

  @override
  String get importing => 'ইম্প’ৰ্ট কৰি থকা হৈছে...';

  @override
  String get inputModeTitle => 'ইনপুট';

  @override
  String intervalSeconds(int seconds) {
    return 'সময়: $seconds চেকেণ্ড';
  }

  @override
  String get invalidEmail => 'বৈধ ইমেইল লিখক।';

  @override
  String get kakaoContinue => 'কাকাওৰ সৈতে আগবাঢ়ক';

  @override
  String get labelLangCode => 'ভাষাৰ ক’ড (উদাহৰণস্বৰূপে: en-US, ko-KR)';

  @override
  String get labelName => 'নাম';

  @override
  String get labelNote => 'টোকা';

  @override
  String get labelPOS => 'শব্দৰ অংশ';

  @override
  String get labelRole => 'ভূমিকা';

  @override
  String get labelSentence => 'বাক্য';

  @override
  String get labelSentenceCollection => 'বাক্য সংকলন';

  @override
  String get labelSentenceType => 'বাক্যৰ প্ৰকাৰ';

  @override
  String get labelShowMemorized => 'শেষ';

  @override
  String get labelType => 'প্ৰকাৰ:';

  @override
  String get labelWord => 'শব্দ';

  @override
  String get labelWordbook => 'শব্দৰ তালিকা';

  @override
  String get language => 'ভাষা';

  @override
  String get languageSettings => 'ভাষাৰ ছেটিং';

  @override
  String get languageSettingsTitle => 'ভাষাৰ ছেটিং';

  @override
  String get libTitleFirstMeeting => 'প্ৰথম সাক্ষাৎ';

  @override
  String get libTitleGreetings1 => 'শুভেচ্ছা 1';

  @override
  String get libTitleNouns1 => 'বিশেষ্য 1';

  @override
  String get libTitleVerbs1 => 'ক্ৰিয়া 1';

  @override
  String get listen => 'শুনক';

  @override
  String get listening => 'শুনি থকা হৈছে...';

  @override
  String get loadingParticipants => 'অংশগ্ৰহণকাৰী লোডিং হৈ আছে...';

  @override
  String get location => 'অৱস্থান';

  @override
  String get login => 'লগইন';

  @override
  String get logout => 'লগআউট';

  @override
  String get logoutConfirmMessage =>
      'আপুনি বৰ্তমানৰ ডিভাইচৰ পৰা লগআউট কৰিব বিচাৰেনে?';

  @override
  String get logoutConfirmTitle => 'লগআউট';

  @override
  String get male => 'পুৰুষ';

  @override
  String get manageParticipants => 'অংশগ্ৰহণকাৰী পৰিচালনা কৰক';

  @override
  String get manual => 'হাতেৰে লিখা';

  @override
  String get markAsStudied => 'অধ্যয়ন হিচাপে চিহ্নিত কৰক';

  @override
  String get materialInfo => 'সামগ্ৰীৰ তথ্য';

  @override
  String get me => 'মই';

  @override
  String get menuDeviceImport => 'ডিভাইচৰ পৰা সামগ্ৰী ইম্প’ৰ্ট কৰক';

  @override
  String get menuHelp => 'সহায়িকা';

  @override
  String get menuLanguageSettings => 'ভাষাৰ ছেটিংছ';

  @override
  String get menuOnlineLibrary => 'অনলাইন লাইব্ৰেৰী';

  @override
  String get menuSelectMaterialSet => 'এটা শিকন সামগ্ৰী সংকলন নিৰ্বাচন কৰক';

  @override
  String get menuSettings => 'ভাষাৰ ছেটিং';

  @override
  String get menuTutorial => 'টিউট’ৰিয়েল';

  @override
  String get menuWebDownload => 'মুখ্য পৃষ্ঠা';

  @override
  String get metadataDialogTitle => 'বিৱৰণমূলক শ্ৰেণীবিভাজন';

  @override
  String get metadataFormType => 'ব্যাকৰণৰ ৰূপ';

  @override
  String get metadataRootWord => 'মূল শব্দ (Root Word)';

  @override
  String get micButtonTooltip => 'ভয়েচ চিনি পোৱা আৰম্ভ কৰক';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'বৰ্তমান নিৰ্বাচিত সামগ্ৰী সংকলন: $name';
  }

  @override
  String get mode2Title => 'পুনৰীক্ষণ';

  @override
  String get mode3Next => 'পৰৱৰ্তী';

  @override
  String get mode3Start => 'আৰম্ভ';

  @override
  String get mode3Stop => 'বন্ধ';

  @override
  String get mode3TryAgain => 'পুনৰ চেষ্টা কৰক';

  @override
  String get mySentenceCollection => 'মোৰ বাক্য সংগ্ৰহ';

  @override
  String get myWordbook => 'মোৰ শব্দ তালিকা';

  @override
  String get neutral => 'উদাসীন';

  @override
  String get newSubjectName => 'নতুন শব্দভাণ্ডাৰ/বাক্যাংশৰ সংগ্ৰহৰ নাম';

  @override
  String get next => 'পৰৱৰ্তী';

  @override
  String get noDialogueHistory => 'কোনো কথা-বতৰাৰ ইতিহাস নাই।';

  @override
  String get noInternetWarningMic =>
      'ইণ্টাৰনেট সংযোগ নাই। অফলাইনত থকা অৱস্থাত ভইচ ৰিকগনিচন উপলব্ধ নহ’বও পাৰে।';

  @override
  String get noInternetWarningTranslate =>
      'ইণ্টাৰনেট সংযোগ নাই। অফলাইনত থকা অৱস্থাত অনুবাদৰ সুবিধা উপলব্ধ নহ’ব। অনুগ্ৰহ কৰি পুনৰীক্ষণ মোড ব্যৱহাৰ কৰক।';

  @override
  String get noMaterialsInCategory => 'এই শ্ৰেণীত কোনো সামগ্ৰী নাই।';

  @override
  String get noParticipantsFound => 'কোনো অংশগ্ৰহণকাৰী পোৱা নগ’ল।';

  @override
  String get noRecords => 'নিৰ্বাচিত ভাষাৰ বাবে কোনো শিকন ৰেকৰ্ড নাই';

  @override
  String get noStudyMaterial => 'কোনো শিকন সামগ্ৰী নাই।';

  @override
  String get noTextToPlay => 'প্লে’ কৰিবলৈ কোনো টেক্সট নাই';

  @override
  String get noTranslationToSave => 'সংৰক্ষণ কৰিবলৈ কোনো অনুবাদ নাই';

  @override
  String get noVoiceDetected => 'কোনো মাত ধৰা পৰা নাই';

  @override
  String get notSelected => '- নিৰ্বাচিত কৰা হোৱা নাই -';

  @override
  String get onlineLibraryCheckInternet =>
      'অনুগ্রহ কৰি আপোনাৰ ইণ্টাৰনেট সংযোগ পৰীক্ষা কৰক বা পিছত পুনৰ চেষ্টা কৰক।';

  @override
  String get onlineLibraryLoadFailed => 'সামগ্ৰী লোড কৰাত ব্যৰ্থ হ’ল।';

  @override
  String get onlineLibraryNoMaterials => 'সামগ্ৰী উপলব্ধ নহয়।';

  @override
  String get participantDeleted => 'অংশগ্ৰহণকাৰীক মচি পেলোৱা হ’ল।';

  @override
  String get participantRename => 'অংশগ্ৰহণকাৰীৰ নাম সলনি কৰক';

  @override
  String get partner => 'সংগী';

  @override
  String get partnerMode => 'সংগী মোড';

  @override
  String get password => 'পাছৱৰ্ড';

  @override
  String get passwordTooShort => 'পাছৱৰ্ড ৬টা আখৰৰ হ’ব লাগে।';

  @override
  String get perfect => 'নিখুঁত!';

  @override
  String get personaFriend => 'স্থানীয় বন্ধু';

  @override
  String get personaGuide => 'ভ্ৰমণ পৰিদৰ্শক';

  @override
  String get personaTeacher => 'ইংৰাজী শিক্ষক';

  @override
  String get playAgain => 'পুনৰ খেলক';

  @override
  String playbackFailed(String error) {
    return 'প্লে’বেক ব্যৰ্থ হ’ল: $error';
  }

  @override
  String get playing => 'প্লে’ কৰি থকা হৈছে...';

  @override
  String get posAdjective => 'বিশেষণ';

  @override
  String get posAdverb => 'ক্ৰিয়া-বিশেষণ';

  @override
  String get posConjunction => 'সংযোজক';

  @override
  String get posInterjection => 'বিস্ময়বোধক';

  @override
  String get posNoun => 'বিশেষ্য';

  @override
  String get posPreposition => 'প্ৰিপ’জিচন';

  @override
  String get posPronoun => 'সৰ্বনাম';

  @override
  String get posVerb => 'ক্ৰিয়া';

  @override
  String get practiceModeTitle => 'অনুশীলন';

  @override
  String get practiceWordsOnly => 'কেৱল শব্দৰ অনুশীলন কৰক';

  @override
  String progress(int current, int total) {
    return 'প্ৰগতি: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'শেহতীয়াকৈ সৃষ্টি কৰা $count টা আইটেম চাওক';
  }

  @override
  String recognitionFailed(String error) {
    return 'ভয়েচ চিনি পোৱাত ব্যৰ্থ: $error';
  }

  @override
  String get recognized => 'চিনাক্ত কৰা হ’ল';

  @override
  String get recognizedText => 'চিনাক্ত কৰা উচ্চাৰণ:';

  @override
  String get recordDeleted => 'ৰেকৰ্ড মচি পেলোৱা হ’ল';

  @override
  String get refresh => 'নতুন কৰক';

  @override
  String get reset => 'ঘূৰাই আনক';

  @override
  String get resetPracticeHistory => 'অনুশীলনৰ ইতিহাস ঘূৰাই আনক';

  @override
  String get retry => 'পুনৰ চেষ্টা কৰিব?';

  @override
  String get reviewAll => 'সকলোবোৰ পুনৰীক্ষণ কৰক';

  @override
  String reviewCount(int count) {
    return 'পুনৰীক্ষণ $count বাৰ';
  }

  @override
  String get reviewModeTitle => 'পুনৰীক্ষণ';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'তৃতীয় পক্ষ';

  @override
  String get roleUser => 'ব্যৱহাৰকাৰী';

  @override
  String get save => 'সংৰক্ষণ কৰক';

  @override
  String get saveData => 'ডাটা সংৰক্ষণ কৰক';

  @override
  String saveFailed(String error) {
    return 'সংৰক্ষণ ব্যৰ্থ হ’ল: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'অনুসন্ধান মোডৰ পৰা অনুবাদ সংৰক্ষণ কৰিবলৈ চেষ্টা কৰক';

  @override
  String get saved => 'সংৰক্ষণ কৰা হ’ল';

  @override
  String get saving => 'সংৰক্ষণ কৰি থকা হৈছে...';

  @override
  String score(String score) {
    return 'সঠিকতা: $score%';
  }

  @override
  String get scoreLabel => 'স্ক’ৰ';

  @override
  String get search => 'সন্ধান';

  @override
  String get searchConditions => 'সন্ধানৰ চৰ্ত';

  @override
  String get searchSentenceHint => 'বাক্য সন্ধান...';

  @override
  String get searchWordHint => 'শব্দ সন্ধান...';

  @override
  String get sectionSentence => 'বাক্য শাখাটো';

  @override
  String get sectionSentences => 'বাক্য';

  @override
  String get sectionWord => 'শব্দ শাখাটো';

  @override
  String get sectionWords => 'শব্দ';

  @override
  String get selectExistingSubject => 'পূৰ্বৰ নাম বাছক';

  @override
  String get selectMaterialPrompt =>
      'অনুগ্ৰহ কৰি এটা শিকন সামগ্ৰী নিৰ্বাচন কৰক';

  @override
  String get selectMaterialSet => 'এটা শিকন সামগ্ৰী সংকলন নিৰ্বাচন কৰক';

  @override
  String get selectPOS => 'এটা কথাৰ অংশ নিৰ্বাচন কৰক';

  @override
  String get selectParticipants => 'অংশগ্ৰহণকাৰী নিৰ্বাচন কৰক';

  @override
  String get selectSentenceType => 'বাক্যৰ প্ৰকাৰ নিৰ্বাচন কৰক';

  @override
  String get selectStudyMaterial => 'অধ্যয়ন সামগ্ৰী নিৰ্বাচন কৰক';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'বাক্য';

  @override
  String get signUp => 'ছাইন আপ';

  @override
  String get similarTextFound => 'একে ধৰণৰ টেক্সট পোৱা গ’ল';

  @override
  String get skip => 'এৰাই যাওক';

  @override
  String get source => 'উৎস:';

  @override
  String get sourceLanguage => 'উৎস ভাষা';

  @override
  String get sourceLanguageLabel => 'মোৰ ভাষা (উৎস)';

  @override
  String get speakNow => 'এতিয়া কওক!';

  @override
  String get speaker => 'বক্তা';

  @override
  String get speakerSelect => 'বক্তা নিৰ্বাচন কৰক';

  @override
  String get speakingPractice => 'কথাৰ অনুশীলন';

  @override
  String get startChat => 'কথা-বতৰা আৰম্ভ কৰক';

  @override
  String get startPractice => 'অনুশীলন আৰম্ভ কৰক';

  @override
  String get startTutorial => 'টিউটোৰিয়েল আৰম্ভ কৰক';

  @override
  String get startWarning => 'সতৰ্কবাণী';

  @override
  String get startsWith => 'আৰম্ভণি আখৰ';

  @override
  String get statusCheckEmail =>
      'অনুগ্রহ কৰি আপোনাৰ ইমেইল পৰীক্ষা কৰি প্ৰমাণীকৰণ সম্পূৰ্ণ কৰক।';

  @override
  String statusDownloading(Object name) {
    return 'ডাউনলোড হৈ আছে: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'ইম্পৰ্ট ব্যৰ্থ: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name ইম্পৰ্ট সফল হ’ল';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'লগইন বাতিল কৰা হ’ল।';

  @override
  String statusLoginFailed(Object error) {
    return 'লগইন ব্যৰ্থ: $error';
  }

  @override
  String get statusLoginSuccess => 'লগইন সফল হ’ল।';

  @override
  String get statusLogoutSuccess => 'লগআউট হ’ল।';

  @override
  String statusSignUpFailed(Object error) {
    return 'ছাইন আপ ব্যৰ্থ: $error';
  }

  @override
  String get statusSigningUp => 'ছাইন আপ হৈ আছে...';

  @override
  String get stopPractice => 'অনুশীলন বন্ধ কৰক';

  @override
  String get studyComplete => 'অধ্যয়ন সম্পূৰ্ণ';

  @override
  String studyRecords(int count) {
    return 'অধ্যয়নৰ ৰেকৰ্ডসমূহ ($count)';
  }

  @override
  String get styleFormal => 'আনুষ্ঠানিক';

  @override
  String get styleInformal => 'অনানুষ্ঠানিক';

  @override
  String get stylePolite => 'ভদ্ৰ';

  @override
  String get styleSlang => 'অপ্ৰচলিত শব্দ/ঠাঁচ';

  @override
  String get subject => 'বিষয়:';

  @override
  String get swapLanguages => 'ভাষা সলনি কৰক';

  @override
  String get switchToAi => 'এআই মোডলৈ সলনি কৰক';

  @override
  String get switchToPartner => 'সংগী মোডলৈ সলনি কৰক';

  @override
  String get syncingData => 'তথ্য ছিংক্ৰ’নাইজ হৈ আছে...';

  @override
  String get tabConversation => 'কথা-বতৰা';

  @override
  String tabReview(int count) {
    return 'পুনৰীক্ষণ ($count)';
  }

  @override
  String get tabSentence => 'বাক্য';

  @override
  String get tabSpeaking => 'কথা';

  @override
  String tabStudyMaterial(int count) {
    return 'অধ্যয়ন সামগ্ৰী ($count)';
  }

  @override
  String get tabWord => 'শব্দ';

  @override
  String get tagFormal => 'আনুষ্ঠানিক';

  @override
  String get tagSelection => 'টেগ নিৰ্বাচন';

  @override
  String get targetLanguage => 'লক্ষ্য ভাষা';

  @override
  String get targetLanguageFilter => 'লক্ষ্য ভাষাৰ ফিল্টাৰ:';

  @override
  String get targetLanguageLabel => 'শিকা ভাষা (লক্ষ্য)';

  @override
  String get thinkingTimeDesc => 'সঠিক উত্তৰ প্ৰকাশ কৰাৰ আগতে ভাবিবলৈ সময়।';

  @override
  String get thinkingTimeInterval => 'প্লেবেকৰ সময়ৰ ব্যৱধান';

  @override
  String get timeUp => 'সময় শেষ!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'শিৰোনাম টেগ (সংগ্ৰহ)';

  @override
  String get tooltipDecrease => 'কম কৰক';

  @override
  String get tooltipIncrease => 'বঢ়াওক';

  @override
  String get tooltipSearch => 'সন্ধান';

  @override
  String get tooltipSpeaking => 'কথা';

  @override
  String get tooltipStudyReview => 'অধ্যয়ন+পুনৰীক্ষণ';

  @override
  String totalRecords(int count) {
    return 'মুঠ $count টা ৰেকৰ্ড (সকলো দেখুৱাওক)';
  }

  @override
  String get translate => 'অনুবাদ';

  @override
  String get translating => 'অনুবাদ কৰি থকা হৈছে...';

  @override
  String get translation => 'অনুবাদ';

  @override
  String get translationComplete => 'অনুবাদ সম্পূৰ্ণ (সংৰক্ষণ কৰিব লাগিব)';

  @override
  String translationFailed(String error) {
    return 'অনুবাদ ব্যৰ্থ হ’ল: $error';
  }

  @override
  String get translationLimitExceeded => 'অনুবাদৰ সীমা অতিক্ৰম কৰা হ’ল';

  @override
  String get translationLimitMessage =>
      'আপুনি আপোনাৰ দৈনিক বিনামূলীয়া অনুবাদ (5 বাৰ) ব্যৱহাৰ কৰিছে।\\n\\nআপুনি এটা বিজ্ঞাপন চাই তাৎক্ষণিকভাবে 5 বাৰলৈ ৰিফিল কৰিব বিচাৰেনে?';

  @override
  String get translationLoaded => 'সংৰক্ষিত অনুবাদ লোড কৰা হ’ল';

  @override
  String get translationRefilled =>
      'আপোনাৰ অনুবাদৰ সংখ্যা 5 বাৰলৈ ৰিফিল কৰা হৈছে!';

  @override
  String get translationResultHint => 'অনুবাদৰ ফলাফল - সম্পাদনা কৰিব পৰা যায়';

  @override
  String get tryAgain => 'পুনৰ চেষ্টা কৰক';

  @override
  String get tutorialAiChatDesc =>
      'এটা এআই ব্যক্তিৰ সৈতে বাস্তৱিক জীৱনৰ বাৰ্তালাপৰ অনুশীলন কৰক।';

  @override
  String get tutorialAiChatTitle => 'এআই চ্যাটিং';

  @override
  String get tutorialContextDesc =>
      'একেটা বাক্য হ’লেও পৰিস্থিতি (যেনে: ৰাতিপুৱা, গধূলি) লিখিলে সুকীয়াভাৱে সংৰক্ষণ কৰিব পাৰি।';

  @override
  String get tutorialContextTitle => 'পৰিস্থিতি/প্ৰসংগ টেগ';

  @override
  String get tutorialLangSettingsDesc =>
      'অনুবাদ কৰিবলৈ উৎস ভাষা আৰু লক্ষ্য ভাষা নিৰ্ধাৰণ কৰক।';

  @override
  String get tutorialLangSettingsTitle => 'ভাষাৰ ছেটিং';

  @override
  String get tutorialM1ToggleDesc => 'ইয়াত শব্দ আৰু বাক্য মোড সলনি কৰক।';

  @override
  String get tutorialM1ToggleTitle => 'শব্দ/বাক্য মোড';

  @override
  String get tutorialM2DropdownDesc =>
      'আপুনি শীৰ্ষ মেনুৰ জৰিয়তে শিকিবলৈ সামগ্ৰী নিৰ্বাচন কৰিব পাৰে।';

  @override
  String get tutorialM2ImportDesc =>
      'আপোনাৰ ডিভাইচৰ এটা ফোল্ডাৰৰ পৰা JSON ফাইল ইম্প’ৰ্ট কৰক।';

  @override
  String get tutorialM2ListDesc =>
      'এই কাৰ্ডখন টিপি ধৰি (দীঘলীয়া ক্লিক) মচিব পাৰি। সংৰক্ষিত বাক্য পৰীক্ষা কৰক আৰু লুটিয়াই চাওক।';

  @override
  String get tutorialM2ListTitle => 'শিকন তালিকা';

  @override
  String get tutorialM2SearchDesc =>
      'সংৰক্ষিত শব্দ আৰু বাক্যসমূহ বিচাৰি উলিয়াই দ্ৰুতভাৱে বিচাৰি পাব পাৰি।';

  @override
  String get tutorialM2SelectDesc =>
      'শিকিবলৈ সামগ্ৰী সংকলন নিৰ্বাচন কৰিবলৈ শীৰ্ষ এপবাৰৰ সামগ্ৰী সংকলন আইকন (📚) টিপক।';

  @override
  String get tutorialM2SelectTitle => 'সামগ্ৰী নিৰ্বাচন';

  @override
  String get tutorialM3IntervalDesc => 'বাক্যৰ মাজৰ সময় এডজাষ্ট কৰক।';

  @override
  String get tutorialM3IntervalTitle => 'সময় নিৰ্ধাৰণ';

  @override
  String get tutorialM3ResetDesc =>
      'প্ৰগতি আৰু সঠিকতাৰ স্ক’ৰ ঘূৰাই আনক আৰু পুনৰ আৰম্ভ কৰক।';

  @override
  String get tutorialM3ResetTitle => 'ইতিহাস ঘূৰাই আনক';

  @override
  String get tutorialM3SelectDesc =>
      'অনুশীলন কৰিবলৈ সামগ্ৰী সংকলন নিৰ্বাচন কৰিবলৈ শীৰ্ষ এপবাৰৰ সামগ্ৰী সংকলন আইকন (📚) টিপক।';

  @override
  String get tutorialM3SelectTitle => 'সামগ্ৰী নিৰ্বাচন';

  @override
  String get tutorialM3StartDesc =>
      'মাতৃভাষীৰ কথা শুনিবলৈ আৰু পুনৰাবৃত্তি কৰিবলৈ প্লে’ বুটাম টিপক।';

  @override
  String get tutorialM3StartTitle => 'অনুশীলন আৰম্ভ কৰক';

  @override
  String get tutorialM3WordsDesc =>
      'চেক কৰিলে কেৱল সংৰক্ষিত শব্দৰ অনুশীলন কৰা হ’ব।';

  @override
  String get tutorialM3WordsTitle => 'শব্দৰ অনুশীলন';

  @override
  String get tutorialMicDesc => 'ভয়েচেৰে লিখিবলৈ মাইক্ৰ’ফোন বুটাম টিপক।';

  @override
  String get tutorialMicTitle => 'ভয়েচ ইনপুট';

  @override
  String get tutorialSaveDesc =>
      'অনূদিত ফলাফল আপোনাৰ শিকন ৰেকৰ্ডত সংৰক্ষণ কৰক।';

  @override
  String get tutorialSaveTitle => 'সংৰক্ষণ কৰক';

  @override
  String get tutorialSwapDesc => 'মোৰ ভাষা আৰু শিকা ভাষা সলনা-সলনি কৰক।';

  @override
  String get tutorialTabDesc => 'ইয়াত আপুনি বিচৰা শিকন মোড নিৰ্বাচন কৰিব পাৰে।';

  @override
  String get tutorialTapToContinue => 'আগবাঢ়িবলৈ স্ক্ৰীণত টিপক';

  @override
  String get tutorialTransDesc => 'লিখা টেক্সট অনুবাদ কৰক।';

  @override
  String get tutorialTransTitle => 'অনুবাদ কৰক';

  @override
  String get typeExclamation => 'বিস্ময়বোধক';

  @override
  String get typeImperative => 'আদেশমূলক';

  @override
  String get typeQuestion => 'প্ৰশ্ন';

  @override
  String get typeStatement => 'বিবৃতি';

  @override
  String get usageLimitTitle => 'সীমা উপনীত';

  @override
  String get useExistingText => 'বৰ্তমানৰ টেক্সট ব্যৱহাৰ কৰক';

  @override
  String get viewOnlineGuide => 'অনলাইন গাইড চাওক';

  @override
  String get voluntaryTranslations => 'স্বেচ্ছামূলক অনুবাদ';

  @override
  String get watchAdAndRefill => 'বিজ্ঞাপন চাওক আৰু ৰিফিল কৰক (+5 বাৰ)';

  @override
  String get word => 'শব্দ';

  @override
  String get wordDefenseDesc => 'শত্ৰু অহাৰ আগতে শব্দ কৈ ঘাটি ৰক্ষা কৰক।';

  @override
  String get wordDefenseTitle => 'শব্দ ৰক্ষা';

  @override
  String get wordModeLabel => 'শব্দ মোড';

  @override
  String get yourPronunciation => 'আপোনাৰ উচ্চাৰণ';

  @override
  String get ttsUnsupportedNatively =>
      'এই ডিভাইচৰ ডিফল্ট ছেটিংসমূহে এই ভাষাৰ বাবে কণ্ঠৰ আউটপুট সমৰ্থন নকৰে।';

  @override
  String get homeTab => 'অনুবাদ';

  @override
  String get welcomeTitle => 'Talkie-লৈ স্বাগতম!';

  @override
  String get welcomeDesc =>
      'Talkie লৈ স্বাগতম! আমি বিশ্বৰ 80 তকৈও অধিক ভাষাক 100% সত্যতাৰে সমৰ্থন কৰোঁ, আৰু নতুন প্ৰিমিয়াম 3D ডিজাইন আৰু অনুকূলিত প্ৰদৰ্শনেৰে এক নিখুঁত শিক্ষাৰ অভিজ্ঞতা প্ৰদান কৰোঁ।';

  @override
  String get welcomeButton => 'আৰম্ভ কৰক';

  @override
  String get labelDetails => 'বিৱৰণসমূহ';

  @override
  String get translationResult => 'অনুবাদৰ ফলাফল';

  @override
  String get inputContent => 'ইনপুট সমল';

  @override
  String get translateNow => 'এতিয়াই অনুবাদ কৰক';

  @override
  String get tooltipSettingsConfirm => 'সংস্থাপন নিশ্চিত কৰক';

  @override
  String get hintNoteExample =>
      'উদাহৰণ: পৰিস্থিতিৰ ব্যাখ্যা, একে অৰ্থৰ শব্দ আদি';

  @override
  String get hintTagExample => 'উদাহৰণ: ব্যৱসায়, ভ্ৰমণ...';

  @override
  String get addNew => 'নতুন যোগ কৰক';

  @override
  String get newNotebookTitle => 'নতুন নোটবুকৰ নাম';

  @override
  String get enterNameHint => 'নাম লিখক';

  @override
  String get add => 'যোগ কৰক';

  @override
  String get openSettings => 'সংস্থাপন খোলক';

  @override
  String get helpNotebook =>
      'অনুবাদিত ফলাফলসমূহ সুৰক্ষিত কৰিবলৈ এটা ফোল্ডাৰ নিৰ্ব্বাচন কৰক।';

  @override
  String get helpNote =>
      'শব্দৰ অৰ্থ বা উদাহৰণ, পৰিস্থিতি আদিৰ দৰে আপুনি যিকোনো কথা ইয়াত লিখিব পাৰে।';

  @override
  String get helpTag => ' পিছত শ্ৰেণীবিভাজন বা সন্ধান কৰিবলৈ কিৱৰ্ডসমূহ লিখক।';

  @override
  String get requestTranslation => 'অনুবাদৰ বাবে অনুৰোধ কৰক';

  @override
  String get statusRequestSuccess => 'অনুবাদৰ বাবে কৰা অনুৰোধ সফল হৈছে।';

  @override
  String statusRequestFailed(String error) {
    return 'অনুবাদৰ বাবে কৰা অনুৰোধ ব্যৰ্থ: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'অধ্যয়নৰ ভাষা সমৰ্থিত নহয়';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'আপুনি নিৰ্বাচন কৰা সামগ্ৰীটোৱে বৰ্তমানৰ অধ্যয়নৰ ভাষা ($targetLang) সমৰ্থন নকৰে, সেয়ে ইয়াক স্থানীয়ভাৱে সংৰক্ষণ কৰিব নোৱাৰি। আপুনি অনুবাদৰ বাবে অনুৰোধ কৰিব বিচাৰেনে?';
  }
}

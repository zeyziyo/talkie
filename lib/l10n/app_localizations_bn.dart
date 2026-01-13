// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

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
  String get helpJsonDesc => 'মোড ৩-এ আমদানির জন্য, JSON তৈরি করুন:';

  @override
  String get helpTourDesc =>
      'প্রধান বৈশিষ্ট্যগুলি শিখতে ইন্টারেক্টিভ ট্যুর শুরু করুন।';

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
  String get tutorialM2ListDesc => 'আপনার কার্ডগুলি পরীক্ষা করুন এবং উল্টান।';

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
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';
}

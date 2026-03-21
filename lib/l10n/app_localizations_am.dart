// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get basicWords => 'መሠረታዊ የቃላት ማከማቻ';

  @override
  String get inputLanguage => 'የግቤት ቋንቋ';

  @override
  String get translationLanguage => 'የትርጉም ቋንቋ';

  @override
  String get simplifiedGuidance =>
      'የዕለት ተዕለት ንግግሮችን በቅጽበት ወደ የውጭ ቋንቋ ይለውጡ! ቶኪ የቋንቋ ሕይወትዎን ይመዘግባል።';

  @override
  String get noDataForLanguage =>
      'የተመረጠው ቋንቋ ትምህርት መረጃ በአካባቢው DB ውስጥ የለም። እባክዎ መረጃውን ያውርዱ ወይም ሌላ ቋንቋ ይምረጡ።';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'ይቅር';

  @override
  String get accuracy => 'ትክክለኛነት';

  @override
  String get ttsMissing => 'የዚህ ቋንቋ የድምፅ ሞተር በመሣሪያዎ ላይ አልተጫነም።';

  @override
  String get ttsInstallGuide =>
      'እባክዎ በAndroid ቅንብሮች > Google TTS ውስጥ ተገቢውን የቋንቋ ውሂብ ይጫኑ።';

  @override
  String get adLoading => 'ማስታወቂያ እየተጫነ ነው። እባክዎ ቆይተው እንደገና ይሞክሩ።';

  @override
  String get addNewSubject => 'አዲስ ርዕስ ያክሉ';

  @override
  String get addParticipant => 'ተሳታፊ ጨምር';

  @override
  String get addTagHint => 'መለያ ያክሉ...';

  @override
  String get alreadyHaveAccount => 'ቀድሞውኑ መለያ አለዎት?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'ራስ-አጫውት';

  @override
  String get basic => 'መሠረታዊ';

  @override
  String get basicDefault => 'መሠረታዊ';

  @override
  String get basicMaterialRepository => 'መሠረታዊ የዓረፍተ ነገር/የቃላት መዝገብ';

  @override
  String get basicSentenceRepository => 'መሠረታዊ የዓረፍተ ነገር ማከማቻ';

  @override
  String get basicSentences => 'መሠረታዊ የዓረፍተ ነገር ማከማቻ';

  @override
  String get basicWordRepository => 'መሠረታዊ የቃላት ማከማቻ';

  @override
  String get caseObject => 'ነገር';

  @override
  String get casePossessive => 'ባለቤት';

  @override
  String get casePossessivePronoun => 'ባለቤት ተውላጠ ስም';

  @override
  String get caseReflexive => 'ተገላቢጦሽ';

  @override
  String get caseSubject => 'ርዕሰ ጉዳይ';

  @override
  String get chatAiChat => 'ቻት';

  @override
  String get chatAllConversations => 'ሁሉም ንግግሮች';

  @override
  String get chatChoosePersona => 'ባሕርይ ምረጥ';

  @override
  String get chatEndMessage => 'ውይይቱን ማቆም ይፈልጋሉ?';

  @override
  String get chatEndTitle => 'ውይይት ጨርስ እና አስቀምጥ';

  @override
  String chatFailed(Object error) {
    return 'ውይይት አልተሳካም: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'ውይይት ተወስዷል ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'የውይይት ታሪክ';

  @override
  String get chatNew => 'አዲስ ውይይት';

  @override
  String get chatNewChat => 'አዲስ ውይይት';

  @override
  String get chatNoConversations => 'ገና ምንም ንግግሮች የሉም';

  @override
  String get chatSaveAndExit => 'አስቀምጥ እና ውጣ';

  @override
  String get chatStartNewPrompt => 'ለመለማመድ አዲስ ውይይት ይጀምሩ!';

  @override
  String get chatTypeHint => 'መልእክትህን አስገባ...';

  @override
  String get chatUntitled => 'ርዕስ የሌለው ውይይት';

  @override
  String get checking => 'በማረጋገጥ ላይ...';

  @override
  String get clearAll => 'ሁሉንም አጽዳ';

  @override
  String get confirm => 'አረጋግጥ';

  @override
  String get confirmDelete => 'ይህን የጥናት መዝገብ መሰረዝ ይፈልጋሉ?';

  @override
  String get confirmDeleteConversation =>
      'ይህን ውይይት መሰረዝ ይፈልጋሉ?\nየተሰረዙ ንግግሮችን መልሶ ማግኘት አይቻልም።';

  @override
  String get confirmDeleteParticipant => 'ይህን ተሳታፊ መሰረዝ ይፈልጋሉ?';

  @override
  String get contextTagHint => 'በኋላ ላይ ለመለየት ቀላል እንዲሆን ሁኔታውን ይፃፉ';

  @override
  String get contextTagLabel => 'አውድ/ሁኔታ (አማራጭ) - ለምሳሌ: የጠዋት ሰላምታ, መደበኛ';

  @override
  String get copiedToClipboard => 'ወደ ቅንጥብ ሰሌዳ ተገልብጧል!';

  @override
  String get copy => 'ቅዳ';

  @override
  String get correctAnswer => 'ትክክለኛ መልስ';

  @override
  String get createNew => 'በአዲስ ዓረፍተ ነገር ይቀጥሉ';

  @override
  String get currentLocation => 'የአሁኑ ሥፍራ';

  @override
  String get currentMaterialLabel => 'በአሁኑ ጊዜ የተመረጠ የውሂብ ስብስብ:';

  @override
  String get delete => 'ሰርዝ';

  @override
  String deleteFailed(String error) {
    return 'ሰርዝ አልተሳካም: $error';
  }

  @override
  String get deleteRecord => 'መዝገብ ሰርዝ';

  @override
  String get dialogueQuestDesc =>
      'በድራማ በኩል የንግግር ልምምድ ያድርጉ። ተገቢውን መልስ ይምረጡ እና ይናገሩ።';

  @override
  String get dialogueQuestTitle => 'የውይይት ተልዕኮ';

  @override
  String get disambiguationPrompt => 'በምን ትርጉም መተርጎም ይፈልጋሉ?';

  @override
  String get disambiguationTitle => 'ትርጉም ይምረጡ';

  @override
  String get dontHaveAccount => 'መለያ የለዎትም?';

  @override
  String get editParticipant => 'ተሳታፊን አርትዕ';

  @override
  String get email => 'ኢሜይል';

  @override
  String get emailAlreadyInUse =>
      'ይህ ኢሜይል ቀድሞውኑ ተመዝግቧል። ይግቡ ወይም የይለፍ ቃልዎን ዳግም ለማስጀመር ይሞክሩ፡፡';

  @override
  String get enterNewSubjectName => 'አዲስ ርዕስ ያስገቡ';

  @override
  String get enterSentenceHint => 'ዓረፍተ ነገር ያስገቡ...';

  @override
  String get enterTextHint => 'ለመተርጎም ጽሑፍ ያስገቡ';

  @override
  String get enterTextToTranslate => 'ለመተርጎም ጽሑፍ ያስገቡ';

  @override
  String get enterWordHint => 'ቃል ያስገቡ...';

  @override
  String get error => 'ስህተት';

  @override
  String get errorHateSpeech => 'የጥላቻ ንግግርን ስላካተተ መተርጎም አይቻልም።';

  @override
  String get errorOtherSafety => 'በ AI ደህንነት መመሪያ ምክንያት ትርጉም ውድቅ ተደርጓል።';

  @override
  String get errorProfanity => 'ብልግናን ስላካተተ መተርጎም አይቻልም።';

  @override
  String get errorSelectCategory => 'መጀመሪያ ቃል ወይም ዓረፍተ ነገር ይምረጡ!';

  @override
  String get errorSexualContent => 'የወሲብ ይዘትን ስላካተተ መተርጎም አይቻልም።';

  @override
  String get errors => 'ስህተቶች:';

  @override
  String get female => 'ሴት';

  @override
  String get file => 'ፋይል:';

  @override
  String get filterAll => 'ሁሉም';

  @override
  String get flip => 'አሳይ';

  @override
  String get formComparative => 'አወዳዳሪ';

  @override
  String get formInfinitive => 'ኢንፊኒቲቭ / የአሁኑ ጊዜ';

  @override
  String get formPast => 'ያለፈ ጊዜ';

  @override
  String get formPastParticiple => 'ያለፈ አካል';

  @override
  String get formPlural => 'ብዙ ቁጥር';

  @override
  String get formPositive => 'አዎንታዊ';

  @override
  String get formPresent => 'የአሁኑ ጊዜ';

  @override
  String get formPresentParticiple => 'የአሁኑ ተካፋይ (ing)';

  @override
  String get formSingular => 'ነጠላ';

  @override
  String get formSuperlative => 'የላቀ';

  @override
  String get formThirdPersonSingular => 'ሶስተኛ ሰው ነጠላ';

  @override
  String get gameModeDesc => 'ለመለማመድ የጨዋታ ሁነታን ይምረጡ';

  @override
  String get gameModeTitle => 'የጨዋታ ሁነታ';

  @override
  String get gameOver => 'ጨዋታው አልቋል';

  @override
  String get gender => 'ፆታ';

  @override
  String get labelFilterMaterial => 'ማጣሪያዎች';

  @override
  String get labelFilterTag => 'መለያዎች';

  @override
  String get generalTags => 'አጠቃላይ መለያዎች';

  @override
  String get getMaterials => 'ቁሳቁሶች ያግኙ';

  @override
  String get good => 'ጥሩ';

  @override
  String get googleContinue => 'በGoogle ቀጥል';

  @override
  String get helpDialogueImportDesc => 'ጠቅላላ የውይይት ስብስብን እንደ JSON ፋይል ያስመጡ።';

  @override
  String get helpDialogueImportDetails =>
      '• JSON መዋቅር: `entries` ከሚለው ይልቅ `dialogues` ድርድር ይጠቀሙ\n• ራስ-ሰር መልሶ ማግኛ: የውይይት ርዕስ፣ ሰው፣ መልእክት ቅደም ተከተል ይመለሳል\n• ሥፍራ: ያስመጣው ውይይት በ AI የውይይት ሞድ \'የመዝገብ\' ትር ላይ ይታያል';

  @override
  String get helpJsonDesc =>
      'በሞድ 3 ላይ ለመጠቀም የጥናት ውሂብን እንደ JSON ፋይል ለማስመጣት የሚከተለውን ቅርጸት ይከተሉ:';

  @override
  String get helpJsonTypeDialogue => 'ውይይት (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'ዓረፍተ ነገር (Sentence)';

  @override
  String get helpJsonTypeWord => 'ቃል (Word)';

  @override
  String get helpMode1Desc =>
      'በፕሪሚየም 3D ማይክሮፎን እና ትልቅ የቁልፍ ሰሌዳ አዶዎች አማካኝነት ቋንቋን መማር በጣም በሚያስተውል መንገድ ይጀምሩ።';

  @override
  String get helpMode1Details =>
      '• የቋንቋ ቅንብር፡ በመነሻ ገጽ ላይኛው ክፍል ላይ ያለውን የቋንቋ ቁልፍ በመጠቀም ቋንቋዬን እና እየተማርኩ ያለውን ቋንቋ መፈተሽ እና የመማሪያ ቋንቋውን መቀየር ትችላላችሁ።\n• ቀላል ግቤት፡ በማዕከላዊው ትልቅ ማይክሮፎን እና የጽሑፍ መስኮት በኩል ወዲያውኑ ያስገቡ።\n• ቅንብሮችን ያረጋግጡ፡ ግቤቱን ከጨረሱ በኋላ በቀኝ በኩል ያለውን ሰማያዊውን ምልክት ማድረጊያ ቁልፍ ይጫኑ። የዝርዝር ቅንብር መስኮቱ ይታያል።\n• የዝርዝር ቅንብር፡ በሚታየው የንግግር ሳጥን ውስጥ ለማስቀመጥ የመረጃ ስብስብ፣ ማብራሪያ (ማስታወሻ) እና መለያ መግለጽ ይችላሉ።\n• አሁን ተርጉም፡ ቅንብሩን ከጨረሱ በኋላ አረንጓዴውን የትርጉም ቁልፍን ከተጫኑ በኋላ ሰው ሰራሽ የማሰብ ችሎታ ወዲያውኑ ትርጉሙን ያከናውናል።\n• ራስ-ሰር ፍለጋ፡ በሚያስገቡበት ጊዜ ተመሳሳይ ነባር ትርጉሞችን በእውነተኛ ጊዜ በመለየት ያሳያል።\n• ማዳመጥ እና ማስቀመጥ፡ የትርጉም ውጤቱን በታችኛው ክፍል ላይ ባለው የድምጽ ማጉያ አዶ በመጠቀም አጠራሩን ያዳምጡ እና \'ውሂብ አስቀምጥ\' ን በመጠቀም በትምህርት ዝርዝርዎ ላይ ያክሉ።';

  @override
  String get helpMode2Desc =>
      'የተቀመጡ ዓረፍተ ነገሮችን ይከልሱ፣ እና በራስ-ሰር መደበቂያ ባህሪ የማስታወስዎን ደረጃ ያረጋግጡ።';

  @override
  String get helpMode2Details =>
      '• የጥናት ቁሳቁስ ምረጥ፦ በላይኛው ቀኝ ጥግ ያለውን ምናሌ(⋮) ተጠቀም \'የጥናት ቁሳቁስ ምረጥ\' ወይም \'የመስመር ላይ የቁሳቁስ ማከማቻ\' ተጠቀም\n• ካርድ ገልብጥ፦ \'አሳይ/ደብቅ\' የሚለውን በመጠቀም ትርጉሙን አረጋግጥ\n• አዳምጥ፦ የድምጽ ምልክቱን በመጠቀም አጠራሩን አጫውት\n• ትምህርት ተጠናቋል፦ የቼክ ምልክትን(V) በመጠቀም ትምህርቱን እንዳጠናቀቅ ምልክት አድርግ\n• ሰርዝ፦ ካርዱን በረጅሙ ተጫን (ረጅም ጠቅታ) መዝገቡን ለመሰረዝ\n• ፈልግ እና አጣራ፦ የፍለጋ አሞሌውን (በቅጽበት የሚሰራ ስማርት ፍለጋ)፣ ታጎችን፣ እና የመነሻ ፊደል ማጣሪያን ተጠቀም';

  @override
  String get helpMode3Desc =>
      'ዓረፍተ ነገሮችን እያዳመጡ በመድገም (Shadowing) አጠራርዎን ይለማመዱ።';

  @override
  String get helpMode3Details =>
      '• የውሂብ ምርጫ: ለማጥናት የውሂብ ስብስብ ይምረጡ\n• ክፍተት ማቀናበር: የዓረፍተ ነገር የቆይታ ጊዜን በ [-] [+] ቁልፎች ያስተካክሉ (ከ3 ሰከንድ እስከ 60 ሰከንድ)\n• ጀምር/አቁም: የጥላ ክፍለ ጊዜን ይቆጣጠሩ\n• መናገር: ድምጽን ያዳምጡ እና ይድገሙ\n• ግብረመልስ: ትክክለኛነት ነጥብ (0-100) እና የቀለም ምልክት\n• የፍለጋ ሁኔታዎች: በመለያዎች፣ በቅርብ ጊዜ ዕቃዎች ወይም በሚጀምሩ ፊደላት ያጣሩ';

  @override
  String get helpModeChatDesc => 'ከ AI ሰው ጋር እየተወያዩ ተግባራዊ የንግግር ልምምድ ያድርጉ።';

  @override
  String get helpModeChatDetails =>
      '• AI ቻት፡ ከታች ባለው ትር ባር ውስጥ ካለው \'ቻት\' ምናሌ ጋር በስብዕናዎ ላይ ተመስርተው ተግባራዊ ውይይት ያድርጉ\n• የስብዕና ቅንብር፡ የተቃዋሚውን ጾታ፣ ስም እና የቋንቋ ኮድ በነጻነት ይግለጹ\n• የጂፒኤስ ሁኔታ ድራማ፡ አሁን ያለዎትን ቦታ በመገንዘብ ከቦታው ጋር የሚስማሙ የውይይት ርዕሶችን ይመክሩ\n• ባለ2 ቋንቋ፡ የአይአይ መልሶች ከትርጉም ጋር አብረው ይታያሉ፣ ይህም የመማርን ውጤት ከፍ ያደርገዋል\n• የሪከርድ አስተዳደር፡ ያለፉትን የውይይት ታሪኮች ያጣሩ እና የተወሰኑ መልዕክቶችን በውይይት ጊዜ ለመማሪያ ቁሳቁሶች ያስቀምጡ';

  @override
  String get helpTabJson => 'JSON ቅርጸት';

  @override
  String get helpTabModes => 'ስለ ሞዶች';

  @override
  String get helpTabTour => 'ተሞክሮ ያድርጉ';

  @override
  String get helpTitle => 'እገዛ & መመሪያ';

  @override
  String get helpTourDesc =>
      '**የደመቀው ክበብ** ዋና ዋና ባህሪያትን ይመራል።\n(ለምሳሌ: **የደመቀው ክበብ** የሚያመለክተውን ካርድ በረጅሙ በመጫን መሰረዝ ይችላሉ።)';

  @override
  String get hide => 'ደብቅ';

  @override
  String importAdded(int count) {
    return 'ተጨምሯል: $count ዕቃዎች';
  }

  @override
  String get importComplete => 'አስመጪ ተጠናቋል';

  @override
  String get importDuplicateTitleError =>
      'ተመሳሳይ ርዕስ ያለው ቁሳቁስ አስቀድሞ አለ። ርዕሱን ከቀየሩ በኋላ እንደገና ይሞክሩ።';

  @override
  String importErrorMessage(String error) {
    return 'ፋይል ማስመጣት አልተሳካም:\n$error';
  }

  @override
  String get importFailed => 'አስመጪ አልተሳካም';

  @override
  String importFile(String fileName) {
    return 'ፋይል: $fileName';
  }

  @override
  String get importJsonFile => 'JSON ፋይል አስመጣ';

  @override
  String get importJsonFilePrompt => 'JSON ፋይል ያስመጡ';

  @override
  String importSkipped(int count) {
    return 'ተዘሏል: $count ዕቃዎች';
  }

  @override
  String importTotal(int count) {
    return 'ጠቅላላ: $count ዕቃዎች';
  }

  @override
  String get importing => 'እያስመጣ ነው...';

  @override
  String get inputModeTitle => 'ግብዓት';

  @override
  String intervalSeconds(int seconds) {
    return 'ክፍተት: $seconds ሰከንዶች';
  }

  @override
  String get invalidEmail => 'ትክክለኛ ኢሜይል ያስገቡ።';

  @override
  String get kakaoContinue => 'በካካዎ ይቀጥሉ';

  @override
  String get labelLangCode => 'የቋንቋ ኮድ (ለምሳሌ en-US, ko-KR)';

  @override
  String get labelName => 'ስም';

  @override
  String get labelNote => 'ማስታወሻ';

  @override
  String get labelPOS => 'የቃላት ክፍል';

  @override
  String get labelRole => 'ሚና';

  @override
  String get labelSentence => 'ዓረፍተ ነገር';

  @override
  String get labelSentenceCollection => 'የዓረፍተ ነገር ስብስብ';

  @override
  String get labelSentenceType => 'ዓይነት ዓረፍተ ነገር';

  @override
  String get labelShowMemorized => 'ተጠናቋል';

  @override
  String get labelType => 'ዓይነት:';

  @override
  String get labelWord => 'ቃል';

  @override
  String get labelWordbook => 'የቃላት መጽሐፍ';

  @override
  String get language => 'ቋንቋ';

  @override
  String get languageSettings => 'የቋንቋ ቅንጅቶች';

  @override
  String get languageSettingsTitle => 'የቋንቋ ቅንብሮች';

  @override
  String get libTitleFirstMeeting => 'የመጀመሪያ ስብሰባ';

  @override
  String get libTitleGreetings1 => 'ሰላምታ 1';

  @override
  String get libTitleNouns1 => 'ስሞች 1';

  @override
  String get libTitleVerbs1 => 'ግሶች 1';

  @override
  String get listen => 'አዳምጥ';

  @override
  String get listening => 'በማዳመጥ ላይ...';

  @override
  String get loadingParticipants => 'ተሳታፊዎችን በመጫን ላይ...';

  @override
  String get location => 'ቦታ';

  @override
  String get login => 'ግባ';

  @override
  String get logout => 'ውጣ';

  @override
  String get logoutConfirmMessage => 'ከዚህ መሣሪያ መውጣት ይፈልጋሉ?';

  @override
  String get logoutConfirmTitle => 'ውጣ';

  @override
  String get male => 'ወንድ';

  @override
  String get manageParticipants => 'ተሳታፊዎችን አስተዳድር';

  @override
  String get manual => 'በእጅ ግቤት';

  @override
  String get markAsStudied => 'ትምህርት አመልክት';

  @override
  String get materialInfo => 'የቁሳቁስ መረጃ';

  @override
  String get me => 'እኔ';

  @override
  String get menuDeviceImport => 'ቁሳቁስ ከመሳሪያ አስመጣ';

  @override
  String get menuHelp => 'እገዛ';

  @override
  String get menuLanguageSettings => 'የቋንቋ ቅንብሮች';

  @override
  String get menuOnlineLibrary => 'የመስመር ላይ ቤተ መጻሕፍት';

  @override
  String get menuSelectMaterialSet => 'የጥናት ቁሳቁስ ስብስብ ይምረጡ';

  @override
  String get menuSettings => 'የቋንቋ ቅንብሮች';

  @override
  String get menuTutorial => 'የአጠቃቀም ጉብኝት';

  @override
  String get menuWebDownload => 'መነሻ ገጽ';

  @override
  String get metadataDialogTitle => 'ዝርዝር ምድብ';

  @override
  String get metadataFormType => 'የሰዋስው አይነት';

  @override
  String get metadataRootWord => 'ዋና ቃል (Root Word)';

  @override
  String get micButtonTooltip => 'የድምጽ ማወቂያ ይጀምሩ';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'በአሁኑ ጊዜ የተመረጠው ቁሳቁስ: $name';
  }

  @override
  String get mode2Title => 'ክለሳ';

  @override
  String get mode3Next => 'ቀጣይ';

  @override
  String get mode3Start => 'ጀምር';

  @override
  String get mode3Stop => 'አቁም';

  @override
  String get mode3TryAgain => 'እንደገና ሞክር';

  @override
  String get mySentenceCollection => 'የዓረፍተ ነገር ስብስብ';

  @override
  String get myWordbook => 'የቃላት መምረጫ';

  @override
  String get neutral => 'ገለልተኛ';

  @override
  String get newSubjectName => 'አዲስ የቃላት ዝርዝር/ሐረግ ርዕስ';

  @override
  String get next => 'ቀጣይ';

  @override
  String get noDialogueHistory => 'ምንም የውይይት ታሪክ የለም።';

  @override
  String get noInternetWarningMic =>
      'ምንም የበይነመረብ ግንኙነት የለም። ከመስመር ውጭ እያሉ የድምፅ ማወቂያ ላይሰራ ይችላል።';

  @override
  String get noInternetWarningTranslate =>
      'ምንም የበይነመረብ ግንኙነት የለም። ከመስመር ውጭ እያሉ የትርጉም ባህሪው መጠቀም አይችሉም። እባክዎ የግምገማ ሁነታን ይጠቀሙ።';

  @override
  String get noMaterialsInCategory => 'በዚህ ምድብ ውስጥ ምንም ቁሳቁሶች የሉም።';

  @override
  String get noParticipantsFound => 'ምንም የተመዘገቡ ተሳታፊዎች የሉም።';

  @override
  String get noRecords => 'ለተመረጠው ቋንቋ ምንም የጥናት መዝገቦች የሉም';

  @override
  String get noStudyMaterial => 'ምንም የጥናት ቁሳቁስ የለም።';

  @override
  String get noTextToPlay => 'ምንም ለማጫወት ጽሑፍ የለም';

  @override
  String get noTranslationToSave => 'ምንም ለማስቀመጥ ትርጉም የለም';

  @override
  String get noVoiceDetected => 'ምንም ድምጽ አልተገኘም';

  @override
  String get notSelected => '- አልተመረጠም - ';

  @override
  String get onlineLibraryCheckInternet =>
      'የበይነመረብ ግንኙነትዎን ያረጋግጡ ወይም በኋላ እንደገና ይሞክሩ።';

  @override
  String get onlineLibraryLoadFailed => 'ቁሳቁሶችን ለመጫን አልተሳካም።';

  @override
  String get onlineLibraryNoMaterials => 'ምንም ቁሳቁሶች የሉም።';

  @override
  String get participantDeleted => 'ተሳታፊ ተሰርዟል።';

  @override
  String get participantRename => 'ተሳታፊን እንደገና ይሰይሙ';

  @override
  String get partner => 'አጋር';

  @override
  String get partnerMode => 'የአጋር ሁነታ';

  @override
  String get password => 'የይለፍ ቃል';

  @override
  String get passwordTooShort => 'የይለፍ ቃል ቢያንስ 6 ቁምፊዎች መሆን አለበት።';

  @override
  String get perfect => 'ፍጹም ነው!';

  @override
  String get personaFriend => 'የአካባቢው ጓደኛ';

  @override
  String get personaGuide => 'የጉዞ መመሪያ';

  @override
  String get personaTeacher => 'የእንግሊዝኛ መምህር';

  @override
  String get playAgain => 'እንደገና ይጫወቱ';

  @override
  String playbackFailed(String error) {
    return 'መልሶ ማጫወት አልተሳካም: $error';
  }

  @override
  String get playing => 'በማጫወት ላይ...';

  @override
  String get posAdjective => 'ቅጽል';

  @override
  String get posAdverb => 'ተውሳከ ግሥ';

  @override
  String get posConjunction => 'ማያያዣ';

  @override
  String get posInterjection => 'ቃለ አጋኖ';

  @override
  String get posNoun => 'ስም';

  @override
  String get posPreposition => 'መስተዋድድ';

  @override
  String get posPronoun => 'ተውላጠ ስም';

  @override
  String get posVerb => 'ግስ';

  @override
  String get practiceModeTitle => 'ልምምድ';

  @override
  String get practiceWordsOnly => 'ቃላትን ብቻ ይለማመዱ';

  @override
  String progress(int current, int total) {
    return 'ሂደት: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'በቅርቡ የተፈጠሩ $count ን ይመልከቱ';
  }

  @override
  String recognitionFailed(String error) {
    return 'የድምጽ ማወቂያ አልተሳካም: $error';
  }

  @override
  String get recognized => 'ታውቋል';

  @override
  String get recognizedText => 'የታወቀው አጠራር:';

  @override
  String get recordDeleted => 'መዝገቡ ተሰርዟል';

  @override
  String get refresh => 'አድስ';

  @override
  String get reset => 'ዳግም አስጀምር';

  @override
  String get resetPracticeHistory => 'የልምምድ ታሪክ ዳግም ያስጀምሩ';

  @override
  String get retry => 'እንደገና መሞከር?';

  @override
  String get reviewAll => 'ሁሉንም ክለሳ';

  @override
  String reviewCount(int count) {
    return '$count ጊዜ ክለሳ';
  }

  @override
  String get reviewModeTitle => 'ግምገማ';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'ሶስተኛ ወገን';

  @override
  String get roleUser => 'ተጠቃሚ';

  @override
  String get save => 'አስቀምጥ';

  @override
  String get saveData => 'ውሂብ አስቀምጥ';

  @override
  String saveFailed(String error) {
    return 'አስቀምጥ አልተሳካም: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'በትርጉም ሁነታ ትርጉሞችን ለማስቀመጥ ይሞክሩ';

  @override
  String get saved => 'ተቀምጧል';

  @override
  String get saving => 'በማስቀመጥ ላይ...';

  @override
  String score(String score) {
    return 'ትክክለኛነት: $score%';
  }

  @override
  String get scoreLabel => 'ውጤት';

  @override
  String get search => 'ፈልግ';

  @override
  String get searchConditions => 'የፍለጋ ሁኔታዎች';

  @override
  String get searchSentenceHint => 'ዓረፍተ ነገር ይፈልጉ...';

  @override
  String get searchWordHint => 'ቃል ይፈልጉ...';

  @override
  String get sectionSentence => 'የዓረፍተ ነገር ክፍል';

  @override
  String get sectionSentences => 'ዓረፍተ ነገሮች';

  @override
  String get sectionWord => 'የቃል ክፍል';

  @override
  String get sectionWords => 'ቃላት';

  @override
  String get selectExistingSubject => 'ያለውን ርዕስ ይምረጡ';

  @override
  String get selectMaterialPrompt => 'የጥናት ቁሳቁስ ይምረጡ';

  @override
  String get selectMaterialSet => 'የጥናት ቁሳቁስ ስብስብ ይምረጡ';

  @override
  String get selectPOS => 'የንግግር አካል ይምረጡ';

  @override
  String get selectParticipants => 'ተሳታፊዎችን ይምረጡ';

  @override
  String get selectSentenceType => 'የዓረፍተ ነገር አይነት ይምረጡ';

  @override
  String get selectStudyMaterial => 'የጥናት ቁሳቁስ ይምረጡ';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'ዓረፍተ ነገር';

  @override
  String get signUp => 'ይመዝገቡ';

  @override
  String get similarTextFound => 'ተመሳሳይ ጽሑፍ ተገኝቷል';

  @override
  String get skip => 'ዝለል';

  @override
  String get source => 'ምንጭ:';

  @override
  String get sourceLanguage => 'የመነሻ ቋንቋ';

  @override
  String get sourceLanguageLabel => 'የእኔ ቋንቋ (ምንጭ)';

  @override
  String get speakNow => 'አሁን ይናገሩ!';

  @override
  String get speaker => 'ተናጋሪ';

  @override
  String get speakerSelect => 'ተናጋሪ ይምረጡ';

  @override
  String get speakingPractice => 'የንግግር ልምምድ';

  @override
  String get startChat => 'ውይይት ጀምር';

  @override
  String get startPractice => 'ልምምድ ይጀምሩ';

  @override
  String get startTutorial => 'ትምህርቱን ይጀምሩ';

  @override
  String get startWarning => 'ማስጠንቀቂያ';

  @override
  String get startsWith => 'መጀመሪያ ፊደል';

  @override
  String get statusCheckEmail => 'ኢሜይልዎን በማረጋገጥ ማረጋገጫውን ያጠናቅቁ።';

  @override
  String statusDownloading(Object name) {
    return 'በማውረድ ላይ: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'ማስመጣት አልተሳካም: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name ማስመጣት ተጠናቋል';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'መግባት ተሰርዟል።';

  @override
  String statusLoginFailed(Object error) {
    return 'መግባት አልተሳካም: $error';
  }

  @override
  String get statusLoginSuccess => 'በተሳካ ሁኔታ ገብተዋል።';

  @override
  String get statusLogoutSuccess => 'ወጥተዋል።';

  @override
  String statusSignUpFailed(Object error) {
    return 'ምዝገባ አልተሳካም: $error';
  }

  @override
  String get statusSigningUp => 'በመመዝገብ ላይ...';

  @override
  String get stopPractice => 'ልምምድ ያቁሙ';

  @override
  String get studyComplete => 'ትምህርት ተጠናቋል';

  @override
  String studyRecords(int count) {
    return 'የጥናት መዝገቦች ($count)';
  }

  @override
  String get styleFormal => 'መደበኛ';

  @override
  String get styleInformal => 'የማይደበቅ';

  @override
  String get stylePolite => 'ጨዋነት';

  @override
  String get styleSlang => 'ስላንግ';

  @override
  String get subject => 'ርዕሰ ጉዳይ:';

  @override
  String get swapLanguages => 'ቋንቋዎችን ይቀያይሩ';

  @override
  String get switchToAi => 'ወደ AI ሁነታ ይቀይሩ';

  @override
  String get switchToPartner => 'ወደ አጋር ሁነታ ይቀይሩ';

  @override
  String get syncingData => 'ውሂብ በመመሳሰል ላይ...';

  @override
  String get tabConversation => 'ውይይት';

  @override
  String tabReview(int count) {
    return 'ክለሳ ($count)';
  }

  @override
  String get tabSentence => 'ዓረፍተ ነገር';

  @override
  String get tabSpeaking => 'መናገር';

  @override
  String tabStudyMaterial(int count) {
    return 'የጥናት ቁሳቁስ ($count)';
  }

  @override
  String get tabWord => 'ቃል';

  @override
  String get tagFormal => 'መደበኛ';

  @override
  String get tagSelection => 'መለያ ይምረጡ';

  @override
  String get targetLanguage => 'የዒላማ ቋንቋ';

  @override
  String get targetLanguageFilter => 'የዒላማ ቋንቋ ማጣሪያ:';

  @override
  String get targetLanguageLabel => 'የመማሪያ ቋንቋ (ዒላማ)';

  @override
  String get thinkingTimeDesc => 'መልሱ ከመገለጹ በፊት ለማሰብ ጊዜው አሁን ነው።';

  @override
  String get thinkingTimeInterval => 'የመልሶ ማጫወት መዘግየት';

  @override
  String get timeUp => 'ጊዜው አልቋል!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'የርዕስ መለያ (የመረጃ ስብስብ)';

  @override
  String get tooltipDecrease => 'ቀንስ';

  @override
  String get tooltipIncrease => 'ጨምር';

  @override
  String get tooltipSearch => 'ፈልግ';

  @override
  String get tooltipSpeaking => 'መናገር';

  @override
  String get tooltipStudyReview => 'ማጥናት + ክለሳ';

  @override
  String totalRecords(int count) {
    return 'ጠቅላላ $count መዝገቦች (ሁሉንም ይመልከቱ)';
  }

  @override
  String get translate => 'ተርጉም';

  @override
  String get translating => 'በመተርጎም ላይ...';

  @override
  String get translation => 'ትርጉም';

  @override
  String get translationComplete => 'ትርጉም ተጠናቋል (ማስቀመጥ ያስፈልጋል)';

  @override
  String translationFailed(String error) {
    return 'ትርጉም አልተሳካም: $error';
  }

  @override
  String get translationLimitExceeded => 'የትርጉም ገደብ አልፏል';

  @override
  String get translationLimitMessage =>
      'ያሉትን በየቀኑ ነፃ ትርጉሞች (5 ጊዜ) በሙሉ ተጠቅመዋል።\\n\\nማስታወቂያ በመመልከት 5 ጊዜዎችን ወዲያውኑ መሙላት ይፈልጋሉ?';

  @override
  String get translationLoaded => 'የተቀመጠ ትርጉም ተጭኗል';

  @override
  String get translationRefilled => 'የትርጉም ብዛት 5 ጊዜ ተሞልቷል!';

  @override
  String get translationResultHint => 'የትርጉም ውጤት - ሊስተካከል የሚችል';

  @override
  String get tryAgain => 'እንደገና ይሞክሩ';

  @override
  String get tutorialAiChatDesc => 'ከ AI ሰው ጋር እውነተኛ ውይይቶችን ይለማመዱ።';

  @override
  String get tutorialAiChatTitle => 'AI ቻት';

  @override
  String get tutorialContextDesc =>
      'ምንም እንኳን ተመሳሳይ ዓረፍተ ነገር ቢሆንም እንደ ሁኔታው (ለምሳሌ ጠዋት፣ ምሽት) በመፃፍ በተናጠል ማስቀመጥ ይችላሉ።';

  @override
  String get tutorialContextTitle => 'ሁኔታ/አውድ መለያ';

  @override
  String get tutorialLangSettingsDesc => 'ለመተርጎም የመጀመሪያ ቋንቋ እና ዒላማ ቋንቋ ያዘጋጁ።';

  @override
  String get tutorialLangSettingsTitle => 'የቋንቋ ቅንጅቶች';

  @override
  String get tutorialM1ToggleDesc => 'እዚህ የቃላት እና የዓረፍተ ነገሮች ሁነታዎችን ይቀያይሩ።';

  @override
  String get tutorialM1ToggleTitle => 'የቃላት / ዓረፍተ ነገሮች ሞድ';

  @override
  String get tutorialM2DropdownDesc =>
      'ሊያጠኑት የሚፈልጉትን ቁሳቁስ ከላይኛው ምናሌ ላይ መምረጥ ይችላሉ።';

  @override
  String get tutorialM2ImportDesc => 'በመሣሪያዎ አቃፊ ውስጥ ካለው JSON ፋይል ያስመጡ።';

  @override
  String get tutorialM2ListDesc =>
      'ይህንን ካርድ በረጅሙ ጠቅ ካደረጉት መሰረዝ ይችላሉ። የተቀመጡትን ዓረፍተ ነገሮች ይመልከቱ እና ይገለብጡ።';

  @override
  String get tutorialM2ListTitle => 'የጥናት ዝርዝር';

  @override
  String get tutorialM2SearchDesc =>
      'የተቀመጡ ቃላትን እና ዓረፍተ ነገሮችን በመፈለግ በፍጥነት ማግኘት ይችላሉ።';

  @override
  String get tutorialM2SelectDesc =>
      'ቁሳቁሶችን ለማጥናት የቁሳቁስ ስብስብ አዶን (📚) በላይኛው የመተግበሪያ አሞሌ ላይ ይጫኑ።';

  @override
  String get tutorialM2SelectTitle => 'ቁሳቁስ ይምረጡ';

  @override
  String get tutorialM3IntervalDesc => 'በዓረፍተ ነገሮች መካከል የጥበቃ ጊዜውን ያስተካክሉ።';

  @override
  String get tutorialM3IntervalTitle => 'ክፍተት ያዘጋጁ';

  @override
  String get tutorialM3ResetDesc =>
      'እድገትን እና ትክክለኛነት ነጥብን ዳግም በማስጀመር ከመጀመሪያው ይጀምሩ።';

  @override
  String get tutorialM3ResetTitle => 'ታሪክ ዳግም አስጀምር';

  @override
  String get tutorialM3SelectDesc =>
      'ቁሳቁሶችን ለመለማመድ የቁሳቁስ ስብስብ አዶን (📚) በላይኛው የመተግበሪያ አሞሌ ላይ ይጫኑ።';

  @override
  String get tutorialM3SelectTitle => 'ቁሳቁስ ይምረጡ';

  @override
  String get tutorialM3StartDesc =>
      'ቤተኛውን ድምጽ ለማዳመጥ እና ለመድገም አጫውት የሚለውን ቁልፍ ይጫኑ።';

  @override
  String get tutorialM3StartTitle => 'ልምምድ ይጀምሩ';

  @override
  String get tutorialM3WordsDesc => 'ምልክት ከተደረገበት የተቀመጡ ቃላትን ብቻ ይለማመዱ።';

  @override
  String get tutorialM3WordsTitle => 'የቃል ልምምድ';

  @override
  String get tutorialMicDesc => 'የድምፅ ግቤት ለመጀመር ማይክሮፎኑን ይጫኑ።';

  @override
  String get tutorialMicTitle => 'የድምፅ ግቤት';

  @override
  String get tutorialSaveDesc => 'የተተረጎሙትን ውጤቶች በታሪክ መዝገብ ውስጥ ያስቀምጡ።';

  @override
  String get tutorialSaveTitle => 'አስቀምጥ';

  @override
  String get tutorialSwapDesc => 'የእኔን ቋንቋ እና የመማሪያ ቋንቋ እርስ በእርስ ይቀያይሩ።';

  @override
  String get tutorialTabDesc => 'እዚህ የሚፈልጉትን የጥናት ሁነታ መምረጥ ይችላሉ።';

  @override
  String get tutorialTapToContinue => 'ለመቀጠል ማያ ገጹን ይንኩ';

  @override
  String get tutorialTransDesc => 'ያስገቡትን ጽሑፍ ይተርጉሙ።';

  @override
  String get tutorialTransTitle => 'ተርጉም';

  @override
  String get typeExclamation => 'ቃለ አጋኖ';

  @override
  String get typeImperative => 'አስገዳጅ';

  @override
  String get typeQuestion => 'ጥያቄ';

  @override
  String get typeStatement => 'መግለጫ';

  @override
  String get usageLimitTitle => 'ገደብ ደርሷል';

  @override
  String get useExistingText => 'ነባር ጽሑፍ ተጠቀም';

  @override
  String get viewOnlineGuide => 'የመስመር ላይ መመሪያ ይመልከቱ';

  @override
  String get voluntaryTranslations => 'በፍቃደኝነት የተተረጎሙ';

  @override
  String get watchAdAndRefill => 'ማስታወቂያ በመመልከት (+5 ጊዜ) ይሙሉ።';

  @override
  String get word => 'ቃል';

  @override
  String get wordDefenseDesc => 'ጠላት ከመድረሱ በፊት ቃሉን በመናገር ጣቢያዎን ይከላከሉ።';

  @override
  String get wordDefenseTitle => 'የቃል መከላከያ';

  @override
  String get wordModeLabel => 'የቃል ሁነታ';

  @override
  String get yourPronunciation => 'የእርስዎ አጠራር';

  @override
  String get ttsUnsupportedNatively => 'ይህ መሣሪያ ይህን ቋንቋ በተፈጥሮው በድምፅ አይደግፍም።';

  @override
  String get homeTab => 'ቤት';

  @override
  String get welcomeTitle => 'ወደ Talkie እንኳን በደህና መጡ!';

  @override
  String get welcomeDesc =>
      'ወደ ቶኪ እንኳን ደህና መጡ! ከ 80 በላይ የሆኑ ሁሉንም ቋንቋዎች በ 100% ታማኝነት እንደግፋለን፣ እና በአዲሱ የፕሪሚየም 3D ዲዛይን እና በተሻሻለ አፈጻጸም ፍጹም የመማር ልምድን እናቀርባለን።';

  @override
  String get welcomeButton => 'ይጀምሩ';

  @override
  String get labelDetails => 'ዝርዝር ቅንጅቶች';

  @override
  String get translationResult => 'የትርጉም ውጤት';

  @override
  String get inputContent => 'የግቤት ይዘት';

  @override
  String get translateNow => 'አሁን ተርጉም';

  @override
  String get tooltipSettingsConfirm => 'ቅንብሮችን አረጋግጥ';

  @override
  String get hintNoteExample => 'ለምሳሌ: የሁኔታ መግለጫ፣ ተመሳሳይ ቃላት ወዘተ';

  @override
  String get hintTagExample => 'ለምሳሌ: ንግድ፣ ጉዞ...';

  @override
  String get addNew => 'አዲስ ጨምር';

  @override
  String get newNotebookTitle => 'አዲስ ማስታወሻ ደብተር ርዕስ';

  @override
  String get enterNameHint => 'ስም ያስገቡ';

  @override
  String get add => 'አክል';

  @override
  String get openSettings => 'ቅንብሮችን ክፈት';

  @override
  String get helpNotebook => 'የተተረጎሙ ውጤቶች የሚቀመጡበትን አቃፊ ይምረጡ።';

  @override
  String get helpNote => 'የቃላት ፍቺዎችን፣ ምሳሌዎችን ወይም ሁኔታዎችን በነፃነት ይመዝግቡ።';

  @override
  String get helpTag => 'ለመመደብ ወይም ለመፈለግ ቁልፍ ቃላትን ያስገቡ።';

  @override
  String get requestTranslation => 'ትርጉም ለመጠየቅ';

  @override
  String get statusRequestSuccess => 'የትርጉም ጥያቄ ተሳክቷል።';

  @override
  String statusRequestFailed(String error) {
    return 'የትርጉም ጥያቄ አልተሳካም፡ $error';
  }

  @override
  String get studyLangNotFoundTitle => 'የጥናት ቋንቋ አልተገኘም።';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'የመረጡት መረጃ በአሁኑ ጊዜ የተዋቀረውን የጥናት ቋንቋን ($targetLang) ስለማይደግፍ በአካባቢው ማስቀመጥ አይቻልም። ትርጉም መጠየቅ ይፈልጋሉ?';
  }
}

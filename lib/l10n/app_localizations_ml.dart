// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get basicWords => 'അടിസ്ഥാന വാക്ക് ശേഖരം';

  @override
  String get inputLanguage => 'ഇൻപുട്ട് ഭാഷ';

  @override
  String get translationLanguage => 'വിവർത്തന ഭാഷ';

  @override
  String get simplifiedGuidance =>
      'നിങ്ങളുടെ ദൈനംദിന സംഭാഷണങ്ങൾ തൽക്ഷണം ഒരു വിദേശ ഭാഷയിലേക്ക് മാറ്റുക! ടോക്കി നിങ്ങളുടെ ഭാഷാ ജീവിതം രേഖപ്പെടുത്തുന്നു.';

  @override
  String get noDataForLanguage =>
      'നിങ്ങൾ തിരഞ്ഞെടുത്ത ഭാഷയിലുള്ള പഠന സാമഗ്രികൾ പ്രാദേശിക ഡാറ്റാബേസിൽ ലഭ്യമല്ല. ഡാറ്റ ഡൗൺലോഡ് ചെയ്യുക അല്ലെങ്കിൽ മറ്റൊരു ഭാഷ തിരഞ്ഞെടുക്കുക.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get accuracy => 'കൃത്യത';

  @override
  String get ttsMissing =>
      'ഈ ഭാഷയുടെ വോയിസ് എഞ്ചിൻ നിങ്ങളുടെ ഉപകരണത്തിൽ ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല.';

  @override
  String get ttsInstallGuide =>
      'Android ക്രമീകരണങ്ങൾ > Google TTS-ൽ ഈ ഭാഷാ ഡാറ്റ ഇൻസ്റ്റാൾ ചെയ്യുക.';

  @override
  String get adLoading =>
      'പരസ്യം ലോഡ് ചെയ്യുന്നു. ദയവായി കുറച്ച് കഴിഞ്ഞ് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get addNewSubject => 'പുതിയ പേര് ചേർക്കുക';

  @override
  String get addParticipant => 'പങ്കാളിയെ ചേർക്കുക';

  @override
  String get addTagHint => 'ടാഗ് ചേർക്കുക...';

  @override
  String get alreadyHaveAccount => 'അക്കൗണ്ടുണ്ടോ?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'ഓട്ടോ പ്ലേ';

  @override
  String get basic => 'അടിസ്ഥാനം';

  @override
  String get basicDefault => 'അടിസ്ഥാനം';

  @override
  String get basicMaterialRepository => 'അടിസ്ഥാന വാക്യം/വാക്ക് ശേഖരം';

  @override
  String get basicSentenceRepository => 'അടിസ്ഥാന വാചകങ്ങളുടെ ശേഖരം';

  @override
  String get basicSentences => 'അടിസ്ഥാന വാക്യ ശേഖരം';

  @override
  String get basicWordRepository => 'അടിസ്ഥാന വാക്കുകളുടെ ശേഖരം';

  @override
  String get caseObject => 'കർമ്മണി';

  @override
  String get casePossessive => 'ഉടമസ്ഥത';

  @override
  String get casePossessivePronoun => 'ഉടമസ്ഥതയിലുള്ള സർവ്വനാമം';

  @override
  String get caseReflexive => 'റിഫ്ലെക്സീവ്';

  @override
  String get caseSubject => 'കർത്തരി';

  @override
  String get chatAiChat => 'ചാറ്റ്';

  @override
  String get chatAllConversations => 'എല്ലാ സംഭാഷണങ്ങളും';

  @override
  String get chatChoosePersona => 'വ്യക്തിത്വം തിരഞ്ഞെടുക്കുക';

  @override
  String get chatEndMessage => 'സംഭാഷണം അവസാനിപ്പിക്കണോ?';

  @override
  String get chatEndTitle => 'സംഭാഷണം അവസാനിപ്പിച്ച് സംരക്ഷിക്കുക';

  @override
  String chatFailed(Object error) {
    return 'ചാറ്റ് പരാജയപ്പെട്ടു: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'സംഭാഷണത്തിൽ നിന്ന് എടുത്തത് ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'സംഭാഷണ ചരിത്രം';

  @override
  String get chatNew => 'പുതിയ സംഭാഷണം';

  @override
  String get chatNewChat => 'പുതിയ സംഭാഷണം';

  @override
  String get chatNoConversations => 'സംഭാഷണങ്ങളൊന്നും ലഭ്യമല്ല';

  @override
  String get chatSearchHint => '대화 제목으로 검색...';

  @override
  String get chatSaveAndExit => 'സംരക്ഷിച്ച് പുറത്തുകടക്കുക';

  @override
  String get chatStartNewPrompt =>
      'പരിശീലനത്തിനായി ഒരു പുതിയ സംഭാഷണം ആരംഭിക്കുക!';

  @override
  String get chatTypeHint => 'ഒരു സന്ദേശം ടൈപ്പ് ചെയ്യുക...';

  @override
  String get chatUntitled => 'പേരില്ലാത്ത സംഭാഷണം';

  @override
  String get checking => 'പരിശോധിക്കുന്നു...';

  @override
  String get clearAll => 'എല്ലാം മായ്ക്കുക';

  @override
  String get confirm => 'ശരി';

  @override
  String get confirmDelete => 'ഈ രേഖ നീക്കം ചെയ്യാൻ ആഗ്രഹിക്കുന്നുണ്ടോ?';

  @override
  String get confirmDeleteConversation =>
      'നിങ്ങൾക്ക് ഈ സംഭാഷണം ഇല്ലാതാക്കണോ?\nഇല്ലാതാക്കിയ സംഭാഷണം വീണ്ടെടുക്കാൻ കഴിയില്ല.';

  @override
  String get confirmDeleteParticipant => 'ഈ പങ്കാളിയെ നീക്കം ചെയ്യണോ?';

  @override
  String get contextTagHint =>
      'പിന്നീട് വേർതിരിച്ചറിയാൻ എളുപ്പത്തിന് സാഹചര്യം എഴുതുക';

  @override
  String get contextTagLabel =>
      'സന്ദർഭം/അവസ്ഥ (ഓപ്ഷണൽ) - ഉദാഹരണം: പ്രഭാത വന്ദനം, ആദരവ്';

  @override
  String get copiedToClipboard => 'ക്ലിപ്പ്ബോർഡിലേക്ക് പകർത്തി!';

  @override
  String get copy => 'പകർത്തുക';

  @override
  String get correctAnswer => 'ശരിയായ ഉത്തരം';

  @override
  String get createNew => 'പുതിയത് സൃഷ്ടിക്കുക';

  @override
  String get currentLocation => 'നിലവിലെ സ്ഥാനം';

  @override
  String get currentMaterialLabel => 'നിലവിൽ തിരഞ്ഞെടുത്ത മെറ്റീരിയൽ ശേഖരം:';

  @override
  String get delete => 'നീക്കം ചെയ്യുക';

  @override
  String deleteFailed(String error) {
    return 'നീക്കം ചെയ്യൽ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get deleteRecord => 'രേഖ നീക്കം ചെയ്യുക';

  @override
  String get dialogueQuestDesc =>
      'റോൾ പ്ലേയിലൂടെ സംഭാഷണം പരിശീലിക്കുക. ഉചിതമായ മറുപടി തിരഞ്ഞെടുത്ത് പറയുക.';

  @override
  String get dialogueQuestTitle => 'സംഭാഷണ ക്വസ്റ്റ്';

  @override
  String get disambiguationPrompt =>
      'ഏത് അർത്ഥത്തിലേക്കാണ് വിവർത്തനം ചെയ്യേണ്ടത്?';

  @override
  String get disambiguationTitle => 'അർത്ഥം തിരഞ്ഞെടുക്കുക';

  @override
  String get dontHaveAccount => 'അക്കൗണ്ടില്ലേ?';

  @override
  String get editParticipant => 'പങ്കാളിയെ എഡിറ്റ് ചെയ്യുക';

  @override
  String get email => 'ഇമെയിൽ';

  @override
  String get emailAlreadyInUse =>
      'ഈ ഇമെയിൽ ഇതിനകം രജിസ്റ്റർ ചെയ്തിട്ടുണ്ട്. ലോഗിൻ ചെയ്യുക അല്ലെങ്കിൽ പാസ്‌വേഡ് വീണ്ടെടുക്കാൻ ശ്രമിക്കുക.';

  @override
  String get enterNewSubjectName => 'പുതിയ പേര് നൽകുക';

  @override
  String get enterSentenceHint => 'ഒരു വാക്യം നൽകുക...';

  @override
  String get enterTextHint => 'പരിഭാഷ ചെയ്യേണ്ട വാചകം നൽകുക';

  @override
  String get enterTextToTranslate => 'വിവർത്തനം ചെയ്യാൻ ടെക്സ്റ്റ് നൽകുക';

  @override
  String get enterWordHint => 'ഒരു വാക്ക് നൽകുക...';

  @override
  String get error => 'പിശക്';

  @override
  String get errorHateSpeech =>
      'വിദ്വേഷ പ്രസംഗം അടങ്ങിയതിനാൽ വിവർത്തനം ചെയ്യാൻ കഴിയില്ല.';

  @override
  String get errorOtherSafety => 'AI സുരക്ഷാ നയം കാരണം വിവർത്തനം നിരസിച്ചു.';

  @override
  String get errorProfanity =>
      'അസഭ്യമായ വാക്കുകൾ അടങ്ങിയതിനാൽ വിവർത്തനം ചെയ്യാൻ കഴിയില്ല.';

  @override
  String get errorSelectCategory => 'ആദ്യം ഒരു വാക്കോ വാക്യമോ തിരഞ്ഞെടുക്കുക!';

  @override
  String get errorSexualContent =>
      'ലൈംഗിക ഉള്ളടക്കം അടങ്ങിയതിനാൽ വിവർത്തനം ചെയ്യാൻ കഴിയില്ല.';

  @override
  String get errors => 'പിശകുകൾ:';

  @override
  String get female => 'സ്ത്രീ';

  @override
  String get file => 'ഫയൽ:';

  @override
  String get filterAll => 'എല്ലാം';

  @override
  String get flip => 'മറിക്കുക';

  @override
  String get formComparative => 'താരതമ്യേനെ';

  @override
  String get formInfinitive => 'ഇൻഫിനിറ്റീവ്/വർത്തമാനകാലം';

  @override
  String get formPast => 'കഴിഞ്ഞ കാലം';

  @override
  String get formPastParticiple => 'പാസ്റ്റ് പാർട്ടിസിപ്പിൾ';

  @override
  String get formPlural => 'ബഹുവചനം';

  @override
  String get formPositive => 'പോസിറ്റീവ്';

  @override
  String get formPresent => 'വർത്തമാനകാലം';

  @override
  String get formPresentParticiple => 'present പാർട്ടിസിപ്പിൾ (ing)';

  @override
  String get formSingular => 'ഏകവചനം';

  @override
  String get formSuperlative => 'ಸೂಪರ್ಲೇಟಿವ್';

  @override
  String get formThirdPersonSingular => 'മൂന്നാമത്തെ വ്യക്തി ഏകവചനം';

  @override
  String get gameModeDesc => 'പരിശീലിക്കാൻ ഒരു ഗെയിം മോഡ് തിരഞ്ഞെടുക്കുക';

  @override
  String get gameModeTitle => 'ഗെയിം മോഡ്';

  @override
  String get gameOver => 'ഗെയിം ഓവർ';

  @override
  String get gender => 'ലിംഗം';

  @override
  String get labelFilterMaterial => 'മെറ്റീരിയൽ';

  @override
  String get labelFilterTag => 'ടാഗ്';

  @override
  String get generalTags => 'പൊതുവായ ടാഗുകൾ';

  @override
  String get getMaterials => 'മെറ്റീരിയലുകൾ നേടുക';

  @override
  String get good => 'നല്ലത്';

  @override
  String get googleContinue => 'Google ഉപയോഗിച്ച് തുടരുക';

  @override
  String get helpDialogueImportDesc =>
      'JSON ഫയൽ ഉപയോഗിച്ച് സംഭാഷണ ശകലങ്ങൾ ഇറക്കുമതി ചെയ്യുക.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'മോഡ് 3-ൽ ഇറക്കുമതി ചെയ്യാൻ, JSON സൃഷ്ടിക്കുക:';

  @override
  String get helpJsonTypeDialogue => 'സംഭാഷണം (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'വാക്യം (Sentence)';

  @override
  String get helpJsonTypeWord => 'വാക്ക് (Word)';

  @override
  String get helpMode1Desc =>
      'മികച്ച 3D മൈക്രോഫോണും വലിയ കീബോർഡ് ഐക്കണുകളും ഉപയോഗിച്ച് ഏറ്റവും എളുപ്പത്തിൽ ഭാഷാ പഠനം ആരംഭിക്കുക.';

  @override
  String get helpMode1Details =>
      '• ഭാഷാ ക്രമീകരണം: ഹോം സ്ക്രീനിന്റെ മുകളിലുള്ള ഭാഷാ ബട്ടൺ ഉപയോഗിച്ച് നിങ്ങളുടെ ഭാഷയും പഠിക്കുന്ന ഭാഷയും തിരഞ്ഞെടുത്ത് പഠന ഭാഷ മാറ്റാവുന്നതാണ്.\n• ലളിതമായ ഇൻപുട്ട്: നടുവിലുള്ള വലിയ മൈക്രോഫോൺ, ടെക്സ്റ്റ് വിൻഡോ എന്നിവ വഴി എളുപ്പത്തിൽ ടൈപ്പ് ചെയ്യുക.\n• ക്രമീകരണങ്ങൾ പരിശോധിക്കുക: ടൈപ്പ് ചെയ്ത ശേഷം വലതുവശത്തുള്ള നീല ചെക്ക് ബട്ടൺ അമർത്തുക. അപ്പോൾ വിശദമായ ക്രമീകരണങ്ങൾ കാണാം.\n• വിശദമായ ക്രമീകരണങ്ങൾ: ദൃശ്യമാകുന്ന ഡയലോഗിൽ, നിങ്ങൾക്ക് സേവ് ചെയ്യേണ്ട ഡാറ്റാ ശേഖരം, അടിക്കുറിപ്പ് (മെമ്മോ), ടാഗുകൾ എന്നിവ നൽകാം.\n• ഇപ്പോൾ വിവർത്തനം ചെയ്യുക: ക്രമീകരണങ്ങൾ പൂർത്തിയാക്കിയ ശേഷം പച്ച നിറത്തിലുള്ള വിവർത്തന ബട്ടൺ അമർത്തിയാൽ ആർട്ടിഫിഷ്യൽ ഇന്റലിജൻസ് ഉടനടി വിവർത്തനം ചെയ്യും.\n• സ്വയമേവയുള്ള തിരയൽ: ടൈപ്പ് ചെയ്യുമ്പോൾ സമാനമായ പഴയ വിവർത്തനങ്ങൾ തത്സമയം കണ്ടെത്തി കാണിക്കുന്നു.\n• കേൾക്കുക, സംരക്ഷിക്കുക: വിവർത്തനത്തിന്റെ താഴെയുള്ള സ്പീക്കർ ഐക്കൺ ഉപയോഗിച്ച് ഉച്ചാരണം കേൾക്കുകയും \'ഡാറ്റ സംരക്ഷിക്കുക\' എന്നതിലൂടെ പഠന ലിസ്റ്റിലേക്ക് ചേർക്കുകയും ചെയ്യുക.';

  @override
  String get helpMode2Desc =>
      'മറഞ്ഞിരിക്കുന്ന വിവർത്തനം ഉപയോഗിച്ച് സേവ് ചെയ്ത വാക്യങ്ങൾ അവലോകനം ചെയ്യുക.';

  @override
  String get helpMode2Details =>
      '• മെറ്റീരിയൽ തിരഞ്ഞെടുക്കുക: മുകളിൽ വലതുവശത്തുള്ള മെനുവിൽ(⋮) നിന്ന് \'പഠന സഹായി തിരഞ്ഞെടുക്കുക\' അല്ലെങ്കിൽ \'ഓൺലൈൻ ലൈബ്രറി\' ഉപയോഗിക്കുക.\n• കാർഡ് മറയ്ക്കുക: \'കാണിക്കുക/മറയ്ക്കുക\' ഉപയോഗിച്ച് വിവർത്തനം പരിശോധിക്കുക.\n• കേൾക്കുക: സ്പീക്കർ ഐക്കൺ ഉപയോഗിച്ച് ഉച്ചാരണം പ്ലേ ചെയ്യുക.\n• പഠനം പൂർത്തിയാക്കുക: ശരി അടയാളം (V) ഉപയോഗിച്ച് പഠനം പൂർത്തിയാക്കുക.\n• ഇല്ലാതാക്കുക: കാർഡ് ദീർഘനേരം അമർത്തി (Long Click) റെക്കോർഡ് ഇല്ലാതാക്കുക.\n• തിരയുക, ഫിൽട്ടർ ചെയ്യുക: സെർച്ച് ബാർ (തത്സമയ സ്മാർട്ട് തിരയൽ), ടാഗുകൾ, ആദ്യ അക്ഷര ഫിൽട്ടറുകൾ എന്നിവ പിന്തുണയ്ക്കുന്നു.';

  @override
  String get helpMode3Desc =>
      'ഒരു വാചകം കേട്ട് അത് അനുകരിച്ച് (ഷാഡോയിംഗ്) ഉച്ചാരണം പരിശീലിക്കുക.';

  @override
  String get helpMode3Details =>
      '• തിരഞ്ഞെടുക്കുക: പാക്കേജ് തിരഞ്ഞെടുക്കുക\n• ഇടവേള: [-] [+] കാത്തിരിപ്പ് സമയം (3സെ-60സെ)\n• ആരംഭിക്കുക/നിർത്തുക: സെഷൻ നിയന്ത്രിക്കുക\n• സംസാരിക്കുക: ഓഡിയോ കേട്ട് ആവർത്തിക്കുക\n• സ്കോർ: കൃത്യത (0-100)\n• വീണ്ടും ശ്രമിക്കുക: ശബ്ദം കണ്ടെത്തിയില്ലെങ്കിൽ ബട്ടൺ';

  @override
  String get helpModeChatDesc =>
      'AI വ്യക്തിത്വവുമായി സംഭാഷണം നടത്തി തത്സമയ സംഭാഷണം പരിശീലിക്കുക.';

  @override
  String get helpModeChatDetails =>
      '• AI ചാറ്റ്: താഴെയുള്ള ടാബ് ബാറിലെ \'ചാറ്റ്\' മെനുവിൽ വ്യക്തിത്വങ്ങളുമായി സംഭാഷണം പരിശീലിക്കുക\n• വ്യക്തിത്വ ക്രമീകരണം: എതിരാളിയുടെ ലിംഗഭേദം, പേര്, ഭാഷാ കോഡ് എന്നിവ സ്വതന്ത്രമായി വ്യക്തമാക്കുക\n• GPS സാഹചര്യ നാടകം: നിങ്ങളുടെ നിലവിലെ സ്ഥാനം തിരിച്ചറിഞ്ഞ് ലൊക്കേഷന് അനുയോജ്യമായ സംഭാഷണ വിഷയങ്ങൾ ശുപാർശ ചെയ്യുന്നു\n• ദ്വിഭാഷാ: AI-യുടെ പ്രതികരണങ്ങൾ വിവർത്തനത്തോടൊപ്പം പ്രദർശിപ്പിക്കുന്നു, ഇത് പഠന ഫലം വർദ്ധിപ്പിക്കുന്നു\n• റെക്കോർഡ് മാനേജ്മെന്റ്: പഴയ സംഭാഷണ ചരിത്രം ഫിൽട്ടർ ചെയ്യുകയും സംഭാഷണത്തിനിടയിൽ പ്രത്യേക സന്ദേശങ്ങൾ പഠന സാമഗ്രികളായി സംരക്ഷിക്കുകയും ചെയ്യുക';

  @override
  String get helpTabJson => 'JSON ഫോർമാറ്റ്';

  @override
  String get helpTabModes => 'മോഡുകൾ';

  @override
  String get helpTabTour => 'ടൂർ';

  @override
  String get helpTitle => 'സഹായവും വഴികാട്ടിയും';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'മറയ്ക്കുക';

  @override
  String importAdded(int count) {
    return 'ചേർത്തത്: $count';
  }

  @override
  String get importComplete => 'ഇറക്കുമതി പൂർത്തിയായി';

  @override
  String get importDuplicateTitleError =>
      'ഇതേ പേരിലുള്ള മെറ്റീരിയൽ നിലവിൽ ഉണ്ട്. പേര് മാറ്റി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String importErrorMessage(String error) {
    return 'ഫയൽ ഇറക്കുമതി ചെയ്യുന്നതിൽ പരാജയപ്പെട്ടു:\\n$error';
  }

  @override
  String get importFailed => 'ഇറക്കുമതി പരാജയപ്പെട്ടു';

  @override
  String importFile(String fileName) {
    return 'ഫയൽ: $fileName';
  }

  @override
  String get importJsonFile => 'JSON ഇറക്കുമതി';

  @override
  String get importJsonFilePrompt => 'ദയവായി JSON ഫയൽ ഇറക്കുമതി ചെയ്യുക';

  @override
  String importSkipped(int count) {
    return 'ഒഴിവാക്കിയത്: $count';
  }

  @override
  String importTotal(int count) {
    return 'ആകെ: $count';
  }

  @override
  String get importing => 'ഇറക്കുമതി ചെയ്യുന്നു...';

  @override
  String get inputModeTitle => 'ഇൻപുട്ട്';

  @override
  String intervalSeconds(int seconds) {
    return 'ഇടവേള: $secondsസെക്കൻഡ്';
  }

  @override
  String get invalidEmail => 'ക്രമമല്ലാത്ത ഇമെയിൽ';

  @override
  String get kakaoContinue => 'Kakao ഉപയോഗിച്ച് തുടരുക';

  @override
  String get labelLangCode => 'ഭാഷാ കോഡ് (ഉദാഹരണം: en-US, ko-KR)';

  @override
  String get labelName => 'പേര്';

  @override
  String get labelNote => 'കുറിപ്പ്';

  @override
  String get labelPOS => 'വാക്കിന്റെ ഭാഗം';

  @override
  String get labelRole => 'റോൾ';

  @override
  String get labelSentence => 'വാക്യം';

  @override
  String get labelSentenceCollection => 'വാക്യ ശേഖരം';

  @override
  String get labelSentenceType => 'വാക്യത്തിന്റെ തരം';

  @override
  String get labelShowMemorized => 'പൂർത്തിയാക്കിയത്';

  @override
  String get labelType => 'തരം:';

  @override
  String get labelWord => 'വാക്ക്';

  @override
  String get labelWordbook => 'വാക്ക് ശേഖരം';

  @override
  String get language => 'ഭാഷ';

  @override
  String get languageSettings => 'ഭാഷാ ക്രമീകരണങ്ങൾ';

  @override
  String get languageSettingsTitle => 'ഭാഷാ ക്രമീകരണങ്ങൾ';

  @override
  String get libTitleFirstMeeting => 'ആദ്യ കൂടിക്കാഴ്ച';

  @override
  String get libTitleGreetings1 => 'അഭിവാദ്യങ്ങൾ 1';

  @override
  String get libTitleNouns1 => 'നാമങ്ങൾ 1';

  @override
  String get libTitleVerbs1 => 'ക്രിയകൾ 1';

  @override
  String get listen => 'കേൾക്കുക';

  @override
  String get listening => 'കേൾക്കുന്നു...';

  @override
  String get loadingParticipants => 'പങ്കാളികളെ ലോഡ് ചെയ്യുന്നു...';

  @override
  String get location => 'സ്ഥലം';

  @override
  String get login => 'ലോഗിൻ';

  @override
  String get logout => 'പുറത്ത് പോകുക';

  @override
  String get logoutConfirmMessage =>
      'നിലവിലെ ഉപകരണത്തിൽ നിന്ന് ലോഗ് ഔട്ട് ചെയ്യണോ?';

  @override
  String get logoutConfirmTitle => 'പുറത്ത് പോകുക';

  @override
  String get male => 'പുരുഷൻ';

  @override
  String get manageParticipants => 'പങ്കാളികളെ നിയന്ത്രിക്കുക';

  @override
  String get manual => 'സ്വമേധയായുള്ള ഇൻപുട്ട്';

  @override
  String get markAsStudied => 'പഠിച്ചതായി അടയാളപ്പെടുത്തുക';

  @override
  String get materialInfo => 'മെറ്റീരിയൽ വിവരം';

  @override
  String get me => 'ഞാൻ';

  @override
  String get menuDeviceImport =>
      'ഉപകരണത്തിൽ നിന്ന് മെറ്റീരിയലുകൾ ഇറക്കുമതി ചെയ്യുക';

  @override
  String get menuHelp => 'സഹായം';

  @override
  String get menuLanguageSettings => 'ഭാഷാ ക്രമീകരണങ്ങൾ';

  @override
  String get menuOnlineLibrary => 'ഓൺലൈൻ ലൈബ്രറി';

  @override
  String get menuSelectMaterialSet => 'ഒരു പഠന സാമഗ്രി തിരഞ്ഞെടുക്കുക';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'টিউটോറിയൽ';

  @override
  String get menuWebDownload => 'ഉപയോക്തൃ മാനുവൽ';

  @override
  String get metadataDialogTitle => 'വിശദമായ വർഗ്ഗീകരണം';

  @override
  String get metadataFormType => 'വ്യാകരണ രൂപം';

  @override
  String get metadataRootWord => 'മൂല വാക്ക് (Root Word)';

  @override
  String get micButtonTooltip => 'വോയിസ് റെക്കഗ്നിഷൻ ആരംഭിക്കുക';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'നിലവിൽ തിരഞ്ഞെടുത്ത മെറ്റീരിയൽ ശേഖരം: $name';
  }

  @override
  String get mode2Title => 'അവലോകനം';

  @override
  String get mode3Next => 'അടുത്തത്';

  @override
  String get mode3Start => 'ആരംഭിക്കുക';

  @override
  String get mode3Stop => 'നിർത്തുക';

  @override
  String get mode3TryAgain => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get mySentenceCollection => 'എൻ്റെ വാക്യ ശേഖരം';

  @override
  String get myWordbook => 'എൻ്റെ പദാവലി';

  @override
  String get neutral => 'തಟസ്ഥം';

  @override
  String get newSubjectName => 'പുതിയ പദാവലി/വാക്യ ശേഖരത്തിന്റെ പേര്';

  @override
  String get next => 'അടുത്തത്';

  @override
  String get noDialogueHistory => 'സംഭാഷണ ചരിത്രമില്ല.';

  @override
  String get noInternetWarningMic =>
      'ഇന്റർനെറ്റ് കണക്ഷൻ ഇല്ല. ഓഫ്‌ലൈനിൽ വോയിസ് റെക്കഗ്നിഷൻ ലഭ്യമല്ല.';

  @override
  String get noInternetWarningTranslate =>
      'ഇന്റർനെറ്റ് കണക്ഷൻ ഇല്ല. ഓഫ്‌ലൈനിൽ പരിഭാഷ ലഭ്യമല്ല. റിവ്യൂ മോഡ് ഉപയോഗിക്കുക.';

  @override
  String get noMaterialsInCategory =>
      'ഈ വിഭാഗത്തിൽ മെറ്റീരിയലുകളൊന്നും ലഭ്യമല്ല.';

  @override
  String get noParticipantsFound => 'രജിസ്റ്റർ ചെയ്ത പങ്കാളികളില്ല.';

  @override
  String get noRecords => 'തിരഞ്ഞെടുത്ത ഭാഷയ്ക്ക് രേഖകളില്ല';

  @override
  String get noStudyMaterial => 'പഠന സാമഗ്രികളൊന്നും ലഭ്യമല്ല.';

  @override
  String get noTextToPlay => 'പ്ലേ ചെയ്യാൻ ടെക്സ്റ്റ് ഇല്ല';

  @override
  String get noTranslationToSave => 'സേവ് ചെയ്യാൻ വിവർത്തനമില്ല';

  @override
  String get noVoiceDetected => 'ശബ്ദം കണ്ടെത്തിയില്ല';

  @override
  String get notSelected => '-ഒന്നും തിരഞ്ഞെടുത്തിട്ടില്ല-';

  @override
  String get onlineLibraryCheckInternet =>
      'ഇന്റർനെറ്റ് കണക്ഷൻ പരിശോധിക്കുക അല്ലെങ്കിൽ പിന്നീട് ശ്രമിക്കുക.';

  @override
  String get onlineLibraryLoadFailed =>
      'മെറ്റീരിയലുകൾ ലോഡ് ചെയ്യാൻ കഴിഞ്ഞില്ല.';

  @override
  String get onlineLibraryNoMaterials => 'മെറ്റീരിയലുകൾ ലഭ്യമല്ല.';

  @override
  String get participantDeleted => 'പങ്കാളിയെ നീക്കം ചെയ്തു.';

  @override
  String get participantRename => 'പങ്കാളിയുടെ പേര് മാറ്റുക';

  @override
  String get partner => 'പങ്കാളി';

  @override
  String get partnerMode => 'പങ്കാളി മോഡ്';

  @override
  String get password => 'രഹസ്യവാക്ക്';

  @override
  String get passwordTooShort => 'പാസ്‌വേഡ് 6 അക്ഷരമെങ്കിലും വേണം.';

  @override
  String get perfect => 'അതികഠിനം!';

  @override
  String get personaFriend => 'പ്രാദേശിക സുഹൃത്ത്';

  @override
  String get personaGuide => 'യാത്രാ സഹായി';

  @override
  String get personaTeacher => 'ഇംഗ്ലീഷ് അധ്യാപകൻ';

  @override
  String get playAgain => 'വീണ്ടും കളിക്കുക';

  @override
  String playbackFailed(String error) {
    return 'പ്ലേബാക്ക് പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get playing => 'പ്ലേ ചെയ്യുന്നു...';

  @override
  String get posAdjective => 'വിശേഷണം';

  @override
  String get posAdverb => 'ക്രിയാവിശേഷണം';

  @override
  String get posConjunction => 'കൺജങ്ക്ഷൻ';

  @override
  String get posInterjection => 'വിക്ഷേപണി';

  @override
  String get posNoun => 'നാമം';

  @override
  String get posPreposition => 'പ്രീപോസിഷൻ/ഇടവാക്യം';

  @override
  String get posPronoun => 'സർവ്വനാമം';

  @override
  String get posVerb => 'ക്രിയ';

  @override
  String get practiceModeTitle => 'പരിശീലനം';

  @override
  String get practiceWordsOnly => 'വാക്കുകൾ മാത്രം പരിശീലിക്കുക';

  @override
  String progress(int current, int total) {
    return 'പുരോഗതി: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'അടുത്തിടെ ഉണ്ടാക്കിയ $count എണ്ണം കാണുക';
  }

  @override
  String recognitionFailed(String error) {
    return 'ശബ്ദ തിരിച്ചറിയൽ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get recognized => 'തിരിച്ചറിയൽ പൂർത്തിയായി';

  @override
  String get recognizedText => 'തിരിച്ചറിഞ്ഞ ഉച്ചാരണം:';

  @override
  String get recordDeleted => 'രേഖ വിജയകരമായി നീക്കം ചെയ്തു';

  @override
  String get refresh => 'പുതുക്കുക';

  @override
  String get reset => 'പുനഃസജ്ജമാക്കുക';

  @override
  String get resetPracticeHistory => 'പരിശീലന ചരിത്രം പുനഃസജ്ജമാക്കുക';

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കണോ?';

  @override
  String get reviewAll => 'എല്ലാം അവലോകനം ചെയ്യുക';

  @override
  String reviewCount(int count) {
    return '$count തവണ അവലോകനം ചെയ്തു';
  }

  @override
  String get reviewModeTitle => 'റിവ്യൂ';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'മൂന്നാമൻ';

  @override
  String get roleUser => 'ഉപയോക്താവ്';

  @override
  String get save => 'സംരക്ഷിക്കുക';

  @override
  String get saveData => 'സേവ് ചെയ്യുക';

  @override
  String saveFailed(String error) {
    return 'സേവ് ചെയ്യുന്നത് പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'തിരയൽ മോഡിൽ നിന്ന് വിവർത്തനങ്ങൾ സേവ് ചെയ്യുക';

  @override
  String get saved => 'സേവ് ചെയ്തു';

  @override
  String get saving => 'സേവ് ചെയ്യുന്നു...';

  @override
  String score(String score) {
    return 'കൃത്യത: $score%';
  }

  @override
  String get scoreLabel => 'സ്കോർ';

  @override
  String get search => 'തിരയുക';

  @override
  String get searchConditions => 'തിരയൽ ഉപാധികൾ';

  @override
  String get searchSentenceHint => 'വാക്യം തിരയുക...';

  @override
  String get searchWordHint => 'വാക്ക് തിരയുക...';

  @override
  String get sectionSentence => 'വാക്യ വിഭാഗം';

  @override
  String get sectionSentences => 'വാക്യങ്ങൾ';

  @override
  String get sectionWord => 'പദ വിഭാഗം';

  @override
  String get sectionWords => 'വാക്കുകൾ';

  @override
  String get selectExistingSubject => 'നിലവിലുള്ള പേര് തിരഞ്ഞെടുക്കുക';

  @override
  String get selectMaterialPrompt => 'ദയവായി പഠന സാമഗ്രികൾ തിരഞ്ഞെടുക്കുക';

  @override
  String get selectMaterialSet => 'പഠന സാമഗ്രി തിരഞ്ഞെടുക്കുക';

  @override
  String get selectPOS => 'പാർട്ട് ഓഫ് സ്പീച്ച് തിരഞ്ഞെടുക്കുക';

  @override
  String get selectParticipants => 'പങ്കാളികളെ തിരഞ്ഞെടുക്കുക';

  @override
  String get selectSentenceType => 'വാക്യത്തിന്റെ തരം തിരഞ്ഞെടുക്കുക';

  @override
  String get selectStudyMaterial => 'മെറ്റീരിയൽ തിരഞ്ഞെടുക്കുക';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'വാക്യം';

  @override
  String get signUp => 'സൈൻ അപ്പ്';

  @override
  String get similarTextFound => 'സമാനമായ ടെക്സ്റ്റ് കണ്ടെത്തി';

  @override
  String get skip => 'ഒഴിവാക്കുക';

  @override
  String get source => 'ഉറവിടം:';

  @override
  String get sourceLanguage => 'ഉറവിട ഭാഷ';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'ഇപ്പോൾ സംസാരിക്കുക!';

  @override
  String get speaker => 'സംസാരിക്കുന്നയാൾ';

  @override
  String get speakerSelect => 'സംസാരിക്കുന്നയാളെ തിരഞ്ഞെടുക്കുക';

  @override
  String get speakingPractice => 'സംസാര പരിശീലനം';

  @override
  String get startChat => 'സംഭാഷണം ആരംഭിക്കുക';

  @override
  String get startPractice => 'പരിശീലനം ആരംഭിക്കുക';

  @override
  String get startTutorial => 'ടൂർ ആരംഭിക്കുക';

  @override
  String get startWarning => 'മുന്നറിയിപ്പ്';

  @override
  String get startsWith => 'ആദ്യ അക്ഷരം';

  @override
  String get statusCheckEmail =>
      'ഇമെയിൽ പരിശോധിച്ച് സ്ഥിരീകരണം പൂർത്തിയാക്കുക.';

  @override
  String statusDownloading(Object name) {
    return 'ഡൗൺലോഡ് ചെയ്യുന്നു: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'ഇറക്കുമതി പരാജയപ്പെട്ടു: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name ഇറക്കുമതി ചെയ്തു';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'ലോഗിൻ റദ്ദാക്കി.';

  @override
  String statusLoginFailed(Object error) {
    return 'ലോഗിൻ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get statusLoginSuccess => 'ലോഗിൻ വിജയകരമായി.';

  @override
  String get statusLogoutSuccess => 'ലോഗ് ഔട്ട് ചെയ്തു.';

  @override
  String statusSignUpFailed(Object error) {
    return 'സൈൻ അപ്പ് പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get statusSigningUp => 'സൈൻ അപ്പ് ചെയ്യുന്നു...';

  @override
  String get stopPractice => 'നിർത്തുക';

  @override
  String get studyComplete => 'പഠിച്ചു';

  @override
  String studyRecords(int count) {
    return 'രേഖകൾ ($count)';
  }

  @override
  String get styleFormal => 'ആദരവോടെ';

  @override
  String get styleInformal => 'അനൗപചാരികം';

  @override
  String get stylePolite => 'വിനയം';

  @override
  String get styleSlang => 'സ്ലാംഗ്/অপভাষা';

  @override
  String get subject => 'വിഷയം:';

  @override
  String get swapLanguages => 'ഭാഷ മാറ്റുക';

  @override
  String get switchToAi => 'AI മോഡിലേക്ക് മാറുക';

  @override
  String get switchToPartner => 'പങ്കാളി മോഡിലേക്ക് മാറുക';

  @override
  String get syncingData => 'ഡാറ്റ സമന്വയിപ്പിക്കുന്നു...';

  @override
  String get tabConversation => 'സംഭാഷണം';

  @override
  String tabReview(int count) {
    return 'അവലോകനം ($count)';
  }

  @override
  String get tabSentence => 'വാചകം';

  @override
  String get tabSpeaking => 'സംസാരം';

  @override
  String tabStudyMaterial(int count) {
    return 'മെറ്റീരിയൽ ($count)';
  }

  @override
  String get tabWord => 'വാക്ക്';

  @override
  String get tagFormal => 'ആദരപൂർവ്വം';

  @override
  String get tagSelection => 'ടാഗ് തിരഞ്ഞെടുക്കുക';

  @override
  String get targetLanguage => 'ലക്ഷ്യ ഭാഷ';

  @override
  String get targetLanguageFilter => 'ലക്ഷ്യ ഭാഷ ഫിൽട്ടർ:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'ഉത്തരം വെളിപ്പെടുത്തുന്നതിന് മുമ്പ് ചിന്തിക്കാൻ നൽകുന്ന സമയം.';

  @override
  String get thinkingTimeInterval => 'ചിന്തിക്കാനുള്ള സമയം';

  @override
  String get timeUp => 'സമയം കഴിഞ്ഞു!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'ശീർഷക ടാഗ് (മെറ്റീരിയൽ)';

  @override
  String get tooltipDecrease => 'കുറയ്ക്കുക';

  @override
  String get tooltipIncrease => 'വർദ്ധിപ്പിക്കുക';

  @override
  String get tooltipSearch => 'തിരയുക';

  @override
  String get tooltipSpeaking => 'സംസാരിക്കുക';

  @override
  String get tooltipStudyReview => 'പഠനം+അവലോകനം';

  @override
  String totalRecords(int count) {
    return 'ആകെ $count റെക്കോർഡുകൾ (എല്ലാം കാണുക)';
  }

  @override
  String get translate => 'വിവർത്തനം';

  @override
  String get translating => 'വിവർത്തനം ചെയ്യുന്നു...';

  @override
  String get translation => 'പരിഭാഷ';

  @override
  String get translationComplete => 'വിവർത്തനം പൂർത്തിയായി (സേവ് ചെയ്യണം)';

  @override
  String translationFailed(String error) {
    return 'വിവർത്തനം പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get translationLimitExceeded => 'പരിഭാഷാ പരിധി കഴിഞ്ഞു';

  @override
  String get translationLimitMessage =>
      'ദിവസേനയുള്ള സൗജന്യ പരിഭാഷ (5 എണ്ണം) പൂർത്തിയായിരിക്കുന്നു.\\n\\nപരസ്യം കണ്ട് 5 എണ്ണം തൽക്ഷണം റീഫിൽ ചെയ്യണോ?';

  @override
  String get translationLoaded => 'സേവ് ചെയ്ത വിവർത്തനം ലോഡ് ചെയ്തു';

  @override
  String get translationRefilled => 'പരിഭാഷാ എണ്ണം 5 ആയി റീഫിൽ ചെയ്തു!';

  @override
  String get translationResultHint => 'പരിഭാഷാ ഫലം - എഡിറ്റ് ചെയ്യാവുന്നതാണ്';

  @override
  String get tryAgain => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get tutorialAiChatDesc =>
      'AI വ്യക്തിത്വങ്ങളുമായി സംഭാഷണം പരിശീലിക്കുക.';

  @override
  String get tutorialAiChatTitle => 'AI ചാറ്റ്';

  @override
  String get tutorialContextDesc =>
      'സമാന വാക്യങ്ങൾ വേർതിരിക്കാൻ സന്ദർഭം (ഉദാ. രാവിലെ) ചേർക്കുക.';

  @override
  String get tutorialContextTitle => 'സന്ദർഭ ടാഗ്';

  @override
  String get tutorialLangSettingsDesc =>
      'പരിഭാഷ ചെയ്യേണ്ട ഭാഷയും ലക്ഷ്യമിടുന്ന ഭാഷയും തിരഞ്ഞെടുക്കുക.';

  @override
  String get tutorialLangSettingsTitle => 'ഭാഷാ ക്രമീകരണങ്ങൾ';

  @override
  String get tutorialM1ToggleDesc =>
      'ഇവിടെ വാക്കും വാക്യവും തമ്മിൽ മാറാനുള്ള മോഡ് തിരഞ്ഞെടുക്കുക.';

  @override
  String get tutorialM1ToggleTitle => 'വാക്ക്/വാക്യ മോഡ്';

  @override
  String get tutorialM2DropdownDesc => 'പഠന സാമഗ്രികൾ തിരഞ്ഞെടുക്കുക.';

  @override
  String get tutorialM2ImportDesc =>
      'ഉപകരണ ഫോൾഡറിൽ നിന്ന് JSON ഫയൽ ഇറക്കുമതി ചെയ്യുക.';

  @override
  String get tutorialM2ListDesc =>
      'നിങ്ങളുടെ കാർഡുകൾ പരിശോധിച്ച് അവ മറിക്കുക. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'പഠന ലിസ്റ്റ്';

  @override
  String get tutorialM2SearchDesc =>
      'സംരക്ഷിച്ച വാക്കുകളും വാക്യങ്ങളും തിരഞ്ഞ് കണ്ടെത്തുക.';

  @override
  String get tutorialM2SelectDesc =>
      'മെറ്റീരിയലുകൾ തിരഞ്ഞെടുക്കുക അല്ലെങ്കിൽ \'എല്ലാം അവലോകനം ചെയ്യുക\' എന്നതിലേക്ക് മാറുക.';

  @override
  String get tutorialM2SelectTitle => 'തിരഞ്ഞെടുക്കുക & ഫിൽട്ടർ';

  @override
  String get tutorialM3IntervalDesc =>
      'വാക്യങ്ങൾക്കിടയിലുള്ള കാത്തിരിപ്പ് സമയം ക്രമീകരിക്കുക.';

  @override
  String get tutorialM3IntervalTitle => 'ഇടവേള';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc =>
      'സംസാര പരിശീലനത്തിനായി സെറ്റ് തിരഞ്ഞെടുക്കുക.';

  @override
  String get tutorialM3SelectTitle => 'മെറ്റീരിയൽ തിരഞ്ഞെടുക്കുക';

  @override
  String get tutorialM3StartDesc => 'ആരംഭിക്കാൻ പ്ലേ ടാപ്പ് ചെയ്യുക.';

  @override
  String get tutorialM3StartTitle => 'ആരംഭിക്കുക';

  @override
  String get tutorialM3WordsDesc =>
      'പരിശോധിച്ചാൽ സംരക്ഷിച്ച വാക്കുകൾ മാത്രം പരിശീലിക്കും.';

  @override
  String get tutorialM3WordsTitle => 'വാക്ക് പരിശീലനം';

  @override
  String get tutorialMicDesc =>
      'വോയ്സ് ഇൻപുട്ടിനായി മൈക്ക് ബട്ടൺ ടാപ്പ് ചെയ്യുക.';

  @override
  String get tutorialMicTitle => 'വോയ്സ് ഇൻപുട്ട്';

  @override
  String get tutorialSaveDesc => 'നിങ്ങളുടെ വിവർത്തനം സേവ് ചെയ്യുക.';

  @override
  String get tutorialSaveTitle => 'സേവ്';

  @override
  String get tutorialSwapDesc =>
      'ഞാൻ എന്റെ ഭാഷ പഠിക്കുന്ന ഭാഷയുമായി മാറ്റുന്നു.';

  @override
  String get tutorialTabDesc =>
      'നിങ്ങൾക്ക് ഇവിടെ നിങ്ങളുടെ ആവശ്യമുള്ള പഠന രീതി തിരഞ്ഞെടുക്കാം.';

  @override
  String get tutorialTapToContinue => 'തുടരാൻ ടാപ്പ് ചെയ്യുക';

  @override
  String get tutorialTransDesc =>
      'നിങ്ങളുടെ ടെക്സ്റ്റ് വിവർത്തനം ചെയ്യാൻ ഇവിടെ ടാപ്പ് ചെയ്യുക.';

  @override
  String get tutorialTransTitle => 'വിവർത്തനം';

  @override
  String get typeExclamation => 'ആശ്ചര്യചിഹ്നം';

  @override
  String get typeImperative => 'കല്പന';

  @override
  String get typeQuestion => 'ചോദ്യം';

  @override
  String get typeStatement => 'പ്രസ്താവന';

  @override
  String get usageLimitTitle => 'പരിധി എത്തിയിരിക്കുന്നു';

  @override
  String get useExistingText => 'നിലവിലുള്ളത് ഉപയോഗിക്കുക';

  @override
  String get viewOnlineGuide => 'ഓൺലൈൻ ഗൈഡ് കാണുക';

  @override
  String get voluntaryTranslations => 'സ്വമേധയായുള്ള പരിഭാഷകൾ';

  @override
  String get watchAdAndRefill => 'പരസ്യം കണ്ട് റീഫിൽ ചെയ്യുക (+5 എണ്ണം)';

  @override
  String get word => 'വാക്ക്';

  @override
  String get wordDefenseDesc =>
      'ശത്രുക്കൾ എത്തുന്നതിന് മുൻപ് വാക്ക് പറഞ്ഞ് താവളം രക്ഷിക്കുക.';

  @override
  String get wordDefenseTitle => 'വേഡ് ഡിഫൻസ്';

  @override
  String get wordModeLabel => 'വാക്ക് മോഡ്';

  @override
  String get yourPronunciation => 'നിങ്ങളുടെ ഉച്ചാരണം';

  @override
  String get ttsUnsupportedNatively =>
      'ഈ ഉപകരണത്തിന്റെ സ്ഥിര ക്രമീകരണങ്ങളിൽ ഈ ഭാഷയിലുള്ള സംഭാഷണ ഔട്ട്പുട്ട് പിന്തുണയ്ക്കുന്നില്ല.';

  @override
  String get homeTab => 'ഹോം';

  @override
  String get welcomeTitle => 'Talkie-ലേക്ക് സ്വാഗതം!';

  @override
  String get welcomeDesc =>
      'Talkie-ലേക്ക് സ്വാഗതം! ലോകമെമ്പാടുമുള്ള 80-ൽ അധികം ഭാഷകളെ 100% കൃത്യതയോടെ പിന്തുണയ്ക്കുന്ന, പുതിയ പ്രീമിയം 3D ഡിസൈനും മികച്ച പ്രകടനവും അടങ്ങിയ പഠനാനുഭവം!';

  @override
  String get welcomeButton => 'ആരംഭിക്കുക';

  @override
  String get labelDetails => 'വിശദാംശങ്ങൾ';

  @override
  String get translationResult => 'വിവർത്തന ഫലം';

  @override
  String get inputContent => 'ഇൻപുട്ട് ഉള്ളടക്കം';

  @override
  String get translateNow => 'ഇപ്പോൾ വിവർത്തനം ചെയ്യുക';

  @override
  String get tooltipSettingsConfirm => 'ക്രമീകരണങ്ങൾ സ്ഥിരീകരിക്കുക';

  @override
  String get hintNoteExample => 'ഉദാഹരണം: സന്ദർഭം, പര്യായപദങ്ങൾ തുടങ്ങിയവ';

  @override
  String get hintTagExample => 'ഉദാഹരണം: ബിസിനസ്, യാത്ര...';

  @override
  String get addNew => 'പുതിയവ ചേർക്കുക';

  @override
  String get newNotebookTitle => 'പുതിയ നോട്ട്ബുക്കിന്റെ പേര്';

  @override
  String get enterNameHint => 'പേര് നൽകുക';

  @override
  String get add => 'ചേർക്കുക';

  @override
  String get openSettings => 'ക്രമീകരണങ്ങൾ തുറക്കുക';

  @override
  String get helpNotebook =>
      'പരിഭാഷപ്പെടുത്തിയ ഫലങ്ങൾ സംരക്ഷിക്കാൻ ഒരു ഫോൾഡർ തിരഞ്ഞെടുക്കുക.';

  @override
  String get helpNote =>
      'വാക്കുകളുടെ അർത്ഥം, ഉദാഹരണങ്ങൾ, സാഹചര്യങ്ങൾ എന്നിവ സ്വതന്ത്രമായി രേഖപ്പെടുത്തുക.';

  @override
  String get helpTag => 'പിന്നീട് തരംതിരിക്കാനോ തിരയാനോ ഉള്ള കീവേഡുകൾ നൽകുക.';

  @override
  String get requestTranslation => 'വിവർത്തനം അഭ്യർത്ഥിക്കുക';

  @override
  String get statusRequestSuccess => 'വിവർത്ത അഭ്യർത്ഥന പൂർത്തിയായിരിക്കുന്നു.';

  @override
  String statusRequestFailed(String error) {
    return 'വിവർത്തന അഭ്യർത്ഥന പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'പഠന ഭാഷ ലഭ്യമല്ല';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'നിങ്ങൾ തിരഞ്ഞെടുത്ത മെറ്റീരിയൽ നിലവിൽ തിരഞ്ഞെടുത്തിട്ടുള്ള പഠന ഭാഷയായ ($targetLang) പിന്തുണയ്ക്കുന്നില്ല അതിനാൽ ലോക്കലായി സേവ് ചെയ്യാൻ കഴിയില്ല. വിവർത്തനം അഭ്യർത്ഥിക്കാമോ?';
  }
}

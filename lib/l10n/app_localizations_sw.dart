// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get basicWords => 'Hifadhi ya Msingi ya Maneno';

  @override
  String get inputLanguage => 'Lugha ya kuingiza';

  @override
  String get translationLanguage => 'Lugha ya kutafsiri';

  @override
  String get simplifiedGuidance =>
      'Badilisha mazungumzo ya kila siku mara moja katika lugha ya kigeni! Talkie inarekodi maisha yako ya lugha.';

  @override
  String get noDataForLanguage =>
      'Hakuna data ya kujifunza kwa lugha uliyochagua kwenye DB ya ndani. Tafadhali pakua data au chagua lugha nyingine.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Ghairi';

  @override
  String get accuracy => 'Usahihi';

  @override
  String get ttsMissing =>
      'Injini ya sauti ya lugha hii haijasakinishwa kwenye kifaa chako.';

  @override
  String get ttsInstallGuide =>
      'Tafadhali sakinisha data ya lugha husika katika Mipangilio ya Android > Google TTS.';

  @override
  String get adLoading => 'Inapakia tangazo. Tafadhali jaribu tena baadaye.';

  @override
  String get addNewSubject => 'Ongeza jina jipya';

  @override
  String get addParticipant => 'Ongeza Mshiriki';

  @override
  String get addTagHint => 'Ongeza lebo...';

  @override
  String get alreadyHaveAccount => 'Tayari una akaunti?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Cheza Kiotomatiki';

  @override
  String get basic => 'Msingi';

  @override
  String get basicDefault => 'Msingi';

  @override
  String get basicMaterialRepository => 'Hifadhi ya Msingi ya Sentensi/Maneno';

  @override
  String get basicSentenceRepository => 'Hifadhi ya Sentensi za Msingi';

  @override
  String get basicSentences => 'Hifadhi ya Msingi ya Sentensi';

  @override
  String get basicWordRepository => 'Hifadhi ya Maneno ya Msingi';

  @override
  String get caseObject => 'Lengo';

  @override
  String get casePossessive => 'Miliki';

  @override
  String get casePossessivePronoun => 'Kiwakilishi cha Kumiliki';

  @override
  String get caseReflexive => 'Kiwakilishi cha Reflexive';

  @override
  String get caseSubject => 'Nominative';

  @override
  String get chatAiChat => 'Ongea';

  @override
  String get chatAllConversations => 'Mazungumzo Yote';

  @override
  String get chatChoosePersona => 'Chagua Mhusika';

  @override
  String get chatEndMessage => 'Unataka kumaliza gumzo?';

  @override
  String get chatEndTitle => 'Maliza na Uhifadhi Gumzo';

  @override
  String chatFailed(Object error) {
    return 'Gumzo Limegoma: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Dondoo la Mazungumzo ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Historia ya Gumzo';

  @override
  String get chatNew => 'Gumzo Jipya';

  @override
  String get chatNewChat => 'Gumzo Jipya';

  @override
  String get chatNoConversations => 'Hakuna mazungumzo bado';

  @override
  String get chatSearchHint => '대화 제목으로 검색...';

  @override
  String get chatSaveAndExit => 'Hifadhi na Uondoke';

  @override
  String get chatStartNewPrompt => 'Anza mazungumzo mapya kwa mazoezi!';

  @override
  String get chatTypeHint => 'Andika ujumbe...';

  @override
  String get chatUntitled => 'Gumzo Lisilo na Kichwa';

  @override
  String get checking => 'Inaangalia...';

  @override
  String get clearAll => 'Futa zote';

  @override
  String get confirm => 'Sawa';

  @override
  String get confirmDelete => 'Una uhakika unataka kufuta rekodi hii?';

  @override
  String get confirmDeleteConversation =>
      'Unataka kufuta mazungumzo haya?\nHazitaweza kurejeshwa.';

  @override
  String get confirmDeleteParticipant => 'Unataka kumfuta mshiriki huyu?';

  @override
  String get contextTagHint =>
      'Andika hali ili iwe rahisi kutofautisha baadaye';

  @override
  String get contextTagLabel =>
      'Muktadha/Hali (Si Lazima) - mfano: salamu ya asubuhi, lugha rasmi';

  @override
  String get copiedToClipboard => 'Imenakiliwa kwenye ubao wa kunakili!';

  @override
  String get copy => 'Nakili';

  @override
  String get correctAnswer => 'Jibu Sahihi';

  @override
  String get createNew => 'Unda Mpya';

  @override
  String get currentLocation => 'Eneo la Sasa';

  @override
  String get currentMaterialLabel => 'Kitabu cha Sasa Kilichochaguliwa:';

  @override
  String get delete => 'Futa';

  @override
  String deleteFailed(String error) {
    return 'Kufuta kumeshindikana: $error';
  }

  @override
  String get deleteRecord => 'Futa Rekodi';

  @override
  String get dialogueQuestDesc =>
      'Fanya mazoezi ya mazungumzo kupitia mchezo wa kuigiza. Chagua jibu linalofaa na useme.';

  @override
  String get dialogueQuestTitle => 'Jitihada za Mazungumzo';

  @override
  String get disambiguationPrompt => 'Ungependa itafsiriwe kwa maana gani?';

  @override
  String get disambiguationTitle => 'Chagua maana';

  @override
  String get dontHaveAccount => 'Huna akaunti?';

  @override
  String get editParticipant => 'Hariri Mshiriki';

  @override
  String get email => 'Barua pepe';

  @override
  String get emailAlreadyInUse =>
      'Barua pepe hii tayari inatumika. Tafadhali ingia au tumia urejeshaji wa nywila.';

  @override
  String get enterNewSubjectName => 'Ingiza jina jipya';

  @override
  String get enterSentenceHint => 'Andika sentensi...';

  @override
  String get enterTextHint => 'Ingiza maandishi ya kutafsiri';

  @override
  String get enterTextToTranslate => 'Weka maandishi ya kutafsiri';

  @override
  String get enterWordHint => 'Andika neno...';

  @override
  String get error => 'Kosa';

  @override
  String get errorHateSpeech =>
      'Haiwezi kutafsiri kwa sababu ina matamshi ya chuki.';

  @override
  String get errorOtherSafety =>
      'Tafsiri imekataliwa na sera ya usalama ya AI.';

  @override
  String get errorProfanity => 'Haiwezi kutafsiri kwa sababu ina lugha chafu.';

  @override
  String get errorSelectCategory => 'Kwanza chagua neno au sentensi!';

  @override
  String get errorSexualContent =>
      'Haiwezi kutafsiri kwa sababu ina maudhui ya ngono.';

  @override
  String get errors => 'Makosa:';

  @override
  String get female => 'Kike';

  @override
  String get file => 'Faili:';

  @override
  String get filterAll => 'Zote';

  @override
  String get flip => 'Geuza';

  @override
  String get formComparative => 'Linganishi';

  @override
  String get formInfinitive => 'Infinitive/Sasa';

  @override
  String get formPast => 'Iliyopita';

  @override
  String get formPastParticiple => 'Mshiriki wa Zamani';

  @override
  String get formPlural => 'Wingi';

  @override
  String get formPositive => 'Chanya';

  @override
  String get formPresent => 'Sasa';

  @override
  String get formPresentParticiple => 'Mshiriki wa Sasa (ing)';

  @override
  String get formSingular => 'Umoja';

  @override
  String get formSuperlative => 'Mkuu';

  @override
  String get formThirdPersonSingular => 'Mtu wa Tatu Umoja';

  @override
  String get gameModeDesc => 'Chagua hali ya mchezo ya kufanya mazoezi';

  @override
  String get gameModeTitle => 'Hali ya Mchezo';

  @override
  String get gameOver => 'Mchezo Umekwisha';

  @override
  String get gender => 'Jinsia';

  @override
  String get labelFilterMaterial => 'Nyaraka';

  @override
  String get labelFilterTag => 'Lebo';

  @override
  String get generalTags => 'Tagi za jumla';

  @override
  String get getMaterials => 'Pata Nyenzo';

  @override
  String get good => 'Nzuri';

  @override
  String get googleContinue => 'Endelea na Google';

  @override
  String get helpDialogueImportDesc =>
      'Ingiza seti nzima ya mazungumzo kutoka kwa faili ya JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'Kwa kuleta katika Hali 3, unda JSON:';

  @override
  String get helpJsonTypeDialogue => 'Mazungumzo';

  @override
  String get helpJsonTypeSentence => 'Sentensi';

  @override
  String get helpJsonTypeWord => 'Neno';

  @override
  String get helpMode1Desc =>
      'Anza kujifunza lugha kwa njia angavu zaidi kupitia maikrofoni ya 3D ya premium na ikoni kubwa za kibodi.';

  @override
  String get helpMode1Details =>
      '• Mpangilio wa Lugha: Angalia lugha yako na lugha unayojifunza na ubadilishe lugha ya kujifunzia kwa kutumia kitufe cha lugha kilicho juu ya skrini ya nyumbani.\n• Uingizaji Rahisi: Ingiza mara moja kupitia maikrofoni kubwa na dirisha la maandishi katikati.\n• Thibitisha Mipangilio: Baada ya kumaliza kuingiza, bonyeza kitufe cha tiki ya bluu upande wa kulia. Dirisha la mipangilio ya kina litaonekana.\n• Mipangilio ya Kina: Unaweza kutaja mkusanyiko wa nyenzo za kuhifadhi, dokezo (kumbukumbu), na lebo kwenye mazungumzo yanayoonekana.\n• Tafsiri Sasa: Baada ya kumaliza mipangilio, bonyeza kitufe cha kijani cha kutafsiri na akili bandia itafanya tafsiri mara moja.\n• Utafutaji Kiotomatiki: Hugundua na kuonyesha tafsiri zinazofanana zilizopo kwa wakati halisi unapoandika.\n• Sikiliza na Uhifadhi: Sikiliza matamshi na ikoni ya spika chini ya matokeo ya tafsiri, na uiongeze kwenye orodha yako ya kujifunza kupitia \'Hifadhi Data\'.';

  @override
  String get helpMode2Desc =>
      'Pitia sentensi zilizohifadhiwa na tafsiri iliyofichwa.';

  @override
  String get helpMode2Details =>
      '• Chagua kitabu cha masomo: Tumia \'Chagua kitabu cha masomo\' au \'Maktaba ya mtandaoni\' kutoka kwenye menyu (⋮) iliyo juu kulia.\n• Geuza kadi: Thibitisha tafsiri kwa \'Onyesha/Ficha\'.\n• Sikiliza: Cheza matamshi kwa ikoni ya spika.\n• Kamilisha kujifunza: Kamilisha kujifunza kwa alama ya tiki (V).\n• Futa: Futa rekodi kwa kubonyeza kadi kwa muda mrefu.\n• Tafuta na chujio: Saidia upau wa utafutaji (utafutaji mahiri wa moja kwa moja) na lebo, kichujio cha herufi ya kwanza.';

  @override
  String get helpMode3Desc =>
      'Sikiliza sentensi na urudie (Shadowing) ili kufanya mazoezi ya matamshi.';

  @override
  String get helpMode3Details =>
      '• Chagua: Chagua kifurushi\n• Muda: [-] [+] muda wa kusubiri (3s-60s)\n• Anza/Simama: Dhibiti kikao\n• Zungumza: Sikiliza na rudia\n• Alama: Usahihi (0-100)\n• Jaribu tena: Kitufe ikiwa sauti haigunduliwi';

  @override
  String get helpModeChatDesc =>
      'Fanya mazoezi ya mazungumzo halisi kwa kuzungumza na AI.';

  @override
  String get helpModeChatDetails =>
      '• Gumzo la AI: Fanya mazoezi ya mazungumzo ya vitendo na mtu kupitia menyu ya \'Gumzo\' kwenye upau wa kichupo cha chini\n• Mpangilio wa mtu: Bainisha kwa uhuru jinsia, jina na msimbo wa lugha wa mhusika mwingine\n• Hali ya GPS: Tambua eneo langu la sasa na upendekeze mada za mazungumzo zinazofaa eneo\n• Lugha 2: Majibu ya AI yanaonyeshwa pamoja na tafsiri ili kuongeza athari ya kujifunza\n• Usimamizi wa rekodi: Chuja historia ya mazungumzo ya zamani na uhifadhi ujumbe maalum kama nyenzo za kujifunza wakati wa mazungumzo';

  @override
  String get helpTabJson => 'Muundo wa JSON';

  @override
  String get helpTabModes => 'Njia';

  @override
  String get helpTabTour => 'Ziara';

  @override
  String get helpTitle => 'Msaada & Mwongozo';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Ficha';

  @override
  String importAdded(int count) {
    return 'Imeongezwa: $count';
  }

  @override
  String get importComplete => 'Kuleta Kukamilika';

  @override
  String get importDuplicateTitleError =>
      'Nyenzo iliyo na kichwa sawa tayari ipo. Tafadhali badilisha kichwa na ujaribu tena.';

  @override
  String importErrorMessage(String error) {
    return 'Imeshindwa kuleta faili:\\n$error';
  }

  @override
  String get importFailed => 'Kuleta Kumeshindikana';

  @override
  String importFile(String fileName) {
    return 'Faili: $fileName';
  }

  @override
  String get importJsonFile => 'Leta JSON';

  @override
  String get importJsonFilePrompt => 'Tafadhali leta faili ya JSON';

  @override
  String importSkipped(int count) {
    return 'Imerukwa: $count';
  }

  @override
  String importTotal(int count) {
    return 'Jumla: $count';
  }

  @override
  String get importing => 'inaleta...';

  @override
  String get inputModeTitle => 'Uingizaji';

  @override
  String intervalSeconds(int seconds) {
    return 'Muda: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Tafadhali ingiza barua pepe halali.';

  @override
  String get kakaoContinue => 'Endelea na Kakao';

  @override
  String get labelLangCode => 'Msimbo wa Lugha (mfano: en-US, ko-KR)';

  @override
  String get labelName => 'Jina';

  @override
  String get labelNote => 'Dokezo';

  @override
  String get labelPOS => 'Aina ya maneno';

  @override
  String get labelRole => 'Nafasi';

  @override
  String get labelSentence => 'Sentensi';

  @override
  String get labelSentenceCollection => 'Mkusanyiko wa sentensi';

  @override
  String get labelSentenceType => 'Aina ya sentensi';

  @override
  String get labelShowMemorized => 'Nimemaliza';

  @override
  String get labelType => 'Aina:';

  @override
  String get labelWord => 'Neno';

  @override
  String get labelWordbook => 'Mkusanyiko wa maneno';

  @override
  String get language => 'Lugha';

  @override
  String get languageSettings => 'Mipangilio ya lugha';

  @override
  String get languageSettingsTitle => 'Mipangilio ya Lugha';

  @override
  String get libTitleFirstMeeting => 'Mkutano wa Kwanza';

  @override
  String get libTitleGreetings1 => 'Salamu 1';

  @override
  String get libTitleNouns1 => 'Majina 1';

  @override
  String get libTitleVerbs1 => 'Vitendo 1';

  @override
  String get listen => 'Sikiliza';

  @override
  String get listening => 'Inasikiliza...';

  @override
  String get loadingParticipants => 'Inapakia Washiriki...';

  @override
  String get location => 'Mahali';

  @override
  String get login => 'Ingia';

  @override
  String get logout => 'Ondoka';

  @override
  String get logoutConfirmMessage => 'Unataka kuondoka kwenye kifaa hiki?';

  @override
  String get logoutConfirmTitle => 'Ondoka';

  @override
  String get male => 'Kiume';

  @override
  String get manageParticipants => 'Simamia Washiriki';

  @override
  String get manual => 'Uingizaji Kiotomatiki';

  @override
  String get markAsStudied => 'Weka alama imesomwa';

  @override
  String get materialInfo => 'Maelezo ya nyenzo';

  @override
  String get me => 'Mimi';

  @override
  String get menuDeviceImport => 'Ingiza Nyenzo kutoka kwa Kifaa';

  @override
  String get menuHelp => 'Msaada';

  @override
  String get menuLanguageSettings => 'Mipangilio ya Lugha';

  @override
  String get menuOnlineLibrary => 'Maktaba ya Mtandaoni';

  @override
  String get menuSelectMaterialSet => 'Chagua nyenzo ya kujifunzia';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Ziara ya Jinsi ya Kutumia';

  @override
  String get menuWebDownload => 'Mwongozo wa Mtumiaji';

  @override
  String get metadataDialogTitle => 'Uainishaji wa Kina';

  @override
  String get metadataFormType => 'Aina ya Kisima';

  @override
  String get metadataRootWord => 'Mzizi (Neno Msingi)';

  @override
  String get micButtonTooltip => 'Anza Utambuzi wa Sauti';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Kitabu cha Sasa Kilichochaguliwa: $name';
  }

  @override
  String get mode2Title => 'Mapitio';

  @override
  String get mode3Next => 'Inayofuata';

  @override
  String get mode3Start => 'Anza';

  @override
  String get mode3Stop => 'Acha';

  @override
  String get mode3TryAgain => 'Jaribu Tena';

  @override
  String get mySentenceCollection => 'Mkusanyiko Wangu wa Sentensi';

  @override
  String get myWordbook => 'Kitabu Changu cha Maneno';

  @override
  String get neutral => 'Si upande wowote';

  @override
  String get newSubjectName => 'Jina jipya la mada/sentensi';

  @override
  String get next => 'Inayofuata';

  @override
  String get noDialogueHistory => 'Hakuna historia ya mazungumzo.';

  @override
  String get noInternetWarningMic =>
      'Hakuna muunganisho wa intaneti. Utambuzi wa sauti unaweza usiwezekane nje ya mtandao.';

  @override
  String get noInternetWarningTranslate =>
      'Hakuna muunganisho wa intaneti. Kitendaji cha tafsiri hakipatikani nje ya mtandao. Tafadhali tumia hali ya kukagua.';

  @override
  String get noMaterialsInCategory => 'Hakuna nyenzo katika kitengo hiki.';

  @override
  String get noParticipantsFound => 'Hakuna washiriki waliosajiliwa.';

  @override
  String get noRecords => 'Hakuna rekodi kwa lugha iliyochaguliwa';

  @override
  String get noStudyMaterial => 'Hakuna nyenzo za kujifunzia.';

  @override
  String get noTextToPlay => 'Hakuna maandishi ya kucheza';

  @override
  String get noTranslationToSave => 'Hakuna tafsiri ya kuhifadhi';

  @override
  String get noVoiceDetected => 'Sauti haijagunduliwa';

  @override
  String get notSelected => '- Haijachaguliwa -';

  @override
  String get onlineLibraryCheckInternet =>
      'Tafadhali angalia muunganisho wako wa intaneti au ujaribu tena baadaye.';

  @override
  String get onlineLibraryLoadFailed => 'Imeshindwa kupakia nyenzo.';

  @override
  String get onlineLibraryNoMaterials => 'Hakuna nyenzo.';

  @override
  String get participantDeleted => 'Mshiriki amefutwa.';

  @override
  String get participantRename => 'Badilisha Jina la Mshiriki';

  @override
  String get partner => 'Mshirika';

  @override
  String get partnerMode => 'Hali ya Mshirika';

  @override
  String get password => 'Nenosiri';

  @override
  String get passwordTooShort => 'Nenosiri lazima liwe na angalau herufi 6.';

  @override
  String get perfect => 'Nzuri sana!';

  @override
  String get personaFriend => 'Rafiki Mwenyeji';

  @override
  String get personaGuide => 'Mwongoza Watalii';

  @override
  String get personaTeacher => 'Mwalimu wa Kiingereza';

  @override
  String get playAgain => 'Cheza Tena';

  @override
  String playbackFailed(String error) {
    return 'Kucheza kumeshindikana: $error';
  }

  @override
  String get playing => 'Inacheza...';

  @override
  String get posAdjective => 'Sifa';

  @override
  String get posAdverb => 'Kielezi';

  @override
  String get posConjunction => 'Kiunganishi';

  @override
  String get posInterjection => 'Mshangao';

  @override
  String get posNoun => 'Nomino';

  @override
  String get posPreposition => 'Kihusishi';

  @override
  String get posPronoun => 'Kiwakilishi';

  @override
  String get posVerb => 'Kitenzi';

  @override
  String get practiceModeTitle => 'Mazoezi';

  @override
  String get practiceWordsOnly => 'Fanya Mazoezi ya Maneno Tu';

  @override
  String progress(int current, int total) {
    return 'Maendeleo: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Onyesha $count Zilizoundwa Hivi Karibuni';
  }

  @override
  String recognitionFailed(String error) {
    return 'Utambuzi wa sauti umeshindikana: $error';
  }

  @override
  String get recognized => 'Utambuzi umekamilika';

  @override
  String get recognizedText => 'Matamshi Yanayotambuliwa:';

  @override
  String get recordDeleted => 'Rekodi imefutwa';

  @override
  String get refresh => 'Onyesha upya';

  @override
  String get reset => 'Weka Upya';

  @override
  String get resetPracticeHistory => 'Weka Upya Historia ya Mazoezi';

  @override
  String get retry => 'Jaribu Tena?';

  @override
  String get reviewAll => 'Kagua Yote';

  @override
  String reviewCount(int count) {
    return 'Imepitiwa mara $count';
  }

  @override
  String get reviewModeTitle => 'Kagua';

  @override
  String get roleAi => 'Akili Bandia';

  @override
  String get roleThirdParty => 'Mtu wa Tatu';

  @override
  String get roleUser => 'Mtumiaji';

  @override
  String get save => 'Hifadhi';

  @override
  String get saveData => 'Hifadhi';

  @override
  String saveFailed(String error) {
    return 'Kuhifadhi kumeshindikana: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Hifadhi tafsiri kutoka kwa hali ya utafutaji';

  @override
  String get saved => 'Imehifadhiwa';

  @override
  String get saving => 'Inahifadhi...';

  @override
  String score(String score) {
    return 'Usahihi: $score%';
  }

  @override
  String get scoreLabel => 'Alama';

  @override
  String get search => 'Tafuta';

  @override
  String get searchConditions => 'Masharti ya Utafutaji';

  @override
  String get searchSentenceHint => 'Tafuta sentensi...';

  @override
  String get searchWordHint => 'Tafuta neno...';

  @override
  String get sectionSentence => 'Sehemu ya sentensi';

  @override
  String get sectionSentences => 'Sentensi';

  @override
  String get sectionWord => 'Sehemu ya maneno';

  @override
  String get sectionWords => 'Maneno';

  @override
  String get selectExistingSubject => 'Chagua jina lililopo';

  @override
  String get selectMaterialPrompt => 'Tafadhali chagua nyenzo za kusoma';

  @override
  String get selectMaterialSet => 'Chagua seti ya nyenzo za kujifunzia';

  @override
  String get selectPOS => 'Chagua Sehemu ya Hotuba';

  @override
  String get selectParticipants => 'Chagua Washiriki';

  @override
  String get selectSentenceType => 'Chagua Aina ya Sentensi';

  @override
  String get selectStudyMaterial => 'Chagua Nyenzo';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Sentensi';

  @override
  String get signUp => 'Jisajili';

  @override
  String get similarTextFound => 'Maandishi yanayofanana yamepatikana';

  @override
  String get skip => 'Ruka';

  @override
  String get source => 'Chanzo:';

  @override
  String get sourceLanguage => 'Lugha Chanzo';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Sema Sasa!';

  @override
  String get speaker => 'Mzungumzaji';

  @override
  String get speakerSelect => 'Chagua Mzungumzaji';

  @override
  String get speakingPractice => 'Mazoezi ya Kuzungumza';

  @override
  String get startChat => 'Anza Gumzo';

  @override
  String get startPractice => 'Anza Mazoezi';

  @override
  String get startTutorial => 'Anza Ziara';

  @override
  String get startWarning => 'Onyo';

  @override
  String get startsWith => 'Huanza na';

  @override
  String get statusCheckEmail =>
      'Tafadhali thibitisha barua pepe ili ukamilishe uthibitishaji.';

  @override
  String statusDownloading(Object name) {
    return 'Inapakua: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Imeshindwa Kuleta: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name Imekamilika Kuleta';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Kuingia kumeghairiwa.';

  @override
  String statusLoginFailed(Object error) {
    return 'Imeshindwa kuingia: $error';
  }

  @override
  String get statusLoginSuccess => 'Umefanikiwa kuingia.';

  @override
  String get statusLogoutSuccess => 'Umeondoka.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Imeshindwa kusajili: $error';
  }

  @override
  String get statusSigningUp => 'Inasajili...';

  @override
  String get stopPractice => 'Simamisha';

  @override
  String get studyComplete => 'Imesomwa';

  @override
  String studyRecords(int count) {
    return 'Rekodi ($count)';
  }

  @override
  String get styleFormal => 'Rasmi';

  @override
  String get styleInformal => 'Isiyo Rasmi';

  @override
  String get stylePolite => 'Heshima';

  @override
  String get styleSlang => 'Mitaani';

  @override
  String get subject => 'Somo:';

  @override
  String get swapLanguages => 'Badilisha Lugha';

  @override
  String get switchToAi => 'Badilisha kwenda Hali ya AI';

  @override
  String get switchToPartner => 'Badilisha kwenda Hali ya Mshirika';

  @override
  String get syncingData => 'Inasawazisha data...';

  @override
  String get tabConversation => 'Mazungumzo';

  @override
  String tabReview(int count) {
    return 'Mapitio ($count)';
  }

  @override
  String get tabSentence => 'sentensi';

  @override
  String get tabSpeaking => 'Kuzungumza';

  @override
  String tabStudyMaterial(int count) {
    return 'Nyenzo ($count)';
  }

  @override
  String get tabWord => 'neno';

  @override
  String get tagFormal => 'Rasmi';

  @override
  String get tagSelection => 'Uchaguzi wa Lebo';

  @override
  String get targetLanguage => 'Lugha Lengwa';

  @override
  String get targetLanguageFilter => 'Kichujio cha Lugha:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Muda wa kufikiria kabla ya jibu sahihi kufichuliwa.';

  @override
  String get thinkingTimeInterval => 'Muda wa Kuchelewa wa Uchezaji';

  @override
  String get timeUp => 'Muda Umekwisha!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Tagi ya kichwa (Maktaba)';

  @override
  String get tooltipDecrease => 'Punguza';

  @override
  String get tooltipIncrease => 'Ongeza';

  @override
  String get tooltipSearch => 'Tafuta';

  @override
  String get tooltipSpeaking => 'Kuzungumza';

  @override
  String get tooltipStudyReview => 'Kusoma+Kurudia';

  @override
  String totalRecords(int count) {
    return 'Jumla ya rekodi $count (Angalia Zote)';
  }

  @override
  String get translate => 'Tafsiri';

  @override
  String get translating => 'Inatafsiri...';

  @override
  String get translation => 'Tafsiri';

  @override
  String get translationComplete => 'Tafsiri imekamilika (inahitaji kuhifadhi)';

  @override
  String translationFailed(String error) {
    return 'Tafsiri imeshindikana: $error';
  }

  @override
  String get translationLimitExceeded => 'Umefikia kikomo cha tafsiri';

  @override
  String get translationLimitMessage =>
      'Umetumia tafsiri zote za bure za kila siku (mara 5).\\n\\nJe, ungependa kutazama tangazo na kujaza mara 5 mara moja?';

  @override
  String get translationLoaded => 'Tafsiri iliyohifadhiwa imepakiwa';

  @override
  String get translationRefilled => 'Hesabu ya tafsiri imejazwa tena mara 5!';

  @override
  String get translationResultHint =>
      'Matokeo ya Tafsiri - Inaweza Kurekebishwa';

  @override
  String get tryAgain => 'Jaribu tena';

  @override
  String get tutorialAiChatDesc =>
      'Fanya mazoezi ya mazungumzo halisi na wahusika wa AI.';

  @override
  String get tutorialAiChatTitle => 'Ongea na AI';

  @override
  String get tutorialContextDesc =>
      'Ongeza muktadha (k.m. Asubuhi) ili kutofautisha sentensi zinazofanana.';

  @override
  String get tutorialContextTitle => 'Lebo ya Muktadha';

  @override
  String get tutorialLangSettingsDesc =>
      'Weka lugha asili na lugha lengwa ya kutafsiri.';

  @override
  String get tutorialLangSettingsTitle => 'Mipangilio ya Lugha';

  @override
  String get tutorialM1ToggleDesc => 'Badilisha hali za neno na sentensi hapa.';

  @override
  String get tutorialM1ToggleTitle => 'Hali ya Neno/Sentensi';

  @override
  String get tutorialM2DropdownDesc => 'Chagua nyenzo za kusoma.';

  @override
  String get tutorialM2ImportDesc =>
      'Leta faili ya JSON kutoka kwenye folda ya kifaa.';

  @override
  String get tutorialM2ListDesc =>
      'Angalia kadi zako na uzigeuze. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Orodha ya Kusoma';

  @override
  String get tutorialM2SearchDesc =>
      'Tafuta na upate maneno na sentensi zilizohifadhiwa haraka.';

  @override
  String get tutorialM2SelectDesc => 'Chagua nyenzo au \'Pitia Zote\'.';

  @override
  String get tutorialM2SelectTitle => 'Chagua & Kichujio';

  @override
  String get tutorialM3IntervalDesc => 'Rekebisha muda wa kusubiri.';

  @override
  String get tutorialM3IntervalTitle => 'Muda';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Chagua seti kwa mazoezi ya kuzungumza.';

  @override
  String get tutorialM3SelectTitle => 'Chagua Nyenzo';

  @override
  String get tutorialM3StartDesc => 'Bofya cheza ili kuanza.';

  @override
  String get tutorialM3StartTitle => 'Anza';

  @override
  String get tutorialM3WordsDesc =>
      'Fanya mazoezi ya maneno yaliyohifadhiwa tu wakati imechaguliwa.';

  @override
  String get tutorialM3WordsTitle => 'Mazoezi ya Maneno';

  @override
  String get tutorialMicDesc => 'Gonga maikrofoni kwa ingizo la sauti.';

  @override
  String get tutorialMicTitle => 'Ingizo la Sauti';

  @override
  String get tutorialSaveDesc => 'Hifadhi tafsiri yako.';

  @override
  String get tutorialSaveTitle => 'Hifadhi';

  @override
  String get tutorialSwapDesc =>
      'Ninabadilisha lugha yangu na lugha ninayojifunza.';

  @override
  String get tutorialTabDesc =>
      'Unaweza kuchagua hali ya kujifunza unayotaka hapa.';

  @override
  String get tutorialTapToContinue => 'Gusa ili kuendelea';

  @override
  String get tutorialTransDesc => 'Gonga hapa kutafsiri maandishi yako.';

  @override
  String get tutorialTransTitle => 'Tafsiri';

  @override
  String get typeExclamation => 'Mshangao';

  @override
  String get typeImperative => 'Agizo';

  @override
  String get typeQuestion => 'Swali';

  @override
  String get typeStatement => 'Kauli';

  @override
  String get usageLimitTitle => 'Upeo wa matumizi umefikiwa';

  @override
  String get useExistingText => 'Tumia Iliyopo';

  @override
  String get viewOnlineGuide => 'Angalia Mwongozo wa Mtandaoni';

  @override
  String get voluntaryTranslations => 'Tafsiri za Hiari';

  @override
  String get watchAdAndRefill => 'Tazama Tangazo na Ujazwe Tena (+5)';

  @override
  String get word => 'Neno';

  @override
  String get wordDefenseDesc =>
      'Tetea msingi wako kwa kusema neno kabla adui hajafika.';

  @override
  String get wordDefenseTitle => 'Ulinzi wa Neno';

  @override
  String get wordModeLabel => 'Hali ya Neno';

  @override
  String get yourPronunciation => 'Matamshi Yako';

  @override
  String get ttsUnsupportedNatively =>
      'Matamshi ya sauti hayatumiki kiasili katika lugha hii kwenye mipangilio ya kifaa hiki.';

  @override
  String get homeTab => 'Nyumbani';

  @override
  String get welcomeTitle => 'Karibu kwenye Talkie!';

  @override
  String get welcomeDesc =>
      'Karibu Talkie! Tunasaidia lugha zote 80+ ulimwenguni kwa uadilifu wa 100%, na tunakupa uzoefu kamili wa kujifunza na muundo mpya wa 3D wa premium na utendaji ulioboreshwa.';

  @override
  String get welcomeButton => 'Anza';

  @override
  String get labelDetails => 'Mipangilio Zaidi';

  @override
  String get translationResult => 'Matokeo ya Tafsiri';

  @override
  String get inputContent => 'Ingiza Maandishi';

  @override
  String get translateNow => 'Tafsiri Sasa';

  @override
  String get tooltipSettingsConfirm => 'Thibitisha Mipangilio';

  @override
  String get hintNoteExample =>
      'Mfano: Maelezo ya muktadha, maneno yenye maana nyingi, nk.';

  @override
  String get hintTagExample => 'Mfano: Biashara, safari... ';

  @override
  String get addNew => 'Ongeza Mpya';

  @override
  String get newNotebookTitle => 'Jina la Daftari Jipya';

  @override
  String get enterNameHint => 'Ingiza jina';

  @override
  String get add => 'Ongeza';

  @override
  String get openSettings => 'Fungua Mipangilio';

  @override
  String get helpNotebook =>
      'Chagua folda ya kuhifadhi matokeo yaliyotafsiriwa.';

  @override
  String get helpNote =>
      'Andika maana za maneno, mifano, au hali mbalimbali kwa uhuru.';

  @override
  String get helpTag => 'Weka maneno muhimu ya kuainisha au kutafuta baadaye.';

  @override
  String get requestTranslation => 'Omba Tafsiri';

  @override
  String get statusRequestSuccess => 'Ombi lako la tafsiri limepokelewa.';

  @override
  String statusRequestFailed(String error) {
    return 'Ombi la tafsiri halikufaulu: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Lugha ya kujifunzia haipatikani';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Nyenzo uliyochagua haiauni lugha ya kujifunzia uliyochagua ($targetLang), na haiwezi kuhifadhiwa. Je, ungependa kuomba tafsiri?';
  }
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get basicWords => 'Grunn orðageymsla';

  @override
  String get inputLanguage => 'Inntaksmál';

  @override
  String get translationLanguage => 'Þýðingarmál';

  @override
  String get simplifiedGuidance =>
      'Umbreyttu daglegum samtölum samstundis á erlent tungumál! Talkie heldur utan um tungumálanotkun þína.';

  @override
  String get noDataForLanguage =>
      'Engin námsefni fyrir valið tungumál er að finna í staðbundnum gagnagrunni. Vinsamlegast halaðu niður efni eða veldu annað tungumál.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Hætta við';

  @override
  String get accuracy => 'Nákvæmni';

  @override
  String get ttsMissing =>
      'Raddræðuvél fyrir þetta tungumál er ekki uppsett á tækinu þínu.';

  @override
  String get ttsInstallGuide =>
      'Vinsamlegast settu upp viðeigandi tungumálapakka í Android stillingum > Google Texti í Tal.';

  @override
  String get adLoading =>
      'Auglýsing er að hlaðast. Vinsamlegast reyndu aftur síðar.';

  @override
  String get addNewSubject => 'Bæta við nýju nafni';

  @override
  String get addParticipant => 'Bæta við þátttakanda';

  @override
  String get addTagHint => 'Bættu við merki...';

  @override
  String get alreadyHaveAccount => 'Ertu nú þegar með aðgang?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Sjálfvirk spilun';

  @override
  String get basic => 'Grunn';

  @override
  String get basicDefault => 'Grunn';

  @override
  String get basicMaterialRepository => 'Grunngeymsla setninga/orða';

  @override
  String get basicSentenceRepository => 'Grunn setningageymsla';

  @override
  String get basicSentences => 'Grunn setningageymsla';

  @override
  String get basicWordRepository => 'Grunn orðageymsla';

  @override
  String get caseObject => 'Þolfall';

  @override
  String get casePossessive => 'Eignarfall';

  @override
  String get casePossessivePronoun => 'Eignarfornafn';

  @override
  String get caseReflexive => 'Afturbeygt fornafn';

  @override
  String get caseSubject => 'Nefnifall';

  @override
  String get chatAiChat => 'Spjall';

  @override
  String get chatAllConversations => 'Öll samtöl';

  @override
  String get chatChoosePersona => 'Veldu persónu';

  @override
  String get chatEndMessage => 'Viltu ljúka samtalinu?';

  @override
  String get chatEndTitle => 'Ljúka og vista samtal';

  @override
  String chatFailed(Object error) {
    return 'Spjall mistókst: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Samtalsútdráttur ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Samtalasaga';

  @override
  String get chatNew => 'Nýtt samtal';

  @override
  String get chatNewChat => 'Nýtt samtal';

  @override
  String get chatNoConversations => 'Engin samtöl ennþá';

  @override
  String get chatSearchHint => 'Leita eftir spjalltitli...';

  @override
  String get chatNoteSearchHint => 'Leita í athugasemdum...';

  @override
  String get chatSaveAndExit => 'Vista og hætta';

  @override
  String get chatStartNewPrompt => 'Byrjaðu nýtt samtal til að æfa!';

  @override
  String get chatTypeHint => 'Sláðu inn skilaboð...';

  @override
  String get chatUntitled => 'Ónefnt samtal';

  @override
  String get checking => 'Athuga...';

  @override
  String get clearAll => 'Hreinsa allt';

  @override
  String get confirm => 'Staðfesta';

  @override
  String get confirmDelete => 'Viltu eyða þessari námsfærslu?';

  @override
  String get confirmDeleteConversation =>
      'Viltu eyða þessu samtali?\nEydd samtöl er ekki hægt að endurheimta.';

  @override
  String get confirmDeleteParticipant => 'Viltu eyða þessum þátttakanda?';

  @override
  String get contextTagHint =>
      'Vinsamlegast skrifaðu aðstæður til að auðvelda aðgreiningu síðar';

  @override
  String get contextTagLabel =>
      'Samhengi/aðstæður (valfrjálst) - td Morgunkveðja, virðingartungumál';

  @override
  String get copiedToClipboard => 'Afritað á klemmuspjald!';

  @override
  String get copy => 'Afrita';

  @override
  String get correctAnswer => 'Rétt svar';

  @override
  String get createNew => 'Halda áfram með nýja setningu';

  @override
  String get currentLocation => 'Núverandi staðsetning';

  @override
  String get currentMaterialLabel => 'Núverandi valið efnissett:';

  @override
  String get delete => 'Eyða';

  @override
  String deleteFailed(String error) {
    return 'Eyðing mistókst: $error';
  }

  @override
  String get deleteRecord => 'Eyða færslu';

  @override
  String get dialogueQuestDesc =>
      'Æfðu samtöl í gegnum atburðarás. Veldu viðeigandi svar og segðu það.';

  @override
  String get dialogueQuestTitle => 'Samtalaleiðangur';

  @override
  String get disambiguationPrompt => 'Hvaða merkingu viltu þýða með?';

  @override
  String get disambiguationTitle => 'Veldu merkingu';

  @override
  String get dontHaveAccount => 'Ertu ekki með aðgang?';

  @override
  String get editParticipant => 'Breyta þátttakanda';

  @override
  String get email => 'Netfang';

  @override
  String get emailAlreadyInUse =>
      'Þetta netfang er þegar í notkun. Vinsamlegast skráðu þig inn eða notaðu endurheimt lykilorðs.';

  @override
  String get enterNewSubjectName => 'Sláðu inn nýtt nafn';

  @override
  String get enterSentenceHint => 'Sláðu inn setningu...';

  @override
  String get enterTextHint => 'Sláðu inn texta til að þýða';

  @override
  String get enterTextToTranslate => 'Sláðu inn texta til að þýða';

  @override
  String get enterWordHint => 'Sláðu inn orð...';

  @override
  String get error => 'Villa';

  @override
  String get errorHateSpeech =>
      'Ekki hægt að þýða vegna þess að það inniheldur hatursorðræðu.';

  @override
  String get errorOtherSafety =>
      'Þýðingu hafnað samkvæmt öryggisstefnu gervigreindar.';

  @override
  String get errorProfanity =>
      'Ekki hægt að þýða vegna þess að það inniheldur blótsyrði.';

  @override
  String get errorSelectCategory =>
      'Vinsamlegast veldu fyrst orð eða setningu!';

  @override
  String get errorSexualContent =>
      'Ekki hægt að þýða vegna þess að það inniheldur kynferðislegt efni.';

  @override
  String get errors => 'Villur:';

  @override
  String get female => 'Kona';

  @override
  String get file => 'Skrá:';

  @override
  String get filterAll => 'Allt';

  @override
  String get flip => 'Sýna';

  @override
  String get formComparative => 'Miðstig';

  @override
  String get formInfinitive => 'Grunnmynd/nútíð';

  @override
  String get formPast => 'Þátíð';

  @override
  String get formPastParticiple => 'Lýsingarháttur þátíðar';

  @override
  String get formPlural => 'Fleirtala';

  @override
  String get formPositive => 'Frumstig';

  @override
  String get formPresent => 'Nútíð';

  @override
  String get formPresentParticiple => 'Lýsingarháttur nútíðar (ing)';

  @override
  String get formSingular => 'Eintala';

  @override
  String get formSuperlative => 'Yfirstig';

  @override
  String get formThirdPersonSingular => '3. persóna eintala';

  @override
  String get gameModeDesc => 'Veldu leikjastillingu til að æfa';

  @override
  String get gameModeTitle => 'Leikjastilling';

  @override
  String get gameOver => 'Leik lokið';

  @override
  String get gender => 'Kyn';

  @override
  String get labelFilterMaterial => 'Efnisyfirlit';

  @override
  String get labelFilterTag => 'Merki';

  @override
  String get generalTags => 'Almenn merki';

  @override
  String get getMaterials => 'Fá efni';

  @override
  String get good => 'Gott';

  @override
  String get googleContinue => 'Halda áfram með Google';

  @override
  String get helpDialogueImportDesc =>
      'Flytja inn heilt samtalasett sem JSON skrá.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON uppbygging: Notaðu `dialogues` fylkið í stað `entries`\n• Sjálfvirk endurheimt: Endurheimt samtalsaheiti, persóna og skilaboðaröð.\n• Staðsetning: Innflutt samtöl birtast á \'Saga\' flipanum í gervigreindarspjallstillingu.';

  @override
  String get helpJsonDesc =>
      'Til að flytja inn námsefni til notkunar í stillingu 3 sem JSON skrá, vinsamlegast fylgdu þessu sniði:';

  @override
  String get helpJsonTypeDialogue => 'Samræða';

  @override
  String get helpJsonTypeSentence => 'Setning';

  @override
  String get helpJsonTypeWord => 'Orð';

  @override
  String get helpMode1Desc =>
      'Byrjaðu tungumálanámið þitt á leiðandi hátt með úrvals 3D hljóðnema og stórum lyklaborðstáknum.';

  @override
  String get helpMode1Details =>
      '• Tungumálastillingar: Athugaðu eða breyttu tungumálunum þínum (þínu tungumáli og tungumálinu sem þú ert að læra) með því að nota tungumálahnappinn efst á heimaskjánum.\n• Einföld innsláttur: Sláðu strax inn í gegnum stóra hljóðnemann og textagluggann í miðjunni.\n• Athugaðu stillingar: Þegar þú hefur lokið við innsláttinn, ýttu á bláa hakmerkið til hægri. Nákvæmar stillingargluggi birtist.\n• Nákvæmar stillingar: Í valmyndinni sem birtist geturðu tilgreint gagnasafn, athugasemdir og merki til að vista.\n• Þýða núna: Eftir að hafa lokið við stillingarnar skaltu ýta á græna þýðingarhnappinn og gervigreind mun þýða strax.\n• Sjálfvirk leit: Greinir og sýnir svipaðar fyrirliggjandi þýðingar í rauntíma meðan þú slærð inn.\n• Hlustaðu og vistaðu: Hlustaðu á framburðinn með hátalaratákninu neðst í þýðingarniðurstöðunum og bættu því við námslistann þinn með \'Vista gögn\'.';

  @override
  String get helpMode2Desc =>
      'Farðu yfir vistaðar setningar og athugaðu hvort þú manst þær með sjálfvirkri felaeiginleikanum.';

  @override
  String get helpMode2Details =>
      '• Veldu námsefni: Notaðu valmyndina efst til hægri (⋮) til að velja \'Veldu námsefni\' eða \'Námsefnisvef\'\n• Flettu spjaldi: \'Sýna/Fela\' til að staðfesta þýðingu\n• Hlusta: Spilaðu framburð með hátalaratákninu\n• Lokið námi: Merktu námið sem lokið með hakmerki (V)\n• Eyða: Eyða færslum með því að ýta lengi á spjaldið\n• Leita og sía: Stuðningur við leitarrönd (snjallleit í rauntíma) og síur fyrir merki og upphafsstafi';

  @override
  String get helpMode3Desc =>
      'Hlustaðu á setninguna og æfðu framburð með því að endurtaka (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Efnisval: Veldu efnissett til að læra\n• Millibilsstilling: Stilltu biðtímann á milli setninga með [-] [+] hnöppunum (3 sekúndur til 60 sekúndur)\n• Byrja/stöðva: Stjórnaðu skuggastund\n• Tala: Hlustaðu á rödd og endurtaktu\n• Viðbrögð: Nákvæmnisstig (0-100) og litaskjár\n• Leitarskilyrði: Síaðu æfingamarkmið eftir merki, nýlegum hlutum eða upphafsstöfum';

  @override
  String get helpModeChatDesc =>
      'Æfðu raunverulegar samræður með því að spjalla við AI persónu.';

  @override
  String get helpModeChatDetails =>
      '• Gervigreind spjall: Æfðu raunveruleg samtöl við persónur í \'Spjall\' valmyndinni á flipastikunni neðst\n• Persónustillingar: Tilgreindu kyn, nafn og tungumálakóða hins aðilans að vild\n• GPS sviðsetning: Mælir með umræðuefnum sem henta staðsetningunni með því að þekkja núverandi staðsetningu þína\n• Tvö tungumál: Svör gervigreindarinnar eru sýnd ásamt þýðingum til að hámarka námsárangur\n• Skráastjórnun: Síaðu fyrri samtalsferil og vistaðu ákveðin skilaboð úr samtalinu sem námsefni';

  @override
  String get helpTabJson => 'JSON snið';

  @override
  String get helpTabModes => 'Umfjöllun um stillingar';

  @override
  String get helpTabQuickStart => 'Fljót byrjun';

  @override
  String get helpTabTour => 'Kynnisferð';

  @override
  String get helpTitle => 'Hjálp & leiðbeiningar';

  @override
  String get helpTourDesc =>
      '**Auðkenndur hringur** leiðbeinir lykileiginleikum.\n(Dæmi: Hægt er að eyða kortinu sem **auðkenndi hringurinn** vísar á með því að halda því inni.)';

  @override
  String get hide => 'Fela';

  @override
  String importAdded(int count) {
    return 'Bætt við: $count';
  }

  @override
  String get importComplete => 'Innflutningi lokið';

  @override
  String get importDuplicateTitleError =>
      'Efni með sama titil er þegar til. Vinsamlegast breyttu titlinum og reyndu aftur.';

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
    return 'Ekki tókst að flytja inn skrána:\\n$error';
  }

  @override
  String get importFailed => 'Innflutningur mistókst';

  @override
  String importFile(String fileName) {
    return 'Skrá: $fileName';
  }

  @override
  String get importJsonFile => 'Flytja inn JSON skrá';

  @override
  String get importJsonFilePrompt => 'Vinsamlegast flyttu inn JSON skrá';

  @override
  String importSkipped(int count) {
    return 'Sleppt: $count';
  }

  @override
  String importTotal(int count) {
    return 'Alls: $count';
  }

  @override
  String get importing => 'Flyt inn...';

  @override
  String get inputModeTitle => 'Inntak';

  @override
  String intervalSeconds(int seconds) {
    return 'Millibil: $seconds sekúndur';
  }

  @override
  String get invalidEmail => 'Vinsamlegast sláðu inn gilt netfang.';

  @override
  String get kakaoContinue => 'Halda áfram með Kakao';

  @override
  String get labelLangCode => 'Tungumálakóði (t.d. en-US, ko-KR)';

  @override
  String get labelName => 'Nafn';

  @override
  String get labelNote => 'Athugasemd';

  @override
  String get labelPOS => 'Málhluti';

  @override
  String get labelRole => 'Hlutverk';

  @override
  String get labelSentence => 'Setning';

  @override
  String get labelSentenceCollection => 'Setningasafn';

  @override
  String get labelSentenceType => 'Tegund setningar';

  @override
  String get labelShowMemorized => 'Búið';

  @override
  String get labelType => 'Tegund:';

  @override
  String get labelWord => 'Orð';

  @override
  String get labelWordbook => 'Orðaforði';

  @override
  String get language => 'Tungumál';

  @override
  String get languageSettings => 'Tungumálastillingar';

  @override
  String get languageSettingsTitle => 'Tungumálastillingar';

  @override
  String get libTitleFirstMeeting => 'Fyrsta fundur';

  @override
  String get libTitleGreetings1 => 'Kveðjur 1';

  @override
  String get libTitleNouns1 => 'Nafnorð 1';

  @override
  String get libTitleVerbs1 => 'Sagnir 1';

  @override
  String get listen => 'Hlusta';

  @override
  String get listening => 'Hlusta...';

  @override
  String get loadingParticipants => 'Hleð inn þátttakendum...';

  @override
  String get location => 'Staðsetning';

  @override
  String get login => 'Innskrá';

  @override
  String get logout => 'Útskrá';

  @override
  String get logoutConfirmMessage => 'Viltu skrá þig út af þessu tæki?';

  @override
  String get logoutConfirmTitle => 'Útskrá';

  @override
  String get male => 'Karl';

  @override
  String get manageParticipants => 'Stjórna þátttakendum';

  @override
  String get manual => 'Handvirkt inntak';

  @override
  String get markAsStudied => 'Merkja sem lært';

  @override
  String get materialInfo => 'Efnisupplýsingar';

  @override
  String get me => 'Ég';

  @override
  String get menuDeviceImport => 'Flytja inn efni úr tækinu';

  @override
  String get menuHelp => 'Hjálp';

  @override
  String get menuLanguageSettings => 'Tungumálastillingar';

  @override
  String get menuOnlineLibrary => 'Netbókasafn';

  @override
  String get menuSelectMaterialSet => 'Veldu námsefnissett';

  @override
  String get menuSettings => 'Tungumálastillingar';

  @override
  String get menuTutorial => 'Kennsluleiðbeiningar';

  @override
  String get menuWebDownload => 'Heimasíða';

  @override
  String get metadataDialogTitle => 'Ítarleg flokkun';

  @override
  String get metadataFormType => 'Málfræðilegt form';

  @override
  String get metadataRootWord => 'Stofn (Root Word)';

  @override
  String get micButtonTooltip => 'Hefja raddþekking';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Núverandi valið efnissett: $name';
  }

  @override
  String get mode2Title => 'Endurskoðun';

  @override
  String get mode3Next => 'Næsta';

  @override
  String get mode3Start => 'Byrja';

  @override
  String get mode3Stop => 'Stöðva';

  @override
  String get mode3TryAgain => 'Reyndu aftur';

  @override
  String get mySentenceCollection => 'Setningasafnið mitt';

  @override
  String get myWordbook => 'Orðaforði minn';

  @override
  String get neutral => 'Hlutlaust';

  @override
  String get newSubjectName => 'Nýtt nafn á orðaforða/setningasafn';

  @override
  String get next => 'Næsta';

  @override
  String get noDialogueHistory => 'Engin samtalsaga.';

  @override
  String get noInternetWarningMic =>
      'Engin nettenging. Raddgreining er hugsanlega ekki möguleg án nettengingar.';

  @override
  String get noInternetWarningTranslate =>
      'Engin nettenging. Þýðingaraðgerðin er ekki tiltæk án nettengingar. Vinsamlegast notaðu endurskoðunarham.';

  @override
  String get noMaterialsInCategory => 'Ekkert efni er í þessum flokki.';

  @override
  String get noParticipantsFound => 'Engir þátttakendur fundust.';

  @override
  String get noRecords => 'Enginn námsferill fyrir valið tungumál';

  @override
  String get noStudyMaterial => 'Ekkert námsefni.';

  @override
  String get noTextToPlay => 'Enginn texti til að spila';

  @override
  String get noTranslationToSave => 'Engin þýðing til að vista';

  @override
  String get noVoiceDetected => 'Engin rödd greindist';

  @override
  String get notSelected => '- Enginn valinn -';

  @override
  String get onlineLibraryCheckInternet =>
      'Vinsamlegast athugaðu nettenginguna þína eða reyndu aftur seinna.';

  @override
  String get onlineLibraryLoadFailed => 'Ekki tókst að hlaða inn efni.';

  @override
  String get onlineLibraryNoMaterials => 'Ekkert efni er til staðar.';

  @override
  String get participantDeleted => 'Þátttakanda hefur verið eytt.';

  @override
  String get participantRename => 'Endurnefna þátttakanda';

  @override
  String get partner => 'Maki';

  @override
  String get partnerMode => 'Makastilling';

  @override
  String get password => 'Lykilorð';

  @override
  String get passwordTooShort =>
      'Lykilorðið verður að vera að minnsta kosti 6 stafir.';

  @override
  String get perfect => 'Fullkomið!';

  @override
  String get personaFriend => 'Vinur heimamanns';

  @override
  String get personaGuide => 'Ferðaleiðsögumaður';

  @override
  String get personaTeacher => 'Enskukennari';

  @override
  String get playAgain => 'Spila aftur';

  @override
  String playbackFailed(String error) {
    return 'Spilun mistókst: $error';
  }

  @override
  String get playing => 'Spila...';

  @override
  String get posAdjective => 'Lýsingarorð';

  @override
  String get posAdverb => 'Atviksorð';

  @override
  String get posConjunction => 'Tengiorð';

  @override
  String get posInterjection => 'Upphrópun';

  @override
  String get posNoun => 'Nafnorð';

  @override
  String get posPreposition => 'Forsetning/hjálparorð';

  @override
  String get posPronoun => 'Fornafn';

  @override
  String get posVerb => 'Sagnorð';

  @override
  String get practiceModeTitle => 'Æfing';

  @override
  String get practiceWordsOnly => 'Æfðu aðeins orð';

  @override
  String progress(int current, int total) {
    return 'Framfarir: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Skoða nýlega búnar til $count stk';
  }

  @override
  String recognitionFailed(String error) {
    return 'Raddþekking mistókst: $error';
  }

  @override
  String get recognized => 'Þekkt';

  @override
  String get recognizedText => 'Þekktur framburður:';

  @override
  String get recordDeleted => 'Færslu eytt';

  @override
  String get refresh => 'Endurnýja';

  @override
  String get reset => 'Endurstilla';

  @override
  String get resetPracticeHistory => 'Endurstilla æfingaferil';

  @override
  String get retry => 'Reyna aftur?';

  @override
  String get reviewAll => 'Endurskoða allt';

  @override
  String reviewCount(int count) {
    return 'Endurskoðað $count sinnum';
  }

  @override
  String get reviewModeTitle => 'Endurskoðun';

  @override
  String get roleAi => 'Gervigreind';

  @override
  String get roleThirdParty => 'Þriðji aðili';

  @override
  String get roleUser => 'Notandi';

  @override
  String get save => 'Vista';

  @override
  String get saveData => 'Vista gögn';

  @override
  String saveFailed(String error) {
    return 'Vistun mistókst: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Reyndu að vista þýðingar úr leitastillingunni';

  @override
  String get saved => 'Vistað';

  @override
  String get saving => 'Vista...';

  @override
  String score(String score) {
    return 'Nákvæmni: $score%';
  }

  @override
  String get scoreLabel => 'Stig';

  @override
  String get search => 'Leit';

  @override
  String get searchConditions => 'Leitarskilyrði';

  @override
  String get searchSentenceHint => 'Leita í setningum...';

  @override
  String get searchWordHint => 'Leita í orðum...';

  @override
  String get sectionSentence => 'Setningarflokkur';

  @override
  String get sectionSentences => 'Setningar';

  @override
  String get sectionWord => 'Orðaflokkur';

  @override
  String get sectionWords => 'Orð';

  @override
  String get selectExistingSubject => 'Veldu núverandi nafn';

  @override
  String get selectMaterialPrompt => 'Vinsamlegast veldu námsefni';

  @override
  String get selectMaterialSet => 'Veldu námsefnissett';

  @override
  String get selectPOS => 'Veldu orðflokk';

  @override
  String get selectParticipants => 'Veldu þátttakendur';

  @override
  String get selectSentenceType => 'Veldu tegund setningar';

  @override
  String get selectStudyMaterial => 'Veldu námsefni';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Setning';

  @override
  String get signUp => 'Nýskrá';

  @override
  String get similarTextFound => 'Svipaður texti fannst';

  @override
  String get skip => 'Sleppa';

  @override
  String get source => 'Heimild:';

  @override
  String get sourceLanguage => 'Frummál';

  @override
  String get sourceLanguageLabel => 'Mitt tungumál (Source)';

  @override
  String get speakNow => 'Talaðu núna!';

  @override
  String get speaker => 'Fyrirlesari';

  @override
  String get speakerSelect => 'Veldu raddgjafa';

  @override
  String get speakingPractice => 'Talandi æfing';

  @override
  String get startChat => 'Hefja samtal';

  @override
  String get startPractice => 'Hefja æfingu';

  @override
  String get startTutorial => 'Byrja kennslu';

  @override
  String get startWarning => 'Viðvörun';

  @override
  String get startsWith => 'Byrjar á';

  @override
  String get statusCheckEmail =>
      'Vinsamlegast athugaðu tölvupóstinn þinn til að staðfesta.';

  @override
  String statusDownloading(Object name) {
    return 'Sæki: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Innflutningur mistókst: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name innflutningur lokið';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Hætt við innskráningu.';

  @override
  String statusLoginFailed(Object error) {
    return 'Innskráning mistókst: $error';
  }

  @override
  String get statusLoginSuccess => 'Innskráning tókst.';

  @override
  String get statusLogoutSuccess => 'Útskráning tókst.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Nýskráning mistókst: $error';
  }

  @override
  String get statusSigningUp => 'Nýskráning í gangi...';

  @override
  String get stopPractice => 'Stöðva æfingu';

  @override
  String get studyComplete => 'Námi lokið';

  @override
  String studyRecords(int count) {
    return 'Námsferill ($count)';
  }

  @override
  String get styleFormal => 'Formlegt';

  @override
  String get styleInformal => 'Óformlegt';

  @override
  String get stylePolite => 'Kurteislegt';

  @override
  String get styleSlang => 'Slangur';

  @override
  String get subject => 'Titill:';

  @override
  String get swapLanguages => 'Skipta um tungumál';

  @override
  String get switchToAi => 'Skipta yfir í gervigreindarstillingu';

  @override
  String get switchToPartner => 'Skipta yfir í makastillingu';

  @override
  String get syncingData => 'Samstilla gögn...';

  @override
  String get tabConversation => 'Samtal';

  @override
  String tabReview(int count) {
    return 'Endurskoðun ($count)';
  }

  @override
  String get tabSentence => 'Setning';

  @override
  String get tabSpeaking => 'Tala';

  @override
  String tabStudyMaterial(int count) {
    return 'Námsefni ($count)';
  }

  @override
  String get tabWord => 'Orð';

  @override
  String get tagFormal => 'Kurteis';

  @override
  String get tagSelection => 'Merkjaval';

  @override
  String get targetLanguage => 'Marktunga';

  @override
  String get targetLanguageFilter => 'Sía marktungumáls:';

  @override
  String get targetLanguageLabel => 'Námstungumál (Target)';

  @override
  String get thinkingTimeDesc =>
      'Tími til að hugsa áður en svarið er gefið upp.';

  @override
  String get thinkingTimeInterval => 'Spilatöf';

  @override
  String get timeUp => 'Tíminn er liðinn!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Titilmerki (safn)';

  @override
  String get tooltipDecrease => 'Minnka';

  @override
  String get tooltipIncrease => 'Auka';

  @override
  String get tooltipSearch => 'Leita';

  @override
  String get tooltipSpeaking => 'Tala';

  @override
  String get tooltipStudyReview => 'Nám+Endurskoðun';

  @override
  String totalRecords(int count) {
    return 'Alls $count færslur (skoða allt)';
  }

  @override
  String get translate => 'Þýða';

  @override
  String get translating => 'Þýða...';

  @override
  String get translation => 'Þýðing';

  @override
  String get translationComplete => 'Þýðingu lokið (þarf að vista)';

  @override
  String translationFailed(String error) {
    return 'Þýðing mistókst: $error';
  }

  @override
  String get translationLimitExceeded => 'Þýðingarmörk náð';

  @override
  String get translationLimitMessage =>
      'Þú hefur notað allar þínar daglegu ókeypis þýðingar (5 sinnum).\\n\\nViltu fylla strax á 5 sinnum með því að horfa á auglýsingu?';

  @override
  String get translationLoaded => 'Hlaðið inn vistaðri þýðingu';

  @override
  String get translationRefilled => 'Þýðingartímar fylltir á 5 sinnum!';

  @override
  String get translationResultHint => 'Þýðingarniðurstaða - hægt að breyta';

  @override
  String get tryAgain => 'Reyndu aftur';

  @override
  String get tutorialAiChatDesc =>
      'Æfðu raunveruleg samtöl við gervigreindarpersónu.';

  @override
  String get tutorialAiChatTitle => 'AI spjall';

  @override
  String get tutorialContextDesc =>
      'Jafnvel þótt það sé sama setningin geturðu vistað hana sérstaklega með því að skrifa aðstæður (td morgun, kvöld).';

  @override
  String get tutorialContextTitle => 'Aðstæður/samhengismerki';

  @override
  String get tutorialLangSettingsDesc =>
      'Stilltu frumtungu og marktungu til að þýða.';

  @override
  String get tutorialLangSettingsTitle => 'Tungumálastillingar';

  @override
  String get tutorialM1ToggleDesc =>
      'Skiptu á milli orða og setningastillinga hér.';

  @override
  String get tutorialM1ToggleTitle => 'Orða/setningarstilling';

  @override
  String get tutorialM2DropdownDesc =>
      'Þú getur valið námsefni í gegnum valmyndina efst.';

  @override
  String get tutorialM2ImportDesc => 'Flytja inn JSON skrá úr möppu tækisins.';

  @override
  String get tutorialM2ListDesc =>
      'Þú getur eytt þessu korti með því að halda því inni (Langa smelltu). Athugaðu vistaðar setningar og snúðu þeim við.';

  @override
  String get tutorialM2ListTitle => 'Námslisti';

  @override
  String get tutorialM2SearchDesc =>
      'Þú getur leitað í vistuðum orðum og setningum til að finna þau fljótt.';

  @override
  String get tutorialM2SelectDesc =>
      'Ýttu á efnissettstáknið (📚) á efsta appbarnum til að velja efni til að læra.';

  @override
  String get tutorialM2SelectTitle => 'Efnisval';

  @override
  String get tutorialM3IntervalDesc => 'Stilltu biðtímann á milli setninga.';

  @override
  String get tutorialM3IntervalTitle => 'Millibilsstilling';

  @override
  String get tutorialM3ResetDesc =>
      'Endurstilltu framvindu og nákvæmnisstigið til að byrja upp á nýtt.';

  @override
  String get tutorialM3ResetTitle => 'Endurstilla feril';

  @override
  String get tutorialM3SelectDesc =>
      'Ýttu á efnissettstáknið (📚) á efsta appbarnum til að velja efni til að æfa.';

  @override
  String get tutorialM3SelectTitle => 'Efnisval';

  @override
  String get tutorialM3StartDesc =>
      'Ýttu á spilunarhnappinn til að hlusta á móðurmálið og endurtaka.';

  @override
  String get tutorialM3StartTitle => 'Hefja æfingu';

  @override
  String get tutorialM3WordsDesc => 'Ef hakað er við, æfðu aðeins vistuð orð.';

  @override
  String get tutorialM3WordsTitle => 'Orðaæfing';

  @override
  String get tutorialMicDesc =>
      'Þú getur slegið inn með rödd með því að ýta á hljóðnemahnappinn.';

  @override
  String get tutorialMicTitle => 'Raddinntak';

  @override
  String get tutorialSaveDesc =>
      'Vistaðu þýddar niðurstöður í námsferilinn þinn.';

  @override
  String get tutorialSaveTitle => 'Vista';

  @override
  String get tutorialSwapDesc => 'Skiptu um mitt tungumál og námstungumál.';

  @override
  String get tutorialTabDesc => 'Hér geturðu valið æskilega námsstillingu.';

  @override
  String get tutorialTapToContinue => 'Pikkaðu á skjáinn til að halda áfram';

  @override
  String get tutorialTransDesc => 'Þýðir textann sem þú slóst inn.';

  @override
  String get tutorialTransTitle => 'Þýða';

  @override
  String get typeExclamation => 'Upphrópun';

  @override
  String get typeImperative => 'Skipun';

  @override
  String get typeQuestion => 'Spurning';

  @override
  String get typeStatement => ' fullyrðing';

  @override
  String get usageLimitTitle => 'Takmörkun náð';

  @override
  String get useExistingText => 'Nota fyrirliggjandi texta';

  @override
  String get viewOnlineGuide => 'Skoða leiðbeiningar á netinu';

  @override
  String get voluntaryTranslations => 'Sjálfviljugar þýðingar';

  @override
  String get watchAdAndRefill =>
      'Áfylling með því að horfa á auglýsingu (+5 sinnum)';

  @override
  String get word => 'Orð';

  @override
  String get wordDefenseDesc =>
      'Verjaðu stöðina með því að segja orðið áður en óvinurinn kemur.';

  @override
  String get wordDefenseTitle => 'Orðavörn';

  @override
  String get wordModeLabel => 'Orðastilling';

  @override
  String get yourPronunciation => 'Framburðurinn þinn';

  @override
  String get ttsUnsupportedNatively =>
      'Þetta tæki styður ekki texta í tal á þessu tungumáli í gegnum sjálfgefna stillingu.';

  @override
  String get homeTab => 'Þýðingar';

  @override
  String get welcomeTitle => 'Velkomin í Talkie!';

  @override
  String get welcomeDesc =>
      'Velkomin/nn í Talkie! Við styðjum yfir 80 tungumál um allan heim með 100% heilindum, ásamt nýrri úrvals 3D hönnun og fínstilltri frammistöðu fyrir fullkomna námsupplifun.';

  @override
  String get welcomeButton => 'Byrja';

  @override
  String get labelDetails => 'Ítarlegar stillingar';

  @override
  String get translationResult => 'Þýðingarniðurstaða';

  @override
  String get inputContent => 'Inntak';

  @override
  String get translateNow => 'Þýða núna';

  @override
  String get tooltipSettingsConfirm => 'Staðfesta stillingar';

  @override
  String get hintNoteExample => 'Dæmi: Samhengi, samheiti o.s.frv.';

  @override
  String get hintTagExample => 'Dæmi: Viðskipti, ferðalög...';

  @override
  String get addNew => 'Bæta við nýju';

  @override
  String get newNotebookTitle => 'Nafn á nýrri minnisbók';

  @override
  String get enterNameHint => 'Sláðu inn nafn';

  @override
  String get add => 'Bæta við';

  @override
  String get openSettings => 'Opna stillingar';

  @override
  String get helpNotebook => 'Veldu möppuna til að vista þýddar niðurstöður í.';

  @override
  String get helpNote =>
      'Skrifaðu frjálst um merkingu orðsins, dæmi eða aðstæður.';

  @override
  String get helpTag => 'Sláðu inn leitarorð til að flokka eða leita seinna.';

  @override
  String get requestTranslation => 'Sækja um þýðingu';

  @override
  String get statusRequestSuccess => 'Beiðni um þýðingu tókst.';

  @override
  String statusRequestFailed(String error) {
    return 'Beiðni um þýðingu mistókst: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Námstungumál ekki stutt';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Valin gögn styðja ekki núverandi námstungumál ($targetLang) og því er ekki hægt að vista þau staðbundið. Viltu biðja um þýðingu?';
  }

  @override
  String get quickStartStep1Title => '1. Veldu tungumál';

  @override
  String get quickStartStep1Desc =>
      'Farðu í Valmynd > Tungumál til að velja þitt tungumál og tungumálið sem þú vilt læra.';

  @override
  String get quickStartStep2Title => '2. Grunnflæði';

  @override
  String get quickStartStep2Desc =>
      'Búðu til þín eigin spjöld í þessari röð: Inntak (hljóðnemi/lyklaborð) -> Þýðing -> Vista.';

  @override
  String get quickStartStep3Title => '3. Nýttu stillingar';

  @override
  String get quickStartStep3Desc =>
      'Æfðu þig í spjalli og æfðu framburð með því að horfa á textann í Framburðarflipanum.';

  @override
  String get noteGuidance =>
      'Þar sem þú slærð inn frekari upplýsingar fyrir nákvæmari þýðingu';
}

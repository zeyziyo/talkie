// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsCy extends AppLocalizations {
  AppLocalizationsCy([String locale = 'cy']) : super(locale);

  @override
  String get basicWords => 'Storio geiriau sylfaenol';

  @override
  String get inputLanguage => 'Iaith Mewnbwn';

  @override
  String get translationLanguage => 'Iaith Cyfieithu';

  @override
  String get simplifiedGuidance =>
      'Trawsnewidiwch sgyrsiau bob dydd yn syth i iaith dramor! Bydd Talkie yn cofnodi eich bywyd iaith.';

  @override
  String get noDataForLanguage =>
      'Nid oes unrhyw ddata dysgu ar gyfer yr iaith a ddewiswyd yn y DB lleol. Lawrlwythwch y data neu dewiswch iaith arall.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Canslo';

  @override
  String get accuracy => 'Cywirdeb';

  @override
  String get ttsMissing =>
      'Nid yw injan lleferydd ar gyfer yr iaith hon wedi\'i gosod ar eich dyfais.';

  @override
  String get ttsInstallGuide =>
      'Ewch i Gosodiadau Android > Google TTS a gosod data\'r iaith honno.';

  @override
  String get adLoading =>
      'Wrthi\'n llwytho hysbyseb. Ceisiwch eto yn nes ymlaen.';

  @override
  String get addNewSubject => 'Ychwanegu teitl newydd';

  @override
  String get addParticipant => 'Ychwanegu Cyfranogwr';

  @override
  String get addTagHint => 'Ychwanegu tag...';

  @override
  String get alreadyHaveAccount => 'Oes gennych chi gyfrif yn barod?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Chwarae\'n Awtomatig';

  @override
  String get basic => 'Sylfaenol';

  @override
  String get basicDefault => 'Sylfaenol';

  @override
  String get basicMaterialRepository => 'Storio brawddegau/geiriau sylfaenol';

  @override
  String get basicSentenceRepository => 'Storio brawddegau sylfaenol';

  @override
  String get basicSentences => 'Storio brawddegau sylfaenol';

  @override
  String get basicWordRepository => 'Storio geiriau sylfaenol';

  @override
  String get caseObject => 'Gwrthrychol';

  @override
  String get casePossessive => 'Meddiannol';

  @override
  String get casePossessivePronoun => 'Rhagenw Meddiannol';

  @override
  String get caseReflexive => 'Atblygol';

  @override
  String get caseSubject => 'Enwebiol';

  @override
  String get chatAiChat => 'Sgwrsio';

  @override
  String get chatAllConversations => 'Pob sgwrs';

  @override
  String get chatChoosePersona => 'Dewis Persona';

  @override
  String get chatEndMessage => 'A ydych yn siŵr eich bod am derfynu\'r sgwrs?';

  @override
  String get chatEndTitle => 'Terfynu a chadw sgwrs';

  @override
  String chatFailed(Object error) {
    return 'Methu sgwrsio: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Detholiad sgwrsio ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Hanes Sgwrs';

  @override
  String get chatNew => 'Sgwrs Newydd';

  @override
  String get chatNewChat => 'Sgwrs Newydd';

  @override
  String get chatNoConversations => 'Dim sgyrsiau eto';

  @override
  String get chatSearchHint => '대화 제목으로 검색...';

  @override
  String get chatSaveAndExit => 'Cadw ac Allgofnodi';

  @override
  String get chatStartNewPrompt => 'Dechreuwch sgwrs newydd i ymarfer!';

  @override
  String get chatTypeHint => 'Teipiwch neges...';

  @override
  String get chatUntitled => 'Sgwrs ddi-deitl';

  @override
  String get checking => 'Gwirio...';

  @override
  String get clearAll => 'Clirio popeth';

  @override
  String get confirm => 'Cadarnhau';

  @override
  String get confirmDelete =>
      'Ydych chi\'n siŵr eich bod am ddileu\'r cofnod astudio hwn?';

  @override
  String get confirmDeleteConversation =>
      'Ydych chi\'n siŵr eich bod am ddileu\'r sgwrs hon?\nNi ellir adfer sgyrsiau sydd wedi\'u dileu.';

  @override
  String get confirmDeleteParticipant =>
      'Ydych chi\'n siŵr eich bod am ddileu\'r cyfranogwr hwn?';

  @override
  String get contextTagHint =>
      'Ysgrifennwch y sefyllfa i\'w gwneud hi\'n haws i\'w gwahaniaethu yn ddiweddarach';

  @override
  String get contextTagLabel =>
      'Cyd-destun / Seiliau (Dewisol) - E.e.: Cyfarchiad bore, Ffurfioldeb';

  @override
  String get copiedToClipboard => 'Wedi\'i gopïo i\'r clipfwrdd!';

  @override
  String get copy => 'Copïo';

  @override
  String get correctAnswer => 'Ateb Cywir';

  @override
  String get createNew => 'Symud ymlaen gyda brawddeg newydd';

  @override
  String get currentLocation => 'Lleoliad Cyfredol';

  @override
  String get currentMaterialLabel =>
      'Casgliad deunydd a ddewiswyd ar hyn o bryd:';

  @override
  String get delete => 'Dileu';

  @override
  String deleteFailed(String error) {
    return 'Methu dileu: $error';
  }

  @override
  String get deleteRecord => 'Dileu Cofnod';

  @override
  String get dialogueQuestDesc =>
      'Ymarfer sgwrsio trwy berfformio sefyllfa. Dewiswch yr ateb cywir a\'i ddweud.';

  @override
  String get dialogueQuestTitle => 'Cwest Sgwrs';

  @override
  String get disambiguationPrompt => 'Pa ystyr hoffech chi gyfieithu iddo?';

  @override
  String get disambiguationTitle => 'Dewis ystyr';

  @override
  String get dontHaveAccount => 'Nid oes gennych gyfrif?';

  @override
  String get editParticipant => 'Golygu Cyfranogwr';

  @override
  String get email => 'E-bost';

  @override
  String get emailAlreadyInUse =>
      'Mae\'r e-bost hwn eisoes yn bodoli. Mewngofnodwch neu defnyddiwch adfer cyfrinair.';

  @override
  String get enterNewSubjectName => 'Rhowch deitl newydd';

  @override
  String get enterSentenceHint => 'Teipiwch frawddeg...';

  @override
  String get enterTextHint => 'Rhowch y testun i\'w gyfieithu';

  @override
  String get enterTextToTranslate => 'Rhowch y testun i\'w gyfieithu';

  @override
  String get enterWordHint => 'Teipiwch air...';

  @override
  String get error => 'Gwall';

  @override
  String get errorHateSpeech =>
      'Ni ellir cyfieithu oherwydd ei fod yn cynnwys casineb.';

  @override
  String get errorOtherSafety =>
      'Gwrthodwyd cyfieithu oherwydd polisi diogelwch AI.';

  @override
  String get errorProfanity =>
      'Ni ellir cyfieithu oherwydd ei fod yn cynnwys rhegfeydd.';

  @override
  String get errorSelectCategory => 'Dewiswch air neu frawddeg yn gyntaf!';

  @override
  String get errorSexualContent =>
      'Ni ellir cyfieithu oherwydd ei fod yn cynnwys cynnwys erotig.';

  @override
  String get errors => 'Gwallau:';

  @override
  String get female => 'Benyw';

  @override
  String get file => 'Ffeil:';

  @override
  String get filterAll => 'Pawb';

  @override
  String get flip => 'Dangos';

  @override
  String get formComparative => 'Gradd Gymharol';

  @override
  String get formInfinitive => 'Anterfyn/Amser Presennol';

  @override
  String get formPast => 'Amser Gorffennol';

  @override
  String get formPastParticiple => 'Dibeniad Gorffennol';

  @override
  String get formPlural => 'Lluosog';

  @override
  String get formPositive => 'Gradd Bositif';

  @override
  String get formPresent => 'Amser Presennol';

  @override
  String get formPresentParticiple => 'Dibeniad Presennol (ing)';

  @override
  String get formSingular => 'Unigol';

  @override
  String get formSuperlative => 'Gradd Eithafol';

  @override
  String get formThirdPersonSingular => 'Trydydd Person Unigol';

  @override
  String get gameModeDesc => 'Dewiswch y modd gêm i ymarfer';

  @override
  String get gameModeTitle => 'Modd Gêm';

  @override
  String get gameOver => 'Gêm Drosodd';

  @override
  String get gender => 'Rhyw';

  @override
  String get labelFilterMaterial => 'Deunyddiau';

  @override
  String get labelFilterTag => 'Tagiau';

  @override
  String get generalTags => 'Tagiau Cyffredinol';

  @override
  String get getMaterials => 'Cael Deunyddiau';

  @override
  String get good => 'Da';

  @override
  String get googleContinue => 'Parhau gyda Google';

  @override
  String get helpDialogueImportDesc =>
      'Mewnforio set sgwrs gyfan fel ffeil JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• Strwythur JSON: defnyddiwch arae `dialogues` yn lle `entries`\n• Adferiad Awtomatig: mae teitlau sgwrs, personâu a threfn negeseuon yn cael eu hadfer.\n• Lleoliad: mae sgyrsiau wedi\'u mewnforio yn ymddangos yn y tab \'Hanes\' yn y modd Sgwrs AI.';

  @override
  String get helpJsonDesc =>
      'Dilynwch y fformat canlynol i fewnforio deunyddiau astudio i ffeil JSON i\'w defnyddio yn Mode 3:';

  @override
  String get helpJsonTypeDialogue => 'Deialog';

  @override
  String get helpJsonTypeSentence => 'Brawddeg';

  @override
  String get helpJsonTypeWord => 'Gair';

  @override
  String get helpMode1Desc =>
      'Dechreuwch ddysgu iaith yn y ffordd fwyaf greddfol gyda\'r meicroffon 3D premiwm ac eiconau bysellfwrdd mawr.';

  @override
  String get helpMode1Details =>
      '• Gosod iaith: Gwiriwch fy iaith a\'r iaith rydych chi\'n ei hastudio gyda\'r botwm iaith ar frig y sgrin gartref, a gallwch newid yr iaith astudio.\n• Mewnbwn syml: Mewnbwn ar unwaith trwy\'r meicroffon mawr a\'r ffenestr destun yn y canol.\n• Gwirio gosodiadau: Ar ôl gorffen mewnbynnu, pwyswch y botwm gwirio glas ar y dde. Ymddengys ffenestr gosodiadau manwl.\n• Gosodiadau manwl: Yn y deialog sy\'n ymddangos, gallwch nodi casgliad data i\'w gadw, sylwadau (nodiadau), a thagiau.\n• Cyfieithu nawr: Ar ôl gorffen y gosodiadau, pwyswch y botwm cyfieithu gwyrdd i wneud i\'r deallusrwydd artiffisial gyfieithu ar unwaith.\n• Chwilio awtomatig: Yn canfod cyfieithiadau presennol tebyg mewn amser real wrth fewnbynnu a\'u dangos.\n• Gwrando a chadw: Gwrandewch ar yr ynganiad gyda\'r eicon siaradwr ar waelod y canlyniad cyfieithu, a\'i ychwanegu at y rhestr astudio trwy \'Cadw data\'.';

  @override
  String get helpMode2Desc =>
      'Adolygu brawddegau sydd wedi\'u cadw a gwirio a ydych wedi\'u cofio gyda\'r swyddogaeth cuddio awtomatig.';

  @override
  String get helpMode2Details =>
      '• Dewis llyfr nodiadau: Defnyddiwch y ddewislen (⋮) ar y dde uchaf i ddewis \'Dewis Llyfr Nodiadau Astudio\' neu \'Llyfrgell Ddigidol\'\n• Fflipio cerdyn: Gwiriwch y cyfieithiad gyda \'Dangos/Cuddio\'\n• Gwrando: Chwarae ynganiad gyda\'r eicon siaradwr\n• Astudiaeth wedi\'i chwblhau: Wedi\'i farcio fel wedi\'i chwblhau gyda marc siec (V)\n• Dileu: Pwyswch a dal cerdyn (Clic Hir) i ddileu\'r cofnod\n• Chwilio a hidlo: Cefnogaeth bar chwilio (chwilio craff amser real) a thagiau, hidlwyr llythrennau cychwynnol';

  @override
  String get helpMode3Desc =>
      'Ymarferwch eich ynganiad trwy wrando ar frawddeg ac yna\'i hailadrodd (Cysgodi).';

  @override
  String get helpMode3Details =>
      '• Dewis Deunydd: dewiswch y casgliad deunydd i\'w astudio\n• Gosod Cyfwng: addaswch yr amser aros rhwng brawddegau gyda botymau [-] [+] (3 eiliad i 60 eiliad)\n• Dechrau/Stopio: rheoli sesiwn gysgodi\n• Siarad: gwrando ar lais a\'i ailadrodd\n• Adborth: sgôr cywirdeb (0-100) a dangos lliwiau\n• Amodau Chwilio: hidlo targedau ymarfer yn ôl tagiau, eitemau diweddar, a llythrennau cyntaf';

  @override
  String get helpModeChatDesc =>
      'Ymarferwch sgiliau sgwrsio go iawn trwy sgwrsio â persona AI.';

  @override
  String get helpModeChatDetails =>
      '• Sgwrs AI: Ymarfer sgyrsiau go iawn gyda personau yn y ddewislen \'Sgwrs\' ar y bar tabiau gwaelod\n• Gosodiadau Persona: Nodi rhyw, enw a chod iaith y parti arall yn rhydd\n• Drama Chwarae GPS: Argymell pynciau sgwrsio sy\'n addas ar gyfer y lleoliad trwy adnabod fy lleoliad presennol\n• Dwy Iaith: Mae atebion AI yn cael eu harddangos gyda chyfieithiadau i wneud y gorau o effeithiau dysgu\n• Rheoli Cofnodion: Hidlo hanes sgwrsio blaenorol a chadw negeseuon penodol o sgyrsiau fel deunyddiau dysgu';

  @override
  String get helpTabJson => 'Fformat JSON';

  @override
  String get helpTabModes => 'Esboniad o\'r Moddau';

  @override
  String get helpTabTour => 'Cymryd Taith';

  @override
  String get helpTitle => 'Help & Canllawiau';

  @override
  String get helpTourDesc =>
      'Mae **Cylch Tynnau Sylw** yn eich tywys trwy\'r prif nodweddion.\n(Ex: Gallwch ddileu\'r cerdyn y mae\'r **Cylch Tynnau Sylw** yn pwyntio ato trwy ei wasgu am amser hir.)';

  @override
  String get hide => 'Cuddio';

  @override
  String importAdded(int count) {
    return 'Ychwanegwyd: $count';
  }

  @override
  String get importComplete => 'Mewnforio wedi\'i Gwblhau';

  @override
  String get importDuplicateTitleError =>
      'Mae deunydd gyda\'r un teitl yn bodoli eisoes. Newidiwch y teitl a cheisiwch eto.';

  @override
  String importErrorMessage(String error) {
    return 'Methu mewnforio ffeil:\\n$error';
  }

  @override
  String get importFailed => 'Methu Mewnforio';

  @override
  String importFile(String fileName) {
    return 'Ffeil: $fileName';
  }

  @override
  String get importJsonFile => 'Mewnforio Ffeil JSON';

  @override
  String get importJsonFilePrompt => 'Mewnforio ffeil JSON';

  @override
  String importSkipped(int count) {
    return 'Hepgorwyd: $count';
  }

  @override
  String importTotal(int count) {
    return 'Cyfanswm: $count';
  }

  @override
  String get importing => 'Mewnforio...';

  @override
  String get inputModeTitle => 'Mewnbwn';

  @override
  String intervalSeconds(int seconds) {
    return 'Cyfwng: $seconds eiliad';
  }

  @override
  String get invalidEmail => 'Rhowch e-bost dilys.';

  @override
  String get kakaoContinue => 'Parhau â Kakao';

  @override
  String get labelLangCode => 'Côd Iaith (e.e. en-US, ko-KR)';

  @override
  String get labelName => 'Enw';

  @override
  String get labelNote => 'Nodyn';

  @override
  String get labelPOS => 'Rhan o leferydd';

  @override
  String get labelRole => 'Rôl';

  @override
  String get labelSentence => 'Brawddeg';

  @override
  String get labelSentenceCollection => 'Casgliad brawddegau';

  @override
  String get labelSentenceType => 'Math o frawddeg';

  @override
  String get labelShowMemorized => 'Gorffennwyd';

  @override
  String get labelType => 'Math:';

  @override
  String get labelWord => 'Gair';

  @override
  String get labelWordbook => 'Geiriadur';

  @override
  String get language => 'Iaith';

  @override
  String get languageSettings => 'Gosodiadau Iaith';

  @override
  String get languageSettingsTitle => 'Gosodiadau Iaith';

  @override
  String get libTitleFirstMeeting => 'Cyfarfod Cyntaf';

  @override
  String get libTitleGreetings1 => 'Cyfarchion 1';

  @override
  String get libTitleNouns1 => 'Enwau 1';

  @override
  String get libTitleVerbs1 => 'Berfau 1';

  @override
  String get listen => 'Gwrando';

  @override
  String get listening => 'Gwrando...';

  @override
  String get loadingParticipants => 'Yn llwytho Cyfranogwyr...';

  @override
  String get location => 'Lleoliad';

  @override
  String get login => 'Mewngofnodi';

  @override
  String get logout => 'Allgofnodi';

  @override
  String get logoutConfirmMessage =>
      'Ydych chi\'n siŵr eich bod am allgofnodi o\'r ddyfais hon?';

  @override
  String get logoutConfirmTitle => 'Allgofnodi';

  @override
  String get male => 'Gwryw';

  @override
  String get manageParticipants => 'Rheoli Cyfranogwyr';

  @override
  String get manual => 'Mewnbwn â Llaw';

  @override
  String get markAsStudied => 'Marcio fel Astudiwyd';

  @override
  String get materialInfo => 'Gwybodaeth Deunydd';

  @override
  String get me => 'Fi';

  @override
  String get menuDeviceImport => 'Mewnforio deunyddiau o\'r ddyfais';

  @override
  String get menuHelp => 'Cymorth';

  @override
  String get menuLanguageSettings => 'Gosodiadau Iaith';

  @override
  String get menuOnlineLibrary => 'Llyfrgell Ar-lein';

  @override
  String get menuSelectMaterialSet => 'Dewis casgliad deunydd astudio';

  @override
  String get menuSettings => 'Gosodiadau Iaith';

  @override
  String get menuTutorial => 'Taith Tiwtorial';

  @override
  String get menuWebDownload => 'Hafan';

  @override
  String get metadataDialogTitle => 'Dosbarthiad Manylion';

  @override
  String get metadataFormType => 'Math o Ffurf Gramadeg';

  @override
  String get metadataRootWord => 'Gwraidd (Root Word)';

  @override
  String get micButtonTooltip => 'Dechrau adnabod llais';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Casgliad deunydd a ddewiswyd ar hyn o bryd: $name';
  }

  @override
  String get mode2Title => 'Adolygu';

  @override
  String get mode3Next => 'Nesaf';

  @override
  String get mode3Start => 'Dechrau';

  @override
  String get mode3Stop => 'Stopio';

  @override
  String get mode3TryAgain => 'Ailgeisio';

  @override
  String get mySentenceCollection => 'Fy nghasgliad o frawddegau';

  @override
  String get myWordbook => 'Fy ngeirlyfr';

  @override
  String get neutral => 'Niwtral';

  @override
  String get newSubjectName => 'Teitl Geirfa/Brawddeg Newydd';

  @override
  String get next => 'Nesaf';

  @override
  String get noDialogueHistory => 'Dim hanes deialog.';

  @override
  String get noInternetWarningMic =>
      'Dim cysylltiad rhyngrwyd. Efallai na fydd adnabod llais ar gael pan fyddwch all-lein.';

  @override
  String get noInternetWarningTranslate =>
      'Dim cysylltiad rhyngrwyd. Ni fydd y nodwedd gyfieithu ar gael pan fyddwch all-lein. Defnyddiwch y modd adolygu.';

  @override
  String get noMaterialsInCategory => 'Nid oes deunyddiau yn y categori hwn.';

  @override
  String get noParticipantsFound =>
      'Ni chanfuwyd unrhyw gyfranogwyr cofrestredig.';

  @override
  String get noRecords =>
      'Nid oes cofnodion astudio ar gael ar gyfer yr iaith a ddewiswyd';

  @override
  String get noStudyMaterial => 'Dim deunydd astudio ar gael.';

  @override
  String get noTextToPlay => 'Dim testun i\'w chwarae';

  @override
  String get noTranslationToSave => 'Dim cyfieithiad i\'w gadw';

  @override
  String get noVoiceDetected => 'Ni chanfuwyd llais';

  @override
  String get notSelected => '- Heb ei Ddewis -';

  @override
  String get onlineLibraryCheckInternet =>
      'Gwiriwch eich cysylltiad rhyngrwyd neu ceisiwch eto yn nes ymlaen.';

  @override
  String get onlineLibraryLoadFailed => 'Wedi methu llwytho\'r deunyddiau.';

  @override
  String get onlineLibraryNoMaterials => 'Dim deunyddiau ar gael.';

  @override
  String get participantDeleted => 'Dilewyd y cyfranogwr.';

  @override
  String get participantRename => 'Ailenwi Cyfranogwr';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Modd Partner';

  @override
  String get password => 'Cyfrinair';

  @override
  String get passwordTooShort => 'Rhaid i\'ch cyfrinair fod yn 6 nod o leiaf.';

  @override
  String get perfect => 'Perffaith!';

  @override
  String get personaFriend => 'Ffrind Lleol';

  @override
  String get personaGuide => 'Tywysydd Teithiau';

  @override
  String get personaTeacher => 'Athro Saesneg';

  @override
  String get playAgain => 'Chwarae Eto';

  @override
  String playbackFailed(String error) {
    return 'Methu chwarae: $error';
  }

  @override
  String get playing => 'Chwarae...';

  @override
  String get posAdjective => 'Ansoddair';

  @override
  String get posAdverb => 'Adferf';

  @override
  String get posConjunction => 'Cysylltair';

  @override
  String get posInterjection => 'Ebychnod';

  @override
  String get posNoun => 'Enw';

  @override
  String get posPreposition => 'Arddodiad/Ôl-ddodiad';

  @override
  String get posPronoun => 'Rhagenw';

  @override
  String get posVerb => 'Berf';

  @override
  String get practiceModeTitle => 'Ymarfer';

  @override
  String get practiceWordsOnly => 'Ymarfer geiriau yn unig';

  @override
  String progress(int current, int total) {
    return 'Cynnydd: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Gweler y $count eitem a grewyd yn ddiweddar';
  }

  @override
  String recognitionFailed(String error) {
    return 'Methu adnabod llais: $error';
  }

  @override
  String get recognized => 'Adnabod wedi\'i Gwblhau';

  @override
  String get recognizedText => 'Ynganiad cydnabyddedig:';

  @override
  String get recordDeleted => 'Cofnod wedi\'i Dileu';

  @override
  String get refresh => 'Adnewyddu';

  @override
  String get reset => 'Ailosod';

  @override
  String get resetPracticeHistory => 'Ailosod hanes ymarfer';

  @override
  String get retry => 'Ailgeisio?';

  @override
  String get reviewAll => 'Adolygu Popeth';

  @override
  String reviewCount(int count) {
    return 'Adolygu $count gwaith';
  }

  @override
  String get reviewModeTitle => 'Adolygu';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Trydydd Parti';

  @override
  String get roleUser => 'Defnyddiwr';

  @override
  String get save => 'Cadw';

  @override
  String get saveData => 'Cadw Data';

  @override
  String saveFailed(String error) {
    return 'Methu cadw: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Ceisiwch gadw cyfieithiadau o\'r modd chwilio';

  @override
  String get saved => 'Cadw wedi\'i Gwblhau';

  @override
  String get saving => 'Cadw...';

  @override
  String score(String score) {
    return 'Cywirdeb: $score%';
  }

  @override
  String get scoreLabel => 'Sgôr';

  @override
  String get search => 'Chwilio';

  @override
  String get searchConditions => 'Amodau Chwilio';

  @override
  String get searchSentenceHint => 'Chwilio brawddeg...';

  @override
  String get searchWordHint => 'Chwilio gair...';

  @override
  String get sectionSentence => 'Adran frawddeg';

  @override
  String get sectionSentences => 'Brawddegau';

  @override
  String get sectionWord => 'Adran gair';

  @override
  String get sectionWords => 'Geiriau';

  @override
  String get selectExistingSubject => 'Dewis teitl presennol';

  @override
  String get selectMaterialPrompt => 'Dewis deunydd astudio';

  @override
  String get selectMaterialSet => 'Dewis casgliad deunydd astudio';

  @override
  String get selectPOS => 'Dewis Rhannau o\'r Lleferydd';

  @override
  String get selectParticipants => 'Dewis Cyfranogwyr';

  @override
  String get selectSentenceType => 'Dewis Math o Frawddeg';

  @override
  String get selectStudyMaterial => 'Dewis Deunydd Astudio';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Brawddeg';

  @override
  String get signUp => 'Cofrestru';

  @override
  String get similarTextFound => 'Canfuwyd testun tebyg';

  @override
  String get skip => 'Hepgor';

  @override
  String get source => 'Ffynhonnell:';

  @override
  String get sourceLanguage => 'Iaith Ffynhonnell';

  @override
  String get sourceLanguageLabel => 'Fy iaith (Ffynhonnell)';

  @override
  String get speakNow => 'Siarad Nawr!';

  @override
  String get speaker => 'Llefarydd';

  @override
  String get speakerSelect => 'Dewis Siaradwr';

  @override
  String get speakingPractice => 'Ymarfer Siarad';

  @override
  String get startChat => 'Dechrau Sgwrs';

  @override
  String get startPractice => 'Dechrau Ymarfer';

  @override
  String get startTutorial => 'Dechrau Tiwtorial';

  @override
  String get startWarning => 'Rhybudd';

  @override
  String get startsWith => 'Llythrennau cyntaf';

  @override
  String get statusCheckEmail => 'Gwiriwch eich e-bost i gwblhau\'r dilysu.';

  @override
  String statusDownloading(Object name) {
    return 'Yn lawrlwytho: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Wedi methu mewnforio: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return 'Wedi mewnforio $name yn llwyddiannus';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Wedi canslo\'r mewngofnodi.';

  @override
  String statusLoginFailed(Object error) {
    return 'Wedi methu mewngofnodi: $error';
  }

  @override
  String get statusLoginSuccess => 'Wedi mewngofnodi yn llwyddiannus.';

  @override
  String get statusLogoutSuccess => 'Wedi allgofnodi.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Wedi methu cofrestru: $error';
  }

  @override
  String get statusSigningUp => 'Yn cofrestru...';

  @override
  String get stopPractice => 'Stopio Ymarfer';

  @override
  String get studyComplete => 'Astudiaeth wedi\'i Gwblhau';

  @override
  String studyRecords(int count) {
    return 'Cofnodion Astudio ($count)';
  }

  @override
  String get styleFormal => 'Ffurfiol';

  @override
  String get styleInformal => 'Anffurfiol';

  @override
  String get stylePolite => 'Cwrtais';

  @override
  String get styleSlang => 'Slang';

  @override
  String get subject => 'Pwnc:';

  @override
  String get swapLanguages => 'Cyfnewid Ieithoedd';

  @override
  String get switchToAi => 'Newid i\'r Modd AI';

  @override
  String get switchToPartner => 'Newid i\'r Modd Partner';

  @override
  String get syncingData => 'Yn cysoni data...';

  @override
  String get tabConversation => 'Sgwrs';

  @override
  String tabReview(int count) {
    return 'Adolygu ($count)';
  }

  @override
  String get tabSentence => 'Brawddeg';

  @override
  String get tabSpeaking => 'Siarad';

  @override
  String tabStudyMaterial(int count) {
    return 'Deunydd Astudio ($count)';
  }

  @override
  String get tabWord => 'Gair';

  @override
  String get tagFormal => 'Ffurfiol';

  @override
  String get tagSelection => 'Dewis Tag';

  @override
  String get targetLanguage => 'Iaith Darged';

  @override
  String get targetLanguageFilter => 'Hidl Iaith Darged:';

  @override
  String get targetLanguageLabel => 'Iaith ddysgu (Targed)';

  @override
  String get thinkingTimeDesc =>
      'Dyma\'r amser i feddwl cyn i\'r ateb gael ei ddatgelu.';

  @override
  String get thinkingTimeInterval => 'Bwlch Chwarae';

  @override
  String get timeUp => 'Amser ar ben!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Tag Teitl (Casgliad)';

  @override
  String get tooltipDecrease => 'Lleihau';

  @override
  String get tooltipIncrease => 'Cynyddu';

  @override
  String get tooltipSearch => 'Chwilio';

  @override
  String get tooltipSpeaking => 'Siarad';

  @override
  String get tooltipStudyReview => 'Astudio+Adolygu';

  @override
  String totalRecords(int count) {
    return 'Cyfanswm o $count o gofnodion (gweler popeth)';
  }

  @override
  String get translate => 'Cyfieithu';

  @override
  String get translating => 'Cyfieithu...';

  @override
  String get translation => 'Cyfieithu';

  @override
  String get translationComplete => 'Cyfieithu wedi\'i Gwblhau (angen ei gadw)';

  @override
  String translationFailed(String error) {
    return 'Methu cyfieithu: $error';
  }

  @override
  String get translationLimitExceeded => 'Terfyn cyfieithu wedi\'i ragori';

  @override
  String get translationLimitMessage =>
      'Rydych wedi defnyddio\'ch holl gyfieithiadau dyddiol am ddim (5 gwaith).\\n\\nA hoffech ail-lenwi 5 gwaith ar unwaith trwy wylio hysbyseb?';

  @override
  String get translationLoaded => 'Cyfieithiad wedi\'i lwytho a\'i gadw';

  @override
  String get translationRefilled =>
      'Ail-lenwyd nifer y cyfieithiadau 5 gwaith!';

  @override
  String get translationResultHint => 'Canlyniad Cyfieithu - gellir ei olygu';

  @override
  String get tryAgain => 'Ceisiwch Eto';

  @override
  String get tutorialAiChatDesc => 'Ymarfer sgyrsiau go iawn gyda AI Persona.';

  @override
  String get tutorialAiChatTitle => 'Sgwrsio AI';

  @override
  String get tutorialContextDesc =>
      'Gallwch ei gadw ar wahân trwy ysgrifennu\'r sefyllfa (e.e. bore, gyda\'r nos) hyd yn oed os yw\'n frawddeg debyg.';

  @override
  String get tutorialContextTitle => 'Tag Cyd-destun / Seiliau';

  @override
  String get tutorialLangSettingsDesc =>
      'Gosodwch yr iaith ffynhonnell a\'r iaith darged i\'w chyfieithu.';

  @override
  String get tutorialLangSettingsTitle => 'Gosodiadau Iaith';

  @override
  String get tutorialM1ToggleDesc =>
      'Newidiwch rhwng moddau gair a brawddeg yma.';

  @override
  String get tutorialM1ToggleTitle => 'Modd Gair/Brawddeg';

  @override
  String get tutorialM2DropdownDesc =>
      'Gallwch ddewis y deunydd i\'w astudio trwy\'r ddewislen uchaf.';

  @override
  String get tutorialM2ImportDesc =>
      'Mewnforio ffeil JSON o ffolder eich dyfais.';

  @override
  String get tutorialM2ListDesc =>
      'Gallwch ei ddileu trwy wasgu a dal y cerdyn hwn (Clic Hir). Gwiriwch a throwch y brawddegau sydd wedi\'u cadw drosodd.';

  @override
  String get tutorialM2ListTitle => 'Rhestr Astudio';

  @override
  String get tutorialM2SearchDesc =>
      'Gallwch chwilio am eiriau a brawddegau wedi\'u cadw a\'u canfod yn gyflym.';

  @override
  String get tutorialM2SelectDesc =>
      'Pwyswch yr eicon casgliad deunydd (📚) ar far app uchaf i ddewis y deunydd i\'w astudio.';

  @override
  String get tutorialM2SelectTitle => 'Dewis Deunydd';

  @override
  String get tutorialM3IntervalDesc =>
      'Addaswch yr amser aros rhwng brawddegau.';

  @override
  String get tutorialM3IntervalTitle => 'Gosod Cyfwng';

  @override
  String get tutorialM3ResetDesc =>
      'Ailosod cynnydd a sgôr cywirdeb i ddechrau drosodd o\'r dechrau.';

  @override
  String get tutorialM3ResetTitle => 'Ailosod Hanes';

  @override
  String get tutorialM3SelectDesc =>
      'Pwyswch yr eicon casgliad deunydd (📚) ar far app uchaf i ddewis y deunydd i\'w ymarfer.';

  @override
  String get tutorialM3SelectTitle => 'Dewis Deunydd';

  @override
  String get tutorialM3StartDesc =>
      'Gwrando ar lais siaradwr brodor a\'i ailadrodd trwy wasgu\'r botwm chwarae.';

  @override
  String get tutorialM3StartTitle => 'Dechrau Ymarfer';

  @override
  String get tutorialM3WordsDesc =>
      'Ymarfer geiriau wedi\'u cadw yn unig os ydynt wedi\'u gwirio.';

  @override
  String get tutorialM3WordsTitle => 'Ymarfer Geiriau';

  @override
  String get tutorialMicDesc =>
      'Gallwch fewnbynnu trwy lais trwy wasgu botwm y meicroffon.';

  @override
  String get tutorialMicTitle => 'Mewnbwn Llais';

  @override
  String get tutorialSaveDesc =>
      'Cadwch y canlyniadau cyfieithiedig i\'ch cofnod astudio.';

  @override
  String get tutorialSaveTitle => 'Cadw';

  @override
  String get tutorialSwapDesc => 'Cyfnewid fy iaith a\'r iaith ddysgu.';

  @override
  String get tutorialTabDesc => 'Gallwch ddewis y modd astudio dymunol yma.';

  @override
  String get tutorialTapToContinue => 'Tapio\'r sgrin i barhau';

  @override
  String get tutorialTransDesc => 'Cyfieithu\'r testun a fewnbynnwyd.';

  @override
  String get tutorialTransTitle => 'Cyfieithu';

  @override
  String get typeExclamation => 'Ebychnod';

  @override
  String get typeImperative => 'Gorchymyn';

  @override
  String get typeQuestion => 'Cwestiwn';

  @override
  String get typeStatement => 'Datganiad';

  @override
  String get usageLimitTitle => 'Terfyn wedi\'i gyrraedd';

  @override
  String get useExistingText => 'Defnyddio testun presennol';

  @override
  String get viewOnlineGuide => 'Gweler Canllaw Ar-lein';

  @override
  String get voluntaryTranslations => 'Cyfieithiadau Gwirfoddol';

  @override
  String get watchAdAndRefill => 'Gwylio hysbyseb a\'i ail-lenwi (+5 gwaith)';

  @override
  String get word => 'Gair';

  @override
  String get wordDefenseDesc =>
      'Amddiffynwch y sylfaen trwy ddweud y gair cyn i\'r gelyn gyrraedd.';

  @override
  String get wordDefenseTitle => 'Amddiffyn Gair';

  @override
  String get wordModeLabel => 'Modd Gair';

  @override
  String get yourPronunciation => 'Eich Ynganiad';

  @override
  String get ttsUnsupportedNatively =>
      'Nid yw gosodiadau diofyn y ddyfais hon yn cefnogi allbwn lleferydd ar gyfer yr iaith hon.';

  @override
  String get homeTab => 'Cartref';

  @override
  String get welcomeTitle => 'Croeso i Talkie!';

  @override
  String get welcomeDesc =>
      'Croeso i Talkie! Rydym yn cefnogi pob un o\'r 80+ o ieithoedd ledled y byd gyda 100% o gywirdeb, ynghyd â dyluniad 3D premiwm newydd a pherfformiad wedi\'i optimeiddio ar gyfer profiad dysgu perffaith.';

  @override
  String get welcomeButton => 'Dechrau';

  @override
  String get labelDetails => 'Gosodiadau Manwl';

  @override
  String get translationResult => 'Canlyniad Cyfieithu';

  @override
  String get inputContent => 'Cynnwys Mewnbwn';

  @override
  String get translateNow => 'Cyfieithu Nawr';

  @override
  String get tooltipSettingsConfirm => 'Cadarnhau Gosodiadau';

  @override
  String get hintNoteExample => 'E.e.: Cyd-destun, amwysedd, ac ati';

  @override
  String get hintTagExample => 'E.e.: Busnes, Teithio...';

  @override
  String get addNew => 'Ychwanegu Newydd';

  @override
  String get newNotebookTitle => 'Enw Llyfr Nodiadau Newydd';

  @override
  String get enterNameHint => 'Rhowch enw';

  @override
  String get add => 'Ychwanegu';

  @override
  String get openSettings => 'Agor Gosodiadau';

  @override
  String get helpNotebook =>
      'Dewiswch y ffolder i gadw\'r canlyniadau wedi\'u cyfieithu.';

  @override
  String get helpNote =>
      'Cofnodwch ystyr geiriau, enghreifftiau, sefyllfaoedd, ac ati yn rhydd.';

  @override
  String get helpTag =>
      'Rhowch eiriau allweddol i\'w dosbarthu neu i chwilio amdanynt yn nes ymlaen.';

  @override
  String get requestTranslation => 'Gofyn am Gyfieithiad';

  @override
  String get statusRequestSuccess => 'Cwblhawyd y cais am gyfieithiad.';

  @override
  String statusRequestFailed(String error) {
    return 'Methwyd â gofyn am gyfieithiad: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Iaith Astudio Heb ei Chefnogi';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Nid yw\'r iaith astudio ($targetLang) a ddewiswyd gennych yn cael ei chefnogi ar gyfer y deunydd hwn. A ydych am ofyn am gyfieithiad?';
  }
}

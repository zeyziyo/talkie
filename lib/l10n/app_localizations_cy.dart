// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsCy extends AppLocalizations {
  AppLocalizationsCy([String locale = 'cy']) : super(locale);

  @override
  String get helpTitle => 'Help & Canllawiau';

  @override
  String get helpTabModes => 'Esboniad o\'r Moddau';

  @override
  String get helpTabJson => 'Fformat JSON';

  @override
  String get helpTabTour => 'Cymryd Taith';

  @override
  String get helpMode1Desc =>
      'Adnabod llais a chyfieithu, a gwrando ar y canlyniadau.';

  @override
  String get helpMode1Details =>
      '• Gosodiadau Iaith: newidiwch yr iaith trwy wasgu\'r eiconau uchaf/gwaelod\n• Toglo Gair/Brawddeg: newidiwch y modd\n• Mewnbwn Llais: pwyswch yr eicon meicroffon i ddechrau/stopio gwrando\n• Mewnbwn Testun: teipiwch yn uniongyrchol i gyfieithu\n• Chwilio Awtomatig: canfod brawddegau presennol tebyg\n• Cyfieithu: pwyswch y botwm cyfieithu i gyfieithu ar unwaith\n• Gwrando: chwarae TTS gydag eicon y siaradwr\n• Cadw: ychwanegu cofnod trwy \'Cadw Data\'\n• Clirio: ailosod mewnbwn';

  @override
  String get helpMode2Desc =>
      'Adolygu brawddegau sydd wedi\'u cadw a gwirio a ydych wedi\'u cofio gyda\'r swyddogaeth cuddio awtomatig.';

  @override
  String get helpMode2Details =>
      '• Dewis Deunydd: dewiswch gasgliad deunydd penodol neu \'Adolygu Popeth\'\n• Fflipio Cerdyn: gwiriwch y cyfieithiad gyda \'Dangos/Cuddio\' (gwiriad dysgu awtomatig)\n• Gwrando: chwarae TTS brawddegau\n• Dysgu wedi\'i Gwblhau: prosesu wedi\'i gwblhau gyda marc gwirio (V)\n• Dileu: daliwch y cerdyn i lawr i ddileu cofnodion\n• Amodau Chwilio: hidlo yn ôl tagiau, eitemau diweddar, a llythrennau cyntaf';

  @override
  String get helpMode3Desc =>
      'Ymarfer ynganu trwy wrando ar frawddegau ac ailadrodd (Cysgodi).';

  @override
  String get helpMode3Details =>
      '• Dewis Deunydd: dewiswch y casgliad deunydd i\'w astudio\n• Gosod Cyfwng: addaswch yr amser aros rhwng brawddegau gyda botymau [-] [+] (3 eiliad i 60 eiliad)\n• Dechrau/Stopio: rheoli sesiwn gysgodi\n• Siarad: gwrando ar lais a\'i ailadrodd\n• Adborth: sgôr cywirdeb (0-100) a dangos lliwiau\n• Amodau Chwilio: hidlo targedau ymarfer yn ôl tagiau, eitemau diweddar, a llythrennau cyntaf';

  @override
  String get helpModeChatDesc =>
      'Ymarfer sgiliau sgwrsio go iawn trwy sgwrsio ag AI Persona.';

  @override
  String get helpModeChatDetails =>
      '• Sgwrs AI: ymarfer sgwrsio trwy siarad yn fy iaith\n• Personâu Lluosog: newidiwch ryw/iaith/enw\'r parti arall gyda\'r ddewislen uwchben y swigen lleferydd\n• Ychwanegu Partner: ychwanegu partner sgwrsio newydd (Dieithryn) gyda\'r botwm +\n• GPS: seiliau sefyllfa ar leoliad cyfredol\n• Cadw Awtomatig: cyfieithu a chadw cynnwys sgwrsio yn awtomatig';

  @override
  String get helpJsonDesc =>
      'Dilynwch y fformat canlynol i fewnforio deunyddiau astudio i ffeil JSON i\'w defnyddio yn Mode 3:';

  @override
  String get helpDialogueImportDesc =>
      'Mewnforio set sgwrs gyfan fel ffeil JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• Strwythur JSON: defnyddiwch arae `dialogues` yn lle `entries`\n• Adferiad Awtomatig: mae teitlau sgwrs, personâu a threfn negeseuon yn cael eu hadfer.\n• Lleoliad: mae sgyrsiau wedi\'u mewnforio yn ymddangos yn y tab \'Hanes\' yn y modd Sgwrs AI.';

  @override
  String get helpTourDesc =>
      'Mae **Cylch Tynnau Sylw** yn eich tywys trwy\'r prif nodweddion.\n(Ex: Gallwch ddileu\'r cerdyn y mae\'r **Cylch Tynnau Sylw** yn pwyntio ato trwy ei wasgu am amser hir.)';

  @override
  String get partnerMode => 'Modd Partner';

  @override
  String get manual => 'Mewnbwn â Llaw';

  @override
  String get speaker => 'Llefarydd';

  @override
  String get switchToAi => 'Newid i\'r Modd AI';

  @override
  String get switchToPartner => 'Newid i\'r Modd Partner';

  @override
  String get currentLocation => 'Lleoliad Cyfredol';

  @override
  String get location => 'Lleoliad';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Fi';

  @override
  String get currentMaterialLabel =>
      'Casgliad deunydd a ddewiswyd ar hyn o bryd:';

  @override
  String get basicMaterialRepository => 'Storio brawddegau/geiriau sylfaenol';

  @override
  String get word => 'Gair';

  @override
  String get sentence => 'Brawddeg';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Adolygu ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Deunydd Astudio ($count)';
  }

  @override
  String get mode2Title => 'Adolygu';

  @override
  String get search => 'Chwilio';

  @override
  String get translate => 'Cyfieithu';

  @override
  String get listen => 'Gwrando';

  @override
  String get saveData => 'Cadw Data';

  @override
  String get saved => 'Cadw wedi\'i Gwblhau';

  @override
  String get delete => 'Dileu';

  @override
  String get materialInfo => 'Gwybodaeth Deunydd';

  @override
  String get cancel => 'Canslo';

  @override
  String get confirm => 'Cadarnhau';

  @override
  String get refresh => 'Adnewyddu';

  @override
  String studyRecords(int count) {
    return 'Cofnodion Astudio ($count)';
  }

  @override
  String get targetLanguageFilter => 'Hidl Iaith Darged:';

  @override
  String get noRecords =>
      'Nid oes cofnodion astudio ar gael ar gyfer yr iaith a ddewiswyd';

  @override
  String get saveTranslationsFromSearch =>
      'Ceisiwch gadw cyfieithiadau o\'r modd chwilio';

  @override
  String get flip => 'Dangos';

  @override
  String get hide => 'Cuddio';

  @override
  String get deleteRecord => 'Dileu Cofnod';

  @override
  String get confirmDelete =>
      'Ydych chi\'n siŵr eich bod am ddileu\'r cofnod astudio hwn?';

  @override
  String get recordDeleted => 'Cofnod wedi\'i Dileu';

  @override
  String deleteFailed(String error) {
    return 'Methu dileu: $error';
  }

  @override
  String get importJsonFile => 'Mewnforio Ffeil JSON';

  @override
  String get importing => 'Mewnforio...';

  @override
  String get importComplete => 'Mewnforio wedi\'i Gwblhau';

  @override
  String get importFailed => 'Methu Mewnforio';

  @override
  String importFile(String fileName) {
    return 'Ffeil: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Cyfanswm: $count';
  }

  @override
  String importAdded(int count) {
    return 'Ychwanegwyd: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Hepgorwyd: $count';
  }

  @override
  String get errors => 'Gwallau:';

  @override
  String get error => 'Gwall';

  @override
  String importErrorMessage(String error) {
    return 'Methu mewnforio ffeil:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Dewis Deunydd Astudio';

  @override
  String get subject => 'Pwnc:';

  @override
  String get source => 'Ffynhonnell:';

  @override
  String get file => 'Ffeil:';

  @override
  String progress(int current, int total) {
    return 'Cynnydd: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Mewnforio ffeil JSON';

  @override
  String get selectMaterialPrompt => 'Dewis deunydd astudio';

  @override
  String get studyComplete => 'Astudiaeth wedi\'i Gwblhau';

  @override
  String get markAsStudied => 'Marcio fel Astudiwyd';

  @override
  String get listening => 'Gwrando...';

  @override
  String get recognized => 'Adnabod wedi\'i Gwblhau';

  @override
  String recognitionFailed(String error) {
    return 'Methu adnabod llais: $error';
  }

  @override
  String get checking => 'Gwirio...';

  @override
  String get translating => 'Cyfieithu...';

  @override
  String get translationComplete => 'Cyfieithu wedi\'i Gwblhau (angen ei gadw)';

  @override
  String get translationLoaded => 'Cyfieithiad wedi\'i lwytho a\'i gadw';

  @override
  String translationFailed(String error) {
    return 'Methu cyfieithu: $error';
  }

  @override
  String get enterTextToTranslate => 'Rhowch y testun i\'w gyfieithu';

  @override
  String get saving => 'Cadw...';

  @override
  String get noTranslationToSave => 'Dim cyfieithiad i\'w gadw';

  @override
  String saveFailed(String error) {
    return 'Methu cadw: $error';
  }

  @override
  String get playing => 'Chwarae...';

  @override
  String get noTextToPlay => 'Dim testun i\'w chwarae';

  @override
  String playbackFailed(String error) {
    return 'Methu chwarae: $error';
  }

  @override
  String get sourceLanguage => 'Iaith Ffynhonnell';

  @override
  String get targetLanguage => 'Iaith Darged';

  @override
  String get similarTextFound => 'Canfuwyd testun tebyg';

  @override
  String get useExistingText => 'Defnyddio testun presennol';

  @override
  String get createNew => 'Symud ymlaen gyda brawddeg newydd';

  @override
  String reviewCount(int count) {
    return 'Adolygu $count gwaith';
  }

  @override
  String get tabSpeaking => 'Siarad';

  @override
  String get speakingPractice => 'Ymarfer Siarad';

  @override
  String intervalSeconds(int seconds) {
    return 'Cyfwng: $seconds eiliad';
  }

  @override
  String get yourPronunciation => 'Eich Ynganiad';

  @override
  String get correctAnswer => 'Ateb Cywir';

  @override
  String score(String score) {
    return 'Cywirdeb: $score%';
  }

  @override
  String get perfect => 'Perffaith!';

  @override
  String get good => 'Da';

  @override
  String get tryAgain => 'Ceisiwch Eto';

  @override
  String get startPractice => 'Dechrau Ymarfer';

  @override
  String get stopPractice => 'Stopio Ymarfer';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Dechrau Tiwtorial';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Mewnbwn Llais';

  @override
  String get tutorialMicDesc =>
      'Gallwch fewnbynnu trwy lais trwy wasgu botwm y meicroffon.';

  @override
  String get tutorialTabDesc => 'Gallwch ddewis y modd astudio dymunol yma.';

  @override
  String get tutorialTapToContinue => 'Tapio\'r sgrin i barhau';

  @override
  String get tutorialTransTitle => 'Cyfieithu';

  @override
  String get tutorialTransDesc => 'Cyfieithu\'r testun a fewnbynnwyd.';

  @override
  String get tutorialSaveTitle => 'Cadw';

  @override
  String get tutorialSaveDesc =>
      'Cadwch y canlyniadau cyfieithiedig i\'ch cofnod astudio.';

  @override
  String get tutorialM2SelectTitle => 'Dewis Deunydd';

  @override
  String get tutorialM2SelectDesc =>
      'Pwyswch yr eicon casgliad deunydd (📚) ar far app uchaf i ddewis y deunydd i\'w astudio.';

  @override
  String get tutorialM2ListTitle => 'Rhestr Astudio';

  @override
  String get tutorialM2ListDesc =>
      'Gallwch ei ddileu trwy wasgu a dal y cerdyn hwn (Clic Hir). Gwiriwch a throwch y brawddegau sydd wedi\'u cadw drosodd.';

  @override
  String get tutorialM3SelectTitle => 'Dewis Deunydd';

  @override
  String get tutorialM3SelectDesc =>
      'Pwyswch yr eicon casgliad deunydd (📚) ar far app uchaf i ddewis y deunydd i\'w ymarfer.';

  @override
  String get tutorialM3IntervalTitle => 'Gosod Cyfwng';

  @override
  String get tutorialM3IntervalDesc =>
      'Addaswch yr amser aros rhwng brawddegau.';

  @override
  String get tutorialM3StartTitle => 'Dechrau Ymarfer';

  @override
  String get tutorialM3StartDesc =>
      'Gwrando ar lais siaradwr brodor a\'i ailadrodd trwy wasgu\'r botwm chwarae.';

  @override
  String get startWarning => 'Rhybudd';

  @override
  String get noVoiceDetected => 'Ni chanfuwyd llais';

  @override
  String get tooltipSearch => 'Chwilio';

  @override
  String get tooltipStudyReview => 'Astudio+Adolygu';

  @override
  String get tooltipSpeaking => 'Siarad';

  @override
  String get tooltipDecrease => 'Lleihau';

  @override
  String get tooltipIncrease => 'Cynyddu';

  @override
  String get languageSettings => 'Gosodiadau Iaith';

  @override
  String get tutorialM2DropdownDesc =>
      'Gallwch ddewis y deunydd i\'w astudio trwy\'r ddewislen uchaf.';

  @override
  String get tutorialM2ImportDesc =>
      'Mewnforio ffeil JSON o ffolder eich dyfais.';

  @override
  String get tutorialLangSettingsTitle => 'Gosodiadau Iaith';

  @override
  String get tutorialLangSettingsDesc =>
      'Gosodwch yr iaith ffynhonnell a\'r iaith darged i\'w chyfieithu.';

  @override
  String get copy => 'Copïo';

  @override
  String get copiedToClipboard => 'Wedi\'i gopïo i\'r clipfwrdd!';

  @override
  String get tutorialContextTitle => 'Tag Cyd-destun / Seiliau';

  @override
  String get tutorialContextDesc =>
      'Gallwch ei gadw ar wahân trwy ysgrifennu\'r sefyllfa (e.e. bore, gyda\'r nos) hyd yn oed os yw\'n frawddeg debyg.';

  @override
  String get thinkingTimeInterval => 'Cyfwng amser meddwl';

  @override
  String get thinkingTimeDesc =>
      'Dyma\'r amser i feddwl cyn i\'r ateb gael ei ddatgelu.';

  @override
  String get autoPlay => 'Chwarae\'n Awtomatig';

  @override
  String get timeUp => 'Amser ar ben!';

  @override
  String get gameModeTitle => 'Modd Gêm';

  @override
  String get gameModeDesc => 'Dewiswch y modd gêm i ymarfer';

  @override
  String get wordDefenseTitle => 'Amddiffyn Gair';

  @override
  String get wordDefenseDesc =>
      'Amddiffynwch y sylfaen trwy ddweud y gair cyn i\'r gelyn gyrraedd.';

  @override
  String get dialogueQuestTitle => 'Cwest Sgwrs';

  @override
  String get dialogueQuestDesc =>
      'Ymarfer sgwrsio trwy berfformio sefyllfa. Dewiswch yr ateb cywir a\'i ddweud.';

  @override
  String get labelType => 'Math:';

  @override
  String get labelWord => 'Gair';

  @override
  String get labelSentence => 'Brawddeg';

  @override
  String get contextTagLabel =>
      'Cyd-destun / Seiliau (Dewisol) - E.e.: Cyfarchiad bore, Ffurfioldeb';

  @override
  String get contextTagHint =>
      'Ysgrifennwch y sefyllfa i\'w gwneud hi\'n haws i\'w gwahaniaethu yn ddiweddarach';

  @override
  String get usageLimitTitle => 'Terfyn wedi\'i gyrraedd';

  @override
  String get translationLimitExceeded => 'Terfyn cyfieithu wedi\'i ragori';

  @override
  String get translationLimitMessage =>
      'Rydych wedi defnyddio\'ch holl gyfieithiadau dyddiol am ddim (5 gwaith).\\n\\nA hoffech ail-lenwi 5 gwaith ar unwaith trwy wylio hysbyseb?';

  @override
  String get watchAdAndRefill => 'Gwylio hysbyseb a\'i ail-lenwi (+5 gwaith)';

  @override
  String get translationRefilled =>
      'Ail-lenwyd nifer y cyfieithiadau 5 gwaith!';

  @override
  String get adLoading =>
      'Wrthi\'n llwytho hysbyseb. Ceisiwch eto yn nes ymlaen.';

  @override
  String get reviewAll => 'Adolygu Popeth';

  @override
  String totalRecords(int count) {
    return 'Cyfanswm o $count o gofnodion (gweler popeth)';
  }

  @override
  String get filterAll => 'Pawb';

  @override
  String get practiceWordsOnly => 'Ymarfer geiriau yn unig';

  @override
  String get resetPracticeHistory => 'Ailosod hanes ymarfer';

  @override
  String get retry => 'Ailgeisio?';

  @override
  String get noStudyMaterial => 'Dim deunydd astudio ar gael.';

  @override
  String get gameOver => 'Gêm Drosodd';

  @override
  String get playAgain => 'Chwarae Eto';

  @override
  String get speakNow => 'Siarad Nawr!';

  @override
  String get scoreLabel => 'Sgôr';

  @override
  String get viewOnlineGuide => 'Gweler Canllaw Ar-lein';

  @override
  String get getMaterials => 'Cael Deunyddiau';

  @override
  String get swapLanguages => 'Cyfnewid Ieithoedd';

  @override
  String get next => 'Nesaf';

  @override
  String get wordModeLabel => 'Modd Gair';

  @override
  String get accuracy => 'Cywirdeb';

  @override
  String get basicDefault => 'Sylfaenol';

  @override
  String get basic => 'Sylfaenol';

  @override
  String get tutorialM3WordsTitle => 'Ymarfer Geiriau';

  @override
  String get tutorialM3WordsDesc =>
      'Ymarfer geiriau wedi\'u cadw yn unig os ydynt wedi\'u gwirio.';

  @override
  String get enterTextHint => 'Rhowch y testun i\'w gyfieithu';

  @override
  String get micButtonTooltip => 'Dechrau adnabod llais';

  @override
  String get menuHelp => 'Help';

  @override
  String get menuWebDownload => 'Hafan';

  @override
  String get menuDeviceImport => 'Mewnforio deunyddiau o\'r ddyfais';

  @override
  String get menuSettings => 'Gosodiadau Iaith';

  @override
  String get basicWords => 'Storio geiriau sylfaenol';

  @override
  String get basicSentences => 'Storio brawddegau sylfaenol';

  @override
  String get selectMaterialSet => 'Dewis casgliad deunydd astudio';

  @override
  String get sectionWords => 'Geiriau';

  @override
  String get sectionSentences => 'Brawddegau';

  @override
  String get languageSettingsTitle => 'Gosodiadau Iaith';

  @override
  String get sourceLanguageLabel => 'Fy iaith (Ffynhonnell)';

  @override
  String get targetLanguageLabel => 'Iaith ddysgu (Targed)';

  @override
  String get mode3Start => 'Dechrau';

  @override
  String get mode3Stop => 'Stopio';

  @override
  String get mode3Next => 'Nesaf';

  @override
  String get mode3TryAgain => 'Ailgeisio';

  @override
  String get tutorialM3ResetTitle => 'Ailosod Hanes';

  @override
  String get tutorialSwapDesc => 'Cyfnewid fy iaith a\'r iaith ddysgu.';

  @override
  String get recognizedText => 'Ynganiad cydnabyddedig:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Ailosod cynnydd a sgôr cywirdeb i ddechrau drosodd o\'r dechrau.';

  @override
  String get menuSelectMaterialSet => 'Dewis casgliad deunydd astudio';

  @override
  String get sectionWord => 'Adran gair';

  @override
  String get sectionSentence => 'Adran frawddeg';

  @override
  String get tabWord => 'Gair';

  @override
  String get tabSentence => 'Brawddeg';

  @override
  String get errorProfanity =>
      'Ni ellir cyfieithu oherwydd ei fod yn cynnwys rhegfeydd.';

  @override
  String get errorHateSpeech =>
      'Ni ellir cyfieithu oherwydd ei fod yn cynnwys casineb.';

  @override
  String get errorSexualContent =>
      'Ni ellir cyfieithu oherwydd ei fod yn cynnwys cynnwys erotig.';

  @override
  String get errorOtherSafety =>
      'Gwrthodwyd cyfieithu oherwydd polisi diogelwch AI.';

  @override
  String get clearAll => 'Clirio popeth';

  @override
  String get disambiguationTitle => 'Dewis ystyr';

  @override
  String get disambiguationPrompt => 'Pa ystyr hoffech chi gyfieithu iddo?';

  @override
  String get skip => 'Hepgor';

  @override
  String get inputModeTitle => 'Mewnbwn';

  @override
  String get reviewModeTitle => 'Adolygu';

  @override
  String get practiceModeTitle => 'Ymarfer ynganu';

  @override
  String get chatHistoryTitle => 'Hanes Sgwrs';

  @override
  String get chatNew => 'Sgwrs Newydd';

  @override
  String get chatNewChat => 'Sgwrs Newydd';

  @override
  String get chatChoosePersona => 'Dewis Persona';

  @override
  String get chatTypeHint => 'Teipiwch neges...';

  @override
  String chatFailed(Object error) {
    return 'Methu sgwrsio: $error';
  }

  @override
  String get chatNoConversations => 'Dim sgyrsiau eto';

  @override
  String get chatStartNewPrompt => 'Dechreuwch sgwrs newydd i ymarfer!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Detholiad sgwrsio ($speaker)';
  }

  @override
  String get personaTeacher => 'Athro Saesneg';

  @override
  String get personaGuide => 'Tywysydd Teithiau';

  @override
  String get personaFriend => 'Ffrind Lleol';

  @override
  String get chatUntitled => 'Sgwrs ddi-deitl';

  @override
  String get chatAiChat => 'Sgwrs AI';

  @override
  String get tutorialAiChatTitle => 'Sgwrs AI';

  @override
  String get tutorialAiChatDesc => 'Ymarfer sgyrsiau go iawn gyda AI Persona.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Casgliad deunydd a ddewiswyd ar hyn o bryd: $name';
  }

  @override
  String get basicWordRepository => 'Storio geiriau sylfaenol';

  @override
  String get basicSentenceRepository => 'Storio brawddegau sylfaenol';

  @override
  String get chatEndTitle => 'Terfynu a chadw sgwrs';

  @override
  String get chatEndMessage => 'A ydych yn siŵr eich bod am derfynu\'r sgwrs?';

  @override
  String get chatSaveAndExit => 'Cadw ac Allgofnodi';

  @override
  String get errorSelectCategory => 'Dewiswch air neu frawddeg yn gyntaf!';

  @override
  String get tutorialM1ToggleTitle => 'Modd Gair/Brawddeg';

  @override
  String get tutorialM1ToggleDesc =>
      'Newidiwch rhwng moddau gair a brawddeg yma.';

  @override
  String get metadataDialogTitle => 'Dosbarthiad Manylion';

  @override
  String get tagFormal => 'Ffurfiol';

  @override
  String get selectPOS => 'Dewis Rhannau o\'r Lleferydd';

  @override
  String get selectSentenceType => 'Dewis Math o Frawddeg';

  @override
  String get metadataRootWord => 'Gwraidd (Root Word)';

  @override
  String get posNoun => 'Enw';

  @override
  String get posVerb => 'Berf';

  @override
  String get posAdjective => 'Ansoddair';

  @override
  String get posAdverb => 'Adferf';

  @override
  String get posPronoun => 'Rhagenw';

  @override
  String get posPreposition => 'Arddodiad/Ôl-ddodiad';

  @override
  String get posConjunction => 'Cysylltair';

  @override
  String get posInterjection => 'Ebychnod';

  @override
  String get typeStatement => 'Datganiad';

  @override
  String get typeQuestion => 'Cwestiwn';

  @override
  String get typeExclamation => 'Ebychnod';

  @override
  String get typeImperative => 'Gorchymyn';

  @override
  String get labelNote => 'Nodyn';

  @override
  String get labelShowMemorized => 'Gorffennwyd';

  @override
  String get tagSelection => 'Dewis Tag';

  @override
  String get metadataFormType => 'Math o Ffurf Gramadeg';

  @override
  String get formInfinitive => 'Anterfyn/Amser Presennol';

  @override
  String get formPast => 'Amser Gorffennol';

  @override
  String get formPastParticiple => 'Dibeniad Gorffennol';

  @override
  String get formPresentParticiple => 'Dibeniad Presennol (ing)';

  @override
  String get formPresent => 'Amser Presennol';

  @override
  String get formThirdPersonSingular => 'Trydydd Person Unigol';

  @override
  String get formPlural => 'Lluosog';

  @override
  String get formSingular => 'Unigol';

  @override
  String get caseSubject => 'Enwebiol';

  @override
  String get caseObject => 'Gwrthrychol';

  @override
  String get casePossessive => 'Meddiannol';

  @override
  String get casePossessivePronoun => 'Rhagenw Meddiannol';

  @override
  String get caseReflexive => 'Atblygol';

  @override
  String get formPositive => 'Gradd Bositif';

  @override
  String get formComparative => 'Gradd Gymharol';

  @override
  String get formSuperlative => 'Gradd Eithafol';

  @override
  String get searchConditions => 'Amodau Chwilio';

  @override
  String recentNItems(int count) {
    return 'Gweler y $count eitem a grewyd yn ddiweddar';
  }

  @override
  String get startsWith => 'Llythrennau cyntaf';

  @override
  String get reset => 'Ailosod';

  @override
  String get participantRename => 'Ailenwi Cyfranogwr';

  @override
  String get labelName => 'Enw';

  @override
  String get gender => 'Rhyw';

  @override
  String get language => 'Iaith';

  @override
  String get male => 'Gwryw';

  @override
  String get female => 'Benyw';

  @override
  String get neutral => 'Niwtral';

  @override
  String get chatAllConversations => 'Pob sgwrs';

  @override
  String get confirmDeleteConversation =>
      'Ydych chi\'n siŵr eich bod am ddileu\'r sgwrs hon?\nNi ellir adfer sgyrsiau sydd wedi\'u dileu.';
}

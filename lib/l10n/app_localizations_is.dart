// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'Halda áfram með Kakao';

  @override
  String get logout => 'Logout';

  @override
  String get logoutConfirmTitle => 'Logout';

  @override
  String get logoutConfirmMessage =>
      'Are you sure you want to logout from this device?';

  @override
  String get syncingData => 'Syncing data...';

  @override
  String get helpTitle => 'Hjálp & leiðbeiningar';

  @override
  String get helpTabModes => 'Umfjöllun um stillingar';

  @override
  String get helpTabJson => 'JSON snið';

  @override
  String get helpTabTour => 'Kynnisferð';

  @override
  String get helpMode1Desc => 'Þekkja rödd, þýða og hlusta á niðurstöðurnar.';

  @override
  String get helpMode1Details =>
      '• Tungumálastillingar: Breyttu tungumáli með því að ýta á táknin efst/neðst\n• Orð/setningaskipti: Skiptu um stillingu\n• Raddinntak: Ýttu á hljóðnemstáknið til að hefja/stöðva hlustun\n• Textainntak: Sláðu beint inn til að þýða\n• Sjálfvirk leit: Finndu svipaðar setningar sem fyrir eru\n• Þýðing: Þýddu strax með því að ýta á þýðingarhnappinn\n• Hlustun: Spilaðu TTS með hátalaratákninu\n• Vista: Bættu við færslu með \'Vista gögn\'\n• Hreinsa: Endurstilltu inntak';

  @override
  String get helpMode2Desc =>
      'Farðu yfir vistaðar setningar og athugaðu hvort þú manst þær með sjálfvirkri felaeiginleikanum.';

  @override
  String get helpMode2Details =>
      '• Efnisval: Veldu ákveðið efnissett eða \'Yfirfara allt\'\n• Snúa korti við: Athugaðu þýðingu með \'Sýna/fela\' (sjálfvirk námsathugun)\n• Hlustun: Spilaðu setningu TTS\n• Nám lokið: Merktu sem lokið með hakmerki(V)\n• Eyða: Haltu korti inni til að eyða færslu\n• Leitarskilyrði: Síaðu eftir merki, nýlegum hlutum eða upphafsstöfum';

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
      '• Gervigreindarspjall: Talaðu á þínu tungumáli til að æfa samtöl\n• Margar persónur: Hægt er að breyta kyni/tungumáli/nafni viðmælandans með valmyndinni fyrir ofan talbólu\n• Bæta við maka: Bættu við nýjum samtalsfélaga (ókunnum) með + hnappinum\n• GPS: Aðstæður byggðar á núverandi staðsetningu\n• Sjálfvirk vistun: Sjálfvirk þýðing og vistun samtalsinnihalds';

  @override
  String get helpJsonDesc =>
      'Til að flytja inn námsefni til notkunar í stillingu 3 sem JSON skrá, vinsamlegast fylgdu þessu sniði:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'Flytja inn heilt samtalasett sem JSON skrá.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON uppbygging: Notaðu `dialogues` fylkið í stað `entries`\n• Sjálfvirk endurheimt: Endurheimt samtalsaheiti, persóna og skilaboðaröð.\n• Staðsetning: Innflutt samtöl birtast á \'Saga\' flipanum í gervigreindarspjallstillingu.';

  @override
  String get helpTourDesc =>
      '**Auðkenndur hringur** leiðbeinir lykileiginleikum.\n(Dæmi: Hægt er að eyða kortinu sem **auðkenndi hringurinn** vísar á með því að halda því inni.)';

  @override
  String get partnerMode => 'Makastilling';

  @override
  String get manual => 'Handvirkt inntak';

  @override
  String get speaker => 'Fyrirlesari';

  @override
  String get switchToAi => 'Skipta yfir í gervigreindarstillingu';

  @override
  String get switchToPartner => 'Skipta yfir í makastillingu';

  @override
  String get currentLocation => 'Núverandi staðsetning';

  @override
  String get location => 'Staðsetning';

  @override
  String get partner => 'Maki';

  @override
  String get me => 'Ég';

  @override
  String get currentMaterialLabel => 'Núverandi valið efnissett:';

  @override
  String get basicMaterialRepository => 'Grunngeymsla setninga/orða';

  @override
  String get word => 'Orð';

  @override
  String get sentence => 'Setning';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Endurskoðun ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Námsefni ($count)';
  }

  @override
  String get mode2Title => 'Endurskoðun';

  @override
  String get search => 'Leit';

  @override
  String get translate => 'Þýða';

  @override
  String get listen => 'Hlusta';

  @override
  String get saveData => 'Vista gögn';

  @override
  String get saved => 'Vistað';

  @override
  String get delete => 'Eyða';

  @override
  String get materialInfo => 'Efnisupplýsingar';

  @override
  String get cancel => 'Hætta við';

  @override
  String get confirm => 'Staðfesta';

  @override
  String get refresh => 'Endurnýja';

  @override
  String studyRecords(int count) {
    return 'Námsferill ($count)';
  }

  @override
  String get targetLanguageFilter => 'Sía marktungumáls:';

  @override
  String get noRecords => 'Enginn námsferill fyrir valið tungumál';

  @override
  String get saveTranslationsFromSearch =>
      'Reyndu að vista þýðingar úr leitastillingunni';

  @override
  String get flip => 'Sýna';

  @override
  String get hide => 'Fela';

  @override
  String get deleteRecord => 'Eyða færslu';

  @override
  String get confirmDelete => 'Viltu eyða þessari námsfærslu?';

  @override
  String get recordDeleted => 'Færslu eytt';

  @override
  String deleteFailed(String error) {
    return 'Eyðing mistókst: $error';
  }

  @override
  String get importJsonFile => 'Flytja inn JSON skrá';

  @override
  String get importing => 'Flyt inn...';

  @override
  String get importComplete => 'Innflutningi lokið';

  @override
  String get importFailed => 'Innflutningur mistókst';

  @override
  String importFile(String fileName) {
    return 'Skrá: $fileName';
  }

  @override
  String get addParticipant => 'Add Participant';

  @override
  String get editParticipant => 'Edit Participant';

  @override
  String get labelRole => 'Role';

  @override
  String get labelLangCode => 'Language Code (e.g. en-US, ko-KR)';

  @override
  String get roleUser => 'User';

  @override
  String get roleAi => 'AI';

  @override
  String get participantDeleted => 'Participant deleted.';

  @override
  String get confirmDeleteParticipant =>
      'Are you sure you want to delete this participant?';

  @override
  String importTotal(int count) {
    return 'Alls: $count';
  }

  @override
  String importAdded(int count) {
    return 'Bætt við: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Sleppt: $count';
  }

  @override
  String get errors => 'Villur:';

  @override
  String get error => 'Villa';

  @override
  String importErrorMessage(String error) {
    return 'Ekki tókst að flytja inn skrána:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get selectStudyMaterial => 'Veldu námsefni';

  @override
  String get subject => 'Titill:';

  @override
  String get source => 'Heimild:';

  @override
  String get file => 'Skrá:';

  @override
  String progress(int current, int total) {
    return 'Framfarir: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Vinsamlegast flyttu inn JSON skrá';

  @override
  String get selectMaterialPrompt => 'Vinsamlegast veldu námsefni';

  @override
  String get studyComplete => 'Námi lokið';

  @override
  String get markAsStudied => 'Merkja sem lært';

  @override
  String get listening => 'Hlusta...';

  @override
  String get recognized => 'Þekkt';

  @override
  String recognitionFailed(String error) {
    return 'Raddþekking mistókst: $error';
  }

  @override
  String get checking => 'Athuga...';

  @override
  String get translating => 'Þýða...';

  @override
  String get translationComplete => 'Þýðingu lokið (þarf að vista)';

  @override
  String get translationLoaded => 'Hlaðið inn vistaðri þýðingu';

  @override
  String translationFailed(String error) {
    return 'Þýðing mistókst: $error';
  }

  @override
  String get enterTextToTranslate => 'Sláðu inn texta til að þýða';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => 'Vista...';

  @override
  String get noTranslationToSave => 'Engin þýðing til að vista';

  @override
  String saveFailed(String error) {
    return 'Vistun mistókst: $error';
  }

  @override
  String get playing => 'Spila...';

  @override
  String get noTextToPlay => 'Enginn texti til að spila';

  @override
  String playbackFailed(String error) {
    return 'Spilun mistókst: $error';
  }

  @override
  String get sourceLanguage => 'Frummál';

  @override
  String get targetLanguage => 'Marktunga';

  @override
  String get similarTextFound => 'Svipaður texti fannst';

  @override
  String get useExistingText => 'Nota fyrirliggjandi texta';

  @override
  String get createNew => 'Halda áfram með nýja setningu';

  @override
  String reviewCount(int count) {
    return 'Endurskoðað $count sinnum';
  }

  @override
  String get tabSpeaking => 'Tala';

  @override
  String get speakingPractice => 'Talandi æfing';

  @override
  String intervalSeconds(int seconds) {
    return 'Millibil: $seconds sekúndur';
  }

  @override
  String get yourPronunciation => 'Framburðurinn þinn';

  @override
  String get correctAnswer => 'Rétt svar';

  @override
  String score(String score) {
    return 'Nákvæmni: $score%';
  }

  @override
  String get perfect => 'Fullkomið!';

  @override
  String get good => 'Gott';

  @override
  String get tryAgain => 'Reyndu aftur';

  @override
  String get startPractice => 'Hefja æfingu';

  @override
  String get stopPractice => 'Stöðva æfingu';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Byrja kennslu';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Raddinntak';

  @override
  String get tutorialMicDesc =>
      'Þú getur slegið inn með rödd með því að ýta á hljóðnemahnappinn.';

  @override
  String get tutorialTabDesc => 'Hér geturðu valið æskilega námsstillingu.';

  @override
  String get tutorialTapToContinue => 'Pikkaðu á skjáinn til að halda áfram';

  @override
  String get tutorialTransTitle => 'Þýða';

  @override
  String get tutorialTransDesc => 'Þýðir textann sem þú slóst inn.';

  @override
  String get tutorialSaveTitle => 'Vista';

  @override
  String get tutorialSaveDesc =>
      'Vistaðu þýddar niðurstöður í námsferilinn þinn.';

  @override
  String get selectParticipants => 'Select Participants';

  @override
  String get loadingParticipants => 'Loading participants...';

  @override
  String get noParticipantsFound => 'No participants found.';

  @override
  String get noInternetWarningMic =>
      'No internet connection. Voice recognition may not work offline.';

  @override
  String get noInternetWarningTranslate =>
      'No internet connection. Translation is unavailable offline. Please use Review mode.';

  @override
  String get noMaterialsInCategory => 'No materials in this category.';

  @override
  String get onlineLibraryLoadFailed => 'Failed to load materials.';

  @override
  String get onlineLibraryCheckInternet =>
      'Please check your internet connection or try again later.';

  @override
  String get onlineLibraryNoMaterials => 'No materials found.';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get startChat => 'Start Chat';

  @override
  String get manageParticipants => 'Manage Participants';

  @override
  String get tutorialAiChatTitle => 'AI spjall';

  @override
  String get tutorialAiChatDesc =>
      'Æfðu raunveruleg samtöl við gervigreindarpersónu.';

  @override
  String get tutorialM2SelectTitle => 'Efnisval';

  @override
  String get tutorialM2SelectDesc =>
      'Ýttu á efnissettstáknið (📚) á efsta appbarnum til að velja efni til að læra.';

  @override
  String get tutorialM2ListTitle => 'Námslisti';

  @override
  String get tutorialM2ListDesc =>
      'Þú getur eytt þessu korti með því að halda því inni (Langa smelltu). Athugaðu vistaðar setningar og snúðu þeim við.';

  @override
  String get tutorialM3SelectTitle => 'Efnisval';

  @override
  String get tutorialM3SelectDesc =>
      'Ýttu á efnissettstáknið (📚) á efsta appbarnum til að velja efni til að æfa.';

  @override
  String get tutorialM3IntervalTitle => 'Millibilsstilling';

  @override
  String get tutorialM3IntervalDesc => 'Stilltu biðtímann á milli setninga.';

  @override
  String get tutorialM3StartTitle => 'Hefja æfingu';

  @override
  String get tutorialM3StartDesc =>
      'Ýttu á spilunarhnappinn til að hlusta á móðurmálið og endurtaka.';

  @override
  String get startWarning => 'Viðvörun';

  @override
  String get noVoiceDetected => 'Engin rödd greindist';

  @override
  String get tooltipSearch => 'Leita';

  @override
  String get tooltipStudyReview => 'Nám+Endurskoðun';

  @override
  String get tooltipSpeaking => 'Tala';

  @override
  String get tooltipDecrease => 'Minnka';

  @override
  String get tooltipIncrease => 'Auka';

  @override
  String get languageSettings => 'Tungumálastillingar';

  @override
  String get tutorialM2DropdownDesc =>
      'Þú getur valið námsefni í gegnum valmyndina efst.';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc => 'Flytja inn JSON skrá úr möppu tækisins.';

  @override
  String get tutorialLangSettingsTitle => 'Tungumálastillingar';

  @override
  String get tutorialLangSettingsDesc =>
      'Stilltu frumtungu og marktungu til að þýða.';

  @override
  String get copy => 'Afrita';

  @override
  String get copiedToClipboard => 'Afritað á klemmuspjald!';

  @override
  String get tutorialContextTitle => 'Aðstæður/samhengismerki';

  @override
  String get tutorialContextDesc =>
      'Jafnvel þótt það sé sama setningin geturðu vistað hana sérstaklega með því að skrifa aðstæður (td morgun, kvöld).';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get thinkingTimeDesc =>
      'Tími til að hugsa áður en svarið er gefið upp.';

  @override
  String get autoPlay => 'Sjálfvirk spilun';

  @override
  String get timeUp => 'Tíminn er liðinn!';

  @override
  String get gameModeTitle => 'Leikjastilling';

  @override
  String get gameModeDesc => 'Veldu leikjastillingu til að æfa';

  @override
  String get wordDefenseTitle => 'Orðavörn';

  @override
  String get wordDefenseDesc =>
      'Verjaðu stöðina með því að segja orðið áður en óvinurinn kemur.';

  @override
  String get dialogueQuestTitle => 'Samtalaleiðangur';

  @override
  String get dialogueQuestDesc =>
      'Æfðu samtöl í gegnum atburðarás. Veldu viðeigandi svar og segðu það.';

  @override
  String get translation => 'Translation';

  @override
  String get labelType => 'Tegund:';

  @override
  String get labelWord => 'Orð';

  @override
  String get labelSentence => 'Setning';

  @override
  String get contextTagLabel =>
      'Samhengi/aðstæður (valfrjálst) - td Morgunkveðja, virðingartungumál';

  @override
  String get contextTagHint =>
      'Vinsamlegast skrifaðu aðstæður til að auðvelda aðgreiningu síðar';

  @override
  String get usageLimitTitle => 'Takmörkun náð';

  @override
  String get translationLimitExceeded => 'Þýðingarmörk náð';

  @override
  String get translationLimitMessage =>
      'Þú hefur notað allar þínar daglegu ókeypis þýðingar (5 sinnum).\\n\\nViltu fylla strax á 5 sinnum með því að horfa á auglýsingu?';

  @override
  String get watchAdAndRefill =>
      'Áfylling með því að horfa á auglýsingu (+5 sinnum)';

  @override
  String get translationRefilled => 'Þýðingartímar fylltir á 5 sinnum!';

  @override
  String get adLoading =>
      'Auglýsing er að hlaðast. Vinsamlegast reyndu aftur síðar.';

  @override
  String get reviewAll => 'Endurskoða allt';

  @override
  String totalRecords(int count) {
    return 'Alls $count færslur (skoða allt)';
  }

  @override
  String get filterAll => 'Allt';

  @override
  String get practiceWordsOnly => 'Æfðu aðeins orð';

  @override
  String get resetPracticeHistory => 'Endurstilla æfingaferil';

  @override
  String get retry => 'Reyna aftur?';

  @override
  String get noStudyMaterial => 'Ekkert námsefni.';

  @override
  String get gameOver => 'Leik lokið';

  @override
  String get playAgain => 'Spila aftur';

  @override
  String get speakNow => 'Talaðu núna!';

  @override
  String get scoreLabel => 'Stig';

  @override
  String get viewOnlineGuide => 'Skoða leiðbeiningar á netinu';

  @override
  String get getMaterials => 'Fá efni';

  @override
  String get swapLanguages => 'Skipta um tungumál';

  @override
  String get next => 'Næsta';

  @override
  String get wordModeLabel => 'Orðastilling';

  @override
  String get accuracy => 'Nákvæmni';

  @override
  String get basicDefault => 'Grunn';

  @override
  String get basic => 'Grunn';

  @override
  String get tutorialM3WordsTitle => 'Orðaæfing';

  @override
  String get tutorialM3WordsDesc => 'Ef hakað er við, æfðu aðeins vistuð orð.';

  @override
  String get enterTextHint => 'Sláðu inn texta til að þýða';

  @override
  String get micButtonTooltip => 'Hefja raddþekking';

  @override
  String get menuHelp => 'Hjálp';

  @override
  String get menuWebDownload => 'Heimasíða';

  @override
  String get menuDeviceImport => 'Flytja inn efni úr tækinu';

  @override
  String get menuSettings => 'Tungumálastillingar';

  @override
  String get basicWords => 'Grunn orðageymsla';

  @override
  String get basicSentences => 'Grunn setningageymsla';

  @override
  String get selectMaterialSet => 'Veldu námsefnissett';

  @override
  String get sectionWords => 'Orð';

  @override
  String get sectionSentences => 'Setningar';

  @override
  String get languageSettingsTitle => 'Tungumálastillingar';

  @override
  String get sourceLanguageLabel => 'Mitt tungumál (Source)';

  @override
  String get targetLanguageLabel => 'Námstungumál (Target)';

  @override
  String get mode3Start => 'Byrja';

  @override
  String get mode3Stop => 'Stöðva';

  @override
  String get mode3Next => 'Næsta';

  @override
  String get mode3TryAgain => 'Reyndu aftur';

  @override
  String get tutorialM3ResetTitle => 'Endurstilla feril';

  @override
  String get tutorialSwapDesc => 'Skiptu um mitt tungumál og námstungumál.';

  @override
  String get recognizedText => 'Þekktur framburður:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Endurstilltu framvindu og nákvæmnisstigið til að byrja upp á nýtt.';

  @override
  String get menuSelectMaterialSet => 'Veldu námsefnissett';

  @override
  String get sectionWord => 'Orðaflokkur';

  @override
  String get sectionSentence => 'Setningarflokkur';

  @override
  String get tabWord => 'Orð';

  @override
  String get tabSentence => 'Setning';

  @override
  String get errorProfanity =>
      'Ekki hægt að þýða vegna þess að það inniheldur blótsyrði.';

  @override
  String get errorHateSpeech =>
      'Ekki hægt að þýða vegna þess að það inniheldur hatursorðræðu.';

  @override
  String get errorSexualContent =>
      'Ekki hægt að þýða vegna þess að það inniheldur kynferðislegt efni.';

  @override
  String get errorOtherSafety =>
      'Þýðingu hafnað samkvæmt öryggisstefnu gervigreindar.';

  @override
  String get clearAll => 'Hreinsa allt';

  @override
  String get disambiguationTitle => 'Veldu merkingu';

  @override
  String get disambiguationPrompt => 'Hvaða merkingu viltu þýða með?';

  @override
  String get skip => 'Sleppa';

  @override
  String get inputModeTitle => 'Inntak';

  @override
  String get reviewModeTitle => 'Endurskoðun';

  @override
  String get practiceModeTitle => 'Æfing';

  @override
  String get chatHistoryTitle => 'Samtalasaga';

  @override
  String get chatNew => 'Nýtt samtal';

  @override
  String get chatNewChat => 'Nýtt samtal';

  @override
  String get chatChoosePersona => 'Veldu persónu';

  @override
  String get chatTypeHint => 'Sláðu inn skilaboð...';

  @override
  String chatFailed(Object error) {
    return 'Spjall mistókst: $error';
  }

  @override
  String get chatNoConversations => 'Engin samtöl ennþá';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt => 'Byrjaðu nýtt samtal til að æfa!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Samtalsútdráttur ($speaker)';
  }

  @override
  String get personaTeacher => 'Enskukennari';

  @override
  String get personaGuide => 'Ferðaleiðsögumaður';

  @override
  String get personaFriend => 'Vinur heimamanns';

  @override
  String get chatUntitled => 'Ónefnt samtal';

  @override
  String get chatAiChat => 'Spjall';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Núverandi valið efnissett: $name';
  }

  @override
  String get basicWordRepository => 'Grunn orðageymsla';

  @override
  String get basicSentenceRepository => 'Grunn setningageymsla';

  @override
  String get chatEndTitle => 'Ljúka og vista samtal';

  @override
  String get chatEndMessage => 'Viltu ljúka samtalinu?';

  @override
  String get chatSaveAndExit => 'Vista og hætta';

  @override
  String get errorSelectCategory =>
      'Vinsamlegast veldu fyrst orð eða setningu!';

  @override
  String get tutorialM1ToggleTitle => 'Orða/setningarstilling';

  @override
  String get tutorialM1ToggleDesc =>
      'Skiptu á milli orða og setningastillinga hér.';

  @override
  String get metadataDialogTitle => 'Ítarleg flokkun';

  @override
  String get tagFormal => 'Kurteis';

  @override
  String get selectPOS => 'Veldu orðflokk';

  @override
  String get selectSentenceType => 'Veldu tegund setningar';

  @override
  String get metadataRootWord => 'Stofn (Root Word)';

  @override
  String get posNoun => 'Nafnorð';

  @override
  String get posVerb => 'Sagnorð';

  @override
  String get posAdjective => 'Lýsingarorð';

  @override
  String get posAdverb => 'Atviksorð';

  @override
  String get posPronoun => 'Fornafn';

  @override
  String get posPreposition => 'Forsetning/hjálparorð';

  @override
  String get posConjunction => 'Tengiorð';

  @override
  String get posInterjection => 'Upphrópun';

  @override
  String get typeStatement => ' fullyrðing';

  @override
  String get typeQuestion => 'Spurning';

  @override
  String get typeExclamation => 'Upphrópun';

  @override
  String get typeImperative => 'Skipun';

  @override
  String get labelNote => 'Athugasemd';

  @override
  String get labelShowMemorized => 'Búið';

  @override
  String get titleTagSelection => 'Titilmerki (safn)';

  @override
  String get generalTags => 'Almenn merki';

  @override
  String get tagSelection => 'Merkjaval';

  @override
  String get metadataFormType => 'Málfræðilegt form';

  @override
  String get formInfinitive => 'Grunnmynd/nútíð';

  @override
  String get formPast => 'Þátíð';

  @override
  String get formPastParticiple => 'Lýsingarháttur þátíðar';

  @override
  String get formPresentParticiple => 'Lýsingarháttur nútíðar (ing)';

  @override
  String get formPresent => 'Nútíð';

  @override
  String get formThirdPersonSingular => '3. persóna eintala';

  @override
  String get formPlural => 'Fleirtala';

  @override
  String get formSingular => 'Eintala';

  @override
  String get caseSubject => 'Nefnifall';

  @override
  String get caseObject => 'Þolfall';

  @override
  String get casePossessive => 'Eignarfall';

  @override
  String get casePossessivePronoun => 'Eignarfornafn';

  @override
  String get caseReflexive => 'Afturbeygt fornafn';

  @override
  String get formPositive => 'Frumstig';

  @override
  String get formComparative => 'Miðstig';

  @override
  String get formSuperlative => 'Yfirstig';

  @override
  String get searchConditions => 'Leitarskilyrði';

  @override
  String recentNItems(int count) {
    return 'Skoða nýlega búnar til $count stk';
  }

  @override
  String get startsWith => 'Byrjar á';

  @override
  String get reset => 'Endurstilla';

  @override
  String get participantRename => 'Endurnefna þátttakanda';

  @override
  String get labelName => 'Nafn';

  @override
  String get gender => 'Kyn';

  @override
  String get language => 'Tungumál';

  @override
  String get male => 'Karl';

  @override
  String get female => 'Kona';

  @override
  String get neutral => 'Hlutlaust';

  @override
  String get chatAllConversations => 'Öll samtöl';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Viltu eyða þessu samtali?\nEydd samtöl er ekki hægt að endurheimta.';

  @override
  String get notSelected => '- Enginn valinn -';

  @override
  String get myWordbook => 'Orðaforði minn';

  @override
  String get mySentenceCollection => 'Setningasafnið mitt';

  @override
  String get newSubjectName => 'Nýtt nafn á orðaforða/setningasafn';

  @override
  String get enterNewSubjectName => 'Sláðu inn nýtt nafn';

  @override
  String get addNewSubject => 'Bæta við nýju nafni';

  @override
  String get selectExistingSubject => 'Veldu núverandi nafn';

  @override
  String get addTagHint => 'Bættu við merki...';

  @override
  String get save => 'Vista';

  @override
  String get styleFormal => 'Formal';

  @override
  String get styleInformal => 'Informal';

  @override
  String get stylePolite => 'Polite';

  @override
  String get styleSlang => 'Slang';

  @override
  String statusDownloading(Object name) {
    return 'Downloading: $name...';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name Imported Successfully';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Import Failed: $error';
  }

  @override
  String get statusLoginSuccess => 'Login successful.';

  @override
  String statusLoginFailed(Object error) {
    return 'Login failed: $error';
  }

  @override
  String get statusLoginCancelled => 'Login cancelled.';

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLogoutSuccess => 'Logged out.';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get login => 'Login';

  @override
  String get signUp => 'Sign Up';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get invalidEmail => 'Please enter a valid email.';

  @override
  String get passwordTooShort => 'Password must be at least 6 characters.';

  @override
  String get statusSigningUp => 'Signing up...';

  @override
  String statusSignUpFailed(Object error) {
    return 'Sign up failed: $error';
  }

  @override
  String get statusCheckEmail =>
      'Vinsamlegast athugaðu tölvupóstinn þinn til að staðfesta.';

  @override
  String get emailAlreadyInUse =>
      'Þetta netfang er þegar í notkun. Vinsamlegast skráðu þig inn eða notaðu endurheimt lykilorðs.';
}

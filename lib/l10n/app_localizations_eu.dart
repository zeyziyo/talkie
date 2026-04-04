// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get basicWords => 'Oinarrizko hitz biltegia';

  @override
  String get inputLanguage => 'Sarrerako hizkuntza';

  @override
  String get translationLanguage => 'Itzulpen-hizkuntza';

  @override
  String get simplifiedGuidance =>
      'Eguneroko elkarrizketak atzerriko hizkuntzetara berehala bihurtu! Talkiek zure hizkuntza-bizitza erregistratzen du.';

  @override
  String get noDataForLanguage =>
      'Hautatutako hizkuntzarako ikasketa materialik ez dago tokiko DBan. Materiala deskargatu edo beste hizkuntza bat hautatu.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Ezeztatu';

  @override
  String get accuracy => 'Zehaztasuna';

  @override
  String get ttsMissing =>
      'Hizkuntza honetarako ahots-motorra ez dago zure gailuan instalatuta.';

  @override
  String get ttsInstallGuide =>
      'Instalatu hizkuntza-datuak Android ezarpenak > Google TTS atalean.';

  @override
  String get adLoading =>
      'Iragarkia kargatzen ari da. Mesedez, saiatu berriro geroago.';

  @override
  String get addNewSubject => 'Gehitu izenburu berria';

  @override
  String get addParticipant => 'Parte-hartzailea gehitu';

  @override
  String get addTagHint => 'Gehitu etiketa...';

  @override
  String get alreadyHaveAccount => 'Dagoeneko baduzu kontu bat?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Automatikoki erreproduzitu';

  @override
  String get basic => 'Oinarrizkoa';

  @override
  String get basicDefault => 'Oinarrizkoa';

  @override
  String get basicMaterialRepository => 'Oinarrizko esaldi/hitz biltegia';

  @override
  String get basicSentenceRepository => 'Oinarrizko esaldi biltegia';

  @override
  String get basicSentences => 'Oinarrizko esaldi biltegia';

  @override
  String get basicWordRepository => 'Oinarrizko hitz biltegia';

  @override
  String get caseObject => 'Objektua';

  @override
  String get casePossessive => 'Jabetza';

  @override
  String get casePossessivePronoun => 'Jabetza-izenordaina';

  @override
  String get caseReflexive => 'Erreflexiboa';

  @override
  String get caseSubject => 'Subjektua';

  @override
  String get chatAiChat => 'Txat';

  @override
  String get chatAllConversations => 'Elkarrizketa guztiak';

  @override
  String get chatChoosePersona => 'Pertsonaia hautatu';

  @override
  String get chatEndMessage => 'Elkarrizketa amaitu nahi duzu?';

  @override
  String get chatEndTitle => 'Elkarrizketa amaitu eta gorde';

  @override
  String chatFailed(Object error) {
    return 'Txatak huts egin du: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Elkarrizketatik ateratakoa ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Elkarrizketaren historia';

  @override
  String get chatNew => 'Elkarrizketa berria';

  @override
  String get chatNewChat => 'Elkarrizketa berria';

  @override
  String get chatNoConversations => 'Oraindik ez dago elkarrizketarik';

  @override
  String get chatSearchHint => 'Bilatu elkarrizketen izenburuak...';

  @override
  String get chatNoteSearchHint => 'Bilatu oharren artean...';

  @override
  String get chatSaveAndExit => 'Gorde eta irten';

  @override
  String get chatStartNewPrompt => 'Hasi elkarrizketa berri bat praktikatzeko!';

  @override
  String get chatTypeHint => 'Idatzi mezu bat...';

  @override
  String get chatUntitled => 'Izenik gabeko elkarrizketa';

  @override
  String get checking => 'Egiaztatzen...';

  @override
  String get clearAll => 'Guztia garbitu';

  @override
  String get confirm => 'Egiaztatu';

  @override
  String get confirmDelete => 'Ikasketa-erregistro hau ezabatu nahi duzu?';

  @override
  String get confirmDeleteConversation =>
      'Elkarrizketa hau ezabatu nahi duzu?\nEzabatu ondoren ezin da berreskuratu.';

  @override
  String get confirmDeleteParticipant =>
      'Parte-hartzaile hau ezabatu nahi duzu?';

  @override
  String get contextTagHint => 'Idatzi egoera geroago bereiztea errazteko';

  @override
  String get contextTagLabel =>
      'Testuingurua/Egoera (aukerakoa) - Adibidez: goizeko agurra, tratamendu formala';

  @override
  String get copiedToClipboard => 'Arbelera kopiatu da!';

  @override
  String get copy => 'Kopiatu';

  @override
  String get correctAnswer => 'Erantzun zuzena';

  @override
  String get createNew => 'Sortu esaldi berri bat';

  @override
  String get currentLocation => 'Uneko kokapena';

  @override
  String get currentMaterialLabel => 'Hautatutako datu-multzoa:';

  @override
  String get delete => 'Ezabatu';

  @override
  String deleteFailed(String error) {
    return 'Ezabatu egin da: $error';
  }

  @override
  String get deleteRecord => 'Erregistroa ezabatu';

  @override
  String get dialogueQuestDesc =>
      'Praktikatu elkarrizketa egoera baten bidez. Hautatu erantzun egoki bat eta hitz egin.';

  @override
  String get dialogueQuestTitle => 'Elkarrizketa bilaketa';

  @override
  String get disambiguationPrompt => 'Zein esanahirekin itzuli nahi duzu?';

  @override
  String get disambiguationTitle => 'Esanahia hautatu';

  @override
  String get dontHaveAccount => 'Ez duzu konturik?';

  @override
  String get editParticipant => 'Parte-hartzailea editatu';

  @override
  String get email => 'Posta elektronikoa';

  @override
  String get emailAlreadyInUse =>
      'Helbide elektroniko hau erregistratuta dago. Hasi saioa edo berreskuratu pasahitza.';

  @override
  String get enterNewSubjectName => 'Idatzi izenburu berria';

  @override
  String get enterSentenceHint => 'Idatzi esaldi bat...';

  @override
  String get enterTextHint => 'Idatzi itzuli nahi duzun testua';

  @override
  String get enterTextToTranslate => 'Idatzi itzuli nahi duzun testua';

  @override
  String get enterWordHint => 'Idatzi hitz bat...';

  @override
  String get error => 'Errorea';

  @override
  String get errorHateSpeech => 'Ezin da itzuli gorroto-diskurtsoa duelako.';

  @override
  String get errorOtherSafety => 'AI segurtasun politikak itzulpena ukatu du.';

  @override
  String get errorProfanity => 'Ezin da itzuli profanotasuna duelako.';

  @override
  String get errorSelectCategory => 'Hautatu lehenik hitz bat edo esaldi bat!';

  @override
  String get errorSexualContent => 'Ezin da itzuli eduki sexuala duelako.';

  @override
  String get errors => 'Erroreak:';

  @override
  String get female => 'Emakumezkoa';

  @override
  String get file => 'Fitxategia:';

  @override
  String get filterAll => 'Guztiak';

  @override
  String get flip => 'Erakutsi';

  @override
  String get formComparative => 'Gradu konparatiboa';

  @override
  String get formInfinitive => 'Infinitive/Orainaldia';

  @override
  String get formPast => 'Iraganaldia';

  @override
  String get formPastParticiple => 'Iraganeko partizipioa';

  @override
  String get formPlural => 'Plurala';

  @override
  String get formPositive => 'Gradu positiboa';

  @override
  String get formPresent => 'Orainaldia';

  @override
  String get formPresentParticiple => 'Oraingo partizipioa (ing)';

  @override
  String get formSingular => 'Singularra';

  @override
  String get formSuperlative => 'Gradu superlatiboa';

  @override
  String get formThirdPersonSingular => 'Hirugarren pertsona singularra';

  @override
  String get gameModeDesc => 'Hautatu praktikatu nahi duzun joko modua';

  @override
  String get gameModeTitle => 'Joko modua';

  @override
  String get gameOver => 'Jokoa amaitu da';

  @override
  String get gender => 'Generoa';

  @override
  String get labelFilterMaterial => 'Materiala';

  @override
  String get labelFilterTag => 'Etiketak';

  @override
  String get generalTags => 'Etiketa orokorrak';

  @override
  String get getMaterials => 'Materialak lortu';

  @override
  String get good => 'Ona';

  @override
  String get googleContinue => 'Jarraitu Google-rekin';

  @override
  String get helpDialogueImportDesc =>
      'Inportatu elkarrizketa-sorta oso bat JSON fitxategi gisa.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON egitura: erabili `dialogues` array `entries` ordez\n• Berreskuratze automatikoa: elkarrizketaren izenburua, pertsonaia eta mezu-ordena berreskuratzen dira.\n• Kokapena: inportatutako elkarrizketak AI txat moduaren \'Historia\' fitxan agertzen dira.';

  @override
  String get helpJsonDesc =>
      '3. Moduan erabiliko den ikaskuntza-materiala JSON fitxategi gisa inportatzeko, jarraitu formatu hau:';

  @override
  String get helpJsonTypeDialogue => 'Elkarrizketa';

  @override
  String get helpJsonTypeSentence => 'Esaldi';

  @override
  String get helpJsonTypeWord => 'Hitz';

  @override
  String get helpMode1Desc =>
      'Hasi hizkuntzak ikasten modurik intuitiboenean, premium 3D mikro eta teklatu ikono handiekin.';

  @override
  String get helpMode1Details =>
      '• Hizkuntza ezarpenak: egiaztatu nire hizkuntza eta ikasten ari naizen hizkuntza, eta aldatu ikasteko hizkuntza hasierako pantailaren goiko aldean dagoen hizkuntza botoiarekin.\n• Idatzi erraz: idatzi berehala erdiko mikrofono handiaren eta testu leihoaren bidez.\n• Egiaztatu ezarpenak: idazten amaitutakoan, sakatu eskuineko marka urdina. Ezarpen zehatzen leihoa agertuko da.\n• Ezarpen zehatzak: agertzen den elkarrizketa-koadroan, zehaztu gorde beharreko material bilduma, oharrak eta etiketak.\n• Itzuli orain: ezarpenak amaitu ondoren, sakatu itzultzeko botoi berdea, eta adimen artifizialak berehala itzuliko du.\n• Bilaketa automatikoa: idazten ari zaren bitartean, antzeko itzulpen zaharrak detektatzen eta erakusten ditu denbora errealean.\n• Entzun eta gorde: entzun itzulpenaren emaitzaren behealdean dagoen bozgorailuaren ikonoarekin eta gehitu ikasketa zerrendara \'Datuak gorde\' bidez.';

  @override
  String get helpMode2Desc =>
      'Berrikusi gordetako esaldiak eta egiaztatu memorizatu duzun ala ez ezkutatzeko funtzio automatikoarekin.';

  @override
  String get helpMode2Details =>
      '• Materialak aukeratzea: Goiko eskuineko menuan (⋮) \'Ikasteko materialak aukeratu\' edo \'Online material biltegia\' erabili\n• Txartela itzuli: \'Erakutsi/Ezkutatu\' erabiliz itzulpena egiaztatu\n• Entzun: Bozgorailuaren ikonoarekin ahoskera erreproduzitu\n• Ikasketa burutzea: Marka (V) batekin ikasketa burutzea adierazi\n• Ezabatu: Txartela luze sakatu (Klik luzea) erregistroa ezabatzeko\n• Bilatu eta iragazi: Bilaketa-barra (denbora errealeko bilaketa adimenduna) eta etiketak, hasierako letra iragazkiak onartzen dira';

  @override
  String get helpMode3Desc =>
      'Entzun esaldiak eta errepikatu (itzal eginez) ahoskera lantzeko.';

  @override
  String get helpMode3Details =>
      '• Materiala hautatu: ikasteko datu-multzoa hautatu\n• Tartea ezarri: doitu esaldien arteko itxaron-denbora [-] [+] botoiekin (3s-60s)\n• Hasi/Gelditu: itzal saioa kontrolatu\n• Hitz egin: entzun ahotsa eta errepikatu\n• Iradokizunak: zehaztasun puntuazioa (0-100) eta kolore-adierazpena\n• Bilaketa-baldintzak: etiketak, azken elementuak, hasierako letrarekin iragazi';

  @override
  String get helpModeChatDesc =>
      'Praktikatu elkarrizketak AI pertsonaiarekin hizketan.';

  @override
  String get helpModeChatDetails =>
      '• AI txata: praktikatu elkarrizketa errealak pertsonaiekin beheko tabernako \'Txata\' menuan\n• Pertsonaia-ezarpenak: zehaztu libreki beste pertsonaren generoa, izena eta hizkuntza-kodea\n• GPS egoera-komedia: gomendatu zure kokapenarekin bat datozen elkarrizketa-gaiak\n• 2 hizkuntza: AIren erantzuna itzulpenarekin batera bistaratzen da ikaskuntza-efektua maximizatzeko\n• Erregistro-kudeaketa: iraganeko elkarrizketen historia iragazi eta elkarrizketako mezu zehatzak ikaskuntza-material gisa gorde';

  @override
  String get helpTabJson => 'JSON formatua';

  @override
  String get helpTabModes => 'Moduen azalpena';

  @override
  String get helpTabQuickStart => 'Laster hastea';

  @override
  String get helpTabTour => 'Esperimentatu';

  @override
  String get helpTitle => 'Laguntza eta Gidak';

  @override
  String get helpTourDesc =>
      '**Nabarmendutako zirkuluak** funtzio nagusiak gidatzen ditu.\n(Adibidez: **Nabarmendutako zirkuluak** seinalatzen duen txartela luze sakatuta ezaba dezakezu.)';

  @override
  String get hide => 'Ezkutatu';

  @override
  String importAdded(int count) {
    return 'Gehituta: $count';
  }

  @override
  String get importComplete => 'Inportatzea amaitu da';

  @override
  String get importDuplicateTitleError =>
      'Izenburu bereko material bat existitzen da jada. Aldatu izenburua eta saiatu berriro.';

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
    return 'Fitxategia inportatzeak huts egin du:\\n$error';
  }

  @override
  String get importFailed => 'Inportatzeak huts egin du';

  @override
  String importFile(String fileName) {
    return 'Fitxategia: $fileName';
  }

  @override
  String get importJsonFile => 'JSON fitxategia inportatu';

  @override
  String get importJsonFilePrompt => 'Mesedez, inportatu JSON fitxategi bat';

  @override
  String importSkipped(int count) {
    return 'Saltatuta: $count';
  }

  @override
  String importTotal(int count) {
    return 'Guztira: $count';
  }

  @override
  String get importing => 'Inportatzen...';

  @override
  String get inputModeTitle => 'Sarrera';

  @override
  String intervalSeconds(int seconds) {
    return 'Tartea: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Sartu baliozko posta elektroniko bat.';

  @override
  String get kakaoContinue => 'Kakaorekin jarraitu';

  @override
  String get labelLangCode => 'Hizkuntza-kodea (adibidez: en-US, ko-KR)';

  @override
  String get labelName => 'Izena';

  @override
  String get labelNote => 'Oharra';

  @override
  String get labelPOS => 'Adiera-kategoria';

  @override
  String get labelRole => 'Rola';

  @override
  String get labelSentence => 'Esaldi';

  @override
  String get labelSentenceCollection => 'Esaldi bilduma';

  @override
  String get labelSentenceType => 'Esaldi mota';

  @override
  String get labelShowMemorized => 'Amaituta';

  @override
  String get labelType => 'Mota:';

  @override
  String get labelWord => 'Hitza';

  @override
  String get labelWordbook => 'Hitz bilduma';

  @override
  String get language => 'Hizkuntza';

  @override
  String get languageSettings => 'Hizkuntza-ezarpenak';

  @override
  String get languageSettingsTitle => 'Hizkuntza-ezarpenak';

  @override
  String get libTitleFirstMeeting => 'Lehenengo topaketa';

  @override
  String get libTitleGreetings1 => 'Agurrak 1';

  @override
  String get libTitleNouns1 => 'Izena 1';

  @override
  String get libTitleVerbs1 => 'Aditza 1';

  @override
  String get listen => 'Entzun';

  @override
  String get listening => 'Entzuten...';

  @override
  String get loadingParticipants => 'Parte-hartzaileak kargatzen...';

  @override
  String get location => 'Kokapena';

  @override
  String get login => 'Saioa hasi';

  @override
  String get logout => 'Saioa itxi';

  @override
  String get logoutConfirmMessage => 'Saioa itxi nahi duzu gailu honetan?';

  @override
  String get logoutConfirmTitle => 'Saioa itxi';

  @override
  String get male => 'Gizonezkoa';

  @override
  String get manageParticipants => 'Parte-hartzaileak kudeatu';

  @override
  String get manual => 'Eskuzko sarrera';

  @override
  String get markAsStudied => 'Ikasketa markatu';

  @override
  String get materialInfo => 'Materialaren informazioa';

  @override
  String get me => 'Ni';

  @override
  String get menuDeviceImport => 'Materiala gailutik inportatu';

  @override
  String get menuHelp => 'Laguntza';

  @override
  String get menuLanguageSettings => 'Hizkuntza ezarpenak';

  @override
  String get menuOnlineLibrary => 'Online liburutegia';

  @override
  String get menuSelectMaterialSet => 'Ikasketa-datu-multzoa hautatu';

  @override
  String get menuSettings => 'Hizkuntza-ezarpenak';

  @override
  String get menuTutorial => 'Erabiltzeko tutoriala';

  @override
  String get menuWebDownload => 'Webgunea';

  @override
  String get metadataDialogTitle => 'Sailkapen zehatza';

  @override
  String get metadataFormType => 'Forma gramatikala';

  @override
  String get metadataRootWord => 'Jatorrizko forma (Root Word)';

  @override
  String get micButtonTooltip => 'Ahots ezagutzea hasi';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Uneko hautatutako datu-multzoa: $name';
  }

  @override
  String get mode2Title => 'Berrikusi';

  @override
  String get mode3Next => 'Hurrengoa';

  @override
  String get mode3Start => 'Hasi';

  @override
  String get mode3Stop => 'Gelditu';

  @override
  String get mode3TryAgain => 'Saiatu berriro';

  @override
  String get mySentenceCollection => 'Nire esaldi bilduma';

  @override
  String get myWordbook => 'Nire hiztegia';

  @override
  String get neutral => 'neutroa';

  @override
  String get newSubjectName => 'Izenburu berria';

  @override
  String get next => 'Hurrengoa';

  @override
  String get noDialogueHistory => 'Ez dago elkarrizketa historiarik.';

  @override
  String get noInternetWarningMic =>
      'Ez dago interneteko konexiorik. Baliteke ahots-ezagutza ez egotea erabilgarri lineaz kanpo.';

  @override
  String get noInternetWarningTranslate =>
      'Ez dago interneteko konexiorik. Ezin duzu itzulpen funtzioa erabili lineaz kanpo. Mesedez, erabili berrikuspen modua.';

  @override
  String get noMaterialsInCategory => 'Ez dago materialik kategoria honetan.';

  @override
  String get noParticipantsFound =>
      'Ez dago erregistratutako parte-hartzailerik.';

  @override
  String get noRecords =>
      'Ez dago hautatutako hizkuntzaren ikasketa-erregistrorik';

  @override
  String get noStudyMaterial => 'Ez dago ikasketa-materialik.';

  @override
  String get noTextToPlay => 'Ez dago erreproduzitzeko testurik';

  @override
  String get noTranslationToSave => 'Ez dago gordetzeko itzulpenik';

  @override
  String get noVoiceDetected => 'Ez da ahotsik detektatu';

  @override
  String get notSelected => '- Ez dago hautatuta -';

  @override
  String get onlineLibraryCheckInternet =>
      'Egiaztatu interneteko konexioa edo saiatu berriro geroago.';

  @override
  String get onlineLibraryLoadFailed =>
      'Errore bat gertatu da materialak kargatzean.';

  @override
  String get onlineLibraryNoMaterials => 'Ez dago materialik.';

  @override
  String get participantDeleted => 'Parte-hartzailea ezabatu da.';

  @override
  String get participantRename => 'Parte-hartzailearen izena aldatu';

  @override
  String get partner => 'Bazkidea';

  @override
  String get partnerMode => 'Bazkide modua';

  @override
  String get password => 'Pasahitza';

  @override
  String get passwordTooShort =>
      'Pasahitzak 6 karaktere izan behar ditu gutxienez.';

  @override
  String get perfect => 'Ezin hobea!';

  @override
  String get personaFriend => 'Bertako laguna';

  @override
  String get personaGuide => 'Bidaia gida';

  @override
  String get personaTeacher => 'Ingeleseko irakaslea';

  @override
  String get playAgain => 'Berriro jokatu';

  @override
  String playbackFailed(String error) {
    return 'Erreprodukzioak huts egin du: $error';
  }

  @override
  String get playing => 'Erreproduzitzen...';

  @override
  String get posAdjective => 'Adjektiboa';

  @override
  String get posAdverb => 'Adberbioa';

  @override
  String get posConjunction => 'Lokailua';

  @override
  String get posInterjection => 'Harridura-hitza';

  @override
  String get posNoun => 'Izena';

  @override
  String get posPreposition => 'Preposizioa/Postposizioa';

  @override
  String get posPronoun => 'Izenordaina';

  @override
  String get posVerb => 'Aditza';

  @override
  String get practiceModeTitle => 'Praktika';

  @override
  String get practiceWordsOnly => 'Hitzak bakarrik praktikatu';

  @override
  String progress(int current, int total) {
    return 'Aurrerapena: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Ikusi berriki sortutako $count elementu';
  }

  @override
  String recognitionFailed(String error) {
    return 'Ahots ezagutzeak huts egin du: $error';
  }

  @override
  String get recognized => 'Ezagututa';

  @override
  String get recognizedText => 'Ezagututako ahoskera:';

  @override
  String get recordDeleted => 'Erregistroa ezabatu da';

  @override
  String get refresh => 'Freskatu';

  @override
  String get reset => 'Berrezarri';

  @override
  String get resetPracticeHistory => 'Praktikaren historia berrezarri';

  @override
  String get retry => 'Saiatu berriro?';

  @override
  String get reviewAll => 'Berrikuspen osoa';

  @override
  String reviewCount(int count) {
    return 'Berrikusi $count aldiz';
  }

  @override
  String get reviewModeTitle => 'Berrikusi';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Hirugarrena';

  @override
  String get roleUser => 'Erabiltzailea';

  @override
  String get save => 'Gorde';

  @override
  String get saveData => 'Datuak gorde';

  @override
  String saveFailed(String error) {
    return 'Gordetzeak huts egin du: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Saiatu itzulpenak bilaketa moduan gordetzen';

  @override
  String get saved => 'Gordeta';

  @override
  String get saving => 'Gordetzen...';

  @override
  String score(String score) {
    return 'Zehaztasuna: $score%';
  }

  @override
  String get scoreLabel => 'Puntuazioa';

  @override
  String get search => 'Bilatu';

  @override
  String get searchConditions => 'Bilaketa-baldintzak';

  @override
  String get searchSentenceHint => 'Esaldi bilaketa...';

  @override
  String get searchWordHint => 'Hitz bilaketa...';

  @override
  String get sectionSentence => 'Esaldi atala';

  @override
  String get sectionSentences => 'Esaldiak';

  @override
  String get sectionWord => 'Hitz atala';

  @override
  String get sectionWords => 'Hitzak';

  @override
  String get selectExistingSubject => 'Aukeratu lehendik dagoen izenburua';

  @override
  String get selectMaterialPrompt => 'Mesedez, hautatu ikasketa-materiala';

  @override
  String get selectMaterialSet => 'Ikasketa-datu-multzoa hautatu';

  @override
  String get selectPOS => 'Hautatu adiera-kategoria';

  @override
  String get selectParticipants => 'Parte-hartzaileak aukeratu';

  @override
  String get selectSentenceType => 'Hautatu esaldi mota';

  @override
  String get selectStudyMaterial => 'Ikasketa-materiala hautatu';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Esaldi';

  @override
  String get signUp => 'Erregistratu';

  @override
  String get similarTextFound => 'Antzeko testua aurkitu da';

  @override
  String get skip => 'Saltatu';

  @override
  String get source => 'Iturria:';

  @override
  String get sourceLanguage => 'Jatorrizko hizkuntza';

  @override
  String get sourceLanguageLabel => 'Nire hizkuntza (Iturria)';

  @override
  String get speakNow => 'Hitz egin orain!';

  @override
  String get speaker => 'Hizlaria';

  @override
  String get speakerSelect => 'Hizlaria aukeratu';

  @override
  String get speakingPractice => 'Hitz egiteko praktika';

  @override
  String get startChat => 'Hasi elkarrizketa';

  @override
  String get startPractice => 'Praktika hasi';

  @override
  String get startTutorial => 'Tutoriala hasi';

  @override
  String get startWarning => 'Abisua';

  @override
  String get startsWith => 'Hasierako letra';

  @override
  String get statusCheckEmail =>
      'Mesedez, egiaztatu e-posta autentifikazioa osatzeko.';

  @override
  String statusDownloading(Object name) {
    return 'Deskargatzen: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Inportazioak huts egin du: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name inportatu da';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Saio-hasiera bertan behera utzi da.';

  @override
  String statusLoginFailed(Object error) {
    return 'Saio-hasierak huts egin du: $error';
  }

  @override
  String get statusLoginSuccess => 'Saioa hasi da.';

  @override
  String get statusLogoutSuccess => 'Saioa itxi da.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Errore bat gertatu da erregistratzean: $error';
  }

  @override
  String get statusSigningUp => 'Erregistratzen...';

  @override
  String get stopPractice => 'Praktika gelditu';

  @override
  String get studyComplete => 'Ikaskuntza amaitu da';

  @override
  String studyRecords(int count) {
    return 'Ikasketa-erregistroak ($count)';
  }

  @override
  String get styleFormal => 'Formala';

  @override
  String get styleInformal => 'Informala';

  @override
  String get stylePolite => 'Adeitsua';

  @override
  String get styleSlang => 'Slanga';

  @override
  String get subject => 'Gaia:';

  @override
  String get swapLanguages => 'Hizkuntzak trukatu';

  @override
  String get switchToAi => 'AI modura aldatu';

  @override
  String get switchToPartner => 'Bazkide modura aldatu';

  @override
  String get syncingData => 'Datuak sinkronizatzen...';

  @override
  String get tabConversation => 'Elkarrizketa';

  @override
  String tabReview(int count) {
    return 'Berrikusi ($count)';
  }

  @override
  String get tabSentence => 'Esaldi';

  @override
  String get tabSpeaking => 'Hitz egin';

  @override
  String tabStudyMaterial(int count) {
    return 'Ikasketa-materiala ($count)';
  }

  @override
  String get tabWord => 'Hitza';

  @override
  String get tagFormal => 'Tratamendu formala';

  @override
  String get tagSelection => 'Etiketa hautatu';

  @override
  String get targetLanguage => 'Helburuko hizkuntza';

  @override
  String get targetLanguageFilter => 'Helburuko hizkuntzaren iragazkia:';

  @override
  String get targetLanguageLabel => 'Ikasketa-hizkuntza (Helburua)';

  @override
  String get thinkingTimeDesc =>
      'Erantzuna argitaratu aurretik pentsatzeko denbora.';

  @override
  String get thinkingTimeInterval => 'Erreprodukzioaren atzerapena';

  @override
  String get timeUp => 'Denbora agortu da!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Izenburu-etiketa (Bilduma)';

  @override
  String get tooltipDecrease => 'Murriztu';

  @override
  String get tooltipIncrease => 'Handitu';

  @override
  String get tooltipSearch => 'Bilatu';

  @override
  String get tooltipSpeaking => 'Hitz egin';

  @override
  String get tooltipStudyReview => 'Ikasi+Berrikusi';

  @override
  String totalRecords(int count) {
    return 'Guztira $count erregistro (ikusi guztiak)';
  }

  @override
  String get translate => 'Itzuli';

  @override
  String get translating => 'Itzultzen...';

  @override
  String get translation => 'Itzulpena';

  @override
  String get translationComplete => 'Itzulpena amaitu da (gorde behar da)';

  @override
  String translationFailed(String error) {
    return 'Itzulpenak huts egin du: $error';
  }

  @override
  String get translationLimitExceeded => 'Itzulpen-muga gainditu da';

  @override
  String get translationLimitMessage =>
      'Doako eguneroko itzulpen guztiak (5) erabili dituzu.\\n\\nIragarki bat ikusi nahi duzu 5 gehiago berehala betetzeko?';

  @override
  String get translationLoaded => 'Gordetako itzulpena kargatu da';

  @override
  String get translationRefilled => 'Itzulpenen kopurua 5era bete da!';

  @override
  String get translationResultHint => 'Itzulpenaren emaitza - edita daiteke';

  @override
  String get tryAgain => 'Saiatu berriro';

  @override
  String get tutorialAiChatDesc =>
      'Praktikatu elkarrizketa errealak AI pertsonaia batekin.';

  @override
  String get tutorialAiChatTitle => 'AI txata';

  @override
  String get tutorialContextDesc =>
      'Esaldi bera bada ere, egoera (adibidez, goiza, arratsaldea) idatziz gero, bereizita gorde dezakezu.';

  @override
  String get tutorialContextTitle => 'Egoera/Testuinguru etiketa';

  @override
  String get tutorialLangSettingsDesc =>
      'Ezarri itzuli nahi duzun jatorrizko hizkuntza eta helburuko hizkuntza.';

  @override
  String get tutorialLangSettingsTitle => 'Hizkuntza-ezarpenak';

  @override
  String get tutorialM1ToggleDesc => 'Aldatu hitz eta esaldi moduak hemen.';

  @override
  String get tutorialM1ToggleTitle => 'Hitza/Esaldi modua';

  @override
  String get tutorialM2DropdownDesc =>
      'Goiko menuaren bidez ikasi nahi duzun materiala hauta dezakezu.';

  @override
  String get tutorialM2ImportDesc =>
      'Inportatu JSON fitxategi bat zure gailuko karpetatik.';

  @override
  String get tutorialM2ListDesc =>
      'Txartel hau luze sakatuta (Sakatu luzea) ezaba dezakezu. Egiaztatu eta irauli gordetako esaldiak.';

  @override
  String get tutorialM2ListTitle => 'Ikasketa-zerrenda';

  @override
  String get tutorialM2SearchDesc =>
      'Gordetako hitzak eta esaldiak bilatu eta azkar aurki ditzakezu.';

  @override
  String get tutorialM2SelectDesc =>
      'Sakatu datu-multzoaren ikonoa (📚) goiko aplikazio-barran ikasi nahi duzun materiala hautatzeko.';

  @override
  String get tutorialM2SelectTitle => 'Materiala hautatu';

  @override
  String get tutorialM3IntervalDesc => 'Doitu esaldien arteko itxaron-denbora.';

  @override
  String get tutorialM3IntervalTitle => 'Tartea ezarri';

  @override
  String get tutorialM3ResetDesc =>
      'Berrezarri aurrerapena eta zehaztasun puntuazioa hutsetik hasteko.';

  @override
  String get tutorialM3ResetTitle => 'Historia berrezarri';

  @override
  String get tutorialM3SelectDesc =>
      'Sakatu datu-multzoaren ikonoa (📚) goiko aplikazio-barran praktikatu nahi duzun materiala hautatzeko.';

  @override
  String get tutorialM3SelectTitle => 'Materiala hautatu';

  @override
  String get tutorialM3StartDesc =>
      'Sakatu erreproduzitzeko botoia jatorrizko hiztunaren ahotsa entzun eta jarraitzeko.';

  @override
  String get tutorialM3StartTitle => 'Praktika hasi';

  @override
  String get tutorialM3WordsDesc =>
      'Markatuta badago, gordetako hitzak bakarrik praktikatuko dira.';

  @override
  String get tutorialM3WordsTitle => 'Hitzen praktika';

  @override
  String get tutorialMicDesc =>
      'Mikrofonoaren botoia sakatuta ahots bidez idatz dezakezu.';

  @override
  String get tutorialMicTitle => 'Ahots sarrera';

  @override
  String get tutorialSaveDesc =>
      'Gorde itzulitako emaitzak ikasketa-erregistroan.';

  @override
  String get tutorialSaveTitle => 'Gorde';

  @override
  String get tutorialSwapDesc =>
      'Trukatu nire hizkuntza eta ikasketa-hizkuntza.';

  @override
  String get tutorialTabDesc =>
      'Hemen nahi duzun ikasketa-modua hauta dezakezu.';

  @override
  String get tutorialTapToContinue => 'Sakatu pantaila jarraitzeko';

  @override
  String get tutorialTransDesc => 'Idatzitako testua itzultzen du.';

  @override
  String get tutorialTransTitle => 'Itzuli';

  @override
  String get typeExclamation => 'Harridura';

  @override
  String get typeImperative => 'Agindua';

  @override
  String get typeQuestion => 'Galdera';

  @override
  String get typeStatement => 'Baieztapena';

  @override
  String get usageLimitTitle => 'Mugara iritsi da';

  @override
  String get useExistingText => 'Erabili lehendik dagoen testua';

  @override
  String get viewOnlineGuide => 'Ikusi online gida';

  @override
  String get voluntaryTranslations => 'Borondatezko itzulpenak';

  @override
  String get watchAdAndRefill => 'Iragarkia ikusi eta bete (+5)';

  @override
  String get word => 'Hitza';

  @override
  String get wordDefenseDesc =>
      'Hitz egin hitzak etsaiak iritsi baino lehen oinarria defendatzeko.';

  @override
  String get wordDefenseTitle => 'Hitzen defentsa';

  @override
  String get wordModeLabel => 'Hitzen modua';

  @override
  String get yourPronunciation => 'Zure ahoskera';

  @override
  String get ttsUnsupportedNatively =>
      'Gailu honen ezarpen lehenetsiek ez dute hizkuntza honetako ahots-irteerarik onartzen.';

  @override
  String get homeTab => 'Itzuli';

  @override
  String get welcomeTitle => 'Ongi etorri Talkiera!';

  @override
  String get welcomeDesc =>
      'Ongi etorri Talkiera! Munduko 80 hizkuntza baino gehiago onartzen ditugu %100eko osotasunarekin, eta ikaskuntza esperientzia ezin hobea eskaintzen dugu premium 3D diseinu berri eta errendimendu optimizatuarekin.';

  @override
  String get welcomeButton => 'Hasi';

  @override
  String get labelDetails => 'Ezarpen zehatzak';

  @override
  String get translationResult => 'Itzulpen emaitza';

  @override
  String get inputContent => 'Sarrerako edukia';

  @override
  String get translateNow => 'Itzuli orain';

  @override
  String get tooltipSettingsConfirm => 'Ezarpenak baieztatu';

  @override
  String get hintNoteExample =>
      'Adibidez: testuinguru azalpena, homonimoak, etab.';

  @override
  String get hintTagExample => 'Adibidez: negozioa, bidaiak...';

  @override
  String get addNew => 'Gehitu berria';

  @override
  String get newNotebookTitle => 'Koaderno berriaren izena';

  @override
  String get enterNameHint => 'Idatzi izena';

  @override
  String get add => 'Gehitu';

  @override
  String get openSettings => 'Ezarpenak ireki';

  @override
  String get helpNotebook => 'Hautatu itzulpenak gordetzeko karpeta.';

  @override
  String get helpNote =>
      'Idatzi hitzaren esanahia, adibideak edo egoerak aske.';

  @override
  String get helpTag => 'Sartu gero sailkatu edo bilatzeko gako-hitzak.';

  @override
  String get requestTranslation => 'Itzulpena eskatu';

  @override
  String get statusRequestSuccess => 'Itzulpen eskaera burutu da.';

  @override
  String statusRequestFailed(String error) {
    return 'Itzulpen eskaera huts egin du: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Ikasteko hizkuntza ez da aurkitu';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Hautatu duzun materialak ez du onartzen unean ezarrita daukazun ikasteko hizkuntza ($targetLang), eta ezin da lokalean gorde. Itzulpena eskatu nahi duzu?';
  }

  @override
  String get quickStartStep1Title => '1. Hizkuntza ezarri';

  @override
  String get quickStartStep1Desc =>
      'Ezarri zure hizkuntza eta ikasteko hizkuntza Menua > Hizkuntza ezarpenak atalean.';

  @override
  String get quickStartStep2Title => '2. Oinarrizko prozesua';

  @override
  String get quickStartStep2Desc =>
      'Sortu zure ikasketa-txartelak ordena honetan: Sarrera (mikrofonoa/tekla) -> Itzulpena -> Gorde.';

  @override
  String get quickStartStep3Title => '3. Erabili moduak';

  @override
  String get quickStartStep3Desc =>
      'Praktikatu txateatzen, eta praktikatu ahoskera Ahoskera praktikatzeko fitxan testua ikusiz eta zuzenean ahoskatuz.';

  @override
  String get noteGuidance =>
      'Itzulpen zehatzagoa lortzeko xehetasun gehigarriak sartzen dituzun lekua';
}

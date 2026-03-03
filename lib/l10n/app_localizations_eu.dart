// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'Kakaorekin jarraitu';

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
  String get helpTitle => 'Laguntza eta Gidak';

  @override
  String get helpTabModes => 'Moduen azalpena';

  @override
  String get helpTabJson => 'JSON formatua';

  @override
  String get helpTabTour => 'Esperimentatu';

  @override
  String get helpMode1Desc =>
      'Ahotsa ezagutuz itzultzen du eta emaitzak entzun ditzakezu.';

  @override
  String get helpMode1Details =>
      '• Hizkuntza ezarpena: aldatu hizkuntza goiko/beheko ikonoak sakatuta\n• Hitz/Esaldia txandakatu: aldatu modua\n• Ahots sarrera: sakatu mikrofonoaren ikonoa entzuten hasteko/gelditzeko\n• Testu sarrera: idatzi zuzenean itzultzeko\n• Bilaketa automatikoa: antzeko esaldiak detektatu\n• Itzulpena: sakatu itzultzeko botoia berehala itzultzeko\n• Entzun: TTS erreprodukzioa bozgorailuaren ikonoarekin\n• Gorde: gehitu erregistro bat \'Datuak gorde\'rekin\n• Garbitu: hasieratu sarrera';

  @override
  String get helpMode2Desc =>
      'Berrikusi gordetako esaldiak eta egiaztatu memorizatu duzun ala ez ezkutatzeko funtzio automatikoarekin.';

  @override
  String get helpMode2Details =>
      '• Materiala hautatu: hautatu datu-multzo zehatz bat edo \'Berrikuspen osoa\'\n• Txartela irauli: egiaztatu itzulpena \'Erakutsi/Ezkutatu\' erabiliz (ikaskuntza automatikoa egiaztatu)\n• Entzun: esaldiaren TTS erreprodukzioa\n• Ikaskuntza osatua: markatu ikaskuntza osatutzat (V)\n• Ezabatu: luze sakatu txartela erregistroa ezabatzeko\n• Bilaketa-baldintzak: etiketak, azken elementuak, hasierako letrarekin iragazi';

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
      '• AI txata: praktikatu elkarrizketa zure hizkuntzan hitz eginez\n• Pertsonaia anitz: aldatu beste pertsonaren generoa/hizkuntza/izena goiko menuarekin\n• Bazkidea gehitu: gehitu solaskide berri bat (+) botoiarekin (Ezezaguna)\n• GPS: uneko kokapenean oinarritutako antzezpena\n• Automatikoki gorde: elkarrizketa automatikoki itzuli eta gorde';

  @override
  String get helpJsonDesc =>
      '3. Moduan erabiliko den ikaskuntza-materiala JSON fitxategi gisa inportatzeko, jarraitu formatu hau:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'Inportatu elkarrizketa-sorta oso bat JSON fitxategi gisa.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON egitura: erabili `dialogues` array `entries` ordez\n• Berreskuratze automatikoa: elkarrizketaren izenburua, pertsonaia eta mezu-ordena berreskuratzen dira.\n• Kokapena: inportatutako elkarrizketak AI txat moduaren \'Historia\' fitxan agertzen dira.';

  @override
  String get helpTourDesc =>
      '**Nabarmendutako zirkuluak** funtzio nagusiak gidatzen ditu.\n(Adibidez: **Nabarmendutako zirkuluak** seinalatzen duen txartela luze sakatuta ezaba dezakezu.)';

  @override
  String get partnerMode => 'Bazkide modua';

  @override
  String get manual => 'Eskuzko sarrera';

  @override
  String get speaker => 'Hizlaria';

  @override
  String get switchToAi => 'AI modura aldatu';

  @override
  String get switchToPartner => 'Bazkide modura aldatu';

  @override
  String get currentLocation => 'Uneko kokapena';

  @override
  String get location => 'Kokapena';

  @override
  String get partner => 'Bazkidea';

  @override
  String get me => 'Ni';

  @override
  String get currentMaterialLabel => 'Hautatutako datu-multzoa:';

  @override
  String get basicMaterialRepository => 'Oinarrizko esaldi/hitz biltegia';

  @override
  String get word => 'Hitza';

  @override
  String get sentence => 'Esaldi';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Berrikusi ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Ikasketa-materiala ($count)';
  }

  @override
  String get mode2Title => 'Berrikusi';

  @override
  String get search => 'Bilatu';

  @override
  String get translate => 'Itzuli';

  @override
  String get listen => 'Entzun';

  @override
  String get saveData => 'Datuak gorde';

  @override
  String get saved => 'Gordeta';

  @override
  String get delete => 'Ezabatu';

  @override
  String get materialInfo => 'Materialaren informazioa';

  @override
  String get cancel => 'Ezeztatu';

  @override
  String get confirm => 'Egiaztatu';

  @override
  String get refresh => 'Freskatu';

  @override
  String studyRecords(int count) {
    return 'Ikasketa-erregistroak ($count)';
  }

  @override
  String get targetLanguageFilter => 'Helburuko hizkuntzaren iragazkia:';

  @override
  String get noRecords =>
      'Ez dago hautatutako hizkuntzaren ikasketa-erregistrorik';

  @override
  String get saveTranslationsFromSearch =>
      'Saiatu itzulpenak bilaketa moduan gordetzen';

  @override
  String get flip => 'Erakutsi';

  @override
  String get hide => 'Ezkutatu';

  @override
  String get deleteRecord => 'Erregistroa ezabatu';

  @override
  String get confirmDelete => 'Ikasketa-erregistro hau ezabatu nahi duzu?';

  @override
  String get recordDeleted => 'Erregistroa ezabatu da';

  @override
  String deleteFailed(String error) {
    return 'Ezabatu egin da: $error';
  }

  @override
  String get importJsonFile => 'JSON fitxategia inportatu';

  @override
  String get importing => 'Inportatzen...';

  @override
  String get importComplete => 'Inportatzea amaitu da';

  @override
  String get importFailed => 'Inportatzeak huts egin du';

  @override
  String importFile(String fileName) {
    return 'Fitxategia: $fileName';
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
    return 'Guztira: $count';
  }

  @override
  String importAdded(int count) {
    return 'Gehituta: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Saltatuta: $count';
  }

  @override
  String get errors => 'Erroreak:';

  @override
  String get error => 'Errorea';

  @override
  String importErrorMessage(String error) {
    return 'Fitxategia inportatzeak huts egin du:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get selectStudyMaterial => 'Ikasketa-materiala hautatu';

  @override
  String get subject => 'Gaia:';

  @override
  String get source => 'Iturria:';

  @override
  String get file => 'Fitxategia:';

  @override
  String progress(int current, int total) {
    return 'Aurrerapena: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Mesedez, inportatu JSON fitxategi bat';

  @override
  String get selectMaterialPrompt => 'Mesedez, hautatu ikasketa-materiala';

  @override
  String get studyComplete => 'Ikaskuntza amaitu da';

  @override
  String get markAsStudied => 'Ikasketa markatu';

  @override
  String get listening => 'Entzuten...';

  @override
  String get recognized => 'Ezagututa';

  @override
  String recognitionFailed(String error) {
    return 'Ahots ezagutzeak huts egin du: $error';
  }

  @override
  String get checking => 'Egiaztatzen...';

  @override
  String get translating => 'Itzultzen...';

  @override
  String get translationComplete => 'Itzulpena amaitu da (gorde behar da)';

  @override
  String get translationLoaded => 'Gordetako itzulpena kargatu da';

  @override
  String translationFailed(String error) {
    return 'Itzulpenak huts egin du: $error';
  }

  @override
  String get enterTextToTranslate => 'Idatzi itzuli nahi duzun testua';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => 'Gordetzen...';

  @override
  String get noTranslationToSave => 'Ez dago gordetzeko itzulpenik';

  @override
  String saveFailed(String error) {
    return 'Gordetzeak huts egin du: $error';
  }

  @override
  String get playing => 'Erreproduzitzen...';

  @override
  String get noTextToPlay => 'Ez dago erreproduzitzeko testurik';

  @override
  String playbackFailed(String error) {
    return 'Erreprodukzioak huts egin du: $error';
  }

  @override
  String get sourceLanguage => 'Jatorrizko hizkuntza';

  @override
  String get targetLanguage => 'Helburuko hizkuntza';

  @override
  String get similarTextFound => 'Antzeko testua aurkitu da';

  @override
  String get useExistingText => 'Erabili lehendik dagoen testua';

  @override
  String get createNew => 'Sortu esaldi berri bat';

  @override
  String reviewCount(int count) {
    return 'Berrikusi $count aldiz';
  }

  @override
  String get tabSpeaking => 'Hitz egin';

  @override
  String get speakingPractice => 'Hitz egiteko praktika';

  @override
  String intervalSeconds(int seconds) {
    return 'Tartea: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Zure ahoskera';

  @override
  String get correctAnswer => 'Erantzun zuzena';

  @override
  String score(String score) {
    return 'Zehaztasuna: $score%';
  }

  @override
  String get perfect => 'Ezin hobea!';

  @override
  String get good => 'Ona';

  @override
  String get tryAgain => 'Saiatu berriro';

  @override
  String get startPractice => 'Praktika hasi';

  @override
  String get stopPractice => 'Praktika gelditu';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Tutoriala hasi';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Ahots sarrera';

  @override
  String get tutorialMicDesc =>
      'Mikrofonoaren botoia sakatuta ahots bidez idatz dezakezu.';

  @override
  String get tutorialTabDesc =>
      'Hemen nahi duzun ikasketa-modua hauta dezakezu.';

  @override
  String get tutorialTapToContinue => 'Sakatu pantaila jarraitzeko';

  @override
  String get tutorialTransTitle => 'Itzuli';

  @override
  String get tutorialTransDesc => 'Idatzitako testua itzultzen du.';

  @override
  String get tutorialSaveTitle => 'Gorde';

  @override
  String get tutorialSaveDesc =>
      'Gorde itzulitako emaitzak ikasketa-erregistroan.';

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
  String get tutorialAiChatTitle => 'AI txata';

  @override
  String get tutorialAiChatDesc =>
      'Praktikatu elkarrizketa errealak AI pertsonaia batekin.';

  @override
  String get tutorialM2SelectTitle => 'Materiala hautatu';

  @override
  String get tutorialM2SelectDesc =>
      'Sakatu datu-multzoaren ikonoa (📚) goiko aplikazio-barran ikasi nahi duzun materiala hautatzeko.';

  @override
  String get tutorialM2ListTitle => 'Ikasketa-zerrenda';

  @override
  String get tutorialM2ListDesc =>
      'Txartel hau luze sakatuta (Sakatu luzea) ezaba dezakezu. Egiaztatu eta irauli gordetako esaldiak.';

  @override
  String get tutorialM3SelectTitle => 'Materiala hautatu';

  @override
  String get tutorialM3SelectDesc =>
      'Sakatu datu-multzoaren ikonoa (📚) goiko aplikazio-barran praktikatu nahi duzun materiala hautatzeko.';

  @override
  String get tutorialM3IntervalTitle => 'Tartea ezarri';

  @override
  String get tutorialM3IntervalDesc => 'Doitu esaldien arteko itxaron-denbora.';

  @override
  String get tutorialM3StartTitle => 'Praktika hasi';

  @override
  String get tutorialM3StartDesc =>
      'Sakatu erreproduzitzeko botoia jatorrizko hiztunaren ahotsa entzun eta jarraitzeko.';

  @override
  String get startWarning => 'Abisua';

  @override
  String get noVoiceDetected => 'Ez da ahotsik detektatu';

  @override
  String get tooltipSearch => 'Bilatu';

  @override
  String get tooltipStudyReview => 'Ikasi+Berrikusi';

  @override
  String get tooltipSpeaking => 'Hitz egin';

  @override
  String get tooltipDecrease => 'Murriztu';

  @override
  String get tooltipIncrease => 'Handitu';

  @override
  String get languageSettings => 'Hizkuntza-ezarpenak';

  @override
  String get tutorialM2DropdownDesc =>
      'Goiko menuaren bidez ikasi nahi duzun materiala hauta dezakezu.';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc =>
      'Inportatu JSON fitxategi bat zure gailuko karpetatik.';

  @override
  String get tutorialLangSettingsTitle => 'Hizkuntza-ezarpenak';

  @override
  String get tutorialLangSettingsDesc =>
      'Ezarri itzuli nahi duzun jatorrizko hizkuntza eta helburuko hizkuntza.';

  @override
  String get copy => 'Kopiatu';

  @override
  String get copiedToClipboard => 'Arbelera kopiatu da!';

  @override
  String get tutorialContextTitle => 'Egoera/Testuinguru etiketa';

  @override
  String get tutorialContextDesc =>
      'Esaldi bera bada ere, egoera (adibidez, goiza, arratsaldea) idatziz gero, bereizita gorde dezakezu.';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get thinkingTimeDesc =>
      'Erantzuna argitaratu aurretik pentsatzeko denbora.';

  @override
  String get autoPlay => 'Automatikoki erreproduzitu';

  @override
  String get timeUp => 'Denbora agortu da!';

  @override
  String get gameModeTitle => 'Joko modua';

  @override
  String get gameModeDesc => 'Hautatu praktikatu nahi duzun joko modua';

  @override
  String get wordDefenseTitle => 'Hitzen defentsa';

  @override
  String get wordDefenseDesc =>
      'Hitz egin hitzak etsaiak iritsi baino lehen oinarria defendatzeko.';

  @override
  String get dialogueQuestTitle => 'Elkarrizketa bilaketa';

  @override
  String get dialogueQuestDesc =>
      'Praktikatu elkarrizketa egoera baten bidez. Hautatu erantzun egoki bat eta hitz egin.';

  @override
  String get translation => 'Translation';

  @override
  String get labelType => 'Mota:';

  @override
  String get labelWord => 'Hitza';

  @override
  String get labelSentence => 'Esaldi';

  @override
  String get contextTagLabel =>
      'Testuingurua/Egoera (aukerakoa) - Adibidez: goizeko agurra, tratamendu formala';

  @override
  String get contextTagHint => 'Idatzi egoera geroago bereiztea errazteko';

  @override
  String get usageLimitTitle => 'Mugara iritsi da';

  @override
  String get translationLimitExceeded => 'Itzulpen-muga gainditu da';

  @override
  String get translationLimitMessage =>
      'Doako eguneroko itzulpen guztiak (5) erabili dituzu.\\n\\nIragarki bat ikusi nahi duzu 5 gehiago berehala betetzeko?';

  @override
  String get watchAdAndRefill => 'Iragarkia ikusi eta bete (+5)';

  @override
  String get translationRefilled => 'Itzulpenen kopurua 5era bete da!';

  @override
  String get adLoading =>
      'Iragarkia kargatzen ari da. Mesedez, saiatu berriro geroago.';

  @override
  String get reviewAll => 'Berrikuspen osoa';

  @override
  String totalRecords(int count) {
    return 'Guztira $count erregistro (ikusi guztiak)';
  }

  @override
  String get filterAll => 'Guztiak';

  @override
  String get practiceWordsOnly => 'Hitzak bakarrik praktikatu';

  @override
  String get resetPracticeHistory => 'Praktikaren historia berrezarri';

  @override
  String get retry => 'Saiatu berriro?';

  @override
  String get noStudyMaterial => 'Ez dago ikasketa-materialik.';

  @override
  String get gameOver => 'Game Over';

  @override
  String get playAgain => 'Berriro jokatu';

  @override
  String get speakNow => 'Hitz egin orain!';

  @override
  String get scoreLabel => 'Puntuazioa';

  @override
  String get viewOnlineGuide => 'Ikusi online gida';

  @override
  String get getMaterials => 'Materialak lortu';

  @override
  String get swapLanguages => 'Hizkuntzak trukatu';

  @override
  String get next => 'Hurrengoa';

  @override
  String get wordModeLabel => 'Hitzen modua';

  @override
  String get accuracy => 'Zehaztasuna';

  @override
  String get basicDefault => 'Oinarrizkoa';

  @override
  String get basic => 'Oinarrizkoa';

  @override
  String get tutorialM3WordsTitle => 'Hitzen praktika';

  @override
  String get tutorialM3WordsDesc =>
      'Markatuta badago, gordetako hitzak bakarrik praktikatuko dira.';

  @override
  String get enterTextHint => 'Idatzi itzuli nahi duzun testua';

  @override
  String get micButtonTooltip => 'Ahots ezagutzea hasi';

  @override
  String get menuHelp => 'Laguntza';

  @override
  String get menuWebDownload => 'Webgunea';

  @override
  String get menuDeviceImport => 'Materiala gailutik inportatu';

  @override
  String get menuSettings => 'Hizkuntza-ezarpenak';

  @override
  String get basicWords => 'Oinarrizko hitz biltegia';

  @override
  String get basicSentences => 'Oinarrizko esaldi biltegia';

  @override
  String get selectMaterialSet => 'Ikasketa-datu-multzoa hautatu';

  @override
  String get sectionWords => 'Hitzak';

  @override
  String get sectionSentences => 'Esaldiak';

  @override
  String get languageSettingsTitle => 'Hizkuntza-ezarpenak';

  @override
  String get sourceLanguageLabel => 'Nire hizkuntza (Iturria)';

  @override
  String get targetLanguageLabel => 'Ikasketa-hizkuntza (Helburua)';

  @override
  String get mode3Start => 'Hasi';

  @override
  String get mode3Stop => 'Gelditu';

  @override
  String get mode3Next => 'Hurrengoa';

  @override
  String get mode3TryAgain => 'Saiatu berriro';

  @override
  String get tutorialM3ResetTitle => 'Historia berrezarri';

  @override
  String get tutorialSwapDesc =>
      'Trukatu nire hizkuntza eta ikasketa-hizkuntza.';

  @override
  String get recognizedText => 'Ezagututako ahoskera:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Berrezarri aurrerapena eta zehaztasun puntuazioa hutsetik hasteko.';

  @override
  String get menuSelectMaterialSet => 'Ikasketa-datu-multzoa hautatu';

  @override
  String get sectionWord => 'Hitz atala';

  @override
  String get sectionSentence => 'Esaldi atala';

  @override
  String get tabWord => 'Hitza';

  @override
  String get tabSentence => 'Esaldi';

  @override
  String get errorProfanity => 'Ezin da itzuli profanotasuna duelako.';

  @override
  String get errorHateSpeech => 'Ezin da itzuli gorroto-diskurtsoa duelako.';

  @override
  String get errorSexualContent => 'Ezin da itzuli eduki sexuala duelako.';

  @override
  String get errorOtherSafety => 'AI segurtasun politikak itzulpena ukatu du.';

  @override
  String get clearAll => 'Guztia garbitu';

  @override
  String get disambiguationTitle => 'Esanahia hautatu';

  @override
  String get disambiguationPrompt => 'Zein esanahirekin itzuli nahi duzu?';

  @override
  String get skip => 'Saltatu';

  @override
  String get inputModeTitle => 'Sarrera';

  @override
  String get reviewModeTitle => 'Berrikusi';

  @override
  String get practiceModeTitle => 'Praktika';

  @override
  String get chatHistoryTitle => 'Elkarrizketaren historia';

  @override
  String get chatNew => 'Elkarrizketa berria';

  @override
  String get chatNewChat => 'Elkarrizketa berria';

  @override
  String get chatChoosePersona => 'Pertsonaia hautatu';

  @override
  String get chatTypeHint => 'Idatzi mezu bat...';

  @override
  String chatFailed(Object error) {
    return 'Txatak huts egin du: $error';
  }

  @override
  String get chatNoConversations => 'Oraindik ez dago elkarrizketarik';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt => 'Hasi elkarrizketa berri bat praktikatzeko!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Elkarrizketatik ateratakoa ($speaker)';
  }

  @override
  String get personaTeacher => 'Ingeleseko irakaslea';

  @override
  String get personaGuide => 'Bidaia gida';

  @override
  String get personaFriend => 'Bertako laguna';

  @override
  String get chatUntitled => 'Izenik gabeko elkarrizketa';

  @override
  String get chatAiChat => 'Txat';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Uneko hautatutako datu-multzoa: $name';
  }

  @override
  String get basicWordRepository => 'Oinarrizko hitz biltegia';

  @override
  String get basicSentenceRepository => 'Oinarrizko esaldi biltegia';

  @override
  String get chatEndTitle => 'Elkarrizketa amaitu eta gorde';

  @override
  String get chatEndMessage => 'Elkarrizketa amaitu nahi duzu?';

  @override
  String get chatSaveAndExit => 'Gorde eta irten';

  @override
  String get errorSelectCategory => 'Hautatu lehenik hitz bat edo esaldi bat!';

  @override
  String get tutorialM1ToggleTitle => 'Hitza/Esaldi modua';

  @override
  String get tutorialM1ToggleDesc => 'Aldatu hitz eta esaldi moduak hemen.';

  @override
  String get metadataDialogTitle => 'Sailkapen zehatza';

  @override
  String get tagFormal => 'Tratamendu formala';

  @override
  String get selectPOS => 'Hautatu adiera-kategoria';

  @override
  String get selectSentenceType => 'Hautatu esaldi mota';

  @override
  String get metadataRootWord => 'Jatorrizko forma (Root Word)';

  @override
  String get posNoun => 'Izena';

  @override
  String get posVerb => 'Aditza';

  @override
  String get posAdjective => 'Adjektiboa';

  @override
  String get posAdverb => 'Adberbioa';

  @override
  String get posPronoun => 'Izenordaina';

  @override
  String get posPreposition => 'Preposizioa/Postposizioa';

  @override
  String get posConjunction => 'Lokailua';

  @override
  String get posInterjection => 'Harridura-hitza';

  @override
  String get typeStatement => 'Baieztapena';

  @override
  String get typeQuestion => 'Galdera';

  @override
  String get typeExclamation => 'Harridura';

  @override
  String get typeImperative => 'Agindua';

  @override
  String get labelNote => 'Oharra';

  @override
  String get labelShowMemorized => 'Amaituta';

  @override
  String get titleTagSelection => 'Izenburu-etiketa (Bilduma)';

  @override
  String get generalTags => 'Etiketa orokorrak';

  @override
  String get tagSelection => 'Etiketa hautatu';

  @override
  String get metadataFormType => 'Forma gramatikala';

  @override
  String get formInfinitive => 'Infinitive/Orainaldia';

  @override
  String get formPast => 'Iraganaldia';

  @override
  String get formPastParticiple => 'Iraganeko partizipioa';

  @override
  String get formPresentParticiple => 'Oraingo partizipioa (ing)';

  @override
  String get formPresent => 'Orainaldia';

  @override
  String get formThirdPersonSingular => 'Hirugarren pertsona singularra';

  @override
  String get formPlural => 'Plurala';

  @override
  String get formSingular => 'Singularra';

  @override
  String get caseSubject => 'Subjektua';

  @override
  String get caseObject => 'Objektua';

  @override
  String get casePossessive => 'Jabetza';

  @override
  String get casePossessivePronoun => 'Jabetza-izenordaina';

  @override
  String get caseReflexive => 'Erreflexiboa';

  @override
  String get formPositive => 'Gradu positiboa';

  @override
  String get formComparative => 'Gradu konparatiboa';

  @override
  String get formSuperlative => 'Gradu superlatiboa';

  @override
  String get searchConditions => 'Bilaketa-baldintzak';

  @override
  String recentNItems(int count) {
    return 'Ikusi berriki sortutako $count elementu';
  }

  @override
  String get startsWith => 'Hasierako letra';

  @override
  String get reset => 'Berrezarri';

  @override
  String get participantRename => 'Parte-hartzailearen izena aldatu';

  @override
  String get labelName => 'Izena';

  @override
  String get gender => 'Generoa';

  @override
  String get language => 'Hizkuntza';

  @override
  String get male => 'Gizonezkoa';

  @override
  String get female => 'Emakumezkoa';

  @override
  String get neutral => 'neutroa';

  @override
  String get chatAllConversations => 'Elkarrizketa guztiak';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Elkarrizketa hau ezabatu nahi duzu?\nEzabatu ondoren ezin da berreskuratu.';

  @override
  String get notSelected => '- Ez dago hautatuta -';

  @override
  String get myWordbook => 'Nire hiztegia';

  @override
  String get mySentenceCollection => 'Nire esaldi bilduma';

  @override
  String get newSubjectName => 'Izenburu berria';

  @override
  String get enterNewSubjectName => 'Idatzi izenburu berria';

  @override
  String get addNewSubject => 'Gehitu izenburu berria';

  @override
  String get selectExistingSubject => 'Aukeratu lehendik dagoen izenburua';

  @override
  String get addTagHint => 'Gehitu etiketa...';

  @override
  String get save => 'Gorde';

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
      'Mesedez, egiaztatu e-posta autentifikazioa osatzeko.';

  @override
  String get emailAlreadyInUse =>
      'Helbide elektroniko hau erregistratuta dago. Hasi saioa edo berreskuratu pasahitza.';
}

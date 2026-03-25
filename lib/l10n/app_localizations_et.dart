// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get basicWords => 'Põhiliste sõnade hoidla';

  @override
  String get inputLanguage => 'Sisestuskeel';

  @override
  String get translationLanguage => 'Tõlkekeel';

  @override
  String get simplifiedGuidance =>
      'Muutke igapäevased vestlused hetkega võõrkeelde! Talkie salvestab teie keelekasutuse.';

  @override
  String get noDataForLanguage =>
      'Valitud keele õppematerjale pole kohalikus andmebaasis saadaval. Laadige materjalid alla või valige mõni muu keel.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Tühista';

  @override
  String get accuracy => 'Täpsus';

  @override
  String get ttsMissing =>
      'Selle keele kõnesünteesimootor pole sinu seadmesse installitud.';

  @override
  String get ttsInstallGuide =>
      'Installi vastavad keeleandmed Androidi seadetes > Google\'i kõnesünteesis.';

  @override
  String get adLoading =>
      'Reklaami laadimine, proovige mõne aja pärast uuesti.';

  @override
  String get addNewSubject => 'Lisa uus nimi';

  @override
  String get addParticipant => 'Lisa osaleja';

  @override
  String get addTagHint => 'Lisa silt...';

  @override
  String get alreadyHaveAccount => 'Sul on juba konto?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Automaatne taasesitus';

  @override
  String get basic => 'Põhiline';

  @override
  String get basicDefault => 'Põhiline';

  @override
  String get basicMaterialRepository => 'Põhiliste lausete/sõnade hoidla';

  @override
  String get basicSentenceRepository => 'Põhiliste lausete hoidla';

  @override
  String get basicSentences => 'Põhiliste lausete hoidla';

  @override
  String get basicWordRepository => 'Põhiliste sõnade hoidla';

  @override
  String get caseObject => 'Sihitiskääne';

  @override
  String get casePossessive => 'Omastav kääne';

  @override
  String get casePossessivePronoun => 'Omastav asesõna';

  @override
  String get caseReflexive => 'Enesekohane asesõna';

  @override
  String get caseSubject => 'Nimetav kääne';

  @override
  String get chatAiChat => 'Vestlus';

  @override
  String get chatAllConversations => 'Kõik vestlused';

  @override
  String get chatChoosePersona => 'Vali personaž';

  @override
  String get chatEndMessage => 'Kas soovid vestluse lõpetada?';

  @override
  String get chatEndTitle => 'Lõpeta ja salvesta vestlus';

  @override
  String chatFailed(Object error) {
    return 'Vestlus ebaõnnestus: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Vestluse väljavõte ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Vestluste ajalugu';

  @override
  String get chatNew => 'Uus vestlus';

  @override
  String get chatNewChat => 'Uus vestlus';

  @override
  String get chatNoConversations => 'Vestlusi pole veel';

  @override
  String get chatSearchHint => 'Otsi vestluse pealkirjaga...';

  @override
  String get chatSaveAndExit => 'Salvesta ja välju';

  @override
  String get chatStartNewPrompt =>
      'Proovige harjutamiseks uut vestlust alustada!';

  @override
  String get chatTypeHint => 'Sisesta sõnum...';

  @override
  String get chatUntitled => 'Pealkirjata vestlus';

  @override
  String get checking => 'Kontrollin...';

  @override
  String get clearAll => 'Kustuta kõik';

  @override
  String get confirm => 'Kinnita';

  @override
  String get confirmDelete =>
      'Kas sa oled kindel, et soovid selle õppimiskirje kustutada?';

  @override
  String get confirmDeleteConversation =>
      'Kas sa oled kindel, et soovid selle vestluse kustutada?\nKustutatud vestlust ei saa taastada.';

  @override
  String get confirmDeleteParticipant =>
      'Kas sa oled kindel, et soovid selle osaleja kustutada?';

  @override
  String get contextTagHint => 'Kirjuta olukord hiljem lihtsamaks eristamiseks';

  @override
  String get contextTagLabel =>
      'Kontekst/olukord (valikuline) - näide: hommikune tervitus, viisakas keel';

  @override
  String get copiedToClipboard => 'Kopeeritud lõikelauale!';

  @override
  String get copy => 'Kopeeri';

  @override
  String get correctAnswer => 'Õige vastus';

  @override
  String get createNew => 'Jätka uue lausega';

  @override
  String get currentLocation => 'Praegune asukoht';

  @override
  String get currentMaterialLabel => 'Praegu valitud materjalikogum:';

  @override
  String get delete => 'Kustuta';

  @override
  String deleteFailed(String error) {
    return 'Kustutamine ebaõnnestus: $error';
  }

  @override
  String get deleteRecord => 'Kustuta kirje';

  @override
  String get dialogueQuestDesc =>
      'Harjutage vestlust situatsioonide kaudu. Valige sobiv vastus ja öelge see.';

  @override
  String get dialogueQuestTitle => 'Dialoogiülesanne';

  @override
  String get disambiguationPrompt => 'Millise tähendusega sa soovid tõlkida?';

  @override
  String get disambiguationTitle => 'Vali tähendus';

  @override
  String get dontHaveAccount => 'Sul pole kontot?';

  @override
  String get editParticipant => 'Muuda osalejat';

  @override
  String get email => 'E-post';

  @override
  String get emailAlreadyInUse =>
      'See e-posti aadress on juba kasutusel. Palun logi sisse või taasta oma parool.';

  @override
  String get enterNewSubjectName => 'Sisesta uus nimi';

  @override
  String get enterSentenceHint => 'Sisesta lause...';

  @override
  String get enterTextHint => 'Sisesta tõlgitav tekst';

  @override
  String get enterTextToTranslate => 'Sisesta tõlgitav tekst';

  @override
  String get enterWordHint => 'Sisesta sõna...';

  @override
  String get error => 'Viga';

  @override
  String get errorHateSpeech => 'Tõlkimine pole vihakõne tõttu võimalik.';

  @override
  String get errorOtherSafety =>
      'Tõlkimine on AI ohutuspoliitika tõttu keelatud.';

  @override
  String get errorProfanity => 'Tõlkimine pole ropu keele tõttu võimalik.';

  @override
  String get errorSelectCategory => 'Valige kõigepealt sõna või lause!';

  @override
  String get errorSexualContent =>
      'Tõlkimine pole seksuaalse sisu tõttu võimalik.';

  @override
  String get errors => 'Veateated:';

  @override
  String get female => 'Naine';

  @override
  String get file => 'Fail:';

  @override
  String get filterAll => 'Kõik';

  @override
  String get flip => 'Näita';

  @override
  String get formComparative => 'Keskvõrre';

  @override
  String get formInfinitive => 'Infinitiiv/olevik';

  @override
  String get formPast => 'Minevik';

  @override
  String get formPastParticiple => 'Mineviku kesksõna';

  @override
  String get formPlural => 'Mitmus';

  @override
  String get formPositive => 'Algvõrre';

  @override
  String get formPresent => 'Olevik';

  @override
  String get formPresentParticiple => 'Oleviku kesksõna (-mas)';

  @override
  String get formSingular => 'Ainsus';

  @override
  String get formSuperlative => 'Ülivõrre';

  @override
  String get formThirdPersonSingular => 'Kolmas isik ainsus';

  @override
  String get gameModeDesc => 'Valige mängurežiim, mida soovite harjutada';

  @override
  String get gameModeTitle => 'Mängurežiim';

  @override
  String get gameOver => 'Mäng läbi';

  @override
  String get gender => 'Sugu';

  @override
  String get labelFilterMaterial => 'Materjalid';

  @override
  String get labelFilterTag => 'Sildid';

  @override
  String get generalTags => 'Üldised sildid';

  @override
  String get getMaterials => 'Hangi materjale';

  @override
  String get good => 'Hea';

  @override
  String get googleContinue => 'Jätka Google\'iga';

  @override
  String get helpDialogueImportDesc =>
      'Impordi kogu dialoogikomplekt JSON-failina.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON-struktuur: kasuta massiivi `dialogues` massiivi `entries` asemel\n• Automaatne taastamine: dialoogi pealkiri, personaž ja sõnumite järjekord taastatakse.\n• Asukoht: imporditud dialoog kuvatakse AI vestlusrežiimi vahekaardil \"Ajalugu\".';

  @override
  String get helpJsonDesc =>
      'Õppematerjali JSON-failina importimiseks režiimis 3 järgi seda vormingut:';

  @override
  String get helpJsonTypeDialogue => 'Dialoog';

  @override
  String get helpJsonTypeSentence => 'Laused';

  @override
  String get helpJsonTypeWord => 'Sõna';

  @override
  String get helpMode1Desc =>
      'Alustage keeleõpet kõige intuitiivsemal viisil – esmaklassilise 3D-mikrofoni ja suurte klaviatuuriikoonidega.';

  @override
  String get helpMode1Details =>
      '• Keele seaded: avakuva ülaosas oleva keelenupu abil saate vaadata oma keelt ja õpitavat keelt ning muuta õppekeelt.\n• Lihtne sisestus: sisestage kohe keskel oleva suure mikrofoni ja tekstikasti kaudu.\n• Seadete kinnitamine: kui olete sisestamise lõpetanud, vajutage paremal olevat sinist linnukest. Kuvatakse üksikasjalike seadete aken.\n• Üksikasjalikud seaded: kuvatavas dialoogis saate määrata salvestatava andmekogu, kommentaarid (märkmed) ja sildid.\n• Tõlgi kohe: kui olete seaded lõpetanud, vajutage rohelist tõlkenuppu, et tehisintellekt saaks kohe tõlkida.\n• Automaatne otsing: sisestamise ajal tuvastab ja kuvab reaalajas sarnaseid olemasolevaid tõlkeid.\n• Kuulamine ja salvestamine: kuulake hääldust tõlketulemuse all olevate kõlariikoonide abil ja lisage see õppimisloendisse, klõpsates nupul \"Salvesta andmed\".';

  @override
  String get helpMode2Desc =>
      'Vaata salvestatud lauseid üle ja kontrolli meeldejätmist automaatse peitmise funktsiooniga.';

  @override
  String get helpMode2Details =>
      '• Õppematerjali valik: kasutage paremas ülanurgas menüüd (⋮) või \'Vali õppematerjal\' või \'Online materjalide ruum\'\n• Kaardi pööramine: kontrollige tõlget \'Näita/Peida\' abil\n• Kuulamine: häälduse taasesitus kõlariikooniga\n• Õppimine lõpetatud: õppimine on lõpetatud märkeruuduga (V)\n• Kustutamine: kirje kustutamiseks vajutage pikalt (pikk klõps) kaardil\n• Otsing ja filter: otsinguriba (reaalajas nutikas otsing) ja siltide, algustähe filtreid';

  @override
  String get helpMode3Desc =>
      'Harjuta hääldust, kuulates lauseid ja neid korrates (varjutades).';

  @override
  String get helpMode3Details =>
      '• Materjali valik: vali õpitav materjalikogum\n• Intervalli seadistus: reguleeri lausete vahelist ooteaega nuppudega [-] [+], (3 sekundit kuni 60 sekundit)\n• Alusta/peata: varjutamise seansi juhtimine\n• Räägi: kuula häält ja korda seda\n• Tagasiside: täpsusskoor (0–100) ja värviindikaator\n• Otsingutingimused: filtreeri harjutatavaid üksusi siltide, hiljutiste üksuste või algustähe järgi';

  @override
  String get helpModeChatDesc =>
      'Harjuta vestlust tehisintellekti persooniga suheldes.';

  @override
  String get helpModeChatDetails =>
      '• AI vestlus: harjuta vestlust tegelikus elus personaga alumise vahekaardiriba menüüs \'Vestlus\'\n• Persona seaded: määra vabalt partneri sugu, nimi ja keelekood\n• GPS olukorramäng: soovitab kohale sobivaid vestlusteemasid, tunnetades minu praegust asukohta\n• Kaks keelt: AI vastused kuvatakse koos tõlkega, et maksimeerida õppimist\n• Kirjete haldamine: filtreeri varasemaid vestlusi ja salvesta teatud sõnumeid õppematerjalidena vestluse ajal';

  @override
  String get helpTabJson => 'JSON-vorming';

  @override
  String get helpTabModes => 'Režiimide selgitus';

  @override
  String get helpTabTour => 'Tutvustus';

  @override
  String get helpTitle => 'Abi & juhend';

  @override
  String get helpTourDesc =>
      '**Esiletõstetud ring** juhendab peamisi funktsioone.\n(Näide: **Esiletõstetud ringi** osutatud kaardi kustutamiseks hoia seda all.)';

  @override
  String get hide => 'Peida';

  @override
  String importAdded(int count) {
    return 'Lisatud: $count tk';
  }

  @override
  String get importComplete => 'Importimine lõpetatud';

  @override
  String get importDuplicateTitleError =>
      'Sama pealkirjaga materjal on juba olemas. Muuda pealkirja ja proovi uuesti.';

  @override
  String importErrorMessage(String error) {
    return 'Faili importimine ebaõnnestus:\\n$error';
  }

  @override
  String get importFailed => 'Importimine ebaõnnestus';

  @override
  String importFile(String fileName) {
    return 'Fail: $fileName';
  }

  @override
  String get importJsonFile => 'Impordi JSON-fail';

  @override
  String get importJsonFilePrompt => 'Palun impordi JSON-fail';

  @override
  String importSkipped(int count) {
    return 'Jäeti vahele: $count tk';
  }

  @override
  String importTotal(int count) {
    return 'Kokku: $count tk';
  }

  @override
  String get importing => 'Importimine...';

  @override
  String get inputModeTitle => 'Sisestus';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervall: $seconds s';
  }

  @override
  String get invalidEmail => 'Palun sisesta kehtiv e-posti aadress.';

  @override
  String get kakaoContinue => 'Jätka Kakao abil';

  @override
  String get labelLangCode => 'Keelekood (nt en-US, ko-KR)';

  @override
  String get labelName => 'Nimi';

  @override
  String get labelNote => 'Märkus';

  @override
  String get labelPOS => 'Kõneosa';

  @override
  String get labelRole => 'Roll';

  @override
  String get labelSentence => 'Lause';

  @override
  String get labelSentenceCollection => 'Lausete kogu';

  @override
  String get labelSentenceType => 'Lausetüüp';

  @override
  String get labelShowMemorized => 'Lõpetatud';

  @override
  String get labelType => 'Tüüp:';

  @override
  String get labelWord => 'Sõna';

  @override
  String get labelWordbook => 'Sõnaraamat';

  @override
  String get language => 'Keel';

  @override
  String get languageSettings => 'Keele seaded';

  @override
  String get languageSettingsTitle => 'Keele seaded';

  @override
  String get libTitleFirstMeeting => 'Esimene kohtumine';

  @override
  String get libTitleGreetings1 => 'Tervitused 1';

  @override
  String get libTitleNouns1 => 'Nimisõnad 1';

  @override
  String get libTitleVerbs1 => 'Tegusõnad 1';

  @override
  String get listen => 'Kuula';

  @override
  String get listening => 'Kuulan...';

  @override
  String get loadingParticipants => 'Osalejate laadimine...';

  @override
  String get location => 'Asukoht';

  @override
  String get login => 'Logi sisse';

  @override
  String get logout => 'Logi välja';

  @override
  String get logoutConfirmMessage =>
      'Kas sa oled kindel, et soovid sellest seadmest välja logida?';

  @override
  String get logoutConfirmTitle => 'Logi välja';

  @override
  String get male => 'Mees';

  @override
  String get manageParticipants => 'Halda osalejaid';

  @override
  String get manual => 'Käsitsi sisestus';

  @override
  String get markAsStudied => 'Märgi õpituks';

  @override
  String get materialInfo => 'Materjali info';

  @override
  String get me => 'Mina';

  @override
  String get menuDeviceImport => 'Impordi materjale seadmest';

  @override
  String get menuHelp => 'Abi';

  @override
  String get menuLanguageSettings => 'Keele seaded';

  @override
  String get menuOnlineLibrary => 'Veebiraamatukogu';

  @override
  String get menuSelectMaterialSet => 'Vali õppematerjalide kogum';

  @override
  String get menuSettings => 'Keele seaded';

  @override
  String get menuTutorial => 'Kasutamise õpetus';

  @override
  String get menuWebDownload => 'Koduleht';

  @override
  String get metadataDialogTitle => 'Täpsem klassifikatsioon';

  @override
  String get metadataFormType => 'Grammatiline vorm';

  @override
  String get metadataRootWord => 'Algvorm (juursõna)';

  @override
  String get micButtonTooltip => 'Alusta hääletuvastust';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Praegu valitud materjalikogum: $name';
  }

  @override
  String get mode2Title => 'Kordamine';

  @override
  String get mode3Next => 'Järgmine';

  @override
  String get mode3Start => 'Alusta';

  @override
  String get mode3Stop => 'Lõpeta';

  @override
  String get mode3TryAgain => 'Proovi uuesti';

  @override
  String get mySentenceCollection => 'Minu lausete kogu';

  @override
  String get myWordbook => 'Minu sõnastik';

  @override
  String get neutral => 'Neutraalne';

  @override
  String get newSubjectName => 'Uue teemakogumi nimi';

  @override
  String get next => 'Järgmine';

  @override
  String get noDialogueHistory => 'Vestluste ajalugu puudub.';

  @override
  String get noInternetWarningMic =>
      'Internetiühendus puudub. Võrguühenduseta režiimis ei pruugi hääletuvastus töötada.';

  @override
  String get noInternetWarningTranslate =>
      'Internetiühendus puudub. Võrguühenduseta režiimis ei saa tõlkefunktsiooni kasutada. Palun kasuta ülevaaterežiimi.';

  @override
  String get noMaterialsInCategory => 'Selles kategoorias pole materjale.';

  @override
  String get noParticipantsFound => 'Registreeritud osalejaid pole.';

  @override
  String get noRecords => 'Valitud keele õppimisajalugu pole';

  @override
  String get noStudyMaterial => 'Õppematerjale pole.';

  @override
  String get noTextToPlay => 'Taasesitamiseks pole teksti';

  @override
  String get noTranslationToSave => 'Salvestamiseks pole tõlget';

  @override
  String get noVoiceDetected => 'Häält ei tuvastatud';

  @override
  String get notSelected => '- Pole valitud -';

  @override
  String get onlineLibraryCheckInternet =>
      'Palun kontrolli oma internetiühendust või proovi hiljem uuesti.';

  @override
  String get onlineLibraryLoadFailed => 'Materjalide laadimine ebaõnnestus.';

  @override
  String get onlineLibraryNoMaterials => 'Materjale pole.';

  @override
  String get participantDeleted => 'Osaleja on kustutatud.';

  @override
  String get participantRename => 'Muuda osaleja nime';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Partnerrežiim';

  @override
  String get password => 'Salasõna';

  @override
  String get passwordTooShort =>
      'Salasõna peab olema vähemalt 6 tähemärki pikk.';

  @override
  String get perfect => 'Suurepärane!';

  @override
  String get personaFriend => 'Kohalik sõber';

  @override
  String get personaGuide => 'Reisijuht';

  @override
  String get personaTeacher => 'Inglise keele õpetaja';

  @override
  String get playAgain => 'Mängi uuesti';

  @override
  String playbackFailed(String error) {
    return 'Taasesitus ebaõnnestus: $error';
  }

  @override
  String get playing => 'Mängin...';

  @override
  String get posAdjective => 'Omadussõna';

  @override
  String get posAdverb => 'Määrsõna';

  @override
  String get posConjunction => 'Sidesõna';

  @override
  String get posInterjection => 'Hüüdsõna';

  @override
  String get posNoun => 'Nimisõna';

  @override
  String get posPreposition => 'Eessõna/kaassõna';

  @override
  String get posPronoun => 'Asesõna';

  @override
  String get posVerb => 'Tegusõna';

  @override
  String get practiceModeTitle => 'Harjuta';

  @override
  String get practiceWordsOnly => 'Harjuta ainult sõnu';

  @override
  String progress(int current, int total) {
    return 'Edenemine: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Vaata $count hiljuti loodud üksust';
  }

  @override
  String recognitionFailed(String error) {
    return 'Häältuvastus ebaõnnestus: $error';
  }

  @override
  String get recognized => 'Tuvastamine lõpetatud';

  @override
  String get recognizedText => 'Tuvastatud hääldus:';

  @override
  String get recordDeleted => 'Kirje on kustutatud';

  @override
  String get refresh => 'Värskenda';

  @override
  String get reset => 'Lähtesta';

  @override
  String get resetPracticeHistory => 'Lähtesta harjutamisajalugu';

  @override
  String get retry => 'Proovi uuesti?';

  @override
  String get reviewAll => 'Kogu kordamine';

  @override
  String reviewCount(int count) {
    return 'Korda $count korda';
  }

  @override
  String get reviewModeTitle => 'Kordamine';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Kolmas osapool';

  @override
  String get roleUser => 'Kasutaja';

  @override
  String get save => 'Salvesta';

  @override
  String get saveData => 'Salvesta andmed';

  @override
  String saveFailed(String error) {
    return 'Salvestamine ebaõnnestus: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Proovi tõlkeid otsingurežiimis salvestada';

  @override
  String get saved => 'Salvestamine lõpetatud';

  @override
  String get saving => 'Salvestamine...';

  @override
  String score(String score) {
    return 'Täpsus: $score%';
  }

  @override
  String get scoreLabel => 'Skoor';

  @override
  String get search => 'Otsing';

  @override
  String get searchConditions => 'Otsingutingimused';

  @override
  String get searchSentenceHint => 'Otsi lauset...';

  @override
  String get searchWordHint => 'Otsi sõna...';

  @override
  String get sectionSentence => 'Lausete jaotis';

  @override
  String get sectionSentences => 'Laused';

  @override
  String get sectionWord => 'Sõnade jaotis';

  @override
  String get sectionWords => 'Sõnad';

  @override
  String get selectExistingSubject => 'Vali olemasolev nimi';

  @override
  String get selectMaterialPrompt => 'Vali õppematerjal';

  @override
  String get selectMaterialSet => 'Vali õppematerjalide kogum';

  @override
  String get selectPOS => 'Vali kõneosa';

  @override
  String get selectParticipants => 'Vali osalejad';

  @override
  String get selectSentenceType => 'Vali lause tüüp';

  @override
  String get selectStudyMaterial => 'Vali õppematerjal';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Lause';

  @override
  String get signUp => 'Registreeru';

  @override
  String get similarTextFound => 'Leiti sarnane tekst';

  @override
  String get skip => 'Jäta vahele';

  @override
  String get source => 'Allikas:';

  @override
  String get sourceLanguage => 'Lähtekeel';

  @override
  String get sourceLanguageLabel => 'Minu keel (Lähtekeel)';

  @override
  String get speakNow => 'Räägi nüüd!';

  @override
  String get speaker => 'Kõneleja';

  @override
  String get speakerSelect => 'Vali kõneleja';

  @override
  String get speakingPractice => 'Rääkimisharjutus';

  @override
  String get startChat => 'Alusta vestlust';

  @override
  String get startPractice => 'Alusta harjutamist';

  @override
  String get startTutorial => 'Alusta õpetust';

  @override
  String get startWarning => 'Hoiatus';

  @override
  String get startsWith => 'Algustäht';

  @override
  String get statusCheckEmail =>
      'Palun kinnita oma e-posti aadress, et autentimine lõpule viia.';

  @override
  String statusDownloading(Object name) {
    return 'Allalaadimine: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Importimine ebaõnnestus: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name importimine lõpetatud';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Sisselogimine katkestati.';

  @override
  String statusLoginFailed(Object error) {
    return 'Sisselogimine ebaõnnestus: $error';
  }

  @override
  String get statusLoginSuccess => 'Sisselogimine õnnestus.';

  @override
  String get statusLogoutSuccess => 'Väljalogimine õnnestus.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Registreerimine ebaõnnestus: $error';
  }

  @override
  String get statusSigningUp => 'Registreerimine...';

  @override
  String get stopPractice => 'Lõpeta harjutamine';

  @override
  String get studyComplete => 'Õppimine lõpetatud';

  @override
  String studyRecords(int count) {
    return 'Õppimisajalugu ($count)';
  }

  @override
  String get styleFormal => 'Formaalne';

  @override
  String get styleInformal => 'Mitteformaalne';

  @override
  String get stylePolite => 'Viisakas';

  @override
  String get styleSlang => 'Släng';

  @override
  String get subject => 'Teema:';

  @override
  String get swapLanguages => 'Vaheta keeled';

  @override
  String get switchToAi => 'Lülitu AI-režiimile';

  @override
  String get switchToPartner => 'Lülitu partnerrežiimile';

  @override
  String get syncingData => 'Andmete sünkroniseerimine...';

  @override
  String get tabConversation => 'Vestlus';

  @override
  String tabReview(int count) {
    return 'Kordamine ($count)';
  }

  @override
  String get tabSentence => 'Lause';

  @override
  String get tabSpeaking => 'Rääkimine';

  @override
  String tabStudyMaterial(int count) {
    return 'Õppematerjalid ($count)';
  }

  @override
  String get tabWord => 'Sõna';

  @override
  String get tagFormal => 'Vormilik';

  @override
  String get tagSelection => 'Sildi valik';

  @override
  String get targetLanguage => 'Sihtkeel';

  @override
  String get targetLanguageFilter => 'Sihtkeele filter:';

  @override
  String get targetLanguageLabel => 'Õppimiskeel (Sihtkeel)';

  @override
  String get thinkingTimeDesc => 'Aeg, et mõelda enne õige vastuse avaldamist.';

  @override
  String get thinkingTimeInterval => 'Taasesituse intervall';

  @override
  String get timeUp => 'Aeg on läbi!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Pealkirjasilt (arhiiv)';

  @override
  String get tooltipDecrease => 'Vähenda';

  @override
  String get tooltipIncrease => 'Suurenda';

  @override
  String get tooltipSearch => 'Otsing';

  @override
  String get tooltipSpeaking => 'Rääkimine';

  @override
  String get tooltipStudyReview => 'Õppimine+kordamine';

  @override
  String totalRecords(int count) {
    return 'Kokku $count kirjet (vaata kõiki)';
  }

  @override
  String get translate => 'Tõlgi';

  @override
  String get translating => 'Tõlgin...';

  @override
  String get translation => 'Tõlge';

  @override
  String get translationComplete =>
      'Tõlkimine lõpetatud (vajalik salvestamine)';

  @override
  String translationFailed(String error) {
    return 'Tõlkimine ebaõnnestus: $error';
  }

  @override
  String get translationLimitExceeded => 'Tõlkelimiit on ületatud';

  @override
  String get translationLimitMessage =>
      'Oled kasutanud kõik oma igapäevased tasuta tõlked (5 korda).\\n\\nKas soovid vaadata reklaami ja saada kohe 5 korda juurde?';

  @override
  String get translationLoaded => 'Salvestatud tõlge on laaditud';

  @override
  String get translationRefilled => 'Tõlgete arv on suurendatud 5 võrra!';

  @override
  String get translationResultHint => 'Tõlke tulemus - muudetav';

  @override
  String get tryAgain => 'Proovi uuesti';

  @override
  String get tutorialAiChatDesc => 'Harjuta AI personažiga reaalset vestlust.';

  @override
  String get tutorialAiChatTitle => 'AI vestlus';

  @override
  String get tutorialContextDesc =>
      'Isegi kui lause on sama, saad selle eraldi salvestada, märkides olukorra (nt hommik, õhtu).';

  @override
  String get tutorialContextTitle => 'Olukorra/konteksti silt';

  @override
  String get tutorialLangSettingsDesc =>
      'Seadista tõlgitav lähtekeel ja sihtkeel.';

  @override
  String get tutorialLangSettingsTitle => 'Keele seaded';

  @override
  String get tutorialM1ToggleDesc =>
      'Lülitage siin sõna- ja lauserežiimi vahel.';

  @override
  String get tutorialM1ToggleTitle => 'Sõna/lause režiim';

  @override
  String get tutorialM2DropdownDesc =>
      'Õpitava materjali saad valida ülemise menüü kaudu.';

  @override
  String get tutorialM2ImportDesc => 'Impordi JSON-fail seadme kaustast.';

  @override
  String get tutorialM2ListDesc =>
      'Selle kustutamiseks hoia seda kaarti all (pikk klõps). Kontrolli salvestatud lauset ja keera see ümber.';

  @override
  String get tutorialM2ListTitle => 'Õppimisnimekiri';

  @override
  String get tutorialM2SearchDesc =>
      'Saad salvestatud sõnu ja lauseid otsida ja kiiresti leida.';

  @override
  String get tutorialM2SelectDesc =>
      'Õpitava materjali valimiseks vajuta ülemise rakenduseriba materjalikogumi ikooni (📚).';

  @override
  String get tutorialM2SelectTitle => 'Materjali valik';

  @override
  String get tutorialM3IntervalDesc => 'Reguleeri lausete vahelist ooteaega.';

  @override
  String get tutorialM3IntervalTitle => 'Intervalli seadistus';

  @override
  String get tutorialM3ResetDesc =>
      'Alustamiseks lähtestage oma edenemine ja täpsusskoor.';

  @override
  String get tutorialM3ResetTitle => 'Ajaloo lähtestamine';

  @override
  String get tutorialM3SelectDesc =>
      'Harjutatava materjali valimiseks vajuta ülemise rakenduseriba materjalikogumi ikooni (📚).';

  @override
  String get tutorialM3SelectTitle => 'Materjali valik';

  @override
  String get tutorialM3StartDesc =>
      'Kuula emakeelena kõneleja häält ja korda seda, vajutades taasesitusnuppu.';

  @override
  String get tutorialM3StartTitle => 'Alusta harjutamist';

  @override
  String get tutorialM3WordsDesc =>
      'Vali see, et harjutada ainult salvestatud sõnu.';

  @override
  String get tutorialM3WordsTitle => 'Sõnade harjutamine';

  @override
  String get tutorialMicDesc =>
      'Hääle sisestamiseks võid vajutada mikrofoni nuppu.';

  @override
  String get tutorialMicTitle => 'Häälsisend';

  @override
  String get tutorialSaveDesc => 'Salvesta tõlgitud tulemus õppimisajalukku.';

  @override
  String get tutorialSaveTitle => 'Salvesta';

  @override
  String get tutorialSwapDesc => 'Vaheta oma keel ja õppimiskeel.';

  @override
  String get tutorialTabDesc => 'Siin saad valida soovitud õpperežiimi.';

  @override
  String get tutorialTapToContinue => 'Jätkamiseks puuduta ekraani';

  @override
  String get tutorialTransDesc => 'Tõlgi sisestatud tekst.';

  @override
  String get tutorialTransTitle => 'Tõlgi';

  @override
  String get typeExclamation => 'Hüüdlause';

  @override
  String get typeImperative => 'Käskiv lause';

  @override
  String get typeQuestion => 'Küsilause';

  @override
  String get typeStatement => 'Väitlause';

  @override
  String get usageLimitTitle => 'Limiti saavutamine';

  @override
  String get useExistingText => 'Kasuta olemasolevat teksti';

  @override
  String get viewOnlineGuide => 'Vaata veebijuhendit';

  @override
  String get voluntaryTranslations => 'Vabatahtlikud tõlked';

  @override
  String get watchAdAndRefill => 'Vaata reklaami ja täida (+5 korda)';

  @override
  String get word => 'Sõna';

  @override
  String get wordDefenseDesc =>
      'Kaitske oma baasi, öeldes sõnu enne, kui vaenlased kohale jõuavad.';

  @override
  String get wordDefenseTitle => 'Sõnade kaitse';

  @override
  String get wordModeLabel => 'Sõnarežiim';

  @override
  String get yourPronunciation => 'Sinu hääldus';

  @override
  String get ttsUnsupportedNatively =>
      'Seadme vaikeseaded ei toeta selle keele kõnet.';

  @override
  String get homeTab => 'Tõlge';

  @override
  String get welcomeTitle => 'Tere tulemast Talkiesse!';

  @override
  String get welcomeDesc =>
      'Tere tulemast Talkiesse! Toetame 100% terviklikkusega kõiki 80+ keelt üle maailma ning pakume täiuslikku õppimiskogemust uue esmaklassilise 3D-disaini ja optimeeritud jõudlusega.';

  @override
  String get welcomeButton => 'Alusta';

  @override
  String get labelDetails => 'Detailseaded';

  @override
  String get translationResult => 'Tõlketulemus';

  @override
  String get inputContent => 'Sisestatud sisu';

  @override
  String get translateNow => 'Tõlgi kohe';

  @override
  String get tooltipSettingsConfirm => 'Kinnita seaded';

  @override
  String get hintNoteExample => 'Nt: kontekst, homonüümid jne';

  @override
  String get hintTagExample => 'Nt: äri, reisimine...';

  @override
  String get addNew => 'Lisa uus';

  @override
  String get newNotebookTitle => 'Uue märkmiku nimi';

  @override
  String get enterNameHint => 'Sisesta nimi';

  @override
  String get add => 'Lisa';

  @override
  String get openSettings => 'Ava seaded';

  @override
  String get helpNotebook => 'Vali kaust, kuhu tõlgitud tulemused salvestada.';

  @override
  String get helpNote => 'Kirjuta üles sõna tähendus, näited või olukorrad.';

  @override
  String get helpTag => 'Sisesta märksõnad, et hiljem liigitada või otsida.';

  @override
  String get requestTranslation => 'Taotle tõlget';

  @override
  String get statusRequestSuccess => 'Tõlketaotlus on esitatud.';

  @override
  String statusRequestFailed(String error) {
    return 'Tõlketaotlus ebaõnnestus: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Õppekeel pole toetatud';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Valitud materjal ei toeta praegust õppekeelt ($targetLang), seega ei saa seda kohalikult salvestada. Kas soovid tõlget taotleda?';
  }
}

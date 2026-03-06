// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get accuracy => 'Točnost';

  @override
  String get ttsMissing =>
      'Za ta jezik ni nameščen mehanizem za pretvorbo besedila v govor.';

  @override
  String get ttsInstallGuide =>
      'V nastavitvah sistema Android > Google TTS namestite podatke za ta jezik.';

  @override
  String get adLoading => 'Oglas se nalaga. Poskusite znova pozneje.';

  @override
  String get addNewSubject => 'Dodaj novo ime';

  @override
  String get addParticipant => 'Dodaj udeleženca';

  @override
  String get addTagHint => 'Dodaj oznako...';

  @override
  String get alreadyHaveAccount => 'Že imate račun?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Samodejno predvajanje';

  @override
  String get basic => 'Osnovno';

  @override
  String get basicDefault => 'Osnovno';

  @override
  String get basicMaterialRepository => 'Osnovno skladišče stavkov/besed';

  @override
  String get basicSentenceRepository => 'Osnovno skladišče stavkov';

  @override
  String get basicSentences => 'Osnovno skladišče stavkov';

  @override
  String get basicWordRepository => 'Osnovno skladišče besed';

  @override
  String get basicWords => 'Osnovno skladišče besed';

  @override
  String get cancel => 'Prekliči';

  @override
  String get caseObject => 'Tožilnik';

  @override
  String get casePossessive => 'Lastnik';

  @override
  String get casePossessivePronoun => 'Lastnilni zaimek';

  @override
  String get caseReflexive => 'Povratni zaimek';

  @override
  String get caseSubject => 'Imenovalnik';

  @override
  String get chatAiChat => 'Klepet';

  @override
  String get chatAllConversations => 'Vsi pogovori';

  @override
  String get chatChoosePersona => 'Izberite osebnost';

  @override
  String get chatEndMessage => 'Ali želite končati pogovor?';

  @override
  String get chatEndTitle => 'Končaj in shrani pogovor';

  @override
  String chatFailed(Object error) {
    return 'Klepet ni uspel: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Izvleček pogovora ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Zgodovina pogovorov';

  @override
  String get chatNew => 'Nov pogovor';

  @override
  String get chatNewChat => 'Nov pogovor';

  @override
  String get chatNoConversations => 'Še nimate pogovorov';

  @override
  String get chatSaveAndExit => 'Shrani in izstopi';

  @override
  String get chatStartNewPrompt => 'Začnite nov pogovor za vadbo!';

  @override
  String get chatTypeHint => 'Vnesite sporočilo ...';

  @override
  String get chatUntitled => 'Pogovor brez naslova';

  @override
  String get checking => 'Preverjam ...';

  @override
  String get clearAll => 'Počisti vse';

  @override
  String get confirm => 'Potrdi';

  @override
  String get confirmDelete => 'Ali želite izbrisati ta zapis učenja?';

  @override
  String get confirmDeleteConversation =>
      'Želite izbrisati ta pogovor?\nIzbrisanih pogovorov ni mogoče obnoviti.';

  @override
  String get confirmDeleteParticipant => 'Želite izbrisati tega udeleženca?';

  @override
  String get contextTagHint =>
      'Zapišite situacijo, da jo boste lažje prepoznali pozneje';

  @override
  String get contextTagLabel =>
      'Kontekst/situacija (neobvezno) – Primer: jutranji pozdrav, vljudnost';

  @override
  String get copiedToClipboard => 'Kopirano v odložišče!';

  @override
  String get copy => 'Kopiraj';

  @override
  String get correctAnswer => 'Pravilen odgovor';

  @override
  String get createNew => 'Nadaljuj z novim stavkom';

  @override
  String get currentLocation => 'Trenutna lokacija';

  @override
  String get currentMaterialLabel => 'Trenutno izbrana zbirka gradiv:';

  @override
  String get delete => 'Izbriši';

  @override
  String deleteFailed(String error) {
    return 'Brisanje ni uspelo: $error';
  }

  @override
  String get deleteRecord => 'Izbriši zapis';

  @override
  String get dialogueQuestDesc =>
      'Vadite pogovor s situacijsko komedijo. Izberite ustrezen odgovor in ga izgovorite.';

  @override
  String get dialogueQuestTitle => 'Dialogna naloga';

  @override
  String get disambiguationPrompt => 'Kateri pomen želite prevesti?';

  @override
  String get disambiguationTitle => 'Izbira pomena';

  @override
  String get dontHaveAccount => 'Nimate računa?';

  @override
  String get editParticipant => 'Uredi udeleženca';

  @override
  String get email => 'E-pošta';

  @override
  String get emailAlreadyInUse =>
      'Ta e-poštni naslov je že v uporabi. Prijavite se ali uporabite možnost za obnovitev gesla.';

  @override
  String get enterNewSubjectName => 'Vnesite novo ime';

  @override
  String get enterSentenceHint => 'Vnesite stavek...';

  @override
  String get enterTextHint => 'Vnesite besedilo za prevajanje';

  @override
  String get enterTextToTranslate => 'Vnesite besedilo za prevajanje';

  @override
  String get enterWordHint => 'Vnesite besedo...';

  @override
  String get error => 'Napaka';

  @override
  String get errorHateSpeech =>
      'Ne morem prevesti, ker vsebuje sovražni govor.';

  @override
  String get errorOtherSafety =>
      'Prevajanje je bilo zavrnjeno s strani varnostnega pravilnika AI.';

  @override
  String get errorProfanity => 'Ne morem prevesti, ker vsebuje kletvice.';

  @override
  String get errorSelectCategory => 'Najprej izberite besedo ali stavek!';

  @override
  String get errorSexualContent =>
      'Ne morem prevesti, ker vsebuje seksualno vsebino.';

  @override
  String get errors => 'Napake:';

  @override
  String get female => 'Ženska';

  @override
  String get file => 'Datoteka:';

  @override
  String get filterAll => 'Vse';

  @override
  String get flip => 'Pokaži';

  @override
  String get formComparative => 'Primerjalnik';

  @override
  String get formInfinitive => 'Nedoločnik/sedanjik';

  @override
  String get formPast => 'Preteklik';

  @override
  String get formPastParticiple => 'Deležnik preteklika';

  @override
  String get formPlural => 'Množina';

  @override
  String get formPositive => 'Pozitiv';

  @override
  String get formPresent => 'Sedanjik';

  @override
  String get formPresentParticiple => 'Deležnik sedanjika (ing)';

  @override
  String get formSingular => 'Ednina';

  @override
  String get formSuperlative => 'Superlativ';

  @override
  String get formThirdPersonSingular => '3. oseba ednine';

  @override
  String get gameModeDesc => 'Izberite način igre za vadbo';

  @override
  String get gameModeTitle => 'Način igre';

  @override
  String get gameOver => 'Igre je konec';

  @override
  String get gender => 'Spol';

  @override
  String get generalTags => 'Splošne oznake';

  @override
  String get getMaterials => 'Pridobi gradivo';

  @override
  String get good => 'Dobro';

  @override
  String get googleContinue => 'Nadaljuj z Google';

  @override
  String get helpDialogueImportDesc =>
      'Uvozi celoten nabor pogovorov kot datoteko JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• Struktura JSON: uporabite niz `dialogues` namesto `entries`\n• Samodejna obnovitev: obnovljeni so naslov pogovora, osebnost in vrstni red sporočil.\n• Lokacija: uvoženi pogovori se prikažejo na zavihku »Zgodovina« načina klepeta AI.';

  @override
  String get helpJsonDesc =>
      'Za uvoz učnega gradiva, ki se uporablja v načinu 3, kot datoteko JSON, upoštevajte naslednjo obliko:';

  @override
  String get helpJsonTypeDialogue => 'Dialog';

  @override
  String get helpJsonTypeSentence => 'Stavek';

  @override
  String get helpJsonTypeWord => 'Beseda';

  @override
  String get helpMode1Desc =>
      'Prepoznajte govor, ga prevedite in poslušajte rezultate.';

  @override
  String get helpMode1Details =>
      '• Nastavitev jezika: spremenite jezik s pritiskom na ikone zgoraj/spodaj\n• Preklop med besedami/stavki: preklop načina\n• Glasovni vnos: pritisnite ikono mikrofona za začetek/ustavitev poslušanja\n• Vnos besedila: ročni vnos besedila za prevajanje\n• Samodejno iskanje: zaznavanje podobnih obstoječih stavkov\n• Prevajanje: takojšnje prevajanje s pritiskom na gumb za prevajanje\n• Poslušanje: predvajanje TTS z ikono zvočnika\n• Shranjevanje: dodajanje zapisa s »Shrani podatke«\n• Brisanje: ponastavitev vnosa';

  @override
  String get helpMode2Desc =>
      'Ponovite shranjene stavke in s funkcijo samodejnega skrivanja preverite, ali si jih zapomnite.';

  @override
  String get helpMode2Details =>
      '• Izbira gradiva: izbira določene zbirke gradiv ali »Celotno ponavljanje«\n• Obračanje kartic: preverjanje prevoda z »Pokaži/Skrij« (samodejna kontrola učenja)\n• Poslušanje: predvajanje TTS stavka\n• Učenje končano: obdelava zaključka učenja z oznako (V)\n• Brisanje: dolg pritisk na kartico za brisanje zapisa\n• Pogoji iskanja: filtriranje po oznakah, nedavnih elementih, začetnih črkah';

  @override
  String get helpMode3Desc =>
      'Poslušajte stavek in ga ponovite (senčenje), da vadite izgovorjavo.';

  @override
  String get helpMode3Details =>
      '• Izbira gradiva: izbira zbirke gradiv za učenje\n• Nastavitev intervala: prilagajanje časa čakanja med stavki z gumboma [-] [+](3 sekunde ~ 60 sekund)\n• Začetek/ustavitev: nadzor nad sejo senčenja\n• Govorjenje: poslušanje zvoka in ponavljanje\n• Povratne informacije: prikaz ocene točnosti (0–100) in barve\n• Pogoji iskanja: filtriranje cilja vadbe po oznakah, nedavnih elementih, začetnih črkah';

  @override
  String get helpModeChatDesc =>
      'Vadite pogovor v resničnem življenju s pogovorom z osebnostjo AI.';

  @override
  String get helpModeChatDetails =>
      '• Klepet AI: vadite pogovor s pogovorom v mojem jeziku\n• Več osebnosti: spremenite spol/jezik/ime sogovornika z menijem nad oblački\n• Dodajanje partnerja: dodajanje novega sogovornika (Neznanec) z gumbom +\n• GPS: Situacijska komedija na podlagi trenutne lokacije\n• Samodejno shranjevanje: samodejno prevajanje in shranjevanje pogovorov';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabModes => 'Razlaga načinov';

  @override
  String get helpTabTour => 'Vodeni ogled';

  @override
  String get helpTitle => 'Pomoč in vodniki';

  @override
  String get helpTourDesc =>
      '**Poudarjeni krogi** vas vodijo skozi ključne funkcije.\n(Primer: **Poudarjeni krog**, ki kaže na kartico, lahko izbrišete z dolgim pritiskom.)';

  @override
  String get hide => 'Skrij';

  @override
  String importAdded(int count) {
    return 'Dodano: $count';
  }

  @override
  String get importComplete => 'Uvoz končan';

  @override
  String get importDuplicateTitleError =>
      'Gradivo z enakim naslovom že obstaja. Poskusite znova, ko spremenite naslov.';

  @override
  String importErrorMessage(String error) {
    return 'Uvoz datoteke ni uspel:\\n$error';
  }

  @override
  String get importFailed => 'Uvoz ni uspel';

  @override
  String importFile(String fileName) {
    return 'Datoteka: $fileName';
  }

  @override
  String get importJsonFile => 'Uvozi datoteko JSON';

  @override
  String get importJsonFilePrompt => 'Uvozite datoteko JSON';

  @override
  String importSkipped(int count) {
    return 'Preskočeno: $count';
  }

  @override
  String importTotal(int count) {
    return 'Skupaj: $count';
  }

  @override
  String get importing => 'Uvažam ...';

  @override
  String get inputModeTitle => 'Vnos';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds s';
  }

  @override
  String get invalidEmail => 'Vnesite veljaven e-poštni naslov.';

  @override
  String get kakaoContinue => 'Nadaljuj s Kakao';

  @override
  String get labelLangCode => 'Koda jezika (npr. en-US, ko-KR)';

  @override
  String get labelName => 'Ime';

  @override
  String get labelNote => 'Opomba';

  @override
  String get labelPOS => 'Vrsta besede';

  @override
  String get labelRole => 'Vloga';

  @override
  String get labelSentence => 'Stavek';

  @override
  String get labelSentenceCollection => 'Zbirka stavkov';

  @override
  String get labelSentenceType => 'Vrsta stavka';

  @override
  String get labelShowMemorized => 'Končano';

  @override
  String get labelType => 'Vrsta:';

  @override
  String get labelWord => 'Beseda';

  @override
  String get labelWordbook => 'Zbirka besed';

  @override
  String get language => 'Jezik';

  @override
  String get languageSettings => 'Nastavitve jezika';

  @override
  String get languageSettingsTitle => 'Nastavitve jezika';

  @override
  String get libTitleFirstMeeting => 'Prvo srečanje';

  @override
  String get libTitleGreetings1 => 'Pozdravi 1';

  @override
  String get libTitleNouns1 => 'Samostalniki 1';

  @override
  String get libTitleVerbs1 => 'Glagoli 1';

  @override
  String get listen => 'Poslušaj';

  @override
  String get listening => 'Poslušam ...';

  @override
  String get loadingParticipants => 'Nalaganje udeležencev ...';

  @override
  String get location => 'Lokacija';

  @override
  String get login => 'Prijava';

  @override
  String get logout => 'Odjava';

  @override
  String get logoutConfirmMessage => 'Želite odjaviti se iz te naprave?';

  @override
  String get logoutConfirmTitle => 'Odjava';

  @override
  String get male => 'Moški';

  @override
  String get manageParticipants => 'Upravljanje udeležencev';

  @override
  String get manual => 'Ročni vnos';

  @override
  String get markAsStudied => 'Označi kot preučeno';

  @override
  String get materialInfo => 'Informacije o gradivu';

  @override
  String get me => 'Jaz';

  @override
  String get menuDeviceImport => 'Uvozi gradivo iz naprave';

  @override
  String get menuHelp => 'Pomoč';

  @override
  String get menuLanguageSettings => 'Nastavitve jezika';

  @override
  String get menuOnlineLibrary => 'Spletna knjižnica';

  @override
  String get menuSelectMaterialSet => 'Izberite zbirko učnega gradiva';

  @override
  String get menuSettings => 'Nastavitve jezika';

  @override
  String get menuTutorial => 'Vodnik po uporabi';

  @override
  String get menuWebDownload => 'Domača stran';

  @override
  String get metadataDialogTitle => 'Podrobna klasifikacija';

  @override
  String get metadataFormType => 'Oblika slovnice';

  @override
  String get metadataRootWord => 'Koren (Root Word)';

  @override
  String get micButtonTooltip => 'Začni prepoznavanje glasu';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Trenutno izbrano gradivo: $name';
  }

  @override
  String get mode2Title => 'Ponovitev';

  @override
  String get mode3Next => 'Naprej';

  @override
  String get mode3Start => 'Začni';

  @override
  String get mode3Stop => 'Ustavi';

  @override
  String get mode3TryAgain => 'Poskusite znova';

  @override
  String get mySentenceCollection => 'Moja zbirka stavkov';

  @override
  String get myWordbook => 'Moja besedna zbirka';

  @override
  String get neutral => 'Nevtralno';

  @override
  String get newSubjectName => 'Novo ime sklopa besed/stavkov';

  @override
  String get next => 'Naprej';

  @override
  String get noDialogueHistory => 'Ni zgodovine pogovorov.';

  @override
  String get noInternetWarningMic =>
      'Ni internetne povezave. Prepoznavanje glasu morda ne bo delovalo brez povezave.';

  @override
  String get noInternetWarningTranslate =>
      'Ni internetne povezave. Prevajanje brez povezave ni mogoče. Uporabite način ponavljanja.';

  @override
  String get noMaterialsInCategory => 'V tej kategoriji ni gradiva.';

  @override
  String get noParticipantsFound => 'Ni najdenih registriranih udeležencev.';

  @override
  String get noRecords => 'Ni zapisov učenja za izbrani jezik';

  @override
  String get noStudyMaterial => 'Ni učnega gradiva.';

  @override
  String get noTextToPlay => 'Ni besedila za predvajanje';

  @override
  String get noTranslationToSave => 'Ni prevoda za shranjevanje';

  @override
  String get noVoiceDetected => 'Glas ni zaznan';

  @override
  String get notSelected => '- Ni izbrano -';

  @override
  String get onlineLibraryCheckInternet =>
      'Preverite internetno povezavo ali poskusite znova pozneje.';

  @override
  String get onlineLibraryLoadFailed => 'Nalaganje gradiva ni uspelo.';

  @override
  String get onlineLibraryNoMaterials => 'Ni gradiva.';

  @override
  String get participantDeleted => 'Udeleženec je bil izbrisan.';

  @override
  String get participantRename => 'Preimenuj udeleženca';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Način za dva';

  @override
  String get password => 'Geslo';

  @override
  String get passwordTooShort => 'Geslo mora imeti vsaj 6 znakov.';

  @override
  String get perfect => 'Popolno!';

  @override
  String get personaFriend => 'Lokalni prijatelj';

  @override
  String get personaGuide => 'Turistični vodnik';

  @override
  String get personaTeacher => 'Učitelj angleščine';

  @override
  String get playAgain => 'Igraj znova';

  @override
  String playbackFailed(String error) {
    return 'Predvajanje ni uspelo: $error';
  }

  @override
  String get playing => 'Predvajam ...';

  @override
  String get posAdjective => 'Pridevnik';

  @override
  String get posAdverb => 'Prislov';

  @override
  String get posConjunction => 'Veznik';

  @override
  String get posInterjection => 'Medmet';

  @override
  String get posNoun => 'Samostalnik';

  @override
  String get posPreposition => 'Predlog/veznik';

  @override
  String get posPronoun => 'Zaimek';

  @override
  String get posVerb => 'Glagol';

  @override
  String get practiceModeTitle => 'Vadba';

  @override
  String get practiceWordsOnly => 'Vadite samo besede';

  @override
  String progress(int current, int total) {
    return 'Napredek: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Prikaži zadnjih $count ustvarjenih elementov';
  }

  @override
  String recognitionFailed(String error) {
    return 'Prepoznavanje govora ni uspelo: $error';
  }

  @override
  String get recognized => 'Prepoznano';

  @override
  String get recognizedText => 'Prepoznana izgovorjava:';

  @override
  String get recordDeleted => 'Zapis je izbrisan';

  @override
  String get refresh => 'Osveži';

  @override
  String get reset => 'Ponastavi';

  @override
  String get resetPracticeHistory => 'Ponastavi zgodovino vadbe';

  @override
  String get retry => 'Poskusite znova?';

  @override
  String get reviewAll => 'Celotna ponovitev';

  @override
  String reviewCount(int count) {
    return 'Ponovitev $count-krat';
  }

  @override
  String get reviewModeTitle => 'Ponovitev';

  @override
  String get roleAi => 'UI';

  @override
  String get roleThirdParty => 'Tretja oseba';

  @override
  String get roleUser => 'Uporabnik';

  @override
  String get save => 'Shrani';

  @override
  String get saveData => 'Shrani podatke';

  @override
  String saveFailed(String error) {
    return 'Shranjevanje ni uspelo: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Poskusite shraniti prevode iz načina iskanja';

  @override
  String get saved => 'Shranjevanje končano';

  @override
  String get saving => 'Shranjujem ...';

  @override
  String score(String score) {
    return 'Točnost: $score %';
  }

  @override
  String get scoreLabel => 'Rezultat';

  @override
  String get search => 'Iskanje';

  @override
  String get searchConditions => 'Pogoji iskanja';

  @override
  String get searchSentenceHint => 'Iskanje stavka...';

  @override
  String get searchWordHint => 'Iskanje besede...';

  @override
  String get sectionSentence => 'Stavni odsek';

  @override
  String get sectionSentences => 'Stavki';

  @override
  String get sectionWord => 'Besedni odsek';

  @override
  String get sectionWords => 'Besede';

  @override
  String get selectExistingSubject => 'Izberite obstoječe ime';

  @override
  String get selectMaterialPrompt => 'Izberite učno gradivo';

  @override
  String get selectMaterialSet => 'Izberite zbirko učnega gradiva';

  @override
  String get selectPOS => 'Izberite vrsto besede';

  @override
  String get selectParticipants => 'Izberite udeležence';

  @override
  String get selectSentenceType => 'Izberite vrsto stavka';

  @override
  String get selectStudyMaterial => 'Izberite učno gradivo';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Stavek';

  @override
  String get signUp => 'Registracija';

  @override
  String get similarTextFound => 'Najdeno podobno besedilo';

  @override
  String get skip => 'Preskoči';

  @override
  String get source => 'Vir:';

  @override
  String get sourceLanguage => 'Izvorni jezik';

  @override
  String get sourceLanguageLabel => 'Moj jezik (izvorni)';

  @override
  String get speakNow => 'Govorite zdaj!';

  @override
  String get speaker => 'Govornik';

  @override
  String get speakerSelect => 'Izbira govorca';

  @override
  String get speakingPractice => 'Vaja govora';

  @override
  String get startChat => 'Začni pogovor';

  @override
  String get startPractice => 'Začni z vajo';

  @override
  String get startTutorial => 'Začni vadnico';

  @override
  String get startWarning => 'Opozorilo';

  @override
  String get startsWith => 'Začne se s črko';

  @override
  String get statusCheckEmail =>
      'Za dokončanje overitve preverite svojo e-pošto.';

  @override
  String statusDownloading(Object name) {
    return 'Prenašanje: $name ...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Uvoz ni uspel: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return 'Uvoz $name je bil uspešen';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Prijava je bila preklicana.';

  @override
  String statusLoginFailed(Object error) {
    return 'Prijava ni uspela: $error';
  }

  @override
  String get statusLoginSuccess => 'Prijava je bila uspešna.';

  @override
  String get statusLogoutSuccess => 'Odjavljeni ste.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Registracija ni uspela: $error';
  }

  @override
  String get statusSigningUp => 'Registracija ...';

  @override
  String get stopPractice => 'Ustavi vajo';

  @override
  String get studyComplete => 'Učenje končano';

  @override
  String studyRecords(int count) {
    return 'Zapisi učenja ($count)';
  }

  @override
  String get styleFormal => 'Formalno';

  @override
  String get styleInformal => 'Neformalno';

  @override
  String get stylePolite => 'Vljudno';

  @override
  String get styleSlang => 'Sleng';

  @override
  String get subject => 'Zadeva:';

  @override
  String get swapLanguages => 'Zamenjaj jezike';

  @override
  String get switchToAi => 'Preklop v način AI';

  @override
  String get switchToPartner => 'Preklop v način za dva';

  @override
  String get syncingData => 'Sinhronizacija podatkov ...';

  @override
  String get tabConversation => 'Pogovor';

  @override
  String tabReview(int count) {
    return 'Ponovitev ($count)';
  }

  @override
  String get tabSentence => 'Stavek';

  @override
  String get tabSpeaking => 'Govor';

  @override
  String tabStudyMaterial(int count) {
    return 'Učno gradivo ($count)';
  }

  @override
  String get tabWord => 'Beseda';

  @override
  String get tagFormal => 'Formalno';

  @override
  String get tagSelection => 'Izbira oznake';

  @override
  String get targetLanguage => 'Ciljni jezik';

  @override
  String get targetLanguageFilter => 'Filter ciljnega jezika:';

  @override
  String get targetLanguageLabel => 'Jezik učenja (ciljni)';

  @override
  String get thinkingTimeDesc =>
      'Čas za razmišljanje, preden se razkrije pravilen odgovor.';

  @override
  String get thinkingTimeInterval => 'Časovni interval predvajanja';

  @override
  String get timeUp => 'Čas je potekel!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Oznaka naslova (Zbirka podatkov)';

  @override
  String get tooltipDecrease => 'Zmanjšaj';

  @override
  String get tooltipIncrease => 'Povečaj';

  @override
  String get tooltipSearch => 'Iskanje';

  @override
  String get tooltipSpeaking => 'Govor';

  @override
  String get tooltipStudyReview => 'Učenje + ponovitev';

  @override
  String totalRecords(int count) {
    return 'Skupaj $count zapisov (prikaži vse)';
  }

  @override
  String get translate => 'Prevedi';

  @override
  String get translating => 'Prevajam ...';

  @override
  String get translation => 'Prevod';

  @override
  String get translationComplete => 'Prevod končan (potrebno shranjevanje)';

  @override
  String translationFailed(String error) {
    return 'Prevod ni uspel: $error';
  }

  @override
  String get translationLimitExceeded => 'Prekoračena omejitev prevajanja';

  @override
  String get translationLimitMessage =>
      'Porabili ste vseh 5 brezplačnih dnevnih prevodov.\\n\\nAli želite takoj napolniti 5 s ogledom oglasa?';

  @override
  String get translationLoaded => 'Naložen shranjen prevod';

  @override
  String get translationRefilled => 'Število prevodov je bilo napolnjeno na 5!';

  @override
  String get translationResultHint => 'Rezultat prevoda - lahko ga spremenite';

  @override
  String get tryAgain => 'Poskusite znova';

  @override
  String get tutorialAiChatDesc =>
      'Vadite pogovor v resničnem življenju z AI osebnostjo.';

  @override
  String get tutorialAiChatTitle => 'AI klepet';

  @override
  String get tutorialContextDesc =>
      'Isti stavek lahko shranite ločeno, če zapišete situacijo (npr. jutro, večer).';

  @override
  String get tutorialContextTitle => 'Situacija/kontekstne oznake';

  @override
  String get tutorialLangSettingsDesc =>
      'Nastavite izvorni in ciljni jezik za prevajanje.';

  @override
  String get tutorialLangSettingsTitle => 'Nastavitve jezika';

  @override
  String get tutorialM1ToggleDesc =>
      'Tukaj preklopite med načinom besede in stavka.';

  @override
  String get tutorialM1ToggleTitle => 'Način besede/stavka';

  @override
  String get tutorialM2DropdownDesc =>
      'Gradivo za učenje lahko izberete v zgornjem meniju.';

  @override
  String get tutorialM2ImportDesc => 'Uvozi datoteko JSON iz mape v napravi.';

  @override
  String get tutorialM2ListDesc =>
      'To kartico lahko izbrišete z dolgim pritiskom (dolgi klik). Preverite shranjene stavke in jih obrnite.';

  @override
  String get tutorialM2ListTitle => 'Seznam za učenje';

  @override
  String get tutorialM2SearchDesc =>
      'Iščete lahko po shranjenih besedah in stavkih, da jih hitro najdete.';

  @override
  String get tutorialM2SelectDesc =>
      'Izberite gradivo za učenje s pritiskom na ikono zbirke gradiv (📚) na zgornji vrstici aplikacije.';

  @override
  String get tutorialM2SelectTitle => 'Izbira gradiva';

  @override
  String get tutorialM3IntervalDesc => 'Prilagodite čas čakanja med stavki.';

  @override
  String get tutorialM3IntervalTitle => 'Nastavitev intervala';

  @override
  String get tutorialM3ResetDesc =>
      'Ponastavi napredek in oceno točnosti za ponovni začetek iz nič.';

  @override
  String get tutorialM3ResetTitle => 'Ponastavitev zgodovine';

  @override
  String get tutorialM3SelectDesc =>
      'Izberite gradivo za vadbo s pritiskom na ikono zbirke gradiv (📚) na zgornji vrstici aplikacije.';

  @override
  String get tutorialM3SelectTitle => 'Izbira gradiva';

  @override
  String get tutorialM3StartDesc =>
      'Pritisnite gumb za predvajanje, da poslušate govor maternega govorca in ga ponovite.';

  @override
  String get tutorialM3StartTitle => 'Začni z vajo';

  @override
  String get tutorialM3WordsDesc =>
      'Če je označeno, vadite samo shranjene besede.';

  @override
  String get tutorialM3WordsTitle => 'Besedna vaja';

  @override
  String get tutorialMicDesc =>
      'Za vnos z glasom lahko pritisnete gumb mikrofona.';

  @override
  String get tutorialMicTitle => 'Glasovni vnos';

  @override
  String get tutorialSaveDesc =>
      'Shranite prevedene rezultate v zapise učenja.';

  @override
  String get tutorialSaveTitle => 'Shrani';

  @override
  String get tutorialSwapDesc => 'Zamenja moj jezik in jezik učenja.';

  @override
  String get tutorialTabDesc => 'Tukaj lahko izberete želeni način učenja.';

  @override
  String get tutorialTapToContinue => 'Dotaknite se zaslona za nadaljevanje';

  @override
  String get tutorialTransDesc => 'Prevede vneseno besedilo.';

  @override
  String get tutorialTransTitle => 'Prevedi';

  @override
  String get typeExclamation => 'Klicaj';

  @override
  String get typeImperative => 'Ukaz';

  @override
  String get typeQuestion => 'Vprašanje';

  @override
  String get typeStatement => 'Poved';

  @override
  String get usageLimitTitle => 'Dosežena omejitev';

  @override
  String get useExistingText => 'Uporabi obstoječe besedilo';

  @override
  String get viewOnlineGuide => 'Oglejte si spletni vodnik';

  @override
  String get voluntaryTranslations => 'Prostovoljni prevodi';

  @override
  String get watchAdAndRefill => 'Oglejte si oglas in napolnite (+5)';

  @override
  String get word => 'Beseda';

  @override
  String get wordDefenseDesc =>
      'Branite bazo tako, da izgovorite besede, preden prispejo sovražniki.';

  @override
  String get wordDefenseTitle => 'Besedna obramba';

  @override
  String get wordModeLabel => 'Besedni način';

  @override
  String get yourPronunciation => 'Moja izgovorjava';

  @override
  String get ttsUnsupportedNatively =>
      'Ta naprava ne podpira izvornega glasovnega izhoda za ta jezik.';
}

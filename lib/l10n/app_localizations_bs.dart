// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get basicWords => 'Osnovno spremište riječi';

  @override
  String get inputLanguage => 'Ulazni jezik';

  @override
  String get translationLanguage => 'Jezik prijevoda';

  @override
  String get simplifiedGuidance =>
      'Trenutna konverzija svakodnevnih razgovora na strani jezik! Talkie bilježi vaš jezični život.';

  @override
  String get noDataForLanguage =>
      'Nema materijala za učenje za odabrani jezik u lokalnoj bazi podataka. Preuzmite materijale ili odaberite drugi jezik.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Otkaži';

  @override
  String get accuracy => 'Tačnost';

  @override
  String get ttsMissing =>
      'Jezični paket za ovaj jezik nije instaliran na vašem uređaju.';

  @override
  String get ttsInstallGuide =>
      'Molimo vas da instalirate podatke za odgovarajući jezik u Android postavkama > Google TTS.';

  @override
  String get adLoading => 'Oglas se učitava. Pokušajte ponovo kasnije.';

  @override
  String get addNewSubject => 'Dodaj novi naslov';

  @override
  String get addParticipant => 'Dodaj sudionika';

  @override
  String get addTagHint => 'Dodaj oznaku...';

  @override
  String get alreadyHaveAccount => 'Već imate račun?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Automatska reprodukcija';

  @override
  String get basic => 'Osnovno';

  @override
  String get basicDefault => 'Osnovno';

  @override
  String get basicMaterialRepository => 'Osnovno spremište rečenica/riječi';

  @override
  String get basicSentenceRepository => 'Osnovno spremište rečenica';

  @override
  String get basicSentences => 'Osnovno spremište rečenica';

  @override
  String get basicWordRepository => 'Osnovno spremište riječi';

  @override
  String get caseObject => 'Akuzativ';

  @override
  String get casePossessive => 'Genitiv';

  @override
  String get casePossessivePronoun => 'Posvojna zamjenica';

  @override
  String get caseReflexive => 'Povratna zamjenica';

  @override
  String get caseSubject => 'Nominativ';

  @override
  String get chatAiChat => 'Čet';

  @override
  String get chatAllConversations => 'Svi razgovori';

  @override
  String get chatChoosePersona => 'Odaberite Personu';

  @override
  String get chatEndMessage => 'Želite li završiti razgovor?';

  @override
  String get chatEndTitle => 'Završi i spremi razgovor';

  @override
  String chatFailed(Object error) {
    return 'Razgovor nije uspio: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Izvadak iz razgovora ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Historija razgovora';

  @override
  String get chatNew => 'Novi razgovor';

  @override
  String get chatNewChat => 'Novi razgovor';

  @override
  String get chatNoConversations => 'Još nema razgovora';

  @override
  String get chatSearchHint => 'Pretražite po nazivu razgovora...';

  @override
  String get chatSaveAndExit => 'Spremi i izađi';

  @override
  String get chatStartNewPrompt => 'Započnite novi razgovor za vježbanje!';

  @override
  String get chatTypeHint => 'Upišite poruku...';

  @override
  String get chatUntitled => 'Razgovor bez naslova';

  @override
  String get checking => 'Provjeravam...';

  @override
  String get clearAll => 'Očisti sve';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get confirmDelete => 'Želite li obrisati ovaj zapis učenja?';

  @override
  String get confirmDeleteConversation =>
      'Želite li izbrisati ovaj razgovor?\nIzbrisani razgovori se ne mogu vratiti.';

  @override
  String get confirmDeleteParticipant => 'Želite li izbrisati ovog sudionika?';

  @override
  String get contextTagHint =>
      'Zapišite situaciju kako biste je kasnije lakše razlikovali';

  @override
  String get contextTagLabel =>
      'Kontekst/Situacija (opcionalno) - Npr. Jutarnji pozdrav, Poštovanje';

  @override
  String get copiedToClipboard => 'Kopirano u međuspremnik!';

  @override
  String get copy => 'Kopiraj';

  @override
  String get correctAnswer => 'Tačan odgovor';

  @override
  String get createNew => 'Nastavi s novom rečenicom';

  @override
  String get currentLocation => 'Trenutna lokacija';

  @override
  String get currentMaterialLabel => 'Trenutno odabrana zbirka materijala:';

  @override
  String get delete => 'Obriši';

  @override
  String deleteFailed(String error) {
    return 'Brisanje nije uspjelo: $error';
  }

  @override
  String get deleteRecord => 'Obriši zapis';

  @override
  String get dialogueQuestDesc =>
      'Vježbajte dijaloge kroz igranje uloga. Odaberite i izgovorite odgovarajuće odgovore.';

  @override
  String get dialogueQuestTitle => 'Dijaloška potraga';

  @override
  String get disambiguationPrompt => 'Koje značenje želite prevesti?';

  @override
  String get disambiguationTitle => 'Odabir značenja';

  @override
  String get dontHaveAccount => 'Nemate račun?';

  @override
  String get editParticipant => 'Uredi sudionika';

  @override
  String get email => 'E-pošta';

  @override
  String get emailAlreadyInUse =>
      'Email je već registriran. Prijavite se ili koristite opciju zaboravljene lozinke.';

  @override
  String get enterNewSubjectName => 'Unesite novi naslov';

  @override
  String get enterSentenceHint => 'Unesite rečenicu...';

  @override
  String get enterTextHint => 'Unesite tekst za prijevod';

  @override
  String get enterTextToTranslate => 'Unesite tekst za prijevod';

  @override
  String get enterWordHint => 'Unesite riječ...';

  @override
  String get error => 'Greška';

  @override
  String get errorHateSpeech => 'Ne može se prevesti jer sadrži govor mržnje.';

  @override
  String get errorOtherSafety =>
      'Prijevod je odbijen zbog AI sigurnosnih pravila.';

  @override
  String get errorProfanity => 'Ne može se prevesti jer sadrži psovke.';

  @override
  String get errorSelectCategory => 'Prvo odaberite riječ ili rečenicu!';

  @override
  String get errorSexualContent =>
      'Ne može se prevesti jer sadrži opscen sadržaj.';

  @override
  String get errors => 'Greške:';

  @override
  String get female => 'Ženski';

  @override
  String get file => 'Datoteka:';

  @override
  String get filterAll => 'Sve';

  @override
  String get flip => 'Prikaži';

  @override
  String get formComparative => 'Komparativ';

  @override
  String get formInfinitive => 'Infinitiv/Sadašnje vrijeme';

  @override
  String get formPast => 'Prošlo vrijeme';

  @override
  String get formPastParticiple => 'Prošli particip';

  @override
  String get formPlural => 'Množina';

  @override
  String get formPositive => 'Pozitiv';

  @override
  String get formPresent => 'Sadašnje vrijeme';

  @override
  String get formPresentParticiple => 'Sadašnji particip (ing)';

  @override
  String get formSingular => 'Jednina';

  @override
  String get formSuperlative => 'Superlativ';

  @override
  String get formThirdPersonSingular => 'Treće lice jednine';

  @override
  String get gameModeDesc => 'Odaberite način igre za vježbanje';

  @override
  String get gameModeTitle => 'Način rada igre';

  @override
  String get gameOver => 'Kraj igre';

  @override
  String get gender => 'Spol';

  @override
  String get labelFilterMaterial => 'Materijali';

  @override
  String get labelFilterTag => 'Oznake';

  @override
  String get generalTags => 'Opće oznake';

  @override
  String get getMaterials => 'Preuzmite materijale';

  @override
  String get good => 'Dobro';

  @override
  String get googleContinue => 'Nastavi sa Googleom';

  @override
  String get helpDialogueImportDesc =>
      'Uvezite cijeli set dijaloga kao JSON datoteku.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON struktura: Koristite niz `dialogues` umjesto `entries`\n• Automatski oporavak: Naslov dijaloga, persona i redoslijed poruka se oporavljaju.\n• Lokacija: Uvezeni dijalozi pojavljuju se na kartici \'Historija\' u načinu rada AI Chat.';

  @override
  String get helpJsonDesc =>
      'Slijedite ovaj format da biste uvezli materijale za učenje kao JSON datoteku za korištenje u načinu rada 3:';

  @override
  String get helpJsonTypeDialogue => 'Dijalog';

  @override
  String get helpJsonTypeSentence => 'Rečenica';

  @override
  String get helpJsonTypeWord => 'Riječ';

  @override
  String get helpMode1Desc =>
      'Započnite učenje jezika na najintuitivniji način, uz vrhunski 3D mikrofon i ikone velike tastature.';

  @override
  String get helpMode1Details =>
      '• Postavke jezika: Provjerite moj jezik i jezik koji učim pomoću gumba za jezik na vrhu početnog zaslona i promijenite jezik učenja.\n• Jednostavan unos: Odmah unesite putem velikog mikrofona i tekstualnog okvira u sredini.\n• Provjera postavki: Nakon što završite s unosom, pritisnite plavi gumb za potvrdu s desne strane. Pojavit će se prozor s detaljnim postavkama.\n• Detaljne postavke: U dijaloškom okviru koji se pojavi možete odrediti materijal za spremanje, bilješke (memo) i oznake.\n• Prevedi sada: Nakon što dovršite postavke, pritisnite zeleni gumb za prijevod i umjetna inteligencija će odmah izvršiti prijevod.\n• Automatsko pretraživanje: Otkriva i prikazuje slične postojeće prijevode u stvarnom vremenu tijekom unosa.\n• Slušanje i spremanje: Slušajte izgovor pomoću ikone zvučnika ispod rezultata prijevoda i dodajte ga na popis za učenje putem \'Spremanje podataka\'.';

  @override
  String get helpMode2Desc =>
      'Pregledajte spremljene rečenice i provjerite jeste li ih zapamtili pomoću funkcije automatskog sakrivanja.';

  @override
  String get helpMode2Details =>
      '• Odabir materijala: Koristite \'Odabir materijala za učenje\' ili \'Online biblioteku\' u gornjem desnom meniju (⋮)\n• Okretanje kartice: Provjerite prijevod pomoću \'Prikaži/Sakrij\'\n• Slušanje: Reproducirajte izgovor pomoću ikone zvučnika\n• Završeno učenje: Označite kvačicom (V) da označite završetak učenja\n• Brisanje: Dugo pritisnite karticu (dugi klik) da biste izbrisali zapis\n• Pretraživanje i filtriranje: Podrška za traku za pretraživanje (pametno pretraživanje u stvarnom vremenu) i filtere oznaka i početnih slova';

  @override
  String get helpMode3Desc =>
      'Vježbajte izgovor tako što ćete slušati rečenice i ponavljati ih (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Odabir materijala: Odaberite zbirku materijala za učenje\n• Podešavanje intervala: Podesite vrijeme čekanja između rečenica tipkama [-] [+] (3 sekunde ~ 60 sekundi)\n• Pokreni/Zaustavi: Kontrola sesije osjenčanja\n• Govor: Slušajte glas i ponavljajte\n• Povratne informacije: Prikaz ocjene tačnosti (0-100) i boje\n• Uvjeti pretraživanja: Filtrirajte cilj vježbe po oznakama, nedavnim stavkama, početnom slovu';

  @override
  String get helpModeChatDesc =>
      'Vježbajte konverzaciju iz stvarnog života razgovarajući sa AI personom.';

  @override
  String get helpModeChatDetails =>
      '• AI chat: Vježbajte stvarne razgovore s personama u izborniku \'Chat\' na donjoj traci kartica\n• Postavke persone: Slobodno odredite spol, ime i jezični kod druge osobe\n• GPS situacijska drama: Preporučuje teme razgovora prikladne za mjesto prepoznavanjem vaše trenutne lokacije\n• Dvojezično: Odgovor AI se prikazuje s prijevodom kako bi se maksimizirao učinak učenja\n• Upravljanje zapisima: Filtrirajte prošle povijesti razgovora i spremite određene poruke tijekom razgovora kao materijale za učenje';

  @override
  String get helpTabJson => 'JSON format';

  @override
  String get helpTabModes => 'Objašnjenje načina rada';

  @override
  String get helpTabTour => 'Probajte';

  @override
  String get helpTitle => 'Pomoć i vodiči';

  @override
  String get helpTourDesc =>
      '**Istaknuti krug** vas vodi kroz ključne funkcije.\n(Npr. dugi pritisak na karticu koju pokazuje **istaknuti krug** omogućava brisanje.)';

  @override
  String get hide => 'Sakrij';

  @override
  String importAdded(int count) {
    return 'Dodano: $count';
  }

  @override
  String get importComplete => 'Uvoz je završen';

  @override
  String get importDuplicateTitleError =>
      'Materijal s istim naslovom već postoji. Promijenite naslov i pokušajte ponovo.';

  @override
  String importErrorMessage(String error) {
    return 'Uvoz datoteke nije uspio:\\n$error';
  }

  @override
  String get importFailed => 'Uvoz nije uspio';

  @override
  String importFile(String fileName) {
    return 'Datoteka: $fileName';
  }

  @override
  String get importJsonFile => 'Uvezi JSON datoteku';

  @override
  String get importJsonFilePrompt => 'Molimo, uvezite JSON datoteku';

  @override
  String importSkipped(int count) {
    return 'Preskočeno: $count';
  }

  @override
  String importTotal(int count) {
    return 'Ukupno: $count';
  }

  @override
  String get importing => 'Uvozi se...';

  @override
  String get inputModeTitle => 'Unos';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds s';
  }

  @override
  String get invalidEmail => 'Unesite valjanu e-poštu.';

  @override
  String get kakaoContinue => 'Nastavi sa Kakao računom';

  @override
  String get labelLangCode => 'Jezični kod (npr. en-US, ko-KR)';

  @override
  String get labelName => 'Ime';

  @override
  String get labelNote => 'Bilješka';

  @override
  String get labelPOS => 'Vrsta riječi';

  @override
  String get labelRole => 'Uloga';

  @override
  String get labelSentence => 'Rečenica';

  @override
  String get labelSentenceCollection => 'Zbirka rečenica';

  @override
  String get labelSentenceType => 'Vrsta rečenice';

  @override
  String get labelShowMemorized => 'Završeno';

  @override
  String get labelType => 'Vrsta:';

  @override
  String get labelWord => 'Riječ';

  @override
  String get labelWordbook => 'Zbirka riječi';

  @override
  String get language => 'Jezik';

  @override
  String get languageSettings => 'Postavke jezika';

  @override
  String get languageSettingsTitle => 'Postavke jezika';

  @override
  String get libTitleFirstMeeting => 'Prvi susret';

  @override
  String get libTitleGreetings1 => 'Pozdravi 1';

  @override
  String get libTitleNouns1 => 'Imenice 1';

  @override
  String get libTitleVerbs1 => 'Glagoli 1';

  @override
  String get listen => 'Slušaj';

  @override
  String get listening => 'Slušam...';

  @override
  String get loadingParticipants => 'Učitavanje sudionika...';

  @override
  String get location => 'Lokacija';

  @override
  String get login => 'Prijava';

  @override
  String get logout => 'Odjava';

  @override
  String get logoutConfirmMessage => 'Želite li se odjaviti s ovog uređaja?';

  @override
  String get logoutConfirmTitle => 'Odjava';

  @override
  String get male => 'Muški';

  @override
  String get manageParticipants => 'Upravljanje sudionicima';

  @override
  String get manual => 'Ručni unos';

  @override
  String get markAsStudied => 'Označi kao naučeno';

  @override
  String get materialInfo => 'Informacije o materijalu';

  @override
  String get me => 'Ja';

  @override
  String get menuDeviceImport => 'Uvezi materijale s uređaja';

  @override
  String get menuHelp => 'Pomoć';

  @override
  String get menuLanguageSettings => 'Postavke jezika';

  @override
  String get menuOnlineLibrary => 'Online biblioteka';

  @override
  String get menuSelectMaterialSet => 'Odaberite zbirku materijala za učenje';

  @override
  String get menuSettings => 'Postavke jezika';

  @override
  String get menuTutorial => 'Uvodna tura';

  @override
  String get menuWebDownload => 'Web stranica';

  @override
  String get metadataDialogTitle => 'Detaljna klasifikacija';

  @override
  String get metadataFormType => 'Gramatički oblik';

  @override
  String get metadataRootWord => 'Korijenska riječ';

  @override
  String get micButtonTooltip => 'Započni prepoznavanje glasa';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Trenutno odabrani materijal: $name';
  }

  @override
  String get mode2Title => 'Pregled';

  @override
  String get mode3Next => 'Sljedeće';

  @override
  String get mode3Start => 'Započni';

  @override
  String get mode3Stop => 'Zaustavi';

  @override
  String get mode3TryAgain => 'Pokušaj ponovo';

  @override
  String get mySentenceCollection => 'Moja zbirka rečenica';

  @override
  String get myWordbook => 'Moja riznica riječi';

  @override
  String get neutral => 'Neutralno';

  @override
  String get newSubjectName => 'Novi naslov rječnika/zbirke rečenica';

  @override
  String get next => 'Sljedeće';

  @override
  String get noDialogueHistory => 'Nema povijesti razgovora.';

  @override
  String get noInternetWarningMic =>
      'Nema internetske veze. Prepoznavanje glasa možda neće biti moguće u offline načinu.';

  @override
  String get noInternetWarningTranslate =>
      'Nema internetske veze. Prevođenje nije moguće u offline načinu. Molimo koristite način pregleda.';

  @override
  String get noMaterialsInCategory => 'Nema materijala u ovoj kategoriji.';

  @override
  String get noParticipantsFound => 'Nema registriranih sudionika.';

  @override
  String get noRecords => 'Nema zapisa učenja za odabrani jezik';

  @override
  String get noStudyMaterial => 'Nema materijala za učenje.';

  @override
  String get noTextToPlay => 'Nema teksta za reprodukciju';

  @override
  String get noTranslationToSave => 'Nema prijevoda za spremanje';

  @override
  String get noVoiceDetected => 'Nije detektovan glas';

  @override
  String get notSelected => '- Nije odabrano -';

  @override
  String get onlineLibraryCheckInternet =>
      'Provjerite internetsku vezu ili pokušajte kasnije.';

  @override
  String get onlineLibraryLoadFailed => 'Učitavanje materijala nije uspjelo.';

  @override
  String get onlineLibraryNoMaterials => 'Nema materijala.';

  @override
  String get participantDeleted => 'Sudionik je izbrisan.';

  @override
  String get participantRename => 'Preimenuj sudionika';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Partnerski način rada';

  @override
  String get password => 'Lozinka';

  @override
  String get passwordTooShort => 'Lozinka mora imati najmanje 6 znakova.';

  @override
  String get perfect => 'Savršeno!';

  @override
  String get personaFriend => 'Lokalni prijatelj';

  @override
  String get personaGuide => 'Turistički vodič';

  @override
  String get personaTeacher => 'Profesor engleskog';

  @override
  String get playAgain => 'Igraj ponovo';

  @override
  String playbackFailed(String error) {
    return 'Reprodukcija nije uspjela: $error';
  }

  @override
  String get playing => 'Reproducira se...';

  @override
  String get posAdjective => 'Pridjev';

  @override
  String get posAdverb => 'Prilog';

  @override
  String get posConjunction => 'Veznik';

  @override
  String get posInterjection => 'Uzvici';

  @override
  String get posNoun => 'Imenica';

  @override
  String get posPreposition => 'Prijedlog';

  @override
  String get posPronoun => 'Zamjenica';

  @override
  String get posVerb => 'Glagol';

  @override
  String get practiceModeTitle => 'Vježba';

  @override
  String get practiceWordsOnly => 'Vježbajte samo riječi';

  @override
  String progress(int current, int total) {
    return 'Napredak: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Prikaži $count nedavno stvorenih';
  }

  @override
  String recognitionFailed(String error) {
    return 'Prepoznavanje glasa nije uspjelo: $error';
  }

  @override
  String get recognized => 'Prepoznato';

  @override
  String get recognizedText => 'Prepoznati izgovor:';

  @override
  String get recordDeleted => 'Zapis je obrisan';

  @override
  String get refresh => 'Osvježi';

  @override
  String get reset => 'Resetiraj';

  @override
  String get resetPracticeHistory => 'Resetiraj historiju vježbanja';

  @override
  String get retry => 'Pokušati ponovo?';

  @override
  String get reviewAll => 'Cjelokupni pregled';

  @override
  String reviewCount(int count) {
    return 'Pregled $count puta';
  }

  @override
  String get reviewModeTitle => 'Pregled';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Treća strana';

  @override
  String get roleUser => 'Korisnik';

  @override
  String get save => 'Spasi';

  @override
  String get saveData => 'Spremi podatke';

  @override
  String saveFailed(String error) {
    return 'Spremanje nije uspjelo: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Pokušajte spremiti prijevode iz načina pretraživanja';

  @override
  String get saved => 'Spremljeno';

  @override
  String get saving => 'Spremanje...';

  @override
  String score(String score) {
    return 'Tačnost: $score%';
  }

  @override
  String get scoreLabel => 'Rezultat';

  @override
  String get search => 'Pretraži';

  @override
  String get searchConditions => 'Uvjeti pretraživanja';

  @override
  String get searchSentenceHint => 'Pretražite rečenicu...';

  @override
  String get searchWordHint => 'Pretražite riječ...';

  @override
  String get sectionSentence => 'Odjeljak rečenica';

  @override
  String get sectionSentences => 'Rečenice';

  @override
  String get sectionWord => 'Odjeljak riječi';

  @override
  String get sectionWords => 'Riječi';

  @override
  String get selectExistingSubject => 'Odaberite postojeći naslov';

  @override
  String get selectMaterialPrompt => 'Odaberite materijal za učenje';

  @override
  String get selectMaterialSet => 'Odaberite zbirku materijala za učenje';

  @override
  String get selectPOS => 'Odaberite vrstu riječi';

  @override
  String get selectParticipants => 'Odaberi sudionike';

  @override
  String get selectSentenceType => 'Odaberite vrstu rečenice';

  @override
  String get selectStudyMaterial => 'Odaberite materijal za učenje';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Rečenica';

  @override
  String get signUp => 'Registracija';

  @override
  String get similarTextFound => 'Sličan tekst pronađen';

  @override
  String get skip => 'Preskoči';

  @override
  String get source => 'Izvor:';

  @override
  String get sourceLanguage => 'Izvorni jezik';

  @override
  String get sourceLanguageLabel => 'Vaš jezik (izvorni)';

  @override
  String get speakNow => 'Govori sada!';

  @override
  String get speaker => 'Govornik';

  @override
  String get speakerSelect => 'Odaberi govornika';

  @override
  String get speakingPractice => 'Vježba govora';

  @override
  String get startChat => 'Započni razgovor';

  @override
  String get startPractice => 'Započni vježbu';

  @override
  String get startTutorial => 'Pokreni vodič';

  @override
  String get startWarning => 'Upozorenje';

  @override
  String get startsWith => 'Počinje slovom';

  @override
  String get statusCheckEmail =>
      'Molimo provjerite e-poštu da biste dovršili autentifikaciju.';

  @override
  String statusDownloading(Object name) {
    return 'Preuzimanje: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Uvoz nije uspio: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name uvoz je završen';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Prijava je otkazana.';

  @override
  String statusLoginFailed(Object error) {
    return 'Prijava nije uspjela: $error';
  }

  @override
  String get statusLoginSuccess => 'Uspješna prijava.';

  @override
  String get statusLogoutSuccess => 'Odjavljeni ste.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Registracija nije uspjela: $error';
  }

  @override
  String get statusSigningUp => 'Registracija u tijeku...';

  @override
  String get stopPractice => 'Zaustavi vježbu';

  @override
  String get studyComplete => 'Učenje je završeno';

  @override
  String studyRecords(int count) {
    return 'Zapisi učenja ($count)';
  }

  @override
  String get styleFormal => 'Formalno';

  @override
  String get styleInformal => 'Neformalno';

  @override
  String get stylePolite => 'Uljudno';

  @override
  String get styleSlang => 'Sleng';

  @override
  String get subject => 'Naslov:';

  @override
  String get swapLanguages => 'Zamijeni jezike';

  @override
  String get switchToAi => 'Prebaci na AI način rada';

  @override
  String get switchToPartner => 'Prebaci na partnerski način rada';

  @override
  String get syncingData => 'Sinkroniziranje podataka...';

  @override
  String get tabConversation => 'Razgovor';

  @override
  String tabReview(int count) {
    return 'Pregled ($count)';
  }

  @override
  String get tabSentence => 'Rečenica';

  @override
  String get tabSpeaking => 'Govor';

  @override
  String tabStudyMaterial(int count) {
    return 'Materijal za učenje ($count)';
  }

  @override
  String get tabWord => 'Riječ';

  @override
  String get tagFormal => 'Poštovanje';

  @override
  String get tagSelection => 'Odabir oznake';

  @override
  String get targetLanguage => 'Ciljni jezik';

  @override
  String get targetLanguageFilter => 'Filter ciljnog jezika:';

  @override
  String get targetLanguageLabel => 'Jezik za učenje (ciljni)';

  @override
  String get thinkingTimeDesc =>
      'Vrijeme za razmišljanje prije nego što se otkrije tačan odgovor.';

  @override
  String get thinkingTimeInterval => 'Interval reprodukcije';

  @override
  String get timeUp => 'Vrijeme isteklo!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Naslovna oznaka (Kolekcija)';

  @override
  String get tooltipDecrease => 'Smanji';

  @override
  String get tooltipIncrease => 'Povećaj';

  @override
  String get tooltipSearch => 'Pretraži';

  @override
  String get tooltipSpeaking => 'Govor';

  @override
  String get tooltipStudyReview => 'Učenje+Pregled';

  @override
  String totalRecords(int count) {
    return 'Ukupno $count zapisa (prikaži sve)';
  }

  @override
  String get translate => 'Prevedi';

  @override
  String get translating => 'Prevodi se...';

  @override
  String get translation => 'Prijevod';

  @override
  String get translationComplete => 'Prijevod završen (potrebno spremanje)';

  @override
  String translationFailed(String error) {
    return 'Prijevod nije uspio: $error';
  }

  @override
  String get translationLimitExceeded => 'Prekoračeno ograničenje prijevoda';

  @override
  String get translationLimitMessage =>
      'Iskoristili ste sve besplatne dnevne prijevode (5 puta).\\n\\nŽelite li odmah napuniti 5 puta gledanjem oglasa?';

  @override
  String get translationLoaded => 'Učitavanje spremljenog prijevoda';

  @override
  String get translationRefilled => 'Broj prijevoda je napunjen 5 puta!';

  @override
  String get translationResultHint => 'Rezultat prijevoda - može se urediti';

  @override
  String get tryAgain => 'Pokušajte ponovo';

  @override
  String get tutorialAiChatDesc =>
      'Vježbajte konverzacije u stvarnom životu s AI personama.';

  @override
  String get tutorialAiChatTitle => 'AI Čet';

  @override
  String get tutorialContextDesc =>
      'Možete ga spremiti zasebno ako zapišete situaciju (npr. jutro, večer) čak i za istu rečenicu.';

  @override
  String get tutorialContextTitle => 'Oznaka situacije/konteksta';

  @override
  String get tutorialLangSettingsDesc =>
      'Postavite izvorni i ciljni jezik za prijevod.';

  @override
  String get tutorialLangSettingsTitle => 'Postavke jezika';

  @override
  String get tutorialM1ToggleDesc =>
      'Prebacite se između načina rada riječi i rečenice ovdje.';

  @override
  String get tutorialM1ToggleTitle => 'Način rada riječi/rečenice';

  @override
  String get tutorialM2DropdownDesc =>
      'Materijal za učenje možete odabrati putem gornjeg izbornika.';

  @override
  String get tutorialM2ImportDesc =>
      'Uvezite JSON datoteku iz mape na uređaju.';

  @override
  String get tutorialM2ListDesc =>
      'Možete ga obrisati dugim pritiskom (dugi klik) na ovu karticu. Provjerite i okrenite spremljenu rečenicu.';

  @override
  String get tutorialM2ListTitle => 'Lista za učenje';

  @override
  String get tutorialM2SearchDesc =>
      'Pretražite spremljene riječi i rečenice da biste ih brzo pronašli.';

  @override
  String get tutorialM2SelectDesc =>
      'Odaberite materijal za učenje pritiskom na ikonu zbirke materijala (📚) na gornjoj traci aplikacije.';

  @override
  String get tutorialM2SelectTitle => 'Odabir materijala';

  @override
  String get tutorialM3IntervalDesc =>
      'Podesite vrijeme čekanja između rečenica.';

  @override
  String get tutorialM3IntervalTitle => 'Podešavanje intervala';

  @override
  String get tutorialM3ResetDesc =>
      'Resetujte napredak i ocjenu tačnosti za početak ispočetka.';

  @override
  String get tutorialM3ResetTitle => 'Resetiraj historiju';

  @override
  String get tutorialM3SelectDesc =>
      'Odaberite materijal za vježbanje pritiskom na ikonu zbirke materijala (📚) na gornjoj traci aplikacije.';

  @override
  String get tutorialM3SelectTitle => 'Odabir materijala';

  @override
  String get tutorialM3StartDesc =>
      'Slušajte izvorni glas i ponavljajte ga pritiskom na tipku za reprodukciju.';

  @override
  String get tutorialM3StartTitle => 'Započni vježbu';

  @override
  String get tutorialM3WordsDesc =>
      'Označite ovo za vježbanje samo spremljenih riječi.';

  @override
  String get tutorialM3WordsTitle => 'Vježba riječi';

  @override
  String get tutorialMicDesc =>
      'Možete unijeti glasovnim putem pritiskom na tipku mikrofona.';

  @override
  String get tutorialMicTitle => 'Glasovni unos';

  @override
  String get tutorialSaveDesc =>
      'Spremite prevedene rezultate u zapise učenja.';

  @override
  String get tutorialSaveTitle => 'Spremanje';

  @override
  String get tutorialSwapDesc => 'Zamjenjuje vaš jezik i jezik za učenje.';

  @override
  String get tutorialTabDesc => 'Ovdje možete odabrati željeni način učenja.';

  @override
  String get tutorialTapToContinue => 'Dodirnite zaslon za nastavak';

  @override
  String get tutorialTransDesc => 'Prevodi uneseni tekst.';

  @override
  String get tutorialTransTitle => 'Prevođenje';

  @override
  String get typeExclamation => 'Usklična';

  @override
  String get typeImperative => 'Zapovjedna';

  @override
  String get typeQuestion => 'Upitna';

  @override
  String get typeStatement => 'Izjavna';

  @override
  String get usageLimitTitle => 'Dosegnuto ograničenje';

  @override
  String get useExistingText => 'Koristi postojeći tekst';

  @override
  String get viewOnlineGuide => 'Pogledajte online vodič';

  @override
  String get voluntaryTranslations => 'Dobrovoljni prijevodi';

  @override
  String get watchAdAndRefill => 'Napunite gledanjem oglasa (+5 puta)';

  @override
  String get word => 'Riječ';

  @override
  String get wordDefenseDesc =>
      'Odbranite bazu izgovarajući riječi prije nego što neprijatelji stignu.';

  @override
  String get wordDefenseTitle => 'Odbrana riječi';

  @override
  String get wordModeLabel => 'Način rada riječi';

  @override
  String get yourPronunciation => 'Vaš izgovor';

  @override
  String get ttsUnsupportedNatively =>
      'Ovaj uređaj izvorno ne podržava izgovor za ovaj jezik.';

  @override
  String get homeTab => 'Prijevod';

  @override
  String get welcomeTitle => 'Dobrodošli u Talkie!';

  @override
  String get welcomeDesc =>
      'Dobro došli u Talkie! Podržavamo preko 80 jezika širom svijeta sa 100% integritetom, uz novi vrhunski 3D dizajn i optimizovane performanse za savršeno iskustvo učenja.';

  @override
  String get welcomeButton => 'Započni';

  @override
  String get labelDetails => 'Detaljne postavke';

  @override
  String get translationResult => 'Rezultat prijevoda';

  @override
  String get inputContent => 'Uneseni sadržaj';

  @override
  String get translateNow => 'Prevedi odmah';

  @override
  String get tooltipSettingsConfirm => 'Potvrdi postavke';

  @override
  String get hintNoteExample => 'Npr.: Kontekst, homonimi, itd.';

  @override
  String get hintTagExample => 'Npr.: Posao, putovanje...';

  @override
  String get addNew => 'Dodaj novo';

  @override
  String get newNotebookTitle => 'Naziv nove bilježnice';

  @override
  String get enterNameHint => 'Unesite naziv';

  @override
  String get add => 'Dodaj';

  @override
  String get openSettings => 'Otvori postavke';

  @override
  String get helpNotebook =>
      'Odaberite mapu za spremanje prevedenih rezultata.';

  @override
  String get helpNote =>
      'Slobodno zabilježite značenje riječi, primjere ili kontekst.';

  @override
  String get helpTag =>
      'Unesite ključne riječi za kasniju klasifikaciju ili pretragu.';

  @override
  String get requestTranslation => 'Zatraži prijevod';

  @override
  String get statusRequestSuccess => 'Zahtjev za prijevod je uspješan.';

  @override
  String statusRequestFailed(String error) {
    return 'Zahtjev za prijevod nije uspio: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Jezik učenja nije podržan';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Odabrani materijal ne podržava trenutno postavljeni jezik učenja ($targetLang) i ne može se pohraniti lokalno. Želite li zatražiti prijevod?';
  }
}

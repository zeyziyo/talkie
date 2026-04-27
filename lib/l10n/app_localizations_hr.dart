// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get accuracy => 'Točnost';

  @override
  String get adLoading => 'Učitavanje oglasa. Pokušajte ponovno kasnije.';

  @override
  String get add => 'Dodaj';

  @override
  String get addNew => 'Dodaj novo';

  @override
  String get addNewSubject => 'Dodaj novi naslov';

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
  String get basicMaterialRepository => 'Osnovna pohrana rečenica/riječi';

  @override
  String get basicSentenceRepository => 'Osnovna pohrana rečenica';

  @override
  String get basicSentences => 'Osnovna pohrana rečenica';

  @override
  String get basicWordRepository => 'Osnovna pohrana riječi';

  @override
  String get basicWords => 'Osnovna pohrana riječi';

  @override
  String get cancel => 'Odustani';

  @override
  String get caseObject => 'Akuzativ';

  @override
  String get casePossessive => 'Posvojni';

  @override
  String get casePossessivePronoun => 'Posvojna zamjenica';

  @override
  String get caseReflexive => 'Povratna zamjenica';

  @override
  String get caseSubject => 'Nominativ';

  @override
  String get checking => 'Provjera...';

  @override
  String get clearAll => 'Očisti sve';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get confirmDelete => 'Želite li izbrisati ovaj zapis učenja?';

  @override
  String get contextTagHint =>
      'Zapišite situaciju da biste je lakše razlikovali kasnije';

  @override
  String get contextTagLabel =>
      'Kontekst/situacija (izborno) - npr. jutarnji pozdrav, formalno';

  @override
  String get copiedToClipboard => 'Kopirano u međuspremnik!';

  @override
  String get copy => 'Kopiraj';

  @override
  String get correctAnswer => 'Točan odgovor';

  @override
  String get createNew => 'Nastavi kao novu rečenicu';

  @override
  String get currentLocation => 'Trenutna lokacija';

  @override
  String get currentMaterialLabel => 'Trenutno odabrana zbirka materijala:';

  @override
  String get delete => 'Izbriši';

  @override
  String deleteFailed(String error) {
    return 'Brisanje nije uspjelo: $error';
  }

  @override
  String get deleteRecord => 'Izbriši zapis';

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => 'Nemate račun?';

  @override
  String get email => 'E-pošta';

  @override
  String get emailAlreadyInUse =>
      'E-mail je već registriran. Molimo prijavite se ili upotrijebite opciju zaboravljene lozinke.';

  @override
  String get enterNameHint => 'Unesite ime';

  @override
  String get enterNewSubjectName => 'Unesite novi naslov';

  @override
  String get enterSentenceHint => 'Upišite rečenicu...';

  @override
  String get enterTextHint => 'Unesite tekst za prijevod';

  @override
  String get enterTextToTranslate => 'Unesite tekst za prevođenje';

  @override
  String get enterWordHint => 'Upišite riječ...';

  @override
  String get error => 'Pogreška';

  @override
  String get errorHateSpeech => 'Ne može se prevesti jer sadrži govor mržnje.';

  @override
  String get errorOtherSafety =>
      'Prijevod je odbijen zbog AI pravila o sigurnosti.';

  @override
  String get errorProfanity => 'Ne može se prevesti jer sadrži psovke.';

  @override
  String get errorSelectCategory => 'Prvo odaberite riječ ili rečenicu!';

  @override
  String get errorSexualContent =>
      'Ne može se prevesti jer sadrži sugestivan sadržaj.';

  @override
  String get errors => 'Pogreške:';

  @override
  String get extractedText => 'Prepoznati tekst';

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
  String get formInfinitive => 'Infinitiv/Prezent';

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
  String get gameModeDesc => 'Odaberite način igre za vježbu';

  @override
  String get gameModeTitle => 'Način igre';

  @override
  String get gameOver => 'Kraj igre';

  @override
  String get gender => 'Spol';

  @override
  String get generalTags => 'Općenite oznake';

  @override
  String get getMaterials => 'Preuzmite materijale';

  @override
  String get good => 'Dobro';

  @override
  String get googleContinue => 'Nastavi s Googleom';

  @override
  String get helpJsonDesc =>
      'Slijedite ovaj format za uvoz materijala za učenje za upotrebu u načinu rada 3 kao JSON datoteku:';

  @override
  String get helpJsonTypeSentence => 'Rečenica';

  @override
  String get helpJsonTypeWord => 'Riječ';

  @override
  String get helpMode1Desc =>
      'Započnite učenje jezika na najintuitivniji način, uz premium 3D mikrofon i ikone velikih tipkovnica.';

  @override
  String get helpMode1Details =>
      '• Postavke jezika: Provjerite svoj jezik i jezik koji učite pomoću gumba za jezik na vrhu početnog zaslona i promijenite jezik učenja.\n• Jednostavan unos: Odmah unesite putem velikog mikrofona i tekstualnog okvira u sredini.\n• Provjera postavki: Pritisnite plavi gumb za potvrdu s desne strane nakon završetka unosa. Pojavit će se prozor s detaljnim postavkama.\n• Detaljne postavke: U prikazanom dijaloškom okviru možete odrediti zbirku podataka za spremanje, bilješke i oznake.\n• Prevedi sada: Nakon što dovršite postavke, pritisnite zeleni gumb za prijevod i umjetna inteligencija će odmah izvršiti prijevod.\n• Automatsko pretraživanje: Tijekom unosa, slični postojeći prijevodi se detektiraju i prikazuju u stvarnom vremenu.\n• Slušanje i spremanje: Slušajte izgovor s ikonom zvučnika ispod rezultata prijevoda i dodajte ga na popis za učenje putem \'Spremi podatke\'.';

  @override
  String get helpMode2Desc =>
      'Pregledajte spremljene rečenice i provjerite jeste li ih zapamtili pomoću funkcije automatskog skrivanja.';

  @override
  String get helpMode2Details =>
      '• Odabir zbirke: Koristite \'Odabir zbirke\' ili \'Online arhivu\' u gornjem desnom izborniku (⋮)\n• Okretanje kartica: Provjerite prijevod pomoću \'Prikaži/Sakrij\'\n• Slušanje: Reproducirajte izgovor pomoću ikone zvučnika\n• Završeno učenje: Označite kvačicom (V) za označavanje dovršenog učenja\n• Brisanje: Dugo pritisnite karticu za brisanje zapisa\n• Pretraživanje i filtriranje: Podrška za traku za pretraživanje (pametno pretraživanje u stvarnom vremenu) i oznake, filtre početnih slova';

  @override
  String get helpMode3Desc =>
      'Vježbajte izgovor slušajući i ponavljajući rečenice (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Odabir materijala: Odaberite zbirku materijala za učenje\n• Postavka intervala: Podesite vrijeme čekanja između rečenica pomoću gumba [-] [+]. (3 sekunde ~ 60 sekundi)\n• Pokreni/Zaustavi: Kontrola sesije shadowinga\n• Govorenje: Slušajte glas i ponavljajte\n• Povratne informacije: Prikaz točnosti u bodovima (0-100) i bojama\n• Uvjeti pretraživanja: Filtriranje ciljanih stavki za vježbu prema oznaci, nedavnim stavkama, početnom slovu';

  @override
  String get helpNote =>
      'Slobodno zapišite značenje riječi, primjere ili situacije.';

  @override
  String get helpNotebook =>
      'Odaberite mapu za spremanje prevedenih rezultata.';

  @override
  String get helpTabJson => 'JSON format';

  @override
  String get helpTabModes => 'Objašnjenje načina rada';

  @override
  String get helpTabQuickStart => 'Brzi početak';

  @override
  String get helpTabTour => 'Isprobajte';

  @override
  String get helpTag =>
      'Unesite ključne riječi za kasniju klasifikaciju ili pretraživanje.';

  @override
  String get helpTitle => 'Pomoć i vodiči';

  @override
  String get helpTourDesc =>
      '**Istaknuti krug** vodi vas kroz glavne funkcije.\n(Na primjer: možete izbrisati karticu koju pokazuje **istaknuti krug** dugim pritiskom na nju.)';

  @override
  String get hide => 'Sakrij';

  @override
  String get hintNoteExample => 'Primjer: kontekst, homonimi itd.';

  @override
  String get hintTagExample => 'Primjer: posao, putovanje...';

  @override
  String get homeTab => 'Prijevod';

  @override
  String importAdded(int count) {
    return 'Dodano: $count';
  }

  @override
  String get importComplete => 'Uvoz završen';

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
  String importFolderSuccess(num files, num entries) {
    return 'Uvezeno je $files datoteka, $entries stavki.';
  }

  @override
  String get importJsonFile => 'Uvezi JSON datoteku';

  @override
  String get importJsonFilePrompt => 'Uvezite JSON datoteku';

  @override
  String importSkipped(int count) {
    return 'Preskočeno: $count';
  }

  @override
  String get importSourceFile => 'Jedna JSON datoteka';

  @override
  String get importSourceFolder => 'Mapa (struktura biblioteke prema jeziku)';

  @override
  String get importSourceTitle => 'Odaberite izvor uvoza';

  @override
  String get importSourceZip => 'ZIP datoteka (komprimirana mapa)';

  @override
  String importTotal(int count) {
    return 'Ukupno: $count';
  }

  @override
  String get importing => 'Uvozi se...';

  @override
  String get inputContent => 'Uneseni sadržaj';

  @override
  String get inputLanguage => 'Jezik unosa';

  @override
  String get inputModeTitle => 'Unos';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds sekundi';
  }

  @override
  String get invalidEmail => 'Unesite valjanu adresu e-pošte.';

  @override
  String get kakaoContinue => 'Nastavi s Kakao računom';

  @override
  String get labelDetails => 'Detaljne postavke';

  @override
  String get labelFilterMaterial => 'Materijali';

  @override
  String get labelFilterTag => 'Oznake';

  @override
  String get labelLangCode => 'Jezični kod (npr. en-US, ko-KR)';

  @override
  String get labelNote => 'Bilješka';

  @override
  String get labelPOS => 'Vrsta riječi';

  @override
  String get labelSentence => 'Rečenica';

  @override
  String get labelSentenceCollection => 'Zbirka rečenica';

  @override
  String get labelSentenceType => 'Vrsta rečenice';

  @override
  String get labelShowMemorized => 'Gotovo';

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
  String get listening => 'Slušanje...';

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
  String get manual => 'Ručni unos';

  @override
  String get markAsStudied => 'Označi kao učeno';

  @override
  String get materialInfo => 'Informacije o materijalu';

  @override
  String get menuDeviceImport => 'Uvezi materijal s uređaja';

  @override
  String get menuHelp => 'Pomoć';

  @override
  String get menuLanguageSettings => 'Postavke jezika';

  @override
  String get menuOnlineLibrary => 'Online knjižnica';

  @override
  String get menuSelectMaterialSet => 'Odaberite zbirku materijala za učenje';

  @override
  String get menuSettings => 'Postavke jezika';

  @override
  String get menuTutorial => 'Uvodna obuka';

  @override
  String get menuWebDownload => 'Web stranica';

  @override
  String get metadataDialogTitle => 'Detaljna klasifikacija';

  @override
  String get metadataFormType => 'Gramatički oblik';

  @override
  String get metadataRootWord => 'Osnovni oblik (Root Word)';

  @override
  String get micButtonTooltip => 'Započni prepoznavanje glasa';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Trenutno odabrana zbirka materijala: $name';
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
  String get mode3TryAgain => 'Pokušajte ponovo';

  @override
  String get mySentenceCollection => 'Moja zbirka rečenica';

  @override
  String get myWordbook => 'Moj rječnik';

  @override
  String get neutral => 'Neutralno';

  @override
  String get newNotebookTitle => 'Naziv nove bilježnice';

  @override
  String get newSubjectName => 'Novi naslov rječnika/zbirke rečenica';

  @override
  String get next => 'Sljedeće';

  @override
  String get noDataForLanguage =>
      'Nema podataka za odabrani jezik u lokalnoj bazi podataka. Preuzmite podatke ili odaberite drugi jezik.';

  @override
  String get noMaterialsInCategory => 'U ovoj kategoriji nema materijala.';

  @override
  String get noRecords => 'Nema zapisa učenja za odabrani jezik';

  @override
  String get noStudyMaterial => 'Nema materijala za učenje.';

  @override
  String get noTextToPlay => 'Nema teksta za reprodukciju';

  @override
  String get noTranslationToSave => 'Nema prijevoda za spremanje';

  @override
  String get noVoiceDetected => 'Nije otkriven glas';

  @override
  String get notSelected => '- Nije odabrano -';

  @override
  String get noteGuidance =>
      'Gdje unosite dodatne pojedinosti za točniji prijevod';

  @override
  String get onlineLibraryCheckInternet =>
      'Provjerite internetsku vezu ili pokušajte ponovo kasnije.';

  @override
  String get onlineLibraryLoadFailed => 'Učitavanje materijala nije uspjelo.';

  @override
  String get onlineLibraryNoMaterials => 'Nema materijala.';

  @override
  String get openSettings => 'Otvori postavke';

  @override
  String get password => 'Lozinka';

  @override
  String get passwordTooShort => 'Lozinka je prekratka';

  @override
  String get perfect => 'Savršeno!';

  @override
  String get pickGallery => 'Odaberi iz galerije';

  @override
  String get playAgain => 'Igraj ponovo';

  @override
  String playbackFailed(String error) {
    return 'Reprodukcija nije uspjela: $error';
  }

  @override
  String get playing => 'Reprodukcija...';

  @override
  String get posAdjective => 'Pridjev';

  @override
  String get posAdverb => 'Prilog';

  @override
  String get posArticle => 'Član';

  @override
  String get posConjunction => 'Veznik';

  @override
  String get posInterjection => 'Uzviki';

  @override
  String get posNoun => 'Imenica';

  @override
  String get posParticle => 'Čestica';

  @override
  String get posPreposition => 'Prijedlog';

  @override
  String get posPronoun => 'Zamjenica';

  @override
  String get posVerb => 'Glagol';

  @override
  String get practiceModeTitle => 'Vježba';

  @override
  String get practiceWordsOnly => 'Samo vježbanje riječi';

  @override
  String get processing => 'Obrada u tijeku...';

  @override
  String progress(int current, int total) {
    return 'Napredak: $current / $total';
  }

  @override
  String get quickStartStep1Desc =>
      'Prvo odredite svoj jezik i jezik za učenje u Izbornik > Postavke jezika.';

  @override
  String get quickStartStep1Title => '1. Postavite jezik';

  @override
  String get quickStartStep2Desc =>
      'Stvorite vlastite kartice za učenje redoslijedom unos (mikrofon/tipkovnica) -> prijevod -> spremanje.';

  @override
  String get quickStartStep2Title => '2. Osnovni tijek';

  @override
  String get quickStartStep3Desc =>
      'Review translated words and sentences in your study list, and practice speaking directly in the pronunciation practice tab.';

  @override
  String get quickStartStep3Title => '3. Korištenje načina rada';

  @override
  String recentNItems(int count) {
    return 'Prikaži zadnjih $count stvorenih';
  }

  @override
  String recognitionFailed(String error) {
    return 'Prepoznavanje glasa nije uspjelo: $error';
  }

  @override
  String get recognized => 'Prepoznavanje završeno';

  @override
  String get recognizedText => 'Prepoznati izgovor:';

  @override
  String get recordDeleted => 'Zapis je izbrisan';

  @override
  String get refresh => 'Osvježi';

  @override
  String get requestTranslation => 'Zatraži prijevod';

  @override
  String get reset => 'Resetiraj';

  @override
  String get resetPracticeHistory => 'Resetiraj povijest vježbanja';

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
  String get save => 'Spremi';

  @override
  String get saveAsSentence => 'Spremi kao rečenicu';

  @override
  String get saveAsWord => 'Spremi kao riječ';

  @override
  String get saveData => 'Spremi podatke';

  @override
  String saveFailed(String error) {
    return 'Spremanje nije uspjelo: $error';
  }

  @override
  String get saveToHistory => 'Spremi u povijest skeniranja';

  @override
  String get saveTranslationsFromSearch =>
      'Pokušajte spremiti prijevode iz načina pretraživanja';

  @override
  String get saved => 'Spremanje završeno';

  @override
  String get saving => 'Spremanje...';

  @override
  String get scanInstructions => 'Odaberite sliku za skeniranje';

  @override
  String get scanNoMatch =>
      '사진에서 설정된 학습 언어와 일치하는 텍스트를 찾을 수 없습니다. 언어 설정을 확인해 보세요.';

  @override
  String get scanNotSupported =>
      'Skeniranje nije podržano za ovaj jezik. OCR trenutno podržava samo latinična, kineska, devanagari (npr. hindi), japanska i korejska slova.';

  @override
  String get scanLabel => 'Skeniraj';

  @override
  String score(String score) {
    return 'Točnost: $score%';
  }

  @override
  String get scoreLabel => 'Rezultat';

  @override
  String get search => 'Traži';

  @override
  String get searchConditions => 'Uvjeti pretraživanja';

  @override
  String get searchSentenceHint => 'Pretražite rečenice...';

  @override
  String get searchWordHint => 'Pretražite riječi...';

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
  String get selectStudyMaterial => 'Odaberite materijal za učenje';

  @override
  String get sentence => 'Rečenica';

  @override
  String get signUp => 'Registracija';

  @override
  String get simplifiedGuidance =>
      'Trenutno pretvorite svakodnevne razgovore na strani jezik! Talkie bilježi vaš jezični život.';

  @override
  String get sourceLanguageLabel => 'Moj jezik';

  @override
  String get startTutorial => 'Započni upute';

  @override
  String get startsWith => 'Počinje slovom';

  @override
  String get statusCheckEmail => 'Provjerite e-poštu';

  @override
  String statusDownloading(String name) {
    return 'Preuzimanje: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return 'Uvoz nije uspio: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$name je uspješno uvezen';
  }

  @override
  String statusLoginFailed(String error) {
    return 'Prijava nije uspjela: $error';
  }

  @override
  String get statusLoginSuccess => 'Prijava uspješna';

  @override
  String get statusLogoutSuccess => 'Odjava uspješna';

  @override
  String statusRequestFailed(String error) {
    return 'Zahtjev za prijevod nije uspio: $error';
  }

  @override
  String get statusRequestSuccess => 'Zahtjev za prijevod je uspješan.';

  @override
  String get stopPractice => 'Zaustavi vježbu';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Odabrani materijal ne podržava trenutno postavljeni jezik učenja ($targetLang) i ne može se pohraniti lokalno. Želite li zatražiti prijevod?';
  }

  @override
  String get studyLangNotFoundTitle => 'Jezik učenja nije podržan';

  @override
  String get styleFormal => 'Formalno';

  @override
  String get styleInformal => 'Neformalno';

  @override
  String get stylePolite => 'Uljudno';

  @override
  String get styleSlang => 'Sleng';

  @override
  String get swapLanguages => 'Zamijeni jezike';

  @override
  String get syncingData => 'Sinkronizacija podataka u tijeku...';

  @override
  String tabReview(int count) {
    return 'Pregled ($count)';
  }

  @override
  String get tabSentence => 'Rečenica';

  @override
  String get tabSpeaking => 'Govorenje';

  @override
  String tabStudyMaterial(int count) {
    return 'Materijal za učenje ($count)';
  }

  @override
  String get tabWord => 'Riječ';

  @override
  String get tagFormal => 'Formalno';

  @override
  String get tagSelection => 'Odabir oznake';

  @override
  String get targetLanguage => 'Ciljni jezik';

  @override
  String get targetLanguageFilter => 'Filter ciljnog jezika:';

  @override
  String get targetLanguageLabel => 'Jezik učenja (Cilj)';

  @override
  String get thinkingTimeDesc =>
      'Vrijeme za razmišljanje prije otkrivanja točnog odgovora.';

  @override
  String get thinkingTimeInterval => 'Vremenski razmak reprodukcije';

  @override
  String get timeUp => 'Vrijeme je isteklo!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Naslov oznake (Zbirka)';

  @override
  String get tooltipDecrease => 'Smanji';

  @override
  String get tooltipIncrease => 'Povećaj';

  @override
  String get tooltipSearch => 'Traži';

  @override
  String get tooltipSettingsConfirm => 'Potvrdi postavke';

  @override
  String get tooltipSpeaking => 'Govorenje';

  @override
  String get tooltipStudyReview => 'Učenje + Pregled';

  @override
  String totalRecords(int count) {
    return 'Ukupno $count zapisa (prikaži sve)';
  }

  @override
  String get translate => 'Prevedi';

  @override
  String get translateNow => 'Prevedi sada';

  @override
  String get translating => 'Prevođenje...';

  @override
  String get translation => 'Prijevod';

  @override
  String get translationComplete => 'Prijevod završen (potrebno spremanje)';

  @override
  String translationFailed(String error) {
    return 'Prijevod nije uspio: $error';
  }

  @override
  String get translationLanguage => 'Jezik prijevoda';

  @override
  String get translationLimitExceeded => 'Prekoračeno je ograničenje prijevoda';

  @override
  String get translationLimitMessage =>
      'Iskoristili ste sve svoje besplatne dnevne prijevode (5 puta).\\n\\Želite li odmah napuniti 5 puta gledanjem oglasa?';

  @override
  String get translationLoaded => 'Učitavanje spremljenog prijevoda';

  @override
  String get translationRefilled => 'Broj prijevoda je napunjen 5 puta!';

  @override
  String get translationResult => 'Rezultat prijevoda';

  @override
  String get translationResultHint => 'Rezultat prijevoda - može se uređivati';

  @override
  String get tryAgain => 'Pokušajte ponovo';

  @override
  String get ttsInstallGuide =>
      'Instalirajte podatke za odgovarajući jezik u Postavke sustava Android > Google TTS.';

  @override
  String get ttsMissing =>
      'Glasovni pogon za ovaj jezik nije instaliran na vašem uređaju.';

  @override
  String get ttsUnsupportedNatively =>
      'Ovaj uređaj ne podržava izvorni izgovor za ovaj jezik.';

  @override
  String get tutorialContextDesc =>
      'Možete ga spremiti zasebno ako zapišete situaciju (npr. jutro, večer), čak i ako je ista rečenica.';

  @override
  String get tutorialContextTitle => 'Oznaka situacije/konteksta';

  @override
  String get tutorialLangSettingsDesc =>
      'Postavite izvorni i ciljni jezik za prevođenje.';

  @override
  String get tutorialLangSettingsTitle => 'Postavke jezika';

  @override
  String get tutorialM1ToggleDesc =>
      'Ovdje prebacite način rada s riječima i rečenicama.';

  @override
  String get tutorialM1ToggleTitle => 'Način rada s riječima/rečenicama';

  @override
  String get tutorialM2DropdownDesc =>
      'Materijal za učenje možete odabrati putem gornjeg izbornika.';

  @override
  String get tutorialM2ImportDesc =>
      'Uvezite JSON datoteku iz mape na svom uređaju.';

  @override
  String get tutorialM2ListDesc =>
      'Možete izbrisati ovu karticu dugim pritiskom na nju (Dugi klik). Provjerite spremljene rečenice i okrenite ih.';

  @override
  String get tutorialM2ListTitle => 'Popis učenja';

  @override
  String get tutorialM2SearchDesc =>
      'Možete brzo pronaći spremljene riječi i rečenice pretraživanjem.';

  @override
  String get tutorialM2SelectDesc =>
      'Pritisnite ikonu zbirke materijala (📚) na gornjoj traci aplikacije da biste odabrali materijal za učenje.';

  @override
  String get tutorialM2SelectTitle => 'Odabir materijala';

  @override
  String get tutorialM3IntervalDesc =>
      'Podesite vrijeme čekanja između rečenica.';

  @override
  String get tutorialM3IntervalTitle => 'Postavljanje intervala';

  @override
  String get tutorialM3ResetDesc =>
      'Resetirajte napredak i rezultat točnosti za početak ispočetka.';

  @override
  String get tutorialM3ResetTitle => 'Resetiraj povijest';

  @override
  String get tutorialM3SelectDesc =>
      'Pritisnite ikonu zbirke materijala (📚) na gornjoj traci aplikacije da biste odabrali materijal za vježbu.';

  @override
  String get tutorialM3SelectTitle => 'Odabir materijala';

  @override
  String get tutorialM3StartDesc =>
      'Pritisnite gumb za reprodukciju da biste poslušali glas izvornog govornika i ponovili ga.';

  @override
  String get tutorialM3StartTitle => 'Započni vježbu';

  @override
  String get tutorialM3WordsDesc =>
      'Označite ovo da biste vježbali samo spremljene riječi.';

  @override
  String get tutorialM3WordsTitle => 'Vježbanje riječi';

  @override
  String get tutorialMicDesc =>
      'Možete unijeti glas pritiskom na gumb mikrofona.';

  @override
  String get tutorialMicTitle => 'Glasovni unos';

  @override
  String get tutorialSaveDesc => 'Spremite prevedene rezultate u zapis učenja.';

  @override
  String get tutorialSaveTitle => 'Spremi';

  @override
  String get tutorialSwapDesc => 'Zamijenite moj jezik i jezik učenja.';

  @override
  String get tutorialTabDesc => 'Ovdje možete odabrati željeni način učenja.';

  @override
  String get tutorialTapToContinue => 'Dodirnite zaslon za nastavak';

  @override
  String get tutorialTransDesc => 'Prevedite uneseni tekst.';

  @override
  String get tutorialTransTitle => 'Prevedi';

  @override
  String get typeExclamation => 'Usklična rečenica';

  @override
  String get typeIdiom => 'Idiom';

  @override
  String get typeImperative => 'Zapovjedna rečenica';

  @override
  String get typeProverb => 'Poslovica';

  @override
  String get typeQuestion => 'Upitna rečenica';

  @override
  String get typeStatement => 'Izjavna rečenica';

  @override
  String get usageLimitTitle => 'Dosegnuto ograničenje';

  @override
  String get useExistingText => 'Koristi postojeći tekst';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => 'Pogledajte online vodič';

  @override
  String get voluntaryTranslations => 'Dobrovoljni prijevodi';

  @override
  String get watchAdAndRefill => 'Napunite gledanjem oglasa (+5 puta)';

  @override
  String get welcomeButton => 'Započni';

  @override
  String get welcomeDesc =>
      'Dobrodošli u Talkie! Podržavamo preko 80 jezika diljem svijeta sa 100% integritetom, uz novi premium 3D dizajn i optimizirane performanse za savršeno iskustvo učenja.';

  @override
  String get welcomeTitle => 'Dobrodošli u Talkie!';

  @override
  String get word => 'Riječ';

  @override
  String get wordDefenseDesc =>
      'Obranite bazu govoreći riječi prije nego što neprijatelji stignu.';

  @override
  String get wordDefenseTitle => 'Obrana riječi';

  @override
  String get wordModeLabel => 'Način rada s riječima';

  @override
  String get yourPronunciation => 'Moj izgovor';
}

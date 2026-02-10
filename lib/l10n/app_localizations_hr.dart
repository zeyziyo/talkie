// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get helpTitle => 'Pomoć i vodiči';

  @override
  String get helpTabModes => 'Objašnjenje načina rada';

  @override
  String get helpTabJson => 'JSON format';

  @override
  String get helpTabTour => 'Isprobajte';

  @override
  String get helpMode1Desc =>
      'Prepoznajte govor, prevedite ga i poslušajte rezultat.';

  @override
  String get helpMode1Details =>
      '• Postavke jezika: Promijenite jezik pritiskom na ikone gore/dolje\n• Prebacivanje riječi/rečenica: Promjena načina rada\n• Glasovni unos: Pritisnite ikonu mikrofona za početak/zaustavljanje slušanja\n• Unos teksta: Izravno unesite tekst za prevođenje\n• Automatsko pretraživanje: Otkrivanje sličnih postojećih rečenica\n• Prijevod: Pritisnite gumb za prijevod za trenutni prijevod\n• Slušanje: Reprodukcija TTS-a pomoću ikone zvučnika\n• Spremanje: Dodajte zapis pomoću \'Spremi podatke\'\n• Brisanje: Resetiranje unosa';

  @override
  String get helpMode2Desc =>
      'Pregledajte spremljene rečenice i provjerite jeste li ih zapamtili pomoću funkcije automatskog skrivanja.';

  @override
  String get helpMode2Details =>
      '• Odabir materijala: Odaberite određenu zbirku materijala ili \'Cjelokupni pregled\'\n• Okretanje kartice: Provjerite prijevod pomoću \'Prikaži/Sakrij\' (automatska provjera učenja)\n• Slušanje: Reprodukcija TTS-a rečenice\n• Završeno učenje: Označite kvačicom (V) kao završeno učenje\n• Brisanje: Dugo pritisnite karticu za brisanje zapisa\n• Uvjeti pretraživanja: Filtriranje prema oznaci, nedavnim stavkama, početnom slovu';

  @override
  String get helpMode3Desc =>
      'Vježbajte izgovor slušajući i ponavljajući rečenice (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Odabir materijala: Odaberite zbirku materijala za učenje\n• Postavka intervala: Podesite vrijeme čekanja između rečenica pomoću gumba [-] [+]. (3 sekunde ~ 60 sekundi)\n• Pokreni/Zaustavi: Kontrola sesije shadowinga\n• Govorenje: Slušajte glas i ponavljajte\n• Povratne informacije: Prikaz točnosti u bodovima (0-100) i bojama\n• Uvjeti pretraživanja: Filtriranje ciljanih stavki za vježbu prema oznaci, nedavnim stavkama, početnom slovu';

  @override
  String get helpModeChatDesc =>
      'Vježbajte razgovor u stvarnim situacijama razgovarajući s AI osobom.';

  @override
  String get helpModeChatDetails =>
      '• AI Chat: Vježbajte razgovor govoreći na svom jeziku\n• Više persona: Možete promijeniti spol/jezik/ime druge osobe pomoću izbornika iznad oblačića za razgovor\n• Dodavanje partnera: Dodajte novog sugovornika (Stranger) pomoću gumba +\n• GPS: Situacijska drama temeljena na trenutnoj lokaciji\n• Automatsko spremanje: Automatski prijevod i spremanje sadržaja razgovora';

  @override
  String get helpJsonDesc =>
      'Slijedite ovaj format za uvoz materijala za učenje za upotrebu u načinu rada 3 kao JSON datoteku:';

  @override
  String get helpDialogueImportDesc =>
      'Uvezite cijeli skup dijaloga kao JSON datoteku.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON struktura: Koristite niz `dialogues` umjesto `entries`\n• Automatski oporavak: Naslov dijaloga, persona i redoslijed poruka se oporavljaju.\n• Lokacija: Uvezeni dijalozi pojavljuju se na kartici \'Povijest\' AI načina razgovora.';

  @override
  String get helpTourDesc =>
      '**Istaknuti krug** vodi vas kroz glavne funkcije.\n(Na primjer: možete izbrisati karticu koju pokazuje **istaknuti krug** dugim pritiskom na nju.)';

  @override
  String get partnerMode => 'Partnerski način';

  @override
  String get manual => 'Ručni unos';

  @override
  String get speaker => 'Govornik';

  @override
  String get switchToAi => 'Prebaci na AI način';

  @override
  String get switchToPartner => 'Prebaci na partnerski način';

  @override
  String get currentLocation => 'Trenutna lokacija';

  @override
  String get location => 'Lokacija';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Ja';

  @override
  String get currentMaterialLabel => 'Trenutno odabrana zbirka materijala:';

  @override
  String get basicMaterialRepository => 'Osnovna pohrana rečenica/riječi';

  @override
  String get word => 'Riječ';

  @override
  String get sentence => 'Rečenica';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Pregled ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materijal za učenje ($count)';
  }

  @override
  String get mode2Title => 'Pregled';

  @override
  String get search => 'Traži';

  @override
  String get translate => 'Prevedi';

  @override
  String get listen => 'Slušaj';

  @override
  String get saveData => 'Spremi podatke';

  @override
  String get saved => 'Spremanje završeno';

  @override
  String get delete => 'Izbriši';

  @override
  String get materialInfo => 'Informacije o materijalu';

  @override
  String get cancel => 'Odustani';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get refresh => 'Osvježi';

  @override
  String studyRecords(int count) {
    return 'Zapisi učenja ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filter ciljnog jezika:';

  @override
  String get noRecords => 'Nema zapisa učenja za odabrani jezik';

  @override
  String get saveTranslationsFromSearch =>
      'Pokušajte spremiti prijevode iz načina pretraživanja';

  @override
  String get flip => 'Prikaži';

  @override
  String get hide => 'Sakrij';

  @override
  String get deleteRecord => 'Izbriši zapis';

  @override
  String get confirmDelete => 'Želite li izbrisati ovaj zapis učenja?';

  @override
  String get recordDeleted => 'Zapis je izbrisan';

  @override
  String deleteFailed(String error) {
    return 'Brisanje nije uspjelo: $error';
  }

  @override
  String get importJsonFile => 'Uvezi JSON datoteku';

  @override
  String get importing => 'Uvozi se...';

  @override
  String get importComplete => 'Uvoz završen';

  @override
  String get importFailed => 'Uvoz nije uspio';

  @override
  String importFile(String fileName) {
    return 'Datoteka: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Ukupno: $count';
  }

  @override
  String importAdded(int count) {
    return 'Dodano: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Preskočeno: $count';
  }

  @override
  String get errors => 'Pogreške:';

  @override
  String get error => 'Pogreška';

  @override
  String importErrorMessage(String error) {
    return 'Uvoz datoteke nije uspio:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Odaberite materijal za učenje';

  @override
  String get subject => 'Naslov:';

  @override
  String get source => 'Izvor:';

  @override
  String get file => 'Datoteka:';

  @override
  String progress(int current, int total) {
    return 'Napredak: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Uvezite JSON datoteku';

  @override
  String get selectMaterialPrompt => 'Odaberite materijal za učenje';

  @override
  String get studyComplete => 'Učenje završeno';

  @override
  String get markAsStudied => 'Označi kao učeno';

  @override
  String get listening => 'Slušanje...';

  @override
  String get recognized => 'Prepoznavanje završeno';

  @override
  String recognitionFailed(String error) {
    return 'Prepoznavanje glasa nije uspjelo: $error';
  }

  @override
  String get checking => 'Provjera...';

  @override
  String get translating => 'Prevođenje...';

  @override
  String get translationComplete => 'Prijevod završen (potrebno spremanje)';

  @override
  String get translationLoaded => 'Učitavanje spremljenog prijevoda';

  @override
  String translationFailed(String error) {
    return 'Prijevod nije uspio: $error';
  }

  @override
  String get enterTextToTranslate => 'Unesite tekst za prevođenje';

  @override
  String get saving => 'Spremanje...';

  @override
  String get noTranslationToSave => 'Nema prijevoda za spremanje';

  @override
  String saveFailed(String error) {
    return 'Spremanje nije uspjelo: $error';
  }

  @override
  String get playing => 'Reprodukcija...';

  @override
  String get noTextToPlay => 'Nema teksta za reprodukciju';

  @override
  String playbackFailed(String error) {
    return 'Reprodukcija nije uspjela: $error';
  }

  @override
  String get sourceLanguage => 'Izvorni jezik';

  @override
  String get targetLanguage => 'Ciljni jezik';

  @override
  String get similarTextFound => 'Pronađen sličan tekst';

  @override
  String get useExistingText => 'Koristi postojeći tekst';

  @override
  String get createNew => 'Nastavi kao novu rečenicu';

  @override
  String reviewCount(int count) {
    return 'Pregled $count puta';
  }

  @override
  String get tabSpeaking => 'Govorenje';

  @override
  String get speakingPractice => 'Vježba govorenja';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds sekundi';
  }

  @override
  String get yourPronunciation => 'Moj izgovor';

  @override
  String get correctAnswer => 'Točan odgovor';

  @override
  String score(String score) {
    return 'Točnost: $score%';
  }

  @override
  String get perfect => 'Savršeno!';

  @override
  String get good => 'Dobro';

  @override
  String get tryAgain => 'Pokušajte ponovo';

  @override
  String get startPractice => 'Započni vježbu';

  @override
  String get stopPractice => 'Zaustavi vježbu';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Započni tutorijal';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Glasovni unos';

  @override
  String get tutorialMicDesc =>
      'Možete unijeti glas pritiskom na gumb mikrofona.';

  @override
  String get tutorialTabDesc => 'Ovdje možete odabrati željeni način učenja.';

  @override
  String get tutorialTapToContinue => 'Dodirnite zaslon za nastavak';

  @override
  String get tutorialTransTitle => 'Prevedi';

  @override
  String get tutorialTransDesc => 'Prevedite uneseni tekst.';

  @override
  String get tutorialSaveTitle => 'Spremi';

  @override
  String get tutorialSaveDesc => 'Spremite prevedene rezultate u zapis učenja.';

  @override
  String get tutorialM2SelectTitle => 'Odabir materijala';

  @override
  String get tutorialM2SelectDesc =>
      'Pritisnite ikonu zbirke materijala (📚) na gornjoj traci aplikacije da biste odabrali materijal za učenje.';

  @override
  String get tutorialM3SelectDesc =>
      'Pritisnite ikonu zbirke materijala (📚) na gornjoj traci aplikacije da biste odabrali materijal za vježbu.';

  @override
  String get tutorialM2ListTitle => 'Popis učenja';

  @override
  String get tutorialM2ListDesc =>
      'Možete izbrisati ovu karticu dugim pritiskom na nju (Dugi klik). Provjerite spremljene rečenice i okrenite ih.';

  @override
  String get tutorialM3SelectTitle => 'Odabir materijala';

  @override
  String get tutorialM3IntervalTitle => 'Postavljanje intervala';

  @override
  String get tutorialM3IntervalDesc =>
      'Podesite vrijeme čekanja između rečenica.';

  @override
  String get tutorialM3StartTitle => 'Započni vježbu';

  @override
  String get tutorialM3StartDesc =>
      'Pritisnite gumb za reprodukciju da biste poslušali glas izvornog govornika i ponovili ga.';

  @override
  String get startWarning => 'Upozorenje';

  @override
  String get noVoiceDetected => 'Nije otkriven glas';

  @override
  String get tooltipSearch => 'Traži';

  @override
  String get tooltipStudyReview => 'Učenje + Pregled';

  @override
  String get tooltipSpeaking => 'Govorenje';

  @override
  String get tooltipDecrease => 'Smanji';

  @override
  String get tooltipIncrease => 'Povećaj';

  @override
  String get languageSettings => 'Postavke jezika';

  @override
  String get tutorialM2DropdownDesc =>
      'Materijal za učenje možete odabrati putem gornjeg izbornika.';

  @override
  String get tutorialM2ImportDesc =>
      'Uvezite JSON datoteku iz mape na svom uređaju.';

  @override
  String get tutorialLangSettingsTitle => 'Postavke jezika';

  @override
  String get tutorialLangSettingsDesc =>
      'Postavite izvorni i ciljni jezik za prevođenje.';

  @override
  String get copy => 'Kopiraj';

  @override
  String get copiedToClipboard => 'Kopirano u međuspremnik!';

  @override
  String get tutorialContextTitle => 'Oznaka situacije/konteksta';

  @override
  String get tutorialContextDesc =>
      'Možete ga spremiti zasebno ako zapišete situaciju (npr. jutro, večer), čak i ako je ista rečenica.';

  @override
  String get thinkingTimeInterval => 'Interval vremena razmišljanja';

  @override
  String get thinkingTimeDesc =>
      'Vrijeme za razmišljanje prije otkrivanja točnog odgovora.';

  @override
  String get autoPlay => 'Automatska reprodukcija';

  @override
  String get timeUp => 'Vrijeme je isteklo!';

  @override
  String get gameModeTitle => 'Način igre';

  @override
  String get gameModeDesc => 'Odaberite način igre za vježbu';

  @override
  String get wordDefenseTitle => 'Obrana riječi';

  @override
  String get wordDefenseDesc =>
      'Obranite bazu govoreći riječi prije nego što neprijatelji stignu.';

  @override
  String get dialogueQuestTitle => 'Potraga za dijalogom';

  @override
  String get dialogueQuestDesc =>
      'Vježbajte razgovor kroz igranje uloga. Odaberite prikladan odgovor i izgovorite ga.';

  @override
  String get labelType => 'Vrsta:';

  @override
  String get labelWord => 'Riječ';

  @override
  String get labelSentence => 'Rečenica';

  @override
  String get contextTagLabel =>
      'Kontekst/situacija (izborno) - npr. jutarnji pozdrav, formalno';

  @override
  String get contextTagHint =>
      'Zapišite situaciju da biste je lakše razlikovali kasnije';

  @override
  String get usageLimitTitle => 'Dosegnuto ograničenje';

  @override
  String get translationLimitExceeded => 'Prekoračeno je ograničenje prijevoda';

  @override
  String get translationLimitMessage =>
      'Iskoristili ste sve svoje besplatne dnevne prijevode (5 puta).\\n\\Želite li odmah napuniti 5 puta gledanjem oglasa?';

  @override
  String get watchAdAndRefill => 'Napunite gledanjem oglasa (+5 puta)';

  @override
  String get translationRefilled => 'Broj prijevoda je napunjen 5 puta!';

  @override
  String get adLoading => 'Učitavanje oglasa. Pokušajte ponovno kasnije.';

  @override
  String get reviewAll => 'Cjelokupni pregled';

  @override
  String totalRecords(int count) {
    return 'Ukupno $count zapisa (prikaži sve)';
  }

  @override
  String get filterAll => 'Sve';

  @override
  String get practiceWordsOnly => 'Samo vježbanje riječi';

  @override
  String get resetPracticeHistory => 'Resetiraj povijest vježbanja';

  @override
  String get retry => 'Pokušati ponovo?';

  @override
  String get noStudyMaterial => 'Nema materijala za učenje.';

  @override
  String get gameOver => 'Kraj igre';

  @override
  String get playAgain => 'Igraj ponovo';

  @override
  String get speakNow => 'Govorite sada!';

  @override
  String get scoreLabel => 'Rezultat';

  @override
  String get viewOnlineGuide => 'Pogledajte online vodič';

  @override
  String get getMaterials => 'Preuzmite materijale';

  @override
  String get swapLanguages => 'Zamijeni jezike';

  @override
  String get next => 'Sljedeće';

  @override
  String get wordModeLabel => 'Način rada s riječima';

  @override
  String get accuracy => 'Točnost';

  @override
  String get basicDefault => 'Osnovno';

  @override
  String get basic => 'Osnovno';

  @override
  String get tutorialM3WordsTitle => 'Vježbanje riječi';

  @override
  String get tutorialM3WordsDesc =>
      'Označite ovo da biste vježbali samo spremljene riječi.';

  @override
  String get enterTextHint => 'Unesite tekst za prijevod';

  @override
  String get micButtonTooltip => 'Započni prepoznavanje glasa';

  @override
  String get menuHelp => 'Pomoć';

  @override
  String get menuWebDownload => 'Web stranica';

  @override
  String get menuDeviceImport => 'Uvezi materijal s uređaja';

  @override
  String get menuSettings => 'Postavke jezika';

  @override
  String get basicWords => 'Osnovna pohrana riječi';

  @override
  String get basicSentences => 'Osnovna pohrana rečenica';

  @override
  String get selectMaterialSet => 'Odaberite zbirku materijala za učenje';

  @override
  String get sectionWords => 'Riječi';

  @override
  String get sectionSentences => 'Rečenice';

  @override
  String get languageSettingsTitle => 'Postavke jezika';

  @override
  String get sourceLanguageLabel => 'Moj jezik (Izvor)';

  @override
  String get targetLanguageLabel => 'Jezik učenja (Cilj)';

  @override
  String get mode3Start => 'Započni';

  @override
  String get mode3Stop => 'Zaustavi';

  @override
  String get mode3Next => 'Sljedeće';

  @override
  String get mode3TryAgain => 'Pokušajte ponovo';

  @override
  String get tutorialM3ResetTitle => 'Resetiraj povijest';

  @override
  String get tutorialSwapDesc => 'Zamijenite moj jezik i jezik učenja.';

  @override
  String get recognizedText => 'Prepoznati izgovor:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Resetirajte napredak i rezultat točnosti za početak ispočetka.';

  @override
  String get menuSelectMaterialSet => 'Odaberite zbirku materijala za učenje';

  @override
  String get sectionWord => 'Odjeljak riječi';

  @override
  String get sectionSentence => 'Odjeljak rečenica';

  @override
  String get tabWord => 'Riječ';

  @override
  String get tabSentence => 'Rečenica';

  @override
  String get errorProfanity => 'Ne može se prevesti jer sadrži psovke.';

  @override
  String get errorHateSpeech => 'Ne može se prevesti jer sadrži govor mržnje.';

  @override
  String get errorSexualContent =>
      'Ne može se prevesti jer sadrži sugestivan sadržaj.';

  @override
  String get errorOtherSafety =>
      'Prijevod je odbijen zbog AI pravila o sigurnosti.';

  @override
  String get clearAll => 'Očisti sve';

  @override
  String get disambiguationTitle => 'Odaberite značenje';

  @override
  String get disambiguationPrompt => 'Koje značenje želite prevesti?';

  @override
  String get skip => 'Preskoči';

  @override
  String get inputModeTitle => 'Unos';

  @override
  String get reviewModeTitle => 'Pregled';

  @override
  String get practiceModeTitle => 'Vježba';

  @override
  String get chatHistoryTitle => 'Povijest razgovora';

  @override
  String get chatNew => 'Novi razgovor';

  @override
  String get chatNewChat => 'Novi razgovor';

  @override
  String get chatChoosePersona => 'Odaberite personu';

  @override
  String get chatTypeHint => 'Upišite poruku...';

  @override
  String chatFailed(Object error) {
    return 'Razgovor nije uspio: $error';
  }

  @override
  String get chatNoConversations => 'Još nema razgovora';

  @override
  String get chatStartNewPrompt => 'Započnite novi razgovor za vježbu!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Izvadak iz razgovora ($speaker)';
  }

  @override
  String get personaTeacher => 'Učitelj engleskog';

  @override
  String get personaGuide => 'Turistički vodič';

  @override
  String get personaFriend => 'Lokalni prijatelj';

  @override
  String get chatUntitled => 'Razgovor bez naslova';

  @override
  String get chatAiChat => 'Razgovor';

  @override
  String get tutorialAiChatTitle => 'AI Razgovor';

  @override
  String get tutorialAiChatDesc => 'Vježbajte stvarni razgovor s AI personom.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Trenutno odabrana zbirka materijala: $name';
  }

  @override
  String get basicWordRepository => 'Osnovna pohrana riječi';

  @override
  String get basicSentenceRepository => 'Osnovna pohrana rečenica';

  @override
  String get chatEndTitle => 'Završi i spremi razgovor';

  @override
  String get chatEndMessage => 'Želite li završiti razgovor?';

  @override
  String get chatSaveAndExit => 'Spremi i izađi';

  @override
  String get errorSelectCategory => 'Prvo odaberite riječ ili rečenicu!';

  @override
  String get tutorialM1ToggleTitle => 'Način rada s riječima/rečenicama';

  @override
  String get tutorialM1ToggleDesc =>
      'Ovdje prebacite način rada s riječima i rečenicama.';

  @override
  String get metadataDialogTitle => 'Detaljna klasifikacija';

  @override
  String get tagFormal => 'Formalno';

  @override
  String get selectPOS => 'Odaberite vrstu riječi';

  @override
  String get selectSentenceType => 'Odaberite vrstu rečenice';

  @override
  String get metadataRootWord => 'Osnovni oblik (Root Word)';

  @override
  String get posNoun => 'Imenica';

  @override
  String get posVerb => 'Glagol';

  @override
  String get posAdjective => 'Pridjev';

  @override
  String get posAdverb => 'Prilog';

  @override
  String get posPronoun => 'Zamjenica';

  @override
  String get posPreposition => 'Prijedlog';

  @override
  String get posConjunction => 'Veznik';

  @override
  String get posInterjection => 'Uzviki';

  @override
  String get typeStatement => 'Izjavna rečenica';

  @override
  String get typeQuestion => 'Upitna rečenica';

  @override
  String get typeExclamation => 'Usklična rečenica';

  @override
  String get typeImperative => 'Zapovjedna rečenica';

  @override
  String get labelNote => 'Bilješka';

  @override
  String get labelShowMemorized => 'Gotovo';

  @override
  String get titleTagSelection => 'Naslov oznake (Zbirka)';

  @override
  String get generalTags => 'Općenite oznake';

  @override
  String get tagSelection => 'Odabir oznake';

  @override
  String get metadataFormType => 'Gramatički oblik';

  @override
  String get formInfinitive => 'Infinitiv/Prezent';

  @override
  String get formPast => 'Prošlo vrijeme';

  @override
  String get formPastParticiple => 'Prošli particip';

  @override
  String get formPresentParticiple => 'Sadašnji particip (ing)';

  @override
  String get formPresent => 'Sadašnje vrijeme';

  @override
  String get formThirdPersonSingular => 'Treće lice jednine';

  @override
  String get formPlural => 'Množina';

  @override
  String get formSingular => 'Jednina';

  @override
  String get caseSubject => 'Nominativ';

  @override
  String get caseObject => 'Akuzativ';

  @override
  String get casePossessive => 'Posvojni';

  @override
  String get casePossessivePronoun => 'Posvojna zamjenica';

  @override
  String get caseReflexive => 'Povratna zamjenica';

  @override
  String get formPositive => 'Pozitiv';

  @override
  String get formComparative => 'Komparativ';

  @override
  String get formSuperlative => 'Superlativ';

  @override
  String get searchConditions => 'Uvjeti pretraživanja';

  @override
  String recentNItems(int count) {
    return 'Prikaži zadnjih $count stvorenih';
  }

  @override
  String get startsWith => 'Počinje slovom';

  @override
  String get reset => 'Resetiraj';

  @override
  String get participantRename => 'Preimenuj sudionika';

  @override
  String get labelName => 'Ime';

  @override
  String get gender => 'Spol';

  @override
  String get language => 'Jezik';

  @override
  String get male => 'Muški';

  @override
  String get female => 'Ženski';

  @override
  String get neutral => 'Neutralno';

  @override
  String get chatAllConversations => 'Svi razgovori';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Želite li izbrisati ovaj razgovor?\nIzbrisane razgovore nije moguće vratiti.';

  @override
  String get notSelected => '- Nije odabrano -';

  @override
  String get myWordbook => 'Moj rječnik';

  @override
  String get mySentenceCollection => 'Moja zbirka rečenica';

  @override
  String get newSubjectName => '새 단어장/문장집 제목';

  @override
  String get enterNewSubjectName => '새 제목 입력';

  @override
  String get addNewSubject => '새 제목 추가';

  @override
  String get selectExistingSubject => '기존 제목 선택';

  @override
  String get addTagHint => '태그 추가...';
}

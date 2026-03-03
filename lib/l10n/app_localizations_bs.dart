// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'Nastavi sa Kakao računom';

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
  String get helpTitle => 'Pomoć i vodiči';

  @override
  String get helpTabModes => 'Objašnjenje načina rada';

  @override
  String get helpTabJson => 'JSON format';

  @override
  String get helpTabTour => 'Probajte';

  @override
  String get helpMode1Desc =>
      'Prepoznaje glas, prevodi i omogućava preslušavanje rezultata.';

  @override
  String get helpMode1Details =>
      '• Podešavanje jezika: Promijenite jezik pritiskom na ikone gore/dolje\n• Prebacivanje između riječi/rečenica: Promjena načina rada\n• Glasovni unos: Pritisnite ikonu mikrofona za početak/zaustavljanje slušanja\n• Unos teksta: Unesite direktno za prijevod\n• Automatsko pretraživanje: Detektuje slične postojeće rečenice\n• Prijevod: Pritisnite tipku za prijevod za trenutni prijevod\n• Slušanje: Reprodukcija teksta u govor pomoću ikone zvučnika\n• Spremanje: Dodavanje zapisa putem \'Spremanje podataka\'\n• Brisanje: Resetovanje unosa';

  @override
  String get helpMode2Desc =>
      'Pregledajte spremljene rečenice i provjerite jeste li ih zapamtili pomoću funkcije automatskog sakrivanja.';

  @override
  String get helpMode2Details =>
      '• Odabir materijala: Odaberite određenu zbirku materijala ili \'Cjelokupni pregled\'\n• Preokretanje kartice: Provjerite prijevod pomoću \'Prikaži/Sakrij\' (automatska provjera učenja)\n• Slušanje: Reprodukcija teksta u govor za rečenicu\n• Završeno učenje: Označite kvačicom (V) za obradu dovršenog učenja\n• Brisanje: Dugo pritisnite karticu za brisanje zapisa\n• Uvjeti pretraživanja: Filtrirajte po oznakama, nedavnim stavkama, početnom slovu';

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
      '• AI Chat: Vježbajte razgovor govoreći na svom jeziku\n• Više persona: Možete promijeniti spol/jezik/ime druge osobe putem izbornika iznad oblačića za govor\n• Dodavanje partnera: Dodajte novog partnera za razgovor (Stranac) pomoću tipke +\n• GPS: Igranje uloga na temelju trenutne lokacije\n• Automatsko spremanje: Automatski prijevod i spremanje sadržaja razgovora';

  @override
  String get helpJsonDesc =>
      'Slijedite ovaj format da biste uvezli materijale za učenje kao JSON datoteku za korištenje u načinu rada 3:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'Uvezite cijeli set dijaloga kao JSON datoteku.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON struktura: Koristite niz `dialogues` umjesto `entries`\n• Automatski oporavak: Naslov dijaloga, persona i redoslijed poruka se oporavljaju.\n• Lokacija: Uvezeni dijalozi pojavljuju se na kartici \'Historija\' u načinu rada AI Chat.';

  @override
  String get helpTourDesc =>
      '**Istaknuti krug** vas vodi kroz ključne funkcije.\n(Npr. dugi pritisak na karticu koju pokazuje **istaknuti krug** omogućava brisanje.)';

  @override
  String get partnerMode => 'Partnerski način rada';

  @override
  String get manual => 'Ručni unos';

  @override
  String get speaker => 'Govornik';

  @override
  String get switchToAi => 'Prebaci na AI način rada';

  @override
  String get switchToPartner => 'Prebaci na partnerski način rada';

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
  String get basicMaterialRepository => 'Osnovno spremište rečenica/riječi';

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
  String get search => 'Pretraži';

  @override
  String get translate => 'Prevedi';

  @override
  String get listen => 'Slušaj';

  @override
  String get saveData => 'Spremi podatke';

  @override
  String get saved => 'Spremljeno';

  @override
  String get delete => 'Obriši';

  @override
  String get materialInfo => 'Informacije o materijalu';

  @override
  String get cancel => 'Otkaži';

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
  String get deleteRecord => 'Obriši zapis';

  @override
  String get confirmDelete => 'Želite li obrisati ovaj zapis učenja?';

  @override
  String get recordDeleted => 'Zapis je obrisan';

  @override
  String deleteFailed(String error) {
    return 'Brisanje nije uspjelo: $error';
  }

  @override
  String get importJsonFile => 'Uvezi JSON datoteku';

  @override
  String get importing => 'Uvozi se...';

  @override
  String get importComplete => 'Uvoz je završen';

  @override
  String get importFailed => 'Uvoz nije uspio';

  @override
  String importFile(String fileName) {
    return 'Datoteka: $fileName';
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
  String get errors => 'Greške:';

  @override
  String get error => 'Greška';

  @override
  String importErrorMessage(String error) {
    return 'Uvoz datoteke nije uspio:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

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
  String get importJsonFilePrompt => 'Molimo, uvezite JSON datoteku';

  @override
  String get selectMaterialPrompt => 'Odaberite materijal za učenje';

  @override
  String get studyComplete => 'Učenje je završeno';

  @override
  String get markAsStudied => 'Označi kao naučeno';

  @override
  String get listening => 'Slušam...';

  @override
  String get recognized => 'Prepoznato';

  @override
  String recognitionFailed(String error) {
    return 'Prepoznavanje glasa nije uspjelo: $error';
  }

  @override
  String get checking => 'Provjeravam...';

  @override
  String get translating => 'Prevodi se...';

  @override
  String get translationComplete => 'Prijevod završen (potrebno spremanje)';

  @override
  String get translationLoaded => 'Učitavanje spremljenog prijevoda';

  @override
  String translationFailed(String error) {
    return 'Prijevod nije uspio: $error';
  }

  @override
  String get enterTextToTranslate => 'Unesite tekst za prijevod';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => 'Spremanje...';

  @override
  String get noTranslationToSave => 'Nema prijevoda za spremanje';

  @override
  String saveFailed(String error) {
    return 'Spremanje nije uspjelo: $error';
  }

  @override
  String get playing => 'Reproducira se...';

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
  String get similarTextFound => 'Sličan tekst pronađen';

  @override
  String get useExistingText => 'Koristi postojeći tekst';

  @override
  String get createNew => 'Nastavi s novom rečenicom';

  @override
  String reviewCount(int count) {
    return 'Pregled $count puta';
  }

  @override
  String get tabSpeaking => 'Govor';

  @override
  String get speakingPractice => 'Vježba govora';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds s';
  }

  @override
  String get yourPronunciation => 'Vaš izgovor';

  @override
  String get correctAnswer => 'Tačan odgovor';

  @override
  String score(String score) {
    return 'Tačnost: $score%';
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
  String get startTutorial => 'Pokreni vodič';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Glasovni unos';

  @override
  String get tutorialMicDesc =>
      'Možete unijeti glasovnim putem pritiskom na tipku mikrofona.';

  @override
  String get tutorialTabDesc => 'Ovdje možete odabrati željeni način učenja.';

  @override
  String get tutorialTapToContinue => 'Dodirnite zaslon za nastavak';

  @override
  String get tutorialTransTitle => 'Prevođenje';

  @override
  String get tutorialTransDesc => 'Prevodi uneseni tekst.';

  @override
  String get tutorialSaveTitle => 'Spremanje';

  @override
  String get tutorialSaveDesc =>
      'Spremite prevedene rezultate u zapise učenja.';

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
  String get tutorialAiChatTitle => 'AI Čet';

  @override
  String get tutorialAiChatDesc =>
      'Vježbajte konverzacije u stvarnom životu s AI personama.';

  @override
  String get tutorialM2SelectTitle => 'Odabir materijala';

  @override
  String get tutorialM2SelectDesc =>
      'Odaberite materijal za učenje pritiskom na ikonu zbirke materijala (📚) na gornjoj traci aplikacije.';

  @override
  String get tutorialM2ListTitle => 'Lista za učenje';

  @override
  String get tutorialM2ListDesc =>
      'Možete ga obrisati dugim pritiskom (dugi klik) na ovu karticu. Provjerite i okrenite spremljenu rečenicu.';

  @override
  String get tutorialM3SelectTitle => 'Odabir materijala';

  @override
  String get tutorialM3SelectDesc =>
      'Odaberite materijal za vježbanje pritiskom na ikonu zbirke materijala (📚) na gornjoj traci aplikacije.';

  @override
  String get tutorialM3IntervalTitle => 'Podešavanje intervala';

  @override
  String get tutorialM3IntervalDesc =>
      'Podesite vrijeme čekanja između rečenica.';

  @override
  String get tutorialM3StartTitle => 'Započni vježbu';

  @override
  String get tutorialM3StartDesc =>
      'Slušajte izvorni glas i ponavljajte ga pritiskom na tipku za reprodukciju.';

  @override
  String get startWarning => 'Upozorenje';

  @override
  String get noVoiceDetected => 'Nije detektovan glas';

  @override
  String get tooltipSearch => 'Pretraži';

  @override
  String get tooltipStudyReview => 'Učenje+Pregled';

  @override
  String get tooltipSpeaking => 'Govor';

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
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc =>
      'Uvezite JSON datoteku iz mape na uređaju.';

  @override
  String get tutorialLangSettingsTitle => 'Postavke jezika';

  @override
  String get tutorialLangSettingsDesc =>
      'Postavite izvorni i ciljni jezik za prijevod.';

  @override
  String get copy => 'Kopiraj';

  @override
  String get copiedToClipboard => 'Kopirano u međuspremnik!';

  @override
  String get tutorialContextTitle => 'Oznaka situacije/konteksta';

  @override
  String get tutorialContextDesc =>
      'Možete ga spremiti zasebno ako zapišete situaciju (npr. jutro, večer) čak i za istu rečenicu.';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get thinkingTimeDesc =>
      'Vrijeme za razmišljanje prije nego što se otkrije tačan odgovor.';

  @override
  String get autoPlay => 'Automatska reprodukcija';

  @override
  String get timeUp => 'Vrijeme isteklo!';

  @override
  String get gameModeTitle => 'Način rada igre';

  @override
  String get gameModeDesc => 'Odaberite način igre za vježbanje';

  @override
  String get wordDefenseTitle => 'Odbrana riječi';

  @override
  String get wordDefenseDesc =>
      'Odbranite bazu izgovarajući riječi prije nego što neprijatelji stignu.';

  @override
  String get dialogueQuestTitle => 'Dijaloška potraga';

  @override
  String get dialogueQuestDesc =>
      'Vježbajte dijaloge kroz igranje uloga. Odaberite i izgovorite odgovarajuće odgovore.';

  @override
  String get translation => 'Translation';

  @override
  String get labelType => 'Vrsta:';

  @override
  String get labelWord => 'Riječ';

  @override
  String get labelSentence => 'Rečenica';

  @override
  String get contextTagLabel =>
      'Kontekst/Situacija (opcionalno) - Npr. Jutarnji pozdrav, Poštovanje';

  @override
  String get contextTagHint =>
      'Zapišite situaciju kako biste je kasnije lakše razlikovali';

  @override
  String get usageLimitTitle => 'Dosegnuto ograničenje';

  @override
  String get translationLimitExceeded => 'Prekoračeno ograničenje prijevoda';

  @override
  String get translationLimitMessage =>
      'Iskoristili ste sve besplatne dnevne prijevode (5 puta).\\n\\nŽelite li odmah napuniti 5 puta gledanjem oglasa?';

  @override
  String get watchAdAndRefill => 'Napunite gledanjem oglasa (+5 puta)';

  @override
  String get translationRefilled => 'Broj prijevoda je napunjen 5 puta!';

  @override
  String get adLoading => 'Oglas se učitava. Pokušajte ponovo kasnije.';

  @override
  String get reviewAll => 'Cjelokupni pregled';

  @override
  String totalRecords(int count) {
    return 'Ukupno $count zapisa (prikaži sve)';
  }

  @override
  String get filterAll => 'Sve';

  @override
  String get practiceWordsOnly => 'Vježbajte samo riječi';

  @override
  String get resetPracticeHistory => 'Resetiraj historiju vježbanja';

  @override
  String get retry => 'Pokušati ponovo?';

  @override
  String get noStudyMaterial => 'Nema materijala za učenje.';

  @override
  String get gameOver => 'Kraj igre';

  @override
  String get playAgain => 'Igraj ponovo';

  @override
  String get speakNow => 'Govori sada!';

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
  String get wordModeLabel => 'Način rada riječi';

  @override
  String get accuracy => 'Tačnost';

  @override
  String get basicDefault => 'Osnovno';

  @override
  String get basic => 'Osnovno';

  @override
  String get tutorialM3WordsTitle => 'Vježba riječi';

  @override
  String get tutorialM3WordsDesc =>
      'Označite ovo za vježbanje samo spremljenih riječi.';

  @override
  String get enterTextHint => 'Unesite tekst za prijevod';

  @override
  String get micButtonTooltip => 'Započni prepoznavanje glasa';

  @override
  String get menuHelp => 'Pomoć';

  @override
  String get menuWebDownload => 'Web stranica';

  @override
  String get menuDeviceImport => 'Uvezi materijale s uređaja';

  @override
  String get menuSettings => 'Postavke jezika';

  @override
  String get basicWords => 'Osnovno spremište riječi';

  @override
  String get basicSentences => 'Osnovno spremište rečenica';

  @override
  String get selectMaterialSet => 'Odaberite zbirku materijala za učenje';

  @override
  String get sectionWords => 'Riječi';

  @override
  String get sectionSentences => 'Rečenice';

  @override
  String get languageSettingsTitle => 'Postavke jezika';

  @override
  String get sourceLanguageLabel => 'Vaš jezik (izvorni)';

  @override
  String get targetLanguageLabel => 'Jezik za učenje (ciljni)';

  @override
  String get mode3Start => 'Započni';

  @override
  String get mode3Stop => 'Zaustavi';

  @override
  String get mode3Next => 'Sljedeće';

  @override
  String get mode3TryAgain => 'Pokušaj ponovo';

  @override
  String get tutorialM3ResetTitle => 'Resetiraj historiju';

  @override
  String get tutorialSwapDesc => 'Zamjenjuje vaš jezik i jezik za učenje.';

  @override
  String get recognizedText => 'Prepoznati izgovor:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Resetujte napredak i ocjenu tačnosti za početak ispočetka.';

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
      'Ne može se prevesti jer sadrži opscen sadržaj.';

  @override
  String get errorOtherSafety =>
      'Prijevod je odbijen zbog AI sigurnosnih pravila.';

  @override
  String get clearAll => 'Očisti sve';

  @override
  String get disambiguationTitle => 'Odabir značenja';

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
  String get chatHistoryTitle => 'Historija razgovora';

  @override
  String get chatNew => 'Novi razgovor';

  @override
  String get chatNewChat => 'Novi razgovor';

  @override
  String get chatChoosePersona => 'Odaberite Personu';

  @override
  String get chatTypeHint => 'Upišite poruku...';

  @override
  String chatFailed(Object error) {
    return 'Razgovor nije uspio: $error';
  }

  @override
  String get chatNoConversations => 'Još nema razgovora';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt => 'Započnite novi razgovor za vježbanje!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Izvadak iz razgovora ($speaker)';
  }

  @override
  String get personaTeacher => 'Profesor engleskog';

  @override
  String get personaGuide => 'Turistički vodič';

  @override
  String get personaFriend => 'Lokalni prijatelj';

  @override
  String get chatUntitled => 'Razgovor bez naslova';

  @override
  String get chatAiChat => 'Čet';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Trenutno odabrani materijal: $name';
  }

  @override
  String get basicWordRepository => 'Osnovno spremište riječi';

  @override
  String get basicSentenceRepository => 'Osnovno spremište rečenica';

  @override
  String get chatEndTitle => 'Završi i spremi razgovor';

  @override
  String get chatEndMessage => 'Želite li završiti razgovor?';

  @override
  String get chatSaveAndExit => 'Spremi i izađi';

  @override
  String get errorSelectCategory => 'Prvo odaberite riječ ili rečenicu!';

  @override
  String get tutorialM1ToggleTitle => 'Način rada riječi/rečenice';

  @override
  String get tutorialM1ToggleDesc =>
      'Prebacite se između načina rada riječi i rečenice ovdje.';

  @override
  String get metadataDialogTitle => 'Detaljna klasifikacija';

  @override
  String get tagFormal => 'Poštovanje';

  @override
  String get selectPOS => 'Odaberite vrstu riječi';

  @override
  String get selectSentenceType => 'Odaberite vrstu rečenice';

  @override
  String get metadataRootWord => 'Korijenska riječ';

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
  String get posInterjection => 'Uzvici';

  @override
  String get typeStatement => 'Izjavna';

  @override
  String get typeQuestion => 'Upitna';

  @override
  String get typeExclamation => 'Usklična';

  @override
  String get typeImperative => 'Zapovjedna';

  @override
  String get labelNote => 'Bilješka';

  @override
  String get labelShowMemorized => 'Završeno';

  @override
  String get titleTagSelection => 'Naslovna oznaka (Kolekcija)';

  @override
  String get generalTags => 'Opće oznake';

  @override
  String get tagSelection => 'Odabir oznake';

  @override
  String get metadataFormType => 'Gramatički oblik';

  @override
  String get formInfinitive => 'Infinitiv/Sadašnje vrijeme';

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
  String get casePossessive => 'Genitiv';

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
    return 'Prikaži $count nedavno stvorenih';
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
      'Želite li izbrisati ovaj razgovor?\nIzbrisani razgovori se ne mogu vratiti.';

  @override
  String get notSelected => '- Nije odabrano -';

  @override
  String get myWordbook => 'Moja riznica riječi';

  @override
  String get mySentenceCollection => 'Moja zbirka rečenica';

  @override
  String get newSubjectName => 'Novi naslov rječnika/zbirke rečenica';

  @override
  String get enterNewSubjectName => 'Unesite novi naslov';

  @override
  String get addNewSubject => 'Dodaj novi naslov';

  @override
  String get selectExistingSubject => 'Odaberite postojeći naslov';

  @override
  String get addTagHint => 'Dodaj oznaku...';

  @override
  String get save => 'Spasi';

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
      'Molimo provjerite e-poštu da biste dovršili autentifikaciju.';

  @override
  String get emailAlreadyInUse =>
      'Email je već registriran. Prijavite se ili koristite opciju zaboravljene lozinke.';
}

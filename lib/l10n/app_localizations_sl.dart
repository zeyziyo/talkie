// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'Nadaljuj s Kakao';

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
  String get helpTitle => 'Pomoč in vodniki';

  @override
  String get helpTabModes => 'Razlaga načinov';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabTour => 'Vodeni ogled';

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
  String get helpJsonDesc =>
      'Za uvoz učnega gradiva, ki se uporablja v načinu 3, kot datoteko JSON, upoštevajte naslednjo obliko:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'Uvozi celoten nabor pogovorov kot datoteko JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• Struktura JSON: uporabite niz `dialogues` namesto `entries`\n• Samodejna obnovitev: obnovljeni so naslov pogovora, osebnost in vrstni red sporočil.\n• Lokacija: uvoženi pogovori se prikažejo na zavihku »Zgodovina« načina klepeta AI.';

  @override
  String get helpTourDesc =>
      '**Poudarjeni krogi** vas vodijo skozi ključne funkcije.\n(Primer: **Poudarjeni krog**, ki kaže na kartico, lahko izbrišete z dolgim pritiskom.)';

  @override
  String get partnerMode => 'Način za dva';

  @override
  String get manual => 'Ročni vnos';

  @override
  String get speaker => 'Govornik';

  @override
  String get switchToAi => 'Preklop v način AI';

  @override
  String get switchToPartner => 'Preklop v način za dva';

  @override
  String get currentLocation => 'Trenutna lokacija';

  @override
  String get location => 'Lokacija';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Jaz';

  @override
  String get currentMaterialLabel => 'Trenutno izbrana zbirka gradiv:';

  @override
  String get basicMaterialRepository => 'Osnovno skladišče stavkov/besed';

  @override
  String get word => 'Beseda';

  @override
  String get sentence => 'Stavek';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Ponovitev ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Učno gradivo ($count)';
  }

  @override
  String get mode2Title => 'Ponovitev';

  @override
  String get search => 'Iskanje';

  @override
  String get translate => 'Prevedi';

  @override
  String get listen => 'Poslušaj';

  @override
  String get saveData => 'Shrani podatke';

  @override
  String get saved => 'Shranjevanje končano';

  @override
  String get delete => 'Izbriši';

  @override
  String get materialInfo => 'Informacije o gradivu';

  @override
  String get cancel => 'Prekliči';

  @override
  String get confirm => 'Potrdi';

  @override
  String get refresh => 'Osveži';

  @override
  String studyRecords(int count) {
    return 'Zapisi učenja ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filter ciljnega jezika:';

  @override
  String get noRecords => 'Ni zapisov učenja za izbrani jezik';

  @override
  String get saveTranslationsFromSearch =>
      'Poskusite shraniti prevode iz načina iskanja';

  @override
  String get flip => 'Pokaži';

  @override
  String get hide => 'Skrij';

  @override
  String get deleteRecord => 'Izbriši zapis';

  @override
  String get confirmDelete => 'Ali želite izbrisati ta zapis učenja?';

  @override
  String get recordDeleted => 'Zapis je izbrisan';

  @override
  String deleteFailed(String error) {
    return 'Brisanje ni uspelo: $error';
  }

  @override
  String get importJsonFile => 'Uvozi datoteko JSON';

  @override
  String get importing => 'Uvažam ...';

  @override
  String get importComplete => 'Uvoz končan';

  @override
  String get importFailed => 'Uvoz ni uspel';

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
    return 'Skupaj: $count';
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
  String get errors => 'Napake:';

  @override
  String get error => 'Napaka';

  @override
  String importErrorMessage(String error) {
    return 'Uvoz datoteke ni uspel:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get selectStudyMaterial => 'Izberite učno gradivo';

  @override
  String get subject => 'Zadeva:';

  @override
  String get source => 'Vir:';

  @override
  String get file => 'Datoteka:';

  @override
  String progress(int current, int total) {
    return 'Napredek: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Uvozite datoteko JSON';

  @override
  String get selectMaterialPrompt => 'Izberite učno gradivo';

  @override
  String get studyComplete => 'Učenje končano';

  @override
  String get markAsStudied => 'Označi kot preučeno';

  @override
  String get listening => 'Poslušam ...';

  @override
  String get recognized => 'Prepoznano';

  @override
  String recognitionFailed(String error) {
    return 'Prepoznavanje govora ni uspelo: $error';
  }

  @override
  String get checking => 'Preverjam ...';

  @override
  String get translating => 'Prevajam ...';

  @override
  String get translationComplete => 'Prevod končan (potrebno shranjevanje)';

  @override
  String get translationLoaded => 'Naložen shranjen prevod';

  @override
  String translationFailed(String error) {
    return 'Prevod ni uspel: $error';
  }

  @override
  String get enterTextToTranslate => 'Vnesite besedilo za prevajanje';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => 'Shranjujem ...';

  @override
  String get noTranslationToSave => 'Ni prevoda za shranjevanje';

  @override
  String saveFailed(String error) {
    return 'Shranjevanje ni uspelo: $error';
  }

  @override
  String get playing => 'Predvajam ...';

  @override
  String get noTextToPlay => 'Ni besedila za predvajanje';

  @override
  String playbackFailed(String error) {
    return 'Predvajanje ni uspelo: $error';
  }

  @override
  String get sourceLanguage => 'Izvorni jezik';

  @override
  String get targetLanguage => 'Ciljni jezik';

  @override
  String get similarTextFound => 'Najdeno podobno besedilo';

  @override
  String get useExistingText => 'Uporabi obstoječe besedilo';

  @override
  String get createNew => 'Nadaljuj z novim stavkom';

  @override
  String reviewCount(int count) {
    return 'Ponovitev $count-krat';
  }

  @override
  String get tabSpeaking => 'Govor';

  @override
  String get speakingPractice => 'Vaja govora';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds s';
  }

  @override
  String get yourPronunciation => 'Moja izgovorjava';

  @override
  String get correctAnswer => 'Pravilen odgovor';

  @override
  String score(String score) {
    return 'Točnost: $score %';
  }

  @override
  String get perfect => 'Popolno!';

  @override
  String get good => 'Dobro';

  @override
  String get tryAgain => 'Poskusite znova';

  @override
  String get startPractice => 'Začni z vajo';

  @override
  String get stopPractice => 'Ustavi vajo';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Začni vadnico';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Glasovni vnos';

  @override
  String get tutorialMicDesc =>
      'Za vnos z glasom lahko pritisnete gumb mikrofona.';

  @override
  String get tutorialTabDesc => 'Tukaj lahko izberete želeni način učenja.';

  @override
  String get tutorialTapToContinue => 'Dotaknite se zaslona za nadaljevanje';

  @override
  String get tutorialTransTitle => 'Prevedi';

  @override
  String get tutorialTransDesc => 'Prevede vneseno besedilo.';

  @override
  String get tutorialSaveTitle => 'Shrani';

  @override
  String get tutorialSaveDesc =>
      'Shranite prevedene rezultate v zapise učenja.';

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
  String get tutorialAiChatTitle => 'AI klepet';

  @override
  String get tutorialAiChatDesc =>
      'Vadite pogovor v resničnem življenju z AI osebnostjo.';

  @override
  String get tutorialM2SelectTitle => 'Izbira gradiva';

  @override
  String get tutorialM2SelectDesc =>
      'Izberite gradivo za učenje s pritiskom na ikono zbirke gradiv (📚) na zgornji vrstici aplikacije.';

  @override
  String get tutorialM2ListTitle => 'Seznam za učenje';

  @override
  String get tutorialM2ListDesc =>
      'To kartico lahko izbrišete z dolgim pritiskom (dolgi klik). Preverite shranjene stavke in jih obrnite.';

  @override
  String get tutorialM3SelectTitle => 'Izbira gradiva';

  @override
  String get tutorialM3SelectDesc =>
      'Izberite gradivo za vadbo s pritiskom na ikono zbirke gradiv (📚) na zgornji vrstici aplikacije.';

  @override
  String get tutorialM3IntervalTitle => 'Nastavitev intervala';

  @override
  String get tutorialM3IntervalDesc => 'Prilagodite čas čakanja med stavki.';

  @override
  String get tutorialM3StartTitle => 'Začni z vajo';

  @override
  String get tutorialM3StartDesc =>
      'Pritisnite gumb za predvajanje, da poslušate govor maternega govorca in ga ponovite.';

  @override
  String get startWarning => 'Opozorilo';

  @override
  String get noVoiceDetected => 'Glas ni zaznan';

  @override
  String get tooltipSearch => 'Iskanje';

  @override
  String get tooltipStudyReview => 'Učenje + ponovitev';

  @override
  String get tooltipSpeaking => 'Govor';

  @override
  String get tooltipDecrease => 'Zmanjšaj';

  @override
  String get tooltipIncrease => 'Povečaj';

  @override
  String get languageSettings => 'Nastavitve jezika';

  @override
  String get tutorialM2DropdownDesc =>
      'Gradivo za učenje lahko izberete v zgornjem meniju.';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc => 'Uvozi datoteko JSON iz mape v napravi.';

  @override
  String get tutorialLangSettingsTitle => 'Nastavitve jezika';

  @override
  String get tutorialLangSettingsDesc =>
      'Nastavite izvorni in ciljni jezik za prevajanje.';

  @override
  String get copy => 'Kopiraj';

  @override
  String get copiedToClipboard => 'Kopirano v odložišče!';

  @override
  String get tutorialContextTitle => 'Situacija/kontekstne oznake';

  @override
  String get tutorialContextDesc =>
      'Isti stavek lahko shranite ločeno, če zapišete situacijo (npr. jutro, večer).';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get thinkingTimeDesc =>
      'Čas za razmišljanje, preden se razkrije pravilen odgovor.';

  @override
  String get autoPlay => 'Samodejno predvajanje';

  @override
  String get timeUp => 'Čas je potekel!';

  @override
  String get gameModeTitle => 'Način igre';

  @override
  String get gameModeDesc => 'Izberite način igre za vadbo';

  @override
  String get wordDefenseTitle => 'Besedna obramba';

  @override
  String get wordDefenseDesc =>
      'Branite bazo tako, da izgovorite besede, preden prispejo sovražniki.';

  @override
  String get dialogueQuestTitle => 'Dialogna naloga';

  @override
  String get dialogueQuestDesc =>
      'Vadite pogovor s situacijsko komedijo. Izberite ustrezen odgovor in ga izgovorite.';

  @override
  String get translation => 'Translation';

  @override
  String get labelType => 'Vrsta:';

  @override
  String get labelWord => 'Beseda';

  @override
  String get labelSentence => 'Stavek';

  @override
  String get contextTagLabel =>
      'Kontekst/situacija (neobvezno) – Primer: jutranji pozdrav, vljudnost';

  @override
  String get contextTagHint =>
      'Zapišite situacijo, da jo boste lažje prepoznali pozneje';

  @override
  String get usageLimitTitle => 'Dosežena omejitev';

  @override
  String get translationLimitExceeded => 'Prekoračena omejitev prevajanja';

  @override
  String get translationLimitMessage =>
      'Porabili ste vseh 5 brezplačnih dnevnih prevodov.\\n\\nAli želite takoj napolniti 5 s ogledom oglasa?';

  @override
  String get watchAdAndRefill => 'Oglejte si oglas in napolnite (+5)';

  @override
  String get translationRefilled => 'Število prevodov je bilo napolnjeno na 5!';

  @override
  String get adLoading => 'Oglas se nalaga. Poskusite znova pozneje.';

  @override
  String get reviewAll => 'Celotna ponovitev';

  @override
  String totalRecords(int count) {
    return 'Skupaj $count zapisov (prikaži vse)';
  }

  @override
  String get filterAll => 'Vse';

  @override
  String get practiceWordsOnly => 'Vadite samo besede';

  @override
  String get resetPracticeHistory => 'Ponastavi zgodovino vadbe';

  @override
  String get retry => 'Poskusite znova?';

  @override
  String get noStudyMaterial => 'Ni učnega gradiva.';

  @override
  String get gameOver => 'Igre je konec';

  @override
  String get playAgain => 'Igraj znova';

  @override
  String get speakNow => 'Govorite zdaj!';

  @override
  String get scoreLabel => 'Rezultat';

  @override
  String get viewOnlineGuide => 'Oglejte si spletni vodnik';

  @override
  String get getMaterials => 'Pridobi gradivo';

  @override
  String get swapLanguages => 'Zamenjaj jezike';

  @override
  String get next => 'Naprej';

  @override
  String get wordModeLabel => 'Besedni način';

  @override
  String get accuracy => 'Točnost';

  @override
  String get basicDefault => 'Osnovno';

  @override
  String get basic => 'Osnovno';

  @override
  String get tutorialM3WordsTitle => 'Besedna vaja';

  @override
  String get tutorialM3WordsDesc =>
      'Če je označeno, vadite samo shranjene besede.';

  @override
  String get enterTextHint => 'Vnesite besedilo za prevajanje';

  @override
  String get micButtonTooltip => 'Začni prepoznavanje glasu';

  @override
  String get menuHelp => 'Pomoč';

  @override
  String get menuWebDownload => 'Domača stran';

  @override
  String get menuDeviceImport => 'Uvozi gradivo iz naprave';

  @override
  String get menuSettings => 'Nastavitve jezika';

  @override
  String get basicWords => 'Osnovno skladišče besed';

  @override
  String get basicSentences => 'Osnovno skladišče stavkov';

  @override
  String get selectMaterialSet => 'Izberite zbirko učnega gradiva';

  @override
  String get sectionWords => 'Besede';

  @override
  String get sectionSentences => 'Stavki';

  @override
  String get languageSettingsTitle => 'Nastavitve jezika';

  @override
  String get sourceLanguageLabel => 'Moj jezik (izvorni)';

  @override
  String get targetLanguageLabel => 'Jezik učenja (ciljni)';

  @override
  String get mode3Start => 'Začni';

  @override
  String get mode3Stop => 'Ustavi';

  @override
  String get mode3Next => 'Naprej';

  @override
  String get mode3TryAgain => 'Poskusite znova';

  @override
  String get tutorialM3ResetTitle => 'Ponastavitev zgodovine';

  @override
  String get tutorialSwapDesc => 'Zamenja moj jezik in jezik učenja.';

  @override
  String get recognizedText => 'Prepoznana izgovorjava:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Ponastavi napredek in oceno točnosti za ponovni začetek iz nič.';

  @override
  String get menuSelectMaterialSet => 'Izberite zbirko učnega gradiva';

  @override
  String get sectionWord => 'Besedni odsek';

  @override
  String get sectionSentence => 'Stavni odsek';

  @override
  String get tabWord => 'Beseda';

  @override
  String get tabSentence => 'Stavek';

  @override
  String get errorProfanity => 'Ne morem prevesti, ker vsebuje kletvice.';

  @override
  String get errorHateSpeech =>
      'Ne morem prevesti, ker vsebuje sovražni govor.';

  @override
  String get errorSexualContent =>
      'Ne morem prevesti, ker vsebuje seksualno vsebino.';

  @override
  String get errorOtherSafety =>
      'Prevajanje je bilo zavrnjeno s strani varnostnega pravilnika AI.';

  @override
  String get clearAll => 'Počisti vse';

  @override
  String get disambiguationTitle => 'Izbira pomena';

  @override
  String get disambiguationPrompt => 'Kateri pomen želite prevesti?';

  @override
  String get skip => 'Preskoči';

  @override
  String get inputModeTitle => 'Vnos';

  @override
  String get reviewModeTitle => 'Ponovitev';

  @override
  String get practiceModeTitle => 'Vadba';

  @override
  String get chatHistoryTitle => 'Zgodovina pogovorov';

  @override
  String get chatNew => 'Nov pogovor';

  @override
  String get chatNewChat => 'Nov pogovor';

  @override
  String get chatChoosePersona => 'Izberite osebnost';

  @override
  String get chatTypeHint => 'Vnesite sporočilo ...';

  @override
  String chatFailed(Object error) {
    return 'Klepet ni uspel: $error';
  }

  @override
  String get chatNoConversations => 'Še nimate pogovorov';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt => 'Začnite nov pogovor za vadbo!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Izvleček pogovora ($speaker)';
  }

  @override
  String get personaTeacher => 'Učitelj angleščine';

  @override
  String get personaGuide => 'Turistični vodnik';

  @override
  String get personaFriend => 'Lokalni prijatelj';

  @override
  String get chatUntitled => 'Pogovor brez naslova';

  @override
  String get chatAiChat => 'Klepet';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Trenutno izbrano gradivo: $name';
  }

  @override
  String get basicWordRepository => 'Osnovno skladišče besed';

  @override
  String get basicSentenceRepository => 'Osnovno skladišče stavkov';

  @override
  String get chatEndTitle => 'Končaj in shrani pogovor';

  @override
  String get chatEndMessage => 'Ali želite končati pogovor?';

  @override
  String get chatSaveAndExit => 'Shrani in izstopi';

  @override
  String get errorSelectCategory => 'Najprej izberite besedo ali stavek!';

  @override
  String get tutorialM1ToggleTitle => 'Način besede/stavka';

  @override
  String get tutorialM1ToggleDesc =>
      'Tukaj preklopite med načinom besede in stavka.';

  @override
  String get metadataDialogTitle => 'Podrobna klasifikacija';

  @override
  String get tagFormal => 'Formalno';

  @override
  String get selectPOS => 'Izberite vrsto besede';

  @override
  String get selectSentenceType => 'Izberite vrsto stavka';

  @override
  String get metadataRootWord => 'Koren (Root Word)';

  @override
  String get posNoun => 'Samostalnik';

  @override
  String get posVerb => 'Glagol';

  @override
  String get posAdjective => 'Pridevnik';

  @override
  String get posAdverb => 'Prislov';

  @override
  String get posPronoun => 'Zaimek';

  @override
  String get posPreposition => 'Predlog/veznik';

  @override
  String get posConjunction => 'Veznik';

  @override
  String get posInterjection => 'Medmet';

  @override
  String get typeStatement => 'Poved';

  @override
  String get typeQuestion => 'Vprašanje';

  @override
  String get typeExclamation => 'Klicaj';

  @override
  String get typeImperative => 'Ukaz';

  @override
  String get labelNote => 'Opomba';

  @override
  String get labelShowMemorized => 'Končano';

  @override
  String get titleTagSelection => 'Oznaka naslova (Zbirka podatkov)';

  @override
  String get generalTags => 'Splošne oznake';

  @override
  String get tagSelection => 'Izbira oznake';

  @override
  String get metadataFormType => 'Oblika slovnice';

  @override
  String get formInfinitive => 'Nedoločnik/sedanjik';

  @override
  String get formPast => 'Preteklik';

  @override
  String get formPastParticiple => 'Deležnik preteklika';

  @override
  String get formPresentParticiple => 'Deležnik sedanjika (ing)';

  @override
  String get formPresent => 'Sedanjik';

  @override
  String get formThirdPersonSingular => '3. oseba ednine';

  @override
  String get formPlural => 'Množina';

  @override
  String get formSingular => 'Ednina';

  @override
  String get caseSubject => 'Imenovalnik';

  @override
  String get caseObject => 'Tožilnik';

  @override
  String get casePossessive => 'Lastnik';

  @override
  String get casePossessivePronoun => 'Lastnilni zaimek';

  @override
  String get caseReflexive => 'Povratni zaimek';

  @override
  String get formPositive => 'Pozitiv';

  @override
  String get formComparative => 'Primerjalnik';

  @override
  String get formSuperlative => 'Superlativ';

  @override
  String get searchConditions => 'Pogoji iskanja';

  @override
  String recentNItems(int count) {
    return 'Prikaži zadnjih $count ustvarjenih elementov';
  }

  @override
  String get startsWith => 'Začne se s črko';

  @override
  String get reset => 'Ponastavi';

  @override
  String get participantRename => 'Preimenuj udeleženca';

  @override
  String get labelName => 'Ime';

  @override
  String get gender => 'Spol';

  @override
  String get language => 'Jezik';

  @override
  String get male => 'Moški';

  @override
  String get female => 'Ženska';

  @override
  String get neutral => 'Nevtralno';

  @override
  String get chatAllConversations => 'Vsi pogovori';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Želite izbrisati ta pogovor?\nIzbrisanih pogovorov ni mogoče obnoviti.';

  @override
  String get notSelected => '- Ni izbrano -';

  @override
  String get myWordbook => 'Moja besedna zbirka';

  @override
  String get mySentenceCollection => 'Moja zbirka stavkov';

  @override
  String get newSubjectName => 'Novo ime sklopa besed/stavkov';

  @override
  String get enterNewSubjectName => 'Vnesite novo ime';

  @override
  String get addNewSubject => 'Dodaj novo ime';

  @override
  String get selectExistingSubject => 'Izberite obstoječe ime';

  @override
  String get addTagHint => 'Dodaj oznako...';

  @override
  String get save => 'Shrani';

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
      'Za dokončanje overitve preverite svojo e-pošto.';

  @override
  String get emailAlreadyInUse =>
      'Ta e-poštni naslov je že v uporabi. Prijavite se ali uporabite možnost za obnovitev gesla.';
}

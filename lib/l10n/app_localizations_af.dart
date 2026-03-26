// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get basicWords => 'Basiese woordebewaarplek';

  @override
  String get inputLanguage => 'Invoertaal';

  @override
  String get translationLanguage => 'Vertalingstaal';

  @override
  String get simplifiedGuidance =>
      'Skakel alledaagse gesprekke onmiddellik in vreemde tale om! Talkie teken jou taallewe aan.';

  @override
  String get noDataForLanguage =>
      'Daar is geen leermateriaal vir die gekose taal in die plaaslike databasis nie. Laai die materiaal af of kies \'n ander taal.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get accuracy => 'Akkuraatheid';

  @override
  String get ttsMissing =>
      'Die stem-enjin vir hierdie taal is nie op jou toestel geïnstalleer nie.';

  @override
  String get ttsInstallGuide =>
      'Installeer die taaldata in Android-instellings > Google TTS.';

  @override
  String get adLoading =>
      'Advertensie word gelaai. Probeer asseblief later weer.';

  @override
  String get addNewSubject => 'Voeg nuwe naam by';

  @override
  String get addParticipant => 'Voeg deelnemer by';

  @override
  String get addTagHint => 'Voeg merker by...';

  @override
  String get alreadyHaveAccount => 'Het jy reeds \'n rekening?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Outomatiese speel';

  @override
  String get basic => 'Basies';

  @override
  String get basicDefault => 'Basies';

  @override
  String get basicMaterialRepository => 'Basiese sin/woordbewaarplek';

  @override
  String get basicSentenceRepository => 'Basiese Sinbewaarplek';

  @override
  String get basicSentences => 'Basiese sinnebewaarplek';

  @override
  String get basicWordRepository => 'Basiese Woordbewaarplek';

  @override
  String get caseObject => 'Akusatief';

  @override
  String get casePossessive => 'Possessief';

  @override
  String get casePossessivePronoun => 'Possessiewe voornaamwoord';

  @override
  String get caseReflexive => 'Refleksief';

  @override
  String get caseSubject => 'Nominatief';

  @override
  String get chatAiChat => 'Klets';

  @override
  String get chatAllConversations => 'Alle gesprekke';

  @override
  String get chatChoosePersona => 'Kies Persona';

  @override
  String get chatEndMessage => 'Wil jy die gesprek beëindig?';

  @override
  String get chatEndTitle => 'Beëindig en stoor gesprek';

  @override
  String chatFailed(Object error) {
    return 'Klets het misluk: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Uittreksel uit gesprek ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Gesprekgeskiedenis';

  @override
  String get chatNew => 'Nuwe gesprek';

  @override
  String get chatNewChat => 'Nuwe gesprek';

  @override
  String get chatNoConversations => 'Nog geen gesprekke nie';

  @override
  String get chatSearchHint => 'Soek volgens gesprektitel...';

  @override
  String get chatNoteSearchHint => 'Soek volgens aantekening...';

  @override
  String get chatSaveAndExit => 'Stoor en verlaat';

  @override
  String get chatStartNewPrompt => 'Begin \'n nuwe gesprek om te oefen!';

  @override
  String get chatTypeHint => 'Tik \'n boodskap...';

  @override
  String get chatUntitled => 'Naamlose gesprek';

  @override
  String get checking => 'Kontroleer...';

  @override
  String get clearAll => '모두 지우기';

  @override
  String get confirm => 'Bevestig';

  @override
  String get confirmDelete => 'Is jy seker jy wil hierdie rekord verwyder?';

  @override
  String get confirmDeleteConversation =>
      'Wil jy hierdie gesprek uitvee?\nJy sal nie die uitgeveede gesprek kan herstel nie.';

  @override
  String get confirmDeleteParticipant => 'Wil jy hierdie deelnemer skrap?';

  @override
  String get contextTagHint =>
      'Skryf die situasie neer sodat dit later makliker is om te onderskei';

  @override
  String get contextTagLabel =>
      'Kontekst/Situasie (opsioneel) - bv. Oggendgroet, Formeel';

  @override
  String get copiedToClipboard => 'Gekopieer na knipbord!';

  @override
  String get copy => 'Kopieer';

  @override
  String get correctAnswer => 'Korrekte Antwoord';

  @override
  String get createNew => 'Skep Nuwe';

  @override
  String get currentLocation => 'Huidige ligging';

  @override
  String get currentMaterialLabel => 'Huidige geselekteerde materiaal:';

  @override
  String get delete => 'Verwyder';

  @override
  String deleteFailed(String error) {
    return 'Verwydering misluk: $error';
  }

  @override
  String get deleteRecord => 'Verwyder Rekord';

  @override
  String get dialogueQuestDesc =>
      'Oefen gesprekke deur toneelspel. Kies en praat die regte antwoorde.';

  @override
  String get dialogueQuestTitle => 'Dialoog Soeke';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get dontHaveAccount => 'Het jy nie \'n rekening nie?';

  @override
  String get editParticipant => 'Wysig deelnemer';

  @override
  String get email => 'E-pos';

  @override
  String get emailAlreadyInUse =>
      'Hierdie e-posadres is reeds in gebruik. Meld asseblief aan of gebruik \'wagwoord vergeet\'.';

  @override
  String get enterNewSubjectName => 'Voer nuwe naam in';

  @override
  String get enterSentenceHint => 'Tik \'n sin...';

  @override
  String get enterTextHint => 'Tik teks in om te vertaal';

  @override
  String get enterTextToTranslate => 'Voer teks in om te vertaal';

  @override
  String get enterWordHint => 'Tik \'n woord...';

  @override
  String get error => 'Fout';

  @override
  String get errorHateSpeech =>
      'Kan nie vertaal nie omdat dit haatspraak bevat.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get errorProfanity =>
      'Dit bevat vloektaal, daarom kan dit nie vertaal word nie.';

  @override
  String get errorSelectCategory => 'Kies eers \'n woord of sin!';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errors => 'Foute:';

  @override
  String get female => 'Vroulik';

  @override
  String get file => 'Lêer:';

  @override
  String get filterAll => 'Alles';

  @override
  String get flip => 'Draai';

  @override
  String get formComparative => 'Vergrotend';

  @override
  String get formInfinitive => 'Infinitief/Teenwoordige tyd';

  @override
  String get formPast => 'Verlede tyd';

  @override
  String get formPastParticiple => 'Verlede deelwoord';

  @override
  String get formPlural => 'Meervoud';

  @override
  String get formPositive => 'Positief';

  @override
  String get formPresent => 'Teenwoordige tyd';

  @override
  String get formPresentParticiple => 'Teenwoordige deelwoord (ing)';

  @override
  String get formSingular => 'Enkelvoud';

  @override
  String get formSuperlative => 'Oortreffend';

  @override
  String get formThirdPersonSingular => 'Derde persoon enkelvoud';

  @override
  String get gameModeDesc => 'Kies \'n spelmodus om te oefen';

  @override
  String get gameModeTitle => 'Spelmodus';

  @override
  String get gameOver => 'Spel oor';

  @override
  String get gender => 'Geslag';

  @override
  String get labelFilterMaterial => 'Bronmateriaal';

  @override
  String get labelFilterTag => 'Merkers';

  @override
  String get generalTags => 'Algemene merkers';

  @override
  String get getMaterials => 'Kry materiaal';

  @override
  String get good => 'Goed';

  @override
  String get googleContinue => 'Gaan voort met Google';

  @override
  String get helpDialogueImportDesc =>
      'Voer \'n hele stel dialoë in as \'n JSON-lêer.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'Vir invoer in Modus 3, skep JSON:';

  @override
  String get helpJsonTypeDialogue => 'Dialoog';

  @override
  String get helpJsonTypeSentence => 'Sin';

  @override
  String get helpJsonTypeWord => 'Woord';

  @override
  String get helpMode1Desc =>
      'Begin jou taalleerreis op die mees intuïtiewe manier met die premium 3D-mikrofoon en groot sleutelbordikone.';

  @override
  String get helpMode1Details =>
      '• Taalinstellings: Bevestig jou taal en die taal wat jy leer met die taal-knoppie bo-aan die tuisskerm, en verander die studeertaal.\n• Eenvoudige invoer: Voer onmiddellik in deur die groot mikrofoon en teksvenster in die middel.\n• Bevestig instellings: Nadat jy klaar ingevoer het, druk die blou regmerkie-knoppie aan die regterkant. \'n Gedetailleerde instellingsvenster sal verskyn.\n• Gedetailleerde instellings: In die dialoog wat verskyn, kan jy die materiaalversameling, aantekeninge (notas) en etikette spesifiseer wat jy wil stoor.\n• Vertaal nou: Nadat jy klaar ingestel het, druk die groen vertaalknoppie om die kunsmatige intelligensie onmiddellik te laat vertaal.\n• Outomatiese soektog: Bespeur en wys soortgelyke bestaande vertalings intyds terwyl jy invoer.\n• Luister en stoor: Luister na die uitspraak met die luidspreker-ikoon onderaan die vertaalresultate, en voeg dit by jou studeerkamerlys deur \'Data stoor\' te gebruik.';

  @override
  String get helpMode2Desc =>
      'Hersien gestorde sinne met versteekte vertaling.';

  @override
  String get helpMode2Details =>
      '• Kies \'n bron: Gebruik \'Kies studiemateriaal\' of \'Aanlyn biblioteek\' in die kieslys (⋮) regs bo.\n• Draai kaart om: Bevestig vertaling met \'Wys/Versteek\'.\n• Luister: Speel uitspraak met die luidspreker-ikoon.\n• Voltooi leer: Merk (V) om leer as voltooi te merk.\n• Vee uit: Vee rekords uit deur lank op die kaart te druk.\n• Soek en filtreer: Ondersteun soekbalk (intydse slim soektog) en merker- en beginletterfilters.';

  @override
  String get helpMode3Desc =>
      'Oefen jou uitspraak deur na sinne te luister en dit te herhaal (Skadu).';

  @override
  String get helpMode3Details =>
      '• Kies: Kies pakket\n• Interval: [-] [+] wagtyd (3s-60s)\n• Begin/Stop: Beheer sessie\n• Praat: Luister en herhaal\n• Telling: Akkuraatheid (0-100)\n• Probeer weer: Knoppie as stem nie bespeur word nie';

  @override
  String get helpModeChatDesc =>
      'Oefen werklike gesprekke deur met \'n KI-persona te gesels.';

  @override
  String get helpModeChatDetails =>
      '• KI-gesels: Oefen werklike gesprekke met personas in die \'Gesels\'-kieslys op die onderste oortjiebalk\n• Persona-instellings: Spesifiseer die ander persoon se geslag, naam en taalkode vrylik\n• GPS-situasiespel: Herken my huidige ligging en beveel gespreksonderwerpe aan wat by die plek pas\n• 2 tale: KI se antwoorde word saam met vertalings vertoon om die leereffek te maksimeer\n• Rekordbestuur: Filter vorige gespreksgeskiedenis en stoor spesifieke boodskappe tydens gesprekke as leermateriaal';

  @override
  String get helpTabJson => 'JSON Formaat';

  @override
  String get helpTabModes => 'Modusse';

  @override
  String get helpTabQuickStart => 'Vinnige Begin';

  @override
  String get helpTabTour => 'Toer';

  @override
  String get helpTitle => 'Hulp & Gids';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Versteek';

  @override
  String importAdded(int count) {
    return 'Bygevoeg: $count';
  }

  @override
  String get importComplete => 'Invoer Voltooi';

  @override
  String get importDuplicateTitleError =>
      'Daar bestaan reeds materiaal met dieselfde titel. Verander die titel en probeer weer.';

  @override
  String importErrorMessage(String error) {
    return 'Kon nie lêer invoer nie:\\n$error';
  }

  @override
  String get importFailed => 'Invoer Misluk';

  @override
  String importFile(String fileName) {
    return 'Lêer: $fileName';
  }

  @override
  String get importJsonFile => 'Voer JSON in';

  @override
  String get importJsonFilePrompt => 'Voer asseblief \'n JSON-lêer in';

  @override
  String importSkipped(int count) {
    return 'Oorgeslaan: $count';
  }

  @override
  String importTotal(int count) {
    return 'Totaal: $count';
  }

  @override
  String get importing => 'Voer in...';

  @override
  String get inputModeTitle => '입력';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds sekondes';
  }

  @override
  String get invalidEmail => 'Voer \'n geldige e-posadres in.';

  @override
  String get kakaoContinue => 'Gaan voort met Kakao';

  @override
  String get labelLangCode => 'Taalkode (bv. en-US, ko-KR)';

  @override
  String get labelName => 'Naam';

  @override
  String get labelNote => 'Nota';

  @override
  String get labelPOS => 'Woordsoort';

  @override
  String get labelRole => 'Rol';

  @override
  String get labelSentence => 'Sin';

  @override
  String get labelSentenceCollection => 'Sinversameling';

  @override
  String get labelSentenceType => 'Sintipe';

  @override
  String get labelShowMemorized => 'Voltooi';

  @override
  String get labelType => 'Tipe:';

  @override
  String get labelWord => 'Woord';

  @override
  String get labelWordbook => 'Woordeboek';

  @override
  String get language => 'Taal';

  @override
  String get languageSettings => 'Taalinstellings';

  @override
  String get languageSettingsTitle => 'Taalinstellings';

  @override
  String get libTitleFirstMeeting => 'Eerste ontmoeting';

  @override
  String get libTitleGreetings1 => 'Groete 1';

  @override
  String get libTitleNouns1 => 'Selfstandige naamwoorde 1';

  @override
  String get libTitleVerbs1 => 'Werkwoorde 1';

  @override
  String get listen => 'Luister';

  @override
  String get listening => 'Luister...';

  @override
  String get loadingParticipants => 'Laai deelnemers...';

  @override
  String get location => 'Ligging';

  @override
  String get login => 'Meld aan';

  @override
  String get logout => 'Teken uit';

  @override
  String get logoutConfirmMessage => 'Wil jy uit die huidige toestel teken?';

  @override
  String get logoutConfirmTitle => 'Teken uit';

  @override
  String get male => 'Manlik';

  @override
  String get manageParticipants => 'Bestuur deelnemers';

  @override
  String get manual => 'Handmatige invoer';

  @override
  String get markAsStudied => 'Merk as Bestudeer';

  @override
  String get materialInfo => 'Materiaalinligting';

  @override
  String get me => 'Ek';

  @override
  String get menuDeviceImport => 'Voer materiaal vanaf toestel in';

  @override
  String get menuHelp => 'Hulp';

  @override
  String get menuLanguageSettings => 'Taalinstellings';

  @override
  String get menuOnlineLibrary => 'Aanlyn biblioteek';

  @override
  String get menuSelectMaterialSet => 'Kies \'n studiemateriaal';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Gebruiksaanwysings';

  @override
  String get menuWebDownload => 'Gebruikershandleiding';

  @override
  String get metadataDialogTitle => 'Gedetailleerde klassifikasie';

  @override
  String get metadataFormType => 'Grammatikale vorm';

  @override
  String get metadataRootWord => 'Stamwoord (Root Word)';

  @override
  String get micButtonTooltip => 'Begin stemherkenning';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Huidige geselekteerde materiaal: $name';
  }

  @override
  String get mode2Title => 'Hersiening';

  @override
  String get mode3Next => 'Volgende';

  @override
  String get mode3Start => 'Begin';

  @override
  String get mode3Stop => 'Stop';

  @override
  String get mode3TryAgain => 'Probeer weer';

  @override
  String get mySentenceCollection => 'My Sinversameling';

  @override
  String get myWordbook => 'My Woordeboek';

  @override
  String get neutral => 'Neutraal';

  @override
  String get newSubjectName => 'Nuwe Onderwerp Naam';

  @override
  String get next => 'Volgende';

  @override
  String get noDialogueHistory => 'Geen dialooggeskiedenis nie.';

  @override
  String get noInternetWarningMic =>
      'Geen internetverbinding nie. Stemherkenning mag dalk nie vanlyn werk nie.';

  @override
  String get noInternetWarningTranslate =>
      'Geen internetverbinding nie. Vertaling is nie vanlyn beskikbaar nie. Gebruik asseblief die hersieningsmodus.';

  @override
  String get noMaterialsInCategory =>
      'Daar is geen materiaal in hierdie kategorie nie.';

  @override
  String get noParticipantsFound => 'Geen deelnemers gevind nie.';

  @override
  String get noRecords => 'Geen rekords vir gekose taal';

  @override
  String get noStudyMaterial => 'Geen studiemateriaal nie.';

  @override
  String get noTextToPlay => 'Geen teks om te speel';

  @override
  String get noTranslationToSave => 'Geen vertaling om te stoor';

  @override
  String get noVoiceDetected => 'Geen stem bespeur';

  @override
  String get notSelected => '- Nie gekies nie -';

  @override
  String get onlineLibraryCheckInternet =>
      'Kontroleer jou internetverbinding of probeer later weer.';

  @override
  String get onlineLibraryLoadFailed => 'Kon nie materiaal laai nie.';

  @override
  String get onlineLibraryNoMaterials => 'Geen materiaal beskikbaar nie.';

  @override
  String get participantDeleted => 'Deelnemer is geskrap.';

  @override
  String get participantRename => 'Hernoem deelnemer';

  @override
  String get partner => 'Vennoot';

  @override
  String get partnerMode => 'Vennootmodus';

  @override
  String get password => 'Wagwoord';

  @override
  String get passwordTooShort =>
      'Wagwoord moet minstens 6 karakters lank wees.';

  @override
  String get perfect => 'Perfek!';

  @override
  String get personaFriend => 'Plaaslike vriend';

  @override
  String get personaGuide => 'Toergids';

  @override
  String get personaTeacher => 'Engelse onderwyser';

  @override
  String get playAgain => 'Speel weer';

  @override
  String playbackFailed(String error) {
    return 'Terugspeel misluk: $error';
  }

  @override
  String get playing => 'Speel...';

  @override
  String get posAdjective => 'Byvoeglike naamwoord';

  @override
  String get posAdverb => 'Bywoord';

  @override
  String get posConjunction => 'Voegwoord';

  @override
  String get posInterjection => 'Tussenwerpsel';

  @override
  String get posNoun => 'Naamwoord';

  @override
  String get posPreposition => 'Voorsetsel';

  @override
  String get posPronoun => 'Voornaamwoord';

  @override
  String get posVerb => 'Werkwoord';

  @override
  String get practiceModeTitle => 'Oefen';

  @override
  String get practiceWordsOnly => 'Oefen net woorde';

  @override
  String progress(int current, int total) {
    return 'Vordering: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Wys die $count mees onlangse items';
  }

  @override
  String recognitionFailed(String error) {
    return 'Spraakherkenning misluk: $error';
  }

  @override
  String get recognized => 'Herkenning voltooi';

  @override
  String get recognizedText => 'Erkende uitspraak:';

  @override
  String get recordDeleted => 'Rekord suksesvol verwyder';

  @override
  String get refresh => 'Verfris';

  @override
  String get reset => 'Herstel';

  @override
  String get resetPracticeHistory => 'Stel oefengeskiedenis terug';

  @override
  String get retry => 'Probeer weer?';

  @override
  String get reviewAll => 'Hersien alles';

  @override
  String reviewCount(int count) {
    return '$count keer hersien';
  }

  @override
  String get reviewModeTitle => '복습';

  @override
  String get roleAi => 'KI';

  @override
  String get roleThirdParty => 'Derde party';

  @override
  String get roleUser => 'Gebruiker';

  @override
  String get save => 'Stoor';

  @override
  String get saveData => 'Stoor';

  @override
  String saveFailed(String error) {
    return 'Stoor misluk: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'Stoor vertalings vanaf soekmodus';

  @override
  String get saved => 'Gestoor';

  @override
  String get saving => 'Stoor...';

  @override
  String score(String score) {
    return 'Akkuraatheid: $score%';
  }

  @override
  String get scoreLabel => ' telling';

  @override
  String get search => 'Soek';

  @override
  String get searchConditions => 'Soekvoorwaardes';

  @override
  String get searchSentenceHint => 'Soek sin...';

  @override
  String get searchWordHint => 'Soek woord...';

  @override
  String get sectionSentence => 'Sin-afdeling';

  @override
  String get sectionSentences => 'sin';

  @override
  String get sectionWord => 'Woordafdeling';

  @override
  String get sectionWords => 'woord';

  @override
  String get selectExistingSubject => 'Kies bestaande naam';

  @override
  String get selectMaterialPrompt => 'Kies asseblief studiemateriaal';

  @override
  String get selectMaterialSet => 'Keuse van leermateriaal';

  @override
  String get selectPOS => 'Kies woordsoort';

  @override
  String get selectParticipants => 'Kies deelnemers';

  @override
  String get selectSentenceType => 'Kies sinsoort';

  @override
  String get selectStudyMaterial => 'Kies Materiaal';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Sin';

  @override
  String get signUp => 'Registreer';

  @override
  String get similarTextFound => 'Soortgelyke teks gevind';

  @override
  String get skip => '건너뛰기';

  @override
  String get source => 'Bron:';

  @override
  String get sourceLanguage => 'Bron Taal';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Praat nou!';

  @override
  String get speaker => 'Spreker';

  @override
  String get speakerSelect => 'Kies spreker';

  @override
  String get speakingPractice => 'Praatoefening';

  @override
  String get startChat => 'Begin gesprek';

  @override
  String get startPractice => 'Begin Oefening';

  @override
  String get startTutorial => 'Begin Toer';

  @override
  String get startWarning => 'Waarskuwing';

  @override
  String get startsWith => 'Begin met';

  @override
  String get statusCheckEmail =>
      'Gaan asseblief jou e-pos na om die verifikasie te voltooi.';

  @override
  String statusDownloading(Object name) {
    return 'Laai af: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Invoer het misluk: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name invoer voltooi';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Aanmelding is gekanselleer.';

  @override
  String statusLoginFailed(Object error) {
    return 'Aanmelding het misluk: $error';
  }

  @override
  String get statusLoginSuccess => 'Suksesvol aangemeld.';

  @override
  String get statusLogoutSuccess => 'Uitgeteken.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Registrasie het misluk: $error';
  }

  @override
  String get statusSigningUp => 'Besig om te registreer...';

  @override
  String get stopPractice => 'Stop';

  @override
  String get studyComplete => 'Bestudeer';

  @override
  String studyRecords(int count) {
    return 'Rekords ($count)';
  }

  @override
  String get styleFormal => 'Formeel';

  @override
  String get styleInformal => 'Informele';

  @override
  String get stylePolite => 'Beleefd';

  @override
  String get styleSlang => 'Sleng';

  @override
  String get subject => 'Onderwerp:';

  @override
  String get swapLanguages => 'Ruil tale om';

  @override
  String get switchToAi => 'Skakel oor na KI-modus';

  @override
  String get switchToPartner => 'Skakel oor na Vennootmodus';

  @override
  String get syncingData => 'Besig om data te sinchroniseer...';

  @override
  String get tabConversation => 'Gesprek';

  @override
  String tabReview(int count) {
    return 'Hersiening ($count)';
  }

  @override
  String get tabSentence => 'sin';

  @override
  String get tabSpeaking => 'Praat';

  @override
  String tabStudyMaterial(int count) {
    return 'Materiaal ($count)';
  }

  @override
  String get tabWord => 'woord';

  @override
  String get tagFormal => 'Formeel';

  @override
  String get tagSelection => 'Kies merker';

  @override
  String get targetLanguage => 'Teiltaal';

  @override
  String get targetLanguageFilter => 'Teiltaal Filter:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'Tyd om te dink voor die antwoord gewys word.';

  @override
  String get thinkingTimeInterval => 'Speelvertraging';

  @override
  String get timeUp => 'Tyd is op!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Titelmerker (Versameling)';

  @override
  String get tooltipDecrease => 'Verminder';

  @override
  String get tooltipIncrease => 'Verhoog';

  @override
  String get tooltipSearch => 'Soek';

  @override
  String get tooltipSpeaking => 'Praat';

  @override
  String get tooltipStudyReview => 'Studie+Hersiening';

  @override
  String totalRecords(int count) {
    return 'Totale $count rekords (sien alles)';
  }

  @override
  String get translate => 'Vertaal';

  @override
  String get translating => 'Vertaal...';

  @override
  String get translation => 'Vertaling';

  @override
  String get translationComplete => 'Vertaling voltooi (stoor vereis)';

  @override
  String translationFailed(String error) {
    return 'Vertaling misluk: $error';
  }

  @override
  String get translationLimitExceeded => 'Vertalingslimiet oorskry';

  @override
  String get translationLimitMessage =>
      'Jy het al jou daaglikse gratis vertalings (5 keer) gebruik.\\n\\nWil jy \'n advertensie kyk om 5 keer onmiddellik aan te vul?';

  @override
  String get translationLoaded => 'Gestorde vertaling gelaai';

  @override
  String get translationRefilled => 'Vertalings is 5 keer aangevul!';

  @override
  String get translationResultHint => 'Vertalingsresultaat - kan gewysig word';

  @override
  String get tryAgain => 'Probeer weer';

  @override
  String get tutorialAiChatDesc => 'Oefen regte gesprekke met KI-personas.';

  @override
  String get tutorialAiChatTitle => 'KI-klets';

  @override
  String get tutorialContextDesc =>
      'Voeg konteks by (bv. Oggend) om soortgelyke sinne te onderskei.';

  @override
  String get tutorialContextTitle => 'Konteks Merker';

  @override
  String get tutorialLangSettingsDesc =>
      'Stel die bron- en doeltale vir vertaling in.';

  @override
  String get tutorialLangSettingsTitle => 'Taalinstellings';

  @override
  String get tutorialM1ToggleDesc => 'Skakel woord- en sinmodusse hier om.';

  @override
  String get tutorialM1ToggleTitle => 'Woord-/Sinmodus';

  @override
  String get tutorialM2DropdownDesc => 'Kies studiemateriaal.';

  @override
  String get tutorialM2ImportDesc => 'Voer JSON-lêer in vanaf toestelgids.';

  @override
  String get tutorialM2ListDesc =>
      'Gaan jou kaarte na en draai hulle om. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Studielys';

  @override
  String get tutorialM2SearchDesc =>
      'Soek gestoorde woorde en sinne om hulle vinnig te vind.';

  @override
  String get tutorialM2SelectDesc => 'Kies materiaal of \'Hersien Alles\'.';

  @override
  String get tutorialM2SelectTitle => 'Kies & Filter';

  @override
  String get tutorialM3IntervalDesc => 'Pas wagtyd tussen sinne aan.';

  @override
  String get tutorialM3IntervalTitle => 'Stel interval in';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Kies stel vir praatoefening.';

  @override
  String get tutorialM3SelectTitle => 'Kies Materiaal';

  @override
  String get tutorialM3StartDesc => 'Druk speel om te begin.';

  @override
  String get tutorialM3StartTitle => 'Begin';

  @override
  String get tutorialM3WordsDesc => 'Merk om net gestoorde woorde te oefen.';

  @override
  String get tutorialM3WordsTitle => 'Woordoefening';

  @override
  String get tutorialMicDesc => 'Tik die mikrofoon vir stem invoer.';

  @override
  String get tutorialMicTitle => 'Stem Invoer';

  @override
  String get tutorialSaveDesc => 'Stoor jou vertaling.';

  @override
  String get tutorialSaveTitle => 'Stoor';

  @override
  String get tutorialSwapDesc => 'Ek ruil my taal met die taal wat ek leer.';

  @override
  String get tutorialTabDesc => 'Jy kan die gewenste leerwyse hier kies.';

  @override
  String get tutorialTapToContinue => 'Tik om voort te gaan';

  @override
  String get tutorialTransDesc => 'Tik hier om jou teks te vertaal.';

  @override
  String get tutorialTransTitle => 'Vertaal';

  @override
  String get typeExclamation => 'Uitroep';

  @override
  String get typeImperative => 'Bevel';

  @override
  String get typeQuestion => 'Vraag';

  @override
  String get typeStatement => 'Stelling';

  @override
  String get usageLimitTitle => 'Limiet bereik';

  @override
  String get useExistingText => 'Gebruik Bestaande';

  @override
  String get viewOnlineGuide => 'Bekyk aanlyn gids';

  @override
  String get voluntaryTranslations => 'Vrywillige vertalings';

  @override
  String get watchAdAndRefill => 'Kyk advertensie en vul aan (+5 keer)';

  @override
  String get word => 'Woord';

  @override
  String get wordDefenseDesc =>
      'Verdedig die basis deur woorde te sê voordat die vyande arriveer.';

  @override
  String get wordDefenseTitle => 'Woordverdediging';

  @override
  String get wordModeLabel => 'Woordmodus';

  @override
  String get yourPronunciation => 'Jou Uitspraak';

  @override
  String get ttsUnsupportedNatively =>
      'Hierdie toestel ondersteun nie teks-na-spraak vir hierdie taal in sy verstekinstellings nie.';

  @override
  String get homeTab => 'Vertaling';

  @override
  String get welcomeTitle => 'Welkom by Talkie!';

  @override
  String get welcomeDesc =>
      'Welkom by Talkie! Ondersteun alle 80+ tale wêreldwyd met 100% integriteit, kompleet met nuwe premium 3D-ontwerpe en geoptimaliseerde werkverrigting vir \'n perfekte leerervaring.';

  @override
  String get welcomeButton => 'Begin';

  @override
  String get labelDetails => 'Gedetailleerde instellings';

  @override
  String get translationResult => 'Vertalingsresultaat';

  @override
  String get inputContent => 'Invoerkonteks';

  @override
  String get translateNow => 'Vertaal Nou';

  @override
  String get tooltipSettingsConfirm => 'Bevestig instellings';

  @override
  String get hintNoteExample =>
      'bv. kontekstuele aantekeninge, homonieme, ens.';

  @override
  String get hintTagExample => 'bv. besigheid, reis...';

  @override
  String get addNew => 'Nuwe byvoeg';

  @override
  String get newNotebookTitle => 'Nuwe notaboek titel';

  @override
  String get enterNameHint => 'Voer naam in';

  @override
  String get add => 'Voeg by';

  @override
  String get openSettings => 'Open instellings';

  @override
  String get helpNotebook => 'Kies \'n gids om vertaalde resultate te stoor.';

  @override
  String get helpNote =>
      'Teken die betekenis, voorbeelde of situasies van die woord vrylik aan.';

  @override
  String get helpTag => 'Sleutelwoorde vir latere kategorisering of soektogte.';

  @override
  String get requestTranslation => 'Vertaal versoek';

  @override
  String get statusRequestSuccess => 'Vertaling versoek suksesvol.';

  @override
  String statusRequestFailed(String error) {
    return 'Vertaling versoek het misluk: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Studie taal nie ondersteun nie';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Die gekose materiaal ondersteun nie die huidige studie taal ($targetLang) nie en kan nie plaaslik gestoor word nie. Wil jy \'n vertaling aanvra?';
  }

  @override
  String get quickStartStep1Title => '1. Stel Taal';

  @override
  String get quickStartStep1Desc =>
      'Kies eers jou taal en die taal wat jy leer onder Kieslys > Taalinstellings.';

  @override
  String get quickStartStep2Title => '2. Basiese Vloei';

  @override
  String get quickStartStep2Desc =>
      'Skep jou eie leerkaarte in die volgorde van invoer (mikrofoon/sleutelbord) -> vertaling -> stoor.';

  @override
  String get quickStartStep3Title => '3. Gebruik Modusse';

  @override
  String get quickStartStep3Desc =>
      'Oefen met klets, en oefen uitspraak direk terwyl jy die teks in die Uitspraakoefening-oortjie bekyk.';
}

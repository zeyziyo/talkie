// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get accuracy => 'Nøjagtighed';

  @override
  String get adLoading => 'Indlæser annonce. Prøv igen om et øjeblik.';

  @override
  String get add => 'Tilføj';

  @override
  String get addNew => 'Tilføj ny';

  @override
  String get addNewSubject => 'Tilføj ny overskrift';

  @override
  String get addTagHint => 'Tilføj tag...';

  @override
  String get alreadyHaveAccount => 'Har du allerede en konto?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Afspil automatisk';

  @override
  String get basic => 'Grundlæggende';

  @override
  String get basicDefault => 'Grundlæggende';

  @override
  String get basicMaterialRepository => 'Grundlæggende ord-/sætningslager';

  @override
  String get basicSentenceRepository => 'Grundlæggende sætningsarkiv';

  @override
  String get basicSentences => 'Grundlæggende sætningslager';

  @override
  String get basicWordRepository => 'Grundlæggende ordarkiv';

  @override
  String get basicWords => 'Grundlæggende ordlager';

  @override
  String get cancel => 'Annuller';

  @override
  String get caseObject => 'Akkusativ';

  @override
  String get casePossessive => 'Genitiv';

  @override
  String get casePossessivePronoun => 'Possessivt pronomen';

  @override
  String get caseReflexive => 'Refleksivt pronomen';

  @override
  String get caseSubject => 'Nominativ';

  @override
  String get checking => 'Tjekker...';

  @override
  String get clearAll => 'Ryd alle';

  @override
  String get confirm => 'Bekræft';

  @override
  String get confirmDelete => 'Er du sikker på at slette denne optegnelse?';

  @override
  String get contextTagHint =>
      'Skriv situationen ned for at gøre det lettere at skelne den senere';

  @override
  String get contextTagLabel =>
      'Kontekst/situation (valgfrit) - f.eks. morgenhilsen, høflig tale';

  @override
  String get copiedToClipboard => 'Kopieret til udklipsholder!';

  @override
  String get copy => 'Kopiér';

  @override
  String get correctAnswer => 'Rigtigt Svar';

  @override
  String get createNew => 'Opret Ny';

  @override
  String get currentLocation => 'Nuværende placering';

  @override
  String get currentMaterialLabel => 'Aktuelt valgte materiale:';

  @override
  String get delete => 'Slet';

  @override
  String deleteFailed(String error) {
    return 'Sletning fejlede: $error';
  }

  @override
  String get deleteRecord => 'Slet Optegnelse';

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => 'Har du ikke en konto?';

  @override
  String get email => 'E-mail';

  @override
  String get emailAlreadyInUse =>
      'Denne e-mailadresse er allerede i brug. Log ind, eller brug \'Glemt kodeord\'.';

  @override
  String get enterNameHint => 'Indtast navn';

  @override
  String get enterNewSubjectName => 'Indtast ny overskrift';

  @override
  String get enterSentenceHint => 'Indtast en sætning...';

  @override
  String get enterTextHint => 'Indtast tekst for at oversætte';

  @override
  String get enterTextToTranslate => 'Indtast tekst til oversættelse';

  @override
  String get enterWordHint => 'Indtast et ord...';

  @override
  String get error => 'Fejl';

  @override
  String get errorHateSpeech =>
      'Kan ikke oversætte, da det indeholder hadefulde udtalelser.';

  @override
  String get errorOtherSafety =>
      'Oversættelse blev afvist af AI\'s sikkerhedspolitik.';

  @override
  String get errorProfanity =>
      'Kan ikke oversætte, da det indeholder bandeord.';

  @override
  String get errorSelectCategory => 'Vælg et ord eller en sætning først!';

  @override
  String get errorSexualContent =>
      'Kan ikke oversætte, da det indeholder seksuelt indhold.';

  @override
  String get errors => 'Fejl:';

  @override
  String get extractedText => 'Genkendt tekst';

  @override
  String get female => 'Kvinde';

  @override
  String get file => 'Fil:';

  @override
  String get filterAll => 'Alle';

  @override
  String get flip => 'Vend';

  @override
  String get formComparative => 'Komparativ';

  @override
  String get formInfinitive => 'Infinitiv/nutid';

  @override
  String get formPast => 'Datid';

  @override
  String get formPastParticiple => 'Perfektum participium';

  @override
  String get formPlural => 'Flertal';

  @override
  String get formPositive => 'Positiv';

  @override
  String get formPresent => 'Nutid';

  @override
  String get formPresentParticiple => 'Nutids participium (ing)';

  @override
  String get formSingular => 'Ental';

  @override
  String get formSuperlative => 'Superlativ';

  @override
  String get formThirdPersonSingular => '3. person ental';

  @override
  String get gameModeDesc => 'Vælg den spiltilstand, du vil øve dig i';

  @override
  String get gameModeTitle => 'Spiltilstand';

  @override
  String get gameOver => 'Spillet er slut';

  @override
  String get gender => 'Køn';

  @override
  String get generalTags => 'Generelle tags';

  @override
  String get getMaterials => 'Hent materialer';

  @override
  String get good => 'Godt';

  @override
  String get googleContinue => 'Fortsæt med Google';

  @override
  String get helpJsonDesc => 'For import i Tilstand 3, opret JSON:';

  @override
  String get helpJsonTypeSentence => 'Sætning (Sentence)';

  @override
  String get helpJsonTypeWord => 'Ord (Word)';

  @override
  String get helpMode1Desc =>
      'Begynd sprogindlæringen på den mest intuitive måde med en førsteklasses 3D-mikrofon og et stort tastaturikon.';

  @override
  String get helpMode1Details =>
      '• Sprogindstillinger: Tjek dit sprog og det sprog, du lærer, og skift læringssprog med sprogknappen øverst på startskærmen.\n• Enkel input: Input straks via den store mikrofon og tekstvinduet i midten.\n• Bekræft indstillinger: Når input er fuldført, skal du trykke på den blå fluebenknap til højre. Detaljerede indstillingsvindue vises.\n• Detaljerede indstillinger: I den viste dialogboks kan du angive notesamling, kommentarer (noter) og tags, der skal gemmes.\n• Oversæt nu: Når du har fuldført indstillingerne, skal du trykke på den grønne oversættelsesknap for at få kunstig intelligens til at oversætte med det samme.\n• Automatisk søgning: Registrer og vis lignende eksisterende oversættelser i realtid under input.\n• Lyt og gem: Lyt til udtalen med højttalerikonet under oversættelsesresultaterne, og tilføj det til din indlæringsliste via \'Gem data\'.';

  @override
  String get helpMode2Desc =>
      'Gennemgå gemte sætninger med skjult oversættelse.';

  @override
  String get helpMode2Details =>
      '• Vælg materialesamling: Brug \'Vælg studiesamling\' eller \'Online materialerum\' i menuen (⋮) øverst til højre\n• Vend kort: Tjek oversættelsen med \'Vis/Skjul\'\n• Lyt: Afspil udtale med højttalerikonet\n• Læring fuldført: Marker som fuldført med et flueben (V)\n• Slet: Slet poster ved at trykke længe på kortet (Langt klik)\n• Søg og filtrer: Understøtter søgefelt (smart realtidssøgning) og tags, startbogstavfilter';

  @override
  String get helpMode3Desc =>
      'Øv din udtale ved at lytte til sætninger og gentage dem (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Vælg: Vælg pakke\n• Interval: [-] [+] ventetid (3s-60s)\n• Start/Stop: Kontroller session\n• Tal: Lyt og gentag\n• Score: Nøjagtighed (0-100)\n• Prøv igen: Knap hvis stemme ej fundet';

  @override
  String get helpNote =>
      'Notér frit ordets betydning, eksempler eller situationer.';

  @override
  String get helpNotebook =>
      'Vælg den mappe, hvor de oversatte resultater skal gemmes.';

  @override
  String get helpTabJson => 'JSON-format';

  @override
  String get helpTabModes => 'Tilstande';

  @override
  String get helpTabQuickStart => 'Hurtigstart';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpTag =>
      'Indtast nøgleord til senere kategorisering eller søgning.';

  @override
  String get helpTitle => 'Hjælp & Guide';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Skjul';

  @override
  String get hintNoteExample => 'F.eks. kontekst, homonymer osv.';

  @override
  String get hintTagExample => 'F.eks. Virksomhed, Rejser...';

  @override
  String get homeTab => 'Oversæt';

  @override
  String importAdded(int count) {
    return 'Tilføjet: $count';
  }

  @override
  String get importComplete => 'Import Færdig';

  @override
  String get importDuplicateTitleError =>
      'Et materiale med samme titel findes allerede. Prøv igen efter at have ændret titlen.';

  @override
  String importErrorMessage(String error) {
    return 'Kunne ikke importere fil:\\n$error';
  }

  @override
  String get importFailed => 'Import Fejlede';

  @override
  String importFile(String fileName) {
    return 'Fil: $fileName';
  }

  @override
  String importFolderSuccess(num files, num entries) {
    return '$files filer, $entries poster importeret.';
  }

  @override
  String get importJsonFile => 'Importer JSON';

  @override
  String get importJsonFilePrompt => 'Venligst importer en JSON fil';

  @override
  String importSkipped(int count) {
    return 'Sprunget over: $count';
  }

  @override
  String get importSourceFile => 'Enkelt JSON-fil';

  @override
  String get importSourceFolder => 'Mappe (sprokspecifik biblioteksstruktur)';

  @override
  String get importSourceTitle => 'Vælg importkilde';

  @override
  String get importSourceZip => 'ZIP-fil (komprimeret mappe)';

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String get importing => 'Importerer...';

  @override
  String get inputContent => 'Indtastet indhold';

  @override
  String get inputLanguage => 'Inputsprog';

  @override
  String get inputModeTitle => 'Indtastning';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds sekunder';
  }

  @override
  String get invalidEmail => 'Indtast en gyldig e-mail.';

  @override
  String get kakaoContinue => 'Fortsæt med Kakao';

  @override
  String get labelDetails => 'Detaljerede indstillinger';

  @override
  String get labelFilterMaterial => 'Materiale';

  @override
  String get labelFilterTag => 'Tag';

  @override
  String get labelLangCode => 'Sprogkode (f.eks. en-US, ko-KR)';

  @override
  String get labelNote => 'Note';

  @override
  String get labelPOS => 'Ordart';

  @override
  String get labelSentence => 'Sætning';

  @override
  String get labelSentenceCollection => 'Sætningssamling';

  @override
  String get labelSentenceType => 'Sætningstype';

  @override
  String get labelShowMemorized => 'Færdig';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Ord';

  @override
  String get labelWordbook => 'Ordbog';

  @override
  String get language => 'Sprog';

  @override
  String get languageSettings => 'Sprogindstillinger';

  @override
  String get languageSettingsTitle => 'Sprogindstillinger';

  @override
  String get libTitleFirstMeeting => 'Første møde';

  @override
  String get libTitleGreetings1 => 'Hilsner 1';

  @override
  String get libTitleNouns1 => 'Substantiver 1';

  @override
  String get libTitleVerbs1 => 'Verber 1';

  @override
  String get listen => 'Lyt';

  @override
  String get listening => 'Lytter...';

  @override
  String get location => 'Placering';

  @override
  String get login => 'Log ind';

  @override
  String get logout => 'Log ud';

  @override
  String get logoutConfirmMessage =>
      'Er du sikker på, at du vil logge ud af denne enhed?';

  @override
  String get logoutConfirmTitle => 'Log ud';

  @override
  String get male => 'Mand';

  @override
  String get manual => 'Manuel input';

  @override
  String get markAsStudied => 'Marker som Studeret';

  @override
  String get materialInfo => 'Materialeinfo';

  @override
  String get menuDeviceImport => 'Importer materiale fra enhed';

  @override
  String get menuHelp => 'Hjælp';

  @override
  String get menuLanguageSettings => 'Sprogindstillinger';

  @override
  String get menuOnlineLibrary => 'Online bibliotek';

  @override
  String get menuSelectMaterialSet => 'Vælg et studiemateriale';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Vejledningstur';

  @override
  String get menuWebDownload => 'Brugervejledning';

  @override
  String get metadataDialogTitle => 'Detaljeret klassificering';

  @override
  String get metadataFormType => 'Grammatisk form';

  @override
  String get metadataRootWord => 'Rodform (Root Word)';

  @override
  String get micButtonTooltip => 'Start stemmegenkendelse';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Aktuelt valgte materiale: $name';
  }

  @override
  String get mode2Title => 'Gennemgang';

  @override
  String get mode3Next => 'Næste';

  @override
  String get mode3Start => 'Start';

  @override
  String get mode3Stop => 'Stop';

  @override
  String get mode3TryAgain => 'Prøv igen';

  @override
  String get mySentenceCollection => 'Min sætningssamling';

  @override
  String get myWordbook => 'Min ordbog';

  @override
  String get neutral => 'Neutral';

  @override
  String get newNotebookTitle => 'Nyt notesbogsnavn';

  @override
  String get newSubjectName => 'Nyt emneoverskrift';

  @override
  String get next => 'Næste';

  @override
  String get noDataForLanguage =>
      'Der er ingen læringsmaterialer for det valgte sprog i den lokale database. Download materialerne, eller vælg et andet sprog.';

  @override
  String get noMaterialsInCategory =>
      'Der er intet materiale i denne kategori.';

  @override
  String get noRecords => 'Ingen optegnelser for valgt sprog';

  @override
  String get noStudyMaterial => 'Intet studiemateriale.';

  @override
  String get noTextToPlay => 'Ingen tekst at afspille';

  @override
  String get noTranslationToSave => 'Ingen oversættelse at gemme';

  @override
  String get noVoiceDetected => 'Ingen stemme registreret';

  @override
  String get notSelected => '- Ikke valgt -';

  @override
  String get noteGuidance =>
      'Her indtaster du yderligere detaljer for en mere præcis oversættelse';

  @override
  String get onlineLibraryCheckInternet =>
      'Tjek din internetforbindelse eller prøv igen senere.';

  @override
  String get onlineLibraryLoadFailed => 'Kunne ikke indlæse materialet.';

  @override
  String get onlineLibraryNoMaterials => 'Intet materiale tilgængeligt.';

  @override
  String get openSettings => 'Åbn indstillinger';

  @override
  String get password => 'Adgangskode';

  @override
  String get passwordTooShort => 'Adgangskoden er for kort';

  @override
  String get perfect => 'Perfekt!';

  @override
  String get pickGallery => 'Vælg fra galleri';

  @override
  String get playAgain => 'Spil igen';

  @override
  String playbackFailed(String error) {
    return 'Afspilning fejlede: $error';
  }

  @override
  String get playing => 'Afspiller...';

  @override
  String get posAdjective => 'Adjektiv';

  @override
  String get posAdverb => 'Adverbium';

  @override
  String get posArticle => 'Artikel';

  @override
  String get posConjunction => 'Konjunktion';

  @override
  String get posInterjection => 'Interjektion';

  @override
  String get posNoun => 'Substantiv';

  @override
  String get posParticle => 'Partikel';

  @override
  String get posPreposition => 'Præposition';

  @override
  String get posPronoun => 'Pronomen';

  @override
  String get posVerb => 'Verbum';

  @override
  String get practiceModeTitle => 'Øvelse';

  @override
  String get practiceWordsOnly => 'Kun øve ord';

  @override
  String get processing => 'Behandler...';

  @override
  String progress(int current, int total) {
    return 'Fremskridt: $current / $total';
  }

  @override
  String get quickStartStep1Desc =>
      'Indstil først dit sprog og det sprog, du vil lære, under Menu > Sprogindstillinger.';

  @override
  String get quickStartStep1Title => '1. Indstil sprog';

  @override
  String get quickStartStep2Desc =>
      'Opret dine egne flashcards i rækkefølgen input (mikrofon/tastatur) -> oversættelse -> gem.';

  @override
  String get quickStartStep2Title => '2. Grundlæggende flow';

  @override
  String get quickStartStep3Desc =>
      'Review translated words and sentences in your study list, and practice speaking directly in the pronunciation practice tab.';

  @override
  String get quickStartStep3Title => '3. Udnyt tilstande';

  @override
  String recentNItems(int count) {
    return 'Vis de seneste $count elementer';
  }

  @override
  String recognitionFailed(String error) {
    return 'Talegenkendelse fejlede: $error';
  }

  @override
  String get recognized => 'Genkendelse færdig';

  @override
  String get recognizedText => 'Genkendt udtale:';

  @override
  String get recordDeleted => 'Optegnelse slettet';

  @override
  String get refresh => 'Opdater';

  @override
  String get requestTranslation => 'Anmod om oversættelse';

  @override
  String get reset => 'Nulstil';

  @override
  String get resetPracticeHistory => 'Nulstil øvelseshistorik';

  @override
  String get retry => 'Prøv igen?';

  @override
  String get reviewAll => 'Gennemgå alle';

  @override
  String reviewCount(int count) {
    return 'Gennemgået $count gange';
  }

  @override
  String get reviewModeTitle => 'Gennemgang';

  @override
  String get save => 'Gem';

  @override
  String get saveAsSentence => 'Gem som sætning';

  @override
  String get saveAsWord => 'Gem som ord';

  @override
  String get saveData => 'Gem';

  @override
  String saveFailed(String error) {
    return 'Gem fejlede: $error';
  }

  @override
  String get saveToHistory => 'Gem i scanningshistorik';

  @override
  String get saveTranslationsFromSearch => 'Gem oversættelser fra søgetilstand';

  @override
  String get saved => 'Gemt';

  @override
  String get originalText => '원본 텍스트';

  @override
  String get saving => 'Gemmer...';

  @override
  String get scanInstructions => 'Vælg et billede, der skal scannes';

  @override
  String get scanNoMatch =>
      '사진에서 설정된 학습 언어와 일치하는 텍스트를 찾을 수 없습니다. 언어 설정을 확인해 보세요.';

  @override
  String get scanNotSupported =>
      'Scanning understøttes ikke for dette sprog. OCR understøtter i øjeblikket kun latinske, kinesiske, devanagari (f.eks. hindi), japanske og koreanske tegn.';

  @override
  String get scanLabel => 'Scan';

  @override
  String score(String score) {
    return 'Nøjagtighed: $score%';
  }

  @override
  String get scoreLabel => 'Score';

  @override
  String get search => 'Søg';

  @override
  String get searchConditions => 'Søgekriterier';

  @override
  String get searchSentenceHint => 'Søg i sætninger...';

  @override
  String get searchWordHint => 'Søg i ord...';

  @override
  String get sectionSentence => 'Sætningsafsnit';

  @override
  String get sectionSentences => 'Sætninger';

  @override
  String get sectionWord => 'Ordsektion';

  @override
  String get sectionWords => 'Ord';

  @override
  String get selectExistingSubject => 'Vælg eksisterende overskrift';

  @override
  String get selectMaterialPrompt => 'Venligst vælg studiemateriale';

  @override
  String get selectMaterialSet => 'Vælg læremateriale';

  @override
  String get selectPOS => 'Vælg ordklasse';

  @override
  String get selectStudyMaterial => 'Vælg Materiale';

  @override
  String get sentence => 'Sætning';

  @override
  String get signUp => 'Tilmeld dig';

  @override
  String get simplifiedGuidance =>
      'Konverter øjeblikkeligt hverdagsagtaler til fremmedsprog! Talkie registrerer dit sprog liv.';

  @override
  String get sourceLanguageLabel => 'Mit sprog';

  @override
  String get startTutorial => 'Start introduktion';

  @override
  String get startsWith => 'Starter med';

  @override
  String get statusCheckEmail => 'Tjek venligst din e-mail';

  @override
  String statusDownloading(String name) {
    return 'Downloader: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return 'Import mislykkedes: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$name importeret';
  }

  @override
  String statusLoginFailed(String error) {
    return 'Login mislykkedes: $error';
  }

  @override
  String get statusLoginSuccess => 'Login lykkedes';

  @override
  String get statusLogoutSuccess => 'Logud lykkedes';

  @override
  String statusRequestFailed(String error) {
    return 'Oversættelsesanmodning mislykkedes: $error';
  }

  @override
  String get statusRequestSuccess => 'Oversættelsesanmodning fuldført.';

  @override
  String get stopPractice => 'Stop';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Det valgte materiale understøtter ikke det aktuelt indstillede undervisningssprog ($targetLang) og kan ikke gemmes lokalt. Vil du anmode om en oversættelse?';
  }

  @override
  String get studyLangNotFoundTitle => 'Undervisningssprog ikke understøttet';

  @override
  String get styleFormal => 'Høflig tale';

  @override
  String get styleInformal => 'Uformel tale';

  @override
  String get stylePolite => 'Høflighed';

  @override
  String get styleSlang => 'Slang';

  @override
  String get swapLanguages => 'Skift sprog';

  @override
  String get syncingData => 'Synkroniserer data...';

  @override
  String tabReview(int count) {
    return 'Gennemgang ($count)';
  }

  @override
  String get tabSentence => 'dømme';

  @override
  String get tabSpeaking => 'Tale';

  @override
  String tabStudyMaterial(int count) {
    return 'Materiale ($count)';
  }

  @override
  String get tabWord => 'ord';

  @override
  String get tagFormal => 'Formalt';

  @override
  String get tagSelection => 'Valg af tag';

  @override
  String get targetLanguage => 'Målsprog';

  @override
  String get targetLanguageFilter => 'Målsprog Filter:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'Tænketid før det korrekte svar afsløres.';

  @override
  String get thinkingTimeInterval => 'Forsinkelse ved afspilning';

  @override
  String get timeUp => 'Tiden er gået!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Titel-tag (samling)';

  @override
  String get tooltipDecrease => 'Formindsk';

  @override
  String get tooltipIncrease => 'Forøg';

  @override
  String get tooltipSearch => 'Søg';

  @override
  String get tooltipSettingsConfirm => 'Bekræft indstillinger';

  @override
  String get tooltipSpeaking => 'Tale';

  @override
  String get tooltipStudyReview => 'Studie+Gentagelse';

  @override
  String totalRecords(int count) {
    return 'I alt $count poster (vis alle)';
  }

  @override
  String get translate => 'Oversæt';

  @override
  String get translateNow => 'Oversæt nu';

  @override
  String get translating => 'Oversætter...';

  @override
  String get translation => 'Oversættelse';

  @override
  String get translationComplete => 'Oversættelse færdig (kræver gem)';

  @override
  String translationFailed(String error) {
    return 'Oversættelse fejlede: $error';
  }

  @override
  String get translationLanguage => 'Oversættelsessprog';

  @override
  String get translationLimitExceeded => 'Oversættelsesgrænse overskredet';

  @override
  String get translationLimitMessage =>
      'Du har brugt alle de gratis daglige oversættelser (5 gange).\\n\\nVil du se en annonce og straks genopfylde 5 gange?';

  @override
  String get translationLoaded => 'Gemt oversættelse indlæst';

  @override
  String get translationRefilled =>
      'Antallet af oversættelser er blevet genopfyldt 5 gange!';

  @override
  String get translationResult => 'Oversættelsesresultat';

  @override
  String get translationResultHint => 'Oversættelsesresultat - kan redigeres';

  @override
  String get tryAgain => 'Prøv igen';

  @override
  String get ttsInstallGuide =>
      'Installer sprogdataene under Android-indstillinger > Google TTS.';

  @override
  String get ttsMissing =>
      'Lydmotoren for dette sprog er ikke installeret på din enhed.';

  @override
  String get ttsUnsupportedNatively =>
      'Denne enheds standardindstillinger understøtter ikke tekst-til-tale for dette sprog.';

  @override
  String get tutorialContextDesc =>
      'Tilføj kontekst (f.eks. Morgen) for at skelne lignende sætninger.';

  @override
  String get tutorialContextTitle => 'Konteksthjælp';

  @override
  String get tutorialLangSettingsDesc =>
      'Indstil kildesproget og målsproget for oversættelse.';

  @override
  String get tutorialLangSettingsTitle => 'Sprogindstillinger';

  @override
  String get tutorialM1ToggleDesc =>
      'Skift mellem ord- og sætningstilstand her.';

  @override
  String get tutorialM1ToggleTitle => 'Ord-/sætningstilstand';

  @override
  String get tutorialM2DropdownDesc => 'Vælg studiemateriale.';

  @override
  String get tutorialM2ImportDesc => 'Importer JSON-fil fra enhedsmappe.';

  @override
  String get tutorialM2ListDesc =>
      'Tjek kort og vend dem. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Studieliste';

  @override
  String get tutorialM2SearchDesc =>
      'Du kan hurtigt finde gemte ord og sætninger ved at søge.';

  @override
  String get tutorialM2SelectDesc => 'Vælg materiale eller \'Gennemgå Alle\'.';

  @override
  String get tutorialM2SelectTitle => 'Vælg & Filter';

  @override
  String get tutorialM3IntervalDesc => 'Juster ventetid mellem sætninger.';

  @override
  String get tutorialM3IntervalTitle => 'Intervalindstilling';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Vælg sæt til taleøvelse.';

  @override
  String get tutorialM3SelectTitle => 'Vælg Materiale';

  @override
  String get tutorialM3StartDesc => 'Tryk play for at starte.';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3WordsDesc =>
      'Hvis du markerer dette, vil du kun øve de gemte ord.';

  @override
  String get tutorialM3WordsTitle => 'Ordøvelse';

  @override
  String get tutorialMicDesc => 'Tryk på mikrofonen for stemmeindput.';

  @override
  String get tutorialMicTitle => 'Stemmeindput';

  @override
  String get tutorialSaveDesc => 'Gem din oversættelse.';

  @override
  String get tutorialSaveTitle => 'Gem';

  @override
  String get tutorialSwapDesc =>
      'Jeg bytter mit sprog ud med det sprog, jeg lærer.';

  @override
  String get tutorialTabDesc => 'Her kan du vælge den ønskede læringstilstand.';

  @override
  String get tutorialTapToContinue => 'Tryk for at fortsætte';

  @override
  String get tutorialTransDesc => 'Tryk her for at oversætte tekst.';

  @override
  String get tutorialTransTitle => 'Oversæt';

  @override
  String get typeExclamation => 'Udråbssætning';

  @override
  String get typeIdiom => 'Idiom';

  @override
  String get typeImperative => 'Imperativ sætning';

  @override
  String get typeProverb => 'Ordsprog';

  @override
  String get typeQuestion => 'Spørgsmål';

  @override
  String get typeStatement => 'Deklarativ sætning';

  @override
  String get usageLimitTitle => 'Grænse nået';

  @override
  String get useExistingText => 'Brug Eksisterende';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => 'Se online guide';

  @override
  String get voluntaryTranslations => 'Frivillige oversættelser';

  @override
  String get watchAdAndRefill => 'Se annonce og genopfyld (+5 gange)';

  @override
  String get welcomeButton => 'Kom i gang';

  @override
  String get welcomeDesc =>
      'Velkommen til Talkie! Vi understøtter alle 80+ sprog globalt med 100 % integritet og giver dig en perfekt læringsoplevelse med nyt premium 3D-design og optimeret ydeevne.';

  @override
  String get welcomeTitle => 'Velkommen til Talkie!';

  @override
  String get word => 'Ord';

  @override
  String get wordDefenseDesc =>
      'Forsvar basen ved at sige ord, før fjenden ankommer.';

  @override
  String get wordDefenseTitle => 'Ord-forsvar';

  @override
  String get wordModeLabel => 'Ordtilstand';

  @override
  String get yourPronunciation => 'Din udtale';
}

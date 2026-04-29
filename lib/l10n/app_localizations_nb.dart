// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get accuracy => 'Nøyaktighet';

  @override
  String get adLoading => 'Laster inn annonsen. Prøv igjen senere.';

  @override
  String get add => 'Legg til';

  @override
  String get addNew => 'Legg til ny';

  @override
  String get addNewSubject => 'Legg til nytt navn';

  @override
  String get addTagHint => 'Legg til tagg...';

  @override
  String get alreadyHaveAccount => 'Har du allerede en konto?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Autospill';

  @override
  String get basic => 'Grunnleggende';

  @override
  String get basicDefault => 'Grunnleggende';

  @override
  String get basicMaterialRepository => 'Grunnleggende setnings-/ordlager';

  @override
  String get basicSentenceRepository => 'Grunnleggende setningsliste';

  @override
  String get basicSentences => 'Grunnleggende setningslager';

  @override
  String get basicWordRepository => 'Grunnleggende ordliste';

  @override
  String get basicWords => 'Grunnleggende ordlager';

  @override
  String get cancel => 'Avbryt';

  @override
  String get caseObject => 'Objekt';

  @override
  String get casePossessive => 'Eiendomsform';

  @override
  String get casePossessivePronoun => 'Eiendomspronomen';

  @override
  String get caseReflexive => 'Refleksiv';

  @override
  String get caseSubject => 'Subjekt';

  @override
  String get checking => 'Sjekker...';

  @override
  String get clearAll => 'Fjern alle';

  @override
  String get confirm => 'Bekreft';

  @override
  String get confirmDelete => 'Vil du slette denne læringsposten?';

  @override
  String get contextTagHint =>
      'Skriv ned situasjonen for å gjøre det lettere å skille den senere';

  @override
  String get contextTagLabel =>
      'Kontekst/situasjon (valgfritt) – F.eks.: Morgenhilsen, formell tale';

  @override
  String get copiedToClipboard => 'Kopiert til utklippstavlen!';

  @override
  String get copy => 'Kopier';

  @override
  String get correctAnswer => 'Riktig svar';

  @override
  String get createNew => 'Fortsett med ny setning';

  @override
  String get currentLocation => 'Nåværende posisjon';

  @override
  String get currentMaterialLabel => 'Nåværende valgte materiell:';

  @override
  String get delete => 'Slett';

  @override
  String deleteFailed(String error) {
    return 'Sletting mislyktes: $error';
  }

  @override
  String get deleteRecord => 'Slett post';

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => 'Har du ikke en konto?';

  @override
  String get email => 'E-post';

  @override
  String get emailAlreadyInUse =>
      'Denne e-postadressen er allerede registrert. Vennligst logg inn eller bruk glemt passord.';

  @override
  String get enterNameHint => 'Skriv inn navn';

  @override
  String get enterNewSubjectName => 'Skriv inn nytt navn';

  @override
  String get enterSentenceHint => 'Skriv en setning...';

  @override
  String get enterTextHint => 'Skriv inn tekst som skal oversettes';

  @override
  String get enterTextToTranslate => 'Skriv inn tekst som skal oversettes';

  @override
  String get enterWordHint => 'Skriv et ord...';

  @override
  String get error => 'Feil';

  @override
  String get errorHateSpeech =>
      'Kan ikke oversettes fordi det inneholder hatytringer.';

  @override
  String get errorOtherSafety =>
      'Oversettelse ble avvist av AI-sikkerhetspolicyen.';

  @override
  String get errorQuotaExceeded =>
      '인공지능 서비스의 일일 할당량이 소진되었습니다. 잠시 후 또는 내일 다시 시도해 주세요.';

  @override
  String get errorSafetyPolicy => 'AI 안전 정책으로 인해 번역이 제한되었습니다.';

  @override
  String get copyOriginal => '원본 복사';

  @override
  String get originalCopied => '원본 텍스트가 복사되었습니다.';

  @override
  String get errorProfanity =>
      'Kan ikke oversettes fordi det inneholder banning.';

  @override
  String get errorSelectCategory => 'Velg et ord eller en setning først!';

  @override
  String get errorSexualContent =>
      'Kan ikke oversettes fordi det inneholder seksuelt innhold.';

  @override
  String get errors => 'Feil:';

  @override
  String get extractedText => 'Gjenkjent tekst';

  @override
  String get female => 'Kvinne';

  @override
  String get file => 'Fil:';

  @override
  String get filterAll => 'Alle';

  @override
  String get flip => 'Vis';

  @override
  String get formComparative => 'Komparativ';

  @override
  String get formInfinitive => 'Infinitiv/Presens';

  @override
  String get formPast => 'Fortid';

  @override
  String get formPastParticiple => 'Perfektum partisipp';

  @override
  String get formPlural => 'Flertall';

  @override
  String get formPositive => 'Positiv';

  @override
  String get formPresent => 'Presens';

  @override
  String get formPresentParticiple => 'Presens partisipp (ing)';

  @override
  String get formSingular => 'Entall';

  @override
  String get formSuperlative => 'Superlativ';

  @override
  String get formThirdPersonSingular => '3. person entall';

  @override
  String get gameModeDesc => 'Velg spillmodusen du vil øve på';

  @override
  String get gameModeTitle => 'Spillmodus';

  @override
  String get gameOver => 'Spillet er over';

  @override
  String get gender => 'Kjønn';

  @override
  String get generalTags => 'Generelle tagger';

  @override
  String get getMaterials => 'Få materialer';

  @override
  String get good => 'Bra';

  @override
  String get googleContinue => 'Fortsett med Google';

  @override
  String get helpJsonDesc =>
      'Følg dette formatet for å importere læringsmateriale som skal brukes i modus 3 som en JSON-fil:';

  @override
  String get helpJsonTypeSentence => 'Setning';

  @override
  String get helpJsonTypeWord => 'Ord';

  @override
  String get helpMode1Desc =>
      'Kom i gang med språklæring på den mest intuitive måten med en premium 3D-mikrofon og et stort tastaturikon.';

  @override
  String get helpMode1Details =>
      '• Språkinnstillinger: Sjekk morsmålet ditt og språket du lærer, og endre språket du lærer med språkknappen øverst på startskjermen.\n• Enkel inndata: Skriv inn umiddelbart gjennom den store mikrofonen og tekstvinduet i midten.\n• Bekreft innstillinger: Når du er ferdig med å skrive inn, trykker du på den blå avmerkingsknappen til høyre. Detaljert innstillingsvindu vises.\n• Detaljerte innstillinger: Du kan spesifisere notatboken som skal lagres, kommentarer (notater) og tagger i dialogboksen som vises.\n• Oversett nå: Etter å ha fullført innstillingene, trykk på den grønne oversettelsesknappen, og kunstig intelligens vil oversette umiddelbart.\n• Automatisk søk: Oppdager og viser lignende eksisterende oversettelser i sanntid mens du skriver.\n• Lytt og lagre: Lytt til uttalen med høyttalerikonet nederst i oversettelsesresultatene, og legg den til i læringslisten din gjennom \'Lagre data\'.';

  @override
  String get helpMode2Desc =>
      'Gå gjennom lagrede setninger og sjekk om du husker dem med automatisk skjuling.';

  @override
  String get helpMode2Details =>
      '• Velg arbeidsbok: Bruk \'Velg arbeidsbok\' eller \'Online ressursbibliotek\' fra menyen (⋮) øverst til høyre\n• Snu kort: Sjekk oversettelsen med \'Vis/Skjul\'\n• Lytt: Spill av uttale med høyttalerikonet\n• Ferdig med læring: Merk som fullført med en hake (V)\n• Slett: Slett oppføringer ved å trykke lenge på kortet\n• Søk og filter: Støtte for søkefelt (smart sanntidssøk) og tagger, filter for startbokstav';

  @override
  String get helpMode3Desc =>
      'Øv uttale ved å lytte til og gjenta setninger (skygging).';

  @override
  String get helpMode3Details =>
      '• Velg materiale: Velg materialet du vil studere\n• Angi intervall: Juster ventetiden mellom setningene med [-] [+] (3 sekunder til 60 sekunder)\n• Start/Stopp: Kontroller skyggeøkten\n• Snakk: Lytt til stemmen og gjenta\n• Tilbakemelding: Nøyaktighetsskår (0-100) og fargedisplay\n• Søkekriterier: Filtrer øvelsesmål etter tagger, nylige elementer, startbokstaver';

  @override
  String get helpNote =>
      'Skriv ned betydningen av ordet, eksempler eller situasjoner.';

  @override
  String get helpNotebook =>
      'Velg mappen der du vil lagre de oversatte resultatene.';

  @override
  String get helpTabJson => 'JSON-format';

  @override
  String get helpTabModes => 'Modusforklaring';

  @override
  String get helpTabQuickStart => 'Hurtigstart';

  @override
  String get helpTabTour => 'Prøv en omvisning';

  @override
  String get helpTag =>
      'Skriv inn nøkkelord for å klassifisere eller søke senere.';

  @override
  String get helpTitle => 'Hjelp og veiledning';

  @override
  String get helpTourDesc =>
      '**Uthevet sirkel** guider deg gjennom hovedfunksjonene.\n(F.eks. Du kan slette kortet som **uthevet sirkel** peker på ved å trykke lenge.)';

  @override
  String get hide => 'Skjul';

  @override
  String get hintNoteExample => 'Eks: Kontekst, homonymer osv.';

  @override
  String get hintTagExample => 'Eks: Forretninger, reise...';

  @override
  String get homeTab => 'Oversettelse';

  @override
  String importAdded(int count) {
    return 'Lagt til: $count';
  }

  @override
  String get importComplete => 'Import fullført';

  @override
  String get importDuplicateTitleError =>
      'En fil med samme tittel finnes allerede. Endre tittelen og prøv igjen.';

  @override
  String importErrorMessage(String error) {
    return 'Filimport mislyktes:\\n$error';
  }

  @override
  String get importFailed => 'Import mislyktes';

  @override
  String importFile(String fileName) {
    return 'Fil: $fileName';
  }

  @override
  String importFolderSuccess(num files, num entries) {
    return '$files filer, $entries elementer importert.';
  }

  @override
  String get importJsonFile => 'Importer JSON-fil';

  @override
  String get importJsonFilePrompt => 'Importer en JSON-fil';

  @override
  String importSkipped(int count) {
    return 'Hoppet over: $count';
  }

  @override
  String get importSourceFile => 'Enkel JSON-fil';

  @override
  String get importSourceFolder => 'Mappe (språkspesifikk biblioteksstruktur)';

  @override
  String get importSourceTitle => 'Velg importkilde';

  @override
  String get importSourceZip => 'ZIP-fil (komprimert mappe)';

  @override
  String importTotal(int count) {
    return 'Totalt: $count';
  }

  @override
  String get importing => 'Importerer...';

  @override
  String get inputContent => 'Innhold';

  @override
  String get inputLanguage => 'Inndataspråk';

  @override
  String get inputModeTitle => 'Inndata';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervall: $seconds sekunder';
  }

  @override
  String get invalidEmail => 'Skriv inn en gyldig e-postadresse.';

  @override
  String get kakaoContinue => 'Fortsett med Kakao';

  @override
  String get labelDetails => 'Detaljerte innstillinger';

  @override
  String get labelFilterMaterial => 'Materialer';

  @override
  String get labelFilterTag => 'Tag';

  @override
  String get labelLangCode => 'Språkkode (f.eks. en-US, ko-KR)';

  @override
  String get labelNote => 'Notat';

  @override
  String get labelPOS => 'Ordklasse';

  @override
  String get labelSentence => 'Setning';

  @override
  String get labelSentenceCollection => 'Setningssamling';

  @override
  String get labelSentenceType => 'Setningstype';

  @override
  String get labelShowMemorized => 'Ferdig';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Ord';

  @override
  String get labelWordbook => 'Ordliste';

  @override
  String get language => 'Språk';

  @override
  String get languageSettings => 'Språkinnstillinger';

  @override
  String get languageSettingsTitle => 'Språkinnstillinger';

  @override
  String get libTitleFirstMeeting => 'Første møte';

  @override
  String get libTitleGreetings1 => 'Hilsener 1';

  @override
  String get libTitleNouns1 => 'Substantiver 1';

  @override
  String get libTitleVerbs1 => 'Verb 1';

  @override
  String get listen => 'Lytt';

  @override
  String get listening => 'Lytter...';

  @override
  String get location => 'Sted';

  @override
  String get login => 'Logg inn';

  @override
  String get logout => 'Logg ut';

  @override
  String get logoutConfirmMessage =>
      'Er du sikker på at du vil logge ut av denne enheten?';

  @override
  String get logoutConfirmTitle => 'Logg ut';

  @override
  String get male => 'Mann';

  @override
  String get manual => 'Manuell inntasting';

  @override
  String get markAsStudied => 'Marker som studert';

  @override
  String get materialInfo => 'Materiellinformasjon';

  @override
  String get menuDeviceImport => 'Importer materiale fra enhet';

  @override
  String get menuHelp => 'Hjelp';

  @override
  String get menuLanguageSettings => 'Språkinnstillinger';

  @override
  String get menuOnlineLibrary => 'Nettbibliotek';

  @override
  String get menuSelectMaterialSet => 'Velg læremateriellsett';

  @override
  String get menuSettings => 'Språkinnstillinger';

  @override
  String get menuTutorial => 'Opplæring';

  @override
  String get menuWebDownload => 'Hjemmeside';

  @override
  String get metadataDialogTitle => 'Detaljert klassifisering';

  @override
  String get metadataFormType => 'Grammatisk form';

  @override
  String get metadataRootWord => 'Grunnform (Root Word)';

  @override
  String get micButtonTooltip => 'Start talegjenkjenning';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Valgte materiellsett: $name';
  }

  @override
  String get mode2Title => 'Gjennomgang';

  @override
  String get mode3Next => 'Neste';

  @override
  String get mode3Start => 'Start';

  @override
  String get mode3Stop => 'Stopp';

  @override
  String get mode3TryAgain => 'Prøv igjen';

  @override
  String get mySentenceCollection => 'Mine setninger';

  @override
  String get myWordbook => 'Mine ord';

  @override
  String get neutral => 'Nøytral';

  @override
  String get newNotebookTitle => 'Navn på ny notatbok';

  @override
  String get newSubjectName => 'Nytt ordforråd/setningssamling navn';

  @override
  String get next => 'Neste';

  @override
  String get noDataForLanguage =>
      'Det finnes ingen læremateriell for det valgte språket i den lokale databasen. Last ned materiellet, eller velg et annet språk.';

  @override
  String get noMaterialsInCategory =>
      'Det finnes ingen materiell i denne kategorien.';

  @override
  String get noRecords => 'Ingen læringsposter for det valgte språket';

  @override
  String get noStudyMaterial => 'Ingen læremateriell.';

  @override
  String get noTextToPlay => 'Ingen tekst å spille av';

  @override
  String get noTranslationToSave => 'Ingen oversettelse å lagre';

  @override
  String get noVoiceDetected => 'Ingen stemme ble oppdaget';

  @override
  String get notSelected => '- Ikke valgt -';

  @override
  String get noteGuidance =>
      'Hvor du skriver inn ytterligere detaljer for mer nøyaktig oversettelse';

  @override
  String get onlineLibraryCheckInternet =>
      'Sjekk internettforbindelsen eller prøv igjen senere.';

  @override
  String get onlineLibraryLoadFailed => 'Kunne ikke laste inn materiell.';

  @override
  String get onlineLibraryNoMaterials => 'Ingen materiell tilgjengelig.';

  @override
  String get openSettings => 'Åpne innstillinger';

  @override
  String get password => 'Passord';

  @override
  String get passwordTooShort => 'Passordet må være minst 6 tegn langt.';

  @override
  String get perfect => 'Perfekt!';

  @override
  String get pickGallery => 'Velg fra galleri';

  @override
  String get playAgain => 'Spill igjen';

  @override
  String playbackFailed(String error) {
    return 'Avspilling mislyktes: $error';
  }

  @override
  String get playing => 'Spiller...';

  @override
  String get posAdjective => 'Adjektiv';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posArticle => 'Artikkel';

  @override
  String get posConjunction => 'Konjunksjon';

  @override
  String get posInterjection => 'Interjeksjon';

  @override
  String get posNoun => 'Substantiv';

  @override
  String get posParticle => 'Partikkel';

  @override
  String get posPreposition => 'Preposisjon';

  @override
  String get posPronoun => 'Pronomen';

  @override
  String get posVerb => 'Verb';

  @override
  String get practiceModeTitle => 'Øving';

  @override
  String get practiceWordsOnly => 'Øv bare på ord';

  @override
  String get processing => 'Behandler...';

  @override
  String progress(int current, int total) {
    return 'Fremdrift: $current / $total';
  }

  @override
  String get quickStartStep1Desc =>
      'Spesifiser først mitt språk og læringsspråk i Meny > Språkinnstillinger.';

  @override
  String get quickStartStep1Title => '1. Angi språk';

  @override
  String get quickStartStep2Desc =>
      'Lag dine egne læringskort i rekkefølgen input (mikrofon/tastatur) -> oversettelse -> lagre.';

  @override
  String get quickStartStep2Title => '2. Grunnleggende flyt';

  @override
  String get quickStartStep3Desc =>
      'Review translated words and sentences in your study list, and practice speaking directly in the pronunciation practice tab.';

  @override
  String get quickStartStep3Title => '3. Bruk moduser';

  @override
  String recentNItems(int count) {
    return 'Vis de $count sist opprettede';
  }

  @override
  String recognitionFailed(String error) {
    return 'Talegjenkjenning mislyktes: $error';
  }

  @override
  String get recognized => 'Gjenkjent';

  @override
  String get recognizedText => 'Gjenkjent uttale:';

  @override
  String get recordDeleted => 'Post slettet';

  @override
  String get refresh => 'Oppdater';

  @override
  String get requestTranslation => 'Be om oversettelse';

  @override
  String get reset => 'Tilbakestill';

  @override
  String get resetPracticeHistory => 'Tilbakestill øvelseshistorikk';

  @override
  String get retry => 'Prøve på nytt?';

  @override
  String get reviewAll => 'Gjennomgå alt';

  @override
  String reviewCount(int count) {
    return 'Gjennomgått $count ganger';
  }

  @override
  String get reviewModeTitle => 'Repetisjon';

  @override
  String get save => 'Lagre';

  @override
  String get saveAsSentence => 'Lagre som setning';

  @override
  String get saveAsWord => 'Lagre som ord';

  @override
  String get saveData => 'Lagre data';

  @override
  String saveFailed(String error) {
    return 'Lagring mislyktes: $error';
  }

  @override
  String get saveToHistory => 'Lagre i skannehistorikk';

  @override
  String get saveTranslationsFromSearch =>
      'Prøv å lagre oversettelser fra søkemodus';

  @override
  String get saved => 'Lagring fullført';

  @override
  String get originalText => '원본 텍스트';

  @override
  String get saving => 'Lagrer...';

  @override
  String get scanInstructions => 'Velg et bilde å skanne';

  @override
  String get scanNoMatch =>
      '사진에서 설정된 학습 언어와 일치하는 텍스트를 찾을 수 없습니다. 언어 설정을 확인해 보세요.';

  @override
  String get scanNotSupported =>
      'Skanning støttes ikke for dette språket. OCR støtter for øyeblikket kun latinske, kinesiske, devanagari (f.eks. hindi), japanske og koreanske tegn.';

  @override
  String get scanLabel => 'Skann';

  @override
  String score(String score) {
    return 'Nøyaktighet: $score%';
  }

  @override
  String get scoreLabel => 'Poengsum';

  @override
  String get search => 'Søk';

  @override
  String get searchConditions => 'Søkevilkår';

  @override
  String get searchSentenceHint => 'Søk etter setning...';

  @override
  String get searchWordHint => 'Søk etter ord...';

  @override
  String get sectionSentence => 'Setningsseksjon';

  @override
  String get sectionSentences => 'Setninger';

  @override
  String get sectionWord => 'Ordseksjon';

  @override
  String get sectionWords => 'Ord';

  @override
  String get selectExistingSubject => 'Velg eksisterende navn';

  @override
  String get selectMaterialPrompt => 'Velg læremateriell';

  @override
  String get selectMaterialSet => 'Velg læremateriellsett';

  @override
  String get selectPOS => 'Velg ordklasse';

  @override
  String get selectStudyMaterial => 'Velg læremateriell';

  @override
  String get sentence => 'Setning';

  @override
  String get signUp => 'Registrer deg';

  @override
  String get simplifiedGuidance =>
      'Konverter hverdagsprat til fremmedspråk på et øyeblikk! Talkie logger ditt språkliv.';

  @override
  String get sourceLanguageLabel => 'Mitt språk (kilde)';

  @override
  String get startTutorial => 'Start opplæring';

  @override
  String get startsWith => 'Begynner med';

  @override
  String get statusCheckEmail =>
      'Bekreft e-posten din for å fullføre autentiseringen.';

  @override
  String statusDownloading(String name) {
    return 'Laster ned: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return 'Import feilet: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$name importert';
  }

  @override
  String statusLoginFailed(String error) {
    return 'Innlogging feilet: $error';
  }

  @override
  String get statusLoginSuccess => 'Logget inn.';

  @override
  String get statusLogoutSuccess => 'Logget ut.';

  @override
  String statusRequestFailed(String error) {
    return 'Oversettelsen mislyktes: $error';
  }

  @override
  String get statusRequestSuccess => 'Oversettelsen ble fullført.';

  @override
  String get stopPractice => 'Stopp øvelse';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Det valgte materialet støtter ikke det valgte studiespråket ($targetLang) og kan ikke lagres lokalt. Vil du be om en oversettelse?';
  }

  @override
  String get studyLangNotFoundTitle => 'Støtter ikke studiespråk';

  @override
  String get styleFormal => 'Formell';

  @override
  String get styleInformal => 'Uformell';

  @override
  String get stylePolite => 'Høflig';

  @override
  String get styleSlang => 'Slang';

  @override
  String get swapLanguages => 'Bytt språk';

  @override
  String get syncingData => 'Synkroniserer data...';

  @override
  String tabReview(int count) {
    return 'Gjennomgang ($count)';
  }

  @override
  String get tabSentence => 'Setning';

  @override
  String get tabSpeaking => 'Snakker';

  @override
  String tabStudyMaterial(int count) {
    return 'Læremateriell ($count)';
  }

  @override
  String get tabWord => 'Ord';

  @override
  String get tagFormal => 'Formell';

  @override
  String get tagSelection => 'Velg tagg';

  @override
  String get targetLanguage => 'Målspråk';

  @override
  String get targetLanguageFilter => 'Målspråkfilter:';

  @override
  String get targetLanguageLabel => 'Læringsspråk (mål)';

  @override
  String get thinkingTimeDesc =>
      'Dette er tiden du har til å tenke før svaret avsløres.';

  @override
  String get thinkingTimeInterval => 'Repetisjonsforsinkelse';

  @override
  String get timeUp => 'Tiden er ute!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Titteltagger (ressurs)';

  @override
  String get tooltipDecrease => 'Reduser';

  @override
  String get tooltipIncrease => 'Øk';

  @override
  String get tooltipSearch => 'Søk';

  @override
  String get tooltipSettingsConfirm => 'Bekreft innstillinger';

  @override
  String get tooltipSpeaking => 'Snakker';

  @override
  String get tooltipStudyReview => 'Læring+Gjennomgang';

  @override
  String totalRecords(int count) {
    return 'Totalt $count poster (Vis alle)';
  }

  @override
  String get translate => 'Oversett';

  @override
  String get translateNow => 'Oversett nå';

  @override
  String get translating => 'Oversetter...';

  @override
  String get translation => 'Oversettelse';

  @override
  String get translationComplete => 'Oversettelse fullført (må lagres)';

  @override
  String translationFailed(String error) {
    return 'Oversettelse mislyktes: $error';
  }

  @override
  String get translationLanguage => 'Oversettelsesspråk';

  @override
  String get translationLimitExceeded => 'Oversettelsesgrense overskredet';

  @override
  String get translationLimitMessage =>
      'Du har brukt alle dine daglige gratis oversettelser (5 ganger).\\n\\nVil du se en annonse og fylle på 5 ganger umiddelbart?';

  @override
  String get translationLoaded => 'Lagret oversettelse lastet inn';

  @override
  String get translationRefilled => 'Antall oversettelser er fylt på 5 ganger!';

  @override
  String get translationResult => 'Oversettelsesresultat';

  @override
  String get translationResultHint => 'Oversettelsesresultat - kan redigeres';

  @override
  String get tryAgain => 'Prøv igjen';

  @override
  String get ttsInstallGuide =>
      'Installer språkdataene i Android-innstillinger > Google TTS.';

  @override
  String get ttsMissing =>
      'Stemmemotoren for dette språket er ikke installert på enheten din.';

  @override
  String get ttsUnsupportedNatively =>
      'Denne enheten støtter ikke taleutdata for dette språket i sine standardinnstillinger.';

  @override
  String get tutorialContextDesc =>
      'Selv om det er samme setning, kan du lagre den separat ved å skrive ned situasjonen (f.eks. morgen, kveld).';

  @override
  String get tutorialContextTitle => 'Situasjons-/konteksttag';

  @override
  String get tutorialLangSettingsDesc =>
      'Angi kildespråket og målspråket du vil oversette.';

  @override
  String get tutorialLangSettingsTitle => 'Språkinnstillinger';

  @override
  String get tutorialM1ToggleDesc => 'Bytt mellom ord- og setningsmodus her.';

  @override
  String get tutorialM1ToggleTitle => 'Ord-/setningsmodus';

  @override
  String get tutorialM2DropdownDesc =>
      'Du kan velge materialet du vil studere gjennom den øverste menyen.';

  @override
  String get tutorialM2ImportDesc =>
      'Importer en JSON-fil fra mappen på enheten din.';

  @override
  String get tutorialM2ListDesc =>
      'Du kan slette dette kortet ved å trykke lenge på det. Sjekk og vend de lagrede setningene.';

  @override
  String get tutorialM2ListTitle => 'Læringsliste';

  @override
  String get tutorialM2SearchDesc =>
      'Du kan raskt finne lagrede ord og setninger ved å søke.';

  @override
  String get tutorialM2SelectDesc =>
      'Trykk på materiellikonet (📚) på den øverste applinjen for å velge materialet du vil studere.';

  @override
  String get tutorialM2SelectTitle => 'Velg materiale';

  @override
  String get tutorialM3IntervalDesc => 'Juster ventetiden mellom setningene.';

  @override
  String get tutorialM3IntervalTitle => 'Angi intervall';

  @override
  String get tutorialM3ResetDesc =>
      'Tilbakestill fremdrift og nøyaktighetspoeng for å starte på nytt fra begynnelsen.';

  @override
  String get tutorialM3ResetTitle => 'Tilbakestill historikk';

  @override
  String get tutorialM3SelectDesc =>
      'Trykk på materiellikonet (📚) på den øverste applinjen for å velge materialet du vil øve på.';

  @override
  String get tutorialM3SelectTitle => 'Velg materiale';

  @override
  String get tutorialM3StartDesc =>
      'Lytt til morsmålsstemmen og følg den ved å trykke på avspillingsknappen.';

  @override
  String get tutorialM3StartTitle => 'Start øvelse';

  @override
  String get tutorialM3WordsDesc => 'Merk av for å bare øve på lagrede ord.';

  @override
  String get tutorialM3WordsTitle => 'Ordøvelse';

  @override
  String get tutorialMicDesc =>
      'Du kan skrive inn med stemmen din ved å trykke på mikrofonknappen.';

  @override
  String get tutorialMicTitle => 'Stemmeinput';

  @override
  String get tutorialSaveDesc =>
      'Lagre de oversatte resultatene i læringsposten.';

  @override
  String get tutorialSaveTitle => 'Lagre';

  @override
  String get tutorialSwapDesc => 'Bytt mitt språk og læringsspråk.';

  @override
  String get tutorialTabDesc => 'Her kan du velge ønsket læringsmodus.';

  @override
  String get tutorialTapToContinue => 'Trykk på skjermen for å fortsette';

  @override
  String get tutorialTransDesc => 'Oversett teksten du skrev inn.';

  @override
  String get tutorialTransTitle => 'Oversett';

  @override
  String get typeExclamation => 'Utrop';

  @override
  String get typeIdiom => 'Idiom';

  @override
  String get typeImperative => 'Imperativ';

  @override
  String get typeProverb => 'Ordsprak/Aforisme';

  @override
  String get typeQuestion => 'Spørsmål';

  @override
  String get typeStatement => 'Fortellende';

  @override
  String get usageLimitTitle => 'Grense nådd';

  @override
  String get useExistingText => 'Bruk eksisterende tekst';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => 'Se nettguide';

  @override
  String get voluntaryTranslations => 'Frivillige oversettelser';

  @override
  String get watchAdAndRefill => 'Fyll på ved å se annonse (+5 ganger)';

  @override
  String get welcomeButton => 'Kom i gang';

  @override
  String get welcomeDesc =>
      'Velkommen til Talkie! Vi støtter over 80 språk fra hele verden med 100 % integritet, og tilbyr en komplett læringsopplevelse med et nytt, førsteklasses 3D-design og optimalisert ytelse.';

  @override
  String get welcomeTitle => 'Velkommen til Talkie!';

  @override
  String get word => 'Ord';

  @override
  String get wordDefenseDesc =>
      'Forsvar basen ved å si ordet før fiendene ankommer.';

  @override
  String get wordDefenseTitle => 'Ord-forsvar';

  @override
  String get wordModeLabel => 'Ordmodus';

  @override
  String get combinedResult => '통합 결과';

  @override
  String get yourPronunciation => 'Din uttale';
}

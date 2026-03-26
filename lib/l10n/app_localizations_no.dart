// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get basicWords => 'Grunnleggende ordlager';

  @override
  String get inputLanguage => 'Inputtspråk';

  @override
  String get translationLanguage => 'Oversettelsesspråk';

  @override
  String get simplifiedGuidance =>
      'Konverter hverdagsprat til fremmedspråk umiddelbart! Talkie registrerer ditt språkliv.';

  @override
  String get noDataForLanguage =>
      'Ingen læremateriell for valgt språk finnes i lokal database. Last ned materiell eller velg et annet språk.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Avbryt';

  @override
  String get accuracy => 'Nøyaktighet';

  @override
  String get ttsMissing =>
      'Talemotoren for dette språket er ikke installert på enheten din.';

  @override
  String get ttsInstallGuide =>
      'Vennligst installer språkdataene i Android-innstillinger > Google TTS.';

  @override
  String get adLoading => 'Laster inn annonse. Vennligst prøv igjen senere.';

  @override
  String get addNewSubject => 'Legg til nytt navn';

  @override
  String get addParticipant => 'Legg til deltaker';

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
  String get basicMaterialRepository => 'Grunnleggende setnings-/ord-lager';

  @override
  String get basicSentenceRepository => 'Grunnleggende setningslager';

  @override
  String get basicSentences => 'Grunnleggende setningslager';

  @override
  String get basicWordRepository => 'Grunnleggende ordlager';

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
  String get chatAiChat => 'Chat';

  @override
  String get chatAllConversations => 'Alle samtaler';

  @override
  String get chatChoosePersona => 'Velg persona';

  @override
  String get chatEndMessage => 'Vil du avslutte samtalen?';

  @override
  String get chatEndTitle => 'Avslutt og lagre samtale';

  @override
  String chatFailed(Object error) {
    return 'Chat feilet: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Utdrag fra samtale ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Samtalehistorikk';

  @override
  String get chatNew => 'Ny samtale';

  @override
  String get chatNewChat => 'Ny samtale';

  @override
  String get chatNoConversations => 'Ingen samtaler ennå';

  @override
  String get chatSearchHint => 'Søk etter samtaletittel...';

  @override
  String get chatNoteSearchHint => 'Søk i merknader...';

  @override
  String get chatSaveAndExit => 'Lagre og avslutt';

  @override
  String get chatStartNewPrompt => 'Start en ny samtale for å øve!';

  @override
  String get chatTypeHint => 'Skriv inn en melding...';

  @override
  String get chatUntitled => 'Samtale uten tittel';

  @override
  String get checking => 'Sjekker...';

  @override
  String get clearAll => 'Fjern alle';

  @override
  String get confirm => 'Bekreft';

  @override
  String get confirmDelete =>
      'Er du sikker på at du vil slette denne oppføringen?';

  @override
  String get confirmDeleteConversation =>
      'Vil du slette denne samtalen?\nSlettede samtaler kan ikke gjenopprettes.';

  @override
  String get confirmDeleteParticipant => 'Vil du slette denne deltakeren?';

  @override
  String get contextTagHint =>
      'Skriv ned situasjonen for å gjøre det lettere å skille dem senere';

  @override
  String get contextTagLabel =>
      'Kontekst/situasjon (valgfritt) - f.eks. Morgenhilsen, Formell';

  @override
  String get copiedToClipboard => 'Kopiert til utklippstavlen!';

  @override
  String get copy => 'Kopier';

  @override
  String get correctAnswer => 'Riktig Svar';

  @override
  String get createNew => 'Opprett Ny';

  @override
  String get currentLocation => 'Nåværende posisjon';

  @override
  String get currentMaterialLabel => 'Nåværende valgte materiale:';

  @override
  String get delete => 'Slett';

  @override
  String deleteFailed(String error) {
    return 'Sletting feilet: $error';
  }

  @override
  String get deleteRecord => 'Slett Oppføring';

  @override
  String get dialogueQuestDesc =>
      'Øv på samtaler gjennom rollespill. Velg riktig svar og si det.';

  @override
  String get dialogueQuestTitle => 'Dialog-quest';

  @override
  String get disambiguationPrompt => 'Hvilken betydning vil du oversette med?';

  @override
  String get disambiguationTitle => 'Velg betydning';

  @override
  String get dontHaveAccount => 'Har du ingen konto?';

  @override
  String get editParticipant => 'Rediger deltaker';

  @override
  String get email => 'E-post';

  @override
  String get emailAlreadyInUse =>
      'E-postadressen er allerede registrert. Vennligst logg inn eller bruk funksjonen for å gjenopprette passord.';

  @override
  String get enterNewSubjectName => 'Skriv inn nytt navn';

  @override
  String get enterSentenceHint => 'Skriv en setning...';

  @override
  String get enterTextHint => 'Skriv inn teksten du vil oversette';

  @override
  String get enterTextToTranslate => 'Skriv inn tekst for oversettelse';

  @override
  String get enterWordHint => 'Skriv et ord...';

  @override
  String get error => 'Feil';

  @override
  String get errorHateSpeech =>
      'Kan ikke oversette fordi det inneholder hatefulle ytringer.';

  @override
  String get errorOtherSafety =>
      'Oversettelsen ble avvist av AI-sikkerhetspolicyen.';

  @override
  String get errorProfanity =>
      'Kan ikke oversette fordi det inneholder banning.';

  @override
  String get errorSelectCategory => 'Velg et ord eller en setning først!';

  @override
  String get errorSexualContent =>
      'Kan ikke oversette fordi det inneholder seksuelt innhold.';

  @override
  String get errors => 'Feil:';

  @override
  String get female => 'Kvinne';

  @override
  String get file => 'Fil:';

  @override
  String get filterAll => 'Alle';

  @override
  String get flip => 'Snu';

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
  String get labelFilterMaterial => 'Materiale';

  @override
  String get labelFilterTag => 'Tag';

  @override
  String get generalTags => 'Generelle tagger';

  @override
  String get getMaterials => 'Få materialer';

  @override
  String get good => 'Bra';

  @override
  String get googleContinue => 'Fortsett med Google';

  @override
  String get helpDialogueImportDesc => 'Importer hele dialogsett fra JSON-fil.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'For import i Modus 3, opprett JSON:';

  @override
  String get helpJsonTypeDialogue => 'Dialog';

  @override
  String get helpJsonTypeSentence => 'Setning';

  @override
  String get helpJsonTypeWord => 'Ord';

  @override
  String get helpMode1Desc =>
      'Kom i gang med språklæring på den mest intuitive måten med en førsteklasses 3D-mikrofon og et stort tastaturikon.';

  @override
  String get helpMode1Details =>
      '• Språkinnstillinger: Sjekk morsmålet ditt og språket du lærer, og endre språket du lærer med språkknappen øverst på startskjermen.\n• Enkel inndata: Skriv inn umiddelbart via den store mikrofonen og tekstvinduet i midten.\n• Sjekk innstillinger: Når du er ferdig med å skrive inn, trykker du på den blå hakeknappen til høyre. Detaljerte innstillingsvinduer vises.\n• Detaljerte innstillinger: I dialogboksen som vises, kan du spesifisere samlingen av data som skal lagres, kommentarer (notater) og tagger.\n• Oversett nå: Etter at du har fullført innstillingene, trykker du på den grønne oversettelsesknappen for å få kunstig intelligens til å oversette umiddelbart.\n• Automatisk søk: Oppdager og viser lignende eksisterende oversettelser i sanntid mens du skriver.\n• Lytt og lagre: Lytt til uttalen med høyttalerikonet nederst i oversettelsesresultatene, og legg til i læringslisten din via \'Lagre data\'.';

  @override
  String get helpMode2Desc =>
      'Gjennomgå lagrede setninger med skjult oversettelse.';

  @override
  String get helpMode2Details =>
      '• Velg samling: Bruk \'Velg læremateriell\' eller \'Online bibliotek\' fra menyen (⋮) øverst til høyre\n• Snu kort: Bruk \'Vis/skjul\' for å sjekke oversettelsen\n• Lytt: Spill av uttale med høyttalerikonet\n• Læring fullført: Merk som fullført med hake (V)\n• Slett: Slett oppføringer ved å trykke lenge på kortet\n• Søk og filtrer: Støtte for søkefelt (smart søk i sanntid) og tagger, startbokstavfilter';

  @override
  String get helpMode3Desc =>
      'Øv uttalen din ved å lytte til og gjenta setninger (skygging).';

  @override
  String get helpMode3Details =>
      '• Velg: Velg pakke\n• Intervall: [-] [+] ventetid (3s-60s)\n• Start/Stopp: Kontroller økt\n• Snakk: Lytt og gjenta\n• Poeng: Nøyaktighet (0-100)\n• Prøv igjen: Knapp hvis stemme ikke funnet';

  @override
  String get helpModeChatDesc =>
      'Øv på samtaler i den virkelige verden ved å snakke med en AI-persona.';

  @override
  String get helpModeChatDetails =>
      '• AI-chat: Øv på praktiske samtaler med en persona i \'Chat\'-menyen på den nederste fanelinjen\n• Personainnstillinger: Spesifiser fritt kjønn, navn og språkkode for motparten\n• GPS-situasjonsspill: Gjenkjenner min nåværende posisjon og anbefaler samtaleemner som passer stedet\n• 2 språk: AI-ens svar vises med oversettelse for å maksimere læringseffekten\n• Loggadministrasjon: Filtrer tidligere samtalelogger og lagre spesifikke meldinger i samtalen som læringsmateriell';

  @override
  String get helpTabJson => 'JSON-format';

  @override
  String get helpTabModes => 'Moduser';

  @override
  String get helpTabQuickStart => 'Hurtigstart';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpTitle => 'Hjelp & Guide';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Skjul';

  @override
  String importAdded(int count) {
    return 'Lagt til: $count';
  }

  @override
  String get importComplete => 'Import Ferdig';

  @override
  String get importDuplicateTitleError =>
      'Det finnes allerede et materiale med samme tittel. Endre tittelen og prøv igjen.';

  @override
  String importErrorMessage(String error) {
    return 'Kunne ikke importere fil:\\n$error';
  }

  @override
  String get importFailed => 'Import Feilet';

  @override
  String importFile(String fileName) {
    return 'Fil: $fileName';
  }

  @override
  String get importJsonFile => 'Importer JSON';

  @override
  String get importJsonFilePrompt => 'Vennligst importer en JSON-fil';

  @override
  String importSkipped(int count) {
    return 'Hoppet over: $count';
  }

  @override
  String importTotal(int count) {
    return 'Totalt: $count';
  }

  @override
  String get importing => 'Importerer...';

  @override
  String get inputModeTitle => 'Inndata';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervall: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Skriv inn en gyldig e-postadresse.';

  @override
  String get kakaoContinue => 'Fortsett med Kakao';

  @override
  String get labelLangCode => 'Språkkode (f.eks. en-US, ko-KR)';

  @override
  String get labelName => 'Navn';

  @override
  String get labelNote => 'Notat';

  @override
  String get labelPOS => 'Ordklasse';

  @override
  String get labelRole => 'Rolle';

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
  String get loadingParticipants => 'Laster inn deltakere...';

  @override
  String get location => 'Sted';

  @override
  String get login => 'Logg inn';

  @override
  String get logout => 'Logg ut';

  @override
  String get logoutConfirmMessage => 'Vil du logge ut av denne enheten?';

  @override
  String get logoutConfirmTitle => 'Logg ut';

  @override
  String get male => 'Mann';

  @override
  String get manageParticipants => 'Administrer deltakere';

  @override
  String get manual => 'Manuell inntasting';

  @override
  String get markAsStudied => 'Marker som Studert';

  @override
  String get materialInfo => 'Materialinfo';

  @override
  String get me => 'Meg';

  @override
  String get menuDeviceImport => 'Importer materiale fra enheten';

  @override
  String get menuHelp => 'Hjelp';

  @override
  String get menuLanguageSettings => 'Språkinnstillinger';

  @override
  String get menuOnlineLibrary => 'Nettbibliotek';

  @override
  String get menuSelectMaterialSet => 'Velg et studiemateriell';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Opplæring';

  @override
  String get menuWebDownload => 'Bruksanvisning';

  @override
  String get metadataDialogTitle => 'Detaljert klassifisering';

  @override
  String get metadataFormType => 'Grammatisk form';

  @override
  String get metadataRootWord => 'Rotord';

  @override
  String get micButtonTooltip => 'Start talegjenkjenning';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Nåværende valgte materiale: $name';
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
  String get myWordbook => 'Min ordliste';

  @override
  String get neutral => 'Nøytral';

  @override
  String get newSubjectName => 'Nytt emnenavn/setningssamling';

  @override
  String get next => 'Neste';

  @override
  String get noDialogueHistory => 'Ingen dialoghistorikk.';

  @override
  String get noInternetWarningMic =>
      'Ingen internettforbindelse. Talegjenkjenning er kanskje ikke tilgjengelig i offline-modus.';

  @override
  String get noInternetWarningTranslate =>
      'Ingen internettforbindelse. Oversettelsesfunksjonen er ikke tilgjengelig i offline-modus. Vennligst bruk repetisjonsmodus.';

  @override
  String get noMaterialsInCategory =>
      'Det er ingen materialer i denne kategorien.';

  @override
  String get noParticipantsFound => 'Ingen registrerte deltakere.';

  @override
  String get noRecords => 'Ingen oppføringer for valgt språk';

  @override
  String get noStudyMaterial => 'Ingen studiemateriell.';

  @override
  String get noTextToPlay => 'Ingen tekst å spille';

  @override
  String get noTranslationToSave => 'Ingen oversettelse å lagre';

  @override
  String get noVoiceDetected => 'Ingen stemme oppdaget';

  @override
  String get notSelected => '- Ikke valgt -';

  @override
  String get onlineLibraryCheckInternet =>
      'Sjekk internettforbindelsen eller prøv igjen senere.';

  @override
  String get onlineLibraryLoadFailed => 'Kunne ikke laste inn materialet.';

  @override
  String get onlineLibraryNoMaterials => 'Ingen materialer.';

  @override
  String get participantDeleted => 'Deltakeren er slettet.';

  @override
  String get participantRename => 'Endre navn på deltaker';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Partnermodus';

  @override
  String get password => 'Passord';

  @override
  String get passwordTooShort => 'Passordet må være minst 6 tegn langt.';

  @override
  String get perfect => 'Perfekt!';

  @override
  String get personaFriend => 'Lokal venn';

  @override
  String get personaGuide => 'Reiseleder';

  @override
  String get personaTeacher => 'Engelsklærer';

  @override
  String get playAgain => 'Spill igjen';

  @override
  String playbackFailed(String error) {
    return 'Avspilling feilet: $error';
  }

  @override
  String get playing => 'Spiller...';

  @override
  String get posAdjective => 'Adjektiv';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posConjunction => 'Konjunksjon';

  @override
  String get posInterjection => 'Interjeksjon';

  @override
  String get posNoun => 'Substantiv';

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
  String progress(int current, int total) {
    return 'Fremdrift: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Vis nylig opprettede $count';
  }

  @override
  String recognitionFailed(String error) {
    return 'Talegjenkjenning feilet: $error';
  }

  @override
  String get recognized => 'Gjenkjenning ferdig';

  @override
  String get recognizedText => 'Gjenkjent uttale:';

  @override
  String get recordDeleted => 'Oppføring slettet';

  @override
  String get refresh => 'Oppdater';

  @override
  String get reset => 'Tilbakestill';

  @override
  String get resetPracticeHistory => 'Tilbakestill øvingshistorikk';

  @override
  String get retry => 'Prøv igjen?';

  @override
  String get reviewAll => 'Gjennomgå alle';

  @override
  String reviewCount(int count) {
    return 'Gjennomgått $count ganger';
  }

  @override
  String get reviewModeTitle => 'Repetisjon';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Tredjepart';

  @override
  String get roleUser => 'Bruker';

  @override
  String get save => 'Lagre';

  @override
  String get saveData => 'Lagre';

  @override
  String saveFailed(String error) {
    return 'Lagring feilet: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'Lagre oversettelser fra søkemodus';

  @override
  String get saved => 'Lagret';

  @override
  String get saving => 'Lagrer...';

  @override
  String score(String score) {
    return 'Nøyaktighet: $score%';
  }

  @override
  String get scoreLabel => 'Poeng';

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
  String get selectMaterialPrompt => 'Vennligst velg studiemateriell';

  @override
  String get selectMaterialSet => 'Velg læremateriell';

  @override
  String get selectPOS => 'Velg ordklasse';

  @override
  String get selectParticipants => 'Velg deltakere';

  @override
  String get selectSentenceType => 'Velg setningstype';

  @override
  String get selectStudyMaterial => 'Velg Materiell';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Setning';

  @override
  String get signUp => 'Registrer deg';

  @override
  String get similarTextFound => 'Lignende tekst funnet';

  @override
  String get skip => 'Hopp over';

  @override
  String get source => 'Kilde:';

  @override
  String get sourceLanguage => 'Kildespråk';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Snakk nå!';

  @override
  String get speaker => 'Taler';

  @override
  String get speakerSelect => 'Velg taler';

  @override
  String get speakingPractice => 'Taleøvelse';

  @override
  String get startChat => 'Start samtale';

  @override
  String get startPractice => 'Start';

  @override
  String get startTutorial => 'Start Tur';

  @override
  String get startWarning => 'Advarsel';

  @override
  String get startsWith => 'Starter med';

  @override
  String get statusCheckEmail =>
      'Vennligst sjekk e-posten din for å fullføre bekreftelsen.';

  @override
  String statusDownloading(Object name) {
    return 'Laster ned: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Import mislyktes: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name import fullført';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Innlogging avbrutt.';

  @override
  String statusLoginFailed(Object error) {
    return 'Innlogging mislyktes: $error';
  }

  @override
  String get statusLoginSuccess => 'Logget inn.';

  @override
  String get statusLogoutSuccess => 'Logget ut.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Registrering mislyktes: $error';
  }

  @override
  String get statusSigningUp => 'Registrerer...';

  @override
  String get stopPractice => 'Stopp';

  @override
  String get studyComplete => 'Studert';

  @override
  String studyRecords(int count) {
    return 'Oppføringer ($count)';
  }

  @override
  String get styleFormal => 'Formell';

  @override
  String get styleInformal => 'Uformell';

  @override
  String get stylePolite => 'Høflig';

  @override
  String get styleSlang => 'Slang';

  @override
  String get subject => 'Emne:';

  @override
  String get swapLanguages => 'Bytt språk';

  @override
  String get switchToAi => 'Bytt til AI-modus';

  @override
  String get switchToPartner => 'Bytt til partnermodus';

  @override
  String get syncingData => 'Synkroniserer data...';

  @override
  String get tabConversation => 'Samtale';

  @override
  String tabReview(int count) {
    return 'Gjennomgang ($count)';
  }

  @override
  String get tabSentence => 'dømme';

  @override
  String get tabSpeaking => 'Snakke';

  @override
  String tabStudyMaterial(int count) {
    return 'Materiell ($count)';
  }

  @override
  String get tabWord => 'ord';

  @override
  String get tagFormal => 'Høflig';

  @override
  String get tagSelection => 'Valg av tag';

  @override
  String get targetLanguage => 'Målspråk';

  @override
  String get targetLanguageFilter => 'Målspråk Filter:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'Tid til å tenke før svaret avsløres.';

  @override
  String get thinkingTimeInterval => 'Tenketidsintervall';

  @override
  String get timeUp => 'Tiden er ute!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Titteltag (ressurssamling)';

  @override
  String get tooltipDecrease => 'Reduser';

  @override
  String get tooltipIncrease => 'Øk';

  @override
  String get tooltipSearch => 'Søk';

  @override
  String get tooltipSpeaking => 'Tale';

  @override
  String get tooltipStudyReview => 'Studie+Repetisjon';

  @override
  String totalRecords(int count) {
    return 'Totalt $count poster (Vis alle)';
  }

  @override
  String get translate => 'Oversett';

  @override
  String get translating => 'Oversetter...';

  @override
  String get translation => 'Oversettelse';

  @override
  String get translationComplete => 'Oversettelse ferdig (må lagres)';

  @override
  String translationFailed(String error) {
    return 'Oversettelse feilet: $error';
  }

  @override
  String get translationLimitExceeded => 'Oversettelsesgrense overskredet';

  @override
  String get translationLimitMessage =>
      'Du har brukt alle dine daglige gratis oversettelser (5 ganger).\\n\\nVil du se en annonse for å fylle på 5 ganger umiddelbart?';

  @override
  String get translationLoaded => 'Lagret oversettelse lastet';

  @override
  String get translationRefilled => 'Oversettelsesantallet er fylt på med 5!';

  @override
  String get translationResultHint => 'Oversettelsesresultat - kan redigeres';

  @override
  String get tryAgain => 'Prøv igjen';

  @override
  String get tutorialAiChatDesc =>
      'Øv på virkelige samtaler med en AI-persona.';

  @override
  String get tutorialAiChatTitle => 'AI-chat';

  @override
  String get tutorialContextDesc =>
      'Legg til kontekst (f.eks. Morgen) for å skille lignende setninger.';

  @override
  String get tutorialContextTitle => 'Kontekstmerke';

  @override
  String get tutorialLangSettingsDesc =>
      'Angi kilde- og målspråk for oversettelse.';

  @override
  String get tutorialLangSettingsTitle => 'Språkinnstillinger';

  @override
  String get tutorialM1ToggleDesc => 'Bytt mellom ord- og setningsmodus her.';

  @override
  String get tutorialM1ToggleTitle => 'Ord-/setningsmodus';

  @override
  String get tutorialM2DropdownDesc => 'Velg studiemateriale.';

  @override
  String get tutorialM2ImportDesc => 'Importer JSON-fil fra enhetsmappe.';

  @override
  String get tutorialM2ListDesc =>
      'Sjekk kortene og snu dem. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Studieliste';

  @override
  String get tutorialM2SearchDesc =>
      'Søk etter lagrede ord og setninger for å finne dem raskt.';

  @override
  String get tutorialM2SelectDesc => 'Velg materiell eller \'Gjennomgå Alle\'.';

  @override
  String get tutorialM2SelectTitle => 'Velg & Filter';

  @override
  String get tutorialM3IntervalDesc => 'Juster ventetid mellom setninger.';

  @override
  String get tutorialM3IntervalTitle => 'Intervall';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Velg sett for taleøvelse.';

  @override
  String get tutorialM3SelectTitle => 'Velg Materiell';

  @override
  String get tutorialM3StartDesc => 'Trykk play for å starte.';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3WordsDesc => 'Sjekk for å øve bare på lagrede ord.';

  @override
  String get tutorialM3WordsTitle => 'Ordøving';

  @override
  String get tutorialMicDesc => 'Trykk på mikrofonen for stemmeinndata.';

  @override
  String get tutorialMicTitle => 'Stemmeinndata';

  @override
  String get tutorialSaveDesc => 'Lagre oversettelsen i studieoppføringer.';

  @override
  String get tutorialSaveTitle => 'Lagre';

  @override
  String get tutorialSwapDesc =>
      'Jeg bytter ut språket mitt med språket jeg lærer.';

  @override
  String get tutorialTabDesc => 'Her kan du velge ønsket læringsmodus.';

  @override
  String get tutorialTapToContinue => 'Trykk for å fortsette';

  @override
  String get tutorialTransDesc => 'Trykk her for å oversette tekst.';

  @override
  String get tutorialTransTitle => 'Oversett';

  @override
  String get typeExclamation => 'Utrop';

  @override
  String get typeImperative => 'Imperativ';

  @override
  String get typeQuestion => 'Spørsmål';

  @override
  String get typeStatement => 'Påstand';

  @override
  String get usageLimitTitle => 'Grense nådd';

  @override
  String get useExistingText => 'Bruk Eksisterende';

  @override
  String get viewOnlineGuide => 'Se online guide';

  @override
  String get voluntaryTranslations => 'Frivillige oversettelser';

  @override
  String get watchAdAndRefill => 'Se annonse og fyll på (+5 ganger)';

  @override
  String get word => 'Ord';

  @override
  String get wordDefenseDesc =>
      'Forsvar basen ved å si ord før fienden ankommer.';

  @override
  String get wordDefenseTitle => 'Ord-forsvar';

  @override
  String get wordModeLabel => 'Ordmodus';

  @override
  String get yourPronunciation => 'Din uttale';

  @override
  String get ttsUnsupportedNatively =>
      'Denne enheten støtter ikke taleutdata for dette språket i sine standardinnstillinger.';

  @override
  String get homeTab => 'Oversett';

  @override
  String get welcomeTitle => 'Velkommen til Talkie!';

  @override
  String get welcomeDesc =>
      'Velkommen til Talkie! Vi støtter alle språk i verden (over 80) med 100 % integritet, og gir deg en perfekt læringsopplevelse med ny førsteklasses 3D-design og optimalisert ytelse.';

  @override
  String get welcomeButton => 'Kom i gang';

  @override
  String get labelDetails => 'Detaljerte innstillinger';

  @override
  String get translationResult => 'Oversettelsesresultat';

  @override
  String get inputContent => 'Innhold som skal oversettes';

  @override
  String get translateNow => 'Oversett nå';

  @override
  String get tooltipSettingsConfirm => 'Bekreft innstillinger';

  @override
  String get hintNoteExample => 'Eks: Kontekst, homonymer, etc.';

  @override
  String get hintTagExample => 'Eks: Forretninger, reise...';

  @override
  String get addNew => 'Legg til ny';

  @override
  String get newNotebookTitle => 'Nytt notatboknavn';

  @override
  String get enterNameHint => 'Skriv inn navn';

  @override
  String get add => 'Legg til';

  @override
  String get openSettings => 'Åpne innstillinger';

  @override
  String get helpNotebook =>
      'Velg mappen for å lagre de oversatte resultatene.';

  @override
  String get helpNote =>
      'Skriv fritt ned ordets betydning, eksempler, situasjoner osv.';

  @override
  String get helpTag =>
      'Skriv inn nøkkelord for å klassifisere eller søke senere.';

  @override
  String get requestTranslation => 'Be om oversettelse';

  @override
  String get statusRequestSuccess => 'Oversettelse forespurt.';

  @override
  String statusRequestFailed(String error) {
    return 'Forespørsel om oversettelse mislyktes: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Studie språk ikke støttet';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Det valgte materialet støtter ikke det gjeldende studiespråket ditt ($targetLang) og kan ikke lagres lokalt. Vil du be om en oversettelse?';
  }

  @override
  String get quickStartStep1Title => '1. Angi språk';

  @override
  String get quickStartStep1Desc =>
      'Spesifiser først språket ditt og språket du vil lære under Meny > Språkinnstillinger.';

  @override
  String get quickStartStep2Title => '2. Grunnleggende flyt';

  @override
  String get quickStartStep2Desc =>
      'Lag dine egne læringskort i rekkefølgen Input (mikrofon/tastatur) -> Oversettelse -> Lagre.';

  @override
  String get quickStartStep3Title => '3. Bruk moduser';

  @override
  String get quickStartStep3Desc =>
      'Øv deg med chat, og øv på uttale direkte ved å se på teksten i kategorien Uttaleøvelse.';
}

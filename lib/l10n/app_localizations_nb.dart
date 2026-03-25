// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get basicWords => 'Grunnleggende ordlager';

  @override
  String get inputLanguage => 'Inndataspråk';

  @override
  String get translationLanguage => 'Oversettelsesspråk';

  @override
  String get simplifiedGuidance =>
      'Konverter hverdagsprat til fremmedspråk på et øyeblikk! Talkie logger ditt språkliv.';

  @override
  String get noDataForLanguage =>
      'Det finnes ingen læremateriell for det valgte språket i den lokale databasen. Last ned materiellet, eller velg et annet språk.';

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
      'Stemmemotoren for dette språket er ikke installert på enheten din.';

  @override
  String get ttsInstallGuide =>
      'Installer språkdataene i Android-innstillinger > Google TTS.';

  @override
  String get adLoading => 'Laster inn annonsen. Prøv igjen senere.';

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
  String get basicMaterialRepository => 'Grunnleggende setnings-/ordlager';

  @override
  String get basicSentenceRepository => 'Grunnleggende setningsliste';

  @override
  String get basicSentences => 'Grunnleggende setningslager';

  @override
  String get basicWordRepository => 'Grunnleggende ordliste';

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
  String get chatAiChat => 'Chat';

  @override
  String get chatAllConversations => 'Alle samtaler';

  @override
  String get chatChoosePersona => 'Velg personlighet';

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
  String get chatHistoryTitle => 'Chattehistorikk';

  @override
  String get chatNew => 'Ny chat';

  @override
  String get chatNewChat => 'Ny chat';

  @override
  String get chatNoConversations => 'Ingen samtaler ennå';

  @override
  String get chatSearchHint => 'Søk etter chattenavn...';

  @override
  String get chatSaveAndExit => 'Lagre og avslutt';

  @override
  String get chatStartNewPrompt => 'Start en ny samtale for å øve!';

  @override
  String get chatTypeHint => 'Skriv en melding...';

  @override
  String get chatUntitled => 'Samtale uten navn';

  @override
  String get checking => 'Sjekker...';

  @override
  String get clearAll => 'Fjern alle';

  @override
  String get confirm => 'Bekreft';

  @override
  String get confirmDelete => 'Vil du slette denne læringsposten?';

  @override
  String get confirmDeleteConversation =>
      'Vil du slette denne samtalen?\nDu kan ikke gjenopprette slettede samtaler.';

  @override
  String get confirmDeleteParticipant => 'Vil du slette denne deltakeren?';

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
  String get dialogueQuestDesc =>
      'Øv på samtaler gjennom situasjonsspill. Velg og si de riktige svarene.';

  @override
  String get dialogueQuestTitle => 'Dialog-oppdrag';

  @override
  String get disambiguationPrompt => 'Hvilken mening vil du oversette til?';

  @override
  String get disambiguationTitle => 'Velg mening';

  @override
  String get dontHaveAccount => 'Har du ikke en konto?';

  @override
  String get editParticipant => 'Rediger deltaker';

  @override
  String get email => 'E-post';

  @override
  String get emailAlreadyInUse =>
      'Denne e-postadressen er allerede registrert. Vennligst logg inn eller bruk glemt passord.';

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
  String get labelFilterMaterial => 'Materialer';

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
  String get helpDialogueImportDesc =>
      'Importer et komplett sett med dialoger som en JSON-fil.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON-struktur: Bruk `dialoger`-arrayet i stedet for `entries`\n• Automatisk gjenoppretting: Dialogtittel, personlighet og meldingsrekkefølge gjenopprettes.\n• Plassering: Importerte dialoger vises i \'Historikk\'-fanen i AI-chatmodus.';

  @override
  String get helpJsonDesc =>
      'Følg dette formatet for å importere læringsmateriale som skal brukes i modus 3 som en JSON-fil:';

  @override
  String get helpJsonTypeDialogue => 'Dialog';

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
  String get helpModeChatDesc => 'Øv på samtaler med en AI-persona.';

  @override
  String get helpModeChatDetails =>
      '• AI-chat: Øv på samtaler med en persona i \'Chat\'-menyen i den nederste fanebaren\n• Personainnstillinger: Spesifiser fritt kjønn, navn og språkkode for den andre parten\n• GPS-situasjonsspill: Gjenkjenner min nåværende posisjon og anbefaler samtaletemaer som passer til stedet\n• Tospråklig: AI-ens svar vises med oversettelse, noe som maksimerer læringseffekten\n• Journalføring: Filtrer tidligere samtalehistorikk og lagre spesifikke meldinger i samtaler som læremateriell';

  @override
  String get helpTabJson => 'JSON-format';

  @override
  String get helpTabModes => 'Modusforklaring';

  @override
  String get helpTabTour => 'Prøv en omvisning';

  @override
  String get helpTitle => 'Hjelp og veiledning';

  @override
  String get helpTourDesc =>
      '**Uthevet sirkel** guider deg gjennom hovedfunksjonene.\n(F.eks. Du kan slette kortet som **uthevet sirkel** peker på ved å trykke lenge.)';

  @override
  String get hide => 'Skjul';

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
  String get importJsonFile => 'Importer JSON-fil';

  @override
  String get importJsonFilePrompt => 'Importer en JSON-fil';

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
    return 'Intervall: $seconds sekunder';
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
  String get loadingParticipants => 'Laster deltakere...';

  @override
  String get location => 'Posisjon';

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
  String get manageParticipants => 'Administrer deltakere';

  @override
  String get manual => 'Manuell inntasting';

  @override
  String get markAsStudied => 'Marker som studert';

  @override
  String get materialInfo => 'Materiellinformasjon';

  @override
  String get me => 'Meg';

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
  String get newSubjectName => 'Nytt ordforråd/setningssamling navn';

  @override
  String get next => 'Neste';

  @override
  String get noDialogueHistory => 'Ingen samtalelogg.';

  @override
  String get noInternetWarningMic =>
      'Ingen internettforbindelse. Talegjenkjenning er kanskje ikke tilgjengelig i frakoblet modus.';

  @override
  String get noInternetWarningTranslate =>
      'Ingen internettforbindelse. Oversettelsesfunksjonen er ikke tilgjengelig i frakoblet modus. Vennligst bruk repetisjonsmodus.';

  @override
  String get noMaterialsInCategory =>
      'Det finnes ingen materiell i denne kategorien.';

  @override
  String get noParticipantsFound => 'Ingen deltakere funnet.';

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
  String get onlineLibraryCheckInternet =>
      'Sjekk internettforbindelsen eller prøv igjen senere.';

  @override
  String get onlineLibraryLoadFailed => 'Kunne ikke laste inn materiell.';

  @override
  String get onlineLibraryNoMaterials => 'Ingen materiell tilgjengelig.';

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
    return 'Avspilling mislyktes: $error';
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
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Tredjepart';

  @override
  String get roleUser => 'Bruker';

  @override
  String get save => 'Lagre';

  @override
  String get saveData => 'Lagre data';

  @override
  String saveFailed(String error) {
    return 'Lagring mislyktes: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Prøv å lagre oversettelser fra søkemodus';

  @override
  String get saved => 'Lagring fullført';

  @override
  String get saving => 'Lagrer...';

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
  String get selectParticipants => 'Velg deltakere';

  @override
  String get selectSentenceType => 'Velg setningstype';

  @override
  String get selectStudyMaterial => 'Velg læremateriell';

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
  String get sourceLanguageLabel => 'Mitt språk (kilde)';

  @override
  String get speakNow => 'Snakk nå!';

  @override
  String get speaker => 'Taler';

  @override
  String get speakerSelect => 'Velg taler';

  @override
  String get speakingPractice => 'Snakkeøvelse';

  @override
  String get startChat => 'Start samtale';

  @override
  String get startPractice => 'Start øvelse';

  @override
  String get startTutorial => 'Start opplæring';

  @override
  String get startWarning => 'Advarsel';

  @override
  String get startsWith => 'Begynner med';

  @override
  String get statusCheckEmail =>
      'Bekreft e-posten din for å fullføre autentiseringen.';

  @override
  String statusDownloading(Object name) {
    return 'Laster ned: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Import feilet: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name importert';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Innlogging avbrutt.';

  @override
  String statusLoginFailed(Object error) {
    return 'Innlogging feilet: $error';
  }

  @override
  String get statusLoginSuccess => 'Logget inn.';

  @override
  String get statusLogoutSuccess => 'Logget ut.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Registrering feilet: $error';
  }

  @override
  String get statusSigningUp => 'Registrerer...';

  @override
  String get stopPractice => 'Stopp øvelse';

  @override
  String get studyComplete => 'Læring fullført';

  @override
  String studyRecords(int count) {
    return 'Læringsposter ($count)';
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
  String get translationLimitExceeded => 'Oversettelsesgrense overskredet';

  @override
  String get translationLimitMessage =>
      'Du har brukt alle dine daglige gratis oversettelser (5 ganger).\\n\\nVil du se en annonse og fylle på 5 ganger umiddelbart?';

  @override
  String get translationLoaded => 'Lagret oversettelse lastet inn';

  @override
  String get translationRefilled => 'Antall oversettelser er fylt på 5 ganger!';

  @override
  String get translationResultHint => 'Oversettelsesresultat - kan redigeres';

  @override
  String get tryAgain => 'Prøv igjen';

  @override
  String get tutorialAiChatDesc => 'Øv på samtaler med en AI-personlighet.';

  @override
  String get tutorialAiChatTitle => 'AI-chat';

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
  String get typeImperative => 'Imperativ';

  @override
  String get typeQuestion => 'Spørsmål';

  @override
  String get typeStatement => 'Fortellende';

  @override
  String get usageLimitTitle => 'Grense nådd';

  @override
  String get useExistingText => 'Bruk eksisterende tekst';

  @override
  String get viewOnlineGuide => 'Se nettguide';

  @override
  String get voluntaryTranslations => 'Frivillige oversettelser';

  @override
  String get watchAdAndRefill => 'Fyll på ved å se annonse (+5 ganger)';

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
  String get yourPronunciation => 'Din uttale';

  @override
  String get ttsUnsupportedNatively =>
      'Denne enheten støtter ikke taleutdata for dette språket i sine standardinnstillinger.';

  @override
  String get homeTab => 'Hjem';

  @override
  String get welcomeTitle => 'Velkommen til Talkie!';

  @override
  String get welcomeDesc =>
      'Velkommen til Talkie! Vi støtter over 80 språk fra hele verden med 100 % integritet, og tilbyr en komplett læringsopplevelse med et nytt, førsteklasses 3D-design og optimalisert ytelse.';

  @override
  String get welcomeButton => 'Kom i gang';

  @override
  String get labelDetails => 'Detaljerte innstillinger';

  @override
  String get translationResult => 'Oversettelsesresultat';

  @override
  String get inputContent => 'Innhold';

  @override
  String get translateNow => 'Oversett nå';

  @override
  String get tooltipSettingsConfirm => 'Bekreft innstillinger';

  @override
  String get hintNoteExample => 'Eks: Kontekst, homonymer osv.';

  @override
  String get hintTagExample => 'Eks: Forretninger, reise...';

  @override
  String get addNew => 'Legg til ny';

  @override
  String get newNotebookTitle => 'Navn på ny notatbok';

  @override
  String get enterNameHint => 'Skriv inn navn';

  @override
  String get add => 'Legg til';

  @override
  String get openSettings => 'Åpne innstillinger';

  @override
  String get helpNotebook =>
      'Velg mappen der du vil lagre de oversatte resultatene.';

  @override
  String get helpNote =>
      'Skriv ned betydningen av ordet, eksempler eller situasjoner.';

  @override
  String get helpTag =>
      'Skriv inn nøkkelord for å klassifisere eller søke senere.';

  @override
  String get requestTranslation => 'Be om oversettelse';

  @override
  String get statusRequestSuccess => 'Oversettelsen ble fullført.';

  @override
  String statusRequestFailed(String error) {
    return 'Oversettelsen mislyktes: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Støtter ikke studiespråk';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Det valgte materialet støtter ikke det valgte studiespråket ($targetLang) og kan ikke lagres lokalt. Vil du be om en oversettelse?';
  }
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'Fortsett med Kakao';

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
  String get helpTitle => 'Hjelp og veiledning';

  @override
  String get helpTabModes => 'Modusforklaring';

  @override
  String get helpTabJson => 'JSON-format';

  @override
  String get helpTabTour => 'Prøv en omvisning';

  @override
  String get helpMode1Desc =>
      'Oversett ved å gjenkjenne stemmen og lytte til resultatene.';

  @override
  String get helpMode1Details =>
      '• Språkinnstillinger: Endre språk ved å trykke på ikoner øverst/nederst\n• Ord/setning-bryter: Bytt modus\n• Stemmeinput: Trykk på mikrofonikonet for å starte/stoppe lytting\n• Tekstinput: Skriv inn direkte for å oversette\n• Automatisk søk: Oppdag lignende eksisterende setninger\n• Oversett: Oversett umiddelbart ved å trykke på oversett-knappen\n• Lytt: TTS-avspilling med høyttalerikon\n• Lagre: Legg til poster med \'Lagre data\'\n• Tøm: Tilbakestill input';

  @override
  String get helpMode2Desc =>
      'Gå gjennom lagrede setninger og sjekk om du husker dem med automatisk skjuling.';

  @override
  String get helpMode2Details =>
      '• Velg materiale: Velg et bestemt materiale eller \'Gjennomgå alt\'\n• Vend kort: Sjekk oversettelsen med \'Vis/Skjul\' (automatisk læringsmerke)\n• Lytt: Setnings-TTS-avspilling\n• Læring fullført: Behandle læringen som fullført med en hake (V)\n• Slett: Slett poster ved å trykke lenge på kortet\n• Søkekriterier: Filtrer etter tagger, nylige elementer, startbokstaver';

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
      '• AI-chat: Øv på samtaler ved å snakke på ditt språk\n• Flere personligheter: Du kan endre den andres kjønn/språk/navn med menyen over taleboblen\n• Legg til partner: Legg til en ny samtalepartner (fremmed) med +-knappen\n• GPS: Situasjonskomedie basert på din nåværende posisjon\n• Automatisk lagring: Automatisk oversettelse og lagring av samtaleinnhold';

  @override
  String get helpJsonDesc =>
      'Følg dette formatet for å importere læringsmateriale som skal brukes i modus 3 som en JSON-fil:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'Importer et komplett sett med dialoger som en JSON-fil.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON-struktur: Bruk `dialoger`-arrayet i stedet for `entries`\n• Automatisk gjenoppretting: Dialogtittel, personlighet og meldingsrekkefølge gjenopprettes.\n• Plassering: Importerte dialoger vises i \'Historikk\'-fanen i AI-chatmodus.';

  @override
  String get helpTourDesc =>
      '**Uthevet sirkel** guider deg gjennom hovedfunksjonene.\n(F.eks. Du kan slette kortet som **uthevet sirkel** peker på ved å trykke lenge.)';

  @override
  String get partnerMode => 'Partnermodus';

  @override
  String get manual => 'Manuell inntasting';

  @override
  String get speaker => 'Taler';

  @override
  String get switchToAi => 'Bytt til AI-modus';

  @override
  String get switchToPartner => 'Bytt til partnermodus';

  @override
  String get currentLocation => 'Nåværende posisjon';

  @override
  String get location => 'Posisjon';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Meg';

  @override
  String get currentMaterialLabel => 'Nåværende valgte materiell:';

  @override
  String get basicMaterialRepository => 'Grunnleggende setnings-/ordlager';

  @override
  String get word => 'Ord';

  @override
  String get sentence => 'Setning';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Gjennomgang ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Læremateriell ($count)';
  }

  @override
  String get mode2Title => 'Gjennomgang';

  @override
  String get search => 'Søk';

  @override
  String get translate => 'Oversett';

  @override
  String get listen => 'Lytt';

  @override
  String get saveData => 'Lagre data';

  @override
  String get saved => 'Lagring fullført';

  @override
  String get delete => 'Slett';

  @override
  String get materialInfo => 'Materiellinformasjon';

  @override
  String get cancel => 'Avbryt';

  @override
  String get confirm => 'Bekreft';

  @override
  String get refresh => 'Oppdater';

  @override
  String studyRecords(int count) {
    return 'Læringsposter ($count)';
  }

  @override
  String get targetLanguageFilter => 'Målspråkfilter:';

  @override
  String get noRecords => 'Ingen læringsposter for det valgte språket';

  @override
  String get saveTranslationsFromSearch =>
      'Prøv å lagre oversettelser fra søkemodus';

  @override
  String get flip => 'Vis';

  @override
  String get hide => 'Skjul';

  @override
  String get deleteRecord => 'Slett post';

  @override
  String get confirmDelete => 'Vil du slette denne læringsposten?';

  @override
  String get recordDeleted => 'Post slettet';

  @override
  String deleteFailed(String error) {
    return 'Sletting mislyktes: $error';
  }

  @override
  String get importJsonFile => 'Importer JSON-fil';

  @override
  String get importing => 'Importerer...';

  @override
  String get importComplete => 'Import fullført';

  @override
  String get importFailed => 'Import mislyktes';

  @override
  String importFile(String fileName) {
    return 'Fil: $fileName';
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
    return 'Totalt: $count';
  }

  @override
  String importAdded(int count) {
    return 'Lagt til: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Hoppet over: $count';
  }

  @override
  String get errors => 'Feil:';

  @override
  String get error => 'Feil';

  @override
  String importErrorMessage(String error) {
    return 'Filimport mislyktes:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get selectStudyMaterial => 'Velg læremateriell';

  @override
  String get subject => 'Emne:';

  @override
  String get source => 'Kilde:';

  @override
  String get file => 'Fil:';

  @override
  String progress(int current, int total) {
    return 'Fremdrift: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Importer en JSON-fil';

  @override
  String get selectMaterialPrompt => 'Velg læremateriell';

  @override
  String get studyComplete => 'Læring fullført';

  @override
  String get markAsStudied => 'Marker som studert';

  @override
  String get listening => 'Lytter...';

  @override
  String get recognized => 'Gjenkjent';

  @override
  String recognitionFailed(String error) {
    return 'Talegjenkjenning mislyktes: $error';
  }

  @override
  String get checking => 'Sjekker...';

  @override
  String get translating => 'Oversetter...';

  @override
  String get translationComplete => 'Oversettelse fullført (må lagres)';

  @override
  String get translationLoaded => 'Lagret oversettelse lastet inn';

  @override
  String translationFailed(String error) {
    return 'Oversettelse mislyktes: $error';
  }

  @override
  String get enterTextToTranslate => 'Skriv inn tekst som skal oversettes';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => 'Lagrer...';

  @override
  String get noTranslationToSave => 'Ingen oversettelse å lagre';

  @override
  String saveFailed(String error) {
    return 'Lagring mislyktes: $error';
  }

  @override
  String get playing => 'Spiller...';

  @override
  String get noTextToPlay => 'Ingen tekst å spille av';

  @override
  String playbackFailed(String error) {
    return 'Avspilling mislyktes: $error';
  }

  @override
  String get sourceLanguage => 'Kildespråk';

  @override
  String get targetLanguage => 'Målspråk';

  @override
  String get similarTextFound => 'Lignende tekst funnet';

  @override
  String get useExistingText => 'Bruk eksisterende tekst';

  @override
  String get createNew => 'Fortsett med ny setning';

  @override
  String reviewCount(int count) {
    return 'Gjennomgått $count ganger';
  }

  @override
  String get tabSpeaking => 'Snakker';

  @override
  String get speakingPractice => 'Snakkeøvelse';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervall: $seconds sekunder';
  }

  @override
  String get yourPronunciation => 'Din uttale';

  @override
  String get correctAnswer => 'Riktig svar';

  @override
  String score(String score) {
    return 'Nøyaktighet: $score%';
  }

  @override
  String get perfect => 'Perfekt!';

  @override
  String get good => 'Bra';

  @override
  String get tryAgain => 'Prøv igjen';

  @override
  String get startPractice => 'Start øvelse';

  @override
  String get stopPractice => 'Stopp øvelse';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Start opplæring';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Stemmeinput';

  @override
  String get tutorialMicDesc =>
      'Du kan skrive inn med stemmen din ved å trykke på mikrofonknappen.';

  @override
  String get tutorialTabDesc => 'Her kan du velge ønsket læringsmodus.';

  @override
  String get tutorialTapToContinue => 'Trykk på skjermen for å fortsette';

  @override
  String get tutorialTransTitle => 'Oversett';

  @override
  String get tutorialTransDesc => 'Oversett teksten du skrev inn.';

  @override
  String get tutorialSaveTitle => 'Lagre';

  @override
  String get tutorialSaveDesc =>
      'Lagre de oversatte resultatene i læringsposten.';

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
  String get tutorialAiChatTitle => 'AI-chat';

  @override
  String get tutorialAiChatDesc => 'Øv på samtaler med en AI-personlighet.';

  @override
  String get tutorialM2SelectTitle => 'Velg materiale';

  @override
  String get tutorialM2SelectDesc =>
      'Trykk på materiellikonet (📚) på den øverste applinjen for å velge materialet du vil studere.';

  @override
  String get tutorialM2ListTitle => 'Læringsliste';

  @override
  String get tutorialM2ListDesc =>
      'Du kan slette dette kortet ved å trykke lenge på det. Sjekk og vend de lagrede setningene.';

  @override
  String get tutorialM3SelectTitle => 'Velg materiale';

  @override
  String get tutorialM3SelectDesc =>
      'Trykk på materiellikonet (📚) på den øverste applinjen for å velge materialet du vil øve på.';

  @override
  String get tutorialM3IntervalTitle => 'Angi intervall';

  @override
  String get tutorialM3IntervalDesc => 'Juster ventetiden mellom setningene.';

  @override
  String get tutorialM3StartTitle => 'Start øvelse';

  @override
  String get tutorialM3StartDesc =>
      'Lytt til morsmålsstemmen og følg den ved å trykke på avspillingsknappen.';

  @override
  String get startWarning => 'Advarsel';

  @override
  String get noVoiceDetected => 'Ingen stemme ble oppdaget';

  @override
  String get tooltipSearch => 'Søk';

  @override
  String get tooltipStudyReview => 'Læring+Gjennomgang';

  @override
  String get tooltipSpeaking => 'Snakker';

  @override
  String get tooltipDecrease => 'Reduser';

  @override
  String get tooltipIncrease => 'Øk';

  @override
  String get languageSettings => 'Språkinnstillinger';

  @override
  String get tutorialM2DropdownDesc =>
      'Du kan velge materialet du vil studere gjennom den øverste menyen.';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc =>
      'Importer en JSON-fil fra mappen på enheten din.';

  @override
  String get tutorialLangSettingsTitle => 'Språkinnstillinger';

  @override
  String get tutorialLangSettingsDesc =>
      'Angi kildespråket og målspråket du vil oversette.';

  @override
  String get copy => 'Kopier';

  @override
  String get copiedToClipboard => 'Kopiert til utklippstavlen!';

  @override
  String get tutorialContextTitle => 'Situasjons-/konteksttag';

  @override
  String get tutorialContextDesc =>
      'Selv om det er samme setning, kan du lagre den separat ved å skrive ned situasjonen (f.eks. morgen, kveld).';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get thinkingTimeDesc =>
      'Dette er tiden du har til å tenke før svaret avsløres.';

  @override
  String get autoPlay => 'Autospill';

  @override
  String get timeUp => 'Tiden er ute!';

  @override
  String get gameModeTitle => 'Spillmodus';

  @override
  String get gameModeDesc => 'Velg spillmodusen du vil øve på';

  @override
  String get wordDefenseTitle => 'Ord-forsvar';

  @override
  String get wordDefenseDesc =>
      'Forsvar basen ved å si ordet før fiendene ankommer.';

  @override
  String get dialogueQuestTitle => 'Dialog-oppdrag';

  @override
  String get dialogueQuestDesc =>
      'Øv på samtaler gjennom situasjonsspill. Velg og si de riktige svarene.';

  @override
  String get translation => 'Translation';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Ord';

  @override
  String get labelSentence => 'Setning';

  @override
  String get contextTagLabel =>
      'Kontekst/situasjon (valgfritt) – F.eks.: Morgenhilsen, formell tale';

  @override
  String get contextTagHint =>
      'Skriv ned situasjonen for å gjøre det lettere å skille den senere';

  @override
  String get usageLimitTitle => 'Grense nådd';

  @override
  String get translationLimitExceeded => 'Oversettelsesgrense overskredet';

  @override
  String get translationLimitMessage =>
      'Du har brukt alle dine daglige gratis oversettelser (5 ganger).\\n\\nVil du se en annonse og fylle på 5 ganger umiddelbart?';

  @override
  String get watchAdAndRefill => 'Fyll på ved å se annonse (+5 ganger)';

  @override
  String get translationRefilled => 'Antall oversettelser er fylt på 5 ganger!';

  @override
  String get adLoading => 'Laster inn annonsen. Prøv igjen senere.';

  @override
  String get reviewAll => 'Gjennomgå alt';

  @override
  String totalRecords(int count) {
    return 'Totalt $count poster (Vis alle)';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get practiceWordsOnly => 'Øv bare på ord';

  @override
  String get resetPracticeHistory => 'Tilbakestill øvelseshistorikk';

  @override
  String get retry => 'Prøve på nytt?';

  @override
  String get noStudyMaterial => 'Ingen læremateriell.';

  @override
  String get gameOver => 'Game Over';

  @override
  String get playAgain => 'Spill igjen';

  @override
  String get speakNow => 'Snakk nå!';

  @override
  String get scoreLabel => 'Poengsum';

  @override
  String get viewOnlineGuide => 'Se nettguide';

  @override
  String get getMaterials => 'Få materialer';

  @override
  String get swapLanguages => 'Bytt språk';

  @override
  String get next => 'Neste';

  @override
  String get wordModeLabel => 'Ordmodus';

  @override
  String get accuracy => 'Nøyaktighet';

  @override
  String get basicDefault => 'Grunnleggende';

  @override
  String get basic => 'Grunnleggende';

  @override
  String get tutorialM3WordsTitle => 'Ordøvelse';

  @override
  String get tutorialM3WordsDesc => 'Merk av for å bare øve på lagrede ord.';

  @override
  String get enterTextHint => 'Skriv inn tekst som skal oversettes';

  @override
  String get micButtonTooltip => 'Start talegjenkjenning';

  @override
  String get menuHelp => 'Hjelp';

  @override
  String get menuWebDownload => 'Hjemmeside';

  @override
  String get menuDeviceImport => 'Importer materiale fra enhet';

  @override
  String get menuSettings => 'Språkinnstillinger';

  @override
  String get basicWords => 'Grunnleggende ordlager';

  @override
  String get basicSentences => 'Grunnleggende setningslager';

  @override
  String get selectMaterialSet => 'Velg læremateriellsett';

  @override
  String get sectionWords => 'Ord';

  @override
  String get sectionSentences => 'Setninger';

  @override
  String get languageSettingsTitle => 'Språkinnstillinger';

  @override
  String get sourceLanguageLabel => 'Mitt språk (kilde)';

  @override
  String get targetLanguageLabel => 'Læringsspråk (mål)';

  @override
  String get mode3Start => 'Start';

  @override
  String get mode3Stop => 'Stopp';

  @override
  String get mode3Next => 'Neste';

  @override
  String get mode3TryAgain => 'Prøv igjen';

  @override
  String get tutorialM3ResetTitle => 'Tilbakestill historikk';

  @override
  String get tutorialSwapDesc => 'Bytt mitt språk og læringsspråk.';

  @override
  String get recognizedText => 'Gjenkjent uttale:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Tilbakestill fremdrift og nøyaktighetspoeng for å starte på nytt fra begynnelsen.';

  @override
  String get menuSelectMaterialSet => 'Velg læremateriellsett';

  @override
  String get sectionWord => 'Ordseksjon';

  @override
  String get sectionSentence => 'Setningsseksjon';

  @override
  String get tabWord => 'Ord';

  @override
  String get tabSentence => 'Setning';

  @override
  String get errorProfanity =>
      'Kan ikke oversettes fordi det inneholder banning.';

  @override
  String get errorHateSpeech =>
      'Kan ikke oversettes fordi det inneholder hatytringer.';

  @override
  String get errorSexualContent =>
      'Kan ikke oversettes fordi det inneholder seksuelt innhold.';

  @override
  String get errorOtherSafety =>
      'Oversettelse ble avvist av AI-sikkerhetspolicyen.';

  @override
  String get clearAll => 'Fjern alle';

  @override
  String get disambiguationTitle => 'Velg mening';

  @override
  String get disambiguationPrompt => 'Hvilken mening vil du oversette til?';

  @override
  String get skip => 'Hopp over';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Repetisjon';

  @override
  String get practiceModeTitle => 'Øving';

  @override
  String get chatHistoryTitle => 'Chattehistorikk';

  @override
  String get chatNew => 'Ny chat';

  @override
  String get chatNewChat => 'Ny chat';

  @override
  String get chatChoosePersona => 'Velg personlighet';

  @override
  String get chatTypeHint => 'Skriv en melding...';

  @override
  String chatFailed(Object error) {
    return 'Chat feilet: $error';
  }

  @override
  String get chatNoConversations => 'Ingen samtaler ennå';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt => 'Start en ny samtale for å øve!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Utdrag fra samtale ($speaker)';
  }

  @override
  String get personaTeacher => 'Engelsklærer';

  @override
  String get personaGuide => 'Reiseleder';

  @override
  String get personaFriend => 'Lokal venn';

  @override
  String get chatUntitled => 'Samtale uten navn';

  @override
  String get chatAiChat => 'Chat';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Valgte materiellsett: $name';
  }

  @override
  String get basicWordRepository => 'Grunnleggende ordliste';

  @override
  String get basicSentenceRepository => 'Grunnleggende setningsliste';

  @override
  String get chatEndTitle => 'Avslutt og lagre samtale';

  @override
  String get chatEndMessage => 'Vil du avslutte samtalen?';

  @override
  String get chatSaveAndExit => 'Lagre og avslutt';

  @override
  String get errorSelectCategory => 'Velg et ord eller en setning først!';

  @override
  String get tutorialM1ToggleTitle => 'Ord-/setningsmodus';

  @override
  String get tutorialM1ToggleDesc => 'Bytt mellom ord- og setningsmodus her.';

  @override
  String get metadataDialogTitle => 'Detaljert klassifisering';

  @override
  String get tagFormal => 'Formell';

  @override
  String get selectPOS => 'Velg ordklasse';

  @override
  String get selectSentenceType => 'Velg setningstype';

  @override
  String get metadataRootWord => 'Grunnform (Root Word)';

  @override
  String get posNoun => 'Substantiv';

  @override
  String get posVerb => 'Verb';

  @override
  String get posAdjective => 'Adjektiv';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posPronoun => 'Pronomen';

  @override
  String get posPreposition => 'Preposisjon';

  @override
  String get posConjunction => 'Konjunksjon';

  @override
  String get posInterjection => 'Interjeksjon';

  @override
  String get typeStatement => 'Fortellende';

  @override
  String get typeQuestion => 'Spørsmål';

  @override
  String get typeExclamation => 'Utrop';

  @override
  String get typeImperative => 'Imperativ';

  @override
  String get labelNote => 'Notat';

  @override
  String get labelShowMemorized => 'Ferdig';

  @override
  String get titleTagSelection => 'Titteltagger (ressurs)';

  @override
  String get generalTags => 'Generelle tagger';

  @override
  String get tagSelection => 'Velg tagg';

  @override
  String get metadataFormType => 'Grammatisk form';

  @override
  String get formInfinitive => 'Infinitiv/Presens';

  @override
  String get formPast => 'Fortid';

  @override
  String get formPastParticiple => 'Perfektum partisipp';

  @override
  String get formPresentParticiple => 'Presens partisipp (ing)';

  @override
  String get formPresent => 'Presens';

  @override
  String get formThirdPersonSingular => '3. person entall';

  @override
  String get formPlural => 'Flertall';

  @override
  String get formSingular => 'Entall';

  @override
  String get caseSubject => 'Subjekt';

  @override
  String get caseObject => 'Objekt';

  @override
  String get casePossessive => 'Eiendomsform';

  @override
  String get casePossessivePronoun => 'Eiendomspronomen';

  @override
  String get caseReflexive => 'Refleksiv';

  @override
  String get formPositive => 'Positiv';

  @override
  String get formComparative => 'Komparativ';

  @override
  String get formSuperlative => 'Superlativ';

  @override
  String get searchConditions => 'Søkevilkår';

  @override
  String recentNItems(int count) {
    return 'Vis de $count sist opprettede';
  }

  @override
  String get startsWith => 'Begynner med';

  @override
  String get reset => 'Tilbakestill';

  @override
  String get participantRename => 'Endre navn på deltaker';

  @override
  String get labelName => 'Navn';

  @override
  String get gender => 'Kjønn';

  @override
  String get language => 'Språk';

  @override
  String get male => 'Mann';

  @override
  String get female => 'Kvinne';

  @override
  String get neutral => 'Nøytral';

  @override
  String get chatAllConversations => 'Alle samtaler';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Vil du slette denne samtalen?\nDu kan ikke gjenopprette slettede samtaler.';

  @override
  String get notSelected => '- Ikke valgt -';

  @override
  String get myWordbook => 'Mine ord';

  @override
  String get mySentenceCollection => 'Mine setninger';

  @override
  String get newSubjectName => 'Nytt ordforråd/setningssamling navn';

  @override
  String get enterNewSubjectName => 'Skriv inn nytt navn';

  @override
  String get addNewSubject => 'Legg til nytt navn';

  @override
  String get selectExistingSubject => 'Velg eksisterende navn';

  @override
  String get addTagHint => 'Legg til tagg...';

  @override
  String get save => 'Lagre';

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
      'Bekreft e-posten din for å fullføre autentiseringen.';

  @override
  String get emailAlreadyInUse =>
      'Denne e-postadressen er allerede registrert. Vennligst logg inn eller bruk glemt passord.';
}

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
  String get ttsMissing =>
      'Lydmotoren for dette sprog er ikke installeret på din enhed.';

  @override
  String get ttsInstallGuide =>
      'Installer sprogdataene under Android-indstillinger > Google TTS.';

  @override
  String get adLoading => 'Indlæser annonce. Prøv igen om et øjeblik.';

  @override
  String get addNewSubject => 'Tilføj ny overskrift';

  @override
  String get addParticipant => 'Tilføj deltager';

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
  String get chatAiChat => 'Chat';

  @override
  String get chatAllConversations => 'Alle samtaler';

  @override
  String get chatChoosePersona => 'Vælg persona';

  @override
  String get chatEndMessage => 'Vil du afslutte samtalen?';

  @override
  String get chatEndTitle => 'Afslut og gem samtale';

  @override
  String chatFailed(Object error) {
    return 'Chat mislykkedes: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Uddrag fra samtale ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Chathistorik';

  @override
  String get chatNew => 'Ny chat';

  @override
  String get chatNewChat => 'Ny chat';

  @override
  String get chatNoConversations => 'Ingen samtaler endnu';

  @override
  String get chatSaveAndExit => 'Gem og afslut';

  @override
  String get chatStartNewPrompt => 'Start en ny samtale for at øve dig!';

  @override
  String get chatTypeHint => 'Skriv en besked...';

  @override
  String get chatUntitled => 'Unavngivet samtale';

  @override
  String get checking => 'Tjekker...';

  @override
  String get clearAll => '모두 지우기';

  @override
  String get confirm => 'Bekræft';

  @override
  String get confirmDelete => 'Er du sikker på at slette denne optegnelse?';

  @override
  String get confirmDeleteConversation =>
      'Er du sikker på, at du vil slette denne samtale?\nSlettede samtaler kan ikke gendannes.';

  @override
  String get confirmDeleteParticipant => 'Vil du slette denne deltager?';

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
  String get dialogueQuestDesc =>
      'Øv dig i samtaler gennem rollespil. Vælg og sig det passende svar.';

  @override
  String get dialogueQuestTitle => 'Dialog-quest';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get dontHaveAccount => 'Har du ikke en konto?';

  @override
  String get editParticipant => 'Rediger deltager';

  @override
  String get email => 'E-mail';

  @override
  String get emailAlreadyInUse =>
      'Denne e-mailadresse er allerede i brug. Log ind, eller brug \'Glemt kodeord\'.';

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
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorSelectCategory => 'Vælg et ord eller en sætning først!';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errors => 'Fejl:';

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
  String get helpDialogueImportDesc =>
      'Importer et helt dialogsæt med en JSON-fil.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'For import i Tilstand 3, opret JSON:';

  @override
  String get helpJsonTypeDialogue => 'Dialog (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'Sætning (Sentence)';

  @override
  String get helpJsonTypeWord => 'Ord (Word)';

  @override
  String get helpMode1Desc =>
      'Talegenkendelse, oversættelse og lyt til resultat.';

  @override
  String get helpMode1Details =>
      '• Stemme: Tryk mikrofon for start/stop\n• Tekst: Skriv direkte for at oversætte\n• Auto-Søg: Finder lignende sætninger\n• Oversæt: Knap for øjeblikkelig oversættelse\n• Lyt: Højttalerikon for TTS\n• Gem: Tilføjer til historik\n• Ryd: Nulstil alt';

  @override
  String get helpMode2Desc =>
      'Gennemgå gemte sætninger med skjult oversættelse.';

  @override
  String get helpMode2Details =>
      '• Vælg: Vælg sæt eller \'Alle\'\n• Vend: \'Vis/Skjul\' oversættelse\n• Lyt: Afspil TTS for sætning\n• Marker: Flueben (V) for færdige\n• Slet: Langt tryk for at slette\n• Filter: Vis alle eller efter materiale';

  @override
  String get helpMode3Desc =>
      'Øv din udtale ved at lytte til sætninger og gentage dem (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Vælg: Vælg pakke\n• Interval: [-] [+] ventetid (3s-60s)\n• Start/Stop: Kontroller session\n• Tal: Lyt og gentag\n• Score: Nøjagtighed (0-100)\n• Prøv igen: Knap hvis stemme ej fundet';

  @override
  String get helpModeChatDesc =>
      'Øv dig i praktisk samtale ved at tale med en AI-persona.';

  @override
  String get helpModeChatDetails =>
      '• AI-chat: Øv dig i samtaler med en persona.\n• Deltagerstyring: Indstil dine sprog og AI\'s sprog separat for at undgå sprogforskelle.\n• GPS-rollespil: Skab naturlige samtalesituationer baseret på din nuværende placering.\n• Logføring: Alle samtaler gemmes sikkert baseret på ID, og loggen bevares, selvom du ændrer navn.';

  @override
  String get helpTabJson => 'JSON-format';

  @override
  String get helpTabModes => 'Tilstande';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpTitle => 'Hjælp & Guide';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Skjul';

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
  String get importJsonFile => 'Importer JSON';

  @override
  String get importJsonFilePrompt => 'Venligst importer en JSON fil';

  @override
  String importSkipped(int count) {
    return 'Sprunget over: $count';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String get importing => 'Importerer...';

  @override
  String get inputModeTitle => '입력';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds sekunder';
  }

  @override
  String get invalidEmail => 'Indtast en gyldig e-mail.';

  @override
  String get kakaoContinue => 'Fortsæt med Kakao';

  @override
  String get labelLangCode => 'Sprogkode (f.eks. en-US, ko-KR)';

  @override
  String get labelName => 'Navn';

  @override
  String get labelNote => 'Note';

  @override
  String get labelPOS => 'Ordart';

  @override
  String get labelRole => 'Rolle';

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
  String get loadingParticipants => 'Indlæser deltagere...';

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
  String get manageParticipants => 'Administrer deltagere';

  @override
  String get manual => 'Manuel input';

  @override
  String get markAsStudied => 'Marker som Studeret';

  @override
  String get materialInfo => 'Materialeinfo';

  @override
  String get me => 'Mig';

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
  String get newSubjectName => 'Nyt emneoverskrift';

  @override
  String get next => 'Næste';

  @override
  String get noDialogueHistory => 'Ingen dialoghistorik.';

  @override
  String get noInternetWarningMic =>
      'Ingen internetforbindelse. Stemmegenkendelse er muligvis ikke tilgængelig i offline-tilstand.';

  @override
  String get noInternetWarningTranslate =>
      'Ingen internetforbindelse. Oversættelsesfunktionen er ikke tilgængelig i offline-tilstand. Brug venligst repetitionstilstanden.';

  @override
  String get noMaterialsInCategory =>
      'Der er intet materiale i denne kategori.';

  @override
  String get noParticipantsFound => 'Ingen registrerede deltagere.';

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
  String get onlineLibraryCheckInternet =>
      'Tjek din internetforbindelse eller prøv igen senere.';

  @override
  String get onlineLibraryLoadFailed => 'Kunne ikke indlæse materialet.';

  @override
  String get onlineLibraryNoMaterials => 'Intet materiale tilgængeligt.';

  @override
  String get participantDeleted => 'Deltageren er blevet slettet.';

  @override
  String get participantRename => 'Omdøb deltager';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Partnertilstand';

  @override
  String get password => 'Adgangskode';

  @override
  String get passwordTooShort => 'Adgangskoden skal være mindst 6 tegn.';

  @override
  String get perfect => 'Perfekt!';

  @override
  String get personaFriend => 'Lokal ven';

  @override
  String get personaGuide => 'Rejseguide';

  @override
  String get personaTeacher => 'Engelsklærer';

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
  String get posConjunction => 'Konjunktion';

  @override
  String get posInterjection => 'Interjektion';

  @override
  String get posNoun => 'Substantiv';

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
  String progress(int current, int total) {
    return 'Fremskridt: $current / $total';
  }

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
  String get reviewModeTitle => '복습';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Tredjepart';

  @override
  String get roleUser => 'Bruger';

  @override
  String get save => 'Gem';

  @override
  String get saveData => 'Gem';

  @override
  String saveFailed(String error) {
    return 'Gem fejlede: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'Gem oversættelser fra søgetilstand';

  @override
  String get saved => 'Gemt';

  @override
  String get saving => 'Gemmer...';

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
  String get sectionSentences => '문장';

  @override
  String get sectionWord => 'Ordsektion';

  @override
  String get sectionWords => '단어';

  @override
  String get selectExistingSubject => 'Vælg eksisterende overskrift';

  @override
  String get selectMaterialPrompt => 'Venligst vælg studiemateriale';

  @override
  String get selectMaterialSet => '학습 자료집 선택';

  @override
  String get selectPOS => 'Vælg ordklasse';

  @override
  String get selectParticipants => 'Vælg deltagere';

  @override
  String get selectSentenceType => 'Vælg sætningstype';

  @override
  String get selectStudyMaterial => 'Vælg Materiale';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Sætning';

  @override
  String get signUp => 'Tilmeld dig';

  @override
  String get similarTextFound => 'Lignende tekst fundet';

  @override
  String get skip => '건너뛰기';

  @override
  String get source => 'Kilde:';

  @override
  String get sourceLanguage => 'Kildesprog';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Tal nu!';

  @override
  String get speaker => 'Taler';

  @override
  String get speakerSelect => 'Vælg taler';

  @override
  String get speakingPractice => 'Taleøvelse';

  @override
  String get startChat => 'Start chat';

  @override
  String get startPractice => 'Start Øvelse';

  @override
  String get startTutorial => 'Start Tur';

  @override
  String get startWarning => 'Advarsel';

  @override
  String get startsWith => 'Starter med';

  @override
  String get statusCheckEmail =>
      'Bekræft din e-mail for at fuldføre godkendelsen.';

  @override
  String statusDownloading(Object name) {
    return 'Downloader: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Import mislykkedes: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name importeret';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Login annulleret.';

  @override
  String statusLoginFailed(Object error) {
    return 'Login mislykkedes: $error';
  }

  @override
  String get statusLoginSuccess => 'Logget ind.';

  @override
  String get statusLogoutSuccess => 'Logget ud.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Tilmelding mislykkedes: $error';
  }

  @override
  String get statusSigningUp => 'Tilmelder...';

  @override
  String get stopPractice => 'Stop';

  @override
  String get studyComplete => 'Studeret';

  @override
  String studyRecords(int count) {
    return 'Optegnelser ($count)';
  }

  @override
  String get styleFormal => 'Høflig tale';

  @override
  String get styleInformal => 'Uformel tale';

  @override
  String get stylePolite => 'Høflighed';

  @override
  String get styleSlang => 'Slang';

  @override
  String get subject => 'Emne:';

  @override
  String get swapLanguages => 'Skift sprog';

  @override
  String get switchToAi => 'Skift til AI-tilstand';

  @override
  String get switchToPartner => 'Skift til partnertilstand';

  @override
  String get syncingData => 'Synkroniserer data...';

  @override
  String get tabConversation => 'Samtale';

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
  String get translationResultHint => 'Oversættelsesresultat - kan redigeres';

  @override
  String get tryAgain => 'Prøv igen';

  @override
  String get tutorialAiChatDesc => 'Øv dig i samtaler med en AI-persona.';

  @override
  String get tutorialAiChatTitle => 'AI-chat';

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
  String get typeImperative => 'Imperativ sætning';

  @override
  String get typeQuestion => 'Spørgsmål';

  @override
  String get typeStatement => 'Deklarativ sætning';

  @override
  String get usageLimitTitle => 'Grænse nået';

  @override
  String get useExistingText => 'Brug Eksisterende';

  @override
  String get viewOnlineGuide => 'Se online guide';

  @override
  String get voluntaryTranslations => 'Frivillige oversættelser';

  @override
  String get watchAdAndRefill => 'Se annonce og genopfyld (+5 gange)';

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

  @override
  String get ttsUnsupportedNatively =>
      'Denne enheds standardindstillinger understøtter ikke tekst-til-tale for dette sprog.';
}

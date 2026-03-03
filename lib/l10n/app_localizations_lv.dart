// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'Turpināt ar Kakao';

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
  String get helpTitle => 'Palīdzība un ceļveži';

  @override
  String get helpTabModes => 'Režīmu skaidrojumi';

  @override
  String get helpTabJson => 'JSON formāts';

  @override
  String get helpTabTour => 'Apskatīt';

  @override
  String get helpMode1Desc =>
      'Atpazīst un tulko balsi, ļauj noklausīties rezultātus.';

  @override
  String get helpMode1Details =>
      '• Valodas iestatījumi: mainiet valodu, nospiežot ikonas augšā/apakšā\n• Vārdu/teikumu pārslēgšana: režīmu pārslēgšana\n• Balss ievade: nospiediet mikrofona ikonu, lai sāktu/pārtrauktu klausīšanos\n• Teksta ievade: ievadiet tekstu manuāli tulkošanai\n• Automātiska meklēšana: atrod līdzīgus esošus teikumus\n• Tulkošana: nospiediet pogu Tulkot, lai nekavējoties tulkotu\n• Klausīšanās: atskaņojiet TTS ar skaļruņa ikonu\n• Saglabāšana: pievienojiet ierakstus ar \'Datu saglabāšana\'\n• Notīrīšana: atiestatiet ievadi';

  @override
  String get helpMode2Desc =>
      'Pārskatiet saglabātos teikumus un pārbaudiet, vai atceraties, izmantojot automātiskās slēpšanas funkciju.';

  @override
  String get helpMode2Details =>
      '• Materiālu izvēle: atlasiet noteiktu materiālu kopumu vai \'Visu pārskatīšana\'\n• Kartītes apgriešana: pārbaudiet tulkojumu ar \'Rādīt/Slēpt\' (automātiska mācību pārbaude)\n• Klausīšanās: teikuma TTS atskaņošana\n• Mācīšanās pabeigta: atzīmējiet ar atzīmi (V), lai atzīmētu, ka mācīšanās ir pabeigta\n• Dzēšana: ilgi nospiediet kartīti, lai dzēstu ierakstu\n• Meklēšanas nosacījumi: filtrēšana pēc atzīmēm, jaunākajiem vienumiem, sākuma burtiem';

  @override
  String get helpMode3Desc =>
      'Klausieties teikumu un praktizējiet izrunu, to atdarot (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Materiālu izvēle: atlasiet materiālu kopumu, ko mācīties\n• Intervāla iestatīšana: pielāgojiet gaidīšanas laiku starp teikumiem ar pogām [-] [+](3 s ~ 60 s)\n• Sākums/Pārtraukums: ēnošanas sesijas kontrole\n• Runāšana: klausieties un atkārtojiet balsi\n• Atsauksmes: precizitātes rādītājs (0–100) un krāsu displejs\n• Meklēšanas nosacījumi: filtrēšanas mērķi pēc atzīmēm, jaunākajiem vienumiem, sākuma burtiem';

  @override
  String get helpModeChatDesc =>
      'Praktizējiet sarunas reālajā dzīvē, sarunājoties ar AI personu.';

  @override
  String get helpModeChatDetails =>
      '• AI tērzēšana: runājiet savā valodā, lai praktizētu sarunu\n• Vairākas personas: mainiet otras puses dzimumu/valodu/vārdu ar izvēlni virs runas burbuļa\n• Partnera pievienošana: pievienojiet jaunu sarunu partneri (Svešinieku) ar pogu +\n• GPS: uz atrašanās vietu balstīti scenāriji\n• Automātiska saglabāšana: automātiska sarunu satura tulkošana un saglabāšana';

  @override
  String get helpJsonDesc =>
      'Lai importētu mācību materiālus, kas jāizmanto 3. režīmā, kā JSON failu, ievērojiet šo formātu:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'Importējiet veselu dialogu kopumu kā JSON failu.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON struktūra: izmantojiet `dialogues` masīvu `entries` vietā\n• Automātiska atkopšana: tiek atjaunots dialoga nosaukums, persona un ziņojumu secība.\n• Atrašanās vieta: importētie dialogi parādās AI tērzēšanas režīma cilnē \'Vēsture\'.';

  @override
  String get helpTourDesc =>
      '**Izgaismots aplis** sniedz norādījumus par galvenajām funkcijām.\n(Piemērs: varat ilgi nospiest kartīti, uz kuru norāda **izgaismots aplis**, lai to izdzēstu.)';

  @override
  String get partnerMode => 'Partnera režīms';

  @override
  String get manual => 'Manuāla ievade';

  @override
  String get speaker => 'Runātājs';

  @override
  String get switchToAi => 'Pārslēgties uz AI režīmu';

  @override
  String get switchToPartner => 'Pārslēgties uz partnera režīmu';

  @override
  String get currentLocation => 'Pašreizējā atrašanās vieta';

  @override
  String get location => 'Atrašanās vieta';

  @override
  String get partner => 'Partneris';

  @override
  String get me => 'Es';

  @override
  String get currentMaterialLabel => 'Pašlaik atlasīts materiālu kopums:';

  @override
  String get basicMaterialRepository => 'Pamata teikumu/vārdu repozitorijs';

  @override
  String get word => 'Vārds';

  @override
  String get sentence => 'Teikums';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Pārskats ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Mācību materiāli ($count)';
  }

  @override
  String get mode2Title => 'Pārskats';

  @override
  String get search => 'Meklēt';

  @override
  String get translate => 'Tulkot';

  @override
  String get listen => 'Klausīties';

  @override
  String get saveData => 'Saglabāt datus';

  @override
  String get saved => 'Saglabāts';

  @override
  String get delete => 'Dzēst';

  @override
  String get materialInfo => 'Informācija par materiālu';

  @override
  String get cancel => 'Atcelt';

  @override
  String get confirm => 'Apstiprināt';

  @override
  String get refresh => 'Atjaunot';

  @override
  String studyRecords(int count) {
    return 'Mācību ieraksti ($count)';
  }

  @override
  String get targetLanguageFilter => 'Mērķa valodas filtrs:';

  @override
  String get noRecords => 'Nav mācību ierakstu atlasītajā valodā';

  @override
  String get saveTranslationsFromSearch =>
      'Mēģiniet saglabāt tulkojumus no meklēšanas režīma';

  @override
  String get flip => 'Rādīt';

  @override
  String get hide => 'Slēpt';

  @override
  String get deleteRecord => 'Dzēst ierakstu';

  @override
  String get confirmDelete => 'Vai tiešām vēlaties dzēst šo mācību ierakstu?';

  @override
  String get recordDeleted => 'Ieraksts ir dzēsts';

  @override
  String deleteFailed(String error) {
    return 'Dzēšana neizdevās: $error';
  }

  @override
  String get importJsonFile => 'Importēt JSON failu';

  @override
  String get importing => 'Importē...';

  @override
  String get importComplete => 'Importēšana pabeigta';

  @override
  String get importFailed => 'Importēšana neizdevās';

  @override
  String importFile(String fileName) {
    return 'Fails: $fileName';
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
    return 'Kopā: $count';
  }

  @override
  String importAdded(int count) {
    return 'Pievienots: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Izlaists: $count';
  }

  @override
  String get errors => 'Kļūdas:';

  @override
  String get error => 'Kļūda';

  @override
  String importErrorMessage(String error) {
    return 'Faila importēšana neizdevās:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get selectStudyMaterial => 'Atlasiet mācību materiālu';

  @override
  String get subject => 'Tēma:';

  @override
  String get source => 'Avots:';

  @override
  String get file => 'Fails:';

  @override
  String progress(int current, int total) {
    return 'Norise: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Lūdzu, importējiet JSON failu';

  @override
  String get selectMaterialPrompt => 'Lūdzu, atlasiet mācību materiālu';

  @override
  String get studyComplete => 'Mācīšanās pabeigta';

  @override
  String get markAsStudied => 'Atzīmēt kā apgūtu';

  @override
  String get listening => 'Klausās...';

  @override
  String get recognized => 'Atpazīts';

  @override
  String recognitionFailed(String error) {
    return 'Balss atpazīšana neizdevās: $error';
  }

  @override
  String get checking => 'Pārbauda...';

  @override
  String get translating => 'Tulko...';

  @override
  String get translationComplete => 'Tulkošana pabeigta (jāsaglabā)';

  @override
  String get translationLoaded => 'Ielādēts saglabātais tulkojums';

  @override
  String translationFailed(String error) {
    return 'Tulkošana neizdevās: $error';
  }

  @override
  String get enterTextToTranslate => 'Ievadiet tekstu, ko tulkot';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => 'Saglabā...';

  @override
  String get noTranslationToSave => 'Nav tulkojumu, ko saglabāt';

  @override
  String saveFailed(String error) {
    return 'Saglabāšana neizdevās: $error';
  }

  @override
  String get playing => 'Atskaņo...';

  @override
  String get noTextToPlay => 'Nav teksta, ko atskaņot';

  @override
  String playbackFailed(String error) {
    return 'Atskaņošana neizdevās: $error';
  }

  @override
  String get sourceLanguage => 'Pirmvaloda';

  @override
  String get targetLanguage => 'Mērķa valoda';

  @override
  String get similarTextFound => 'Atrasts līdzīgs teksts';

  @override
  String get useExistingText => 'Izmantot esošu tekstu';

  @override
  String get createNew => 'Turpināt ar jaunu teikumu';

  @override
  String reviewCount(int count) {
    return 'Pārskatīts $count reizes';
  }

  @override
  String get tabSpeaking => 'Runāšana';

  @override
  String get speakingPractice => 'Runāšanas praktizēšana';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervāls: $seconds s';
  }

  @override
  String get yourPronunciation => 'Jūsu izruna';

  @override
  String get correctAnswer => 'Pareiza atbilde';

  @override
  String score(String score) {
    return 'Precizitāte: $score%';
  }

  @override
  String get perfect => 'Lieliski!';

  @override
  String get good => 'Labi';

  @override
  String get tryAgain => 'Mēģiniet vēlreiz';

  @override
  String get startPractice => 'Sākt praktizēties';

  @override
  String get stopPractice => 'Pārtraukt praktizēties';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Sākt apmācību';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Balss ievade';

  @override
  String get tutorialMicDesc =>
      'Varat ievadīt ar balsi, nospiežot mikrofona pogu.';

  @override
  String get tutorialTabDesc => 'Šeit varat izvēlēties vēlamo mācību režīmu.';

  @override
  String get tutorialTapToContinue => 'Pieskarieties ekrānam, lai turpinātu';

  @override
  String get tutorialTransTitle => 'Tulkot';

  @override
  String get tutorialTransDesc => 'Tulko ievadīto tekstu.';

  @override
  String get tutorialSaveTitle => 'Saglabāt';

  @override
  String get tutorialSaveDesc =>
      'Saglabājiet tulkotos rezultātus mācību ierakstos.';

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
  String get tutorialAiChatTitle => 'AI tērzēšana';

  @override
  String get tutorialAiChatDesc =>
      'Praktizējiet sarunas reālajā dzīvē ar AI personu.';

  @override
  String get tutorialM2SelectTitle => 'Materiāla izvēle';

  @override
  String get tutorialM2SelectDesc =>
      'Nospiediet materiālu kopuma ikonu (📚) augšējā lietotnes joslā, lai izvēlētos materiālu, ko mācīties.';

  @override
  String get tutorialM2ListTitle => 'Mācību saraksts';

  @override
  String get tutorialM2ListDesc =>
      'Varat ilgi nospiest šo kartīti, lai to izdzēstu. Pārbaudiet saglabātos teikumus un apgrieziet tos.';

  @override
  String get tutorialM3SelectTitle => 'Materiāla izvēle';

  @override
  String get tutorialM3SelectDesc =>
      'Nospiediet materiālu kopuma ikonu (📚) augšējā lietotnes joslā, lai izvēlētos materiālu, ko praktizēt.';

  @override
  String get tutorialM3IntervalTitle => 'Intervāla iestatīšana';

  @override
  String get tutorialM3IntervalDesc =>
      'Pielāgojiet gaidīšanas laiku starp teikumiem.';

  @override
  String get tutorialM3StartTitle => 'Sākt praktizēties';

  @override
  String get tutorialM3StartDesc =>
      'Nospiediet atskaņošanas pogu, lai klausītos vietējā valodā runājošo un atkārtotu.';

  @override
  String get startWarning => 'Brīdinājums';

  @override
  String get noVoiceDetected => 'Balss nav konstatēta';

  @override
  String get tooltipSearch => 'Meklēt';

  @override
  String get tooltipStudyReview => 'Mācīšanās+Pārskats';

  @override
  String get tooltipSpeaking => 'Runāšana';

  @override
  String get tooltipDecrease => 'Samazināt';

  @override
  String get tooltipIncrease => 'Palielināt';

  @override
  String get languageSettings => 'Valodas iestatījumi';

  @override
  String get tutorialM2DropdownDesc =>
      'Varat izvēlēties materiālu, ko mācīties, izmantojot augšējo izvēlni.';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc => 'Importējiet JSON failu no ierīces mapes.';

  @override
  String get tutorialLangSettingsTitle => 'Valodas iestatījumi';

  @override
  String get tutorialLangSettingsDesc =>
      'Iestatiet pirmvalodu un mērķa valodu, ko tulkot.';

  @override
  String get copy => 'Kopēt';

  @override
  String get copiedToClipboard => 'Nokopēts starpliktuvē!';

  @override
  String get tutorialContextTitle => 'Situācijas/konteksta atzīme';

  @override
  String get tutorialContextDesc =>
      'Varat to saglabāt atsevišķi, ja pierakstāt situāciju (piemēram, rīts, vakars), pat ja tas ir tas pats teikums.';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get thinkingTimeDesc =>
      'Laiks, kas jāpārdomā pirms atbildes atklāšanas.';

  @override
  String get autoPlay => 'Automātiska atskaņošana';

  @override
  String get timeUp => 'Laiks ir beidzies!';

  @override
  String get gameModeTitle => 'Spēles režīms';

  @override
  String get gameModeDesc => 'Izvēlieties spēles režīmu, ko praktizēt';

  @override
  String get wordDefenseTitle => 'Vārdu aizsardzība';

  @override
  String get wordDefenseDesc =>
      'Aizstāviet bāzi, izrunājot vārdus, pirms ienaidnieks sasniedz.';

  @override
  String get dialogueQuestTitle => 'Dialoga meklējums';

  @override
  String get dialogueQuestDesc =>
      'Praktizējiet sarunas, izmantojot situācijas. Atlasiet un izrunājiet piemērotas atbildes.';

  @override
  String get translation => 'Translation';

  @override
  String get labelType => 'Veids:';

  @override
  String get labelWord => 'Vārds';

  @override
  String get labelSentence => 'Teikums';

  @override
  String get contextTagLabel =>
      'Konteksts/Situācija (pēc izvēles) - Piemērs: Rīta sveiciens, formāls';

  @override
  String get contextTagHint =>
      'Pierakstiet situāciju, lai vēlāk to būtu vieglāk atšķirt';

  @override
  String get usageLimitTitle => 'Sasniegts ierobežojums';

  @override
  String get translationLimitExceeded => 'Pārsniegts tulkošanas ierobežojums';

  @override
  String get translationLimitMessage =>
      'Esat izmantojis visus savus ikdienas bezmaksas tulkojumus (5 reizes).\\n\\nVai vēlaties skatīties reklāmu un nekavējoties papildināt 5 reizes?';

  @override
  String get watchAdAndRefill => 'Skatīties reklāmu un papildināt (+5 reizes)';

  @override
  String get translationRefilled =>
      'Jūsu tulkošanas reižu skaits ir papildināts ar 5 reizēm!';

  @override
  String get adLoading =>
      'Reklāma tiek ielādēta. Lūdzu, mēģiniet vēlreiz vēlāk.';

  @override
  String get reviewAll => 'Visu pārskatīšana';

  @override
  String totalRecords(int count) {
    return 'Kopā $count ieraksti (skatīt visus)';
  }

  @override
  String get filterAll => 'Visi';

  @override
  String get practiceWordsOnly => 'Praktizēt tikai vārdus';

  @override
  String get resetPracticeHistory => 'Atiestatīt praktizēšanās vēsturi';

  @override
  String get retry => 'Mēģināt vēlreiz?';

  @override
  String get noStudyMaterial => 'Nav mācību materiāla.';

  @override
  String get gameOver => 'Spēle beigusies';

  @override
  String get playAgain => 'Spēlēt vēlreiz';

  @override
  String get speakNow => 'Runājiet tagad!';

  @override
  String get scoreLabel => 'Punkti';

  @override
  String get viewOnlineGuide => 'Skatīt tiešsaistes ceļvedi';

  @override
  String get getMaterials => 'Saņemt materiālus';

  @override
  String get swapLanguages => 'Apmainīt valodas';

  @override
  String get next => 'Tālāk';

  @override
  String get wordModeLabel => 'Vārdu režīms';

  @override
  String get accuracy => 'Precizitāte';

  @override
  String get basicDefault => 'Pamata';

  @override
  String get basic => 'Pamata';

  @override
  String get tutorialM3WordsTitle => 'Vārdu praktizēšana';

  @override
  String get tutorialM3WordsDesc =>
      'Atzīmējiet, lai praktizētu tikai saglabātos vārdus.';

  @override
  String get enterTextHint => 'Ievadiet tekstu, ko tulkot';

  @override
  String get micButtonTooltip => 'Sākt balss atpazīšanu';

  @override
  String get menuHelp => 'Palīdzība';

  @override
  String get menuWebDownload => 'Mājaslapa';

  @override
  String get menuDeviceImport => 'Importēt materiālus no ierīces';

  @override
  String get menuSettings => 'Valodas iestatījumi';

  @override
  String get basicWords => 'Pamata vārdu repozitorijs';

  @override
  String get basicSentences => 'Pamata teikumu repozitorijs';

  @override
  String get selectMaterialSet => 'Atlasiet mācību materiālu kopumu';

  @override
  String get sectionWords => 'Vārdi';

  @override
  String get sectionSentences => 'Teikumi';

  @override
  String get languageSettingsTitle => 'Valodas iestatījumi';

  @override
  String get sourceLanguageLabel => 'Mana valoda (Avots)';

  @override
  String get targetLanguageLabel => 'Mācību valoda (Mērķis)';

  @override
  String get mode3Start => 'Sākt';

  @override
  String get mode3Stop => 'Pārtraukt';

  @override
  String get mode3Next => 'Tālāk';

  @override
  String get mode3TryAgain => 'Mēģināt vēlreiz';

  @override
  String get tutorialM3ResetTitle => 'Vēstures atiestatīšana';

  @override
  String get tutorialSwapDesc => 'Apmaina manu valodu un mācību valodu.';

  @override
  String get recognizedText => 'Atpazīta izruna:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Atiestata progresu un precizitātes rādītāju, lai sāktu no jauna.';

  @override
  String get menuSelectMaterialSet => 'Atlasiet mācību materiālu kopumu';

  @override
  String get sectionWord => 'Vārdu sadaļa';

  @override
  String get sectionSentence => 'Teikumu sadaļa';

  @override
  String get tabWord => 'Vārds';

  @override
  String get tabSentence => 'Teikums';

  @override
  String get errorProfanity => 'Nevar tulkot, jo satur necenzētus vārdus.';

  @override
  String get errorHateSpeech => 'Nevar tulkot, jo satur naida runu.';

  @override
  String get errorSexualContent =>
      'Nevar tulkot, jo satur seksuāla rakstura saturu.';

  @override
  String get errorOtherSafety =>
      'Tulkošana tika atteikta AI drošības politikas dēļ.';

  @override
  String get clearAll => 'Notīrīt visu';

  @override
  String get disambiguationTitle => 'Izvēlieties nozīmi';

  @override
  String get disambiguationPrompt => 'Kuru nozīmi vēlaties tulkot?';

  @override
  String get skip => 'Izlaist';

  @override
  String get inputModeTitle => 'Ievade';

  @override
  String get reviewModeTitle => 'Pārskats';

  @override
  String get practiceModeTitle => 'Prakse';

  @override
  String get chatHistoryTitle => 'Sarunu vēsture';

  @override
  String get chatNew => 'Jauna saruna';

  @override
  String get chatNewChat => 'Jauna saruna';

  @override
  String get chatChoosePersona => 'Izvēlieties personu';

  @override
  String get chatTypeHint => 'Ierakstiet ziņojumu...';

  @override
  String chatFailed(Object error) {
    return 'Tērzēšana neizdevās: $error';
  }

  @override
  String get chatNoConversations => 'Vēl nav sarunu';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt => 'Sāciet jaunu sarunu, lai praktizētu!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Sarunas izvilkums ($speaker)';
  }

  @override
  String get personaTeacher => 'Angļu valodas skolotājs';

  @override
  String get personaGuide => 'Ceļvedis';

  @override
  String get personaFriend => 'Vietējais draugs';

  @override
  String get chatUntitled => 'Saruna bez nosaukuma';

  @override
  String get chatAiChat => 'Tērzēšana';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Pašlaik atlasīts materiālu kopums: $name';
  }

  @override
  String get basicWordRepository => 'Pamata vārdu repozitorijs';

  @override
  String get basicSentenceRepository => 'Pamata teikumu repozitorijs';

  @override
  String get chatEndTitle => 'Beigt un saglabāt sarunu';

  @override
  String get chatEndMessage => 'Vai vēlaties beigt sarunu?';

  @override
  String get chatSaveAndExit => 'Saglabāt un iziet';

  @override
  String get errorSelectCategory => 'Vispirms atlasiet vārdu vai teikumu!';

  @override
  String get tutorialM1ToggleTitle => 'Vārdu/teikumu režīms';

  @override
  String get tutorialM1ToggleDesc =>
      'Pārslēdziet vārdu un teikumu režīmu šeit.';

  @override
  String get metadataDialogTitle => 'Detalizēta klasifikācija';

  @override
  String get tagFormal => 'Formāls';

  @override
  String get selectPOS => 'Izvēlieties runas daļu';

  @override
  String get selectSentenceType => 'Izvēlieties teikuma veidu';

  @override
  String get metadataRootWord => 'Saknes vārds';

  @override
  String get posNoun => 'Lietvārds';

  @override
  String get posVerb => 'Darbības vārds';

  @override
  String get posAdjective => 'Īpašības vārds';

  @override
  String get posAdverb => 'Apstākļa vārds';

  @override
  String get posPronoun => 'Vietniekvārds';

  @override
  String get posPreposition => 'Prievārds/Partikula';

  @override
  String get posConjunction => 'Saiklis';

  @override
  String get posInterjection => 'Izsauksmes vārds';

  @override
  String get typeStatement => 'Stāstījuma teikums';

  @override
  String get typeQuestion => 'Jautājuma teikums';

  @override
  String get typeExclamation => 'Izsauksmes teikums';

  @override
  String get typeImperative => 'Pavēles teikums';

  @override
  String get labelNote => 'Piezīme';

  @override
  String get labelShowMemorized => 'Pabeigts';

  @override
  String get titleTagSelection => 'Virsraksta atzīme (materiāli)';

  @override
  String get generalTags => 'Vispārīgās atzīmes';

  @override
  String get tagSelection => 'Atzīmju atlase';

  @override
  String get metadataFormType => 'Gramatiskā forma';

  @override
  String get formInfinitive => 'Infinitīvs/Tagadne';

  @override
  String get formPast => 'Pagātne';

  @override
  String get formPastParticiple => 'Pagātnes divdabis';

  @override
  String get formPresentParticiple => 'Tagadnes divdabis (ing)';

  @override
  String get formPresent => 'Tagadne';

  @override
  String get formThirdPersonSingular => '3. persona vienskaitlī';

  @override
  String get formPlural => 'Daudzskaitlis';

  @override
  String get formSingular => 'Vienskaitlis';

  @override
  String get caseSubject => 'Nominatīvs';

  @override
  String get caseObject => 'Akuzatīvs';

  @override
  String get casePossessive => 'Ģenitīvs';

  @override
  String get casePossessivePronoun => 'Piederības vietniekvārds';

  @override
  String get caseReflexive => 'Atgriezeniskais';

  @override
  String get formPositive => 'Pozitīvs';

  @override
  String get formComparative => 'Salīdzināmais';

  @override
  String get formSuperlative => 'Pārākais';

  @override
  String get searchConditions => 'Meklēšanas nosacījumi';

  @override
  String recentNItems(int count) {
    return 'Skatīt pēdējos $count izveidotos';
  }

  @override
  String get startsWith => 'Sākas ar';

  @override
  String get reset => 'Atiestatīt';

  @override
  String get participantRename => 'Pārdēvēt dalībnieku';

  @override
  String get labelName => 'Vārds';

  @override
  String get gender => 'Dzimums';

  @override
  String get language => 'Valoda';

  @override
  String get male => 'Vīrietis';

  @override
  String get female => 'Sieviete';

  @override
  String get neutral => 'Neitrāls';

  @override
  String get chatAllConversations => 'Visas sarunas';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Vai vēlaties izdzēst šo sarunu?\nIzdzēstās sarunas nevar atgūt.';

  @override
  String get notSelected => '- Nav atlasīts -';

  @override
  String get myWordbook => 'Mana vārdnīca';

  @override
  String get mySentenceCollection => 'Mana teikumu kolekcija';

  @override
  String get newSubjectName => 'Jauns vārdu krājuma/teikumu krājuma nosaukums';

  @override
  String get enterNewSubjectName => 'Ievadiet jaunu nosaukumu';

  @override
  String get addNewSubject => 'Pievienot jaunu nosaukumu';

  @override
  String get selectExistingSubject => 'Izvēlieties esošu nosaukumu';

  @override
  String get addTagHint => 'Pievienot tagu...';

  @override
  String get save => 'Saglabāt';

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
      'Lūdzu, pārbaudiet savu e-pastu, lai pabeigtu verifikāciju.';

  @override
  String get emailAlreadyInUse =>
      'Šis e-pasts jau ir reģistrēts. Lūdzu, piesakieties vai izmantojiet paroles atgūšanas funkciju.';
}

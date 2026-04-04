// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get basicWords => 'Pamata vārdu repozitorijs';

  @override
  String get inputLanguage => 'Ievades valoda';

  @override
  String get translationLanguage => 'Tulkošanas valoda';

  @override
  String get simplifiedGuidance =>
      'Mirklī pārvērtiet ikdienas sarunas svešvalodā! Talkie ierakstīs jūsu valodas dzīvi.';

  @override
  String get noDataForLanguage =>
      'Izvēlētajai valodai mācību dati lokālajā datubāzē nav pieejami. Lūdzu, lejupielādējiet datus vai izvēlieties citu valodu.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Atcelt';

  @override
  String get accuracy => 'Precizitāte';

  @override
  String get ttsMissing =>
      'Šajā valodā nav instalēta runas dzinēja jūsu ierīcē.';

  @override
  String get ttsInstallGuide =>
      'Lūdzu, instalējiet valodas datus Android iestatījumos > Google TTS.';

  @override
  String get adLoading =>
      'Reklāma tiek ielādēta. Lūdzu, mēģiniet vēlreiz vēlāk.';

  @override
  String get addNewSubject => 'Pievienot jaunu nosaukumu';

  @override
  String get addParticipant => 'Pievienot dalībnieku';

  @override
  String get addTagHint => 'Pievienot tagu...';

  @override
  String get alreadyHaveAccount => 'Vai jums jau ir konts?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Automātiska atskaņošana';

  @override
  String get basic => 'Pamata';

  @override
  String get basicDefault => 'Pamata';

  @override
  String get basicMaterialRepository => 'Pamata teikumu/vārdu repozitorijs';

  @override
  String get basicSentenceRepository => 'Pamata teikumu repozitorijs';

  @override
  String get basicSentences => 'Pamata teikumu repozitorijs';

  @override
  String get basicWordRepository => 'Pamata vārdu repozitorijs';

  @override
  String get caseObject => 'Akuzatīvs';

  @override
  String get casePossessive => 'Ģenitīvs';

  @override
  String get casePossessivePronoun => 'Piederības vietniekvārds';

  @override
  String get caseReflexive => 'Atgriezeniskais';

  @override
  String get caseSubject => 'Nominatīvs';

  @override
  String get chatAiChat => 'Tērzēšana';

  @override
  String get chatAllConversations => 'Visas sarunas';

  @override
  String get chatChoosePersona => 'Izvēlieties personu';

  @override
  String get chatEndMessage => 'Vai vēlaties beigt sarunu?';

  @override
  String get chatEndTitle => 'Beigt un saglabāt sarunu';

  @override
  String chatFailed(Object error) {
    return 'Tērzēšana neizdevās: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Sarunas izvilkums ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Sarunu vēsture';

  @override
  String get chatNew => 'Jauna saruna';

  @override
  String get chatNewChat => 'Jauna saruna';

  @override
  String get chatNoConversations => 'Vēl nav sarunu';

  @override
  String get chatSearchHint => 'Meklēt pēc tēmas nosaukuma...';

  @override
  String get chatNoteSearchHint => 'Meklēt piezīmēs...';

  @override
  String get chatSaveAndExit => 'Saglabāt un iziet';

  @override
  String get chatStartNewPrompt => 'Sāciet jaunu sarunu, lai praktizētu!';

  @override
  String get chatTypeHint => 'Ierakstiet ziņojumu...';

  @override
  String get chatUntitled => 'Saruna bez nosaukuma';

  @override
  String get checking => 'Pārbauda...';

  @override
  String get clearAll => 'Notīrīt visu';

  @override
  String get confirm => 'Apstiprināt';

  @override
  String get confirmDelete => 'Vai tiešām vēlaties dzēst šo mācību ierakstu?';

  @override
  String get confirmDeleteConversation =>
      'Vai vēlaties izdzēst šo sarunu?\nIzdzēstās sarunas nevar atgūt.';

  @override
  String get confirmDeleteParticipant => 'Vai vēlaties dzēst šo dalībnieku?';

  @override
  String get contextTagHint =>
      'Pierakstiet situāciju, lai vēlāk to būtu vieglāk atšķirt';

  @override
  String get contextTagLabel =>
      'Konteksts/Situācija (pēc izvēles) - Piemērs: Rīta sveiciens, formāls';

  @override
  String get copiedToClipboard => 'Nokopēts starpliktuvē!';

  @override
  String get copy => 'Kopēt';

  @override
  String get correctAnswer => 'Pareiza atbilde';

  @override
  String get createNew => 'Turpināt ar jaunu teikumu';

  @override
  String get currentLocation => 'Pašreizējā atrašanās vieta';

  @override
  String get currentMaterialLabel => 'Pašlaik atlasīts materiālu kopums:';

  @override
  String get delete => 'Dzēst';

  @override
  String deleteFailed(String error) {
    return 'Dzēšana neizdevās: $error';
  }

  @override
  String get deleteRecord => 'Dzēst ierakstu';

  @override
  String get dialogueQuestDesc =>
      'Praktizējiet sarunas, izmantojot situācijas. Atlasiet un izrunājiet piemērotas atbildes.';

  @override
  String get dialogueQuestTitle => 'Dialoga meklējums';

  @override
  String get disambiguationPrompt => 'Kuru nozīmi vēlaties tulkot?';

  @override
  String get disambiguationTitle => 'Izvēlieties nozīmi';

  @override
  String get dontHaveAccount => 'Vai jums nav konta?';

  @override
  String get editParticipant => 'Rediģēt dalībnieku';

  @override
  String get email => 'E-pasts';

  @override
  String get emailAlreadyInUse =>
      'Šis e-pasts jau ir reģistrēts. Lūdzu, piesakieties vai izmantojiet paroles atgūšanas funkciju.';

  @override
  String get enterNewSubjectName => 'Ievadiet jaunu nosaukumu';

  @override
  String get enterSentenceHint => 'Ievadiet teikumu...';

  @override
  String get enterTextHint => 'Ievadiet tekstu, ko tulkot';

  @override
  String get enterTextToTranslate => 'Ievadiet tekstu, ko tulkot';

  @override
  String get enterWordHint => 'Ievadiet vārdu...';

  @override
  String get error => 'Kļūda';

  @override
  String get errorHateSpeech => 'Nevar tulkot, jo satur naida runu.';

  @override
  String get errorOtherSafety =>
      'Tulkošana tika atteikta AI drošības politikas dēļ.';

  @override
  String get errorProfanity => 'Nevar tulkot, jo satur necenzētus vārdus.';

  @override
  String get errorSelectCategory => 'Vispirms atlasiet vārdu vai teikumu!';

  @override
  String get errorSexualContent =>
      'Nevar tulkot, jo satur seksuāla rakstura saturu.';

  @override
  String get errors => 'Kļūdas:';

  @override
  String get female => 'Sieviete';

  @override
  String get file => 'Fails:';

  @override
  String get filterAll => 'Visi';

  @override
  String get flip => 'Rādīt';

  @override
  String get formComparative => 'Salīdzināmais';

  @override
  String get formInfinitive => 'Infinitīvs/Tagadne';

  @override
  String get formPast => 'Pagātne';

  @override
  String get formPastParticiple => 'Pagātnes divdabis';

  @override
  String get formPlural => 'Daudzskaitlis';

  @override
  String get formPositive => 'Pozitīvs';

  @override
  String get formPresent => 'Tagadne';

  @override
  String get formPresentParticiple => 'Tagadnes divdabis (ing)';

  @override
  String get formSingular => 'Vienskaitlis';

  @override
  String get formSuperlative => 'Pārākais';

  @override
  String get formThirdPersonSingular => '3. persona vienskaitlī';

  @override
  String get gameModeDesc => 'Izvēlieties spēles režīmu, ko praktizēt';

  @override
  String get gameModeTitle => 'Spēles režīms';

  @override
  String get gameOver => 'Spēle beigusies';

  @override
  String get gender => 'Dzimums';

  @override
  String get labelFilterMaterial => 'Materiāli';

  @override
  String get labelFilterTag => 'Atzīme';

  @override
  String get generalTags => 'Vispārīgās atzīmes';

  @override
  String get getMaterials => 'Saņemt materiālus';

  @override
  String get good => 'Labi';

  @override
  String get googleContinue => 'Turpināt ar Google';

  @override
  String get helpDialogueImportDesc =>
      'Importējiet veselu dialogu kopumu kā JSON failu.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON struktūra: izmantojiet `dialogues` masīvu `entries` vietā\n• Automātiska atkopšana: tiek atjaunots dialoga nosaukums, persona un ziņojumu secība.\n• Atrašanās vieta: importētie dialogi parādās AI tērzēšanas režīma cilnē \'Vēsture\'.';

  @override
  String get helpJsonDesc =>
      'Lai importētu mācību materiālus, kas jāizmanto 3. režīmā, kā JSON failu, ievērojiet šo formātu:';

  @override
  String get helpJsonTypeDialogue => 'Dialogs';

  @override
  String get helpJsonTypeSentence => 'Teikums';

  @override
  String get helpJsonTypeWord => 'Vārds';

  @override
  String get helpMode1Desc =>
      'Sāciet valodu apguvi visintuitīvākajā veidā, izmantojot premium 3D mikrofonu un lielās klaviatūras ikonas.';

  @override
  String get helpMode1Details =>
      '• Valodu iestatījumi: pārbaudiet savu valodu un valodu, kuru apgūstat, un mainiet mācību valodu, izmantojot valodu pogu sākuma ekrāna augšdaļā.\n• Vienkārša ievade: nekavējoties ievadiet, izmantojot lielo mikrofonu un teksta logu centrā.\n• Pārbaudiet iestatījumus: kad esat pabeidzis ievadi, nospiediet zilo atzīmes pogu labajā pusē. Parādīsies detalizētu iestatījumu logs.\n• Detalizēti iestatījumi: parādītajā dialoglodziņā varat norādīt krātuvi, anotācijas (piezīmes) un tagus, ko saglabāt.\n• Tulkot tūlīt: pēc iestatījumu pabeigšanas nospiediet zaļo tulkošanas pogu, lai mākslīgais intelekts nekavējoties veiktu tulkošanu.\n• Automātiska meklēšana: ievades laikā tas reāllaikā nosaka un parāda līdzīgus esošos tulkojumus.\n• Klausieties un saglabājiet: klausieties izrunu, izmantojot skaļruņa ikonu tulkošanas rezultātu apakšdaļā, un pievienojiet to savam mācību sarakstam, izmantojot \"Saglabāt datus\".';

  @override
  String get helpMode2Desc =>
      'Pārskatiet saglabātos teikumus un pārbaudiet, vai atceraties, izmantojot automātiskās slēpšanas funkciju.';

  @override
  String get helpMode2Details =>
      '• Materiālu izvēle: augšējā labajā stūrī izvēlnē (⋮) izmantojiet \'Atlasīt mācību materiālu\' vai \'Tiešsaistes materiālu telpu\'\n• Kartes apgriešana: pārbaudiet tulkojumu ar \'Rādīt/Slēpt\'\n• Klausīšanās: atskaņojiet izrunu ar skaļruņa ikonu\n• Mācīšanās pabeigta: atzīmējiet ar ķeksīti (V), lai pabeigtu mācīšanos\n• Dzēšana: ilgi nospiediet karti (Long Click), lai izdzēstu ierakstu\n• Meklēšana un filtrēšana: meklēšanas josla (reāllaika viedā meklēšana) un atbalsts tagiem, sākuma burtu filtriem';

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
      '• AI tērzēšana: praktizējiet sarunas reālajā dzīvē ar personām izvēlnē \'Tērzēšana\' apakšējā cilnes joslā\n• Personas iestatījumi: brīvi norādiet otras personas dzimumu, vārdu un valodas kodu\n• GPS situācijas spēle: atpazīst manu pašreizējo atrašanās vietu un iesaka tērzēšanas tēmas, kas piemērotas vietai\n• Divvalodu: AI atbildes tiek parādītas kopā ar tulkojumiem, lai maksimāli palielinātu mācību efektu\n• Ierakstu pārvaldība: filtrējiet pagātnes sarunu vēsturi un saglabājiet noteiktus ziņojumus sarunās kā mācību materiālus';

  @override
  String get helpTabJson => 'JSON formāts';

  @override
  String get helpTabModes => 'Režīmu skaidrojumi';

  @override
  String get helpTabQuickStart => 'Ātrā uzsākšana';

  @override
  String get helpTabTour => 'Apskatīt';

  @override
  String get helpTitle => 'Palīdzība un ceļveži';

  @override
  String get helpTourDesc =>
      '**Izgaismots aplis** sniedz norādījumus par galvenajām funkcijām.\n(Piemērs: varat ilgi nospiest kartīti, uz kuru norāda **izgaismots aplis**, lai to izdzēstu.)';

  @override
  String get hide => 'Slēpt';

  @override
  String importAdded(int count) {
    return 'Pievienots: $count';
  }

  @override
  String get importComplete => 'Importēšana pabeigta';

  @override
  String get importDuplicateTitleError =>
      'Materiāls ar šādu nosaukumu jau pastāv. Lūdzu, mainiet nosaukumu un mēģiniet vēlreiz.';

  @override
  String get importSourceTitle => '가져오기 원본 선택';

  @override
  String get importSourceFile => '단일 JSON 파일';

  @override
  String get importSourceFolder => '폴더 (언어별 라이브러리 구조)';

  @override
  String get importSourceZip => 'ZIP 파일 (압축된 폴더)';

  @override
  String importFolderSuccess(num files, num entries) {
    return '$files개 파일, $entries개 항목을 가져왔습니다.';
  }

  @override
  String importErrorMessage(String error) {
    return 'Faila importēšana neizdevās:\\n$error';
  }

  @override
  String get importFailed => 'Importēšana neizdevās';

  @override
  String importFile(String fileName) {
    return 'Fails: $fileName';
  }

  @override
  String get importJsonFile => 'Importēt JSON failu';

  @override
  String get importJsonFilePrompt => 'Lūdzu, importējiet JSON failu';

  @override
  String importSkipped(int count) {
    return 'Izlaists: $count';
  }

  @override
  String importTotal(int count) {
    return 'Kopā: $count';
  }

  @override
  String get importing => 'Importē...';

  @override
  String get inputModeTitle => 'Ievade';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervāls: $seconds s';
  }

  @override
  String get invalidEmail => 'Ievadiet derīgu e-pastu.';

  @override
  String get kakaoContinue => 'Turpināt ar Kakao';

  @override
  String get labelLangCode => 'Valodas kods (piem., en-US, ko-KR)';

  @override
  String get labelName => 'Vārds';

  @override
  String get labelNote => 'Piezīme';

  @override
  String get labelPOS => 'Runas daļa';

  @override
  String get labelRole => 'Loma';

  @override
  String get labelSentence => 'Teikums';

  @override
  String get labelSentenceCollection => 'Teikumu krājums';

  @override
  String get labelSentenceType => 'Teikuma veids';

  @override
  String get labelShowMemorized => 'Pabeigts';

  @override
  String get labelType => 'Veids:';

  @override
  String get labelWord => 'Vārds';

  @override
  String get labelWordbook => 'Vārdu krājums';

  @override
  String get language => 'Valoda';

  @override
  String get languageSettings => 'Valodas iestatījumi';

  @override
  String get languageSettingsTitle => 'Valodas iestatījumi';

  @override
  String get libTitleFirstMeeting => 'Pirmā tikšanās';

  @override
  String get libTitleGreetings1 => 'Sveicieni 1';

  @override
  String get libTitleNouns1 => 'Lietvārdi 1';

  @override
  String get libTitleVerbs1 => 'Darbības vārdi 1';

  @override
  String get listen => 'Klausīties';

  @override
  String get listening => 'Klausās...';

  @override
  String get loadingParticipants => 'Ielādē dalībniekus...';

  @override
  String get location => 'Atrašanās vieta';

  @override
  String get login => 'Ielogoties';

  @override
  String get logout => 'Izrakstīties';

  @override
  String get logoutConfirmMessage =>
      'Vai vēlaties izrakstīties no šīs ierīces?';

  @override
  String get logoutConfirmTitle => 'Izrakstīties';

  @override
  String get male => 'Vīrietis';

  @override
  String get manageParticipants => 'Pārvaldīt dalībniekus';

  @override
  String get manual => 'Manuāla ievade';

  @override
  String get markAsStudied => 'Atzīmēt kā apgūtu';

  @override
  String get materialInfo => 'Informācija par materiālu';

  @override
  String get me => 'Es';

  @override
  String get menuDeviceImport => 'Importēt materiālus no ierīces';

  @override
  String get menuHelp => 'Palīdzība';

  @override
  String get menuLanguageSettings => 'Valodas iestatījumi';

  @override
  String get menuOnlineLibrary => 'Tiešsaistes bibliotēka';

  @override
  String get menuSelectMaterialSet => 'Atlasiet mācību materiālu kopumu';

  @override
  String get menuSettings => 'Valodas iestatījumi';

  @override
  String get menuTutorial => 'Apmācības tūre';

  @override
  String get menuWebDownload => 'Mājaslapa';

  @override
  String get metadataDialogTitle => 'Detalizēta klasifikācija';

  @override
  String get metadataFormType => 'Gramatiskā forma';

  @override
  String get metadataRootWord => 'Saknes vārds';

  @override
  String get micButtonTooltip => 'Sākt balss atpazīšanu';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Pašlaik atlasīts materiālu kopums: $name';
  }

  @override
  String get mode2Title => 'Pārskats';

  @override
  String get mode3Next => 'Tālāk';

  @override
  String get mode3Start => 'Sākt';

  @override
  String get mode3Stop => 'Pārtraukt';

  @override
  String get mode3TryAgain => 'Mēģināt vēlreiz';

  @override
  String get mySentenceCollection => 'Mana teikumu kolekcija';

  @override
  String get myWordbook => 'Mana vārdnīca';

  @override
  String get neutral => 'Neitrāls';

  @override
  String get newSubjectName => 'Jauns vārdu krājuma/teikumu krājuma nosaukums';

  @override
  String get next => 'Tālāk';

  @override
  String get noDialogueHistory => 'Nav sarunu vēstures.';

  @override
  String get noInternetWarningMic =>
      'Nav interneta savienojuma. Bezsaistē balss atpazīšana var nebūt pieejama.';

  @override
  String get noInternetWarningTranslate =>
      'Nav interneta savienojuma. Bezsaistē tulkošanas funkcija nav pieejama. Lūdzu, izmantojiet atkārtošanas režīmu.';

  @override
  String get noMaterialsInCategory => 'Šajā kategorijā nav materiālu.';

  @override
  String get noParticipantsFound => 'Nav reģistrētu dalībnieku.';

  @override
  String get noRecords => 'Nav mācību ierakstu atlasītajā valodā';

  @override
  String get noStudyMaterial => 'Nav mācību materiāla.';

  @override
  String get noTextToPlay => 'Nav teksta, ko atskaņot';

  @override
  String get noTranslationToSave => 'Nav tulkojumu, ko saglabāt';

  @override
  String get noVoiceDetected => 'Balss nav konstatēta';

  @override
  String get notSelected => '- Nav atlasīts -';

  @override
  String get onlineLibraryCheckInternet =>
      'Pārbaudiet interneta savienojumu vai mēģiniet vēlreiz vēlāk.';

  @override
  String get onlineLibraryLoadFailed => 'Neizdevās ielādēt materiālus.';

  @override
  String get onlineLibraryNoMaterials => 'Nav materiālu.';

  @override
  String get participantDeleted => 'Dalībnieks ir dzēsts.';

  @override
  String get participantRename => 'Pārdēvēt dalībnieku';

  @override
  String get partner => 'Partneris';

  @override
  String get partnerMode => 'Partnera režīms';

  @override
  String get password => 'Parole';

  @override
  String get passwordTooShort => 'Parolei jābūt vismaz 6 rakstzīmēm garai.';

  @override
  String get perfect => 'Lieliski!';

  @override
  String get personaFriend => 'Vietējais draugs';

  @override
  String get personaGuide => 'Ceļvedis';

  @override
  String get personaTeacher => 'Angļu valodas skolotājs';

  @override
  String get playAgain => 'Spēlēt vēlreiz';

  @override
  String playbackFailed(String error) {
    return 'Atskaņošana neizdevās: $error';
  }

  @override
  String get playing => 'Atskaņo...';

  @override
  String get posAdjective => 'Īpašības vārds';

  @override
  String get posAdverb => 'Apstākļa vārds';

  @override
  String get posConjunction => 'Saiklis';

  @override
  String get posInterjection => 'Izsauksmes vārds';

  @override
  String get posNoun => 'Lietvārds';

  @override
  String get posPreposition => 'Prievārds/Partikula';

  @override
  String get posPronoun => 'Vietniekvārds';

  @override
  String get posVerb => 'Darbības vārds';

  @override
  String get practiceModeTitle => 'Prakse';

  @override
  String get practiceWordsOnly => 'Praktizēt tikai vārdus';

  @override
  String progress(int current, int total) {
    return 'Norise: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Skatīt pēdējos $count izveidotos';
  }

  @override
  String recognitionFailed(String error) {
    return 'Balss atpazīšana neizdevās: $error';
  }

  @override
  String get recognized => 'Atpazīts';

  @override
  String get recognizedText => 'Atpazīta izruna:';

  @override
  String get recordDeleted => 'Ieraksts ir dzēsts';

  @override
  String get refresh => 'Atjaunot';

  @override
  String get reset => 'Atiestatīt';

  @override
  String get resetPracticeHistory => 'Atiestatīt praktizēšanās vēsturi';

  @override
  String get retry => 'Mēģināt vēlreiz?';

  @override
  String get reviewAll => 'Visu pārskatīšana';

  @override
  String reviewCount(int count) {
    return 'Pārskatīts $count reizes';
  }

  @override
  String get reviewModeTitle => 'Pārskats';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Trešā puse';

  @override
  String get roleUser => 'Lietotājs';

  @override
  String get save => 'Saglabāt';

  @override
  String get saveData => 'Saglabāt datus';

  @override
  String saveFailed(String error) {
    return 'Saglabāšana neizdevās: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Mēģiniet saglabāt tulkojumus no meklēšanas režīma';

  @override
  String get saved => 'Saglabāts';

  @override
  String get saving => 'Saglabā...';

  @override
  String score(String score) {
    return 'Precizitāte: $score%';
  }

  @override
  String get scoreLabel => 'Punkti';

  @override
  String get search => 'Meklēt';

  @override
  String get searchConditions => 'Meklēšanas nosacījumi';

  @override
  String get searchSentenceHint => 'Meklēt teikumu...';

  @override
  String get searchWordHint => 'Meklēt vārdu...';

  @override
  String get sectionSentence => 'Teikumu sadaļa';

  @override
  String get sectionSentences => 'Teikumi';

  @override
  String get sectionWord => 'Vārdu sadaļa';

  @override
  String get sectionWords => 'Vārdi';

  @override
  String get selectExistingSubject => 'Izvēlieties esošu nosaukumu';

  @override
  String get selectMaterialPrompt => 'Lūdzu, atlasiet mācību materiālu';

  @override
  String get selectMaterialSet => 'Atlasiet mācību materiālu kopumu';

  @override
  String get selectPOS => 'Izvēlieties runas daļu';

  @override
  String get selectParticipants => 'Atlasiet dalībniekus';

  @override
  String get selectSentenceType => 'Izvēlieties teikuma veidu';

  @override
  String get selectStudyMaterial => 'Atlasiet mācību materiālu';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Teikums';

  @override
  String get signUp => 'Reģistrēties';

  @override
  String get similarTextFound => 'Atrasts līdzīgs teksts';

  @override
  String get skip => 'Izlaist';

  @override
  String get source => 'Avots:';

  @override
  String get sourceLanguage => 'Pirmvaloda';

  @override
  String get sourceLanguageLabel => 'Mana valoda (Avots)';

  @override
  String get speakNow => 'Runājiet tagad!';

  @override
  String get speaker => 'Runātājs';

  @override
  String get speakerSelect => 'Atlasiet runātāju';

  @override
  String get speakingPractice => 'Runāšanas praktizēšana';

  @override
  String get startChat => 'Sākt sarunu';

  @override
  String get startPractice => 'Sākt praktizēties';

  @override
  String get startTutorial => 'Sākt apmācību';

  @override
  String get startWarning => 'Brīdinājums';

  @override
  String get startsWith => 'Sākas ar';

  @override
  String get statusCheckEmail =>
      'Lūdzu, pārbaudiet savu e-pastu, lai pabeigtu verifikāciju.';

  @override
  String statusDownloading(Object name) {
    return 'Lejupielāde: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Importēšana neizdevās: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name importēšana pabeigta';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Pieteikšanās ir atcelta.';

  @override
  String statusLoginFailed(Object error) {
    return 'Pieteikšanās neizdevās: $error';
  }

  @override
  String get statusLoginSuccess => 'Ielogojies veiksmīgi.';

  @override
  String get statusLogoutSuccess => 'Izrakstīšanās veiksmīga.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Reģistrācija neizdevās: $error';
  }

  @override
  String get statusSigningUp => 'Reģistrēšanās...';

  @override
  String get stopPractice => 'Pārtraukt praktizēties';

  @override
  String get studyComplete => 'Mācīšanās pabeigta';

  @override
  String studyRecords(int count) {
    return 'Mācību ieraksti ($count)';
  }

  @override
  String get styleFormal => 'Formāls';

  @override
  String get styleInformal => 'Neformāls';

  @override
  String get stylePolite => 'Pieklājīgs';

  @override
  String get styleSlang => 'Žargons';

  @override
  String get subject => 'Tēma:';

  @override
  String get swapLanguages => 'Apmainīt valodas';

  @override
  String get switchToAi => 'Pārslēgties uz AI režīmu';

  @override
  String get switchToPartner => 'Pārslēgties uz partnera režīmu';

  @override
  String get syncingData => 'Sinhronizē datu...';

  @override
  String get tabConversation => 'Saruna';

  @override
  String tabReview(int count) {
    return 'Pārskats ($count)';
  }

  @override
  String get tabSentence => 'Teikums';

  @override
  String get tabSpeaking => 'Runāšana';

  @override
  String tabStudyMaterial(int count) {
    return 'Mācību materiāli ($count)';
  }

  @override
  String get tabWord => 'Vārds';

  @override
  String get tagFormal => 'Formāls';

  @override
  String get tagSelection => 'Atzīmju atlase';

  @override
  String get targetLanguage => 'Mērķa valoda';

  @override
  String get targetLanguageFilter => 'Mērķa valodas filtrs:';

  @override
  String get targetLanguageLabel => 'Mācību valoda (Mērķis)';

  @override
  String get thinkingTimeDesc =>
      'Laiks, kas jāpārdomā pirms atbildes atklāšanas.';

  @override
  String get thinkingTimeInterval => 'Atskaņošanas intervāls';

  @override
  String get timeUp => 'Laiks ir beidzies!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Virsraksta atzīme (materiāli)';

  @override
  String get tooltipDecrease => 'Samazināt';

  @override
  String get tooltipIncrease => 'Palielināt';

  @override
  String get tooltipSearch => 'Meklēt';

  @override
  String get tooltipSpeaking => 'Runāšana';

  @override
  String get tooltipStudyReview => 'Mācīšanās+Pārskats';

  @override
  String totalRecords(int count) {
    return 'Kopā $count ieraksti (skatīt visus)';
  }

  @override
  String get translate => 'Tulkot';

  @override
  String get translating => 'Tulko...';

  @override
  String get translation => 'Tulkojums';

  @override
  String get translationComplete => 'Tulkošana pabeigta (jāsaglabā)';

  @override
  String translationFailed(String error) {
    return 'Tulkošana neizdevās: $error';
  }

  @override
  String get translationLimitExceeded => 'Pārsniegts tulkošanas ierobežojums';

  @override
  String get translationLimitMessage =>
      'Esat izmantojis visus savus ikdienas bezmaksas tulkojumus (5 reizes).\\n\\nVai vēlaties skatīties reklāmu un nekavējoties papildināt 5 reizes?';

  @override
  String get translationLoaded => 'Ielādēts saglabātais tulkojums';

  @override
  String get translationRefilled =>
      'Jūsu tulkošanas reižu skaits ir papildināts ar 5 reizēm!';

  @override
  String get translationResultHint => 'Tulkošanas rezultāts - var rediģēt';

  @override
  String get tryAgain => 'Mēģiniet vēlreiz';

  @override
  String get tutorialAiChatDesc =>
      'Praktizējiet sarunas reālajā dzīvē ar AI personu.';

  @override
  String get tutorialAiChatTitle => 'AI tērzēšana';

  @override
  String get tutorialContextDesc =>
      'Varat to saglabāt atsevišķi, ja pierakstāt situāciju (piemēram, rīts, vakars), pat ja tas ir tas pats teikums.';

  @override
  String get tutorialContextTitle => 'Situācijas/konteksta atzīme';

  @override
  String get tutorialLangSettingsDesc =>
      'Iestatiet pirmvalodu un mērķa valodu, ko tulkot.';

  @override
  String get tutorialLangSettingsTitle => 'Valodas iestatījumi';

  @override
  String get tutorialM1ToggleDesc =>
      'Pārslēdziet vārdu un teikumu režīmu šeit.';

  @override
  String get tutorialM1ToggleTitle => 'Vārdu/teikumu režīms';

  @override
  String get tutorialM2DropdownDesc =>
      'Varat izvēlēties materiālu, ko mācīties, izmantojot augšējo izvēlni.';

  @override
  String get tutorialM2ImportDesc => 'Importējiet JSON failu no ierīces mapes.';

  @override
  String get tutorialM2ListDesc =>
      'Varat ilgi nospiest šo kartīti, lai to izdzēstu. Pārbaudiet saglabātos teikumus un apgrieziet tos.';

  @override
  String get tutorialM2ListTitle => 'Mācību saraksts';

  @override
  String get tutorialM2SearchDesc =>
      'Meklējiet saglabātos vārdus un teikumus, lai tos ātri atrastu.';

  @override
  String get tutorialM2SelectDesc =>
      'Nospiediet materiālu kopuma ikonu (📚) augšējā lietotnes joslā, lai izvēlētos materiālu, ko mācīties.';

  @override
  String get tutorialM2SelectTitle => 'Materiāla izvēle';

  @override
  String get tutorialM3IntervalDesc =>
      'Pielāgojiet gaidīšanas laiku starp teikumiem.';

  @override
  String get tutorialM3IntervalTitle => 'Intervāla iestatīšana';

  @override
  String get tutorialM3ResetDesc =>
      'Atiestata progresu un precizitātes rādītāju, lai sāktu no jauna.';

  @override
  String get tutorialM3ResetTitle => 'Vēstures atiestatīšana';

  @override
  String get tutorialM3SelectDesc =>
      'Nospiediet materiālu kopuma ikonu (📚) augšējā lietotnes joslā, lai izvēlētos materiālu, ko praktizēt.';

  @override
  String get tutorialM3SelectTitle => 'Materiāla izvēle';

  @override
  String get tutorialM3StartDesc =>
      'Nospiediet atskaņošanas pogu, lai klausītos vietējā valodā runājošo un atkārtotu.';

  @override
  String get tutorialM3StartTitle => 'Sākt praktizēties';

  @override
  String get tutorialM3WordsDesc =>
      'Atzīmējiet, lai praktizētu tikai saglabātos vārdus.';

  @override
  String get tutorialM3WordsTitle => 'Vārdu praktizēšana';

  @override
  String get tutorialMicDesc =>
      'Varat ievadīt ar balsi, nospiežot mikrofona pogu.';

  @override
  String get tutorialMicTitle => 'Balss ievade';

  @override
  String get tutorialSaveDesc =>
      'Saglabājiet tulkotos rezultātus mācību ierakstos.';

  @override
  String get tutorialSaveTitle => 'Saglabāt';

  @override
  String get tutorialSwapDesc => 'Apmaina manu valodu un mācību valodu.';

  @override
  String get tutorialTabDesc => 'Šeit varat izvēlēties vēlamo mācību režīmu.';

  @override
  String get tutorialTapToContinue => 'Pieskarieties ekrānam, lai turpinātu';

  @override
  String get tutorialTransDesc => 'Tulko ievadīto tekstu.';

  @override
  String get tutorialTransTitle => 'Tulkot';

  @override
  String get typeExclamation => 'Izsauksmes teikums';

  @override
  String get typeImperative => 'Pavēles teikums';

  @override
  String get typeQuestion => 'Jautājuma teikums';

  @override
  String get typeStatement => 'Stāstījuma teikums';

  @override
  String get usageLimitTitle => 'Sasniegts ierobežojums';

  @override
  String get useExistingText => 'Izmantot esošu tekstu';

  @override
  String get viewOnlineGuide => 'Skatīt tiešsaistes ceļvedi';

  @override
  String get voluntaryTranslations => 'Brīvprātīgie tulkojumi';

  @override
  String get watchAdAndRefill => 'Skatīties reklāmu un papildināt (+5 reizes)';

  @override
  String get word => 'Vārds';

  @override
  String get wordDefenseDesc =>
      'Aizstāviet bāzi, izrunājot vārdus, pirms ienaidnieks sasniedz.';

  @override
  String get wordDefenseTitle => 'Vārdu aizsardzība';

  @override
  String get wordModeLabel => 'Vārdu režīms';

  @override
  String get yourPronunciation => 'Jūsu izruna';

  @override
  String get ttsUnsupportedNatively =>
      'Šī ierīce sākotnēji neatbalsta runas izvadi šajā valodā.';

  @override
  String get homeTab => 'Tulkot';

  @override
  String get welcomeTitle => 'Laipni lūdzam Talkie!';

  @override
  String get welcomeDesc =>
      'Laipni lūdzam Talkie! Mēs atbalstām vairāk nekā 80 valodas visā pasaulē ar 100% integritāti, piedāvājot perfektu mācību pieredzi ar jaunu, premium 3D dizainu un optimizētu veiktspēju.';

  @override
  String get welcomeButton => 'Sākt';

  @override
  String get labelDetails => 'Detalizēti iestatījumi';

  @override
  String get translationResult => 'Tulkošanas rezultāts';

  @override
  String get inputContent => 'Ievades saturs';

  @override
  String get translateNow => 'Tulkot tagad';

  @override
  String get tooltipSettingsConfirm => 'Apstiprināt iestatījumus';

  @override
  String get hintNoteExample =>
      'Piemēram: konteksta skaidrojums, homonīmi utt.';

  @override
  String get hintTagExample => 'Piemēram: bizness, ceļojumi...';

  @override
  String get addNew => 'Pievienot jaunu';

  @override
  String get newNotebookTitle => 'Jaunas piezīmju grāmatiņas nosaukums';

  @override
  String get enterNameHint => 'Ievadiet vārdu';

  @override
  String get add => 'Pievienot';

  @override
  String get openSettings => 'Atvērt iestatījumus';

  @override
  String get helpNotebook => 'Izvēlieties mapi, kurā saglabāt tulkojumus.';

  @override
  String get helpNote =>
      'Brīvi pierakstiet vārda nozīmi, piemērus vai kontekstu.';

  @override
  String get helpTag =>
      'Ievadiet atslēgvārdus, lai tos vēlāk varētu kārtot vai meklēt.';

  @override
  String get requestTranslation => 'Pieprasīt tulkojumu';

  @override
  String get statusRequestSuccess => 'Tulkošanas pieprasījums ir pabeigts.';

  @override
  String statusRequestFailed(String error) {
    return 'Tulkošanas pieprasījums neizdevās: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Mācību valoda nav atrasta';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Atlasītie materiāli neatbalsta pašreizējo mācību valodu ($targetLang), tāpēc tos nevar saglabāt lokāli. Vai vēlaties pieprasīt tulkojumu?';
  }

  @override
  String get quickStartStep1Title => '1. valodas iestatīšana';

  @override
  String get quickStartStep1Desc =>
      'Vispirms izvēlieties savu un mācību valodu izvēlnē > valodas iestatījumi.';

  @override
  String get quickStartStep2Title => '2. pamata plūsma';

  @override
  String get quickStartStep2Desc =>
      'Izveidojiet savas mācību kartītes šādā secībā: ievade (mikrofons/tastatūra) -> tulkošana -> saglabāšana.';

  @override
  String get quickStartStep3Title => '3. režīma izmantošana';

  @override
  String get quickStartStep3Desc =>
      'Trenējieties tērzējot un praktizējiet izrunu, skatoties tekstu cilnē izrunas praktizēšana.';

  @override
  String get noteGuidance =>
      'Kur ievadāt papildu informāciju precīzākam tulkojumam';
}

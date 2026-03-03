// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'Jätka Kakao abil';

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
  String get helpTitle => 'Abi & juhend';

  @override
  String get helpTabModes => 'Režiimide selgitus';

  @override
  String get helpTabJson => 'JSON-vorming';

  @override
  String get helpTabTour => 'Tutvustus';

  @override
  String get helpMode1Desc =>
      'Tuvastab häält ja tõlgib selle ning võimaldab tulemusi kuulata.';

  @override
  String get helpMode1Details =>
      '• Keele seadistus: keele muutmiseks vajuta ülemisele/alumisele ikoonile\n• Sõna/lause lüliti: režiimi vahetus\n• Häälsisend: alustamiseks/peatamiseks vajuta mikrofoni ikooni\n• Tekstisisestus: tõlkimiseks sisesta otse tekst\n• Automaatne otsing: sarnaste olemasolevate lausete tuvastamine\n• Tõlgi: koheseks tõlkimiseks vajuta tõlkenupule\n• Kuula: TTS taasesitus kõlari ikooniga\n• Salvesta: lisab kirje \"Andmete salvestamisega\"\n• Tühjenda: sisendi lähtestamine';

  @override
  String get helpMode2Desc =>
      'Vaata salvestatud lauseid üle ja kontrolli meeldejätmist automaatse peitmise funktsiooniga.';

  @override
  String get helpMode2Details =>
      '• Materjali valik: vali konkreetne materjalikogum või \"Kogu kordamine\"\n• Kaardi pööramine: tõlke kontrollimiseks \"Näita/peida\" (automaatne õppimise kontroll)\n• Kuula: lause TTS taasesitus\n• Õppimine lõpetatud: märgi õppimine lõpetatuks linnukesega (V)\n• Kustuta: kirje kustutamiseks hoia kaarti all\n• Otsingutingimused: filtreeri siltide, hiljutiste üksuste või algustähe järgi';

  @override
  String get helpMode3Desc =>
      'Harjuta hääldust, kuulates lauseid ja neid korrates (varjutades).';

  @override
  String get helpMode3Details =>
      '• Materjali valik: vali õpitav materjalikogum\n• Intervalli seadistus: reguleeri lausete vahelist ooteaega nuppudega [-] [+], (3 sekundit kuni 60 sekundit)\n• Alusta/peata: varjutamise seansi juhtimine\n• Räägi: kuula häält ja korda seda\n• Tagasiside: täpsusskoor (0–100) ja värviindikaator\n• Otsingutingimused: filtreeri harjutatavaid üksusi siltide, hiljutiste üksuste või algustähe järgi';

  @override
  String get helpModeChatDesc =>
      'Harjuta vestlust tehisintellekti persooniga suheldes.';

  @override
  String get helpModeChatDetails =>
      '• AI vestlus: harjuta vestlust, rääkides oma keeles\n• Mitu personaži: muuda partneri sugu/keelt/nime kõnemulli kohal asuva menüü kaudu\n• Lisa partner: lisa uusi vestluskaaslasi (võõraid) nupuga +\n• GPS: praegusel asukohal põhinevad situatsioonid\n• Automaatne salvestamine: vestlussisu automaatne tõlkimine ja salvestamine';

  @override
  String get helpJsonDesc =>
      'Õppematerjali JSON-failina importimiseks režiimis 3 järgi seda vormingut:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'Impordi kogu dialoogikomplekt JSON-failina.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON-struktuur: kasuta massiivi `dialogues` massiivi `entries` asemel\n• Automaatne taastamine: dialoogi pealkiri, personaž ja sõnumite järjekord taastatakse.\n• Asukoht: imporditud dialoog kuvatakse AI vestlusrežiimi vahekaardil \"Ajalugu\".';

  @override
  String get helpTourDesc =>
      '**Esiletõstetud ring** juhendab peamisi funktsioone.\n(Näide: **Esiletõstetud ringi** osutatud kaardi kustutamiseks hoia seda all.)';

  @override
  String get partnerMode => 'Partnerrežiim';

  @override
  String get manual => 'Käsitsi sisestus';

  @override
  String get speaker => 'Kõneleja';

  @override
  String get switchToAi => 'Lülitu AI-režiimile';

  @override
  String get switchToPartner => 'Lülitu partnerrežiimile';

  @override
  String get currentLocation => 'Praegune asukoht';

  @override
  String get location => 'Asukoht';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Mina';

  @override
  String get currentMaterialLabel => 'Praegu valitud materjalikogum:';

  @override
  String get basicMaterialRepository => 'Põhiliste lausete/sõnade hoidla';

  @override
  String get word => 'Sõna';

  @override
  String get sentence => 'Lause';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Kordamine ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Õppematerjalid ($count)';
  }

  @override
  String get mode2Title => 'Kordamine';

  @override
  String get search => 'Otsing';

  @override
  String get translate => 'Tõlgi';

  @override
  String get listen => 'Kuula';

  @override
  String get saveData => 'Salvesta andmed';

  @override
  String get saved => 'Salvestamine lõpetatud';

  @override
  String get delete => 'Kustuta';

  @override
  String get materialInfo => 'Materjali info';

  @override
  String get cancel => 'Tühista';

  @override
  String get confirm => 'Kinnita';

  @override
  String get refresh => 'Värskenda';

  @override
  String studyRecords(int count) {
    return 'Õppimisajalugu ($count)';
  }

  @override
  String get targetLanguageFilter => 'Sihtkeele filter:';

  @override
  String get noRecords => 'Valitud keele õppimisajalugu pole';

  @override
  String get saveTranslationsFromSearch =>
      'Proovi tõlkeid otsingurežiimis salvestada';

  @override
  String get flip => 'Näita';

  @override
  String get hide => 'Peida';

  @override
  String get deleteRecord => 'Kustuta kirje';

  @override
  String get confirmDelete =>
      'Kas sa oled kindel, et soovid selle õppimiskirje kustutada?';

  @override
  String get recordDeleted => 'Kirje on kustutatud';

  @override
  String deleteFailed(String error) {
    return 'Kustutamine ebaõnnestus: $error';
  }

  @override
  String get importJsonFile => 'Impordi JSON-fail';

  @override
  String get importing => 'Importimine...';

  @override
  String get importComplete => 'Importimine lõpetatud';

  @override
  String get importFailed => 'Importimine ebaõnnestus';

  @override
  String importFile(String fileName) {
    return 'Fail: $fileName';
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
    return 'Kokku: $count tk';
  }

  @override
  String importAdded(int count) {
    return 'Lisatud: $count tk';
  }

  @override
  String importSkipped(int count) {
    return 'Jäeti vahele: $count tk';
  }

  @override
  String get errors => 'Veateated:';

  @override
  String get error => 'Viga';

  @override
  String importErrorMessage(String error) {
    return 'Faili importimine ebaõnnestus:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get selectStudyMaterial => 'Vali õppematerjal';

  @override
  String get subject => 'Teema:';

  @override
  String get source => 'Allikas:';

  @override
  String get file => 'Fail:';

  @override
  String progress(int current, int total) {
    return 'Edenemine: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Palun impordi JSON-fail';

  @override
  String get selectMaterialPrompt => 'Vali õppematerjal';

  @override
  String get studyComplete => 'Õppimine lõpetatud';

  @override
  String get markAsStudied => 'Märgi õpituks';

  @override
  String get listening => 'Kuulan...';

  @override
  String get recognized => 'Tuvastamine lõpetatud';

  @override
  String recognitionFailed(String error) {
    return 'Häältuvastus ebaõnnestus: $error';
  }

  @override
  String get checking => 'Kontrollin...';

  @override
  String get translating => 'Tõlgin...';

  @override
  String get translationComplete =>
      'Tõlkimine lõpetatud (vajalik salvestamine)';

  @override
  String get translationLoaded => 'Salvestatud tõlge on laaditud';

  @override
  String translationFailed(String error) {
    return 'Tõlkimine ebaõnnestus: $error';
  }

  @override
  String get enterTextToTranslate => 'Sisesta tõlgitav tekst';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => 'Salvestamine...';

  @override
  String get noTranslationToSave => 'Salvestamiseks pole tõlget';

  @override
  String saveFailed(String error) {
    return 'Salvestamine ebaõnnestus: $error';
  }

  @override
  String get playing => 'Mängin...';

  @override
  String get noTextToPlay => 'Taasesitamiseks pole teksti';

  @override
  String playbackFailed(String error) {
    return 'Taasesitus ebaõnnestus: $error';
  }

  @override
  String get sourceLanguage => 'Lähtekeel';

  @override
  String get targetLanguage => 'Sihtkeel';

  @override
  String get similarTextFound => 'Leiti sarnane tekst';

  @override
  String get useExistingText => 'Kasuta olemasolevat teksti';

  @override
  String get createNew => 'Jätka uue lausega';

  @override
  String reviewCount(int count) {
    return 'Korda $count korda';
  }

  @override
  String get tabSpeaking => 'Rääkimine';

  @override
  String get speakingPractice => 'Rääkimisharjutus';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervall: $seconds s';
  }

  @override
  String get yourPronunciation => 'Sinu hääldus';

  @override
  String get correctAnswer => 'Õige vastus';

  @override
  String score(String score) {
    return 'Täpsus: $score%';
  }

  @override
  String get perfect => 'Suurepärane!';

  @override
  String get good => 'Hea';

  @override
  String get tryAgain => 'Proovi uuesti';

  @override
  String get startPractice => 'Alusta harjutamist';

  @override
  String get stopPractice => 'Lõpeta harjutamine';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Alusta õpetust';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Häälsisend';

  @override
  String get tutorialMicDesc =>
      'Hääle sisestamiseks võid vajutada mikrofoni nuppu.';

  @override
  String get tutorialTabDesc => 'Siin saad valida soovitud õpperežiimi.';

  @override
  String get tutorialTapToContinue => 'Jätkamiseks puuduta ekraani';

  @override
  String get tutorialTransTitle => 'Tõlgi';

  @override
  String get tutorialTransDesc => 'Tõlgi sisestatud tekst.';

  @override
  String get tutorialSaveTitle => 'Salvesta';

  @override
  String get tutorialSaveDesc => 'Salvesta tõlgitud tulemus õppimisajalukku.';

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
  String get tutorialAiChatTitle => 'AI vestlus';

  @override
  String get tutorialAiChatDesc => 'Harjuta AI personažiga reaalset vestlust.';

  @override
  String get tutorialM2SelectTitle => 'Materjali valik';

  @override
  String get tutorialM2SelectDesc =>
      'Õpitava materjali valimiseks vajuta ülemise rakenduseriba materjalikogumi ikooni (📚).';

  @override
  String get tutorialM2ListTitle => 'Õppimisnimekiri';

  @override
  String get tutorialM2ListDesc =>
      'Selle kustutamiseks hoia seda kaarti all (pikk klõps). Kontrolli salvestatud lauset ja keera see ümber.';

  @override
  String get tutorialM3SelectTitle => 'Materjali valik';

  @override
  String get tutorialM3SelectDesc =>
      'Harjutatava materjali valimiseks vajuta ülemise rakenduseriba materjalikogumi ikooni (📚).';

  @override
  String get tutorialM3IntervalTitle => 'Intervalli seadistus';

  @override
  String get tutorialM3IntervalDesc => 'Reguleeri lausete vahelist ooteaega.';

  @override
  String get tutorialM3StartTitle => 'Alusta harjutamist';

  @override
  String get tutorialM3StartDesc =>
      'Kuula emakeelena kõneleja häält ja korda seda, vajutades taasesitusnuppu.';

  @override
  String get startWarning => 'Hoiatus';

  @override
  String get noVoiceDetected => 'Häält ei tuvastatud';

  @override
  String get tooltipSearch => 'Otsing';

  @override
  String get tooltipStudyReview => 'Õppimine+kordamine';

  @override
  String get tooltipSpeaking => 'Rääkimine';

  @override
  String get tooltipDecrease => 'Vähenda';

  @override
  String get tooltipIncrease => 'Suurenda';

  @override
  String get languageSettings => 'Keele seaded';

  @override
  String get tutorialM2DropdownDesc =>
      'Õpitava materjali saad valida ülemise menüü kaudu.';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc => 'Impordi JSON-fail seadme kaustast.';

  @override
  String get tutorialLangSettingsTitle => 'Keele seaded';

  @override
  String get tutorialLangSettingsDesc =>
      'Seadista tõlgitav lähtekeel ja sihtkeel.';

  @override
  String get copy => 'Kopeeri';

  @override
  String get copiedToClipboard => 'Kopeeritud lõikelauale!';

  @override
  String get tutorialContextTitle => 'Olukorra/konteksti silt';

  @override
  String get tutorialContextDesc =>
      'Isegi kui lause on sama, saad selle eraldi salvestada, märkides olukorra (nt hommik, õhtu).';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get thinkingTimeDesc => 'Aeg, et mõelda enne õige vastuse avaldamist.';

  @override
  String get autoPlay => 'Automaatne taasesitus';

  @override
  String get timeUp => 'Aeg on läbi!';

  @override
  String get gameModeTitle => 'Mängurežiim';

  @override
  String get gameModeDesc => 'Valige mängurežiim, mida soovite harjutada';

  @override
  String get wordDefenseTitle => 'Sõnade kaitse';

  @override
  String get wordDefenseDesc =>
      'Kaitske oma baasi, öeldes sõnu enne, kui vaenlased kohale jõuavad.';

  @override
  String get dialogueQuestTitle => 'Dialoogiülesanne';

  @override
  String get dialogueQuestDesc =>
      'Harjutage vestlust situatsioonide kaudu. Valige sobiv vastus ja öelge see.';

  @override
  String get translation => 'Translation';

  @override
  String get labelType => 'Tüüp:';

  @override
  String get labelWord => 'Sõna';

  @override
  String get labelSentence => 'Lause';

  @override
  String get contextTagLabel =>
      'Kontekst/olukord (valikuline) - näide: hommikune tervitus, viisakas keel';

  @override
  String get contextTagHint => 'Kirjuta olukord hiljem lihtsamaks eristamiseks';

  @override
  String get usageLimitTitle => 'Limiti saavutamine';

  @override
  String get translationLimitExceeded => 'Tõlkelimiit on ületatud';

  @override
  String get translationLimitMessage =>
      'Oled kasutanud kõik oma igapäevased tasuta tõlked (5 korda).\\n\\nKas soovid vaadata reklaami ja saada kohe 5 korda juurde?';

  @override
  String get watchAdAndRefill => 'Vaata reklaami ja täida (+5 korda)';

  @override
  String get translationRefilled => 'Tõlgete arv on suurendatud 5 võrra!';

  @override
  String get adLoading =>
      'Reklaami laadimine, proovige mõne aja pärast uuesti.';

  @override
  String get reviewAll => 'Kogu kordamine';

  @override
  String totalRecords(int count) {
    return 'Kokku $count kirjet (vaata kõiki)';
  }

  @override
  String get filterAll => 'Kõik';

  @override
  String get practiceWordsOnly => 'Harjuta ainult sõnu';

  @override
  String get resetPracticeHistory => 'Lähtesta harjutamisajalugu';

  @override
  String get retry => 'Proovi uuesti?';

  @override
  String get noStudyMaterial => 'Õppematerjale pole.';

  @override
  String get gameOver => 'Mäng läbi';

  @override
  String get playAgain => 'Mängi uuesti';

  @override
  String get speakNow => 'Räägi nüüd!';

  @override
  String get scoreLabel => 'Skoor';

  @override
  String get viewOnlineGuide => 'Vaata veebijuhendit';

  @override
  String get getMaterials => 'Hangi materjale';

  @override
  String get swapLanguages => 'Vaheta keeled';

  @override
  String get next => 'Järgmine';

  @override
  String get wordModeLabel => 'Sõnarežiim';

  @override
  String get accuracy => 'Täpsus';

  @override
  String get basicDefault => 'Põhiline';

  @override
  String get basic => 'Põhiline';

  @override
  String get tutorialM3WordsTitle => 'Sõnade harjutamine';

  @override
  String get tutorialM3WordsDesc =>
      'Vali see, et harjutada ainult salvestatud sõnu.';

  @override
  String get enterTextHint => 'Sisesta tõlgitav tekst';

  @override
  String get micButtonTooltip => 'Alusta hääletuvastust';

  @override
  String get menuHelp => 'Abi';

  @override
  String get menuWebDownload => 'Koduleht';

  @override
  String get menuDeviceImport => 'Impordi materjale seadmest';

  @override
  String get menuSettings => 'Keele seaded';

  @override
  String get basicWords => 'Põhiliste sõnade hoidla';

  @override
  String get basicSentences => 'Põhiliste lausete hoidla';

  @override
  String get selectMaterialSet => 'Vali õppematerjalide kogum';

  @override
  String get sectionWords => 'Sõnad';

  @override
  String get sectionSentences => 'Laused';

  @override
  String get languageSettingsTitle => 'Keele seaded';

  @override
  String get sourceLanguageLabel => 'Minu keel (Lähtekeel)';

  @override
  String get targetLanguageLabel => 'Õppimiskeel (Sihtkeel)';

  @override
  String get mode3Start => 'Alusta';

  @override
  String get mode3Stop => 'Lõpeta';

  @override
  String get mode3Next => 'Järgmine';

  @override
  String get mode3TryAgain => 'Proovi uuesti';

  @override
  String get tutorialM3ResetTitle => 'Ajaloo lähtestamine';

  @override
  String get tutorialSwapDesc => 'Vaheta oma keel ja õppimiskeel.';

  @override
  String get recognizedText => 'Tuvastatud hääldus:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Alustamiseks lähtestage oma edenemine ja täpsusskoor.';

  @override
  String get menuSelectMaterialSet => 'Vali õppematerjalide kogum';

  @override
  String get sectionWord => 'Sõnade jaotis';

  @override
  String get sectionSentence => 'Lausete jaotis';

  @override
  String get tabWord => 'Sõna';

  @override
  String get tabSentence => 'Lause';

  @override
  String get errorProfanity => 'Tõlkimine pole ropu keele tõttu võimalik.';

  @override
  String get errorHateSpeech => 'Tõlkimine pole vihakõne tõttu võimalik.';

  @override
  String get errorSexualContent =>
      'Tõlkimine pole seksuaalse sisu tõttu võimalik.';

  @override
  String get errorOtherSafety =>
      'Tõlkimine on AI ohutuspoliitika tõttu keelatud.';

  @override
  String get clearAll => 'Kustuta kõik';

  @override
  String get disambiguationTitle => 'Vali tähendus';

  @override
  String get disambiguationPrompt => 'Millise tähendusega sa soovid tõlkida?';

  @override
  String get skip => 'Jäta vahele';

  @override
  String get inputModeTitle => 'Sisestus';

  @override
  String get reviewModeTitle => 'Kordamine';

  @override
  String get practiceModeTitle => 'Harjuta';

  @override
  String get chatHistoryTitle => 'Vestluste ajalugu';

  @override
  String get chatNew => 'Uus vestlus';

  @override
  String get chatNewChat => 'Uus vestlus';

  @override
  String get chatChoosePersona => 'Vali personaž';

  @override
  String get chatTypeHint => 'Sisesta sõnum...';

  @override
  String chatFailed(Object error) {
    return 'Vestlus ebaõnnestus: $error';
  }

  @override
  String get chatNoConversations => 'Vestlusi pole veel';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt =>
      'Proovige harjutamiseks uut vestlust alustada!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Vestluse väljavõte ($speaker)';
  }

  @override
  String get personaTeacher => 'Inglise keele õpetaja';

  @override
  String get personaGuide => 'Reisijuht';

  @override
  String get personaFriend => 'Kohalik sõber';

  @override
  String get chatUntitled => 'Pealkirjata vestlus';

  @override
  String get chatAiChat => 'Vestlus';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Praegu valitud materjalikogum: $name';
  }

  @override
  String get basicWordRepository => 'Põhiliste sõnade hoidla';

  @override
  String get basicSentenceRepository => 'Põhiliste lausete hoidla';

  @override
  String get chatEndTitle => 'Lõpeta ja salvesta vestlus';

  @override
  String get chatEndMessage => 'Kas soovid vestluse lõpetada?';

  @override
  String get chatSaveAndExit => 'Salvesta ja välju';

  @override
  String get errorSelectCategory => 'Valige kõigepealt sõna või lause!';

  @override
  String get tutorialM1ToggleTitle => 'Sõna/lause režiim';

  @override
  String get tutorialM1ToggleDesc =>
      'Lülitage siin sõna- ja lauserežiimi vahel.';

  @override
  String get metadataDialogTitle => 'Täpsem klassifikatsioon';

  @override
  String get tagFormal => 'Vormilik';

  @override
  String get selectPOS => 'Vali kõneosa';

  @override
  String get selectSentenceType => 'Vali lause tüüp';

  @override
  String get metadataRootWord => 'Algvorm (juursõna)';

  @override
  String get posNoun => 'Nimisõna';

  @override
  String get posVerb => 'Tegusõna';

  @override
  String get posAdjective => 'Omadussõna';

  @override
  String get posAdverb => 'Määrsõna';

  @override
  String get posPronoun => 'Asesõna';

  @override
  String get posPreposition => 'Eessõna/kaassõna';

  @override
  String get posConjunction => 'Sidesõna';

  @override
  String get posInterjection => 'Hüüdsõna';

  @override
  String get typeStatement => 'Väitlause';

  @override
  String get typeQuestion => 'Küsilause';

  @override
  String get typeExclamation => 'Hüüdlause';

  @override
  String get typeImperative => 'Käskiv lause';

  @override
  String get labelNote => 'Märkus';

  @override
  String get labelShowMemorized => 'Lõpetatud';

  @override
  String get titleTagSelection => 'Pealkirjasilt (arhiiv)';

  @override
  String get generalTags => 'Üldised sildid';

  @override
  String get tagSelection => 'Sildi valik';

  @override
  String get metadataFormType => 'Grammatiline vorm';

  @override
  String get formInfinitive => 'Infinitiiv/olevik';

  @override
  String get formPast => 'Minevik';

  @override
  String get formPastParticiple => 'Mineviku kesksõna';

  @override
  String get formPresentParticiple => 'Oleviku kesksõna (-mas)';

  @override
  String get formPresent => 'Olevik';

  @override
  String get formThirdPersonSingular => 'Kolmas isik ainsus';

  @override
  String get formPlural => 'Mitmus';

  @override
  String get formSingular => 'Ainsus';

  @override
  String get caseSubject => 'Nimetav kääne';

  @override
  String get caseObject => 'Sihitiskääne';

  @override
  String get casePossessive => 'Omastav kääne';

  @override
  String get casePossessivePronoun => 'Omastav asesõna';

  @override
  String get caseReflexive => 'Enesekohane asesõna';

  @override
  String get formPositive => 'Algvõrre';

  @override
  String get formComparative => 'Keskvõrre';

  @override
  String get formSuperlative => 'Ülivõrre';

  @override
  String get searchConditions => 'Otsingutingimused';

  @override
  String recentNItems(int count) {
    return 'Vaata $count hiljuti loodud üksust';
  }

  @override
  String get startsWith => 'Algustäht';

  @override
  String get reset => 'Lähtesta';

  @override
  String get participantRename => 'Muuda osaleja nime';

  @override
  String get labelName => 'Nimi';

  @override
  String get gender => 'Sugu';

  @override
  String get language => 'Keel';

  @override
  String get male => 'Mees';

  @override
  String get female => 'Naine';

  @override
  String get neutral => 'Neutraalne';

  @override
  String get chatAllConversations => 'Kõik vestlused';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Kas sa oled kindel, et soovid selle vestluse kustutada?\nKustutatud vestlust ei saa taastada.';

  @override
  String get notSelected => '- Pole valitud -';

  @override
  String get myWordbook => 'Minu sõnastik';

  @override
  String get mySentenceCollection => 'Minu lausete kogu';

  @override
  String get newSubjectName => 'Uue teemakogumi nimi';

  @override
  String get enterNewSubjectName => 'Sisesta uus nimi';

  @override
  String get addNewSubject => 'Lisa uus nimi';

  @override
  String get selectExistingSubject => 'Vali olemasolev nimi';

  @override
  String get addTagHint => 'Lisa silt...';

  @override
  String get save => 'Salvesta';

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
      'Palun kinnita oma e-posti aadress, et autentimine lõpule viia.';

  @override
  String get emailAlreadyInUse =>
      'See e-posti aadress on juba kasutusel. Palun logi sisse või taasta oma parool.';
}

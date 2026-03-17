// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get basicWords => 'Alap szógyűjtemény';

  @override
  String get inputLanguage => 'Bemeneti nyelv';

  @override
  String get translationLanguage => 'Fordítási nyelv';

  @override
  String get simplifiedGuidance =>
      'Azonnali idegennyelvű fordítás a mindennapi beszélgetésekhez! A Talkie rögzíti a nyelvhasználatodat.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Mégse';

  @override
  String get accuracy => 'Pontosság';

  @override
  String get ttsMissing =>
      'Ehhez a nyelvhez nincs telepítve hangmotor az eszközön.';

  @override
  String get ttsInstallGuide =>
      'Telepítse a nyelvi adatokat az Android Beállítások > Google TTS menüpontban.';

  @override
  String get adLoading =>
      'Hirdetés betöltése folyamatban. Kérlek, próbáld újra később.';

  @override
  String get addNewSubject => 'Új név hozzáadása';

  @override
  String get addParticipant => 'Résztvevő hozzáadása';

  @override
  String get addTagHint => 'Címke hozzáadása...';

  @override
  String get alreadyHaveAccount => 'Már van fiókod?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Automatikus lejátszás';

  @override
  String get basic => 'Alap';

  @override
  String get basicDefault => 'Alapértelmezett';

  @override
  String get basicMaterialRepository => 'Alap mondat-/szógyűjtemény';

  @override
  String get basicSentenceRepository => 'Alapvető Mondattár';

  @override
  String get basicSentences => 'Alap mondatgyűjtemény';

  @override
  String get basicWordRepository => 'Alapvető Szótár';

  @override
  String get caseObject => 'Tárgyeset';

  @override
  String get casePossessive => 'Birtokos eset';

  @override
  String get casePossessivePronoun => 'Birtokos névmás';

  @override
  String get caseReflexive => 'Visszaható névmás';

  @override
  String get caseSubject => 'Alanyeset';

  @override
  String get chatAiChat => 'Csevegés';

  @override
  String get chatAllConversations => 'Összes beszélgetés';

  @override
  String get chatChoosePersona => 'Személyiség választása';

  @override
  String get chatEndMessage => 'Biztosan befejezed a beszélgetést?';

  @override
  String get chatEndTitle => 'Beszélgetés befejezése és mentése';

  @override
  String chatFailed(Object error) {
    return 'A csevegés sikertelen: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Beszélgetés részlete ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Beszélgetési előzmények';

  @override
  String get chatNew => 'Új beszélgetés';

  @override
  String get chatNewChat => 'Új beszélgetés';

  @override
  String get chatNoConversations => 'Még nincsenek beszélgetések';

  @override
  String get chatSaveAndExit => 'Mentés és kilépés';

  @override
  String get chatStartNewPrompt => 'Kezdj egy új beszélgetést a gyakorláshoz!';

  @override
  String get chatTypeHint => 'Írd be az üzenetet...';

  @override
  String get chatUntitled => 'Cím nélküli beszélgetés';

  @override
  String get checking => 'Ellenőrzés...';

  @override
  String get clearAll => 'Összes törlése';

  @override
  String get confirm => 'Megerősítés';

  @override
  String get confirmDelete => 'Biztosan törölni szeretné ezt a rekordot?';

  @override
  String get confirmDeleteConversation =>
      'Törli ezt a beszélgetést?\nA törölt beszélgetések nem állíthatók vissza.';

  @override
  String get confirmDeleteParticipant => 'Biztosan törlöd ezt a résztvevőt?';

  @override
  String get contextTagHint =>
      'Írd le a helyzetet, hogy később könnyebb legyen azonosítani.';

  @override
  String get contextTagLabel =>
      'Szövegkörnyezet/helyzet (opcionális) - pl.: Reggeli üdvözlés, Udvarias beszéd';

  @override
  String get copiedToClipboard => 'Vágólapra másolva!';

  @override
  String get copy => 'Másolás';

  @override
  String get correctAnswer => 'Helyes Válasz';

  @override
  String get createNew => 'Új Létrehozása';

  @override
  String get currentLocation => 'Jelenlegi hely';

  @override
  String get currentMaterialLabel => 'Jelenleg kiválasztott anyag:';

  @override
  String get delete => 'Törlés';

  @override
  String deleteFailed(String error) {
    return 'Törlés sikertelen: $error';
  }

  @override
  String get deleteRecord => 'Rekord törlése';

  @override
  String get dialogueQuestDesc =>
      'Gyakorold a beszélgetést helyzetekben. Válaszd ki a megfelelő választ, és mondd ki.';

  @override
  String get dialogueQuestTitle => 'Beszélgetés küldetés';

  @override
  String get disambiguationPrompt => 'Melyik jelentéssel fordítsam le?';

  @override
  String get disambiguationTitle => 'Jelentés kiválasztása';

  @override
  String get dontHaveAccount => 'Nincs még fiókod?';

  @override
  String get editParticipant => 'Résztvevő szerkesztése';

  @override
  String get email => 'E-mail';

  @override
  String get emailAlreadyInUse =>
      'Ez az e-mail cím már regisztrálva van. Jelentkezz be, vagy kérj jelszóemlékeztetőt.';

  @override
  String get enterNewSubjectName => 'Új név megadása';

  @override
  String get enterSentenceHint => 'Írj be egy mondatot...';

  @override
  String get enterTextHint => 'Írd be a lefordítandó szöveget';

  @override
  String get enterTextToTranslate => 'Írja be a szöveget a fordításhoz';

  @override
  String get enterWordHint => 'Írj be egy szót...';

  @override
  String get error => 'Hiba';

  @override
  String get errorHateSpeech => 'Gyűlöletbeszéd miatt nem lehet lefordítani.';

  @override
  String get errorOtherSafety =>
      'Az AI biztonsági irányelvei miatt a fordítás elutasítva.';

  @override
  String get errorProfanity => 'A trágárság miatt nem lehet lefordítani.';

  @override
  String get errorSelectCategory => 'Először válassz szót vagy mondatot!';

  @override
  String get errorSexualContent =>
      'Szexuális tartalom miatt nem lehet lefordítani.';

  @override
  String get errors => 'Hibák:';

  @override
  String get female => 'Nő';

  @override
  String get file => 'Fájl:';

  @override
  String get filterAll => 'Összes';

  @override
  String get flip => 'Fordít';

  @override
  String get formComparative => 'Középfok';

  @override
  String get formInfinitive => 'Főnévi igenév/Jelen idő';

  @override
  String get formPast => 'Múlt idő';

  @override
  String get formPastParticiple => 'Múlt idejű melléknévi igenév';

  @override
  String get formPlural => 'Többes szám';

  @override
  String get formPositive => 'Alapfok';

  @override
  String get formPresent => 'Jelen idő';

  @override
  String get formPresentParticiple => 'Folyamatos melléknévi igenév (-ing)';

  @override
  String get formSingular => 'Egyes szám';

  @override
  String get formSuperlative => 'Felsőfok';

  @override
  String get formThirdPersonSingular => 'Harmadik személy egyes szám';

  @override
  String get gameModeDesc =>
      'Válaszd ki a gyakorláshoz használni kívánt játék módot';

  @override
  String get gameModeTitle => 'Játék mód';

  @override
  String get gameOver => 'Játék vége';

  @override
  String get gender => 'Nem';

  @override
  String get labelFilterMaterial => 'Anyag';

  @override
  String get labelFilterTag => 'Címke';

  @override
  String get generalTags => 'Általános címkék';

  @override
  String get getMaterials => 'Anyagok beszerzése';

  @override
  String get good => 'Jó';

  @override
  String get googleContinue => 'Folytatás a Google-lal';

  @override
  String get helpDialogueImportDesc =>
      'Teljes beszélgetés-készletek importálása JSON fájlból.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => '3. Mód importhoz hozzon létre JSON-t:';

  @override
  String get helpJsonTypeDialogue => 'Beszélgetés (Dialógus)';

  @override
  String get helpJsonTypeSentence => 'Mondat (Sentence)';

  @override
  String get helpJsonTypeWord => 'Szó (Word)';

  @override
  String get helpMode1Desc =>
      'Kezdje el a nyelvtanulást a legintuitívabb módon a prémium 3D mikrofon és a nagyméretű billentyűzet ikon segítségével.';

  @override
  String get helpMode1Details =>
      '• Nyelvi beállítások: A kezdőképernyő tetején található nyelv gombbal ellenőrizheti az anyanyelvét és a tanult nyelvet, valamint módosíthatja a tanulási nyelvet.\n• Egyszerű bevitel: Azonnal beírhat a központi nagyméretű mikrofon és szövegablak segítségével.\n• Beállítások ellenőrzése: A bevitel befejezése után nyomja meg a jobb oldalon található kék pipa gombot. Megjelenik a részletes beállítások ablaka.\n• Részletes beállítások: A megjelenő párbeszédpanelen megadhatja a mentendő gyűjteményt, megjegyzéseket (jegyzeteket) és címkéket.\n• Fordítás most: A beállítások elvégzése után nyomja meg a zöld fordítás gombot, és a mesterséges intelligencia azonnal lefordítja.\n• Automatikus keresés: Valós időben felismeri és megjeleníti a hasonló meglévő fordításokat a bevitel során.\n• Hallgatás és mentés: A fordítás eredménye alatt található hangszóró ikonnal meghallgathatja a kiejtést, és a \'Adatok mentése\' gombbal hozzáadhatja a tanulási listához.';

  @override
  String get helpMode2Desc =>
      'Mentett mondatok áttekintése rejtett fordítással.';

  @override
  String get helpMode2Details =>
      '• Válaszd ki a tanulási anyagot: Használd a jobb felső sarokban található menüt (⋮) a \'Tanulási anyag kiválasztása\' vagy az \'Online anyagtár\' eléréséhez.\n• Kártya megfordítása: A \'Megjelenítés/Elrejtés\' segítségével ellenőrizheted a fordítást.\n• Hallgatás: A hangszóró ikonra kattintva lejátszhatod a kiejtést.\n• Tanulás befejezése: A pipa (V) jelzi, ha befejezted a tanulást.\n• Törlés: Hosszú kattintással (Long Click) törölheted a rekordokat.\n• Keresés és szűrés: Használd a keresősávot (valós idejű intelligens keresés), a címkéket és a kezdőbetű szűrőket.';

  @override
  String get helpMode3Desc =>
      'Hallgass meg egy mondatot, majd gyakorold a kiejtést utánmondással (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Kiválasztás: Válasszon csomagot\n• Időköz: [-] [+] várakozás (3mp-60mp)\n• Start/Stop: Munkamenet vezérlése\n• Beszéd: Hallgassa és ismételje\n• Pontszám: Pontosság (0-100)\n• Újra: Gomb ha a hang nem észlelhető';

  @override
  String get helpModeChatDesc =>
      'Gyakorold a valós beszélgetéseket egy AI személyiséggel.';

  @override
  String get helpModeChatDetails =>
      '• AI chat: Gyakorold a valós beszélgetéseket a személyiséggel a \'Chat\' menüben az alsó lapon\n• Személyiség beállítása: Szabadon megadhatod a másik fél nemét, nevét és nyelvkódját\n• GPS helyzetjáték: A jelenlegi helyzeted felismerése, hogy a helynek megfelelő beszélgetési témákat ajánljon\n• Kétnyelvű: Az AI válaszai fordítással együtt jelennek meg a maximális tanulási hatékonyság érdekében\n• Előzmények kezelése: A korábbi beszélgetések szűrése és a beszélgetés során a bizonyos üzenetek mentése tananyagként';

  @override
  String get helpTabJson => 'JSON Formátum';

  @override
  String get helpTabModes => 'Módok';

  @override
  String get helpTabTour => 'Túra';

  @override
  String get helpTitle => 'Segítség és Útmutató';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Elrejt';

  @override
  String importAdded(int count) {
    return 'Hozzáadva: $count';
  }

  @override
  String get importComplete => 'Import Kész';

  @override
  String get importDuplicateTitleError =>
      'Már létezik anyag ilyen címmel. Nevezd át, majd próbáld újra.';

  @override
  String importErrorMessage(String error) {
    return 'Fájl importálása sikertelen:\\n$error';
  }

  @override
  String get importFailed => 'Import Sikertelen';

  @override
  String importFile(String fileName) {
    return 'Fájl: $fileName';
  }

  @override
  String get importJsonFile => 'JSON Import';

  @override
  String get importJsonFilePrompt => 'Kérjük importáljon egy JSON fájlt';

  @override
  String importSkipped(int count) {
    return 'Kihagyva: $count';
  }

  @override
  String importTotal(int count) {
    return 'Összes: $count';
  }

  @override
  String get importing => 'Importálás...';

  @override
  String get inputModeTitle => 'Bevitel';

  @override
  String intervalSeconds(int seconds) {
    return 'Időköz: ${seconds}mp';
  }

  @override
  String get invalidEmail => 'Érvényes e-mail címet adj meg.';

  @override
  String get kakaoContinue => 'Folytatás a Kakao-val';

  @override
  String get labelLangCode => 'Nyelvkód (pl.: en-US, ko-KR)';

  @override
  String get labelName => 'Név';

  @override
  String get labelNote => 'Jegyzet';

  @override
  String get labelPOS => 'Szófaj';

  @override
  String get labelRole => 'Szerep';

  @override
  String get labelSentence => 'Mondat';

  @override
  String get labelSentenceCollection => 'Mondatgyűjtemény';

  @override
  String get labelSentenceType => 'Mondattípus';

  @override
  String get labelShowMemorized => 'Befejezett';

  @override
  String get labelType => 'Típus:';

  @override
  String get labelWord => 'Szó';

  @override
  String get labelWordbook => 'Szójegyzék';

  @override
  String get language => 'Nyelv';

  @override
  String get languageSettings => 'Nyelvi beállítások';

  @override
  String get languageSettingsTitle => 'Nyelvi beállítások';

  @override
  String get libTitleFirstMeeting => 'Első találkozás';

  @override
  String get libTitleGreetings1 => 'Köszönések 1';

  @override
  String get libTitleNouns1 => 'Főnevek 1';

  @override
  String get libTitleVerbs1 => 'Igék 1';

  @override
  String get listen => 'Hallgatás';

  @override
  String get listening => 'Hallgatás...';

  @override
  String get loadingParticipants => 'Résztvevők betöltése...';

  @override
  String get location => 'Helyszín';

  @override
  String get login => 'Bejelentkezés';

  @override
  String get logout => 'Kijelentkezés';

  @override
  String get logoutConfirmMessage =>
      'Biztosan kijelentkezel erről az eszközről?';

  @override
  String get logoutConfirmTitle => 'Kijelentkezés';

  @override
  String get male => 'Férfi';

  @override
  String get manageParticipants => 'Résztvevők kezelése';

  @override
  String get manual => 'Kézi bevitel';

  @override
  String get markAsStudied => 'Jelölés megtanultként';

  @override
  String get materialInfo => 'Anyaginformáció';

  @override
  String get me => 'Én';

  @override
  String get menuDeviceImport => 'Anyagok importálása az eszközről';

  @override
  String get menuHelp => 'Súgó';

  @override
  String get menuLanguageSettings => 'Nyelvi beállítások';

  @override
  String get menuOnlineLibrary => 'Online könyvtár';

  @override
  String get menuSelectMaterialSet => 'Válasszon egy tanulmányi anyagot';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Bemutató';

  @override
  String get menuWebDownload => 'Használati útmutató';

  @override
  String get metadataDialogTitle => 'Részletes besorolás';

  @override
  String get metadataFormType => 'Nyelvtani alak';

  @override
  String get metadataRootWord => 'Tő (Root Word)';

  @override
  String get micButtonTooltip => 'Hangfelismerés indítása';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Jelenleg kiválasztott anyag: $name';
  }

  @override
  String get mode2Title => 'Áttekintés';

  @override
  String get mode3Next => 'Következő';

  @override
  String get mode3Start => 'Indítás';

  @override
  String get mode3Stop => 'Leállítás';

  @override
  String get mode3TryAgain => 'Újra';

  @override
  String get mySentenceCollection => 'Mondatgyűjteményem';

  @override
  String get myWordbook => 'Szógyűjteményem';

  @override
  String get neutral => 'Semleges';

  @override
  String get newSubjectName => 'Új téma/mondatgyűjtemény neve';

  @override
  String get next => 'Következő';

  @override
  String get noDialogueHistory => 'Nincs beszélgetési előzmény.';

  @override
  String get noInternetWarningMic =>
      'Nincs internetkapcsolat. Offline állapotban a hangfelismerés nem biztos, hogy működik.';

  @override
  String get noInternetWarningTranslate =>
      'Nincs internetkapcsolat. Offline állapotban a fordítás nem érhető el. Használd az ismétlő módot.';

  @override
  String get noMaterialsInCategory => 'Ebben a kategóriában nincsenek anyagok.';

  @override
  String get noParticipantsFound => 'Nincsenek regisztrált résztvevők.';

  @override
  String get noRecords => 'Nincs rekord a választott nyelvhez';

  @override
  String get noStudyMaterial => 'Nincsenek tanulási anyagok.';

  @override
  String get noTextToPlay => 'Nincs lejátszható szöveg';

  @override
  String get noTranslationToSave => 'Nincs mentendő fordítás';

  @override
  String get noVoiceDetected => 'Hang nem észlelhető';

  @override
  String get notSelected => '- Nincs kiválasztva -';

  @override
  String get onlineLibraryCheckInternet =>
      'Ellenőrizd az internetkapcsolatot, vagy próbáld később újra.';

  @override
  String get onlineLibraryLoadFailed => 'Az anyagok betöltése sikertelen.';

  @override
  String get onlineLibraryNoMaterials => 'Nincsenek anyagok.';

  @override
  String get participantDeleted => 'A résztvevő törölve.';

  @override
  String get participantRename => 'Résztvevő átnevezése';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Partner mód';

  @override
  String get password => 'Jelszó';

  @override
  String get passwordTooShort =>
      'A jelszónak legalább 6 karakter hosszúnak kell lennie.';

  @override
  String get perfect => 'Tökéletes!';

  @override
  String get personaFriend => 'Helyi barát';

  @override
  String get personaGuide => 'Idegenvezető';

  @override
  String get personaTeacher => 'Angoltanár';

  @override
  String get playAgain => 'Újra játszom';

  @override
  String playbackFailed(String error) {
    return 'Lejátszás sikertelen: $error';
  }

  @override
  String get playing => 'Lejátszás...';

  @override
  String get posAdjective => 'Melléknév';

  @override
  String get posAdverb => 'Határozószó';

  @override
  String get posConjunction => 'Kötőszó';

  @override
  String get posInterjection => 'Felkiáltószó';

  @override
  String get posNoun => 'Főnév';

  @override
  String get posPreposition => 'Elöljárószó';

  @override
  String get posPronoun => 'Névmás';

  @override
  String get posVerb => 'Ige';

  @override
  String get practiceModeTitle => 'Gyakorlás';

  @override
  String get practiceWordsOnly => 'Csak szavak gyakorlása';

  @override
  String progress(int current, int total) {
    return 'Folyamat: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Legutóbb létrehozott $count db megtekintése';
  }

  @override
  String recognitionFailed(String error) {
    return 'Beszédfelismerés sikertelen: $error';
  }

  @override
  String get recognized => 'Felismerés kész';

  @override
  String get recognizedText => 'Felismert szöveg:';

  @override
  String get recordDeleted => 'Rekord sikeresen törölve';

  @override
  String get refresh => 'Frissítés';

  @override
  String get reset => 'Visszaállítás';

  @override
  String get resetPracticeHistory => 'Gyakorlási előzmények törlése';

  @override
  String get retry => 'Újrapróbálkozás?';

  @override
  String get reviewAll => 'Összes áttekintése';

  @override
  String reviewCount(int count) {
    return '$count alkalommal áttekintve';
  }

  @override
  String get reviewModeTitle => 'Áttekintés';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Harmadik fél';

  @override
  String get roleUser => 'Felhasználó';

  @override
  String get save => 'Mentés';

  @override
  String get saveData => 'Mentés';

  @override
  String saveFailed(String error) {
    return 'Mentés sikertelen: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Mentse a fordításokat a keresési módból';

  @override
  String get saved => 'Mentve';

  @override
  String get saving => 'Mentés...';

  @override
  String score(String score) {
    return 'Pontosság: $score%';
  }

  @override
  String get scoreLabel => 'Pontszám';

  @override
  String get search => 'Keresés';

  @override
  String get searchConditions => 'Keresési feltételek';

  @override
  String get searchSentenceHint => 'Mondat keresése...';

  @override
  String get searchWordHint => 'Szó keresése...';

  @override
  String get sectionSentence => 'Mondatszakasz';

  @override
  String get sectionSentences => 'Mondatok';

  @override
  String get sectionWord => 'Szószakasz';

  @override
  String get sectionWords => 'Szavak';

  @override
  String get selectExistingSubject => 'Meglévő téma kiválasztása';

  @override
  String get selectMaterialPrompt => 'Kérjük válasszon tanulási anyagot';

  @override
  String get selectMaterialSet => 'Tananyag kiválasztása';

  @override
  String get selectPOS => 'Szófaj kiválasztása';

  @override
  String get selectParticipants => 'Résztvevők kiválasztása';

  @override
  String get selectSentenceType => 'Mondatfajta kiválasztása';

  @override
  String get selectStudyMaterial => 'Anyag Kiválasztása';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Mondat';

  @override
  String get signUp => 'Regisztráció';

  @override
  String get similarTextFound => 'Hasonló szöveg található';

  @override
  String get skip => 'Kihagyás';

  @override
  String get source => 'Forrás:';

  @override
  String get sourceLanguage => 'Forrásnyelv';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Beszélj most!';

  @override
  String get speaker => 'Beszélő';

  @override
  String get speakerSelect => 'Beszélő kiválasztása';

  @override
  String get speakingPractice => 'Beszédgyakorlat';

  @override
  String get startChat => 'Beszélgetés indítása';

  @override
  String get startPractice => 'Gyakorlás Indítása';

  @override
  String get startTutorial => 'Túra Indítása';

  @override
  String get startWarning => 'Figyelem';

  @override
  String get startsWith => 'Kezdődik';

  @override
  String get statusCheckEmail =>
      'Kérjük, ellenőrizze az e-mail címét a hitelesítés befejezéséhez.';

  @override
  String statusDownloading(Object name) {
    return 'Letöltés: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Importálás sikertelen: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name importálása sikeres';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'A bejelentkezés megszakítva.';

  @override
  String statusLoginFailed(Object error) {
    return 'Sikertelen bejelentkezés: $error';
  }

  @override
  String get statusLoginSuccess => 'Sikeres bejelentkezés.';

  @override
  String get statusLogoutSuccess => 'Kijelentkezve.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Sikertelen regisztráció: $error';
  }

  @override
  String get statusSigningUp => 'Regisztráció folyamatban...';

  @override
  String get stopPractice => 'Leállítás';

  @override
  String get studyComplete => 'Megtanulva';

  @override
  String studyRecords(int count) {
    return 'Rekordok ($count)';
  }

  @override
  String get styleFormal => 'Magázó';

  @override
  String get styleInformal => 'Tegező';

  @override
  String get stylePolite => 'Udvarias';

  @override
  String get styleSlang => 'Szleng';

  @override
  String get subject => 'Tárgy:';

  @override
  String get swapLanguages => 'Nyelvcsere';

  @override
  String get switchToAi => 'Váltás AI módba';

  @override
  String get switchToPartner => 'Váltás Partner módba';

  @override
  String get syncingData => 'Adatok szinkronizálása...';

  @override
  String get tabConversation => 'Beszélgetés';

  @override
  String tabReview(int count) {
    return 'Áttekintés ($count)';
  }

  @override
  String get tabSentence => 'mondat';

  @override
  String get tabSpeaking => 'Beszéd';

  @override
  String tabStudyMaterial(int count) {
    return 'Anyagok ($count)';
  }

  @override
  String get tabWord => 'szó';

  @override
  String get tagFormal => 'Udvarias';

  @override
  String get tagSelection => 'Címke kiválasztása';

  @override
  String get targetLanguage => 'Célnyelv';

  @override
  String get targetLanguageFilter => 'Célnyelv szűrő:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'Ennyi időd van gondolkodni a válasz előtt.';

  @override
  String get thinkingTimeInterval => 'Gondolkodási idő';

  @override
  String get timeUp => 'Lejárt az idő!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Címke kiválasztása (adatlap)';

  @override
  String get tooltipDecrease => 'Csökkentés';

  @override
  String get tooltipIncrease => 'Növelés';

  @override
  String get tooltipSearch => 'Keresés';

  @override
  String get tooltipSpeaking => 'Beszéd';

  @override
  String get tooltipStudyReview => 'Tanulás+Ismétlés';

  @override
  String totalRecords(int count) {
    return 'Összesen $count bejegyzés (Összes megtekintése)';
  }

  @override
  String get translate => 'Fordítás';

  @override
  String get translating => 'Fordítás...';

  @override
  String get translation => 'Fordítás';

  @override
  String get translationComplete => 'Fordítás kész (mentés szükséges)';

  @override
  String translationFailed(String error) {
    return 'Fordítás sikertelen: $error';
  }

  @override
  String get translationLimitExceeded => 'Fordítási limit túllépve';

  @override
  String get translationLimitMessage =>
      'Elhasználtad az összes napi ingyenes fordítási lehetőséget (5 alkalom).\\n\\nSzeretnél megnézni egy hirdetést, hogy azonnal feltöltsd 5 alkalommal?';

  @override
  String get translationLoaded => 'Mentett fordítás betöltve';

  @override
  String get translationRefilled =>
      'A fordítási számláló feltöltve 5 alkalommal!';

  @override
  String get translationResultHint => 'Fordítás eredménye - szerkeszthető';

  @override
  String get tryAgain => 'Próbáld újra';

  @override
  String get tutorialAiChatDesc =>
      'Gyakorolj valós beszélgetéseket AI személyiségekkel.';

  @override
  String get tutorialAiChatTitle => 'AI csevegés';

  @override
  String get tutorialContextDesc =>
      'Adjon hozzá kontextust (pl. Reggel) a hasonló mondatok megkülönböztetéséhez.';

  @override
  String get tutorialContextTitle => 'Kontextus címke';

  @override
  String get tutorialLangSettingsDesc =>
      'Állítsd be a lefordítandó forrásnyelvet és a célnyelvet.';

  @override
  String get tutorialLangSettingsTitle => 'Nyelvi beállítások';

  @override
  String get tutorialM1ToggleDesc =>
      'Itt válthatsz a szó és a mondat mód között.';

  @override
  String get tutorialM1ToggleTitle => 'Szó/Mondat mód';

  @override
  String get tutorialM2DropdownDesc => 'Válasszon tananyagot.';

  @override
  String get tutorialM2ImportDesc =>
      'JSON fájl importálása az eszköz mappájából.';

  @override
  String get tutorialM2ListDesc =>
      'Ellenőrizze a kártyákat és fordítsa meg őket. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Tanulólista';

  @override
  String get tutorialM2SearchDesc =>
      'Gyorsan megtalálhatod a mentett szavakat és mondatokat kereséssel.';

  @override
  String get tutorialM2SelectDesc =>
      'Válasszon anyagot vagy \'Összes áttekintése\'.';

  @override
  String get tutorialM2SelectTitle => 'Kiválasztás és Szűrő';

  @override
  String get tutorialM3IntervalDesc => 'Állítsa be a mondatok közötti időt.';

  @override
  String get tutorialM3IntervalTitle => 'Időköz';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Válasszon készletet beszédgyakorláshoz.';

  @override
  String get tutorialM3SelectTitle => 'Anyag Kiválasztása';

  @override
  String get tutorialM3StartDesc => 'Nyomja meg a lejátszást az indításhoz.';

  @override
  String get tutorialM3StartTitle => 'Indítás';

  @override
  String get tutorialM3WordsDesc =>
      'Ha bejelölöd, csak a mentett szavakat gyakorlod.';

  @override
  String get tutorialM3WordsTitle => 'Szavak gyakorlása';

  @override
  String get tutorialMicDesc => 'Érintse meg a mikrofont a hangbemenethez.';

  @override
  String get tutorialMicTitle => 'Hangbemenet';

  @override
  String get tutorialSaveDesc => 'Mentse el a fordítást.';

  @override
  String get tutorialSaveTitle => 'Mentés';

  @override
  String get tutorialSwapDesc =>
      'Felcserélem a nyelvemet azzal a nyelvvel, amit tanulok.';

  @override
  String get tutorialTabDesc => 'Itt kiválaszthatja a kívánt tanulási módot.';

  @override
  String get tutorialTapToContinue => 'Érintse meg a folytatáshoz';

  @override
  String get tutorialTransDesc => 'Érintse meg ide a fordításhoz.';

  @override
  String get tutorialTransTitle => 'Fordítás';

  @override
  String get typeExclamation => 'Felkiáltó mondat';

  @override
  String get typeImperative => 'Felszólító mondat';

  @override
  String get typeQuestion => 'Kérdő mondat';

  @override
  String get typeStatement => 'Állító mondat';

  @override
  String get usageLimitTitle => 'Elérte a limitet';

  @override
  String get useExistingText => 'Meglévő Használata';

  @override
  String get viewOnlineGuide => 'Online útmutató megtekintése';

  @override
  String get voluntaryTranslations => 'Önkéntes fordítások';

  @override
  String get watchAdAndRefill =>
      'Hirdetés megtekintése és feltöltés (+5 alkalom)';

  @override
  String get word => 'Szó';

  @override
  String get wordDefenseDesc =>
      'Védd meg a bázisodat úgy, hogy kimondod a szavakat, mielőtt az ellenség odaérne.';

  @override
  String get wordDefenseTitle => 'Szó védelem';

  @override
  String get wordModeLabel => 'Szó mód';

  @override
  String get yourPronunciation => 'Kiejtésed';

  @override
  String get ttsUnsupportedNatively =>
      'Ez az eszköz alapértelmezés szerint nem támogatja a hangkimenetet ezen a nyelven.';

  @override
  String get homeTab => 'Kezdőlap';

  @override
  String get welcomeTitle => 'Üdvözöljük a Talkie-ban!';

  @override
  String get welcomeDesc =>
      'Üdvözöljük a Talkie-ban! Több mint 80 nyelvet támogatunk világszerte, 100%-os megbízhatósággal, új prémium 3D dizájnnal és optimalizált teljesítménnyel a tökéletes tanulási élményért.';

  @override
  String get welcomeButton => 'Kezdés';

  @override
  String get labelDetails => 'Részletes beállítások';

  @override
  String get translationResult => 'Fordítás eredménye';

  @override
  String get inputContent => 'Bevitt tartalom';

  @override
  String get translateNow => 'Fordítás most';

  @override
  String get tooltipSettingsConfirm => 'Beállítások megerősítése';

  @override
  String get hintNoteExample => 'Pl.: Kontextus, azonos hangzású szavak stb.';

  @override
  String get hintTagExample => 'Pl.: Üzleti, utazás...';

  @override
  String get addNew => 'Új hozzáadása';

  @override
  String get newNotebookTitle => 'Új jegyzetfüzet neve';

  @override
  String get enterNameHint => 'Adja meg a nevet';

  @override
  String get add => 'Hozzáadás';

  @override
  String get openSettings => 'Beállítások megnyitása';

  @override
  String get helpNotebook =>
      'Válaszd ki a mappát, ahová a fordításaid mentésre kerüljenek.';

  @override
  String get helpNote =>
      'Jegyezd fel a szavak jelentését, példamondatokat vagy egyéb hasznos információkat.';

  @override
  String get helpTag =>
      'Adj meg kulcsszavakat, amikkel később rendszerezheted vagy megkeresheted a jegyzeteket.';
}

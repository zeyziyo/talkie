// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'Pokračovať s Kakao';

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
  String get helpTitle => 'Pomocník a sprievodca';

  @override
  String get helpTabModes => 'Popis režimov';

  @override
  String get helpTabJson => 'Formát JSON';

  @override
  String get helpTabTour => 'Prehliadka';

  @override
  String get helpMode1Desc =>
      'Rozpoznáva a prekladá reč, výsledky si môžete vypočuť.';

  @override
  String get helpMode1Details =>
      '• Nastavenie jazyka: zmena jazyka stlačením ikon hore/dole\n• Prepínač slov/viet: prepínanie režimov\n• Hlasový vstup: spustenie/zastavenie počúvania stlačením ikony mikrofónu\n• Textový vstup: zadávanie textu priamo na preklad\n• Automatické vyhľadávanie: detekcia podobných existujúcich viet\n• Preklad: okamžitý preklad stlačením tlačidla prekladu\n• Počúvanie: prehrávanie TTS pomocou ikony reproduktora\n• Uloženie: pridanie záznamu pomocou \'Uložiť dáta\'\n• Vymazanie: inicializácia vstupu';

  @override
  String get helpMode2Desc =>
      'Zopakujte si uložené vety a skontrolujte si zapamätanie pomocou funkcie automatického skrytia.';

  @override
  String get helpMode2Details =>
      '• Výber materiálu: výber konkrétnej zbierky materiálov alebo \'Celé opakovanie\'\n• Otočenie karty: overenie prekladu pomocou \'Zobraziť/Skryť\' (automatická kontrola učenia)\n• Počúvanie: prehrávanie TTS vety\n• Učenie dokončené: spracovanie učenia ako dokončeného pomocou zaškrtnutia (V)\n• Odstránenie: odstránenie záznamu dlhým stlačením karty\n• Podmienky vyhľadávania: filtrovanie pomocou značiek, posledných položiek, počiatočných písmen';

  @override
  String get helpMode3Desc =>
      'Počúvajte a opakujte vety (shadowing) a precvičujte si výslovnosť.';

  @override
  String get helpMode3Details =>
      '• Výber materiálu: výber zbierky materiálov na učenie\n• Nastavenie intervalu: úprava čakacej doby medzi vetami pomocou tlačidiel [-] [+] (3 s ~ 60 s)\n• Spustenie/Zastavenie: ovládanie relácie shadowing\n• Rozprávanie: počúvanie a opakovanie reči\n• Spätná väzba: zobrazenie skóre presnosti (0-100) a farby\n• Podmienky vyhľadávania: filtrovanie cieľa cvičenia pomocou značiek, posledných položiek, počiatočných písmen';

  @override
  String get helpModeChatDesc =>
      'Precvičujte si konverzáciu v reálnom svete rozhovorom s AI osobnosťou.';

  @override
  String get helpModeChatDetails =>
      '• AI Chat: precvičujte si konverzáciu rozprávaním vo svojom jazyku\n• Viacero osôb: zmena pohlavia/jazyka/mena partnera pomocou ponuky nad bublinou\n• Pridanie partnera: pridanie nového partnera na konverzáciu (Neznámy) pomocou tlačidla +\n• GPS: situačná komédia založená na aktuálnej polohe\n• Automatické uloženie: automatický preklad a ukladanie obsahu konverzácie';

  @override
  String get helpJsonDesc =>
      'Ak chcete importovať učebné materiály, ktoré sa majú použiť v režime 3, ako súbor JSON, postupujte podľa tohto formátu:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'Importujte kompletnú sadu dialógov ako súbor JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• Štruktúra JSON: použitie poľa `dialogues` namiesto `entries`\n• Automatické obnovenie: názov dialógu, osoba, poradie správ sa obnovia.\n• Umiestnenie: importované dialógy sa zobrazia na karte \'História\' režimu AI chatu.';

  @override
  String get helpTourDesc =>
      '**Zvýraznený kruh** vás prevedie kľúčovými funkciami.\n(Napríklad: kartu označenú **zvýrazneným kruhom** môžete odstrániť dlhým stlačením.)';

  @override
  String get partnerMode => 'Režim partnera';

  @override
  String get manual => 'Manuálny vstup';

  @override
  String get speaker => 'Hovorca';

  @override
  String get switchToAi => 'Prepnúť do režimu AI';

  @override
  String get switchToPartner => 'Prepnúť do režimu partnera';

  @override
  String get currentLocation => 'Aktuálna poloha';

  @override
  String get location => 'Poloha';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Ja';

  @override
  String get currentMaterialLabel => 'Aktuálne vybraná zbierka materiálov:';

  @override
  String get basicMaterialRepository => 'Základné úložisko viet/slov';

  @override
  String get word => 'Slovo';

  @override
  String get sentence => 'Veta';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Opakovanie ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Učebné materiály ($count)';
  }

  @override
  String get mode2Title => 'Opakovanie';

  @override
  String get search => 'Hľadať';

  @override
  String get translate => 'Preložiť';

  @override
  String get listen => 'Počúvať';

  @override
  String get saveData => 'Uložiť dáta';

  @override
  String get saved => 'Uložené';

  @override
  String get delete => 'Odstrániť';

  @override
  String get materialInfo => 'Informácie o materiáli';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get confirm => 'Potvrdiť';

  @override
  String get refresh => 'Obnoviť';

  @override
  String studyRecords(int count) {
    return 'Záznamy o učení ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filter cieľového jazyka:';

  @override
  String get noRecords => 'Žiadne záznamy o učení vo vybranom jazyku';

  @override
  String get saveTranslationsFromSearch =>
      'Pokúste sa uložiť preklady z režimu vyhľadávania';

  @override
  String get flip => 'Zobraziť';

  @override
  String get hide => 'Skryť';

  @override
  String get deleteRecord => 'Odstrániť záznam';

  @override
  String get confirmDelete => 'Naozaj chcete odstrániť tento záznam o učení?';

  @override
  String get recordDeleted => 'Záznam odstránený';

  @override
  String deleteFailed(String error) {
    return 'Odstránenie zlyhalo: $error';
  }

  @override
  String get importJsonFile => 'Importovať súbor JSON';

  @override
  String get importing => 'Importuje sa...';

  @override
  String get importComplete => 'Import dokončený';

  @override
  String get importFailed => 'Import zlyhal';

  @override
  String importFile(String fileName) {
    return 'Súbor: $fileName';
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
    return 'Celkom: $count';
  }

  @override
  String importAdded(int count) {
    return 'Pridané: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Preskočené: $count';
  }

  @override
  String get errors => 'Chyby:';

  @override
  String get error => 'Chyba';

  @override
  String importErrorMessage(String error) {
    return 'Import súboru zlyhal:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get selectStudyMaterial => 'Vyberte učebné materiály';

  @override
  String get subject => 'Predmet:';

  @override
  String get source => 'Zdroj:';

  @override
  String get file => 'Súbor:';

  @override
  String progress(int current, int total) {
    return 'Priebeh: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Importujte súbor JSON';

  @override
  String get selectMaterialPrompt => 'Vyberte učebné materiály';

  @override
  String get studyComplete => 'Učenie dokončené';

  @override
  String get markAsStudied => 'Označiť ako preštudované';

  @override
  String get listening => 'Počúva sa...';

  @override
  String get recognized => 'Rozpoznané';

  @override
  String recognitionFailed(String error) {
    return 'Rozpoznávanie reči zlyhalo: $error';
  }

  @override
  String get checking => 'Kontroluje sa...';

  @override
  String get translating => 'Prekladá sa...';

  @override
  String get translationComplete => 'Preklad dokončený (potrebné uložiť)';

  @override
  String get translationLoaded => 'Uložený preklad načítaný';

  @override
  String translationFailed(String error) {
    return 'Preklad zlyhal: $error';
  }

  @override
  String get enterTextToTranslate => 'Zadajte text na preklad';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => 'Ukladá sa...';

  @override
  String get noTranslationToSave => 'Žiadny preklad na uloženie';

  @override
  String saveFailed(String error) {
    return 'Uloženie zlyhalo: $error';
  }

  @override
  String get playing => 'Prehráva sa...';

  @override
  String get noTextToPlay => 'Žiadny text na prehrávanie';

  @override
  String playbackFailed(String error) {
    return 'Prehrávanie zlyhalo: $error';
  }

  @override
  String get sourceLanguage => 'Zdrojový jazyk';

  @override
  String get targetLanguage => 'Cieľový jazyk';

  @override
  String get similarTextFound => 'Nájdený podobný text';

  @override
  String get useExistingText => 'Použiť existujúci text';

  @override
  String get createNew => 'Pokračovať s novou vetou';

  @override
  String reviewCount(int count) {
    return 'Opakovanie $count-krát';
  }

  @override
  String get tabSpeaking => 'Rozprávanie';

  @override
  String get speakingPractice => 'Precvičovanie rozprávania';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds s';
  }

  @override
  String get yourPronunciation => 'Vaša výslovnosť';

  @override
  String get correctAnswer => 'Správna odpoveď';

  @override
  String score(String score) {
    return 'Presnosť: $score%';
  }

  @override
  String get perfect => 'Perfektné!';

  @override
  String get good => 'Dobré';

  @override
  String get tryAgain => 'Skúste znova';

  @override
  String get startPractice => 'Začať cvičiť';

  @override
  String get stopPractice => 'Zastaviť cvičenie';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Spustiť tutoriál';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Hlasový vstup';

  @override
  String get tutorialMicDesc => 'Stlačením tlačidla mikrofónu zadáte hlasom.';

  @override
  String get tutorialTabDesc => 'Tu si môžete vybrať požadovaný režim učenia.';

  @override
  String get tutorialTapToContinue => 'Klepnutím na obrazovku pokračujte';

  @override
  String get tutorialTransTitle => 'Preložiť';

  @override
  String get tutorialTransDesc => 'Preloží zadaný text.';

  @override
  String get tutorialSaveTitle => 'Uložiť';

  @override
  String get tutorialSaveDesc =>
      'Uložte preložené výsledky do záznamu o učení.';

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
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Precvičte si konverzáciu v reálnom čase s AI osobou.';

  @override
  String get tutorialM2SelectTitle => 'Výber materiálu';

  @override
  String get tutorialM2SelectDesc =>
      'Stlačením ikony zbierky materiálov (📚) na hornom paneli aplikácie vyberte materiál na učenie.';

  @override
  String get tutorialM2ListTitle => 'Zoznam učenia';

  @override
  String get tutorialM2ListDesc =>
      'Túto kartu môžete odstrániť dlhým stlačením (dlhé kliknutie). Skontrolujte uloženú vetu a otočte ju.';

  @override
  String get tutorialM3SelectTitle => 'Výber materiálu';

  @override
  String get tutorialM3SelectDesc =>
      'Stlačením ikony zbierky materiálov (📚) na hornom paneli aplikácie vyberte materiál na precvičovanie.';

  @override
  String get tutorialM3IntervalTitle => 'Nastavenie intervalu';

  @override
  String get tutorialM3IntervalDesc => 'Upravte čakaciu dobu medzi vetami.';

  @override
  String get tutorialM3StartTitle => 'Začať cvičiť';

  @override
  String get tutorialM3StartDesc =>
      'Stlačením tlačidla prehrávania si vypočujte reč rodeného hovoriaceho a opakujte.';

  @override
  String get startWarning => 'Upozornenie';

  @override
  String get noVoiceDetected => 'Nezistil sa žiadny hlas';

  @override
  String get tooltipSearch => 'Hľadať';

  @override
  String get tooltipStudyReview => 'Učenie + Opakovanie';

  @override
  String get tooltipSpeaking => 'Rozprávanie';

  @override
  String get tooltipDecrease => 'Znížiť';

  @override
  String get tooltipIncrease => 'Zvýšiť';

  @override
  String get languageSettings => 'Nastavenia jazyka';

  @override
  String get tutorialM2DropdownDesc =>
      'Prostredníctvom hornej ponuky si môžete vybrať materiály na štúdium.';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc =>
      'Importuje súbor JSON z priečinka v zariadení.';

  @override
  String get tutorialLangSettingsTitle => 'Nastavenia jazyka';

  @override
  String get tutorialLangSettingsDesc =>
      'Nastavuje zdrojový a cieľový jazyk na preklad.';

  @override
  String get copy => 'Kopírovať';

  @override
  String get copiedToClipboard => 'Skopírované do schránky!';

  @override
  String get tutorialContextTitle => 'Situácia/kontextové značky';

  @override
  String get tutorialContextDesc =>
      'Ak si zapíšete situáciu (napr. ráno, večer) aj pre tú istú vetu, môžete si ju uložiť samostatne.';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get thinkingTimeDesc =>
      'Čas na premýšľanie pred odhalením správnej odpovede.';

  @override
  String get autoPlay => 'Automatické prehrávanie';

  @override
  String get timeUp => 'Čas vypršal!';

  @override
  String get gameModeTitle => 'Herný režim';

  @override
  String get gameModeDesc => 'Vyberte herný režim, ktorý chcete precvičovať';

  @override
  String get wordDefenseTitle => 'Slovná obrana';

  @override
  String get wordDefenseDesc =>
      'Bráňte základňu vyslovením slov predtým, ako dorazí nepriateľ.';

  @override
  String get dialogueQuestTitle => 'Dialógová úloha';

  @override
  String get dialogueQuestDesc =>
      'Precvičte si konverzáciu prostredníctvom situačných hier. Vyberte a vyslovte vhodné odpovede.';

  @override
  String get translation => 'Translation';

  @override
  String get labelType => 'Typ:';

  @override
  String get labelWord => 'Slovo';

  @override
  String get labelSentence => 'Veta';

  @override
  String get contextTagLabel =>
      'Kontext/Situácia (voliteľné) - Napr.: Ranný pozdrav, Formálne oslovenie';

  @override
  String get contextTagHint =>
      'Napíšte situáciu, aby ste ju neskôr ľahko rozlíšili';

  @override
  String get usageLimitTitle => 'Dosiahnutý limit';

  @override
  String get translationLimitExceeded => 'Prekročený limit prekladu';

  @override
  String get translationLimitMessage =>
      'Využili ste všetky bezplatné denné preklady (5-krát).\\n\\nChcete si okamžite dobiť 5 prekladov sledovaním reklamy?';

  @override
  String get watchAdAndRefill => 'Dobitie sledovaním reklamy (+5-krát)';

  @override
  String get translationRefilled => 'Počet prekladov bol dobitý 5-krát!';

  @override
  String get adLoading => 'Načítava sa reklama. Skúste to znova neskôr.';

  @override
  String get reviewAll => 'Celé opakovanie';

  @override
  String totalRecords(int count) {
    return 'Celkom $count záznamov (zobraziť všetky)';
  }

  @override
  String get filterAll => 'Všetky';

  @override
  String get practiceWordsOnly => 'Precvičovať iba slová';

  @override
  String get resetPracticeHistory => 'Obnoviť históriu cvičenia';

  @override
  String get retry => 'Skúsiť znova?';

  @override
  String get noStudyMaterial => 'Žiadne učebné materiály.';

  @override
  String get gameOver => 'Koniec hry';

  @override
  String get playAgain => 'Hrať znova';

  @override
  String get speakNow => 'Hovorte teraz!';

  @override
  String get scoreLabel => 'Skóre';

  @override
  String get viewOnlineGuide => 'Zobraziť online príručku';

  @override
  String get getMaterials => 'Získať materiály';

  @override
  String get swapLanguages => 'Prepnúť jazyky';

  @override
  String get next => 'Ďalej';

  @override
  String get wordModeLabel => 'Režim slov';

  @override
  String get accuracy => 'Presnosť';

  @override
  String get basicDefault => 'Základné';

  @override
  String get basic => 'Základné';

  @override
  String get tutorialM3WordsTitle => 'Cvičenie slov';

  @override
  String get tutorialM3WordsDesc =>
      'Ak to zaškrtnete, precvičia sa iba uložené slová.';

  @override
  String get enterTextHint => 'Zadajte text na preklad';

  @override
  String get micButtonTooltip => 'Spustiť rozpoznávanie reči';

  @override
  String get menuHelp => 'Pomocník';

  @override
  String get menuWebDownload => 'Webová stránka';

  @override
  String get menuDeviceImport => 'Importovať materiály zo zariadenia';

  @override
  String get menuSettings => 'Nastavenia jazyka';

  @override
  String get basicWords => 'Základné úložisko slov';

  @override
  String get basicSentences => 'Základné úložisko viet';

  @override
  String get selectMaterialSet => 'Vyberte zbierku učebných materiálov';

  @override
  String get sectionWords => 'Slová';

  @override
  String get sectionSentences => 'Vety';

  @override
  String get languageSettingsTitle => 'Nastavenia jazyka';

  @override
  String get sourceLanguageLabel => 'Môj jazyk (Source)';

  @override
  String get targetLanguageLabel => 'Jazyk učenia (Target)';

  @override
  String get mode3Start => 'Spustiť';

  @override
  String get mode3Stop => 'Zastaviť';

  @override
  String get mode3Next => 'Ďalej';

  @override
  String get mode3TryAgain => 'Skúsiť znova';

  @override
  String get tutorialM3ResetTitle => 'Obnovenie histórie';

  @override
  String get tutorialSwapDesc => 'Vzájomne prehodí môj jazyk a jazyk učenia.';

  @override
  String get recognizedText => 'Rozpoznaná výslovnosť:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Začnite od začiatku obnovením priebehu a skóre presnosti.';

  @override
  String get menuSelectMaterialSet => 'Vyberte zbierku učebných materiálov';

  @override
  String get sectionWord => 'Sekcia slov';

  @override
  String get sectionSentence => 'Sekcia viet';

  @override
  String get tabWord => 'Slovo';

  @override
  String get tabSentence => 'Veta';

  @override
  String get errorProfanity =>
      'Obsahuje vulgárne výrazy a nie je možné ho preložiť.';

  @override
  String get errorHateSpeech =>
      'Obsahuje nenávistné prejavy a nie je možné ho preložiť.';

  @override
  String get errorSexualContent =>
      'Obsahuje sexuálny obsah a nie je možné ho preložiť.';

  @override
  String get errorOtherSafety =>
      'Preklad bol odmietnutý z dôvodu zásad bezpečnosti AI.';

  @override
  String get clearAll => 'Vymazať všetko';

  @override
  String get disambiguationTitle => 'Vyberte význam';

  @override
  String get disambiguationPrompt => 'Aký význam chcete preložiť?';

  @override
  String get skip => 'Preskočiť';

  @override
  String get inputModeTitle => 'Vstup';

  @override
  String get reviewModeTitle => 'Opakovanie';

  @override
  String get practiceModeTitle => 'Cvičenie';

  @override
  String get chatHistoryTitle => 'História konverzácií';

  @override
  String get chatNew => 'Nová konverzácia';

  @override
  String get chatNewChat => 'Nová konverzácia';

  @override
  String get chatChoosePersona => 'Vyberte osobu';

  @override
  String get chatTypeHint => 'Zadajte správu...';

  @override
  String chatFailed(Object error) {
    return 'Rozhovor zlyhal: $error';
  }

  @override
  String get chatNoConversations => 'Zatiaľ žiadne konverzácie';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt => 'Začnite novú konverzáciu na precvičovanie!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Výňatok z konverzácie ($speaker)';
  }

  @override
  String get personaTeacher => 'Učiteľ angličtiny';

  @override
  String get personaGuide => 'Turistický sprievodca';

  @override
  String get personaFriend => 'Miestny priateľ';

  @override
  String get chatUntitled => 'Konverzácia bez názvu';

  @override
  String get chatAiChat => 'Chat';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Aktuálne vybraná zbierka materiálov: $name';
  }

  @override
  String get basicWordRepository => 'Základné úložisko slov';

  @override
  String get basicSentenceRepository => 'Základné úložisko viet';

  @override
  String get chatEndTitle => 'Ukončiť a uložiť konverzáciu';

  @override
  String get chatEndMessage => 'Chcete ukončiť konverzáciu?';

  @override
  String get chatSaveAndExit => 'Uložiť a ukončiť';

  @override
  String get errorSelectCategory => 'Najprv vyberte slovo alebo vetu!';

  @override
  String get tutorialM1ToggleTitle => 'Režim slova/vety';

  @override
  String get tutorialM1ToggleDesc => 'Prepínajte režim slova a vety tu.';

  @override
  String get metadataDialogTitle => 'Podrobná klasifikácia';

  @override
  String get tagFormal => 'Formálne oslovenie';

  @override
  String get selectPOS => 'Vyberte slovný druh';

  @override
  String get selectSentenceType => 'Vyberte typ vety';

  @override
  String get metadataRootWord => 'Základné slovo (Root Word)';

  @override
  String get posNoun => 'Podstatné meno';

  @override
  String get posVerb => 'Sloveso';

  @override
  String get posAdjective => 'Prídavné meno';

  @override
  String get posAdverb => 'Príslovka';

  @override
  String get posPronoun => 'Zámeno';

  @override
  String get posPreposition => 'Predložka';

  @override
  String get posConjunction => 'Spojka';

  @override
  String get posInterjection => 'Citoslovce';

  @override
  String get typeStatement => 'Oznámenie';

  @override
  String get typeQuestion => 'Otázka';

  @override
  String get typeExclamation => 'Výkrik';

  @override
  String get typeImperative => 'Rozkaz';

  @override
  String get labelNote => 'Poznámka';

  @override
  String get labelShowMemorized => 'Hotovo';

  @override
  String get titleTagSelection => 'Výber značky nadpisu (zošit)';

  @override
  String get generalTags => 'Všeobecné značky';

  @override
  String get tagSelection => 'Výber značky';

  @override
  String get metadataFormType => 'Gramatický tvar';

  @override
  String get formInfinitive => 'Infinitív/prítomný čas';

  @override
  String get formPast => 'Minulý čas';

  @override
  String get formPastParticiple => 'Minulé príčastie';

  @override
  String get formPresentParticiple => 'Prítomné príčastie (ing)';

  @override
  String get formPresent => 'Prítomný čas';

  @override
  String get formThirdPersonSingular => '3. osoba jednotného čísla';

  @override
  String get formPlural => 'Množné číslo';

  @override
  String get formSingular => 'Jednotné číslo';

  @override
  String get caseSubject => 'Nominatív';

  @override
  String get caseObject => 'Akuzatív';

  @override
  String get casePossessive => 'Genitív';

  @override
  String get casePossessivePronoun => 'Privlastňovacie zámeno';

  @override
  String get caseReflexive => 'Zvratné zámeno';

  @override
  String get formPositive => 'Pozitív';

  @override
  String get formComparative => 'Komparatív';

  @override
  String get formSuperlative => 'Superlatív';

  @override
  String get searchConditions => 'Podmienky vyhľadávania';

  @override
  String recentNItems(int count) {
    return 'Zobraziť posledných $count vytvorených';
  }

  @override
  String get startsWith => 'Začína na';

  @override
  String get reset => 'Obnoviť';

  @override
  String get participantRename => 'Premenovať účastníka';

  @override
  String get labelName => 'Meno';

  @override
  String get gender => 'Pohlavie';

  @override
  String get language => 'Jazyk';

  @override
  String get male => 'Muž';

  @override
  String get female => 'Žena';

  @override
  String get neutral => 'Neutrálny';

  @override
  String get chatAllConversations => 'Všetky konverzácie';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Naozaj chcete zmazať túto konverzáciu?\nZmazané konverzácie sa nedajú obnoviť.';

  @override
  String get notSelected => '- Nevybrané -';

  @override
  String get myWordbook => 'Moja slovná zásoba';

  @override
  String get mySentenceCollection => 'Moja zbierka viet';

  @override
  String get newSubjectName => 'Nový názov slovníka/zbierky viet';

  @override
  String get enterNewSubjectName => 'Zadajte nový názov';

  @override
  String get addNewSubject => 'Pridať nový názov';

  @override
  String get selectExistingSubject => 'Vybrať existujúci názov';

  @override
  String get addTagHint => 'Pridať tag...';

  @override
  String get save => 'Uložiť';

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
  String get statusCheckEmail => 'Overte si e-mail pre dokončenie overenia.';

  @override
  String get emailAlreadyInUse =>
      'Táto e-mailová adresa je už zaregistrovaná. Prihláste sa alebo použite možnosť obnovenia hesla.';
}

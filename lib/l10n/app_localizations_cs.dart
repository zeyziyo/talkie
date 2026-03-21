// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get basicWords => 'Základní úložiště slov';

  @override
  String get inputLanguage => 'Jazyk vstupu';

  @override
  String get translationLanguage => 'Jazyk překladu';

  @override
  String get simplifiedGuidance =>
      'Okamžitá konverze každodenních konverzací do cizího jazyka! Talkie zaznamenává váš jazykový život.';

  @override
  String get noDataForLanguage =>
      'Pro vybraný jazyk nejsou v lokální databázi žádné studijní materiály. Stáhněte si je nebo vyberte jiný jazyk.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Zrušit';

  @override
  String get accuracy => 'Přesnost';

  @override
  String get ttsMissing =>
      'Pro tento jazyk není v zařízení nainstalován hlasový modul.';

  @override
  String get ttsInstallGuide =>
      'Nainstalujte jazyková data v Nastavení Android > Google TTS.';

  @override
  String get adLoading => 'Načítání reklamy. Zkuste to prosím později.';

  @override
  String get addNewSubject => 'Přidat nový název';

  @override
  String get addParticipant => 'Přidat účastníka';

  @override
  String get addTagHint => 'Přidat štítek...';

  @override
  String get alreadyHaveAccount => 'Již máte účet?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Automatické přehrávání';

  @override
  String get basic => 'Základní';

  @override
  String get basicDefault => 'Základní';

  @override
  String get basicMaterialRepository => 'Základní úložiště vět/slov';

  @override
  String get basicSentenceRepository => 'Základní úložiště vět';

  @override
  String get basicSentences => 'Základní úložiště vět';

  @override
  String get basicWordRepository => 'Základní úložiště slov';

  @override
  String get caseObject => 'Akuzativ';

  @override
  String get casePossessive => 'Genitiv';

  @override
  String get casePossessivePronoun => 'Přivlastňovací zájmeno';

  @override
  String get caseReflexive => 'Zvratné zájmeno';

  @override
  String get caseSubject => 'Nominativ';

  @override
  String get chatAiChat => 'Chat';

  @override
  String get chatAllConversations => 'Všechny konverzace';

  @override
  String get chatChoosePersona => 'Vyberte personu';

  @override
  String get chatEndMessage => 'Chcete konverzaci ukončit?';

  @override
  String get chatEndTitle => 'Ukončit a uložit konverzaci';

  @override
  String chatFailed(Object error) {
    return 'Chat selhal: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Výňatek z konverzace ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Historie chatu';

  @override
  String get chatNew => 'Nový chat';

  @override
  String get chatNewChat => 'Nový chat';

  @override
  String get chatNoConversations => 'Zatím žádné konverzace';

  @override
  String get chatSaveAndExit => 'Uložit a ukončit';

  @override
  String get chatStartNewPrompt => 'Začněte nový dialog pro trénink!';

  @override
  String get chatTypeHint => 'Zadejte zprávu...';

  @override
  String get chatUntitled => 'Konverzace bez názvu';

  @override
  String get checking => 'Kontrola...';

  @override
  String get clearAll => '모두 지우기';

  @override
  String get confirm => 'Potvrdit';

  @override
  String get confirmDelete => 'Opravdu chcete smazat tento záznam?';

  @override
  String get confirmDeleteConversation =>
      'Opravdu chcete smazat tuto konverzaci?\nSmazané konverzace nelze obnovit.';

  @override
  String get confirmDeleteParticipant =>
      'Opravdu chcete tohoto účastníka smazat?';

  @override
  String get contextTagHint =>
      'Napište situaci pro snadnější rozlišení později';

  @override
  String get contextTagLabel =>
      'Kontext/Situace (volitelné) – např. Ranní pozdrav, Vykání';

  @override
  String get copiedToClipboard => 'Zkopírováno do schránky!';

  @override
  String get copy => 'Kopírovat';

  @override
  String get correctAnswer => 'Správná odpověď';

  @override
  String get createNew => 'Vytvořit nový';

  @override
  String get currentLocation => 'Aktuální poloha';

  @override
  String get currentMaterialLabel => 'Aktuálně vybraná sbírka materiálů:';

  @override
  String get delete => 'Smazat';

  @override
  String deleteFailed(String error) {
    return 'Chyba mazání: $error';
  }

  @override
  String get deleteRecord => 'Smazat záznam';

  @override
  String get dialogueQuestDesc =>
      'Procvičujte si konverzace hraním rolí. Vyberte a vyslovte vhodné odpovědi.';

  @override
  String get dialogueQuestTitle => 'Dialogová výprava';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get dontHaveAccount => 'Nemáte účet?';

  @override
  String get editParticipant => 'Upravit účastníka';

  @override
  String get email => 'E-mail';

  @override
  String get emailAlreadyInUse =>
      'Tato e-mailová adresa je již používána. Přihlaste se nebo si obnovte heslo.';

  @override
  String get enterNewSubjectName => 'Zadejte nový název';

  @override
  String get enterSentenceHint => 'Zadejte větu...';

  @override
  String get enterTextHint => 'Zadejte text k překladu';

  @override
  String get enterTextToTranslate => 'Zadejte text k překladu';

  @override
  String get enterWordHint => 'Zadejte slovo...';

  @override
  String get error => 'Chyba';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorSelectCategory => 'Nejprve vyberte slovo nebo větu!';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errors => 'Chyby:';

  @override
  String get female => 'Žena';

  @override
  String get file => 'Soubor:';

  @override
  String get filterAll => 'Vše';

  @override
  String get flip => 'Otočit';

  @override
  String get formComparative => 'Komparativ';

  @override
  String get formInfinitive => 'Infinitiv/Přítomný čas';

  @override
  String get formPast => 'Minulý čas';

  @override
  String get formPastParticiple => 'Minulé příčestí';

  @override
  String get formPlural => 'Množné číslo';

  @override
  String get formPositive => 'Pozitiv';

  @override
  String get formPresent => 'Přítomný čas';

  @override
  String get formPresentParticiple => 'Přítomné příčestí (-ing)';

  @override
  String get formSingular => 'Jednotné číslo';

  @override
  String get formSuperlative => 'Superlativ';

  @override
  String get formThirdPersonSingular => '3. osoba jednotného čísla';

  @override
  String get gameModeDesc => 'Vyberte si herní režim pro procvičování';

  @override
  String get gameModeTitle => 'Herní režim';

  @override
  String get gameOver => 'Konec hry';

  @override
  String get gender => 'Pohlaví';

  @override
  String get labelFilterMaterial => 'Materiály';

  @override
  String get labelFilterTag => 'Štítky';

  @override
  String get generalTags => 'Obecné štítky';

  @override
  String get getMaterials => 'Získat materiály';

  @override
  String get good => 'Dobré';

  @override
  String get googleContinue => 'Pokračovat s Googlem';

  @override
  String get helpDialogueImportDesc =>
      'Importujte celou sadu dialogů pomocí souboru JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'Pro import v Režimu 3 vytvořte JSON:';

  @override
  String get helpJsonTypeDialogue => 'Dialog';

  @override
  String get helpJsonTypeSentence => 'Věta';

  @override
  String get helpJsonTypeWord => 'Slovo';

  @override
  String get helpMode1Desc =>
      'Začněte se učit jazyky tím nejintuitivnějším způsobem s prémiovým 3D mikrofonem a ikonou velké klávesnice.';

  @override
  String get helpMode1Details =>
      '• Nastavení jazyka: Pomocí jazykového tlačítka v horní části domovské obrazovky zkontrolujte svůj jazyk a jazyk, který se učíte, a změňte jazyk učení.\n• Jednoduché zadávání: Okamžitě zadejte text pomocí velkého mikrofonu a textového okna uprostřed.\n• Zkontrolovat nastavení: Po dokončení zadávání stiskněte modré tlačítko zaškrtnutí vpravo. Zobrazí se okno podrobného nastavení.\n• Podrobné nastavení: V zobrazeném dialogovém okně můžete určit sbírku dat, poznámky (poznámky) a značky, které chcete uložit.\n• Přeložit nyní: Po dokončení nastavení stiskněte zelené tlačítko překladu a umělá inteligence okamžitě provede překlad.\n• Automatické vyhledávání: Během psaní detekuje a zobrazuje podobné existující překlady v reálném čase.\n• Poslech a uložení: Poslechněte si výslovnost pomocí ikony reproduktoru ve spodní části výsledku překladu a přidejte jej do seznamu učení pomocí možnosti „Uložit data“.';

  @override
  String get helpMode2Desc => 'Opakování uložených vět se skrytým překladem.';

  @override
  String get helpMode2Details =>
      '• Výběr sady: V nabídce (⋮) vpravo nahoře zvolte \'Vybrat sadu\' nebo \'Online knihovna\'\n• Otočení karty: Klepnutím na \'Zobrazit/Skrýt\' zobrazíte překlad\n• Přehrávání: Klepnutím na ikonu reproduktoru přehrajete výslovnost\n• Dokončení studia: Zaškrtnutím (V) označíte jako dokončené\n• Smazání: Dlouhým podržením karty smažete záznam\n• Hledání a filtrování: Podpora vyhledávacího pole (inteligentní vyhledávání v reálném čase) a filtrů štítků a počátečních písmen';

  @override
  String get helpMode3Desc =>
      'Poslouchejte větu a opakujte ji (stínování) a procvičujte výslovnost.';

  @override
  String get helpMode3Details =>
      '• Výběr: Zvolte balíček\n• Interval: [-] [+] prodleva (3s-60s)\n• Start/Stop: Ovládání relace\n• Mluvit: Poslouchejte a opakujte\n• Skóre: Přesnost (0-100)\n• Znovu: Tlačítko opakování při nerozpoznání';

  @override
  String get helpModeChatDesc => 'Procvičujte si konverzaci s AI postavou.';

  @override
  String get helpModeChatDetails =>
      '• AI Chat: Procvičujte si praktické konverzace s personou v nabídce \'Chat\' na spodní liště karet\n• Nastavení persony: Volně zadejte pohlaví, jméno a jazykový kód druhé strany\n• GPS situační hra: Doporučuje témata konverzace, která jsou vhodná pro dané místo, rozpoznáním vaší aktuální polohy\n• Dva jazyky: Odpověď AI se zobrazuje s překladem, čímž se maximalizuje efekt učení\n• Správa záznamů: Filtrování minulých konverzací a ukládání konkrétních zpráv z konverzace jako studijních materiálů';

  @override
  String get helpTabJson => 'Formát JSON';

  @override
  String get helpTabModes => 'Režimy';

  @override
  String get helpTabTour => 'Prohlídka';

  @override
  String get helpTitle => 'Nápověda a Průvodce';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Skrýt';

  @override
  String importAdded(int count) {
    return 'Přidáno: $count';
  }

  @override
  String get importComplete => 'Import dokončen';

  @override
  String get importDuplicateTitleError =>
      'Materiál se stejným názvem již existuje. Změňte název a zkuste to znovu.';

  @override
  String importErrorMessage(String error) {
    return 'Nelze importovat soubor:\\n$error';
  }

  @override
  String get importFailed => 'Import selhal';

  @override
  String importFile(String fileName) {
    return 'Soubor: $fileName';
  }

  @override
  String get importJsonFile => 'Import JSON';

  @override
  String get importJsonFilePrompt => 'Prosím importujte soubor JSON';

  @override
  String importSkipped(int count) {
    return 'Přeskočeno: $count';
  }

  @override
  String importTotal(int count) {
    return 'Celkem: $count';
  }

  @override
  String get importing => 'Importování...';

  @override
  String get inputModeTitle => '입력';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds sekund';
  }

  @override
  String get invalidEmail => 'Zadejte platný e-mail.';

  @override
  String get kakaoContinue => 'Pokračovat přes Kakao';

  @override
  String get labelLangCode => 'Kód jazyka (např. en-US, ko-KR)';

  @override
  String get labelName => 'Jméno';

  @override
  String get labelNote => 'Poznámka';

  @override
  String get labelPOS => 'Slovní druh';

  @override
  String get labelRole => 'Role';

  @override
  String get labelSentence => 'Věta';

  @override
  String get labelSentenceCollection => 'Sbírka vět';

  @override
  String get labelSentenceType => 'Typ věty';

  @override
  String get labelShowMemorized => 'Hotovo';

  @override
  String get labelType => 'Typ:';

  @override
  String get labelWord => 'Slovo';

  @override
  String get labelWordbook => 'Slovníček';

  @override
  String get language => 'Jazyk';

  @override
  String get languageSettings => 'Nastavení jazyka';

  @override
  String get languageSettingsTitle => 'Nastavení jazyka';

  @override
  String get libTitleFirstMeeting => 'První setkání';

  @override
  String get libTitleGreetings1 => 'Pozdravy 1';

  @override
  String get libTitleNouns1 => 'Podstatná jména 1';

  @override
  String get libTitleVerbs1 => 'Slovesa 1';

  @override
  String get listen => 'Poslouchat';

  @override
  String get listening => 'Poslouchám...';

  @override
  String get loadingParticipants => 'Načítání účastníků...';

  @override
  String get location => 'Poloha';

  @override
  String get login => 'Přihlásit se';

  @override
  String get logout => 'Odhlásit se';

  @override
  String get logoutConfirmMessage => 'Chcete se odhlásit z tohoto zařízení?';

  @override
  String get logoutConfirmTitle => 'Odhlásit se';

  @override
  String get male => 'Muž';

  @override
  String get manageParticipants => 'Správa účastníků';

  @override
  String get manual => 'Ruční zadání';

  @override
  String get markAsStudied => 'Označit jako nastudované';

  @override
  String get materialInfo => 'Informace o materiálu';

  @override
  String get me => 'Já';

  @override
  String get menuDeviceImport => 'Importovat materiály ze zařízení';

  @override
  String get menuHelp => 'Nápověda';

  @override
  String get menuLanguageSettings => 'Nastavení jazyka';

  @override
  String get menuOnlineLibrary => 'Online knihovna';

  @override
  String get menuSelectMaterialSet => 'Vyberte studijní materiál';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Průvodce používáním';

  @override
  String get menuWebDownload => 'Uživatelská příručka';

  @override
  String get metadataDialogTitle => 'Podrobná klasifikace';

  @override
  String get metadataFormType => 'Gramatický tvar';

  @override
  String get metadataRootWord => 'Kořenové slovo';

  @override
  String get micButtonTooltip => 'Spustit rozpoznávání hlasu';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Aktuálně vybraná sada materiálů: $name';
  }

  @override
  String get mode2Title => 'Opakování';

  @override
  String get mode3Next => 'Další';

  @override
  String get mode3Start => 'Začít';

  @override
  String get mode3Stop => 'Konec';

  @override
  String get mode3TryAgain => 'Zkusit znovu';

  @override
  String get mySentenceCollection => 'Moje sbírka vět';

  @override
  String get myWordbook => 'Moje slovní zásoba';

  @override
  String get neutral => 'Neutrální';

  @override
  String get newSubjectName => 'Nový název sbírky';

  @override
  String get next => 'Další';

  @override
  String get noDialogueHistory => 'Žádná historie dialogů.';

  @override
  String get noInternetWarningMic =>
      'Není připojení k internetu. Rozpoznávání hlasu nemusí být v offline režimu dostupné.';

  @override
  String get noInternetWarningTranslate =>
      'Není připojení k internetu. Překlad není v offline režimu dostupný. Použijte režim opakování.';

  @override
  String get noMaterialsInCategory =>
      'V této kategorii nejsou žádné materiály.';

  @override
  String get noParticipantsFound => 'Žádní registrovaní účastníci.';

  @override
  String get noRecords => 'Žádné záznamy pro vybraný jazyk';

  @override
  String get noStudyMaterial => 'Žádný studijní materiál.';

  @override
  String get noTextToPlay => 'Žádný text k přehrání';

  @override
  String get noTranslationToSave => 'Žádný překlad k uložení';

  @override
  String get noVoiceDetected => 'Hlas nerozpoznán';

  @override
  String get notSelected => '- Nevybráno -';

  @override
  String get onlineLibraryCheckInternet =>
      'Zkontrolujte připojení k internetu nebo to zkuste později.';

  @override
  String get onlineLibraryLoadFailed => 'Nepodařilo se načíst materiály.';

  @override
  String get onlineLibraryNoMaterials => 'Žádné materiály.';

  @override
  String get participantDeleted => 'Účastník byl smazán.';

  @override
  String get participantRename => 'Přejmenovat účastníka';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Režim partnera';

  @override
  String get password => 'Heslo';

  @override
  String get passwordTooShort => 'Heslo musí mít alespoň 6 znaků.';

  @override
  String get perfect => 'Perfektní!';

  @override
  String get personaFriend => 'Místní přítel';

  @override
  String get personaGuide => 'Turistický průvodce';

  @override
  String get personaTeacher => 'Učitel angličtiny';

  @override
  String get playAgain => 'Hrát znovu';

  @override
  String playbackFailed(String error) {
    return 'Přehrávání selhalo: $error';
  }

  @override
  String get playing => 'Přehrávání...';

  @override
  String get posAdjective => 'Přídavné jméno';

  @override
  String get posAdverb => 'Příslovce';

  @override
  String get posConjunction => 'Spojka';

  @override
  String get posInterjection => 'Citoslovce';

  @override
  String get posNoun => 'Podstatné jméno';

  @override
  String get posPreposition => 'Předložka';

  @override
  String get posPronoun => 'Zájmeno';

  @override
  String get posVerb => 'Sloveso';

  @override
  String get practiceModeTitle => 'Cvičení';

  @override
  String get practiceWordsOnly => 'Procvičovat pouze slova';

  @override
  String progress(int current, int total) {
    return 'Postup: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Zobrazit posledních $count položek';
  }

  @override
  String recognitionFailed(String error) {
    return 'Rozpoznávání řeči selhalo: $error';
  }

  @override
  String get recognized => 'Rozpoznávání dokončeno';

  @override
  String get recognizedText => 'Rozpoznaný text:';

  @override
  String get recordDeleted => 'Záznam úspěšně smazán';

  @override
  String get refresh => 'Obnovit';

  @override
  String get reset => 'Resetovat';

  @override
  String get resetPracticeHistory => 'Resetovat historii procvičování';

  @override
  String get retry => 'Zkusit znovu?';

  @override
  String get reviewAll => 'Zopakovat vše';

  @override
  String reviewCount(int count) {
    return 'Opakováno $count krát';
  }

  @override
  String get reviewModeTitle => '복습';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Třetí strana';

  @override
  String get roleUser => 'Uživatel';

  @override
  String get save => 'Uložit';

  @override
  String get saveData => 'Uložit';

  @override
  String saveFailed(String error) {
    return 'Ukládání selhalo: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Uložte překlady z režimu vyhledávání';

  @override
  String get saved => 'Uloženo';

  @override
  String get saving => 'Ukládání...';

  @override
  String score(String score) {
    return 'Přesnost: $score%';
  }

  @override
  String get scoreLabel => 'Skóre';

  @override
  String get search => 'Hledat';

  @override
  String get searchConditions => 'Podmínky vyhledávání';

  @override
  String get searchSentenceHint => 'Hledat větu...';

  @override
  String get searchWordHint => 'Hledat slovo...';

  @override
  String get sectionSentence => 'Sekce věty';

  @override
  String get sectionSentences => '문장';

  @override
  String get sectionWord => 'Sekce slov';

  @override
  String get sectionWords => '단어';

  @override
  String get selectExistingSubject => 'Vybrat existující název';

  @override
  String get selectMaterialPrompt => 'Prosím vyberte studijní materiál';

  @override
  String get selectMaterialSet => '학습 자료집 선택';

  @override
  String get selectPOS => 'Vyberte slovní druh';

  @override
  String get selectParticipants => 'Vyberte účastníky';

  @override
  String get selectSentenceType => 'Vyberte typ věty';

  @override
  String get selectStudyMaterial => 'Vybrat materiál';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Věta';

  @override
  String get signUp => 'Zaregistrovat se';

  @override
  String get similarTextFound => 'Nalezen podobný text';

  @override
  String get skip => '건너뛰기';

  @override
  String get source => 'Zdroj:';

  @override
  String get sourceLanguage => 'Zdrojový jazyk';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Mluvte nyní!';

  @override
  String get speaker => 'Mluvčí';

  @override
  String get speakerSelect => 'Vyberte mluvčího';

  @override
  String get speakingPractice => 'Procvičování mluvení';

  @override
  String get startChat => 'Začít chat';

  @override
  String get startPractice => 'Začít cvičit';

  @override
  String get startTutorial => 'Spustit prohlídku';

  @override
  String get startWarning => 'Varování';

  @override
  String get startsWith => 'Začíná na';

  @override
  String get statusCheckEmail =>
      'Ověřte prosím svou e-mailovou adresu, abyste dokončili ověření.';

  @override
  String statusDownloading(Object name) {
    return 'Stahování: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Import selhal: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name importováno';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Přihlášení bylo zrušeno.';

  @override
  String statusLoginFailed(Object error) {
    return 'Přihlášení selhalo: $error';
  }

  @override
  String get statusLoginSuccess => 'Přihlášení proběhlo úspěšně.';

  @override
  String get statusLogoutSuccess => 'Odhlášení proběhlo úspěšně.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Registrace selhala: $error';
  }

  @override
  String get statusSigningUp => 'Probíhá registrace...';

  @override
  String get stopPractice => 'Zastavit';

  @override
  String get studyComplete => 'Nastudováno';

  @override
  String studyRecords(int count) {
    return 'Záznamy ($count)';
  }

  @override
  String get styleFormal => 'Vykání';

  @override
  String get styleInformal => 'Tykaní';

  @override
  String get stylePolite => 'Zdvořilé';

  @override
  String get styleSlang => 'Slang/Hovorové výrazy';

  @override
  String get subject => 'Předmět:';

  @override
  String get swapLanguages => 'Prohodit jazyky';

  @override
  String get switchToAi => 'Přepnout do režimu AI';

  @override
  String get switchToPartner => 'Přepnout do režimu partnera';

  @override
  String get syncingData => 'Synchronizace dat...';

  @override
  String get tabConversation => 'Konverzace';

  @override
  String tabReview(int count) {
    return 'Opakování ($count)';
  }

  @override
  String get tabSentence => 'věta';

  @override
  String get tabSpeaking => 'Mluvení';

  @override
  String tabStudyMaterial(int count) {
    return 'Materiály ($count)';
  }

  @override
  String get tabWord => 'slovo';

  @override
  String get tagFormal => 'Formální';

  @override
  String get tagSelection => 'Výběr štítku';

  @override
  String get targetLanguage => 'Cílový jazyk';

  @override
  String get targetLanguageFilter => 'Filtr jazyka:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Čas na rozmyšlenou před zobrazením správné odpovědi.';

  @override
  String get thinkingTimeInterval => 'Doba na rozmyšlenou';

  @override
  String get timeUp => 'Čas vypršel!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Štítky názvu (sbírka)';

  @override
  String get tooltipDecrease => 'Snížit';

  @override
  String get tooltipIncrease => 'Zvýšit';

  @override
  String get tooltipSearch => 'Hledat';

  @override
  String get tooltipSpeaking => 'Mluvení';

  @override
  String get tooltipStudyReview => 'Studium+Opakování';

  @override
  String totalRecords(int count) {
    return 'Celkem $count záznamů (Zobrazit vše)';
  }

  @override
  String get translate => 'Přeložit';

  @override
  String get translating => 'Překládám...';

  @override
  String get translation => 'Překlad';

  @override
  String get translationComplete => 'Překlad dokončen (nutné uložit)';

  @override
  String translationFailed(String error) {
    return 'Překlad selhal: $error';
  }

  @override
  String get translationLimitExceeded => 'Překročen limit překladů';

  @override
  String get translationLimitMessage =>
      'Vyčerpali jste svůj denní limit bezplatných překladů (5).\\n\\nChcete se podívat na reklamu a okamžitě si dobít 5 překladů?';

  @override
  String get translationLoaded => 'Načten uložený překlad';

  @override
  String get translationRefilled => 'Počet překladů dobit o 5!';

  @override
  String get translationResultHint => 'Výsledek překladu - lze upravit';

  @override
  String get tryAgain => 'Zkusit znovu';

  @override
  String get tutorialAiChatDesc => 'Procvičujte si konverzace s AI personou.';

  @override
  String get tutorialAiChatTitle => 'AI Chat – Nápověda';

  @override
  String get tutorialContextDesc =>
      'Přidejte kontext (např. Ráno) pro rozlišení podobných vět.';

  @override
  String get tutorialContextTitle => 'Kontextový štítek';

  @override
  String get tutorialLangSettingsDesc =>
      'Nastavte zdrojový a cílový jazyk pro překlad.';

  @override
  String get tutorialLangSettingsTitle => 'Nastavení jazyka';

  @override
  String get tutorialM1ToggleDesc => 'Přepínejte mezi režimem slov a vět zde.';

  @override
  String get tutorialM1ToggleTitle => 'Režim slova/věty';

  @override
  String get tutorialM2DropdownDesc => 'Vyberte studijní materiály.';

  @override
  String get tutorialM2ImportDesc =>
      'Importovat soubor JSON ze složky zařízení.';

  @override
  String get tutorialM2ListDesc =>
      'Prohlížejte karty a otáčejte je. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Seznam';

  @override
  String get tutorialM2SearchDesc => 'Rychle vyhledejte uložená slova a věty.';

  @override
  String get tutorialM2SelectDesc => 'Vyberte materiály nebo \'Opakovat vše\'.';

  @override
  String get tutorialM2SelectTitle => 'Výběr a Filtr';

  @override
  String get tutorialM3IntervalDesc => 'Nastavte čas mezi větami.';

  @override
  String get tutorialM3IntervalTitle => 'Nastavení intervalu';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Vyberte sadu pro mluvení.';

  @override
  String get tutorialM3SelectTitle => 'Výběr materiálu';

  @override
  String get tutorialM3StartDesc => 'Klepněte na Play pro start.';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3WordsDesc =>
      'Pokud je zaškrtnuto, procvičují se pouze uložená slova.';

  @override
  String get tutorialM3WordsTitle => 'Procvičování slov';

  @override
  String get tutorialMicDesc => 'Klepněte na mikrofon pro hlasový vstup.';

  @override
  String get tutorialMicTitle => 'Hlasový vstup';

  @override
  String get tutorialSaveDesc => 'Uložte překlad do záznamů.';

  @override
  String get tutorialSaveTitle => 'Uložit';

  @override
  String get tutorialSwapDesc => 'Vyměňuji si jazyk s jazykem, který se učím.';

  @override
  String get tutorialTabDesc => 'Zde můžete vybrat požadovaný režim učení.';

  @override
  String get tutorialTapToContinue => 'Klepněte pro pokračování';

  @override
  String get tutorialTransDesc => 'Klepněte zde pro překlad.';

  @override
  String get tutorialTransTitle => 'Překlad';

  @override
  String get typeExclamation => 'Vzrušující věta';

  @override
  String get typeImperative => 'Rozkazovací věta';

  @override
  String get typeQuestion => 'Otázka';

  @override
  String get typeStatement => 'Oznamovací věta';

  @override
  String get usageLimitTitle => 'Limit vyčerpán';

  @override
  String get useExistingText => 'Použít existující';

  @override
  String get viewOnlineGuide => 'Zobrazit online průvodce';

  @override
  String get voluntaryTranslations => 'Dobrovolné překlady';

  @override
  String get watchAdAndRefill => 'Dobít pomocí reklamy (+5)';

  @override
  String get word => 'Slovo';

  @override
  String get wordDefenseDesc =>
      'Braňte základnu vyslovováním slov, než dorazí nepřátelé.';

  @override
  String get wordDefenseTitle => 'Slovní obrana';

  @override
  String get wordModeLabel => 'Režim slov';

  @override
  String get yourPronunciation => 'Vaše výslovnost';

  @override
  String get ttsUnsupportedNatively =>
      'Tento jazyk není nativně podporován pro převod textu na řeč na tomto zařízení.';

  @override
  String get homeTab => 'Domů';

  @override
  String get welcomeTitle => 'Vítejte v Talkie!';

  @override
  String get welcomeDesc =>
      'Vítejte v Talkie! Podporujeme více než 80 jazyků z celého světa se 100% integritou. Nový prémiový 3D design a optimalizovaný výkon vám přinášejí dokonalý zážitek z učení.';

  @override
  String get welcomeButton => 'Začít';

  @override
  String get labelDetails => 'Podrobné nastavení';

  @override
  String get translationResult => 'Výsledek překladu';

  @override
  String get inputContent => 'Vstupní obsah';

  @override
  String get translateNow => 'Přeložit nyní';

  @override
  String get tooltipSettingsConfirm => 'Potvrdit nastavení';

  @override
  String get hintNoteExample => 'Např.: kontext, homonyma atd.';

  @override
  String get hintTagExample => 'Např.: podnikání, cestování...';

  @override
  String get addNew => 'Přidat nový';

  @override
  String get newNotebookTitle => 'Název nového zápisníku';

  @override
  String get enterNameHint => 'Zadejte jméno';

  @override
  String get add => 'Přidat';

  @override
  String get openSettings => 'Otevřít nastavení';

  @override
  String get helpNotebook =>
      'Vyberte složku, kam chcete uložit přeložené výsledky.';

  @override
  String get helpNote =>
      'Libovolně si zapisujte významy slov, příklady nebo situace.';

  @override
  String get helpTag =>
      'Zadejte klíčová slova pro pozdější kategorizaci nebo vyhledávání.';

  @override
  String get requestTranslation => 'Požádat o překlad';

  @override
  String get statusRequestSuccess => 'Žádost o překlad byla úspěšně odeslána.';

  @override
  String statusRequestFailed(String error) {
    return 'Žádost o překlad selhala: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Nepodporovaný jazyk výuky';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Vybraný materiál nepodporuje aktuální jazyk výuky ($targetLang), takže jej nelze uložit lokálně. Chcete požádat o překlad?';
  }
}

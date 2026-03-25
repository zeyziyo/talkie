// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get basicWords => 'Základné úložisko slov';

  @override
  String get inputLanguage => 'Vstupný jazyk';

  @override
  String get translationLanguage => 'Jazyk prekladu';

  @override
  String get simplifiedGuidance =>
      'Okamžitá konverzia každodenných rozhovorov do cudzích jazykov! Talkie zaznamenáva váš jazykový život.';

  @override
  String get noDataForLanguage =>
      'Pre zvolený jazyk nie sú v lokálnej DB žiadne učebné materiály. Stiahnite si materiály alebo vyberte iný jazyk.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get accuracy => 'Presnosť';

  @override
  String get ttsMissing =>
      'Hlasový engine pre tento jazyk nie je nainštalovaný vo vašom zariadení.';

  @override
  String get ttsInstallGuide =>
      'Nainštalujte jazykové dáta v Nastavenia Android > Google TTS.';

  @override
  String get adLoading => 'Načítava sa reklama. Skúste to znova neskôr.';

  @override
  String get addNewSubject => 'Pridať nový názov';

  @override
  String get addParticipant => 'Pridať účastníka';

  @override
  String get addTagHint => 'Pridať tag...';

  @override
  String get alreadyHaveAccount => 'Už máte účet?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Automatické prehrávanie';

  @override
  String get basic => 'Základné';

  @override
  String get basicDefault => 'Základné';

  @override
  String get basicMaterialRepository => 'Základné úložisko viet/slov';

  @override
  String get basicSentenceRepository => 'Základné úložisko viet';

  @override
  String get basicSentences => 'Základné úložisko viet';

  @override
  String get basicWordRepository => 'Základné úložisko slov';

  @override
  String get caseObject => 'Akuzatív';

  @override
  String get casePossessive => 'Genitív';

  @override
  String get casePossessivePronoun => 'Privlastňovacie zámeno';

  @override
  String get caseReflexive => 'Zvratné zámeno';

  @override
  String get caseSubject => 'Nominatív';

  @override
  String get chatAiChat => 'Chat';

  @override
  String get chatAllConversations => 'Všetky konverzácie';

  @override
  String get chatChoosePersona => 'Vyberte osobu';

  @override
  String get chatEndMessage => 'Chcete ukončiť konverzáciu?';

  @override
  String get chatEndTitle => 'Ukončiť a uložiť konverzáciu';

  @override
  String chatFailed(Object error) {
    return 'Rozhovor zlyhal: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Výňatok z konverzácie ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'História konverzácií';

  @override
  String get chatNew => 'Nová konverzácia';

  @override
  String get chatNewChat => 'Nová konverzácia';

  @override
  String get chatNoConversations => 'Zatiaľ žiadne konverzácie';

  @override
  String get chatSearchHint => 'Hľadať podľa názvu konverzácie...';

  @override
  String get chatSaveAndExit => 'Uložiť a ukončiť';

  @override
  String get chatStartNewPrompt => 'Začnite novú konverzáciu na precvičovanie!';

  @override
  String get chatTypeHint => 'Zadajte správu...';

  @override
  String get chatUntitled => 'Konverzácia bez názvu';

  @override
  String get checking => 'Kontroluje sa...';

  @override
  String get clearAll => 'Vymazať všetko';

  @override
  String get confirm => 'Potvrdiť';

  @override
  String get confirmDelete => 'Naozaj chcete odstrániť tento záznam o učení?';

  @override
  String get confirmDeleteConversation =>
      'Naozaj chcete zmazať túto konverzáciu?\nZmazané konverzácie sa nedajú obnoviť.';

  @override
  String get confirmDeleteParticipant => 'Chcete odstrániť tohto účastníka?';

  @override
  String get contextTagHint =>
      'Napíšte situáciu, aby ste ju neskôr ľahko rozlíšili';

  @override
  String get contextTagLabel =>
      'Kontext/Situácia (voliteľné) - Napr.: Ranný pozdrav, Formálne oslovenie';

  @override
  String get copiedToClipboard => 'Skopírované do schránky!';

  @override
  String get copy => 'Kopírovať';

  @override
  String get correctAnswer => 'Správna odpoveď';

  @override
  String get createNew => 'Pokračovať s novou vetou';

  @override
  String get currentLocation => 'Aktuálna poloha';

  @override
  String get currentMaterialLabel => 'Aktuálne vybraná zbierka materiálov:';

  @override
  String get delete => 'Odstrániť';

  @override
  String deleteFailed(String error) {
    return 'Odstránenie zlyhalo: $error';
  }

  @override
  String get deleteRecord => 'Odstrániť záznam';

  @override
  String get dialogueQuestDesc =>
      'Precvičte si konverzáciu prostredníctvom situačných hier. Vyberte a vyslovte vhodné odpovede.';

  @override
  String get dialogueQuestTitle => 'Dialógová úloha';

  @override
  String get disambiguationPrompt => 'Aký význam chcete preložiť?';

  @override
  String get disambiguationTitle => 'Vyberte význam';

  @override
  String get dontHaveAccount => 'Nemáte účet?';

  @override
  String get editParticipant => 'Upraviť účastníka';

  @override
  String get email => 'E-mail';

  @override
  String get emailAlreadyInUse =>
      'Táto e-mailová adresa je už zaregistrovaná. Prihláste sa alebo použite možnosť obnovenia hesla.';

  @override
  String get enterNewSubjectName => 'Zadajte nový názov';

  @override
  String get enterSentenceHint => 'Zadajte vetu...';

  @override
  String get enterTextHint => 'Zadajte text na preklad';

  @override
  String get enterTextToTranslate => 'Zadajte text na preklad';

  @override
  String get enterWordHint => 'Zadajte slovo...';

  @override
  String get error => 'Chyba';

  @override
  String get errorHateSpeech =>
      'Obsahuje nenávistné prejavy a nie je možné ho preložiť.';

  @override
  String get errorOtherSafety =>
      'Preklad bol odmietnutý z dôvodu zásad bezpečnosti AI.';

  @override
  String get errorProfanity =>
      'Obsahuje vulgárne výrazy a nie je možné ho preložiť.';

  @override
  String get errorSelectCategory => 'Najprv vyberte slovo alebo vetu!';

  @override
  String get errorSexualContent =>
      'Obsahuje sexuálny obsah a nie je možné ho preložiť.';

  @override
  String get errors => 'Chyby:';

  @override
  String get female => 'Žena';

  @override
  String get file => 'Súbor:';

  @override
  String get filterAll => 'Všetky';

  @override
  String get flip => 'Zobraziť';

  @override
  String get formComparative => 'Komparatív';

  @override
  String get formInfinitive => 'Infinitív/prítomný čas';

  @override
  String get formPast => 'Minulý čas';

  @override
  String get formPastParticiple => 'Minulé príčastie';

  @override
  String get formPlural => 'Množné číslo';

  @override
  String get formPositive => 'Pozitív';

  @override
  String get formPresent => 'Prítomný čas';

  @override
  String get formPresentParticiple => 'Prítomné príčastie (ing)';

  @override
  String get formSingular => 'Jednotné číslo';

  @override
  String get formSuperlative => 'Superlatív';

  @override
  String get formThirdPersonSingular => '3. osoba jednotného čísla';

  @override
  String get gameModeDesc => 'Vyberte herný režim, ktorý chcete precvičovať';

  @override
  String get gameModeTitle => 'Herný režim';

  @override
  String get gameOver => 'Koniec hry';

  @override
  String get gender => 'Pohlavie';

  @override
  String get labelFilterMaterial => 'Materiály';

  @override
  String get labelFilterTag => 'Štítky';

  @override
  String get generalTags => 'Všeobecné značky';

  @override
  String get getMaterials => 'Získať materiály';

  @override
  String get good => 'Dobré';

  @override
  String get googleContinue => 'Pokračovať s Google';

  @override
  String get helpDialogueImportDesc =>
      'Importujte kompletnú sadu dialógov ako súbor JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• Štruktúra JSON: použitie poľa `dialogues` namiesto `entries`\n• Automatické obnovenie: názov dialógu, osoba, poradie správ sa obnovia.\n• Umiestnenie: importované dialógy sa zobrazia na karte \'História\' režimu AI chatu.';

  @override
  String get helpJsonDesc =>
      'Ak chcete importovať učebné materiály, ktoré sa majú použiť v režime 3, ako súbor JSON, postupujte podľa tohto formátu:';

  @override
  String get helpJsonTypeDialogue => 'Dialóg';

  @override
  String get helpJsonTypeSentence => 'Veta';

  @override
  String get helpJsonTypeWord => 'Slovo';

  @override
  String get helpMode1Desc =>
      'Začnite sa učiť jazyky najintuitívnejším spôsobom s prémiovým 3D mikrofónom a ikonami veľkej klávesnice.';

  @override
  String get helpMode1Details =>
      '• Nastavenie jazyka: Skontrolujte svoj jazyk a jazyk, ktorý sa učíte, a zmeňte jazyk učenia pomocou tlačidla jazyka v hornej časti domovskej obrazovky.\n• Jednoduché zadávanie: Okamžite zadávajte údaje pomocou veľkého mikrofónu a textového okna v strede.\n• Potvrdenie nastavení: Po dokončení zadávania stlačte modré tlačidlo začiarknutia vpravo. Zobrazí sa okno podrobných nastavení.\n• Podrobné nastavenia: V zobrazenom dialógovom okne môžete určiť zbierku materiálov, poznámky (poznámky) a značky, ktoré chcete uložiť.\n• Preložiť teraz: Po dokončení nastavení stlačte zelené tlačidlo prekladu a umelá inteligencia okamžite vykoná preklad.\n• Automatické vyhľadávanie: Počas písania detekuje a zobrazuje podobné existujúce preklady v reálnom čase.\n• Počúvanie a ukladanie: Vypočujte si výslovnosť pomocou ikony reproduktora v dolnej časti výsledku prekladu a pridajte ju do svojho vzdelávacieho zoznamu pomocou možnosti „Uložiť údaje“.';

  @override
  String get helpMode2Desc =>
      'Zopakujte si uložené vety a skontrolujte si zapamätanie pomocou funkcie automatického skrytia.';

  @override
  String get helpMode2Details =>
      '• Výber materiálov: Použite \'Výber študijných materiálov\' alebo \'Online knižnicu materiálov\' v ponuke (⋮) vpravo hore\n• Otočenie kartičky: Potvrďte preklad pomocou \'Zobraziť/Skryť\'\n• Počúvanie: Prehrávanie výslovnosti pomocou ikony reproduktora\n• Dokončené štúdium: Označte ako dokončené pomocou začiarknutia (V)\n• Odstránenie: Odstráňte záznam dlhým stlačením karty\n• Vyhľadávanie a filtre: Podpora vyhľadávacieho panela (inteligentné vyhľadávanie v reálnom čase) a filtrov značiek a začiatočných písmen';

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
      '• AI Chat: Precvičte si konverzáciu s osobnosťou v ponuke \'Chat\' na paneli kariet v dolnej časti\n• Nastavenie osobnosti: Slobodne určite pohlavie, meno a jazykový kód partnera\n• GPS situačná hra: Odporúčanie tém konverzácie, ktoré sú vhodné pre dané miesto rozpoznaním vašej aktuálnej polohy\n• 2 jazyky: Odpoveď AI sa zobrazuje s prekladom, čím sa maximalizuje efekt učenia\n• Správa záznamov: Filtrovanie minulej histórie konverzácií a ukladanie konkrétnych správ počas konverzácie ako študijných materiálov';

  @override
  String get helpTabJson => 'Formát JSON';

  @override
  String get helpTabModes => 'Popis režimov';

  @override
  String get helpTabTour => 'Prehliadka';

  @override
  String get helpTitle => 'Pomocník a sprievodca';

  @override
  String get helpTourDesc =>
      '**Zvýraznený kruh** vás prevedie kľúčovými funkciami.\n(Napríklad: kartu označenú **zvýrazneným kruhom** môžete odstrániť dlhým stlačením.)';

  @override
  String get hide => 'Skryť';

  @override
  String importAdded(int count) {
    return 'Pridané: $count';
  }

  @override
  String get importComplete => 'Import dokončený';

  @override
  String get importDuplicateTitleError =>
      'Materiál s rovnakým názvom už existuje. Zmeňte názov a skúste znova.';

  @override
  String importErrorMessage(String error) {
    return 'Import súboru zlyhal:\\n$error';
  }

  @override
  String get importFailed => 'Import zlyhal';

  @override
  String importFile(String fileName) {
    return 'Súbor: $fileName';
  }

  @override
  String get importJsonFile => 'Importovať súbor JSON';

  @override
  String get importJsonFilePrompt => 'Importujte súbor JSON';

  @override
  String importSkipped(int count) {
    return 'Preskočené: $count';
  }

  @override
  String importTotal(int count) {
    return 'Celkom: $count';
  }

  @override
  String get importing => 'Importuje sa...';

  @override
  String get inputModeTitle => 'Vstup';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds s';
  }

  @override
  String get invalidEmail => 'Zadajte platný e-mail.';

  @override
  String get kakaoContinue => 'Pokračovať s Kakao';

  @override
  String get labelLangCode => 'Kód jazyka (napr. en-US, ko-KR)';

  @override
  String get labelName => 'Meno';

  @override
  String get labelNote => 'Poznámka';

  @override
  String get labelPOS => 'Časť reči';

  @override
  String get labelRole => 'Rola';

  @override
  String get labelSentence => 'Veta';

  @override
  String get labelSentenceCollection => 'Zbierka viet';

  @override
  String get labelSentenceType => 'Typ vety';

  @override
  String get labelShowMemorized => 'Hotovo';

  @override
  String get labelType => 'Typ:';

  @override
  String get labelWord => 'Slovo';

  @override
  String get labelWordbook => 'Slovník';

  @override
  String get language => 'Jazyk';

  @override
  String get languageSettings => 'Nastavenia jazyka';

  @override
  String get languageSettingsTitle => 'Nastavenia jazyka';

  @override
  String get libTitleFirstMeeting => 'Prvé stretnutie';

  @override
  String get libTitleGreetings1 => 'Pozdravy 1';

  @override
  String get libTitleNouns1 => 'Podstatné mená 1';

  @override
  String get libTitleVerbs1 => 'Slovesá 1';

  @override
  String get listen => 'Počúvať';

  @override
  String get listening => 'Počúva sa...';

  @override
  String get loadingParticipants => 'Načítavajú sa účastníci...';

  @override
  String get location => 'Poloha';

  @override
  String get login => 'Prihlásiť sa';

  @override
  String get logout => 'Odhlásiť sa';

  @override
  String get logoutConfirmMessage => 'Chcete sa odhlásiť z tohto zariadenia?';

  @override
  String get logoutConfirmTitle => 'Odhlásiť sa';

  @override
  String get male => 'Muž';

  @override
  String get manageParticipants => 'Správa účastníkov';

  @override
  String get manual => 'Manuálny vstup';

  @override
  String get markAsStudied => 'Označiť ako preštudované';

  @override
  String get materialInfo => 'Informácie o materiáli';

  @override
  String get me => 'Ja';

  @override
  String get menuDeviceImport => 'Importovať materiály zo zariadenia';

  @override
  String get menuHelp => 'Pomocník';

  @override
  String get menuLanguageSettings => 'Nastavenia jazyka';

  @override
  String get menuOnlineLibrary => 'Online knižnica materiálov';

  @override
  String get menuSelectMaterialSet => 'Vyberte zbierku učebných materiálov';

  @override
  String get menuSettings => 'Nastavenia jazyka';

  @override
  String get menuTutorial => 'Návod na používanie';

  @override
  String get menuWebDownload => 'Webová stránka';

  @override
  String get metadataDialogTitle => 'Podrobná klasifikácia';

  @override
  String get metadataFormType => 'Gramatický tvar';

  @override
  String get metadataRootWord => 'Základné slovo (Root Word)';

  @override
  String get micButtonTooltip => 'Spustiť rozpoznávanie reči';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Aktuálne vybraná zbierka materiálov: $name';
  }

  @override
  String get mode2Title => 'Opakovanie';

  @override
  String get mode3Next => 'Ďalej';

  @override
  String get mode3Start => 'Spustiť';

  @override
  String get mode3Stop => 'Zastaviť';

  @override
  String get mode3TryAgain => 'Skúsiť znova';

  @override
  String get mySentenceCollection => 'Moja zbierka viet';

  @override
  String get myWordbook => 'Moja slovná zásoba';

  @override
  String get neutral => 'Neutrálny';

  @override
  String get newSubjectName => 'Nový názov slovníka/zbierky viet';

  @override
  String get next => 'Ďalej';

  @override
  String get noDialogueHistory => 'Žiadna história dialógov.';

  @override
  String get noInternetWarningMic =>
      'Žiadne internetové pripojenie. Rozpoznávanie reči nemusí byť v režime offline dostupné.';

  @override
  String get noInternetWarningTranslate =>
      'Žiadne internetové pripojenie. Preklad nie je v režime offline dostupný. Použite režim opakovania.';

  @override
  String get noMaterialsInCategory =>
      'V tejto kategórii nie sú žiadne materiály.';

  @override
  String get noParticipantsFound => 'Nenašli sa žiadni registrovaní účastníci.';

  @override
  String get noRecords => 'Žiadne záznamy o učení vo vybranom jazyku';

  @override
  String get noStudyMaterial => 'Žiadne učebné materiály.';

  @override
  String get noTextToPlay => 'Žiadny text na prehrávanie';

  @override
  String get noTranslationToSave => 'Žiadny preklad na uloženie';

  @override
  String get noVoiceDetected => 'Nezistil sa žiadny hlas';

  @override
  String get notSelected => '- Nevybrané -';

  @override
  String get onlineLibraryCheckInternet =>
      'Skontrolujte pripojenie k internetu alebo to skúste neskôr.';

  @override
  String get onlineLibraryLoadFailed => 'Nepodarilo sa načítať materiály.';

  @override
  String get onlineLibraryNoMaterials => 'Žiadne materiály.';

  @override
  String get participantDeleted => 'Účastník bol odstránený.';

  @override
  String get participantRename => 'Premenovať účastníka';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Režim partnera';

  @override
  String get password => 'Heslo';

  @override
  String get passwordTooShort => 'Heslo musí mať aspoň 6 znakov.';

  @override
  String get perfect => 'Perfektné!';

  @override
  String get personaFriend => 'Miestny priateľ';

  @override
  String get personaGuide => 'Turistický sprievodca';

  @override
  String get personaTeacher => 'Učiteľ angličtiny';

  @override
  String get playAgain => 'Hrať znova';

  @override
  String playbackFailed(String error) {
    return 'Prehrávanie zlyhalo: $error';
  }

  @override
  String get playing => 'Prehráva sa...';

  @override
  String get posAdjective => 'Prídavné meno';

  @override
  String get posAdverb => 'Príslovka';

  @override
  String get posConjunction => 'Spojka';

  @override
  String get posInterjection => 'Citoslovce';

  @override
  String get posNoun => 'Podstatné meno';

  @override
  String get posPreposition => 'Predložka';

  @override
  String get posPronoun => 'Zámeno';

  @override
  String get posVerb => 'Sloveso';

  @override
  String get practiceModeTitle => 'Cvičenie';

  @override
  String get practiceWordsOnly => 'Precvičovať iba slová';

  @override
  String progress(int current, int total) {
    return 'Priebeh: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Zobraziť posledných $count vytvorených';
  }

  @override
  String recognitionFailed(String error) {
    return 'Rozpoznávanie reči zlyhalo: $error';
  }

  @override
  String get recognized => 'Rozpoznané';

  @override
  String get recognizedText => 'Rozpoznaná výslovnosť:';

  @override
  String get recordDeleted => 'Záznam odstránený';

  @override
  String get refresh => 'Obnoviť';

  @override
  String get reset => 'Obnoviť';

  @override
  String get resetPracticeHistory => 'Obnoviť históriu cvičenia';

  @override
  String get retry => 'Skúsiť znova?';

  @override
  String get reviewAll => 'Celé opakovanie';

  @override
  String reviewCount(int count) {
    return 'Opakovanie $count-krát';
  }

  @override
  String get reviewModeTitle => 'Opakovanie';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Tretia strana';

  @override
  String get roleUser => 'Používateľ';

  @override
  String get save => 'Uložiť';

  @override
  String get saveData => 'Uložiť dáta';

  @override
  String saveFailed(String error) {
    return 'Uloženie zlyhalo: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Pokúste sa uložiť preklady z režimu vyhľadávania';

  @override
  String get saved => 'Uložené';

  @override
  String get saving => 'Ukladá sa...';

  @override
  String score(String score) {
    return 'Presnosť: $score%';
  }

  @override
  String get scoreLabel => 'Skóre';

  @override
  String get search => 'Hľadať';

  @override
  String get searchConditions => 'Podmienky vyhľadávania';

  @override
  String get searchSentenceHint => 'Hľadať vetu...';

  @override
  String get searchWordHint => 'Hľadať slovo...';

  @override
  String get sectionSentence => 'Sekcia viet';

  @override
  String get sectionSentences => 'Vety';

  @override
  String get sectionWord => 'Sekcia slov';

  @override
  String get sectionWords => 'Slová';

  @override
  String get selectExistingSubject => 'Vybrať existujúci názov';

  @override
  String get selectMaterialPrompt => 'Vyberte učebné materiály';

  @override
  String get selectMaterialSet => 'Vyberte zbierku učebných materiálov';

  @override
  String get selectPOS => 'Vyberte slovný druh';

  @override
  String get selectParticipants => 'Vyberte účastníkov';

  @override
  String get selectSentenceType => 'Vyberte typ vety';

  @override
  String get selectStudyMaterial => 'Vyberte učebné materiály';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Veta';

  @override
  String get signUp => 'Zaregistrovať sa';

  @override
  String get similarTextFound => 'Nájdený podobný text';

  @override
  String get skip => 'Preskočiť';

  @override
  String get source => 'Zdroj:';

  @override
  String get sourceLanguage => 'Zdrojový jazyk';

  @override
  String get sourceLanguageLabel => 'Môj jazyk (Source)';

  @override
  String get speakNow => 'Hovorte teraz!';

  @override
  String get speaker => 'Hovorca';

  @override
  String get speakerSelect => 'Vyberte hovoriaceho';

  @override
  String get speakingPractice => 'Precvičovanie rozprávania';

  @override
  String get startChat => 'Začať konverzáciu';

  @override
  String get startPractice => 'Začať cvičiť';

  @override
  String get startTutorial => 'Spustiť tutoriál';

  @override
  String get startWarning => 'Upozornenie';

  @override
  String get startsWith => 'Začína na';

  @override
  String get statusCheckEmail => 'Overte si e-mail pre dokončenie overenia.';

  @override
  String statusDownloading(Object name) {
    return 'Sťahuje sa: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Import zlyhal: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name bol úspešne importovaný';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Prihlásenie bolo zrušené.';

  @override
  String statusLoginFailed(Object error) {
    return 'Prihlásenie zlyhalo: $error';
  }

  @override
  String get statusLoginSuccess => 'Prihlásenie bolo úspešné.';

  @override
  String get statusLogoutSuccess => 'Boli ste odhlásený.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Registrácia zlyhala: $error';
  }

  @override
  String get statusSigningUp => 'Prebieha registrácia...';

  @override
  String get stopPractice => 'Zastaviť cvičenie';

  @override
  String get studyComplete => 'Učenie dokončené';

  @override
  String studyRecords(int count) {
    return 'Záznamy o učení ($count)';
  }

  @override
  String get styleFormal => 'Formálny';

  @override
  String get styleInformal => 'Neformálny';

  @override
  String get stylePolite => 'Zdvorilý';

  @override
  String get styleSlang => 'Slang/Hovorový jazyk';

  @override
  String get subject => 'Predmet:';

  @override
  String get swapLanguages => 'Prepnúť jazyky';

  @override
  String get switchToAi => 'Prepnúť do režimu AI';

  @override
  String get switchToPartner => 'Prepnúť do režimu partnera';

  @override
  String get syncingData => 'Synchronizácia dát...';

  @override
  String get tabConversation => 'Konverzácia';

  @override
  String tabReview(int count) {
    return 'Opakovanie ($count)';
  }

  @override
  String get tabSentence => 'Veta';

  @override
  String get tabSpeaking => 'Rozprávanie';

  @override
  String tabStudyMaterial(int count) {
    return 'Učebné materiály ($count)';
  }

  @override
  String get tabWord => 'Slovo';

  @override
  String get tagFormal => 'Formálne oslovenie';

  @override
  String get tagSelection => 'Výber značky';

  @override
  String get targetLanguage => 'Cieľový jazyk';

  @override
  String get targetLanguageFilter => 'Filter cieľového jazyka:';

  @override
  String get targetLanguageLabel => 'Jazyk učenia (Target)';

  @override
  String get thinkingTimeDesc =>
      'Čas na premýšľanie pred odhalením správnej odpovede.';

  @override
  String get thinkingTimeInterval => 'Interval prehrávania';

  @override
  String get timeUp => 'Čas vypršal!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Výber značky nadpisu (zošit)';

  @override
  String get tooltipDecrease => 'Znížiť';

  @override
  String get tooltipIncrease => 'Zvýšiť';

  @override
  String get tooltipSearch => 'Hľadať';

  @override
  String get tooltipSpeaking => 'Rozprávanie';

  @override
  String get tooltipStudyReview => 'Učenie + Opakovanie';

  @override
  String totalRecords(int count) {
    return 'Celkom $count záznamov (zobraziť všetky)';
  }

  @override
  String get translate => 'Preložiť';

  @override
  String get translating => 'Prekladá sa...';

  @override
  String get translation => 'Preklad';

  @override
  String get translationComplete => 'Preklad dokončený (potrebné uložiť)';

  @override
  String translationFailed(String error) {
    return 'Preklad zlyhal: $error';
  }

  @override
  String get translationLimitExceeded => 'Prekročený limit prekladu';

  @override
  String get translationLimitMessage =>
      'Využili ste všetky bezplatné denné preklady (5-krát).\\n\\nChcete si okamžite dobiť 5 prekladov sledovaním reklamy?';

  @override
  String get translationLoaded => 'Uložený preklad načítaný';

  @override
  String get translationRefilled => 'Počet prekladov bol dobitý 5-krát!';

  @override
  String get translationResultHint => 'Výsledok prekladu - upraviteľný';

  @override
  String get tryAgain => 'Skúste znova';

  @override
  String get tutorialAiChatDesc =>
      'Precvičte si konverzáciu v reálnom čase s AI osobou.';

  @override
  String get tutorialAiChatTitle => 'AI Chat - tutoriál';

  @override
  String get tutorialContextDesc =>
      'Ak si zapíšete situáciu (napr. ráno, večer) aj pre tú istú vetu, môžete si ju uložiť samostatne.';

  @override
  String get tutorialContextTitle => 'Situácia/kontextové značky';

  @override
  String get tutorialLangSettingsDesc =>
      'Nastavuje zdrojový a cieľový jazyk na preklad.';

  @override
  String get tutorialLangSettingsTitle => 'Nastavenia jazyka';

  @override
  String get tutorialM1ToggleDesc => 'Prepínajte režim slova a vety tu.';

  @override
  String get tutorialM1ToggleTitle => 'Režim slova/vety';

  @override
  String get tutorialM2DropdownDesc =>
      'Prostredníctvom hornej ponuky si môžete vybrať materiály na štúdium.';

  @override
  String get tutorialM2ImportDesc =>
      'Importuje súbor JSON z priečinka v zariadení.';

  @override
  String get tutorialM2ListDesc =>
      'Túto kartu môžete odstrániť dlhým stlačením (dlhé kliknutie). Skontrolujte uloženú vetu a otočte ju.';

  @override
  String get tutorialM2ListTitle => 'Zoznam učenia';

  @override
  String get tutorialM2SearchDesc =>
      'Rýchlo nájdite uložené slová a vety vyhľadávaním.';

  @override
  String get tutorialM2SelectDesc =>
      'Stlačením ikony zbierky materiálov (📚) na hornom paneli aplikácie vyberte materiál na učenie.';

  @override
  String get tutorialM2SelectTitle => 'Výber materiálu';

  @override
  String get tutorialM3IntervalDesc => 'Upravte čakaciu dobu medzi vetami.';

  @override
  String get tutorialM3IntervalTitle => 'Nastavenie intervalu';

  @override
  String get tutorialM3ResetDesc =>
      'Začnite od začiatku obnovením priebehu a skóre presnosti.';

  @override
  String get tutorialM3ResetTitle => 'Obnovenie histórie';

  @override
  String get tutorialM3SelectDesc =>
      'Stlačením ikony zbierky materiálov (📚) na hornom paneli aplikácie vyberte materiál na precvičovanie.';

  @override
  String get tutorialM3SelectTitle => 'Výber materiálu';

  @override
  String get tutorialM3StartDesc =>
      'Stlačením tlačidla prehrávania si vypočujte reč rodeného hovoriaceho a opakujte.';

  @override
  String get tutorialM3StartTitle => 'Začať cvičiť';

  @override
  String get tutorialM3WordsDesc =>
      'Ak to zaškrtnete, precvičia sa iba uložené slová.';

  @override
  String get tutorialM3WordsTitle => 'Cvičenie slov';

  @override
  String get tutorialMicDesc => 'Stlačením tlačidla mikrofónu zadáte hlasom.';

  @override
  String get tutorialMicTitle => 'Hlasový vstup';

  @override
  String get tutorialSaveDesc =>
      'Uložte preložené výsledky do záznamu o učení.';

  @override
  String get tutorialSaveTitle => 'Uložiť';

  @override
  String get tutorialSwapDesc => 'Vzájomne prehodí môj jazyk a jazyk učenia.';

  @override
  String get tutorialTabDesc => 'Tu si môžete vybrať požadovaný režim učenia.';

  @override
  String get tutorialTapToContinue => 'Klepnutím na obrazovku pokračujte';

  @override
  String get tutorialTransDesc => 'Preloží zadaný text.';

  @override
  String get tutorialTransTitle => 'Preložiť';

  @override
  String get typeExclamation => 'Výkrik';

  @override
  String get typeImperative => 'Rozkaz';

  @override
  String get typeQuestion => 'Otázka';

  @override
  String get typeStatement => 'Oznámenie';

  @override
  String get usageLimitTitle => 'Dosiahnutý limit';

  @override
  String get useExistingText => 'Použiť existujúci text';

  @override
  String get viewOnlineGuide => 'Zobraziť online príručku';

  @override
  String get voluntaryTranslations => 'Dobrovoľné preklady';

  @override
  String get watchAdAndRefill => 'Dobitie sledovaním reklamy (+5-krát)';

  @override
  String get word => 'Slovo';

  @override
  String get wordDefenseDesc =>
      'Bráňte základňu vyslovením slov predtým, ako dorazí nepriateľ.';

  @override
  String get wordDefenseTitle => 'Slovná obrana';

  @override
  String get wordModeLabel => 'Režim slov';

  @override
  String get yourPronunciation => 'Vaša výslovnosť';

  @override
  String get ttsUnsupportedNatively =>
      'V tomto zariadení nie je natívne podporovaný výstup hlasu pre tento jazyk.';

  @override
  String get homeTab => 'Domov';

  @override
  String get welcomeTitle => 'Vitajte v Talkie!';

  @override
  String get welcomeDesc =>
      'Vitajte v Talkie! Podporujeme viac ako 80 jazykov z celého sveta so 100% integritou a prinášame dokonalý zážitok z učenia s novým prémiovým 3D dizajnom a optimalizovaným výkonom.';

  @override
  String get welcomeButton => 'Začať';

  @override
  String get labelDetails => 'Podrobné nastavenia';

  @override
  String get translationResult => 'Výsledok prekladu';

  @override
  String get inputContent => 'Vstupný obsah';

  @override
  String get translateNow => 'Preložiť teraz';

  @override
  String get tooltipSettingsConfirm => 'Potvrdiť nastavenia';

  @override
  String get hintNoteExample => 'Napr.: Kontext, homonymá atď.';

  @override
  String get hintTagExample => 'Napr.: Obchod, cestovanie...';

  @override
  String get addNew => 'Pridať nový';

  @override
  String get newNotebookTitle => 'Názov nového zápisníka';

  @override
  String get enterNameHint => 'Zadajte názov';

  @override
  String get add => 'Pridať';

  @override
  String get openSettings => 'Otvoriť nastavenia';

  @override
  String get helpNotebook =>
      'Vyberte priečinok, kam chcete uložiť preložené výsledky.';

  @override
  String get helpNote =>
      'Slobodne si zapisujte významy slov, príklady alebo situácie.';

  @override
  String get helpTag =>
      'Zadajte kľúčové slová na neskoršie triedenie alebo vyhľadávanie.';

  @override
  String get requestTranslation => 'Požiadať o preklad';

  @override
  String get statusRequestSuccess => 'Žiadosť o preklad bola úspešná.';

  @override
  String statusRequestFailed(String error) {
    return 'Žiadosť o preklad zlyhala: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Nepodporovaný jazyk štúdia';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Vybraný materiál nepodporuje aktuálne nastavený jazyk štúdia ($targetLang), preto ho nie je možné uložiť lokálne. Chcete požiadať o preklad?';
  }
}

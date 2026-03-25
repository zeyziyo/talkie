// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get basicWords => 'Pagrindinė žodžių saugykla';

  @override
  String get inputLanguage => 'Įvesties kalba';

  @override
  String get translationLanguage => 'Vertimo kalba';

  @override
  String get simplifiedGuidance =>
      'Akimirksniu paverskite kasdienius pokalbius į užsienio kalbas! „Talkie“ įrašys jūsų kalbos gyvenimą.';

  @override
  String get noDataForLanguage =>
      'Šiai kalbai mokymosi medžiagos vietinėje DB nėra. Atsisiųskite medžiagą arba pasirinkite kitą kalbą.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get accuracy => 'Tikslumas';

  @override
  String get ttsMissing =>
      'Šiam kalbos paketui įrenginyje neįdiegta jokio teksto į kalbą variklio.';

  @override
  String get ttsInstallGuide =>
      'Įdiekite kalbos duomenis skiltyje „Android“ nustatymai > „Google TTS“.';

  @override
  String get adLoading =>
      'Įkeliamas skelbimas. Bandykite dar kartą po kurio laiko.';

  @override
  String get addNewSubject => 'Pridėti naują pavadinimą';

  @override
  String get addParticipant => 'Pridėti dalyvį';

  @override
  String get addTagHint => 'Pridėti žymę...';

  @override
  String get alreadyHaveAccount => 'Jau turite paskyrą?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Automatinis atkūrimas';

  @override
  String get basic => 'Pagrindinis';

  @override
  String get basicDefault => 'Pagrindinis';

  @override
  String get basicMaterialRepository => 'Pagrindinė sakinių / žodžių saugykla';

  @override
  String get basicSentenceRepository => 'Pagrindinė sakinių saugykla';

  @override
  String get basicSentences => 'Pagrindinė sakinių saugykla';

  @override
  String get basicWordRepository => 'Pagrindinė žodžių saugykla';

  @override
  String get caseObject => 'Galima';

  @override
  String get casePossessive => 'Giminininkas';

  @override
  String get casePossessivePronoun => 'Savybinis įvardis';

  @override
  String get caseReflexive => 'Sangrąžinis';

  @override
  String get caseSubject => 'Vardininkas';

  @override
  String get chatAiChat => 'Pokalbis';

  @override
  String get chatAllConversations => 'Visi pokalbiai';

  @override
  String get chatChoosePersona => 'Pasirinkite personažą';

  @override
  String get chatEndMessage => 'Ar norite baigti pokalbį?';

  @override
  String get chatEndTitle => 'Baigti ir išsaugoti pokalbį';

  @override
  String chatFailed(Object error) {
    return 'Nepavyko kalbėtis: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Pokalbio ištrauka ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Pokalbių istorija';

  @override
  String get chatNew => 'Naujas pokalbis';

  @override
  String get chatNewChat => 'Naujas pokalbis';

  @override
  String get chatNoConversations => 'Dar nėra pokalbių';

  @override
  String get chatSearchHint => 'Ieškoti pagal pokalbio pavadinimą...';

  @override
  String get chatNoteSearchHint => 'Ieškokite pagal pastabas...';

  @override
  String get chatSaveAndExit => 'Išsaugoti ir išeiti';

  @override
  String get chatStartNewPrompt => 'Pradėkite naują pokalbį praktikai!';

  @override
  String get chatTypeHint => 'Įveskite pranešimą...';

  @override
  String get chatUntitled => 'Pokalbis be pavadinimo';

  @override
  String get checking => 'Tikrinama...';

  @override
  String get clearAll => 'Išvalyti viską';

  @override
  String get confirm => 'Patvirtinti';

  @override
  String get confirmDelete => 'Ar tikrai norite ištrinti šį mokymosi įrašą?';

  @override
  String get confirmDeleteConversation =>
      'Ar tikrai norite ištrinti šį pokalbį?\nIštrintų pokalbių atkurti negalima.';

  @override
  String get confirmDeleteParticipant => 'Ar tikrai norite ištrinti šį dalyvį?';

  @override
  String get contextTagHint =>
      'Parašykite situaciją, kad būtų lengviau atskirti vėliau';

  @override
  String get contextTagLabel =>
      'Kontekstas / situacija (neprivaloma) – pvz., Labas rytas, Mandagus';

  @override
  String get copiedToClipboard => 'Nukopijuota į iškarpinę!';

  @override
  String get copy => 'Kopijuoti';

  @override
  String get correctAnswer => 'Teisingas atsakymas';

  @override
  String get createNew => 'Tęsti su nauju sakiniu';

  @override
  String get currentLocation => 'Dabartinė vieta';

  @override
  String get currentMaterialLabel => 'Šiuo metu pasirinkta medžiaga:';

  @override
  String get delete => 'Ištrinti';

  @override
  String deleteFailed(String error) {
    return 'Ištrinti nepavyko: $error';
  }

  @override
  String get deleteRecord => 'Ištrinti įrašą';

  @override
  String get dialogueQuestDesc =>
      'Praktikuokite pokalbius per situacijų komediją. Pasirinkite tinkamą atsakymą ir pasakykite.';

  @override
  String get dialogueQuestTitle => 'Dialogo užduotis';

  @override
  String get disambiguationPrompt => 'Kaip norite išversti?';

  @override
  String get disambiguationTitle => 'Pasirinkite reikšmę';

  @override
  String get dontHaveAccount => 'Neturite paskyros?';

  @override
  String get editParticipant => 'Redaguoti dalyvį';

  @override
  String get email => 'El. paštas';

  @override
  String get emailAlreadyInUse =>
      'Šis el. paštas jau naudojamas. Prisijunkite arba atkurkite slaptažodį.';

  @override
  String get enterNewSubjectName => 'Įveskite naują pavadinimą';

  @override
  String get enterSentenceHint => 'Įveskite sakinį...';

  @override
  String get enterTextHint => 'Įveskite tekstą, kurį norite išversti';

  @override
  String get enterTextToTranslate => 'Įveskite tekstą, kurį norite išversti';

  @override
  String get enterWordHint => 'Įveskite žodį...';

  @override
  String get error => 'Klaida';

  @override
  String get errorHateSpeech =>
      'Negalima išversti, nes yra neapykantą kurstančių kalbų.';

  @override
  String get errorOtherSafety =>
      'Vertimas atsisakytas dėl AI saugos politikos.';

  @override
  String get errorProfanity =>
      'Negalima išversti, nes yra necenzūrinių žodžių.';

  @override
  String get errorSelectCategory => 'Pirmiausia pasirinkite žodį ar sakinį!';

  @override
  String get errorSexualContent =>
      'Negalima išversti, nes yra seksualinio turinio.';

  @override
  String get errors => 'Klaidos:';

  @override
  String get female => 'Moteris';

  @override
  String get file => 'Failas:';

  @override
  String get filterAll => 'Viskas';

  @override
  String get flip => 'Rodyti';

  @override
  String get formComparative => 'Lyginamasis laipsnis';

  @override
  String get formInfinitive => 'Bendratis/Esamasis laikas';

  @override
  String get formPast => 'Būtasis laikas';

  @override
  String get formPastParticiple => 'Būtasis dalyvis';

  @override
  String get formPlural => 'Daugiskaita';

  @override
  String get formPositive => 'Teigiamas';

  @override
  String get formPresent => 'Esamasis laikas';

  @override
  String get formPresentParticiple => 'Esamasis dalyvis (ing)';

  @override
  String get formSingular => 'Vienaskaita';

  @override
  String get formSuperlative => 'Aukščiausiasis laipsnis';

  @override
  String get formThirdPersonSingular => 'Trečiasis asmuo vienaskaita';

  @override
  String get gameModeDesc =>
      'Pasirinkite žaidimo režimą, kurį norite praktikuoti';

  @override
  String get gameModeTitle => 'Žaidimo režimas';

  @override
  String get gameOver => 'Žaidimas baigtas';

  @override
  String get gender => 'Lytis';

  @override
  String get labelFilterMaterial => 'Medžiaga';

  @override
  String get labelFilterTag => 'Žyma';

  @override
  String get generalTags => 'Bendrosios žymos';

  @override
  String get getMaterials => 'Gauti medžiagų';

  @override
  String get good => 'Gerai';

  @override
  String get googleContinue => 'Prisijungti per Google';

  @override
  String get helpDialogueImportDesc =>
      'Importuokite visą pokalbių rinkinį kaip JSON failą.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON struktūra: naudokite `dialogues` masyvą vietoj `entries`\n• Automatinis atkūrimas: atkuriamas pokalbio pavadinimas, personažas, pranešimų tvarka.\n• Vieta: importuoti pokalbiai rodomi AI pokalbių režimo skirtuke „Istorija“.';

  @override
  String get helpJsonDesc =>
      'Jei norite importuoti mokymosi medžiagą, kuri bus naudojama 3 režime, kaip JSON failą, vadovaukitės šiuo formatu:';

  @override
  String get helpJsonTypeDialogue => 'Dialogas';

  @override
  String get helpJsonTypeSentence => 'Sakinys';

  @override
  String get helpJsonTypeWord => 'Žodis';

  @override
  String get helpMode1Desc =>
      'Pradėkite mokytis kalbų intuityviausiu būdu su aukščiausios kokybės 3D mikrofonu ir didelėmis klaviatūros piktogramomis.';

  @override
  String get helpMode1Details =>
      '• Kalbos nustatymai: pagrindinio ekrano viršuje esančiu kalbos mygtuku galite peržiūrėti savo kalbą ir kalbą, kurios mokotės, ir pakeisti mokymosi kalbą.\n• Paprastas įvedimas: iškart įveskite naudodami didelį mikrofoną ir teksto langą centre.\n• Nustatymų patvirtinimas: baigę įvesti, spustelėkite mėlyną varnelės mygtuką dešinėje. Atsidarys išsamus nustatymų langas.\n• Išsamūs nustatymai: pasirodžiusiame dialogo lange galite nurodyti duomenų rinkinį, anotacijas (pastabas) ir žymas, kurias norite išsaugoti.\n• Versti dabar: baigę nustatymus, spustelėkite žalią vertimo mygtuką ir dirbtinis intelektas iškart atliks vertimą.\n• Automatinė paieška: įvesdami realiuoju laiku aptinkate ir parodote panašius esamus vertimus.\n• Klausytis ir išsaugoti: klausykite tarimo naudodami garsiakalbio piktogramą vertimo rezultato apačioje ir pridėkite jį prie mokymosi sąrašo naudodami „Išsaugoti duomenis“.';

  @override
  String get helpMode2Desc =>
      'Peržiūrėkite išsaugotus sakinius ir patikrinkite, ar jie įsiminti, naudodami automatinio slėpimo funkciją.';

  @override
  String get helpMode2Details =>
      '• Medžiagos pasirinkimas: viršutiniame dešiniajame kampe esančiame meniu (⋮) naudokite \'Pasirinkti mokymosi medžiagą\' arba \'Internetinę medžiagų biblioteką\'\n• Kortelės apvertimas: patikrinkite vertimą su \'Rodyti/Slėpti\'\n• Klausymas: atkurkite tarimą naudodami garsiakalbio piktogramą\n• Mokymosi užbaigimas: pažymėkite (V), kad užbaigtumėte mokymąsi\n• Ištrinti: ilgai paspauskite kortelę, kad ištrintumėte įrašą\n• Paieška ir filtrai: palaikykite paieškos juostą (pažangi paieška realiuoju laiku) ir žymas, pradedantį raidžių filtrą';

  @override
  String get helpMode3Desc =>
      'Klausykite sakinio ir kartokite (šešėliavimas), kad praktikuotumėte tarimą.';

  @override
  String get helpMode3Details =>
      '• Medžiagos pasirinkimas: pasirinkite medžiagų rinkinį, kurį norite studijuoti\n• Intervalo nustatymas: reguliuokite laukimo laiką tarp sakinių naudodami mygtukus [-] [+]. (3–60 sekundžių)\n• Pradėti / sustabdyti: šešėliavimo sesijos valdymas\n• Kalbėjimas: klausykitės ir kartokite balsą\n• Atsiliepimas: tikslumo balas (0–100) ir spalvų ekranas\n• Paieškos sąlygos: filtruokite praktikos taikinius pagal žymą, naujausius elementus, pradžios raidę';

  @override
  String get helpModeChatDesc => 'Praktikuokite pokalbius su AI personažu.';

  @override
  String get helpModeChatDetails =>
      '• AI pokalbiai: praktikuokite pokalbius realiame gyvenime su asmenybėmis meniu „Pokalbis“ apatinėje skirtukų juostoje\n• Asmenybės nustatymas: laisvai nurodykite pašnekovo lytį, vardą ir kalbos kodą\n• GPS inscenizacija: atpažinkite savo dabartinę vietą ir rekomenduokite pokalbio temas, atitinkančias vietą\n• 2 kalbos: AI atsakymai rodomi kartu su vertimu, kad maksimaliai padidintumėte mokymosi efektą\n• Įrašų valdymas: filtruokite ankstesnę pokalbių istoriją ir išsaugokite konkrečias žinutes iš pokalbio kaip mokymosi medžiagą';

  @override
  String get helpTabJson => 'JSON formatas';

  @override
  String get helpTabModes => 'Režimų paaiškinimas';

  @override
  String get helpTabTour => 'Apžiūrėti';

  @override
  String get helpTitle => 'Pagalba ir gidai';

  @override
  String get helpTourDesc =>
      '**Paryškintas apskritimas** nurodo pagrindines funkcijas.\n(Pavyzdžiui, **Paryškintas apskritimas** rodo, kad galite ištrinti ilgai paspausdami kortelę.)';

  @override
  String get hide => 'Slėpti';

  @override
  String importAdded(int count) {
    return 'Pridėta: $count';
  }

  @override
  String get importComplete => 'Importavimas baigtas';

  @override
  String get importDuplicateTitleError =>
      'Toks pavadinimas jau yra. Pakeiskite pavadinimą ir bandykite dar kartą.';

  @override
  String importErrorMessage(String error) {
    return 'Nepavyko importuoti failo:\\n$error';
  }

  @override
  String get importFailed => 'Importuoti nepavyko';

  @override
  String importFile(String fileName) {
    return 'Failas: $fileName';
  }

  @override
  String get importJsonFile => 'Importuoti JSON failą';

  @override
  String get importJsonFilePrompt => 'Importuokite JSON failą';

  @override
  String importSkipped(int count) {
    return 'Praleista: $count';
  }

  @override
  String importTotal(int count) {
    return 'Iš viso: $count';
  }

  @override
  String get importing => 'Importuojama...';

  @override
  String get inputModeTitle => 'Įvestis';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervalas: $seconds sek.';
  }

  @override
  String get invalidEmail => 'Įveskite galiojantį el. pašto adresą.';

  @override
  String get kakaoContinue => 'Tęsti su Kakao';

  @override
  String get labelLangCode => 'Kalbos kodas (pvz., en-US, ko-KR)';

  @override
  String get labelName => 'Vardas';

  @override
  String get labelNote => 'Pastaba';

  @override
  String get labelPOS => 'Kalbos dalis';

  @override
  String get labelRole => 'Rolė';

  @override
  String get labelSentence => 'Sakinys';

  @override
  String get labelSentenceCollection => 'Sakinių rinkinys';

  @override
  String get labelSentenceType => 'Sakinių tipas';

  @override
  String get labelShowMemorized => 'Baigta';

  @override
  String get labelType => 'Tipas:';

  @override
  String get labelWord => 'Žodis';

  @override
  String get labelWordbook => 'Žodžių knyga';

  @override
  String get language => 'Kalba';

  @override
  String get languageSettings => 'Kalbos nustatymai';

  @override
  String get languageSettingsTitle => 'Kalbos nustatymai';

  @override
  String get libTitleFirstMeeting => 'Pirmasis susitikimas';

  @override
  String get libTitleGreetings1 => 'Sveikinimai 1';

  @override
  String get libTitleNouns1 => 'Daiktavardžiai 1';

  @override
  String get libTitleVerbs1 => 'Veiksmažodžiai 1';

  @override
  String get listen => 'Klausytis';

  @override
  String get listening => 'Klausoma...';

  @override
  String get loadingParticipants => 'Įkeliami dalyviai...';

  @override
  String get location => 'Vieta';

  @override
  String get login => 'Prisijungti';

  @override
  String get logout => 'Atsijungti';

  @override
  String get logoutConfirmMessage =>
      'Ar tikrai norite atsijungti nuo šio įrenginio?';

  @override
  String get logoutConfirmTitle => 'Atsijungti';

  @override
  String get male => 'Vyras';

  @override
  String get manageParticipants => 'Tvarkyti dalyvius';

  @override
  String get manual => 'Rankinis įvedimas';

  @override
  String get markAsStudied => 'Pažymėti kaip išmoktą';

  @override
  String get materialInfo => 'Informacija apie medžiagą';

  @override
  String get me => 'Aš';

  @override
  String get menuDeviceImport => 'Importuoti medžiagą iš įrenginio';

  @override
  String get menuHelp => 'Pagalba';

  @override
  String get menuLanguageSettings => 'Kalbos nustatymai';

  @override
  String get menuOnlineLibrary => 'Internetinė biblioteka';

  @override
  String get menuSelectMaterialSet => 'Pasirinkite mokymosi medžiagų rinkinį';

  @override
  String get menuSettings => 'Kalbos nustatymai';

  @override
  String get menuTutorial => 'Mokymo turas';

  @override
  String get menuWebDownload => 'Pagrindinis puslapis';

  @override
  String get metadataDialogTitle => 'Išsamus klasifikavimas';

  @override
  String get metadataFormType => 'Gramatinė forma';

  @override
  String get metadataRootWord => 'Šakninis žodis';

  @override
  String get micButtonTooltip => 'Pradėti balso atpažinimą';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Šiuo metu pasirinkta medžiaga: $name';
  }

  @override
  String get mode2Title => 'Apžvalga';

  @override
  String get mode3Next => 'Kitas';

  @override
  String get mode3Start => 'Pradėti';

  @override
  String get mode3Stop => 'Sustabdyti';

  @override
  String get mode3TryAgain => 'Bandyti dar kartą';

  @override
  String get mySentenceCollection => 'Mano sakinių rinkinys';

  @override
  String get myWordbook => 'Mano žodynas';

  @override
  String get neutral => 'Neutralus';

  @override
  String get newSubjectName => 'Naujas žodyno/frazyno pavadinimas';

  @override
  String get next => 'Kitas';

  @override
  String get noDialogueHistory => 'Pokalbių istorijos nėra.';

  @override
  String get noInternetWarningMic =>
      'Nėra interneto ryšio. Balso atpažinimas neprisijungus gali neveikti.';

  @override
  String get noInternetWarningTranslate =>
      'Nėra interneto ryšio. Vertimo funkcija nepasiekiama neprisijungus. Naudokite peržiūros režimą.';

  @override
  String get noMaterialsInCategory => 'Šioje kategorijoje nėra medžiagos.';

  @override
  String get noParticipantsFound => 'Dalyvių nerasta.';

  @override
  String get noRecords => 'Šiai kalbai pasirinktų mokymosi įrašų nėra';

  @override
  String get noStudyMaterial => 'Nėra mokymosi medžiagos.';

  @override
  String get noTextToPlay => 'Nėra teksto, kurį būtų galima atkurti';

  @override
  String get noTranslationToSave => 'Nėra vertimo, kurį būtų galima išsaugoti';

  @override
  String get noVoiceDetected => 'Balsas neaptiktas';

  @override
  String get notSelected => '- Nepasirinkta -';

  @override
  String get onlineLibraryCheckInternet =>
      'Patikrinkite interneto ryšį arba bandykite vėliau.';

  @override
  String get onlineLibraryLoadFailed => 'Nepavyko įkelti medžiagos.';

  @override
  String get onlineLibraryNoMaterials => 'Medžiagos nerasta.';

  @override
  String get participantDeleted => 'Dalyvis ištrintas.';

  @override
  String get participantRename => 'Pervardyti dalyvį';

  @override
  String get partner => 'Partneris';

  @override
  String get partnerMode => 'Partnerio režimas';

  @override
  String get password => 'Slaptažodis';

  @override
  String get passwordTooShort => 'Slaptažodis turi būti bent 6 simbolių ilgio.';

  @override
  String get perfect => 'Puiku!';

  @override
  String get personaFriend => 'Vietinis draugas';

  @override
  String get personaGuide => 'Kelionių vadovas';

  @override
  String get personaTeacher => 'Anglų kalbos mokytojas';

  @override
  String get playAgain => 'Žaisti iš naujo';

  @override
  String playbackFailed(String error) {
    return 'Nepavyko atkurti: $error';
  }

  @override
  String get playing => 'Atkuriama...';

  @override
  String get posAdjective => 'Būdvardis';

  @override
  String get posAdverb => 'Prieveiksmis';

  @override
  String get posConjunction => 'Jungtukas';

  @override
  String get posInterjection => 'Šauktukas';

  @override
  String get posNoun => 'Daiktavardis';

  @override
  String get posPreposition => 'Prielinksnis/dalelytė';

  @override
  String get posPronoun => 'Įvardis';

  @override
  String get posVerb => 'Veiksmažodis';

  @override
  String get practiceModeTitle => 'Praktika';

  @override
  String get practiceWordsOnly => 'Praktikuoti tik žodžius';

  @override
  String progress(int current, int total) {
    return 'Eiga: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Rodyti $count neseniai sukurtus elementus';
  }

  @override
  String recognitionFailed(String error) {
    return 'Nepavyko atpažinti balso: $error';
  }

  @override
  String get recognized => 'Atpažinta';

  @override
  String get recognizedText => 'Atpažintas tarimas:';

  @override
  String get recordDeleted => 'Įrašas ištrintas';

  @override
  String get refresh => 'Atnaujinti';

  @override
  String get reset => 'Atkurti';

  @override
  String get resetPracticeHistory => 'Išvalyti praktikos istoriją';

  @override
  String get retry => 'Bandyti dar kartą?';

  @override
  String get reviewAll => 'Visos apžvalgos';

  @override
  String reviewCount(int count) {
    return 'Apžvalga $count kartų';
  }

  @override
  String get reviewModeTitle => 'Apžvalga';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Trečioji šalis';

  @override
  String get roleUser => 'Vartotojas';

  @override
  String get save => 'Išsaugoti';

  @override
  String get saveData => 'Išsaugoti duomenis';

  @override
  String saveFailed(String error) {
    return 'Nepavyko išsaugoti: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Pabandykite išsaugoti vertimus iš paieškos režimo';

  @override
  String get saved => 'Išsaugota';

  @override
  String get saving => 'Išsaugoma...';

  @override
  String score(String score) {
    return 'Tikslumas: $score%';
  }

  @override
  String get scoreLabel => 'Taškai';

  @override
  String get search => 'Paieška';

  @override
  String get searchConditions => 'Paieškos sąlygos';

  @override
  String get searchSentenceHint => 'Ieškoti sakinio...';

  @override
  String get searchWordHint => 'Ieškoti žodžio...';

  @override
  String get sectionSentence => 'Sakinių skiltis';

  @override
  String get sectionSentences => 'Sakiniai';

  @override
  String get sectionWord => 'Žodžio skiltis';

  @override
  String get sectionWords => 'Žodžiai';

  @override
  String get selectExistingSubject => 'Pasirinkti esamą pavadinimą';

  @override
  String get selectMaterialPrompt => 'Pasirinkite mokymosi medžiagą';

  @override
  String get selectMaterialSet => 'Pasirinkite mokymosi medžiagų rinkinį';

  @override
  String get selectPOS => 'Pasirinkite kalbos dalį';

  @override
  String get selectParticipants => 'Pasirinkti dalyvius';

  @override
  String get selectSentenceType => 'Pasirinkite sakinio tipą';

  @override
  String get selectStudyMaterial => 'Pasirinkite mokymosi medžiagą';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Sakinys';

  @override
  String get signUp => 'Registruotis';

  @override
  String get similarTextFound => 'Rastas panašus tekstas';

  @override
  String get skip => 'Praleisti';

  @override
  String get source => 'Šaltinis:';

  @override
  String get sourceLanguage => 'Pradinė kalba';

  @override
  String get sourceLanguageLabel => 'Mano kalba (Šaltinis)';

  @override
  String get speakNow => 'Kalbėkite dabar!';

  @override
  String get speaker => 'Kalbėtojas';

  @override
  String get speakerSelect => 'Pasirinkite kalbėtoją';

  @override
  String get speakingPractice => 'Kalbėjimo praktika';

  @override
  String get startChat => 'Pradėti pokalbį';

  @override
  String get startPractice => 'Pradėti praktiką';

  @override
  String get startTutorial => 'Pradėti mokymą';

  @override
  String get startWarning => 'Įspėjimas';

  @override
  String get startsWith => 'Pradedama raide';

  @override
  String get statusCheckEmail =>
      'Patikrinkite el. paštą ir užbaikite autentifikavimą.';

  @override
  String statusDownloading(Object name) {
    return 'Atsisiunčiama: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Importuoti nepavyko: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name importuota sėkmingai';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Prisijungimas atšauktas.';

  @override
  String statusLoginFailed(Object error) {
    return 'Prisijungti nepavyko: $error';
  }

  @override
  String get statusLoginSuccess => 'Prisijungta sėkmingai.';

  @override
  String get statusLogoutSuccess => 'Atsijungta.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Registruoti nepavyko: $error';
  }

  @override
  String get statusSigningUp => 'Registruojama...';

  @override
  String get stopPractice => 'Sustabdyti praktiką';

  @override
  String get studyComplete => 'Mokymasis baigtas';

  @override
  String studyRecords(int count) {
    return 'Mokymosi įrašai ($count)';
  }

  @override
  String get styleFormal => 'Oficialus';

  @override
  String get styleInformal => 'Neformalus';

  @override
  String get stylePolite => 'Mandagus';

  @override
  String get styleSlang => 'Šnekamoji kalba/Žargonas';

  @override
  String get subject => 'Tema:';

  @override
  String get swapLanguages => 'Sukeisti kalbas';

  @override
  String get switchToAi => 'Perjungti į AI režimą';

  @override
  String get switchToPartner => 'Perjungti į partnerio režimą';

  @override
  String get syncingData => 'Sinchronizuojami duomenys...';

  @override
  String get tabConversation => 'Pokalbis';

  @override
  String tabReview(int count) {
    return 'Apžvalga ($count)';
  }

  @override
  String get tabSentence => 'Sakinys';

  @override
  String get tabSpeaking => 'Kalbėjimas';

  @override
  String tabStudyMaterial(int count) {
    return 'Mokymosi medžiaga ($count)';
  }

  @override
  String get tabWord => 'Žodis';

  @override
  String get tagFormal => 'Mandagus';

  @override
  String get tagSelection => 'Žymos pasirinkimas';

  @override
  String get targetLanguage => 'Tikslinė kalba';

  @override
  String get targetLanguageFilter => 'Tikslinės kalbos filtras:';

  @override
  String get targetLanguageLabel => 'Mokymosi kalba (Tikslinė)';

  @override
  String get thinkingTimeDesc =>
      'Tai laikas, skirtas pagalvoti prieš atskleidžiant teisingą atsakymą.';

  @override
  String get thinkingTimeInterval => 'Atkūrimo intervalas';

  @override
  String get timeUp => 'Laikas baigėsi!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Pavadinimo žyma (archyvas)';

  @override
  String get tooltipDecrease => 'Sumažinti';

  @override
  String get tooltipIncrease => 'Padidinti';

  @override
  String get tooltipSearch => 'Paieška';

  @override
  String get tooltipSpeaking => 'Kalbėjimas';

  @override
  String get tooltipStudyReview => 'Mokymasis + apžvalga';

  @override
  String totalRecords(int count) {
    return 'Iš viso $count įrašų (peržiūrėti visus)';
  }

  @override
  String get translate => 'Versti';

  @override
  String get translating => 'Verčiama...';

  @override
  String get translation => 'Vertimas';

  @override
  String get translationComplete => 'Vertimas baigtas (reikia išsaugoti)';

  @override
  String translationFailed(String error) {
    return 'Nepavyko išversti: $error';
  }

  @override
  String get translationLimitExceeded => 'Viršytas vertimo limitas';

  @override
  String get translationLimitMessage =>
      'Išnaudojote visus nemokamus dienos vertimus (5 kartus).\\n\\nAr norite peržiūrėti skelbimą ir iš karto papildyti 5 kartus?';

  @override
  String get translationLoaded => 'Įkeltas išsaugotas vertimas';

  @override
  String get translationRefilled => 'Vertimų skaičius papildytas 5 kartus!';

  @override
  String get translationResultHint => 'Vertimo rezultatas - galima redaguoti';

  @override
  String get tryAgain => 'Pabandykite dar kartą';

  @override
  String get tutorialAiChatDesc =>
      'Praktikuokite realius pokalbius su AI personažu.';

  @override
  String get tutorialAiChatTitle => 'AI pokalbis';

  @override
  String get tutorialContextDesc =>
      'Net jei tai tas pats sakinys, galite jį išsaugoti atskirai parašydami situaciją (pvz., rytą, vakarą).';

  @override
  String get tutorialContextTitle => 'Situacijos / konteksto žymė';

  @override
  String get tutorialLangSettingsDesc =>
      'Nustato pradinę ir tikslinę kalbas, kurias norite versti.';

  @override
  String get tutorialLangSettingsTitle => 'Kalbos nustatymai';

  @override
  String get tutorialM1ToggleDesc =>
      'Perjunkite žodžių ir sakinių režimus čia.';

  @override
  String get tutorialM1ToggleTitle => 'Žodžių / sakinių režimas';

  @override
  String get tutorialM2DropdownDesc =>
      'Galite pasirinkti medžiagą, kurią norite studijuoti, naudodami viršutinį meniu.';

  @override
  String get tutorialM2ImportDesc =>
      'Importuoja JSON failą iš įrenginio aplanko.';

  @override
  String get tutorialM2ListDesc =>
      'Galite ištrinti ilgai paspausdami šią kortelę. Patikrinkite išsaugotus sakinius ir apverskite juos.';

  @override
  String get tutorialM2ListTitle => 'Mokymosi sąrašas';

  @override
  String get tutorialM2SearchDesc =>
      'Ieškokite išsaugotų žodžių ir sakinių, kad greitai juos rastumėte.';

  @override
  String get tutorialM2SelectDesc =>
      'Spustelėkite medžiagų rinkinio piktogramą (📚) viršutinėje programos juostoje, kad pasirinktumėte medžiagą, kurią norite studijuoti.';

  @override
  String get tutorialM2SelectTitle => 'Medžiagos pasirinkimas';

  @override
  String get tutorialM3IntervalDesc =>
      'Sureguliuoja laukimo laiką tarp sakinių.';

  @override
  String get tutorialM3IntervalTitle => 'Intervalo nustatymas';

  @override
  String get tutorialM3ResetDesc =>
      'Išvalykite pažangos būseną ir tikslumo balus, kad pradėtumėte iš naujo.';

  @override
  String get tutorialM3ResetTitle => 'Išvalyti istoriją';

  @override
  String get tutorialM3SelectDesc =>
      'Spustelėkite medžiagų rinkinio piktogramą (📚) viršutinėje programos juostoje, kad pasirinktumėte medžiagą, kurią norite praktikuoti.';

  @override
  String get tutorialM3SelectTitle => 'Medžiagos pasirinkimas';

  @override
  String get tutorialM3StartDesc =>
      'Spustelėkite atkūrimo mygtuką, kad klausytumėtės gimtakalbio kalbėtojo balso ir kartotumėte.';

  @override
  String get tutorialM3StartTitle => 'Pradėti praktiką';

  @override
  String get tutorialM3WordsDesc =>
      'Jei pažymėta, praktikuokite tik išsaugotus žodžius.';

  @override
  String get tutorialM3WordsTitle => 'Žodžių praktika';

  @override
  String get tutorialMicDesc =>
      'Galite įvesti balsu spustelėdami mikrofono mygtuką.';

  @override
  String get tutorialMicTitle => 'Įvestis balsu';

  @override
  String get tutorialSaveDesc =>
      'Išsaugokite išverstą rezultatą savo mokymosi įrašuose.';

  @override
  String get tutorialSaveTitle => 'Išsaugoti';

  @override
  String get tutorialSwapDesc => 'Apkeiskite savo ir mokymosi kalbas.';

  @override
  String get tutorialTabDesc => 'Čia galite pasirinkti norimą mokymosi režimą.';

  @override
  String get tutorialTapToContinue => 'Bakstelėkite ekraną, kad tęstumėte';

  @override
  String get tutorialTransDesc => 'Išverčia įvestą tekstą.';

  @override
  String get tutorialTransTitle => 'Versti';

  @override
  String get typeExclamation => 'Šauktukas';

  @override
  String get typeImperative => 'Įsakymas';

  @override
  String get typeQuestion => 'Klausimas';

  @override
  String get typeStatement => 'Teiginys';

  @override
  String get usageLimitTitle => 'Pasiektas limitas';

  @override
  String get useExistingText => 'Naudoti esamą tekstą';

  @override
  String get viewOnlineGuide => 'Peržiūrėti internetinį gidą';

  @override
  String get voluntaryTranslations => 'Savanoriški vertimai';

  @override
  String get watchAdAndRefill => 'Žiūrėti skelbimą ir papildyti (+5 kartus)';

  @override
  String get word => 'Žodis';

  @override
  String get wordDefenseDesc =>
      'Apginkite savo bazę sakydami žodžius prieš atvykstant priešui.';

  @override
  String get wordDefenseTitle => 'Žodžių gynyba';

  @override
  String get wordModeLabel => 'Žodžių režimas';

  @override
  String get yourPronunciation => 'Jūsų tarimas';

  @override
  String get ttsUnsupportedNatively =>
      'Šio įrenginio numatytieji nustatymai nepalaiko teksto į kalbą šia kalba.';

  @override
  String get homeTab => 'Vertimas';

  @override
  String get welcomeTitle => 'Sveiki atvykę į Talkie!';

  @override
  String get welcomeDesc =>
      'Sveiki atvykę į Talkie! Palaikome daugiau nei 80 kalbų visame pasaulyje su 100 % vientisumu, o naujas aukščiausios kokybės 3D dizainas ir optimizuotas našumas užtikrina nepriekaištingą mokymosi patirtį.';

  @override
  String get welcomeButton => 'Pradėti';

  @override
  String get labelDetails => 'Išsamūs nustatymai';

  @override
  String get translationResult => 'Vertimo rezultatas';

  @override
  String get inputContent => 'Įvesties turinys';

  @override
  String get translateNow => 'Versti dabar';

  @override
  String get tooltipSettingsConfirm => 'Patvirtinti nustatymus';

  @override
  String get hintNoteExample => 'Pvz.: kontekstas, homonimai ir kt.';

  @override
  String get hintTagExample => 'Pvz.: verslas, kelionės...';

  @override
  String get addNew => 'Pridėti naują';

  @override
  String get newNotebookTitle => 'Naujo sąsiuvinio pavadinimas';

  @override
  String get enterNameHint => 'Įveskite pavadinimą';

  @override
  String get add => 'Pridėti';

  @override
  String get openSettings => 'Atverti nustatymus';

  @override
  String get helpNotebook =>
      'Pasirinkite aplanką, kuriame norite išsaugoti išverstus rezultatus.';

  @override
  String get helpNote =>
      'Laisvai įrašykite žodžių reikšmes, sakinius ar situacijas.';

  @override
  String get helpTag =>
      'Įveskite raktinius žodžius, kad vėliau galėtumėte rūšiuoti ar ieškoti.';

  @override
  String get requestTranslation => 'Prašyti vertimo';

  @override
  String get statusRequestSuccess => 'Vertimo užklausa sėkminga.';

  @override
  String statusRequestFailed(String error) {
    return 'Vertimo užklausa nepavyko: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Mokymosi kalba nepalaikoma';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Pasirinkta medžiaga nepalaiko šiuo metu nustatytos mokymosi kalbos ($targetLang), todėl negalima jos išsaugoti lokaliai. Ar norite prašyti vertimo?';
  }
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'Tęsti su Kakao';

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
  String get helpTitle => 'Pagalba ir gidai';

  @override
  String get helpTabModes => 'Režimų paaiškinimas';

  @override
  String get helpTabJson => 'JSON formatas';

  @override
  String get helpTabTour => 'Apžiūrėti';

  @override
  String get helpMode1Desc =>
      'Atpažįsta jūsų balsą, verčia ir leidžia klausytis rezultatų.';

  @override
  String get helpMode1Details =>
      '• Kalbos nustatymas: pakeiskite kalbą spustelėdami viršutines/apatinės piktogramas\n• Žodžių / sakinių perjungimas: perjungti režimus\n• Įvestis balsu: spustelėkite mikrofono piktogramą, kad pradėtumėte / sustabdytumėte klausymąsi\n• Teksto įvestis: įveskite tiesiogiai, kad išverstumėte\n• Automatinė paieška: aptikite panašius esamus sakinius\n• Vertimas: spustelėkite vertimo mygtuką, kad išverstumėte iš karto\n• Klausymas: TTS atkūrimas naudojant garsiakalbio piktogramą\n• Išsaugoti: pridėkite įrašą su „Duomenų įrašymas“\n• Išvalyti: atkurkite pradinę įvestį';

  @override
  String get helpMode2Desc =>
      'Peržiūrėkite išsaugotus sakinius ir patikrinkite, ar jie įsiminti, naudodami automatinio slėpimo funkciją.';

  @override
  String get helpMode2Details =>
      '• Medžiagos pasirinkimas: pasirinkite konkretų rinkinį arba „Visos apžvalgos“\n• Kortelės apvertimas: patikrinkite vertimą naudodami „Rodyti / slėpti“ (automatinis mokymosi patikrinimas)\n• Klausymas: sakinio TTS atkūrimas\n• Mokymasis baigtas: pažymėkite varnelę (V), kad mokymasis būtų baigtas\n• Ištrinti: ilgai paspauskite kortelę, kad ištrintumėte įrašą\n• Paieškos sąlygos: filtruokite pagal žymą, naujausius elementus, pradžios raidę';

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
      '• AI pokalbiai: praktikuokite pokalbius kalbėdami savo kalba\n• Keli personažai: galima pakeisti oponento lytį / kalbą / vardą meniu virš baliono\n• Pridėti partnerį: pridėkite naują pašnekovą (Nepažįstamąjį) naudodami mygtuką +\n• GPS: situacijos komedija pagal dabartinę vietą\n• Automatinis išsaugojimas: automatinis pokalbio turinio vertimas ir išsaugojimas';

  @override
  String get helpJsonDesc =>
      'Jei norite importuoti mokymosi medžiagą, kuri bus naudojama 3 režime, kaip JSON failą, vadovaukitės šiuo formatu:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'Importuokite visą pokalbių rinkinį kaip JSON failą.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON struktūra: naudokite `dialogues` masyvą vietoj `entries`\n• Automatinis atkūrimas: atkuriamas pokalbio pavadinimas, personažas, pranešimų tvarka.\n• Vieta: importuoti pokalbiai rodomi AI pokalbių režimo skirtuke „Istorija“.';

  @override
  String get helpTourDesc =>
      '**Paryškintas apskritimas** nurodo pagrindines funkcijas.\n(Pavyzdžiui, **Paryškintas apskritimas** rodo, kad galite ištrinti ilgai paspausdami kortelę.)';

  @override
  String get partnerMode => 'Partnerio režimas';

  @override
  String get manual => 'Rankinis įvedimas';

  @override
  String get speaker => 'Kalbėtojas';

  @override
  String get switchToAi => 'Perjungti į AI režimą';

  @override
  String get switchToPartner => 'Perjungti į partnerio režimą';

  @override
  String get currentLocation => 'Dabartinė vieta';

  @override
  String get location => 'Vieta';

  @override
  String get partner => 'Partneris';

  @override
  String get me => 'Aš';

  @override
  String get currentMaterialLabel => 'Šiuo metu pasirinkta medžiaga:';

  @override
  String get basicMaterialRepository => 'Pagrindinė sakinių / žodžių saugykla';

  @override
  String get word => 'Žodis';

  @override
  String get sentence => 'Sakinys';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Apžvalga ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Mokymosi medžiaga ($count)';
  }

  @override
  String get mode2Title => 'Apžvalga';

  @override
  String get search => 'Paieška';

  @override
  String get translate => 'Versti';

  @override
  String get listen => 'Klausytis';

  @override
  String get saveData => 'Išsaugoti duomenis';

  @override
  String get saved => 'Išsaugota';

  @override
  String get delete => 'Ištrinti';

  @override
  String get materialInfo => 'Informacija apie medžiagą';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get confirm => 'Patvirtinti';

  @override
  String get refresh => 'Atnaujinti';

  @override
  String studyRecords(int count) {
    return 'Mokymosi įrašai ($count)';
  }

  @override
  String get targetLanguageFilter => 'Tikslinės kalbos filtras:';

  @override
  String get noRecords => 'Šiai kalbai pasirinktų mokymosi įrašų nėra';

  @override
  String get saveTranslationsFromSearch =>
      'Pabandykite išsaugoti vertimus iš paieškos režimo';

  @override
  String get flip => 'Rodyti';

  @override
  String get hide => 'Slėpti';

  @override
  String get deleteRecord => 'Ištrinti įrašą';

  @override
  String get confirmDelete => 'Ar tikrai norite ištrinti šį mokymosi įrašą?';

  @override
  String get recordDeleted => 'Įrašas ištrintas';

  @override
  String deleteFailed(String error) {
    return 'Ištrinti nepavyko: $error';
  }

  @override
  String get importJsonFile => 'Importuoti JSON failą';

  @override
  String get importing => 'Importuojama...';

  @override
  String get importComplete => 'Importavimas baigtas';

  @override
  String get importFailed => 'Importuoti nepavyko';

  @override
  String importFile(String fileName) {
    return 'Failas: $fileName';
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
    return 'Iš viso: $count';
  }

  @override
  String importAdded(int count) {
    return 'Pridėta: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Praleista: $count';
  }

  @override
  String get errors => 'Klaidos:';

  @override
  String get error => 'Klaida';

  @override
  String importErrorMessage(String error) {
    return 'Nepavyko importuoti failo:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get selectStudyMaterial => 'Pasirinkite mokymosi medžiagą';

  @override
  String get subject => 'Tema:';

  @override
  String get source => 'Šaltinis:';

  @override
  String get file => 'Failas:';

  @override
  String progress(int current, int total) {
    return 'Eiga: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Importuokite JSON failą';

  @override
  String get selectMaterialPrompt => 'Pasirinkite mokymosi medžiagą';

  @override
  String get studyComplete => 'Mokymasis baigtas';

  @override
  String get markAsStudied => 'Pažymėti kaip išmoktą';

  @override
  String get listening => 'Klausoma...';

  @override
  String get recognized => 'Atpažinta';

  @override
  String recognitionFailed(String error) {
    return 'Nepavyko atpažinti balso: $error';
  }

  @override
  String get checking => 'Tikrinama...';

  @override
  String get translating => 'Verčiama...';

  @override
  String get translationComplete => 'Vertimas baigtas (reikia išsaugoti)';

  @override
  String get translationLoaded => 'Įkeltas išsaugotas vertimas';

  @override
  String translationFailed(String error) {
    return 'Nepavyko išversti: $error';
  }

  @override
  String get enterTextToTranslate => 'Įveskite tekstą, kurį norite išversti';

  @override
  String get translationResultHint => 'Translation result - editable';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => 'Išsaugoma...';

  @override
  String get noTranslationToSave => 'Nėra vertimo, kurį būtų galima išsaugoti';

  @override
  String saveFailed(String error) {
    return 'Nepavyko išsaugoti: $error';
  }

  @override
  String get playing => 'Atkuriama...';

  @override
  String get noTextToPlay => 'Nėra teksto, kurį būtų galima atkurti';

  @override
  String playbackFailed(String error) {
    return 'Nepavyko atkurti: $error';
  }

  @override
  String get sourceLanguage => 'Pradinė kalba';

  @override
  String get targetLanguage => 'Tikslinė kalba';

  @override
  String get similarTextFound => 'Rastas panašus tekstas';

  @override
  String get useExistingText => 'Naudoti esamą tekstą';

  @override
  String get createNew => 'Tęsti su nauju sakiniu';

  @override
  String reviewCount(int count) {
    return 'Apžvalga $count kartų';
  }

  @override
  String get tabSpeaking => 'Kalbėjimas';

  @override
  String get speakingPractice => 'Kalbėjimo praktika';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervalas: $seconds sek.';
  }

  @override
  String get yourPronunciation => 'Jūsų tarimas';

  @override
  String get correctAnswer => 'Teisingas atsakymas';

  @override
  String score(String score) {
    return 'Tikslumas: $score%';
  }

  @override
  String get perfect => 'Puiku!';

  @override
  String get good => 'Gerai';

  @override
  String get tryAgain => 'Pabandykite dar kartą';

  @override
  String get startPractice => 'Pradėti praktiką';

  @override
  String get stopPractice => 'Sustabdyti praktiką';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Pradėti mokymą';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Įvestis balsu';

  @override
  String get tutorialMicDesc =>
      'Galite įvesti balsu spustelėdami mikrofono mygtuką.';

  @override
  String get tutorialTabDesc => 'Čia galite pasirinkti norimą mokymosi režimą.';

  @override
  String get tutorialTapToContinue => 'Bakstelėkite ekraną, kad tęstumėte';

  @override
  String get tutorialTransTitle => 'Versti';

  @override
  String get tutorialTransDesc => 'Išverčia įvestą tekstą.';

  @override
  String get tutorialSaveTitle => 'Išsaugoti';

  @override
  String get tutorialSaveDesc =>
      'Išsaugokite išverstą rezultatą savo mokymosi įrašuose.';

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
  String get tutorialAiChatTitle => 'AI pokalbis';

  @override
  String get tutorialAiChatDesc =>
      'Praktikuokite realius pokalbius su AI personažu.';

  @override
  String get tutorialM2SelectTitle => 'Medžiagos pasirinkimas';

  @override
  String get tutorialM2SelectDesc =>
      'Spustelėkite medžiagų rinkinio piktogramą (📚) viršutinėje programos juostoje, kad pasirinktumėte medžiagą, kurią norite studijuoti.';

  @override
  String get tutorialM2ListTitle => 'Mokymosi sąrašas';

  @override
  String get tutorialM2ListDesc =>
      'Galite ištrinti ilgai paspausdami šią kortelę. Patikrinkite išsaugotus sakinius ir apverskite juos.';

  @override
  String get tutorialM3SelectTitle => 'Medžiagos pasirinkimas';

  @override
  String get tutorialM3SelectDesc =>
      'Spustelėkite medžiagų rinkinio piktogramą (📚) viršutinėje programos juostoje, kad pasirinktumėte medžiagą, kurią norite praktikuoti.';

  @override
  String get tutorialM3IntervalTitle => 'Intervalo nustatymas';

  @override
  String get tutorialM3IntervalDesc =>
      'Sureguliuoja laukimo laiką tarp sakinių.';

  @override
  String get tutorialM3StartTitle => 'Pradėti praktiką';

  @override
  String get tutorialM3StartDesc =>
      'Spustelėkite atkūrimo mygtuką, kad klausytumėtės gimtakalbio kalbėtojo balso ir kartotumėte.';

  @override
  String get startWarning => 'Įspėjimas';

  @override
  String get noVoiceDetected => 'Balsas neaptiktas';

  @override
  String get tooltipSearch => 'Paieška';

  @override
  String get tooltipStudyReview => 'Mokymasis + apžvalga';

  @override
  String get tooltipSpeaking => 'Kalbėjimas';

  @override
  String get tooltipDecrease => 'Sumažinti';

  @override
  String get tooltipIncrease => 'Padidinti';

  @override
  String get languageSettings => 'Kalbos nustatymai';

  @override
  String get tutorialM2DropdownDesc =>
      'Galite pasirinkti medžiagą, kurią norite studijuoti, naudodami viršutinį meniu.';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc =>
      'Importuoja JSON failą iš įrenginio aplanko.';

  @override
  String get tutorialLangSettingsTitle => 'Kalbos nustatymai';

  @override
  String get tutorialLangSettingsDesc =>
      'Nustato pradinę ir tikslinę kalbas, kurias norite versti.';

  @override
  String get copy => 'Kopijuoti';

  @override
  String get copiedToClipboard => 'Nukopijuota į iškarpinę!';

  @override
  String get tutorialContextTitle => 'Situacijos / konteksto žymė';

  @override
  String get tutorialContextDesc =>
      'Net jei tai tas pats sakinys, galite jį išsaugoti atskirai parašydami situaciją (pvz., rytą, vakarą).';

  @override
  String get thinkingTimeInterval => 'Playback Delay';

  @override
  String get thinkingTimeDesc =>
      'Tai laikas, skirtas pagalvoti prieš atskleidžiant teisingą atsakymą.';

  @override
  String get autoPlay => 'Automatinis atkūrimas';

  @override
  String get timeUp => 'Laikas baigėsi!';

  @override
  String get gameModeTitle => 'Žaidimo režimas';

  @override
  String get gameModeDesc =>
      'Pasirinkite žaidimo režimą, kurį norite praktikuoti';

  @override
  String get wordDefenseTitle => 'Žodžių gynyba';

  @override
  String get wordDefenseDesc =>
      'Apginkite savo bazę sakydami žodžius prieš atvykstant priešui.';

  @override
  String get dialogueQuestTitle => 'Dialogo užduotis';

  @override
  String get dialogueQuestDesc =>
      'Praktikuokite pokalbius per situacijų komediją. Pasirinkite tinkamą atsakymą ir pasakykite.';

  @override
  String get translation => 'Translation';

  @override
  String get labelType => 'Tipas:';

  @override
  String get labelWord => 'Žodis';

  @override
  String get labelSentence => 'Sakinys';

  @override
  String get contextTagLabel =>
      'Kontekstas / situacija (neprivaloma) – pvz., Labas rytas, Mandagus';

  @override
  String get contextTagHint =>
      'Parašykite situaciją, kad būtų lengviau atskirti vėliau';

  @override
  String get usageLimitTitle => 'Pasiektas limitas';

  @override
  String get translationLimitExceeded => 'Viršytas vertimo limitas';

  @override
  String get translationLimitMessage =>
      'Išnaudojote visus nemokamus dienos vertimus (5 kartus).\\n\\nAr norite peržiūrėti skelbimą ir iš karto papildyti 5 kartus?';

  @override
  String get watchAdAndRefill => 'Žiūrėti skelbimą ir papildyti (+5 kartus)';

  @override
  String get translationRefilled => 'Vertimų skaičius papildytas 5 kartus!';

  @override
  String get adLoading =>
      'Įkeliamas skelbimas. Bandykite dar kartą po kurio laiko.';

  @override
  String get reviewAll => 'Visos apžvalgos';

  @override
  String totalRecords(int count) {
    return 'Iš viso $count įrašų (peržiūrėti visus)';
  }

  @override
  String get filterAll => 'Viskas';

  @override
  String get practiceWordsOnly => 'Praktikuoti tik žodžius';

  @override
  String get resetPracticeHistory => 'Išvalyti praktikos istoriją';

  @override
  String get retry => 'Bandyti dar kartą?';

  @override
  String get noStudyMaterial => 'Nėra mokymosi medžiagos.';

  @override
  String get gameOver => 'Žaidimas baigtas';

  @override
  String get playAgain => 'Žaisti iš naujo';

  @override
  String get speakNow => 'Kalbėkite dabar!';

  @override
  String get scoreLabel => 'Taškai';

  @override
  String get viewOnlineGuide => 'Peržiūrėti internetinį gidą';

  @override
  String get getMaterials => 'Gauti medžiagų';

  @override
  String get swapLanguages => 'Sukeisti kalbas';

  @override
  String get next => 'Kitas';

  @override
  String get wordModeLabel => 'Žodžių režimas';

  @override
  String get accuracy => 'Tikslumas';

  @override
  String get basicDefault => 'Pagrindinis';

  @override
  String get basic => 'Pagrindinis';

  @override
  String get tutorialM3WordsTitle => 'Žodžių praktika';

  @override
  String get tutorialM3WordsDesc =>
      'Jei pažymėta, praktikuokite tik išsaugotus žodžius.';

  @override
  String get enterTextHint => 'Įveskite tekstą, kurį norite išversti';

  @override
  String get micButtonTooltip => 'Pradėti balso atpažinimą';

  @override
  String get menuHelp => 'Pagalba';

  @override
  String get menuWebDownload => 'Pagrindinis puslapis';

  @override
  String get menuDeviceImport => 'Importuoti medžiagą iš įrenginio';

  @override
  String get menuSettings => 'Kalbos nustatymai';

  @override
  String get basicWords => 'Pagrindinė žodžių saugykla';

  @override
  String get basicSentences => 'Pagrindinė sakinių saugykla';

  @override
  String get selectMaterialSet => 'Pasirinkite mokymosi medžiagų rinkinį';

  @override
  String get sectionWords => 'Žodžiai';

  @override
  String get sectionSentences => 'Sakiniai';

  @override
  String get languageSettingsTitle => 'Kalbos nustatymai';

  @override
  String get sourceLanguageLabel => 'Mano kalba (Šaltinis)';

  @override
  String get targetLanguageLabel => 'Mokymosi kalba (Tikslinė)';

  @override
  String get mode3Start => 'Pradėti';

  @override
  String get mode3Stop => 'Sustabdyti';

  @override
  String get mode3Next => 'Kitas';

  @override
  String get mode3TryAgain => 'Bandyti dar kartą';

  @override
  String get tutorialM3ResetTitle => 'Išvalyti istoriją';

  @override
  String get tutorialSwapDesc => 'Apkeiskite savo ir mokymosi kalbas.';

  @override
  String get recognizedText => 'Atpažintas tarimas:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Išvalykite pažangos būseną ir tikslumo balus, kad pradėtumėte iš naujo.';

  @override
  String get menuSelectMaterialSet => 'Pasirinkite mokymosi medžiagų rinkinį';

  @override
  String get sectionWord => 'Žodžio skiltis';

  @override
  String get sectionSentence => 'Sakinių skiltis';

  @override
  String get tabWord => 'Žodis';

  @override
  String get tabSentence => 'Sakinys';

  @override
  String get errorProfanity =>
      'Negalima išversti, nes yra necenzūrinių žodžių.';

  @override
  String get errorHateSpeech =>
      'Negalima išversti, nes yra neapykantą kurstančių kalbų.';

  @override
  String get errorSexualContent =>
      'Negalima išversti, nes yra seksualinio turinio.';

  @override
  String get errorOtherSafety =>
      'Vertimas atsisakytas dėl AI saugos politikos.';

  @override
  String get clearAll => 'Išvalyti viską';

  @override
  String get disambiguationTitle => 'Pasirinkite reikšmę';

  @override
  String get disambiguationPrompt => 'Kaip norite išversti?';

  @override
  String get skip => 'Praleisti';

  @override
  String get inputModeTitle => 'Įvestis';

  @override
  String get reviewModeTitle => 'Apžvalga';

  @override
  String get practiceModeTitle => 'Praktika';

  @override
  String get chatHistoryTitle => 'Pokalbių istorija';

  @override
  String get chatNew => 'Naujas pokalbis';

  @override
  String get chatNewChat => 'Naujas pokalbis';

  @override
  String get chatChoosePersona => 'Pasirinkite personažą';

  @override
  String get chatTypeHint => 'Įveskite pranešimą...';

  @override
  String chatFailed(Object error) {
    return 'Nepavyko kalbėtis: $error';
  }

  @override
  String get chatNoConversations => 'Dar nėra pokalbių';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt => 'Pradėkite naują pokalbį praktikai!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Pokalbio ištrauka ($speaker)';
  }

  @override
  String get personaTeacher => 'Anglų kalbos mokytojas';

  @override
  String get personaGuide => 'Kelionių vadovas';

  @override
  String get personaFriend => 'Vietinis draugas';

  @override
  String get chatUntitled => 'Pokalbis be pavadinimo';

  @override
  String get chatAiChat => 'Pokalbis';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Šiuo metu pasirinkta medžiaga: $name';
  }

  @override
  String get basicWordRepository => 'Pagrindinė žodžių saugykla';

  @override
  String get basicSentenceRepository => 'Pagrindinė sakinių saugykla';

  @override
  String get chatEndTitle => 'Baigti ir išsaugoti pokalbį';

  @override
  String get chatEndMessage => 'Ar norite baigti pokalbį?';

  @override
  String get chatSaveAndExit => 'Išsaugoti ir išeiti';

  @override
  String get errorSelectCategory => 'Pirmiausia pasirinkite žodį ar sakinį!';

  @override
  String get tutorialM1ToggleTitle => 'Žodžių / sakinių režimas';

  @override
  String get tutorialM1ToggleDesc =>
      'Perjunkite žodžių ir sakinių režimus čia.';

  @override
  String get metadataDialogTitle => 'Išsamus klasifikavimas';

  @override
  String get tagFormal => 'Mandagus';

  @override
  String get selectPOS => 'Pasirinkite kalbos dalį';

  @override
  String get selectSentenceType => 'Pasirinkite sakinio tipą';

  @override
  String get metadataRootWord => 'Šakninis žodis';

  @override
  String get posNoun => 'Daiktavardis';

  @override
  String get posVerb => 'Veiksmažodis';

  @override
  String get posAdjective => 'Būdvardis';

  @override
  String get posAdverb => 'Prieveiksmis';

  @override
  String get posPronoun => 'Įvardis';

  @override
  String get posPreposition => 'Prielinksnis/dalelytė';

  @override
  String get posConjunction => 'Jungtukas';

  @override
  String get posInterjection => 'Šauktukas';

  @override
  String get typeStatement => 'Teiginys';

  @override
  String get typeQuestion => 'Klausimas';

  @override
  String get typeExclamation => 'Šauktukas';

  @override
  String get typeImperative => 'Įsakymas';

  @override
  String get labelNote => 'Pastaba';

  @override
  String get labelShowMemorized => 'Baigta';

  @override
  String get titleTagSelection => 'Pavadinimo žyma (archyvas)';

  @override
  String get generalTags => 'Bendrosios žymos';

  @override
  String get tagSelection => 'Žymos pasirinkimas';

  @override
  String get metadataFormType => 'Gramatinė forma';

  @override
  String get formInfinitive => 'Bendratis/Esamasis laikas';

  @override
  String get formPast => 'Būtasis laikas';

  @override
  String get formPastParticiple => 'Būtasis dalyvis';

  @override
  String get formPresentParticiple => 'Esamasis dalyvis (ing)';

  @override
  String get formPresent => 'Esamasis laikas';

  @override
  String get formThirdPersonSingular => 'Trečiasis asmuo vienaskaita';

  @override
  String get formPlural => 'Daugiskaita';

  @override
  String get formSingular => 'Vienaskaita';

  @override
  String get caseSubject => 'Vardininkas';

  @override
  String get caseObject => 'Galima';

  @override
  String get casePossessive => 'Giminininkas';

  @override
  String get casePossessivePronoun => 'Savybinis įvardis';

  @override
  String get caseReflexive => 'Sangrąžinis';

  @override
  String get formPositive => 'Teigiamas';

  @override
  String get formComparative => 'Lyginamasis laipsnis';

  @override
  String get formSuperlative => 'Aukščiausiasis laipsnis';

  @override
  String get searchConditions => 'Paieškos sąlygos';

  @override
  String recentNItems(int count) {
    return 'Rodyti $count neseniai sukurtus elementus';
  }

  @override
  String get startsWith => 'Pradedama raide';

  @override
  String get reset => 'Atkurti';

  @override
  String get participantRename => 'Pervardyti dalyvį';

  @override
  String get labelName => 'Vardas';

  @override
  String get gender => 'Lytis';

  @override
  String get language => 'Kalba';

  @override
  String get male => 'Vyras';

  @override
  String get female => 'Moteris';

  @override
  String get neutral => 'Neutralus';

  @override
  String get chatAllConversations => 'Visi pokalbiai';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Ar tikrai norite ištrinti šį pokalbį?\nIštrintų pokalbių atkurti negalima.';

  @override
  String get notSelected => '- Nepasirinkta -';

  @override
  String get myWordbook => 'Mano žodynas';

  @override
  String get mySentenceCollection => 'Mano sakinių rinkinys';

  @override
  String get newSubjectName => 'Naujas žodyno/frazyno pavadinimas';

  @override
  String get enterNewSubjectName => 'Įveskite naują pavadinimą';

  @override
  String get addNewSubject => 'Pridėti naują pavadinimą';

  @override
  String get selectExistingSubject => 'Pasirinkti esamą pavadinimą';

  @override
  String get addTagHint => 'Pridėti žymę...';

  @override
  String get save => 'Išsaugoti';

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
      'Patikrinkite el. paštą ir užbaikite autentifikavimą.';

  @override
  String get emailAlreadyInUse =>
      'Šis el. paštas jau naudojamas. Prisijunkite arba atkurkite slaptažodį.';
}

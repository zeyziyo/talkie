// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get accuracy => 'Dokładność';

  @override
  String get adLoading => 'Trwa ładowanie reklamy. Spróbuj ponownie za chwilę.';

  @override
  String get add => 'Dodaj';

  @override
  String get addNew => 'Dodaj nowy';

  @override
  String get addNewSubject => 'Dodaj nowy tytuł';

  @override
  String get addTagHint => 'Dodaj tag...';

  @override
  String get alreadyHaveAccount => 'Masz już konto?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Automatyczne odtwarzanie';

  @override
  String get basic => 'Podstawowy';

  @override
  String get basicDefault => 'Podstawowy';

  @override
  String get basicMaterialRepository => 'Podstawowe repozytorium zdań/słów';

  @override
  String get basicSentenceRepository => 'Podstawowy magazyn zdań';

  @override
  String get basicSentences => 'Podstawowe repozytorium zdań';

  @override
  String get basicWordRepository => 'Podstawowy magazyn słów';

  @override
  String get basicWords => 'Podstawowe repozytorium słów';

  @override
  String get cancel => 'Anuluj';

  @override
  String get caseObject => 'Biernik';

  @override
  String get casePossessive => 'Dopełniacz';

  @override
  String get casePossessivePronoun => 'Zaimek dzierżawczy';

  @override
  String get caseReflexive => 'Zwrotny';

  @override
  String get caseSubject => 'Mianownik';

  @override
  String get checking => 'Sprawdzanie...';

  @override
  String get clearAll => 'Wyczyść wszystko';

  @override
  String get confirm => 'Potwierdź';

  @override
  String get confirmDelete => 'Czy na pewno usunąć ten wpis?';

  @override
  String get contextTagHint =>
      'Określ kontekst, aby ułatwić późniejsze odróżnienie';

  @override
  String get contextTagLabel =>
      'Kontekst/sytuacja (opcjonalnie) - np. powitanie, formalny';

  @override
  String get copiedToClipboard => 'Skopiowano do schowka!';

  @override
  String get copy => 'Kopiuj';

  @override
  String get correctAnswer => 'Poprawna Odpowiedź';

  @override
  String get createNew => 'Utwórz Nowy';

  @override
  String get currentLocation => 'Bieżąca lokalizacja';

  @override
  String get currentMaterialLabel => 'Aktualnie wybrane materiały:';

  @override
  String get delete => 'Usuń';

  @override
  String deleteFailed(String error) {
    return 'Usuwanie nieudane: $error';
  }

  @override
  String get deleteRecord => 'Usuń wpis';

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => 'Nie masz konta?';

  @override
  String get email => 'Email';

  @override
  String get emailAlreadyInUse =>
      'Ten adres e-mail jest już zarejestrowany. Zaloguj się lub skorzystaj z opcji odzyskiwania hasła.';

  @override
  String get enterNameHint => 'Wprowadź nazwę';

  @override
  String get enterNewSubjectName => 'Wprowadź nowy tytuł';

  @override
  String get enterSentenceHint => 'Wpisz zdanie...';

  @override
  String get enterTextHint => 'Wprowadź tekst do przetłumaczenia';

  @override
  String get enterTextToTranslate => 'Wpisz tekst do przetłumaczenia';

  @override
  String get enterWordHint => 'Wpisz słowo...';

  @override
  String get error => 'Błąd';

  @override
  String get errorHateSpeech =>
      'Zawiera mowę nienawiści, tłumaczenie niemożliwe.';

  @override
  String get errorOtherSafety =>
      'Tłumaczenie odrzucone ze względu na zasady bezpieczeństwa AI.';

  @override
  String get errorProfanity => 'Zawiera wulgaryzmy, tłumaczenie niemożliwe.';

  @override
  String get errorSelectCategory => 'Najpierw wybierz słowo lub zdanie!';

  @override
  String get errorSexualContent =>
      'Zawiera treści o charakterze seksualnym, tłumaczenie niemożliwe.';

  @override
  String get errors => 'Błędy:';

  @override
  String get extractedText => 'Rozpoznany tekst';

  @override
  String get female => 'Kobieta';

  @override
  String get file => 'Plik:';

  @override
  String get filterAll => 'Wszystkie';

  @override
  String get flip => 'Odwróć';

  @override
  String get formComparative => 'Stopień wyższy';

  @override
  String get formInfinitive => 'Bezokolicznik/Forma podstawowa';

  @override
  String get formPast => 'Czas przeszły';

  @override
  String get formPastParticiple => 'Imiesłów bierny';

  @override
  String get formPlural => 'Liczba mnoga';

  @override
  String get formPositive => 'Stopień równy';

  @override
  String get formPresent => 'Czas teraźniejszy';

  @override
  String get formPresentParticiple => 'Imiesłów czynny (ing)';

  @override
  String get formSingular => 'Liczba pojedyncza';

  @override
  String get formSuperlative => 'Stopień najwyższy';

  @override
  String get formThirdPersonSingular => '3 osoba liczby pojedynczej';

  @override
  String get gameModeDesc => 'Wybierz tryb gry do ćwiczeń';

  @override
  String get gameModeTitle => 'Tryb gry';

  @override
  String get gameOver => 'Koniec gry';

  @override
  String get gender => 'Płeć';

  @override
  String get generalTags => 'Tagi ogólne';

  @override
  String get getMaterials => 'Pobierz materiały';

  @override
  String get good => 'Dobrze';

  @override
  String get googleContinue => 'Kontynuuj z Google';

  @override
  String get helpJsonDesc =>
      'Aby zaimportować materiały w Trybie 3, utwórz plik JSON o strukturze:';

  @override
  String get helpJsonTypeSentence => 'Zdanie';

  @override
  String get helpJsonTypeWord => 'Słowo';

  @override
  String get helpMode1Desc =>
      'Zacznij naukę języków w najbardziej intuicyjny sposób dzięki mikrofonowi 3D premium i ikonom dużych klawiatur.';

  @override
  String get helpMode1Details =>
      '• Ustawienia języka: Sprawdź swój język i język, którego się uczysz, za pomocą przycisku języka u góry ekranu głównego i zmień język nauki.\n• Proste wprowadzanie: Wprowadzaj natychmiastowo za pomocą dużego mikrofonu i okna tekstowego pośrodku.\n• Sprawdź ustawienia: Po zakończeniu wprowadzania naciśnij niebieski przycisk zatwierdzenia po prawej stronie. Pojawi się okno ustawień szczegółowych.\n• Ustawienia szczegółowe: W wyświetlonym oknie dialogowym możesz określić zbiór materiałów, adnotacje (notatki) i tagi, które chcesz zapisać.\n• Przetłumacz teraz: Po zakończeniu ustawień naciśnij zielony przycisk tłumaczenia, a sztuczna inteligencja natychmiast dokona tłumaczenia.\n• Automatyczne wyszukiwanie: Wykrywa i wyświetla podobne istniejące tłumaczenia w czasie rzeczywistym podczas wprowadzania.\n• Słuchaj i zapisuj: Posłuchaj wymowy za pomocą ikony głośnika pod wynikiem tłumaczenia i dodaj do listy nauki za pomocą „Zapisz dane”.';

  @override
  String get helpMode2Desc =>
      'Powtarzaj zapisane zdania z ukrywaniem tłumaczeń.';

  @override
  String get helpMode2Details =>
      '• Wybór materiałów: Użyj \'Wybierz zestaw do nauki\' lub \'Biblioteki online\' w menu (⋮) w prawym górnym rogu\n• Odwracanie kart: Sprawdzaj tłumaczenia za pomocą \'Pokaż/Ukryj\'\n• Słuchanie: Odtwarzaj wymowę za pomocą ikony głośnika\n• Ukończono naukę: Zaznacz symbolem zaznaczenia (V), aby oznaczyć jako ukończone\n• Usuwanie: Długie naciśnięcie karty (długie kliknięcie), aby usunąć historię\n• Wyszukiwanie i filtrowanie: Obsługa paska wyszukiwania (inteligentne wyszukiwanie w czasie rzeczywistym) oraz filtrów tagów i początkowych liter';

  @override
  String get helpMode3Desc =>
      'Słuchaj zdań i ćwicz wymowę, powtarzając je (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Wybierz Materiał: Wybierz pakiet\n• Interwał: [-] [+] czas oczekiwania (3s-60s)\n• Start/Stop: Kontrola sesji\n• Mów: Słuchaj audio i powtarzaj\n• Feedback: Wynik dokładności (0-100)\n• Ponów: Przycisk ponawiania jeśli głos niewykryty';

  @override
  String get helpNote =>
      'Zapisuj dowolnie znaczenie słów, przykłady lub sytuacje.';

  @override
  String get helpNotebook =>
      'Wybierz folder, w którym chcesz zapisać przetłumaczone wyniki.';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabModes => 'Tryby';

  @override
  String get helpTabQuickStart => 'Szybki start';

  @override
  String get helpTabTour => 'Wycieczka';

  @override
  String get helpTag =>
      'Wprowadź słowa kluczowe do późniejszej klasyfikacji lub wyszukiwania.';

  @override
  String get helpTitle => 'Pomoc i Przewodnik';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Ukryj';

  @override
  String get hintNoteExample => 'Np. kontekst, homonimy itp.';

  @override
  String get hintTagExample => 'Np. biznes, podróże...';

  @override
  String get homeTab => 'Tłumacz';

  @override
  String importAdded(int count) {
    return 'Dodano: $count';
  }

  @override
  String get importComplete => 'Import Zakończony';

  @override
  String get importDuplicateTitleError =>
      'Materiał o takim tytule już istnieje. Zmień tytuł i spróbuj ponownie.';

  @override
  String importErrorMessage(String error) {
    return 'Nie udało się zaimportować pliku:\\n$error';
  }

  @override
  String get importFailed => 'Import Nieudany';

  @override
  String importFile(String fileName) {
    return 'Plik: $fileName';
  }

  @override
  String importFolderSuccess(num files, num entries) {
    return 'Zaimportowano $files plików, $entries pozycji.';
  }

  @override
  String get importJsonFile => 'Import JSON';

  @override
  String get importJsonFilePrompt => 'Proszę zaimportować plik JSON';

  @override
  String importSkipped(int count) {
    return 'Pominięto: $count';
  }

  @override
  String get importSourceFile => 'Pojedynczy plik JSON';

  @override
  String get importSourceFolder => 'Folder (struktura biblioteki językowej)';

  @override
  String get importSourceTitle => 'Wybierz źródło importu';

  @override
  String get importSourceZip => 'Plik ZIP (skompresowany folder)';

  @override
  String importTotal(int count) {
    return 'Razem: $count';
  }

  @override
  String get importing => 'Importowanie...';

  @override
  String get inputContent => 'Treść wejściowa';

  @override
  String get inputLanguage => 'Język wejściowy';

  @override
  String get inputModeTitle => 'Wprowadzanie';

  @override
  String intervalSeconds(int seconds) {
    return 'Interwał: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Wprowadź poprawny adres e-mail.';

  @override
  String get kakaoContinue => 'Kontynuuj z Kakao';

  @override
  String get labelDetails => 'Ustawienia szczegółowe';

  @override
  String get labelFilterMaterial => 'Materiały';

  @override
  String get labelFilterTag => 'Tagi';

  @override
  String get labelLangCode => 'Kod języka (np. en-US, ko-KR)';

  @override
  String get labelNote => 'Notatka';

  @override
  String get labelPOS => 'Część mowy';

  @override
  String get labelSentence => 'Zdanie';

  @override
  String get labelSentenceCollection => 'Zbiór zdań';

  @override
  String get labelSentenceType => 'Typ zdania';

  @override
  String get labelShowMemorized => 'Zapamiętane';

  @override
  String get labelType => 'Typ:';

  @override
  String get labelWord => 'Słowo';

  @override
  String get labelWordbook => 'Zbiór słów';

  @override
  String get language => 'Język';

  @override
  String get languageSettings => 'Ustawienia języka';

  @override
  String get languageSettingsTitle => 'Ustawienia języka';

  @override
  String get libTitleFirstMeeting => 'Pierwsze spotkanie';

  @override
  String get libTitleGreetings1 => 'Powitania 1';

  @override
  String get libTitleNouns1 => 'Rzeczowniki 1';

  @override
  String get libTitleVerbs1 => 'Czasowniki 1';

  @override
  String get listen => 'Słuchaj';

  @override
  String get listening => 'Słuchanie...';

  @override
  String get location => 'Lokalizacja';

  @override
  String get login => 'Zaloguj się';

  @override
  String get logout => 'Wyloguj się';

  @override
  String get logoutConfirmMessage =>
      'Czy na pewno chcesz się wylogować z tego urządzenia?';

  @override
  String get logoutConfirmTitle => 'Wyloguj się';

  @override
  String get male => 'Mężczyzna';

  @override
  String get manual => 'Ręczne wprowadzanie';

  @override
  String get markAsStudied => 'Oznacz jako Przestudiowane';

  @override
  String get materialInfo => 'Informacje o materiale';

  @override
  String get menuDeviceImport => 'Importuj materiały z urządzenia';

  @override
  String get menuHelp => 'Pomoc';

  @override
  String get menuLanguageSettings => 'Ustawienia języka';

  @override
  String get menuOnlineLibrary => 'Biblioteka online';

  @override
  String get menuSelectMaterialSet => 'Wybierz materiał do nauki';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Samouczek';

  @override
  String get menuWebDownload => 'Instrukcja obsługi';

  @override
  String get metadataDialogTitle => 'Szczegółowa kategoryzacja';

  @override
  String get metadataFormType => 'Forma gramatyczna';

  @override
  String get metadataRootWord => 'Forma podstawowa (Root Word)';

  @override
  String get micButtonTooltip => 'Rozpocznij rozpoznawanie mowy';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Aktualnie wybrany zbiór materiałów: $name';
  }

  @override
  String get mode2Title => 'Powtórka';

  @override
  String get mode3Next => 'Dalej';

  @override
  String get mode3Start => 'Start';

  @override
  String get mode3Stop => 'Stop';

  @override
  String get mode3TryAgain => 'Spróbuj ponownie';

  @override
  String get mySentenceCollection => 'Mój zbiór zdań';

  @override
  String get myWordbook => 'Mój słownik';

  @override
  String get neutral => 'Neutralny';

  @override
  String get newNotebookTitle => 'Nazwa nowego notatnika';

  @override
  String get newSubjectName => 'Nowy tytuł zestawu słówek/zdań';

  @override
  String get next => 'Dalej';

  @override
  String get noDataForLanguage =>
      'Brak danych szkoleniowych w lokalnej bazie danych dla wybranego języka. Pobierz dane lub wybierz inny język.';

  @override
  String get noMaterialsInCategory => 'Brak materiałów w tej kategorii.';

  @override
  String get noRecords => 'Brak wpisów dla wybranego języka';

  @override
  String get noStudyMaterial => 'Brak materiałów do nauki.';

  @override
  String get noTextToPlay => 'Brak tekstu do odtworzenia';

  @override
  String get noTranslationToSave => 'Brak tłumaczenia do zapisu';

  @override
  String get noVoiceDetected => 'Nie wykryto głosu';

  @override
  String get notSelected => '- Nie wybrano -';

  @override
  String get noteGuidance =>
      'Gdzie wpisujesz dodatkowe szczegóły, aby uzyskać dokładniejsze tłumaczenie';

  @override
  String get onlineLibraryCheckInternet =>
      'Sprawdź połączenie z internetem lub spróbuj ponownie później.';

  @override
  String get onlineLibraryLoadFailed => 'Nie udało się załadować materiałów.';

  @override
  String get onlineLibraryNoMaterials => 'Brak materiałów.';

  @override
  String get openSettings => 'Otwórz ustawienia';

  @override
  String get password => 'Hasło';

  @override
  String get passwordTooShort => 'Hasło musi mieć co najmniej 6 znaków.';

  @override
  String get perfect => 'Perfekcyjnie!';

  @override
  String get pickGallery => 'Wybierz z galerii';

  @override
  String get playAgain => 'Zagraj ponownie';

  @override
  String playbackFailed(String error) {
    return 'Odtwarzanie nieudane: $error';
  }

  @override
  String get playing => 'Odtwarzanie...';

  @override
  String get posAdjective => 'Przymiotnik';

  @override
  String get posAdverb => 'Przysłówek';

  @override
  String get posArticle => 'Rodzajnik';

  @override
  String get posConjunction => 'Spójnik';

  @override
  String get posInterjection => 'Wykrzyknik';

  @override
  String get posNoun => 'Rzeczownik';

  @override
  String get posParticle => 'Partykuła';

  @override
  String get posPreposition => 'Przyimek';

  @override
  String get posPronoun => 'Zaimek';

  @override
  String get posVerb => 'Czasownik';

  @override
  String get practiceModeTitle => 'Ćwiczenia';

  @override
  String get practiceWordsOnly => 'Tylko ćwiczenie słów';

  @override
  String get processing => 'Przetwarzanie...';

  @override
  String progress(int current, int total) {
    return 'Postęp: $current / $total';
  }

  @override
  String get quickStartStep1Desc =>
      'Najpierw ustaw swój język i język nauki w Menu > Ustawienia języka.';

  @override
  String get quickStartStep1Title => '1. Ustaw język';

  @override
  String get quickStartStep2Desc =>
      'Twórz własne karty do nauki w kolejności: wprowadź (mikrofon/klawiatura) -> przetłumacz -> zapisz.';

  @override
  String get quickStartStep2Title => '2. Podstawowy tok pracy';

  @override
  String get quickStartStep3Desc =>
      'Ćwicz na czacie i ćwicz wymowę, patrząc na tekst w zakładce Ćwiczenia wymowy.';

  @override
  String get quickStartStep3Title => '3. Wykorzystaj tryby';

  @override
  String recentNItems(int count) {
    return 'Pokaż $count ostatnio utworzonych';
  }

  @override
  String recognitionFailed(String error) {
    return 'Rozpoznawanie mowy nieudane: $error';
  }

  @override
  String get recognized => 'Rozpoznawanie zakończone';

  @override
  String get recognizedText => 'Rozpoznany tekst:';

  @override
  String get recordDeleted => 'Wpis usunięty pomyślnie';

  @override
  String get refresh => 'Odśwież';

  @override
  String get requestTranslation => 'Poproś o tłumaczenie';

  @override
  String get reset => 'Zresetuj';

  @override
  String get resetPracticeHistory => 'Zresetuj historię ćwiczeń';

  @override
  String get retry => 'Spróbować ponownie?';

  @override
  String get reviewAll => 'Powtórz wszystko';

  @override
  String reviewCount(int count) {
    return 'Powtórzono $count razy';
  }

  @override
  String get reviewModeTitle => 'Powtórka';

  @override
  String get save => 'Zapisz';

  @override
  String get saveAsSentence => 'Zapisz jako zdanie';

  @override
  String get saveAsWord => 'Zapisz jako słowo';

  @override
  String get saveData => 'Zapisz';

  @override
  String saveFailed(String error) {
    return 'Zapisywanie nieudane: $error';
  }

  @override
  String get saveToHistory => 'Zapisz w historii skanowania';

  @override
  String get saveTranslationsFromSearch =>
      'Zapisz tłumaczenia z trybu wyszukiwania';

  @override
  String get saved => 'Zapisano';

  @override
  String get saving => 'Zapisywanie...';

  @override
  String get scanInstructions => 'Wybierz obraz do zeskanowania';

  @override
  String get scanLabel => 'Skanuj';

  @override
  String score(String score) {
    return 'Dokładność: $score%';
  }

  @override
  String get scoreLabel => 'Wynik';

  @override
  String get search => 'Szukaj';

  @override
  String get searchConditions => 'Warunki wyszukiwania';

  @override
  String get searchSentenceHint => 'Szukaj zdania...';

  @override
  String get searchWordHint => 'Szukaj słowa...';

  @override
  String get sectionSentence => 'Sekcja zdania';

  @override
  String get sectionSentences => 'Zdania';

  @override
  String get sectionWord => 'Sekcja słów';

  @override
  String get sectionWords => 'Słowa';

  @override
  String get selectExistingSubject => 'Wybierz istniejący tytuł';

  @override
  String get selectMaterialPrompt => 'Proszę wybrać materiał do nauki';

  @override
  String get selectMaterialSet => 'Wybierz zestaw materiałów';

  @override
  String get selectPOS => 'Wybierz część mowy';

  @override
  String get selectStudyMaterial => 'Wybierz Materiał';

  @override
  String get sentence => 'Zdanie';

  @override
  String get signUp => 'Zarejestruj się';

  @override
  String get simplifiedGuidance =>
      'Natychmiastowa transformacja codziennych rozmów na języki obce! Talkie rejestruje Twoje życie językowe.';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get startTutorial => 'Start Przewodnik';

  @override
  String get startsWith => 'Zaczyna się od';

  @override
  String get statusCheckEmail =>
      'Sprawdź swój e-mail, aby dokończyć weryfikację.';

  @override
  String statusDownloading(String name) {
    return 'Pobieranie: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return 'Importowanie nie powiodło się: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return 'Pomyślnie zaimportowano $name';
  }

  @override
  String statusLoginFailed(String error) {
    return 'Logowanie nie powiodło się: $error';
  }

  @override
  String get statusLoginSuccess => 'Zalogowano pomyślnie.';

  @override
  String get statusLogoutSuccess => 'Wylogowano pomyślnie.';

  @override
  String statusRequestFailed(String error) {
    return 'Błąd prośby o tłumaczenie: $error';
  }

  @override
  String get statusRequestSuccess => 'Prośba o tłumaczenie została wysłana.';

  @override
  String get stopPractice => 'Zatrzymaj';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Wybrane materiały nie są obsługiwane w ustawionym języku nauki ($targetLang), więc nie można ich zapisać lokalnie. Czy chcesz poprosić o tłumaczenie?';
  }

  @override
  String get studyLangNotFoundTitle => 'Nieobsługiwany język nauki';

  @override
  String get styleFormal => 'Formalny';

  @override
  String get styleInformal => 'Nieformalny';

  @override
  String get stylePolite => 'Uprzejmy';

  @override
  String get styleSlang => 'Slang';

  @override
  String get swapLanguages => 'Zamień języki';

  @override
  String get syncingData => 'Synchronizowanie danych...';

  @override
  String tabReview(int count) {
    return 'Powtórka ($count)';
  }

  @override
  String get tabSentence => 'zdanie';

  @override
  String get tabSpeaking => 'Mówienie';

  @override
  String tabStudyMaterial(int count) {
    return 'Materiały ($count)';
  }

  @override
  String get tabWord => 'słowo';

  @override
  String get tagFormal => 'formalny';

  @override
  String get tagSelection => 'Wybór tagów';

  @override
  String get targetLanguage => 'Język Docelowy';

  @override
  String get targetLanguageFilter => 'Filtr języka:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Czas na przemyślenie przed ujawnieniem odpowiedzi.';

  @override
  String get thinkingTimeInterval => 'Opóźnienie wyświetlania';

  @override
  String get timeUp => 'Koniec czasu!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Tag tytułu (Materiały)';

  @override
  String get tooltipDecrease => 'Zmniejsz';

  @override
  String get tooltipIncrease => 'Zwiększ';

  @override
  String get tooltipSearch => 'Szukaj';

  @override
  String get tooltipSettingsConfirm => 'Potwierdź ustawienia';

  @override
  String get tooltipSpeaking => 'Mówienie';

  @override
  String get tooltipStudyReview => 'Nauka+Powtórka';

  @override
  String totalRecords(int count) {
    return 'Liczba rekordów: $count (pokaż wszystko)';
  }

  @override
  String get translate => 'Tłumacz';

  @override
  String get translateNow => 'Przetłumacz teraz';

  @override
  String get translating => 'Tłumaczenie...';

  @override
  String get translation => 'Tłumaczenie';

  @override
  String get translationComplete => 'Tłumaczenie zakończone (wymaga zapisu)';

  @override
  String translationFailed(String error) {
    return 'Tłumaczenie nieudane: $error';
  }

  @override
  String get translationLanguage => 'Język tłumaczenia';

  @override
  String get translationLimitExceeded => 'Przekroczono limit tłumaczeń';

  @override
  String get translationLimitMessage =>
      'Wykorzystano dzienny limit darmowych tłumaczeń (5).\\n\\nCzy chcesz obejrzeć reklamę, aby natychmiast odnowić limit o 5?';

  @override
  String get translationLoaded => 'Załadowano zapisane tłumaczenie';

  @override
  String get translationRefilled => 'Odnowiono limit tłumaczeń o 5!';

  @override
  String get translationResult => 'Wynik tłumaczenia';

  @override
  String get translationResultHint => 'Wynik tłumaczenia - możliwość edycji';

  @override
  String get tryAgain => 'Spróbuj Ponownie';

  @override
  String get ttsInstallGuide =>
      'Zainstaluj dane językowe w Ustawieniach Androida > Google TTS.';

  @override
  String get ttsMissing =>
      'Silnik mowy dla tego języka nie jest zainstalowany na Twoim urządzeniu.';

  @override
  String get ttsUnsupportedNatively =>
      'To urządzenie natywnie nie obsługuje odczytywania tekstu w tym języku.';

  @override
  String get tutorialContextDesc =>
      'Dodaj kontekst (np. Rano), aby rozróżnić podobne zdania.';

  @override
  String get tutorialContextTitle => 'Znacznik kontekstu';

  @override
  String get tutorialLangSettingsDesc =>
      'Ustaw język źródłowy i docelowy tłumaczenia.';

  @override
  String get tutorialLangSettingsTitle => 'Ustawienia języka';

  @override
  String get tutorialM1ToggleDesc => 'Przełączaj tryb słowa i zdania tutaj.';

  @override
  String get tutorialM1ToggleTitle => 'Tryb słowa/zdania';

  @override
  String get tutorialM2DropdownDesc => 'Wybierz materiały do nauki.';

  @override
  String get tutorialM2ImportDesc => 'Importuj plik JSON z folderu urządzenia.';

  @override
  String get tutorialM2ListDesc =>
      'Sprawdź zapisane karty i odwracaj je. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Lista Nauki';

  @override
  String get tutorialM2SearchDesc =>
      'Szybko znajduj zapisane słowa i zdania dzięki wyszukiwaniu.';

  @override
  String get tutorialM2SelectDesc =>
      'Wybierz materiały lub przełącz na \'Wszystko\'.';

  @override
  String get tutorialM2SelectTitle => 'Wybierz i Filtruj';

  @override
  String get tutorialM3IntervalDesc =>
      'Dostosuj czas oczekiwania między zdaniami.';

  @override
  String get tutorialM3IntervalTitle => 'Interwał';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Wybierz zestaw do ćwiczeń mówienia.';

  @override
  String get tutorialM3SelectTitle => 'Wybierz Materiał';

  @override
  String get tutorialM3StartDesc =>
      'Dotknij play aby zacząć słuchać i powtarzać.';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3WordsDesc =>
      'Zaznacz, aby ćwiczyć tylko zapisane słowa.';

  @override
  String get tutorialM3WordsTitle => 'Ćwiczenie słów';

  @override
  String get tutorialMicDesc =>
      'Dotknij mikrofonu aby rozpocząć wprowadzanie głosem.';

  @override
  String get tutorialMicTitle => 'Głos';

  @override
  String get tutorialSaveDesc => 'Zapisz tłumaczenie w historii nauki.';

  @override
  String get tutorialSaveTitle => 'Zapisz';

  @override
  String get tutorialSwapDesc =>
      'Zamieniam swój język na język, którego się uczę.';

  @override
  String get tutorialTabDesc => 'Tutaj możesz wybrać żądany tryb nauki.';

  @override
  String get tutorialTapToContinue => 'Dotknij, aby kontynuować';

  @override
  String get tutorialTransDesc => 'Dotknij tutaj aby przetłumaczyć tekst.';

  @override
  String get tutorialTransTitle => 'Tłumacz';

  @override
  String get typeExclamation => 'Wykrzyknikowe';

  @override
  String get typeIdiom => 'Idiom';

  @override
  String get typeImperative => 'Rozkazujące';

  @override
  String get typeProverb => 'Przysłowie/Motto';

  @override
  String get typeQuestion => 'Pytające';

  @override
  String get typeStatement => 'Oznajmujące';

  @override
  String get usageLimitTitle => 'Limit osiągnięty';

  @override
  String get useExistingText => 'Użyj Istniejący';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => 'Wyświetl przewodnik online';

  @override
  String get voluntaryTranslations => 'Tłumaczenia użytkowników';

  @override
  String get watchAdAndRefill => 'Obejrzyj reklamę i odnów limit (+5)';

  @override
  String get welcomeButton => 'Zacznij';

  @override
  String get welcomeDesc =>
      'Witamy w Talkie! Obsługujemy ponad 80 języków z całego świata ze 100% integralnością. Nasz nowy, doskonały design 3D i zoptymalizowana wydajność zapewnią Ci idealne warunki do nauki.';

  @override
  String get welcomeTitle => 'Witaj w Talkie!';

  @override
  String get word => 'Słowo';

  @override
  String get wordDefenseDesc =>
      'Broń bazy, wymawiając słowa zanim dotrą wrogowie.';

  @override
  String get wordDefenseTitle => 'Obrona słów';

  @override
  String get wordModeLabel => 'Tryb słów';

  @override
  String get yourPronunciation => 'Twoja Wymowa';
}

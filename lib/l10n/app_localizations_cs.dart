// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Opakování ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materiály ($count)';
  }

  @override
  String get mode2Title => 'Opakování';

  @override
  String get search => 'Hledat';

  @override
  String get translate => 'Přeložit';

  @override
  String get listen => 'Poslouchat';

  @override
  String get saveData => 'Uložit';

  @override
  String get saved => 'Uloženo';

  @override
  String get delete => 'Smazat';

  @override
  String get materialInfo => 'Informace o materiálu';

  @override
  String get cancel => 'Zrušit';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Obnovit';

  @override
  String studyRecords(int count) {
    return 'Záznamy ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filtr jazyka:';

  @override
  String get noRecords => 'Žádné záznamy pro vybraný jazyk';

  @override
  String get saveTranslationsFromSearch =>
      'Uložte překlady z režimu vyhledávání';

  @override
  String get flip => 'Otočit';

  @override
  String get hide => 'Skrýt';

  @override
  String get deleteRecord => 'Smazat záznam';

  @override
  String get confirmDelete => 'Opravdu chcete smazat tento záznam?';

  @override
  String get recordDeleted => 'Záznam úspěšně smazán';

  @override
  String deleteFailed(String error) {
    return 'Chyba mazání: $error';
  }

  @override
  String get importJsonFile => 'Import JSON';

  @override
  String get importing => 'Importování...';

  @override
  String get importComplete => 'Import dokončen';

  @override
  String get importFailed => 'Import selhal';

  @override
  String importFile(String fileName) {
    return 'Soubor: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Celkem: $count';
  }

  @override
  String importAdded(int count) {
    return 'Přidáno: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Přeskočeno: $count';
  }

  @override
  String get errors => 'Chyby:';

  @override
  String get error => 'Chyba';

  @override
  String importErrorMessage(String error) {
    return 'Nelze importovat soubor:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Vybrat materiál';

  @override
  String get subject => 'Předmět:';

  @override
  String get source => 'Zdroj:';

  @override
  String get file => 'Soubor:';

  @override
  String progress(int current, int total) {
    return 'Postup: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Prosím importujte soubor JSON';

  @override
  String get selectMaterialPrompt => 'Prosím vyberte studijní materiál';

  @override
  String get studyComplete => 'Nastudováno';

  @override
  String get markAsStudied => 'Označit jako nastudované';

  @override
  String get listening => 'Poslouchám...';

  @override
  String get recognized => 'Rozpoznávání dokončeno';

  @override
  String recognitionFailed(String error) {
    return 'Rozpoznávání řeči selhalo: $error';
  }

  @override
  String get checking => 'Kontrola...';

  @override
  String get translating => 'Překládám...';

  @override
  String get translationComplete => 'Překlad dokončen (nutné uložit)';

  @override
  String get translationLoaded => 'Načten uložený překlad';

  @override
  String translationFailed(String error) {
    return 'Překlad selhal: $error';
  }

  @override
  String get enterTextToTranslate => 'Zadejte text k překladu';

  @override
  String get saving => 'Ukládání...';

  @override
  String get noTranslationToSave => 'Žádný překlad k uložení';

  @override
  String saveFailed(String error) {
    return 'Ukládání selhalo: $error';
  }

  @override
  String get playing => 'Přehrávání...';

  @override
  String get noTextToPlay => 'Žádný text k přehrání';

  @override
  String playbackFailed(String error) {
    return 'Přehrávání selhalo: $error';
  }

  @override
  String get sourceLanguage => 'Zdrojový jazyk';

  @override
  String get targetLanguage => 'Cílový jazyk';

  @override
  String get similarTextFound => 'Nalezen podobný text';

  @override
  String get useExistingText => 'Použít existující';

  @override
  String get createNew => 'Vytvořit nový';

  @override
  String reviewCount(int count) {
    return 'Opakováno $count krát';
  }

  @override
  String get tabSpeaking => 'Mluvení';

  @override
  String get speakingPractice => 'Procvičování mluvení';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Vaše výslovnost';

  @override
  String get correctAnswer => 'Správná odpověď';

  @override
  String score(String score) {
    return 'Přesnost: $score%';
  }

  @override
  String get perfect => 'Perfektní!';

  @override
  String get good => 'Dobré';

  @override
  String get tryAgain => 'Zkusit znovu';

  @override
  String get startPractice => 'Začít cvičit';

  @override
  String get stopPractice => 'Zastavit';

  @override
  String get helpTitle => 'Nápověda a Průvodce';

  @override
  String get helpTabModes => 'Režimy';

  @override
  String get helpTabJson => 'Formát JSON';

  @override
  String get helpTabTour => 'Prohlídka';

  @override
  String get helpMode1Desc => 'Rozpoznání hlasu, překlad a poslech výsledku.';

  @override
  String get helpMode1Details =>
      '• Hlas: Klepněte na mikrofon pro start/stop\n• Text: Pište přímo pro překlad\n• Auto-Hledání: Detekuje podobné věty\n• Překlad: Tlačítko pro okamžitý překlad\n• Poslech: Ikona reproduktoru pro TTS\n• Uložit: Přidá do historie\n• Vymazat: Resetovat vše';

  @override
  String get helpMode2Desc => 'Opakování uložených vět se skrytým překladem.';

  @override
  String get helpMode2Details =>
      '• Výběr: Zvolte sadu nebo \'Vše\'\n• Karta: \'Zobrazit/Skrýt\' překlad\n• Poslech: Přehrát TTS věty\n• Nastudováno: Zaškrtnout (V) pro hotové\n• Smazat: Dlouhý stisk pro smazání\n• Filtr: Zobrazit vše nebo dle materiálu';

  @override
  String get helpMode3Desc =>
      'Cvičení mluvení poslechem a opakováním (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Výběr: Zvolte balíček\n• Interval: [-] [+] prodleva (3s-60s)\n• Start/Stop: Ovládání relace\n• Mluvit: Poslouchejte a opakujte\n• Skóre: Přesnost (0-100)\n• Znovu: Tlačítko opakování při nerozpoznání';

  @override
  String get helpJsonDesc => 'Pro import v Režimu 3 vytvořte JSON:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Spustit prohlídku';

  @override
  String get tutorialMicTitle => 'Hlasový vstup';

  @override
  String get tutorialMicDesc => 'Klepněte na mikrofon pro hlasový vstup.';

  @override
  String get tutorialTabDesc => 'Zde můžete vybrat požadovaný režim učení.';

  @override
  String get tutorialTapToContinue => 'Klepněte pro pokračování';

  @override
  String get tutorialTransTitle => 'Překlad';

  @override
  String get tutorialTransDesc => 'Klepněte zde pro překlad.';

  @override
  String get tutorialSaveTitle => 'Uložit';

  @override
  String get tutorialSaveDesc => 'Uložte překlad do záznamů.';

  @override
  String get tutorialM2SelectTitle => 'Výběr a Filtr';

  @override
  String get tutorialM2SelectDesc => 'Vyberte materiály nebo \'Opakovat vše\'.';

  @override
  String get tutorialM2ListTitle => 'Seznam';

  @override
  String get tutorialM2ListDesc =>
      'Prohlížejte karty a otáčejte je. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Výběr materiálu';

  @override
  String get tutorialM3SelectDesc => 'Vyberte sadu pro mluvení.';

  @override
  String get tutorialM3IntervalTitle => 'Interval';

  @override
  String get tutorialM3IntervalDesc => 'Nastavte čas mezi větami.';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3StartDesc => 'Klepněte na Play pro start.';

  @override
  String get startWarning => 'Varování';

  @override
  String get noVoiceDetected => 'Hlas nerozpoznán';

  @override
  String get tooltipSearch => 'Hledat';

  @override
  String get tooltipStudyReview => 'Studium+Opakování';

  @override
  String get tooltipSpeaking => 'Mluvení';

  @override
  String get tooltipDecrease => 'Snížit';

  @override
  String get tooltipIncrease => 'Zvýšit';

  @override
  String get languageSettings => 'Nastavení jazyka';

  @override
  String get tutorialM2DropdownDesc => 'Vyberte studijní materiály.';

  @override
  String get tutorialM2ImportDesc =>
      'Importovat soubor JSON ze složky zařízení.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'Kontextový štítek';

  @override
  String get tutorialContextDesc =>
      'Přidejte kontext (např. Ráno) pro rozlišení podobných vět.';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc =>
      'Check this to practice only your saved words.';

  @override
  String get tutorialGameTitle => 'Rain Drop Game';

  @override
  String get tutorialGameDesc =>
      'Play a game to practice your vocabulary! Catch falling words by speaking their translation.';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Word';

  @override
  String get labelSentence => 'Sentence';

  @override
  String get contextTagLabel =>
      'Context/Situation (Optional) - Ex: Morning greeting, polite form';

  @override
  String get contextTagHint =>
      'Describe situation for easier classification later';

  @override
  String get translationLimitExceeded => 'Translation Limit Exceeded';

  @override
  String get translationLimitMessage =>
      'You have used all your free daily translations (5). Watch an ad to refill 5 immediately?';

  @override
  String get watchAdAndRefill => 'Watch Ad & Refill (+5)';

  @override
  String get translationRefilled => 'Translations refilled by 5!';

  @override
  String get adLoading => 'Loading ad, please try again in a moment.';

  @override
  String get reviewAll => 'Review All';

  @override
  String totalRecords(int count) {
    return 'Total $count records (View All)';
  }

  @override
  String get filterAll => 'All';

  @override
  String get practiceWordsOnly => 'Practice Words Only';

  @override
  String get resetPracticeHistory => 'Reset Practice History';

  @override
  String get retry => 'Retry?';

  @override
  String get noStudyMaterial => 'No study material found.';

  @override
  String get rainDropGame => 'Rain Drop Game';

  @override
  String get rainDropGameDesc => 'Speak the translation of the falling word!';

  @override
  String get gameDirection => 'Game Direction';

  @override
  String get speed => 'Speed';

  @override
  String get startGame => 'Start Game';

  @override
  String get gameOver => 'Game Over';

  @override
  String get finalScore => 'Final Score';

  @override
  String get playAgain => 'Play Again';

  @override
  String get speakNow => 'Speak now!';

  @override
  String get scoreLabel => 'Score';

  @override
  String get viewOnlineGuide => 'View Online User Guide';
}

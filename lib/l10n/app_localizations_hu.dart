// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Áttekintés ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Anyagok ($count)';
  }

  @override
  String get mode2Title => 'Áttekintés';

  @override
  String get search => 'Keresés';

  @override
  String get translate => 'Fordítás';

  @override
  String get listen => 'Hallgatás';

  @override
  String get saveData => 'Mentés';

  @override
  String get saved => 'Mentve';

  @override
  String get delete => 'Törlés';

  @override
  String get materialInfo => 'Anyaginformáció';

  @override
  String get cancel => 'Mégse';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Frissítés';

  @override
  String studyRecords(int count) {
    return 'Rekordok ($count)';
  }

  @override
  String get targetLanguageFilter => 'Célnyelv szűrő:';

  @override
  String get noRecords => 'Nincs rekord a választott nyelvhez';

  @override
  String get saveTranslationsFromSearch =>
      'Mentse a fordításokat a keresési módból';

  @override
  String get flip => 'Fordít';

  @override
  String get hide => 'Elrejt';

  @override
  String get deleteRecord => 'Rekord törlése';

  @override
  String get confirmDelete => 'Biztosan törölni szeretné ezt a rekordot?';

  @override
  String get recordDeleted => 'Rekord sikeresen törölve';

  @override
  String deleteFailed(String error) {
    return 'Törlés sikertelen: $error';
  }

  @override
  String get importJsonFile => 'JSON Import';

  @override
  String get importing => 'Importálás...';

  @override
  String get importComplete => 'Import Kész';

  @override
  String get importFailed => 'Import Sikertelen';

  @override
  String importFile(String fileName) {
    return 'Fájl: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Összes: $count';
  }

  @override
  String importAdded(int count) {
    return 'Hozzáadva: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Kihagyva: $count';
  }

  @override
  String get errors => 'Hibák:';

  @override
  String get error => 'Hiba';

  @override
  String importErrorMessage(String error) {
    return 'Fájl importálása sikertelen:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Anyag Kiválasztása';

  @override
  String get subject => 'Tárgy:';

  @override
  String get source => 'Forrás:';

  @override
  String get file => 'Fájl:';

  @override
  String progress(int current, int total) {
    return 'Folyamat: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Kérjük importáljon egy JSON fájlt';

  @override
  String get selectMaterialPrompt => 'Kérjük válasszon tanulási anyagot';

  @override
  String get studyComplete => 'Megtanulva';

  @override
  String get markAsStudied => 'Jelölés megtanultként';

  @override
  String get listening => 'Hallgatás...';

  @override
  String get recognized => 'Felismerés kész';

  @override
  String recognitionFailed(String error) {
    return 'Beszédfelismerés sikertelen: $error';
  }

  @override
  String get checking => 'Ellenőrzés...';

  @override
  String get translating => 'Fordítás...';

  @override
  String get translationComplete => 'Fordítás kész (mentés szükséges)';

  @override
  String get translationLoaded => 'Mentett fordítás betöltve';

  @override
  String translationFailed(String error) {
    return 'Fordítás sikertelen: $error';
  }

  @override
  String get enterTextToTranslate => 'Írja be a szöveget a fordításhoz';

  @override
  String get saving => 'Mentés...';

  @override
  String get noTranslationToSave => 'Nincs mentendő fordítás';

  @override
  String saveFailed(String error) {
    return 'Mentés sikertelen: $error';
  }

  @override
  String get playing => 'Lejátszás...';

  @override
  String get noTextToPlay => 'Nincs lejátszható szöveg';

  @override
  String playbackFailed(String error) {
    return 'Lejátszás sikertelen: $error';
  }

  @override
  String get sourceLanguage => 'Forrásnyelv';

  @override
  String get targetLanguage => 'Célnyelv';

  @override
  String get similarTextFound => 'Hasonló szöveg található';

  @override
  String get useExistingText => 'Meglévő Használata';

  @override
  String get createNew => 'Új Létrehozása';

  @override
  String reviewCount(int count) {
    return '$count alkalommal áttekintve';
  }

  @override
  String get tabSpeaking => 'Beszéd';

  @override
  String get speakingPractice => 'Beszédgyakorlat';

  @override
  String intervalSeconds(int seconds) {
    return 'Időköz: ${seconds}mp';
  }

  @override
  String get yourPronunciation => 'Kiejtésed';

  @override
  String get correctAnswer => 'Helyes Válasz';

  @override
  String score(String score) {
    return 'Pontosság: $score%';
  }

  @override
  String get perfect => 'Tökéletes!';

  @override
  String get good => 'Jó';

  @override
  String get tryAgain => 'Próbáld újra';

  @override
  String get startPractice => 'Gyakorlás Indítása';

  @override
  String get stopPractice => 'Leállítás';

  @override
  String get helpTitle => 'Segítség és Útmutató';

  @override
  String get helpTabModes => 'Módok';

  @override
  String get helpTabJson => 'JSON Formátum';

  @override
  String get helpTabTour => 'Túra';

  @override
  String get helpMode1Desc =>
      'Hangfelismerés, fordítás és eredmény meghallgatása.';

  @override
  String get helpMode1Details =>
      '• Hang: Érintse meg a mikrofont az indításhoz/leállításhoz\n• Szöveg: Írjon közvetlenül a fordításhoz\n• Auto-Keresés: Hasonló mondatokat keres\n• Fordítás: Gomb az azonnali fordításhoz\n• Hallgatás: Hangszóró ikon a TTS-hez\n• Mentés: Hozzáadja az előzményekhez\n• Törlés: Összes visszaállítása';

  @override
  String get helpMode2Desc =>
      'Mentett mondatok áttekintése rejtett fordítással.';

  @override
  String get helpMode2Details =>
      '• Kiválasztás: Válasszon készletet vagy \'Összes\'\n• Fordítás: \'Mutat/Rejt\' fordítás megtekintése\n• Hallgatás: Mondat TTS lejátszása\n• Jelölés: Pipa (V) a kész elemekhez\n• Törlés: Hosszan nyomja meg a kártyát\n• Szűrő: Összes vagy anyag szerint';

  @override
  String get helpMode3Desc =>
      'Beszédgyakorlás hallgatással és ismétléssel (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Kiválasztás: Válasszon csomagot\n• Időköz: [-] [+] várakozás (3mp-60mp)\n• Start/Stop: Munkamenet vezérlése\n• Beszéd: Hallgassa és ismételje\n• Pontszám: Pontosság (0-100)\n• Újra: Gomb ha a hang nem észlelhető';

  @override
  String get helpJsonDesc => '3. Mód importhoz hozzon létre JSON-t:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Túra Indítása';

  @override
  String get tutorialMicTitle => 'Hangbemenet';

  @override
  String get tutorialMicDesc => 'Érintse meg a mikrofont a hangbemenethez.';

  @override
  String get tutorialTabDesc => 'Itt kiválaszthatja a kívánt tanulási módot.';

  @override
  String get tutorialTapToContinue => 'Érintse meg a folytatáshoz';

  @override
  String get tutorialTransTitle => 'Fordítás';

  @override
  String get tutorialTransDesc => 'Érintse meg ide a fordításhoz.';

  @override
  String get tutorialSaveTitle => 'Mentés';

  @override
  String get tutorialSaveDesc => 'Mentse el a fordítást.';

  @override
  String get tutorialM2SelectTitle => 'Kiválasztás és Szűrő';

  @override
  String get tutorialM2SelectDesc =>
      'Válasszon anyagot vagy \'Összes áttekintése\'.';

  @override
  String get tutorialM2ListTitle => 'Tanulólista';

  @override
  String get tutorialM2ListDesc =>
      'Ellenőrizze a kártyákat és fordítsa meg őket. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Anyag Kiválasztása';

  @override
  String get tutorialM3SelectDesc => 'Válasszon készletet beszédgyakorláshoz.';

  @override
  String get tutorialM3IntervalTitle => 'Időköz';

  @override
  String get tutorialM3IntervalDesc => 'Állítsa be a mondatok közötti időt.';

  @override
  String get tutorialM3StartTitle => 'Indítás';

  @override
  String get tutorialM3StartDesc => 'Nyomja meg a lejátszást az indításhoz.';

  @override
  String get startWarning => 'Figyelem';

  @override
  String get noVoiceDetected => 'Hang nem észlelhető';

  @override
  String get tooltipSearch => 'Keresés';

  @override
  String get tooltipStudyReview => 'Tanulás+Ismétlés';

  @override
  String get tooltipSpeaking => 'Beszéd';

  @override
  String get tooltipDecrease => 'Csökkentés';

  @override
  String get tooltipIncrease => 'Növelés';

  @override
  String get languageSettings => 'Nyelvi beállítások';

  @override
  String get tutorialM2DropdownDesc => 'Válasszon tananyagot.';

  @override
  String get tutorialM2ImportDesc =>
      'JSON fájl importálása az eszköz mappájából.';

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
  String get tutorialContextTitle => 'Kontextus címke';

  @override
  String get tutorialContextDesc =>
      'Adjon hozzá kontextust (pl. Reggel) a hasonló mondatok megkülönböztetéséhez.';

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

  @override
  String get getMaterials => 'Get Materials';

  @override
  String get swapLanguages => 'Swap Languages';

  @override
  String get next => 'Next';

  @override
  String get thinkingTimeInterval => 'Thinking Time Interval';

  @override
  String get thinkingTimeDesc => 'Time to think before the answer is revealed.';

  @override
  String get autoPlay => 'Auto-Play';
}

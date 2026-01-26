// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Kertaus ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materiaali ($count)';
  }

  @override
  String get mode2Title => 'Kertaus';

  @override
  String get search => 'Haku';

  @override
  String get translate => 'Käännä';

  @override
  String get listen => 'Kuuntele';

  @override
  String get saveData => 'Tallenna';

  @override
  String get saved => 'Tallennettu';

  @override
  String get delete => 'Poista';

  @override
  String get materialInfo => 'Materiaalin tiedot';

  @override
  String get cancel => 'Peruuta';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Päivitä';

  @override
  String studyRecords(int count) {
    return 'Tietueet ($count)';
  }

  @override
  String get targetLanguageFilter => 'Kohdekieli Suodatin:';

  @override
  String get noRecords => 'Ei tietueita valitulle kielelle';

  @override
  String get saveTranslationsFromSearch => 'Tallenna käännöksiä hakutilasta';

  @override
  String get flip => 'Käännä';

  @override
  String get hide => 'Piilota';

  @override
  String get deleteRecord => 'Poista Tietue';

  @override
  String get confirmDelete => 'Haluatko varmasti poistaa tämän?';

  @override
  String get recordDeleted => 'Tietue poistettu';

  @override
  String deleteFailed(String error) {
    return 'Poisto epäonnistui: $error';
  }

  @override
  String get importJsonFile => 'Tuo JSON';

  @override
  String get importing => 'Tuodaan...';

  @override
  String get importComplete => 'Tuonti Valmis';

  @override
  String get importFailed => 'Tuonti Epäonnistui';

  @override
  String importFile(String fileName) {
    return 'Tiedosto: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Yhteensä: $count';
  }

  @override
  String importAdded(int count) {
    return 'Lisätty: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Ohitettu: $count';
  }

  @override
  String get errors => 'Virheet:';

  @override
  String get error => 'Virhe';

  @override
  String importErrorMessage(String error) {
    return 'Tiedoston tuonti epäonnistui:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Valitse Materiaali';

  @override
  String get subject => 'Aihe:';

  @override
  String get source => 'Lähde:';

  @override
  String get file => 'Tiedosto:';

  @override
  String progress(int current, int total) {
    return 'Edistyminen: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Tuo JSON tiedosto';

  @override
  String get selectMaterialPrompt => 'Valitse opiskelumateriaali';

  @override
  String get studyComplete => 'Opiskeltu';

  @override
  String get markAsStudied => 'Merkitse Opiskelluksi';

  @override
  String get listening => 'Kuunnellaan...';

  @override
  String get recognized => 'Tunnistus valmis';

  @override
  String recognitionFailed(String error) {
    return 'Puheentunnistus epäonnistui: $error';
  }

  @override
  String get checking => 'Tarkistetaan...';

  @override
  String get translating => 'Käännetään...';

  @override
  String get translationComplete => 'Käännös valmis (tallenna)';

  @override
  String get translationLoaded => 'Tallennettu käännös ladattu';

  @override
  String translationFailed(String error) {
    return 'Käännös epäonnistui: $error';
  }

  @override
  String get enterTextToTranslate => 'Syötä teksti käännettäväksi';

  @override
  String get saving => 'Tallennetaan...';

  @override
  String get noTranslationToSave => 'Ei käännöstä tallennettavaksi';

  @override
  String saveFailed(String error) {
    return 'Tallennus epäonnistui: $error';
  }

  @override
  String get playing => 'Toistetaan...';

  @override
  String get noTextToPlay => 'Ei tekstiä toistettavaksi';

  @override
  String playbackFailed(String error) {
    return 'Toisto epäonnistui: $error';
  }

  @override
  String get sourceLanguage => 'Lähdekieli';

  @override
  String get targetLanguage => 'Kohdekieli';

  @override
  String get similarTextFound => 'Samankaltainen teksti löytyi';

  @override
  String get useExistingText => 'Käytä Olemassaolevaa';

  @override
  String get createNew => 'Luo Uusi';

  @override
  String reviewCount(int count) {
    return 'Kerrattu $count kertaa';
  }

  @override
  String get tabSpeaking => 'Puhuminen';

  @override
  String get speakingPractice => 'Puheharjoitus';

  @override
  String intervalSeconds(int seconds) {
    return 'Aikaväli: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Sinun ääntämys';

  @override
  String get correctAnswer => 'Oikea Vastaus';

  @override
  String score(String score) {
    return 'Tarkkuus: $score%';
  }

  @override
  String get perfect => 'Täydellistä!';

  @override
  String get good => 'Hyvä';

  @override
  String get tryAgain => 'Yritä uudelleen';

  @override
  String get startPractice => 'Aloita';

  @override
  String get stopPractice => 'Lopeta';

  @override
  String get helpTitle => 'Ohje & Opas';

  @override
  String get helpTabModes => 'Tilat';

  @override
  String get helpTabJson => 'JSON Muoto';

  @override
  String get helpTabTour => 'Kierros';

  @override
  String get helpMode1Desc => 'Puheentunnistus, käännös ja kuuntelu.';

  @override
  String get helpMode1Details => '• Ääni: Napauta mikrofonia aloittaaksesi\n• Teksti: Kirjoita kääntääksesi\n• Auto-Haku: Löytää samanlaiset lauseet\n• Käännä: Painike välittömään käännökseen\n• Kuuntele: Kaiutinikoni TTS:lle\n• Tallenna: Lisää historiaan\n• Tyhjennä: Nollaa kaikki';

  @override
  String get helpMode2Desc => 'Kertaa tallennetut lauseet piilottamalla käännös.';

  @override
  String get helpMode2Details => '• Valitse: Valitse setti tai \'Kaikki\'\n• Käännä: \'Näytä/Piilota\' käännös\n• Kuuntele: Toista TTS lauseelle\n• Merkitse: Rasti (V) valmiille\n• Poista: Pitkä painallus poistaaksesi\n• Suodatin: Kaikki tai materiaalin mukaan';

  @override
  String get helpMode3Desc => 'Harjoittele puhumista kuuntelemalla ja toistamalla (Shadowing).';

  @override
  String get helpMode3Details => '• Valitse: Valitse paketti\n• Aikaväli: [-] [+] odotusaika (3s-60s)\n• Aloita/Lopeta: Hallitse istuntoa\n• Puhu: Kuuntele ja toista\n• Pisteet: Tarkkuus (0-100)\n• Uusinta: Painike jos ääntä ei tunnisteta';

  @override
  String get helpJsonDesc => 'Tilan 3 tuontia varten luo JSON:';

  @override
  String get helpTourDesc => 'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Aloita Kierros';

  @override
  String get tutorialMicTitle => 'Äänisyöte';

  @override
  String get tutorialMicDesc => 'Napauta mikrofonia äänisyötettä varten.';

  @override
  String get tutorialTabDesc => 'Täältä voit valita haluamasi oppimistilan.';

  @override
  String get tutorialTapToContinue => 'Napauta jatkaaksesi';

  @override
  String get tutorialTransTitle => 'Käännä';

  @override
  String get tutorialTransDesc => 'Napauta tästä kääntääksesi.';

  @override
  String get tutorialSaveTitle => 'Tallenna';

  @override
  String get tutorialSaveDesc => 'Tallenna käännös tietueisiin.';

  @override
  String get tutorialM2SelectTitle => 'Valitse & Suodata';

  @override
  String get tutorialM2SelectDesc => 'Valitse materiaali tai \'Kertaa Kaikki\'.';

  @override
  String get tutorialM2ListTitle => 'Opiskelulista';

  @override
  String get tutorialM2ListDesc => 'Tarkista kortit ja käännä ne. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Valitse Materiaali';

  @override
  String get tutorialM3SelectDesc => 'Valitse setti puheharjoitukseen.';

  @override
  String get tutorialM3IntervalTitle => 'Aikaväli';

  @override
  String get tutorialM3IntervalDesc => 'Säädä odotusaika lauseiden välillä.';

  @override
  String get tutorialM3StartTitle => 'Aloita';

  @override
  String get tutorialM3StartDesc => 'Paina toista aloittaaksesi.';

  @override
  String get startWarning => 'Varoitus';

  @override
  String get noVoiceDetected => 'Ääntä ei havaittu';

  @override
  String get tooltipSearch => 'Haku';

  @override
  String get tooltipStudyReview => 'Opiskelu+Kertaus';

  @override
  String get tooltipSpeaking => 'Puhuminen';

  @override
  String get tooltipDecrease => 'Vähennä';

  @override
  String get tooltipIncrease => 'Lisää';

  @override
  String get languageSettings => 'Kieliasetukset';

  @override
  String get tutorialM2DropdownDesc => 'Valitse oppimateriaali.';

  @override
  String get tutorialM2ImportDesc => 'Tuo JSON-tiedosto laitteen kansiosta.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc => 'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'Asiayhteystunniste';

  @override
  String get tutorialContextDesc => 'Lisää asiayhteys (esim. Aamu) erottaaksesi samanlaiset lauseet.';

  @override
  String get thinkingTimeInterval => 'Thinking Time Interval';

  @override
  String get thinkingTimeDesc => 'Time to think before the answer is revealed.';

  @override
  String get autoPlay => 'Auto-Play';

  @override
  String get timeUp => 'Time Up!';

  @override
  String get gameModeTitle => 'Game Mode';

  @override
  String get gameModeDesc => 'Choose your practice mode';

  @override
  String get wordDefenseTitle => 'Word Defense';

  @override
  String get wordDefenseDesc => 'Defend your base by speaking words correctly before enemies reach you.';

  @override
  String get dialogueQuestTitle => 'Dialogue Quest';

  @override
  String get dialogueQuestDesc => 'Roleplay in scenarios. Choose the right response and speak it aloud.';

  @override
  String get tutorialM1ToggleDesc => 'Switch between Word and Sentence mode here. Words are saved with larger text.';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Word';

  @override
  String get labelSentence => 'Sentence';

  @override
  String get contextTagLabel => 'Context/Situation (Optional) - Ex: Morning greeting, polite form';

  @override
  String get contextTagHint => 'Describe situation for easier classification later';

  @override
  String get translationLimitExceeded => 'Translation Limit Exceeded';

  @override
  String get translationLimitMessage => 'You have used all your free daily translations (5). Watch an ad to refill 5 immediately?';

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
  String get gameOver => 'Game Over';

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
  String get wordModeLabel => 'Word Mode';

  @override
  String get accuracy => 'Accuracy';

  @override
  String get basicDefault => 'Basic (Default)';

  @override
  String get basic => 'Basic';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc => 'Check this to practice only your saved words.';

  @override
  String get enterTextHint => 'Enter text to translate';

  @override
  String get micButtonTooltip => 'Start Listening';

  @override
  String get menuHelp => 'Help';

  @override
  String get menuWebDownload => 'Get Material from Web';

  @override
  String get menuDeviceImport => 'Import from Device';

  @override
  String get menuSettings => 'Settings';

  @override
  String get basicWords => 'Basic Words';

  @override
  String get basicSentences => 'Basic Sentences';

  @override
  String get selectMaterialSet => 'Select Study Material Set';

  @override
  String get sectionWords => 'Words';

  @override
  String get sectionSentences => 'Sentences';

  @override
  String get languageSettingsTitle => 'Language Settings';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get mode3Start => 'Start';

  @override
  String get mode3Stop => 'Stop';

  @override
  String get mode3Next => 'Next';

  @override
  String get mode3TryAgain => 'Try Again';

  @override
  String get tutorialSwapDesc => 'Vaihdan kieleni oppimaani kieleen.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3ResetDesc => 'Clear your progress and accuracy scores to start fresh.';

  @override
  String get menuSelectMaterialSet => 'Valitse opiskelumateriaali';

  @override
  String get sectionWord => 'Sanaosio';

  @override
  String get sectionSentence => 'Lauseosa';

  @override
  String get tabWord => 'sana';

  @override
  String get tabSentence => 'tuomita';

  @override
  String get errorProfanity => 'Translation cannot be processed due to profanity.';

  @override
  String get errorHateSpeech => 'Translation cannot be processed due to hate speech.';

  @override
  String get errorSexualContent => 'Translation cannot be processed due to sexual content.';

  @override
  String get errorOtherSafety => 'Translation was blocked by AI safety policy.';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }
}

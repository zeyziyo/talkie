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
  String get materialInfo => 'Material Info';

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
  String get helpMode1Details =>
      '• Ääni: Napauta mikrofonia aloittaaksesi\n• Teksti: Kirjoita kääntääksesi\n• Auto-Haku: Löytää samanlaiset lauseet\n• Käännä: Painike välittömään käännökseen\n• Kuuntele: Kaiutinikoni TTS:lle\n• Tallenna: Lisää historiaan\n• Tyhjennä: Nollaa kaikki';

  @override
  String get helpMode2Desc =>
      'Kertaa tallennetut lauseet piilottamalla käännös.';

  @override
  String get helpMode2Details =>
      '• Valitse: Valitse setti tai \'Kaikki\'\n• Käännä: \'Näytä/Piilota\' käännös\n• Kuuntele: Toista TTS lauseelle\n• Merkitse: Rasti (V) valmiille\n• Poista: Pitkä painallus poistaaksesi\n• Suodatin: Kaikki tai materiaalin mukaan';

  @override
  String get helpMode3Desc =>
      'Harjoittele puhumista kuuntelemalla ja toistamalla (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Valitse: Valitse paketti\n• Aikaväli: [-] [+] odotusaika (3s-60s)\n• Aloita/Lopeta: Hallitse istuntoa\n• Puhu: Kuuntele ja toista\n• Pisteet: Tarkkuus (0-100)\n• Uusinta: Painike jos ääntä ei tunnisteta';

  @override
  String get helpJsonDesc => 'Tilan 3 tuontia varten luo JSON:';

  @override
  String get helpTourDesc =>
      'Aloita interaktiivinen kierros oppiaksesi toiminnot.';

  @override
  String get startTutorial => 'Aloita Kierros';

  @override
  String get tutorialMicTitle => 'Äänisyöte';

  @override
  String get tutorialMicDesc => 'Napauta mikrofonia äänisyötettä varten.';

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
  String get tutorialM2SelectDesc =>
      'Valitse materiaali tai \'Kertaa Kaikki\'.';

  @override
  String get tutorialM2ListTitle => 'Opiskelulista';

  @override
  String get tutorialM2ListDesc => 'Tarkista kortit ja käännä ne.';

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
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Wiederholen ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Lernmaterial ($count)';
  }

  @override
  String get mode2Title => 'Wiederholung';

  @override
  String get search => 'Suche';

  @override
  String get translate => 'Übersetzen';

  @override
  String get listen => 'Anhören';

  @override
  String get saveData => 'Speichern';

  @override
  String get saved => 'Gespeichert';

  @override
  String get delete => 'Löschen';

  @override
  String get materialInfo => 'Materialinfo';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Aktualisieren';

  @override
  String studyRecords(int count) {
    return 'Lernprotokolle ($count)';
  }

  @override
  String get targetLanguageFilter => 'Zielsprache Filter:';

  @override
  String get noRecords => 'Keine Lernprotokolle für die ausgewählte Sprache';

  @override
  String get saveTranslationsFromSearch =>
      'Speichern Sie Übersetzungen im Suchmodus';

  @override
  String get flip => 'Umdrehen';

  @override
  String get hide => 'Verbergen';

  @override
  String get deleteRecord => 'Eintrag löschen';

  @override
  String get confirmDelete => 'Möchten Sie diesen Eintrag wirklich löschen?';

  @override
  String get recordDeleted => 'Eintrag erfolgreich gelöscht';

  @override
  String deleteFailed(String error) {
    return 'Löschen fehlgeschlagen: $error';
  }

  @override
  String get importJsonFile => 'JSON-Datei importieren';

  @override
  String get importing => 'Importiere...';

  @override
  String get importComplete => 'Import abgeschlossen';

  @override
  String get importFailed => 'Import fehlgeschlagen';

  @override
  String importFile(String fileName) {
    return 'Datei: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Gesamt: $count Einträge';
  }

  @override
  String importAdded(int count) {
    return 'Hinzugefügt: $count Einträge';
  }

  @override
  String importSkipped(int count) {
    return 'Übersprungen: $count Einträge';
  }

  @override
  String get errors => 'Fehler:';

  @override
  String get error => 'Fehler';

  @override
  String importErrorMessage(String error) {
    return 'Import fehlgeschlagen:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Lernmaterial auswählen';

  @override
  String get subject => 'Thema:';

  @override
  String get source => 'Quelle:';

  @override
  String get file => 'Datei:';

  @override
  String progress(int current, int total) {
    return 'Fortschritt: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Bitte importieren Sie eine JSON-Datei';

  @override
  String get selectMaterialPrompt => 'Bitte wählen Sie ein Lernmaterial aus';

  @override
  String get studyComplete => 'Gelernt';

  @override
  String get markAsStudied => 'Als gelernt markieren';

  @override
  String get listening => 'Zuhören...';

  @override
  String get recognized => 'Erkennung abgeschlossen';

  @override
  String recognitionFailed(String error) {
    return 'Spracherkennung fehlgeschlagen: $error';
  }

  @override
  String get checking => 'Prüfe...';

  @override
  String get translating => 'Übersetze...';

  @override
  String get translationComplete =>
      'Übersetzung fertig (Speichern erforderlich)';

  @override
  String get translationLoaded => 'Gespeicherte Übersetzung geladen';

  @override
  String translationFailed(String error) {
    return 'Übersetzung fehlgeschlagen: $error';
  }

  @override
  String get enterTextToTranslate => 'Bitte Text zum Übersetzen eingeben';

  @override
  String get saving => 'Speichern...';

  @override
  String get noTranslationToSave => 'Keine Übersetzung zum Speichern';

  @override
  String saveFailed(String error) {
    return 'Speichern fehlgeschlagen: $error';
  }

  @override
  String get playing => 'Wiedergabe...';

  @override
  String get noTextToPlay => 'Kein Text zum Abspielen';

  @override
  String playbackFailed(String error) {
    return 'Wiedergabe fehlgeschlagen: $error';
  }

  @override
  String get sourceLanguage => 'Quellsprache';

  @override
  String get targetLanguage => 'Zielsprache';

  @override
  String get similarTextFound => 'Ähnlicher Text gefunden';

  @override
  String get useExistingText => 'Vorhandenen nutzen';

  @override
  String get createNew => 'Neuen Eintrag erstellen';

  @override
  String reviewCount(int count) {
    return '$count mal wiederholt';
  }

  @override
  String get tabSpeaking => 'Sprechen';

  @override
  String get speakingPractice => 'Sprechübung';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervall: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Deine Aussprache';

  @override
  String get correctAnswer => 'Richtige Antwort';

  @override
  String score(String score) {
    return 'Genauigkeit: $score%';
  }

  @override
  String get perfect => 'Perfekt!';

  @override
  String get good => 'Gut';

  @override
  String get tryAgain => 'Nochmal versuchen';

  @override
  String get startPractice => 'Übung starten';

  @override
  String get stopPractice => 'Übung stoppen';

  @override
  String get helpTitle => 'Hilfe & Anleitung';

  @override
  String get helpTabModes => 'Modi';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabTour => 'Tour';

  @override
  String get helpMode1Desc =>
      'Stimme erkennen, in Zielsprache übersetzen und Ergebnis anhören.';

  @override
  String get helpMode1Details =>
      '• Spracheingabe: Mikrofon-Symbol tippen zum Starten/Stoppen\n• Texteingabe: Direkt tippen zum Übersetzen\n• Auto-Suche: Findet ähnliche vorhandene Sätze\n• Übersetzen: Button tippen für Sofortübersetzung\n• Anhören: Lautsprecher-Symbol für TTS (Original/Übersetzung)\n• Speichern: \'Daten speichern\' fügt zum Verlauf hinzu\n• Leeren: Alle Eingaben zurücksetzen';

  @override
  String get helpMode2Desc =>
      'Gespeicherte Sätze wiederholen mit Auto-Ausblenden und Wiederholungszähler.';

  @override
  String get helpMode2Details =>
      '• Materialwahl: Set wählen oder \'Alles wiederholen\'\n• Karte drehen: \'Anzeigen/Verbergen\' nutzen\n• Anhören: TTS für Satz abspielen\n• Gelernt markieren: Häkchen (V) für erledigte Elemente\n• Löschen: Lange auf Karte drücken\n• Filter: Alle oder nach Material filtern';

  @override
  String get helpMode3Desc =>
      'Sprechen üben durch Zuhören und Nachsprechen (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Materialwahl: Lernpaket wählen\n• Intervall: [-] [+] Wartezeit anpassen (3s-60s)\n• Start/Stop: Sitzung steuern\n• Sprechen: Audio hören und nachsprechen\n• Feedback: Genauigkeit (0-100) mit Farbcode\n• Wiederholen: Retry-Button nutzen falls keine Stimme erkannt';

  @override
  String get helpJsonDesc =>
      'Zum Importieren von Lernmaterialien im Modus 3 JSON-Datei mit folgender Struktur erstellen:';

  @override
  String get helpTourDesc =>
      'Starten Sie das interaktive Tutorial, um die Hauptfunktionen kennenzulernen.';

  @override
  String get startTutorial => 'Tutorial starten';

  @override
  String get tutorialMicTitle => 'Spracheingabe';

  @override
  String get tutorialMicDesc =>
      'Tippen Sie auf das Mikrofon, um die Spracheingabe zu starten.';

  @override
  String get tutorialTabDesc =>
      'Hier können Sie den gewünschten Lernmodus auswählen.';

  @override
  String get tutorialTapToContinue => 'Tippen Sie, um fortzufahren';

  @override
  String get tutorialTransTitle => 'Übersetzen';

  @override
  String get tutorialTransDesc =>
      'Tippen Sie hier, um Ihren Text zu übersetzen.';

  @override
  String get tutorialSaveTitle => 'Speichern';

  @override
  String get tutorialSaveDesc =>
      'Speichern Sie Ihre Übersetzung in den Lernprotokollen.';

  @override
  String get tutorialM2SelectTitle => 'Auswahl & Filter';

  @override
  String get tutorialM2SelectDesc =>
      'Wählen Sie Lernmaterialien oder wechseln Sie zu \'Alles wiederholen\'.';

  @override
  String get tutorialM2ListTitle => 'Lernliste';

  @override
  String get tutorialM2ListDesc =>
      'Überprüfen Sie Ihre gespeicherten Karten und drehen Sie sie um.';

  @override
  String get tutorialM3SelectTitle => 'Materialwahl';

  @override
  String get tutorialM3SelectDesc =>
      'Wählen Sie ein Materialset für die Sprechübung.';

  @override
  String get tutorialM3IntervalTitle => 'Intervall';

  @override
  String get tutorialM3IntervalDesc =>
      'Passen Sie die Wartezeit zwischen den Sätzen an.';

  @override
  String get tutorialM3StartTitle => 'Übung starten';

  @override
  String get tutorialM3StartDesc =>
      'Tippen Sie auf Play, um mit dem Zuhören und Nachsprechen zu beginnen.';

  @override
  String get startWarning => 'Warnung';

  @override
  String get noVoiceDetected => 'Keine Stimme erkannt';

  @override
  String get tooltipSearch => 'Suchen';

  @override
  String get tooltipStudyReview => 'Lernen+Wiederholen';

  @override
  String get tooltipSpeaking => 'Sprechen';

  @override
  String get tooltipDecrease => 'Verringern';

  @override
  String get tooltipIncrease => 'Erhöhen';

  @override
  String get languageSettings => 'Spracheinstellungen';
}

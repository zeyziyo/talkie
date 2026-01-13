// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Recapitulare ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Material ($count)';
  }

  @override
  String get mode2Title => 'Recapitulare';

  @override
  String get search => 'Căutare';

  @override
  String get translate => 'Traducere';

  @override
  String get listen => 'Ascultă';

  @override
  String get saveData => 'Salvare';

  @override
  String get saved => 'Salvat';

  @override
  String get delete => 'Șterge';

  @override
  String get materialInfo => 'Informații material';

  @override
  String get cancel => 'Anulare';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Reîmprospătare';

  @override
  String studyRecords(int count) {
    return 'Înregistrări ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filtru Limbă:';

  @override
  String get noRecords => 'Nu există înregistrări pentru limba selectată';

  @override
  String get saveTranslationsFromSearch =>
      'Vă rugăm să salvați traducerile din modul de căutare';

  @override
  String get flip => 'Întoarce';

  @override
  String get hide => 'Ascunde';

  @override
  String get deleteRecord => 'Șterge Înregistrare';

  @override
  String get confirmDelete => 'Sigur doriți să ștergeți această înregistrare?';

  @override
  String get recordDeleted => 'Înregistrare ștearsă cu succes';

  @override
  String deleteFailed(String error) {
    return 'Ștergere eșuată: $error';
  }

  @override
  String get importJsonFile => 'Import JSON';

  @override
  String get importing => 'Se importă...';

  @override
  String get importComplete => 'Import Complet';

  @override
  String get importFailed => 'Import Eșuat';

  @override
  String importFile(String fileName) {
    return 'Fișier: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String importAdded(int count) {
    return 'Adăugat: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Sărit: $count';
  }

  @override
  String get errors => 'Erori:';

  @override
  String get error => 'Eroare';

  @override
  String importErrorMessage(String error) {
    return 'Nu s-a putut importa fișierul:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Selectare Material';

  @override
  String get subject => 'Subiect:';

  @override
  String get source => 'Sursă:';

  @override
  String get file => 'Fișier:';

  @override
  String progress(int current, int total) {
    return 'Progres: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Vă rugăm importați fișier JSON';

  @override
  String get selectMaterialPrompt => 'Vă rugăm selectați material de studiu';

  @override
  String get studyComplete => 'Studiat';

  @override
  String get markAsStudied => 'Marchează ca Studiat';

  @override
  String get listening => 'Ascult...';

  @override
  String get recognized => 'Recunoaștere completă';

  @override
  String recognitionFailed(String error) {
    return 'Recunoaștere vocală eșuată: $error';
  }

  @override
  String get checking => 'Verificare...';

  @override
  String get translating => 'Traducere...';

  @override
  String get translationComplete => 'Traducere completă (necesită salvare)';

  @override
  String get translationLoaded => 'Traducere salvată încărcată';

  @override
  String translationFailed(String error) {
    return 'Traducere eșuată: $error';
  }

  @override
  String get enterTextToTranslate => 'Introduceți text pentru traducere';

  @override
  String get saving => 'Salvare...';

  @override
  String get noTranslationToSave => 'Nicio traducere de salvat';

  @override
  String saveFailed(String error) {
    return 'Salvare eșuată: $error';
  }

  @override
  String get playing => 'Redare...';

  @override
  String get noTextToPlay => 'Nicio text de redat';

  @override
  String playbackFailed(String error) {
    return 'Redare eșuată: $error';
  }

  @override
  String get sourceLanguage => 'Limbă Sursă';

  @override
  String get targetLanguage => 'Limbă Țintă';

  @override
  String get similarTextFound => 'Text similar găsit';

  @override
  String get useExistingText => 'Folosește Existent';

  @override
  String get createNew => 'Creează Nou';

  @override
  String reviewCount(int count) {
    return 'Recapitulat de $count ori';
  }

  @override
  String get tabSpeaking => 'Vorbire';

  @override
  String get speakingPractice => 'Practică Vorbire';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Pronunția ta';

  @override
  String get correctAnswer => 'Răspuns Corect';

  @override
  String score(String score) {
    return 'Acuratețe: $score%';
  }

  @override
  String get perfect => 'Perfect!';

  @override
  String get good => 'Bine';

  @override
  String get tryAgain => 'Încearcă din nou';

  @override
  String get startPractice => 'Începe Practica';

  @override
  String get stopPractice => 'Oprește';

  @override
  String get helpTitle => 'Ajutor & Ghid';

  @override
  String get helpTabModes => 'Moduri';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpMode1Desc =>
      'Recunoaștere vocală, traducere și ascultare rezultat.';

  @override
  String get helpMode1Details =>
      '• Voce: Apasă microfon pentru start/stop\n• Text: Scrie direct pentru traducere\n• Auto-Căutare: Detectează propoziții similare\n• Traducere: Buton pentru traducere instantă\n• Ascultă: Icoană difuzor pentru TTS\n• Salvează: Adaugă în istoric\n• Șterge: Resetează tot';

  @override
  String get helpMode2Desc =>
      'Recapitulare propoziții salvate cu ascundere traducere.';

  @override
  String get helpMode2Details =>
      '• Selectare: Alege set sau \'Tot\'\n• Întoarce: \'Arată/Ascunde\' traducerea\n• Ascultă: Redă TTS propoziție\n• Studiat: Bifează (V) pentru completat\n• Șterge: Apăsare lungă pentru ștergere\n• Filtru: Toate sau după material';

  @override
  String get helpMode3Desc =>
      'Practică vorbire prin ascultare și repetare (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Selectare: Alege pachet\n• Interval: [-] [+] pauză (3s-60s)\n• Start/Stop: Control sesiune\n• Vorbește: Ascultă și repetă\n• Scor: Acuratețe (0-100)\n• Reîncearcă: Buton dacă vocea nu este detectată';

  @override
  String get helpJsonDesc => 'Pentru import materiale în Mod 3, creați JSON:';

  @override
  String get helpTourDesc =>
      'Începeți turul interactiv pentru a învăța funcțiile.';

  @override
  String get startTutorial => 'Start Tur';

  @override
  String get tutorialMicTitle => 'Intrare Vocală';

  @override
  String get tutorialMicDesc => 'Apasă microfonul pentru intrare vocală.';

  @override
  String get tutorialTabDesc => 'Aici puteți selecta modul de învățare dorit.';

  @override
  String get tutorialTapToContinue => 'Atingeți pentru a continua';

  @override
  String get tutorialTransTitle => 'Traducere';

  @override
  String get tutorialTransDesc => 'Apasă aici pentru a traduce textul.';

  @override
  String get tutorialSaveTitle => 'Salvare';

  @override
  String get tutorialSaveDesc => 'Salvează traducerea în înregistrări.';

  @override
  String get tutorialM2SelectTitle => 'Selectare & Filtru';

  @override
  String get tutorialM2SelectDesc =>
      'Alege materiale sau \'Recapitulare Tot\'.';

  @override
  String get tutorialM2ListTitle => 'Listă Studiu';

  @override
  String get tutorialM2ListDesc => 'Verifică cardurile și întoarce-le.';

  @override
  String get tutorialM3SelectTitle => 'Selectare Material';

  @override
  String get tutorialM3SelectDesc => 'Alege un set pentru practică.';

  @override
  String get tutorialM3IntervalTitle => 'Interval';

  @override
  String get tutorialM3IntervalDesc => 'Reglează timpul de așteptare';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3StartDesc => 'Apasă play pentru a începe.';

  @override
  String get startWarning => 'Avertisment';

  @override
  String get noVoiceDetected => 'Voce nedetectată';

  @override
  String get tooltipSearch => 'Căutare';

  @override
  String get tooltipStudyReview => 'Studiu+Revizuire';

  @override
  String get tooltipSpeaking => 'Vorbire';

  @override
  String get tooltipDecrease => 'Scădere';

  @override
  String get tooltipIncrease => 'Creștere';

  @override
  String get languageSettings => 'Setări limbă';

  @override
  String get tutorialM2DropdownDesc => 'Selectați materiale de studiu.';

  @override
  String get tutorialM2ImportDesc =>
      'Importați fișier JSON din folderul dispozitivului.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';
}

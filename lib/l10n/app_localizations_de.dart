// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get basicWords => 'Wortschatz';

  @override
  String get inputLanguage => 'Eingabesprache';

  @override
  String get translationLanguage => 'Übersetzungssprache';

  @override
  String get simplifiedGuidance =>
      'Verwandle alltägliche Gespräche sofort in Fremdsprachen! Talkie zeichnet dein Sprachleben auf.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get accuracy => 'Genauigkeit';

  @override
  String get ttsMissing =>
      'Die Sprachausgabe-Engine für diese Sprache ist auf Ihrem Gerät nicht installiert.';

  @override
  String get ttsInstallGuide =>
      'Bitte installieren Sie die entsprechenden Sprachdaten in den Android-Einstellungen > Google Text-in-Sprache.';

  @override
  String get adLoading =>
      'Werbung wird geladen. Bitte versuchen Sie es später noch einmal.';

  @override
  String get addNewSubject => 'Neuen Titel hinzufügen';

  @override
  String get addParticipant => 'Teilnehmer hinzufügen';

  @override
  String get addTagHint => 'Tag hinzufügen...';

  @override
  String get alreadyHaveAccount => 'Bereits ein Konto?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Automatische Wiedergabe';

  @override
  String get basic => 'Einfach';

  @override
  String get basicDefault => 'Standard';

  @override
  String get basicMaterialRepository => 'Grundlegendes Satz-/Wort-Repository';

  @override
  String get basicSentenceRepository => 'Basis-Sätze';

  @override
  String get basicSentences => 'Satz-Depot';

  @override
  String get basicWordRepository => 'Basis-Wortschatz';

  @override
  String get caseObject => 'Akkusativ';

  @override
  String get casePossessive => 'Genitiv';

  @override
  String get casePossessivePronoun => 'Possessivpronomen';

  @override
  String get caseReflexive => 'Reflexivpronomen';

  @override
  String get caseSubject => 'Nominativ';

  @override
  String get chatAiChat => 'Chatten';

  @override
  String get chatAllConversations => 'Alle Konversationen';

  @override
  String get chatChoosePersona => 'Persona wählen';

  @override
  String get chatEndMessage => 'Möchten Sie den Chat beenden?';

  @override
  String get chatEndTitle => 'Beenden & Speichern';

  @override
  String chatFailed(Object error) {
    return 'Chat fehlgeschlagen: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Chatauszug ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Verlauf';

  @override
  String get chatNew => 'Neuer Chat';

  @override
  String get chatNewChat => 'Neuer Chat';

  @override
  String get chatNoConversations => 'Keine Gespräche';

  @override
  String get chatSaveAndExit => 'Speichern & Beenden';

  @override
  String get chatStartNewPrompt => 'Starte einen Chat zum Üben!';

  @override
  String get chatTypeHint => 'Nachricht schreiben...';

  @override
  String get chatUntitled => 'Unbenannter Chat';

  @override
  String get checking => 'Prüfe...';

  @override
  String get clearAll => '모두 지우기';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get confirmDelete => 'Möchten Sie diesen Eintrag wirklich löschen?';

  @override
  String get confirmDeleteConversation =>
      'Möchten Sie diese Konversation wirklich löschen?\nGelöschte Konversationen können nicht wiederhergestellt werden.';

  @override
  String get confirmDeleteParticipant =>
      'Möchten Sie diesen Teilnehmer wirklich löschen?';

  @override
  String get contextTagHint =>
      'Geben Sie die Situation an, um sie später leichter zu unterscheiden';

  @override
  String get contextTagLabel =>
      'Kontext/Situation (optional) - z.B. Morgengruß, Höflichkeitsform';

  @override
  String get copiedToClipboard => 'In die Zwischenablage kopiert!';

  @override
  String get copy => 'Kopieren';

  @override
  String get correctAnswer => 'Richtige Antwort';

  @override
  String get createNew => 'Neuen Eintrag erstellen';

  @override
  String get currentLocation => 'Aktueller Standort';

  @override
  String get currentMaterialLabel => 'Aktuell ausgewähltes Material:';

  @override
  String get delete => 'Löschen';

  @override
  String deleteFailed(String error) {
    return 'Löschen fehlgeschlagen: $error';
  }

  @override
  String get deleteRecord => 'Eintrag löschen';

  @override
  String get dialogueQuestDesc =>
      'Üben Sie Dialoge durch Rollenspiele. Wählen Sie die passende Antwort und sprechen Sie sie aus.';

  @override
  String get dialogueQuestTitle => 'Dialog-Quest';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get dontHaveAccount => 'Noch kein Konto?';

  @override
  String get editParticipant => 'Teilnehmer bearbeiten';

  @override
  String get email => 'E-Mail';

  @override
  String get emailAlreadyInUse =>
      'Diese E-Mail-Adresse ist bereits registriert. Bitte melde dich an oder nutze die Passwortwiederherstellung.';

  @override
  String get enterNewSubjectName => 'Neuen Titel eingeben';

  @override
  String get enterSentenceHint => 'Gib einen Satz ein...';

  @override
  String get enterTextHint => 'Geben Sie den zu übersetzenden Text ein';

  @override
  String get enterTextToTranslate => 'Bitte Text zum Übersetzen eingeben';

  @override
  String get enterWordHint => 'Gib ein Wort ein...';

  @override
  String get error => 'Fehler';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorSelectCategory => 'Bitte zuerst Wort oder Satz wählen!';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errors => 'Fehler:';

  @override
  String get female => 'Weiblich';

  @override
  String get file => 'Datei:';

  @override
  String get filterAll => 'Alle';

  @override
  String get flip => 'Umdrehen';

  @override
  String get formComparative => 'Komparativ';

  @override
  String get formInfinitive => 'Infinitiv';

  @override
  String get formPast => 'Vergangenheit';

  @override
  String get formPastParticiple => 'Partizip Perfekt';

  @override
  String get formPlural => 'Plural';

  @override
  String get formPositive => 'Positiv';

  @override
  String get formPresent => 'Präsens';

  @override
  String get formPresentParticiple => 'Partizip Präsens (ing)';

  @override
  String get formSingular => 'Singular';

  @override
  String get formSuperlative => 'Superlativ';

  @override
  String get formThirdPersonSingular => '3. Person Singular';

  @override
  String get gameModeDesc => 'Wählen Sie den Spielmodus, den Sie üben möchten';

  @override
  String get gameModeTitle => 'Spielmodus';

  @override
  String get gameOver => 'Spiel vorbei';

  @override
  String get gender => 'Geschlecht';

  @override
  String get labelFilterMaterial => 'Materialien';

  @override
  String get labelFilterTag => 'Schlagwörter';

  @override
  String get generalTags => 'Allgemeine Tags';

  @override
  String get getMaterials => 'Materialien herunterladen';

  @override
  String get good => 'Gut';

  @override
  String get googleContinue => 'Weiter mit Google';

  @override
  String get helpDialogueImportDesc =>
      'Importieren Sie ganze Dialogsätze aus einer JSON-Datei.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'Zum Importieren von Lernmaterialien im Modus 3 JSON-Datei mit folgender Struktur erstellen:';

  @override
  String get helpJsonTypeDialogue => 'Dialog';

  @override
  String get helpJsonTypeSentence => 'Satz';

  @override
  String get helpJsonTypeWord => 'Wort';

  @override
  String get helpMode1Desc =>
      'Starte dein Sprachenlernen auf die intuitivste Weise mit einem hochwertigen 3D-Mikrofon und großen Tastatursymbolen.';

  @override
  String get helpMode1Details =>
      '• Spracheinstellungen: Überprüfen Sie Ihre Muttersprache und die aktuelle Lernsprache oben auf dem Bildschirm und ändern Sie die Lernsprache über die Schaltflächen.\n• Einfache Eingabe: Starten Sie sofort über das große Mikrofon in der Mitte oder das Texteingabefeld.\n• Einstellungen bestätigen: Tippen Sie nach der Eingabe auf die blaue Häkchen-Schaltfläche rechts. Das Fenster für die detaillierten Einstellungen wird angezeigt.\n• Detaillierte Einstellungen: Legen Sie im Dialogfeld den Materialsatz, Notizen (Memos) und Tags für die Speicherung fest.\n• Jetzt übersetzen: Tippen Sie nach der Konfiguration auf die grüne Übersetzungsschaltfläche, um die KI-Übersetzung sofort durchzuführen.\n• Automatische Suche: Erkennt ähnliche vorhandene Übersetzungen in Echtzeit während der Eingabe.\n• Hören & Speichern: Hören Sie die Aussprache über das Lautsprechersymbol und tippen Sie auf \'Daten speichern\', um sie Ihrer Lernliste hinzuzufügen.';

  @override
  String get helpMode2Desc =>
      'Gespeicherte Sätze wiederholen mit Auto-Ausblenden und Wiederholungszähler.';

  @override
  String get helpMode2Details =>
      '• Materialauswahl: Verwende das Menü (⋮) oben rechts für \'Lernmaterial auswählen\' oder \'Online-Materialbibliothek\'\n• Karte umdrehen: \'Anzeigen/Verbergen\' zur Überprüfung der Übersetzung\n• Anhören: Wiedergabe der Aussprache über das Lautsprechersymbol\n• Lernen abgeschlossen: Markiere Karten mit einem Häkchen (V) als gelernt\n• Löschen: Gedrückt halten (Long Click) um die Karte zu löschen\n• Suche und Filter: Suchleiste (intelligente Echtzeitsuche) sowie Tag- und Anfangsbuchstabenfilter';

  @override
  String get helpMode3Desc =>
      'Übe deine Aussprache, indem du Sätze anhörst und nachsprichst (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Materialwahl: Lernpaket wählen\n• Intervall: [-] [+] Wartezeit anpassen (3s-60s)\n• Start/Stop: Sitzung steuern\n• Sprechen: Audio hören und nachsprechen\n• Feedback: Genauigkeit (0-100) mit Farbcode\n• Wiederholen: Retry-Button nutzen falls keine Stimme erkannt';

  @override
  String get helpModeChatDesc =>
      'Übe echte Konversationen, indem du mit einer KI-Persona chattest.';

  @override
  String get helpModeChatDetails =>
      '• KI-Chat: Übe echte Gespräche mit Personas im Menü \'Chat\' in der unteren Tab-Leiste.\n• Persona-Einstellungen: Lege Geschlecht, Name und Sprachcode der anderen Person frei fest.\n• GPS-Rollenspiel: Erkennt deinen aktuellen Standort und empfiehlt Gesprächsthemen, die zum Ort passen.\n• Zweisprachig: Die Antwort der KI wird zusammen mit der Übersetzung angezeigt, um den Lerneffekt zu maximieren.\n• Verlaufsverwaltung: Filtern des bisherigen Gesprächsverlaufs und Speichern bestimmter Nachrichten aus dem Gespräch als Lernmaterial.';

  @override
  String get helpTabJson => 'JSON-Format';

  @override
  String get helpTabModes => 'Modi';

  @override
  String get helpTabTour => 'Tour starten';

  @override
  String get helpTitle => 'Hilfe & Anleitung';

  @override
  String get helpTourDesc =>
      'Der **Hervorhebungs-Kreis** führt Sie durch die Hauptfunktionen.\n(z. B. können Sie einen Eintrag löschen, indem Sie lange drücken, wenn der **Hervorhebungs-Kreis** darauf zeigt.)';

  @override
  String get hide => 'Verbergen';

  @override
  String importAdded(int count) {
    return 'Hinzugefügt: $count Einträge';
  }

  @override
  String get importComplete => 'Import abgeschlossen';

  @override
  String get importDuplicateTitleError =>
      'Es existiert bereits ein Material mit dem gleichen Titel. Bitte ändern Sie den Titel und versuchen Sie es erneut.';

  @override
  String importErrorMessage(String error) {
    return 'Import fehlgeschlagen:\\n$error';
  }

  @override
  String get importFailed => 'Import fehlgeschlagen';

  @override
  String importFile(String fileName) {
    return 'Datei: $fileName';
  }

  @override
  String get importJsonFile => 'JSON-Datei importieren';

  @override
  String get importJsonFilePrompt => 'Bitte importieren Sie eine JSON-Datei';

  @override
  String importSkipped(int count) {
    return 'Übersprungen: $count Einträge';
  }

  @override
  String importTotal(int count) {
    return 'Gesamt: $count Einträge';
  }

  @override
  String get importing => 'Importiere...';

  @override
  String get inputModeTitle => '입력';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervall: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Bitte geben Sie eine gültige E-Mail-Adresse ein.';

  @override
  String get kakaoContinue => 'Mit Kakao fortfahren';

  @override
  String get labelLangCode => 'Sprachcode (z.B. en-US, ko-KR)';

  @override
  String get labelName => 'Name';

  @override
  String get labelNote => 'Notiz';

  @override
  String get labelPOS => 'Wortart';

  @override
  String get labelRole => 'Rolle';

  @override
  String get labelSentence => 'Satz';

  @override
  String get labelSentenceCollection => 'Satzsammlung';

  @override
  String get labelSentenceType => 'Satztyp';

  @override
  String get labelShowMemorized => 'Erledigt';

  @override
  String get labelType => 'Typ:';

  @override
  String get labelWord => 'Wort';

  @override
  String get labelWordbook => 'Wortsammlung';

  @override
  String get language => 'Sprache';

  @override
  String get languageSettings => 'Spracheinstellungen';

  @override
  String get languageSettingsTitle => 'Spracheinstellungen';

  @override
  String get libTitleFirstMeeting => 'Erstes Treffen';

  @override
  String get libTitleGreetings1 => 'Begrüßungen 1';

  @override
  String get libTitleNouns1 => 'Nomen 1';

  @override
  String get libTitleVerbs1 => 'Verben 1';

  @override
  String get listen => 'Anhören';

  @override
  String get listening => 'Zuhören...';

  @override
  String get loadingParticipants => 'Teilnehmer werden geladen...';

  @override
  String get location => 'Standort';

  @override
  String get login => 'Anmelden';

  @override
  String get logout => 'Abmelden';

  @override
  String get logoutConfirmMessage =>
      'Möchten Sie sich von diesem Gerät abmelden?';

  @override
  String get logoutConfirmTitle => 'Abmelden';

  @override
  String get male => 'Männlich';

  @override
  String get manageParticipants => 'Teilnehmer verwalten';

  @override
  String get manual => 'Manuelle Eingabe';

  @override
  String get markAsStudied => 'Als gelernt markieren';

  @override
  String get materialInfo => 'Materialinfo';

  @override
  String get me => 'Ich';

  @override
  String get menuDeviceImport => 'Materialien vom Gerät importieren';

  @override
  String get menuHelp => 'Hilfe';

  @override
  String get menuLanguageSettings => 'Spracheinstellungen';

  @override
  String get menuOnlineLibrary => 'Online-Bibliothek';

  @override
  String get menuSelectMaterialSet => 'Lernmaterial auswählen';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Einführungstour';

  @override
  String get menuWebDownload => 'Benutzerhandbuch';

  @override
  String get metadataDialogTitle => 'Detaillierte Klassifizierung';

  @override
  String get metadataFormType => 'Grammatikalische Form';

  @override
  String get metadataRootWord => 'Grundform';

  @override
  String get micButtonTooltip => 'Spracherkennung starten';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Aktuell ausgewähltes Material: $name';
  }

  @override
  String get mode2Title => 'Wiederholung';

  @override
  String get mode3Next => 'Weiter';

  @override
  String get mode3Start => 'Start';

  @override
  String get mode3Stop => 'Stop';

  @override
  String get mode3TryAgain => 'Wiederholen';

  @override
  String get mySentenceCollection => 'Meine Satzsammlung';

  @override
  String get myWordbook => 'Mein Vokabelheft';

  @override
  String get neutral => 'Neutrum';

  @override
  String get newSubjectName => 'Neuer Titel für Vokabelheft/Phrasensammlung';

  @override
  String get next => 'Weiter';

  @override
  String get noDialogueHistory => 'Kein Gesprächsverlauf.';

  @override
  String get noInternetWarningMic =>
      'Keine Internetverbindung. Die Spracherkennung ist im Offline-Modus möglicherweise nicht verfügbar.';

  @override
  String get noInternetWarningTranslate =>
      'Keine Internetverbindung. Die Übersetzungsfunktion ist im Offline-Modus nicht verfügbar. Bitte nutzen Sie den Wiederholungsmodus.';

  @override
  String get noMaterialsInCategory =>
      'In dieser Kategorie sind keine Materialien vorhanden.';

  @override
  String get noParticipantsFound => 'Keine Teilnehmer registriert.';

  @override
  String get noRecords => 'Keine Lernprotokolle für die ausgewählte Sprache';

  @override
  String get noStudyMaterial => 'Kein Lernmaterial vorhanden.';

  @override
  String get noTextToPlay => 'Kein Text zum Abspielen';

  @override
  String get noTranslationToSave => 'Keine Übersetzung zum Speichern';

  @override
  String get noVoiceDetected => 'Keine Stimme erkannt';

  @override
  String get notSelected => '- Keine Auswahl -';

  @override
  String get onlineLibraryCheckInternet =>
      'Bitte überprüfen Sie Ihre Internetverbindung oder versuchen Sie es später erneut.';

  @override
  String get onlineLibraryLoadFailed =>
      'Das Laden der Materialien ist fehlgeschlagen.';

  @override
  String get onlineLibraryNoMaterials => 'Keine Materialien vorhanden.';

  @override
  String get participantDeleted => 'Teilnehmer wurde gelöscht.';

  @override
  String get participantRename => 'Teilnehmer umbenennen';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Partnermodus';

  @override
  String get password => 'Passwort';

  @override
  String get passwordTooShort =>
      'Das Passwort muss mindestens 6 Zeichen lang sein.';

  @override
  String get perfect => 'Perfekt!';

  @override
  String get personaFriend => 'Lokaler Freund';

  @override
  String get personaGuide => 'Reiseführer';

  @override
  String get personaTeacher => 'Englischlehrer';

  @override
  String get playAgain => 'Nochmal spielen';

  @override
  String playbackFailed(String error) {
    return 'Wiedergabe fehlgeschlagen: $error';
  }

  @override
  String get playing => 'Wiedergabe...';

  @override
  String get posAdjective => 'Adjektiv';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posConjunction => 'Konjunktion';

  @override
  String get posInterjection => 'Interjektion';

  @override
  String get posNoun => 'Nomen';

  @override
  String get posPreposition => 'Präposition';

  @override
  String get posPronoun => 'Pronomen';

  @override
  String get posVerb => 'Verb';

  @override
  String get practiceModeTitle => 'Üben';

  @override
  String get practiceWordsOnly => 'Nur Wörter üben';

  @override
  String progress(int current, int total) {
    return 'Fortschritt: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Zeige die letzten $count Elemente';
  }

  @override
  String recognitionFailed(String error) {
    return 'Spracherkennung fehlgeschlagen: $error';
  }

  @override
  String get recognized => 'Erkennung abgeschlossen';

  @override
  String get recognizedText => 'Erkannter Text:';

  @override
  String get recordDeleted => 'Eintrag erfolgreich gelöscht';

  @override
  String get refresh => 'Aktualisieren';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get resetPracticeHistory => 'Übungshistorie zurücksetzen';

  @override
  String get retry => 'Erneut versuchen?';

  @override
  String get reviewAll => 'Alle wiederholen';

  @override
  String reviewCount(int count) {
    return '$count mal wiederholt';
  }

  @override
  String get reviewModeTitle => '복습';

  @override
  String get roleAi => 'KI';

  @override
  String get roleThirdParty => 'Dritte(r)';

  @override
  String get roleUser => 'Benutzer';

  @override
  String get save => 'Speichern';

  @override
  String get saveData => 'Speichern';

  @override
  String saveFailed(String error) {
    return 'Speichern fehlgeschlagen: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Speichern Sie Übersetzungen im Suchmodus';

  @override
  String get saved => 'Gespeichert';

  @override
  String get saving => 'Speichern...';

  @override
  String score(String score) {
    return 'Genauigkeit: $score%';
  }

  @override
  String get scoreLabel => 'Punktzahl';

  @override
  String get search => 'Suche';

  @override
  String get searchConditions => 'Suchbedingungen';

  @override
  String get searchSentenceHint => 'Satz suchen...';

  @override
  String get searchWordHint => 'Wort suchen...';

  @override
  String get sectionSentence => 'Satzabschnitt';

  @override
  String get sectionSentences => '문장';

  @override
  String get sectionWord => 'Wortabschnitt';

  @override
  String get sectionWords => '단어';

  @override
  String get selectExistingSubject => 'Vorhandenen Titel auswählen';

  @override
  String get selectMaterialPrompt => 'Bitte wählen Sie ein Lernmaterial aus';

  @override
  String get selectMaterialSet => '학습 자료집 선택';

  @override
  String get selectPOS => 'Wortart auswählen';

  @override
  String get selectParticipants => 'Teilnehmer auswählen';

  @override
  String get selectSentenceType => 'Satzart auswählen';

  @override
  String get selectStudyMaterial => 'Lernmaterial auswählen';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Satz';

  @override
  String get signUp => 'Registrieren';

  @override
  String get similarTextFound => 'Ähnlicher Text gefunden';

  @override
  String get skip => '건너뛰기';

  @override
  String get source => 'Quelle:';

  @override
  String get sourceLanguage => 'Quellsprache';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Jetzt sprechen!';

  @override
  String get speaker => 'Sprecher';

  @override
  String get speakerSelect => 'Sprecher auswählen';

  @override
  String get speakingPractice => 'Sprechübung';

  @override
  String get startChat => 'Chat starten';

  @override
  String get startPractice => 'Übung starten';

  @override
  String get startTutorial => 'Tutorial starten';

  @override
  String get startWarning => 'Warnung';

  @override
  String get startsWith => 'Beginnt mit';

  @override
  String get statusCheckEmail =>
      'Bitte bestätige deine E-Mail-Adresse, um die Verifizierung abzuschließen.';

  @override
  String statusDownloading(Object name) {
    return 'Wird heruntergeladen: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Import fehlgeschlagen: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name wurde erfolgreich importiert';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Anmeldung abgebrochen.';

  @override
  String statusLoginFailed(Object error) {
    return 'Anmeldung fehlgeschlagen: $error';
  }

  @override
  String get statusLoginSuccess => 'Anmeldung erfolgreich.';

  @override
  String get statusLogoutSuccess => 'Abmeldung erfolgreich.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Registrierung fehlgeschlagen: $error';
  }

  @override
  String get statusSigningUp => 'Registrierung...';

  @override
  String get stopPractice => 'Übung stoppen';

  @override
  String get studyComplete => 'Gelernt';

  @override
  String studyRecords(int count) {
    return 'Lernprotokolle ($count)';
  }

  @override
  String get styleFormal => 'Formell';

  @override
  String get styleInformal => 'Informell';

  @override
  String get stylePolite => 'Höflich';

  @override
  String get styleSlang => 'Slang';

  @override
  String get subject => 'Thema:';

  @override
  String get swapLanguages => 'Sprachen tauschen';

  @override
  String get switchToAi => 'Zum KI-Modus wechseln';

  @override
  String get switchToPartner => 'Zum Partnermodus wechseln';

  @override
  String get syncingData => 'Daten werden synchronisiert...';

  @override
  String get tabConversation => 'Konversation';

  @override
  String tabReview(int count) {
    return 'Wiederholen ($count)';
  }

  @override
  String get tabSentence => 'Satz';

  @override
  String get tabSpeaking => 'Sprechen';

  @override
  String tabStudyMaterial(int count) {
    return 'Lernmaterial ($count)';
  }

  @override
  String get tabWord => 'Wort';

  @override
  String get tagFormal => 'Höflichkeitsform';

  @override
  String get tagSelection => 'Tag-Auswahl';

  @override
  String get targetLanguage => 'Zielsprache';

  @override
  String get targetLanguageFilter => 'Zielsprache Filter:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Zeit zum Nachdenken, bevor die richtige Antwort angezeigt wird.';

  @override
  String get thinkingTimeInterval => 'Wiedergabeverzögerung';

  @override
  String get timeUp => 'Zeit abgelaufen!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Titel-Tag (Materialsammlung)';

  @override
  String get tooltipDecrease => 'Verringern';

  @override
  String get tooltipIncrease => 'Erhöhen';

  @override
  String get tooltipSearch => 'Suchen';

  @override
  String get tooltipSpeaking => 'Sprechen';

  @override
  String get tooltipStudyReview => 'Lernen+Wiederholen';

  @override
  String totalRecords(int count) {
    return 'Insgesamt $count Einträge (alle anzeigen)';
  }

  @override
  String get translate => 'Übersetzen';

  @override
  String get translating => 'Übersetze...';

  @override
  String get translation => 'Übersetzung';

  @override
  String get translationComplete =>
      'Übersetzung fertig (Speichern erforderlich)';

  @override
  String translationFailed(String error) {
    return 'Übersetzung fehlgeschlagen: $error';
  }

  @override
  String get translationLimitExceeded => 'Übersetzungslimit überschritten';

  @override
  String get translationLimitMessage =>
      'Sie haben Ihr tägliches Limit von 5 kostenlosen Übersetzungen erreicht.\\n\\nMöchten Sie sich eine Werbung ansehen, um sofort 5 weitere zu erhalten?';

  @override
  String get translationLoaded => 'Gespeicherte Übersetzung geladen';

  @override
  String get translationRefilled => 'Ihre Übersetzungen wurden um 5 erhöht!';

  @override
  String get translationResultHint => 'Übersetzungsergebnis - bearbeitbar';

  @override
  String get tryAgain => 'Nochmal versuchen';

  @override
  String get tutorialAiChatDesc => 'Übe echte Gespräche mit KI-Personas.';

  @override
  String get tutorialAiChatTitle => 'KI-Chat';

  @override
  String get tutorialContextDesc =>
      'Fügen Sie Kontext hinzu (z. B. Morgen), um ähnliche Sätze zu unterscheiden.';

  @override
  String get tutorialContextTitle => 'Kontext-Tag';

  @override
  String get tutorialLangSettingsDesc =>
      'Konfigurieren Sie Quell- und Zielsprachen für die Übersetzung.';

  @override
  String get tutorialLangSettingsTitle => 'Spracheinstellungen';

  @override
  String get tutorialM1ToggleDesc =>
      'Wechsle hier zwischen Wort- und Satzmodus.';

  @override
  String get tutorialM1ToggleTitle => 'Wort/Satz-Modus';

  @override
  String get tutorialM2DropdownDesc => 'Wählen Sie Lernmaterialien aus.';

  @override
  String get tutorialM2ImportDesc => 'JSON-Datei aus Geräteordner importieren.';

  @override
  String get tutorialM2ListDesc =>
      'Überprüfen Sie Ihre gespeicherten Karten und drehen Sie sie um. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Lernliste';

  @override
  String get tutorialM2SearchDesc =>
      'Durchsuchen Sie gespeicherte Wörter und Sätze, um sie schnell zu finden.';

  @override
  String get tutorialM2SelectDesc =>
      'Wählen Sie Lernmaterialien oder wechseln Sie zu \'Alles wiederholen\'.';

  @override
  String get tutorialM2SelectTitle => 'Auswahl & Filter';

  @override
  String get tutorialM3IntervalDesc =>
      'Passen Sie die Wartezeit zwischen den Sätzen an.';

  @override
  String get tutorialM3IntervalTitle => 'Intervall';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc =>
      'Wählen Sie ein Materialset für die Sprechübung.';

  @override
  String get tutorialM3SelectTitle => 'Materialwahl';

  @override
  String get tutorialM3StartDesc =>
      'Tippen Sie auf Play, um mit dem Zuhören und Nachsprechen zu beginnen.';

  @override
  String get tutorialM3StartTitle => 'Übung starten';

  @override
  String get tutorialM3WordsDesc =>
      'Aktivieren Sie diese Option, um nur gespeicherte Wörter zu üben.';

  @override
  String get tutorialM3WordsTitle => 'Wort-Übungen';

  @override
  String get tutorialMicDesc =>
      'Tippen Sie auf das Mikrofon, um die Spracheingabe zu starten.';

  @override
  String get tutorialMicTitle => 'Spracheingabe';

  @override
  String get tutorialSaveDesc =>
      'Speichern Sie Ihre Übersetzung in den Lernprotokollen.';

  @override
  String get tutorialSaveTitle => 'Speichern';

  @override
  String get tutorialSwapDesc =>
      'Ich tausche meine Sprache mit der Sprache, die ich lerne.';

  @override
  String get tutorialTabDesc =>
      'Hier können Sie den gewünschten Lernmodus auswählen.';

  @override
  String get tutorialTapToContinue => 'Tippen Sie, um fortzufahren';

  @override
  String get tutorialTransDesc =>
      'Tippen Sie hier, um Ihren Text zu übersetzen.';

  @override
  String get tutorialTransTitle => 'Übersetzen';

  @override
  String get typeExclamation => 'Ausrufesatz';

  @override
  String get typeImperative => 'Aufforderungssatz';

  @override
  String get typeQuestion => 'Fragesatz';

  @override
  String get typeStatement => 'Aussagesatz';

  @override
  String get usageLimitTitle => 'Limit erreicht';

  @override
  String get useExistingText => 'Vorhandenen nutzen';

  @override
  String get viewOnlineGuide => 'Online-Anleitung anzeigen';

  @override
  String get voluntaryTranslations => 'Freiwillige Übersetzungen';

  @override
  String get watchAdAndRefill => 'Werbung ansehen und auffüllen (+5)';

  @override
  String get word => 'Wort';

  @override
  String get wordDefenseDesc =>
      'Verteidigen Sie Ihre Basis, indem Sie Wörter sagen, bevor die Feinde ankommen.';

  @override
  String get wordDefenseTitle => 'Wortverteidigung';

  @override
  String get wordModeLabel => 'Wort-Modus';

  @override
  String get yourPronunciation => 'Deine Aussprache';

  @override
  String get ttsUnsupportedNatively =>
      'Dieses Gerät unterstützt die Sprachausgabe für diese Sprache in den Standardeinstellungen nicht.';

  @override
  String get homeTab => 'Startseite';

  @override
  String get welcomeTitle => 'Willkommen bei Talkie!';

  @override
  String get welcomeDesc =>
      'Willkommen bei Talkie! Wir unterstützen mit 100-prozentiger Integrität über 80 Sprachen weltweit und bieten mit einem neuen, hochwertigen 3D-Design und optimierter Leistung ein perfektes Lernerlebnis.';

  @override
  String get welcomeButton => 'Loslegen';

  @override
  String get labelDetails => 'Detaileinstellungen';

  @override
  String get translationResult => 'Übersetzungsergebnis';

  @override
  String get inputContent => 'Eingabeinhalt';

  @override
  String get translateNow => 'Jetzt übersetzen';

  @override
  String get tooltipSettingsConfirm => 'Einstellungen bestätigen';

  @override
  String get hintNoteExample => 'Beispiel: Kontext, Homonyme usw.';

  @override
  String get hintTagExample => 'Beispiel: Geschäftlich, Reisen...';

  @override
  String get addNew => 'Neu hinzufügen';

  @override
  String get newNotebookTitle => 'Neuer Notizbuchtitel';

  @override
  String get enterNameHint => 'Namen eingeben';

  @override
  String get add => 'Hinzufügen';

  @override
  String get openSettings => 'Einstellungen öffnen';

  @override
  String get helpNotebook =>
      'Wählen Sie den Ordner zum Speichern der übersetzten Ergebnisse aus.';

  @override
  String get helpNote =>
      'Notieren Sie frei die Bedeutung, Beispiele oder Situationen eines Wortes.';

  @override
  String get helpTag =>
      'Geben Sie Schlüsselwörter zur späteren Kategorisierung oder Suche ein.';
}

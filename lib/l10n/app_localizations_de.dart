// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

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
      '• Spracheinstellungen: Sprache ändern über das Übersetzungs-Symbol\n• Hilfe: Anleitung über das Hilfe-Symbol aufrufen\n• Spracheingabe: Mikrofon-Symbol tippen zum Starten/Stoppen\n• Texteingabe: Direkt tippen zum Übersetzen\n• Auto-Suche: Findet ähnliche vorhandene Sätze\n• Übersetzen: Button tippen für Sofortübersetzung\n• Anhören: Lautsprecher-Symbol für TTS (Original/Übersetzung)\n• Speichern: \'Daten speichern\' fügt zum Verlauf hinzu\n• Leeren: Alle Eingaben zurücksetzen';

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
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc =>
      'Zum Importieren von Lernmaterialien im Modus 3 JSON-Datei mit folgender Struktur erstellen:';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc =>
      'Der **Hervorhebungs-Kreis** führt Sie durch die Hauptfunktionen.\n(z. B. können Sie einen Eintrag löschen, indem Sie lange drücken, wenn der **Hervorhebungs-Kreis** darauf zeigt.)';

  @override
  String get partnerMode => 'Partner Mode';

  @override
  String get manual => 'Manual';

  @override
  String get speaker => 'Speaker';

  @override
  String get switchToAi => 'Switch to AI';

  @override
  String get switchToPartner => 'Switch to Partner';

  @override
  String get currentLocation => 'Current Location';

  @override
  String get location => 'Standort';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Ich';

  @override
  String get currentMaterialLabel => 'Current Selected Material:';

  @override
  String get basicMaterialRepository => 'Basic Repository';

  @override
  String get word => 'Word';

  @override
  String get sentence => 'Sentence';

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
      'Überprüfen Sie Ihre gespeicherten Karten und drehen Sie sie um. (Long-press to delete)';

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

  @override
  String get tutorialM2DropdownDesc => 'Wählen Sie Lernmaterialien aus.';

  @override
  String get tutorialM2ImportDesc => 'JSON-Datei aus Geräteordner importieren.';

  @override
  String get tutorialLangSettingsTitle => 'Spracheinstellungen';

  @override
  String get tutorialLangSettingsDesc =>
      'Konfigurieren Sie Quell- und Zielsprachen für die Übersetzung.';

  @override
  String get copy => 'Kopieren';

  @override
  String get copiedToClipboard => 'In die Zwischenablage kopiert!';

  @override
  String get tutorialContextTitle => 'Kontext-Tag';

  @override
  String get tutorialContextDesc =>
      'Fügen Sie Kontext hinzu (z. B. Morgen), um ähnliche Sätze zu unterscheiden.';

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
  String get wordDefenseDesc =>
      'Defend your base by speaking words correctly before enemies reach you.';

  @override
  String get dialogueQuestTitle => 'Dialogue Quest';

  @override
  String get dialogueQuestDesc =>
      'Roleplay in scenarios. Choose the right response and speak it aloud.';

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
  String get usageLimitTitle => 'Limit erreicht';

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
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc =>
      'Check this to practice only your saved words.';

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
  String get basicWords => 'Wortschatz';

  @override
  String get basicSentences => 'Satz-Depot';

  @override
  String get selectMaterialSet => '학습 자료집 선택';

  @override
  String get sectionWords => '단어';

  @override
  String get sectionSentences => '문장';

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
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialSwapDesc =>
      'Ich tausche meine Sprache mit der Sprache, die ich lerne.';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get menuSelectMaterialSet => 'Lernmaterial auswählen';

  @override
  String get sectionWord => 'Wortabschnitt';

  @override
  String get sectionSentence => 'Satzabschnitt';

  @override
  String get tabWord => 'Wort';

  @override
  String get tabSentence => 'Satz';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get clearAll => '모두 지우기';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get skip => '건너뛰기';

  @override
  String get inputModeTitle => '입력';

  @override
  String get reviewModeTitle => '복습';

  @override
  String get practiceModeTitle => '발음 연습';

  @override
  String get chatHistoryTitle => 'Verlauf';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => 'Neuer Chat';

  @override
  String get chatChoosePersona => 'Persona wählen';

  @override
  String get chatTypeHint => 'Nachricht schreiben...';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String get chatNoConversations => 'Keine Gespräche';

  @override
  String get chatStartNewPrompt => 'Starte einen Chat zum Üben!';

  @override
  String chatFromConversation(Object speaker) {
    return 'From Conversation ($speaker)';
  }

  @override
  String get personaTeacher => 'Englischlehrer';

  @override
  String get personaGuide => 'Reiseführer';

  @override
  String get personaFriend => 'Lokaler Freund';

  @override
  String get chatUntitled => 'Untitled Conversation';

  @override
  String get chatAiChat => 'KI-Chat';

  @override
  String get tutorialAiChatTitle => 'KI-Chat';

  @override
  String get tutorialAiChatDesc => 'Übe echte Gespräche mit KI-Personas.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Current Material Set: $name';
  }

  @override
  String get basicWordRepository => 'Basis-Wortschatz';

  @override
  String get basicSentenceRepository => 'Basis-Sätze';

  @override
  String get chatEndTitle => 'Beenden & Speichern';

  @override
  String get chatEndMessage => 'Möchten Sie den Chat beenden?';

  @override
  String get chatSaveAndExit => 'Speichern & Beenden';

  @override
  String get errorSelectCategory => 'Bitte zuerst Wort oder Satz wählen!';

  @override
  String get tutorialM1ToggleTitle => 'Wort/Satz-Modus';

  @override
  String get tutorialM1ToggleDesc =>
      'Wechsle hier zwischen Wort- und Satzmodus.';

  @override
  String get metadataDialogTitle => 'Details';

  @override
  String get tagFormal => 'Höflichkeitsform';

  @override
  String get selectPOS => 'Select POS';

  @override
  String get selectSentenceType => 'Select Sentence Type';

  @override
  String get metadataRootWord => 'Root Word';

  @override
  String get posNoun => 'Noun';

  @override
  String get posVerb => 'Verb';

  @override
  String get posAdjective => 'Adjective';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posPronoun => 'Pronoun';

  @override
  String get posPreposition => 'Preposition';

  @override
  String get posConjunction => 'Conjunction';

  @override
  String get posInterjection => 'Interjection';

  @override
  String get typeStatement => 'Statement';

  @override
  String get typeQuestion => 'Question';

  @override
  String get typeExclamation => 'Exclamation';

  @override
  String get typeImperative => 'Imperative';

  @override
  String get labelNote => 'Note';

  @override
  String get labelShowMemorized => 'Finished';

  @override
  String get tagSelection => 'Select Tags';

  @override
  String get metadataFormType => 'Form Type';

  @override
  String get formInfinitive => 'Infinitive/Present';

  @override
  String get formPast => 'Past';

  @override
  String get formPastParticiple => 'Past Participle';

  @override
  String get formPresentParticiple => 'Present Participle';

  @override
  String get formPresent => 'Present';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get formSingular => 'Singular';

  @override
  String get caseSubject => 'Subject';

  @override
  String get caseObject => 'Object';

  @override
  String get casePossessive => 'Possessive';

  @override
  String get casePossessivePronoun => 'Possessive Pronoun';

  @override
  String get caseReflexive => 'Reflexive';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';

  @override
  String get searchConditions => 'Search Conditions';

  @override
  String recentNItems(int count) {
    return 'Recent $count items';
  }

  @override
  String get startsWith => 'Starts with';

  @override
  String get reset => 'Reset';

  @override
  String get participantRename => 'Rename Participant';

  @override
  String get labelName => 'Name';

  @override
  String get gender => 'Gender';

  @override
  String get language => 'Language';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get neutral => 'Neutral';

  @override
  String get chatAllConversations => 'Alle Konversationen';

  @override
  String get confirmDeleteConversation =>
      'Möchten Sie diese Konversation wirklich löschen?\nGelöschte Konversationen können nicht wiederhergestellt werden.';
}

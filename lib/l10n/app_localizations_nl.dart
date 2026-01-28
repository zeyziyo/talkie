// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Herhalen ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Studiemateriaal ($count)';
  }

  @override
  String get mode2Title => 'Herhaling';

  @override
  String get search => 'Zoeken';

  @override
  String get translate => 'Vertalen';

  @override
  String get listen => 'Luisteren';

  @override
  String get saveData => 'Opslaan';

  @override
  String get saved => 'Opgeslagen';

  @override
  String get delete => 'Verwijderen';

  @override
  String get materialInfo => 'Materiaalinfo';

  @override
  String get cancel => 'Annuleren';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Verversen';

  @override
  String studyRecords(int count) {
    return 'Records ($count)';
  }

  @override
  String get targetLanguageFilter => 'Doeltaal Filter:';

  @override
  String get noRecords => 'Geen records voor geselecteerde taal';

  @override
  String get saveTranslationsFromSearch => 'Vertaal uit zoekmodus opslaan';

  @override
  String get flip => 'Draaien';

  @override
  String get hide => 'Verbergen';

  @override
  String get deleteRecord => 'Record verwijderen';

  @override
  String get confirmDelete => 'Weet u zeker dat u dit record wilt verwijderen?';

  @override
  String get recordDeleted => 'Record succesvol verwijderd';

  @override
  String deleteFailed(String error) {
    return 'Verwijderen mislukt: $error';
  }

  @override
  String get importJsonFile => 'JSON Importeren';

  @override
  String get importing => 'Importeren...';

  @override
  String get importComplete => 'Import Voltooid';

  @override
  String get importFailed => 'Import Mislukt';

  @override
  String importFile(String fileName) {
    return 'Bestand: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Totaal: $count';
  }

  @override
  String importAdded(int count) {
    return 'Toegevoegd: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Overgeslagen: $count';
  }

  @override
  String get errors => 'Fouten:';

  @override
  String get error => 'Fout';

  @override
  String importErrorMessage(String error) {
    return 'Bestand importeren mislukt:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Selecteer Materiaal';

  @override
  String get subject => 'Onderwerp:';

  @override
  String get source => 'Bron:';

  @override
  String get file => 'Bestand:';

  @override
  String progress(int current, int total) {
    return 'Voortgang: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Importeer a.u.b. een JSON-bestand';

  @override
  String get selectMaterialPrompt => 'Selecteer a.u.b. studiemateriaal';

  @override
  String get studyComplete => 'Bestudeerd';

  @override
  String get markAsStudied => 'Markeren als Bestudeerd';

  @override
  String get listening => 'Luisteren...';

  @override
  String get recognized => 'Herkenning voltooid';

  @override
  String recognitionFailed(String error) {
    return 'Spraakherkenning mislukt: $error';
  }

  @override
  String get checking => 'Controleren...';

  @override
  String get translating => 'Vertalen...';

  @override
  String get translationComplete => 'Vertaling voltooid (opslaan vereist)';

  @override
  String get translationLoaded => 'Opgeslagen vertaling geladen';

  @override
  String translationFailed(String error) {
    return 'Vertaling mislukt: $error';
  }

  @override
  String get enterTextToTranslate => 'Voer tekst in om te vertalen';

  @override
  String get saving => 'Opslaan...';

  @override
  String get noTranslationToSave => 'Geen vertaling om op te slaan';

  @override
  String saveFailed(String error) {
    return 'Opslaan mislukt: $error';
  }

  @override
  String get playing => 'Afspelen...';

  @override
  String get noTextToPlay => 'Geen tekst om af te spelen';

  @override
  String playbackFailed(String error) {
    return 'Afspelen mislukt: $error';
  }

  @override
  String get sourceLanguage => 'Brontaal';

  @override
  String get targetLanguage => 'Doeltaal';

  @override
  String get similarTextFound => 'Vergelijkbare tekst gevonden';

  @override
  String get useExistingText => 'Gebruik Bestaande';

  @override
  String get createNew => 'Nieuwe Maken';

  @override
  String reviewCount(int count) {
    return '$count keer herhaald';
  }

  @override
  String get tabSpeaking => 'Spreken';

  @override
  String get speakingPractice => 'Spreekoefening';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Jouw Uitspraak';

  @override
  String get correctAnswer => 'Juiste Antwoord';

  @override
  String score(String score) {
    return 'Nauwkeurigheid: $score%';
  }

  @override
  String get perfect => 'Perfect!';

  @override
  String get good => 'Goed';

  @override
  String get tryAgain => 'Opnieuw Proberen';

  @override
  String get startPractice => 'Start Oefening';

  @override
  String get stopPractice => 'Stop Oefening';

  @override
  String get helpTitle => 'Hulp & Gids';

  @override
  String get helpTabModes => 'Modi';

  @override
  String get helpTabJson => 'JSON Formaat';

  @override
  String get helpTabTour => 'Rondleiding';

  @override
  String get helpMode1Desc =>
      'Herken stem, vertaal naar doeltaal en luister naar resultaat.';

  @override
  String get helpMode1Details =>
      '• Spraak: Tik microfoon om te starten/stoppen\n• Tekst: Typ direct om te vertalen\n• Auto-Zoek: Detecteert bestaande zinnen\n• Vertaal: Tik knop voor directe vertaling\n• Luister: Speaker icoon voor TTS\n• Opslaan: \'Data Opslaan\' voegt toe aan geschiedenis\n• Wissen: Reset alle invoer';

  @override
  String get helpMode2Desc =>
      'Herhaal opgeslagen zinnen met auto-verberg vertalingen.';

  @override
  String get helpMode2Details =>
      '• Selecteer Materiaal: Kies set of \'Alles Herhalen\'\n• Kaart Draaien: Gebruik \'Toon/Verberg\' voor vertaling\n• Luister: Speel TTS voor zin\n• Markeer Bestudeerd: Vinkje (V) voor voltooide items\n• Verwijder: Lang drukken op kaart om te verwijderen\n• Filter: Bekijk alles of filter op materiaal';

  @override
  String get helpMode3Desc =>
      'Oefen spreken door te luisteren en na te zeggen (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Selecteer Materiaal: Kies studiepakket\n• Interval: [-] [+] pas wachttijd aan (3s-60s)\n• Start/Stop: Beheer sessie\n• Spreek: Luister audio en herhaal\n• Feedback: Score (0-100)\n• Probeer Opnieuw: Knop als stem niet gedetecteerd';

  @override
  String get helpJsonDesc =>
      'Om studiematerialen in Modus 3 te importeren, maak JSON bestand met deze structuur:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Start Rondleiding';

  @override
  String get tutorialMicTitle => 'Spraakinvoer';

  @override
  String get tutorialMicDesc => 'Tik op de microfoonknop om te starten.';

  @override
  String get tutorialTabDesc => 'Hier kunt u de gewenste leermodus selecteren.';

  @override
  String get tutorialTapToContinue => 'Tik om door te gaan';

  @override
  String get tutorialTransTitle => 'Vertalen';

  @override
  String get tutorialTransDesc => 'Tik hier om je tekst te vertalen.';

  @override
  String get tutorialSaveTitle => 'Opslaan';

  @override
  String get tutorialSaveDesc => 'Sla je vertaling op in studierecords.';

  @override
  String get tutorialM2SelectTitle => 'Selecteer & Filter';

  @override
  String get tutorialM2SelectDesc =>
      'Kies materialen of wissel naar \'Alles Herhalen\'.';

  @override
  String get tutorialM2ListTitle => 'Studielijst';

  @override
  String get tutorialM2ListDesc =>
      'Bekijk opgeslagen kaarten en draai ze om. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Selecteer Materiaal';

  @override
  String get tutorialM3SelectDesc => 'Kies een set voor spreekoefening.';

  @override
  String get tutorialM3IntervalTitle => 'Interval';

  @override
  String get tutorialM3IntervalDesc => 'Pas de wachttijd tussen zinnen aan.';

  @override
  String get tutorialM3StartTitle => 'Start Oefening';

  @override
  String get tutorialM3StartDesc => 'Tik play om te luisteren en na te zeggen.';

  @override
  String get startWarning => 'Waarschuwing';

  @override
  String get noVoiceDetected => 'Geen stem gedetecteerd';

  @override
  String get tooltipSearch => 'Zoeken';

  @override
  String get tooltipStudyReview => 'Studie+Herhaling';

  @override
  String get tooltipSpeaking => 'Spreken';

  @override
  String get tooltipDecrease => 'Verminderen';

  @override
  String get tooltipIncrease => 'Verhogen';

  @override
  String get languageSettings => 'Taalinstellingen';

  @override
  String get tutorialM2DropdownDesc => 'Selecteer studiemateriaal.';

  @override
  String get tutorialM2ImportDesc => 'Importeer JSON-bestand uit apparaatmap.';

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
  String get tutorialContextTitle => 'Contextlabel';

  @override
  String get tutorialContextDesc =>
      'Voeg context toe (bijv. Ochtend) om vergelijkbare zinnen te onderscheiden.';

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
  String get basicWords => 'Basic Word Repository';

  @override
  String get basicSentences => 'Basic Sentence Repository';

  @override
  String get selectMaterialSet => '학습 자료집 선택 (TODO: Translate)';

  @override
  String get sectionWords => '단어 (TODO: Translate)';

  @override
  String get sectionSentences => '문장 (TODO: Translate)';

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
      'Ik wissel mijn eigen taal om met de taal die ik aan het leren ben.';

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
  String get menuSelectMaterialSet => 'Kies studiemateriaal.';

  @override
  String get sectionWord => 'Woordsectie';

  @override
  String get sectionSentence => 'Zinsdeel';

  @override
  String get tabWord => 'woord';

  @override
  String get tabSentence => 'zin';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorSexualContent =>
      '선정적인 내용이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다. (TODO: Translate)';

  @override
  String get clearAll => '모두 지우기 (TODO: Translate)';

  @override
  String get disambiguationTitle => '의미 선택 (TODO: Translate)';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까? (TODO: Translate)';

  @override
  String get skip => '건너뛰기 (TODO: Translate)';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Conversation History';

  @override
  String get chatNewChat => 'New Chat';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String chatFailed(Object error) {
    return '채팅 실패: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return '대화 발췌 ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => '제목 없는 대화';

  @override
  String get chatAiChat => 'AI Chat';

  @override
  String get helpModeChatDesc => 'AI 페르소나와 대화하며 실전 회화를 연습하고 유용한 문장을 저장하세요.';

  @override
  String get helpModeChatDetails =>
      '• 채팅 시작: 상단 메뉴의 말풍선 아이콘 클릭\n• 페르소나 선택: 선생님, 가이드, 친구 중 선택\n• 대화 및 저장: AI 응답은 자동 번역됩니다. 메시지를 클릭하여 복습 모드로 저장하세요\n• 2개 국어 표시: 모든 메시지에 대해 모국어와 학습 언어를 함께 표시합니다\n• 듣기 기능 (TTS): 스피커 아이콘을 눌러 각 언어의 발음을 들어보세요\n• 자동 제목: 대화 주제에 따라 AI가 제목을 추천합니다\n• 이력 관리: 과거 대화 내용을 언제든 다시 확인할 수 있습니다';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String get me => 'Me';

  @override
  String get helpDialogueImportDesc => '완성된 대화문 세트를 JSON 파일로 한 번에 가져올 수 있습니다.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON 구조: `entries` 대신 `dialogues` 배열을 사용합니다.\n• 자동 생성: 대화 제목, 페르소나, 메시지 순서가 자동으로 구성됩니다.\n• 확인 위치: 가져온 대화는 AI 채팅 모드의 \'대화 기록\' 탭에서 확인할 수 있습니다.';

  @override
  String mode1SelectedMaterial(Object name) {
    return '현재 선택된 자료집: $name';
  }

  @override
  String get basicWordRepository => 'Basis Woordenlijst';

  @override
  String get basicSentenceRepository => 'Basis Zinnenlijst';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'Save & Exit';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

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
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'Pro import v Režimu 3 vytvořte JSON:';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

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
  String get location => 'Poloha';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Me';

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
  String get usageLimitTitle => 'Limit vyčerpán';

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
  String get tutorialSwapDesc => 'Vyměňuji si jazyk s jazykem, který se učím.';

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
  String get menuSelectMaterialSet => 'Vyberte studijní materiál';

  @override
  String get sectionWord => 'Sekce slov';

  @override
  String get sectionSentence => 'Sekce věty';

  @override
  String get tabWord => 'slovo';

  @override
  String get tabSentence => 'věta';

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
  String get chatHistoryTitle => 'Conversation History';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => 'New Chat';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return 'From Conversation ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => 'Untitled Conversation';

  @override
  String get chatAiChat => 'AI Chat';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Current Material Set: $name';
  }

  @override
  String get basicWordRepository => 'Základní úložiště slov';

  @override
  String get basicSentenceRepository => 'Základní úložiště vět';

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

  @override
  String get metadataDialogTitle => 'Details';

  @override
  String get tagFormal => 'Formální';

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
  String get formSingular => 'Jednotné číslo';

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
  String get neutral => 'Neutrální';

  @override
  String get chatAllConversations => 'Všechny konverzace';

  @override
  String get confirmDeleteConversation =>
      'Opravdu chcete smazat tuto konverzaci?\nSmazané konverzace nelze obnovit.';
}

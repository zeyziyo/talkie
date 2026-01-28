// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Hersiening ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materiaal ($count)';
  }

  @override
  String get mode2Title => 'Hersiening';

  @override
  String get search => 'Soek';

  @override
  String get translate => 'Vertaal';

  @override
  String get listen => 'Luister';

  @override
  String get saveData => 'Stoor';

  @override
  String get saved => 'Gestoor';

  @override
  String get delete => 'Verwyder';

  @override
  String get materialInfo => 'Materiaalinligting';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Verfris';

  @override
  String studyRecords(int count) {
    return 'Rekords ($count)';
  }

  @override
  String get targetLanguageFilter => 'Teiltaal Filter:';

  @override
  String get noRecords => 'Geen rekords vir gekose taal';

  @override
  String get saveTranslationsFromSearch => 'Stoor vertalings vanaf soekmodus';

  @override
  String get flip => 'Draai';

  @override
  String get hide => 'Versteek';

  @override
  String get deleteRecord => 'Verwyder Rekord';

  @override
  String get confirmDelete => 'Is jy seker jy wil hierdie rekord verwyder?';

  @override
  String get recordDeleted => 'Rekord suksesvol verwyder';

  @override
  String deleteFailed(String error) {
    return 'Verwydering misluk: $error';
  }

  @override
  String get importJsonFile => 'Voer JSON in';

  @override
  String get importing => 'Voer in...';

  @override
  String get importComplete => 'Invoer Voltooi';

  @override
  String get importFailed => 'Invoer Misluk';

  @override
  String importFile(String fileName) {
    return 'Lêer: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Totaal: $count';
  }

  @override
  String importAdded(int count) {
    return 'Bygevoeg: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Oorgeslaan: $count';
  }

  @override
  String get errors => 'Foute:';

  @override
  String get error => 'Fout';

  @override
  String importErrorMessage(String error) {
    return 'Kon nie lêer invoer nie:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Kies Materiaal';

  @override
  String get subject => 'Onderwerp:';

  @override
  String get source => 'Bron:';

  @override
  String get file => 'Lêer:';

  @override
  String progress(int current, int total) {
    return 'Vordering: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Voer asseblief \'n JSON-lêer in';

  @override
  String get selectMaterialPrompt => 'Kies asseblief studiemateriaal';

  @override
  String get studyComplete => 'Bestudeer';

  @override
  String get markAsStudied => 'Merk as Bestudeer';

  @override
  String get listening => 'Luister...';

  @override
  String get recognized => 'Herkenning voltooi';

  @override
  String recognitionFailed(String error) {
    return 'Spraakherkenning misluk: $error';
  }

  @override
  String get checking => 'Kontroleer...';

  @override
  String get translating => 'Vertaal...';

  @override
  String get translationComplete => 'Vertaling voltooi (stoor vereis)';

  @override
  String get translationLoaded => 'Gestorde vertaling gelaai';

  @override
  String translationFailed(String error) {
    return 'Vertaling misluk: $error';
  }

  @override
  String get enterTextToTranslate => 'Voer teks in om te vertaal';

  @override
  String get saving => 'Stoor...';

  @override
  String get noTranslationToSave => 'Geen vertaling om te stoor';

  @override
  String saveFailed(String error) {
    return 'Stoor misluk: $error';
  }

  @override
  String get playing => 'Speel...';

  @override
  String get noTextToPlay => 'Geen teks om te speel';

  @override
  String playbackFailed(String error) {
    return 'Terugspeel misluk: $error';
  }

  @override
  String get sourceLanguage => 'Bron Taal';

  @override
  String get targetLanguage => 'Teiltaal';

  @override
  String get similarTextFound => 'Soortgelyke teks gevind';

  @override
  String get useExistingText => 'Gebruik Bestaande';

  @override
  String get createNew => 'Skep Nuwe';

  @override
  String reviewCount(int count) {
    return '$count keer hersien';
  }

  @override
  String get tabSpeaking => 'Praat';

  @override
  String get speakingPractice => 'Praatoefening';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Jou Uitspraak';

  @override
  String get correctAnswer => 'Korrekte Antwoord';

  @override
  String score(String score) {
    return 'Akkuraatheid: $score%';
  }

  @override
  String get perfect => 'Perfek!';

  @override
  String get good => 'Goed';

  @override
  String get tryAgain => 'Probeer weer';

  @override
  String get startPractice => 'Begin Oefening';

  @override
  String get stopPractice => 'Stop';

  @override
  String get helpTitle => 'Hulp & Gids';

  @override
  String get helpTabModes => 'Modusse';

  @override
  String get helpTabJson => 'JSON Formaat';

  @override
  String get helpTabTour => 'Toer';

  @override
  String get helpMode1Desc => 'Herken stem, vertaal en luister na resultaat.';

  @override
  String get helpMode1Details =>
      '• Stem: Tik mikrofoon vir begin/stop\n• Teks: Tik direk om te vertaal\n• Outo-Soek: Bespeur soortgelyke sinne\n• Vertaal: Knoppie vir direkte vertaling\n• Luister: Luidspreker-ikoon vir TTS\n• Stoor: Voeg by geskiedenis\n• Maak skoon: Stel alles terug';

  @override
  String get helpMode2Desc =>
      'Hersien gestorde sinne met versteekte vertaling.';

  @override
  String get helpMode2Details =>
      '• Kies: Kies stel of \'Hersien Alles\'\n• Draai: \'Wys/Versteek\' vertaling\n• Luister: Speel TTS vir sin\n• Merk: Merk (V) vir voltooi\n• Verwyder: Lang druk om te verwyder\n• Filter: Sien alles of per materiaal';

  @override
  String get helpMode3Desc =>
      'Oefen praat deur te luister en te herhaal (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Kies: Kies pakket\n• Interval: [-] [+] wagtyd (3s-60s)\n• Begin/Stop: Beheer sessie\n• Praat: Luister en herhaal\n• Telling: Akkuraatheid (0-100)\n• Probeer weer: Knoppie as stem nie bespeur word nie';

  @override
  String get helpJsonDesc => 'Vir invoer in Modus 3, skep JSON:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'Begin Toer';

  @override
  String get tutorialMicTitle => 'Stem Invoer';

  @override
  String get tutorialMicDesc => 'Tik die mikrofoon vir stem invoer.';

  @override
  String get tutorialTabDesc => 'Jy kan die gewenste leerwyse hier kies.';

  @override
  String get tutorialTapToContinue => 'Tik om voort te gaan';

  @override
  String get tutorialTransTitle => 'Vertaal';

  @override
  String get tutorialTransDesc => 'Tik hier om jou teks te vertaal.';

  @override
  String get tutorialSaveTitle => 'Stoor';

  @override
  String get tutorialSaveDesc => 'Stoor jou vertaling.';

  @override
  String get tutorialM2SelectTitle => 'Kies & Filter';

  @override
  String get tutorialM2SelectDesc => 'Kies materiaal of \'Hersien Alles\'.';

  @override
  String get tutorialM2ListTitle => 'Studielys';

  @override
  String get tutorialM2ListDesc =>
      'Gaan jou kaarte na en draai hulle om. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Kies Materiaal';

  @override
  String get tutorialM3SelectDesc => 'Kies stel vir praatoefening.';

  @override
  String get tutorialM3IntervalTitle => 'Interval';

  @override
  String get tutorialM3IntervalDesc => 'Pas wagtyd tussen sinne aan.';

  @override
  String get tutorialM3StartTitle => 'Begin';

  @override
  String get tutorialM3StartDesc => 'Druk speel om te begin.';

  @override
  String get startWarning => 'Waarskuwing';

  @override
  String get noVoiceDetected => 'Geen stem bespeur';

  @override
  String get tooltipSearch => 'Soek';

  @override
  String get tooltipStudyReview => 'Studie+Hersiening';

  @override
  String get tooltipSpeaking => 'Praat';

  @override
  String get tooltipDecrease => 'Verminder';

  @override
  String get tooltipIncrease => 'Verhoog';

  @override
  String get languageSettings => 'Taalinstellings';

  @override
  String get tutorialM2DropdownDesc => 'Kies studiemateriaal.';

  @override
  String get tutorialM2ImportDesc => 'Voer JSON-lêer in vanaf toestelgids.';

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
  String get tutorialContextTitle => 'Konteks Merker';

  @override
  String get tutorialContextDesc =>
      'Voeg konteks by (bv. Oggend) om soortgelyke sinne te onderskei.';

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
  String get selectMaterialSet => 'Keuse van leermateriaal';

  @override
  String get sectionWords => 'woord';

  @override
  String get sectionSentences => 'sin';

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
  String get tutorialSwapDesc => 'Ek ruil my taal met die taal wat ek leer.';

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
  String get menuSelectMaterialSet => 'Kies \'n studiemateriaal';

  @override
  String get sectionWord => 'Woordafdeling';

  @override
  String get sectionSentence => 'Sin-afdeling';

  @override
  String get tabWord => 'woord';

  @override
  String get tabSentence => 'sin';

  @override
  String get errorProfanity =>
      'Dit bevat vloektaal, daarom kan dit nie vertaal word nie.';

  @override
  String get errorHateSpeech =>
      'Kan nie vertaal nie omdat dit haatspraak bevat.';

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
  String get basicWordRepository => 'Basiese Woordbewaarplek';

  @override
  String get basicSentenceRepository => 'Basiese Sinbewaarplek';

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

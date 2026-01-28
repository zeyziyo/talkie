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
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

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
  String get tutorialM2ListDesc =>
      'Verifică cardurile și întoarce-le. (Long-press to delete)';

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
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'Etichetă context';

  @override
  String get tutorialContextDesc =>
      'Adăugați context (ex. Dimineața) pentru a distinge propoziții similare.';

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
  String get tutorialSwapDesc => 'Îmi schimb limba cu limba pe care o învăț.';

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
  String get menuSelectMaterialSet => 'Selectați un material de studiu';

  @override
  String get sectionWord => 'Secțiune de cuvinte';

  @override
  String get sectionSentence => 'Secțiunea de propoziții';

  @override
  String get tabWord => 'cuvânt';

  @override
  String get tabSentence => 'propoziție';

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
  String get basicWordRepository => 'Depozit de cuvinte de bază';

  @override
  String get basicSentenceRepository => 'Depozit de propoziții de bază';

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

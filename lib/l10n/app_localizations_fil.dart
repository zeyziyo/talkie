// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get helpTitle => 'Tulong at Gabay';

  @override
  String get helpTabModes => 'Mga Mode';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabTour => 'Pasyal';

  @override
  String get helpMode1Desc =>
      'Kilalanin ang boses, isalin at pakinggan ang resulta.';

  @override
  String get helpMode1Details =>
      '• Boses: I-tap ang mikropono para magsimula/huminto\n• Teksto: Mag-type nang direkta para isalin\n• Auto-Search: Nakikita ang mga katulad na pangungusap\n• Isalin: Pindutan para sa agarang pagsasalin\n• Makinig: Speaker icon para sa TTS\n• I-save: Nagdaragdag sa kasaysayan\n• I-clear: I-reset ang lahat';

  @override
  String get helpMode2Desc => 'Balik-aralan ang mga na-save na pangungusap.';

  @override
  String get helpMode2Details =>
      '• Pumili: Pumili ng set o \'Balik-aralan Lahat\'\n• I-flip: \'Ipakita/Itago\' ang pagsasalin\n• Makinig: I-play ang TTS para sa pangungusap\n• Markahan: Tsek (V) para sa tapos na\n• Tanggalin: Pindutin nang matagal ang card para tanggalin\n• Filter: Tingnan lahat o ayon sa materyales';

  @override
  String get helpMode3Desc =>
      'Magsanay magsalita sa pamamagitan ng pakikinig at pag-uulit (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Pumili: Pumili ng package\n• Agwat: [-] [+] oras ng paghihintay (3s-60s)\n• Simulan/Itigil: Kontrolin ang sesyon\n• Magsalita: Makinig at ulitin\n• Marka: Kawastuhan (0-100)\n• Subukan muli: Button kung hindi makita ang boses';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'Para sa pag-import sa Mode 3, lumikha ng JSON:';

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
  String get location => 'Lokasyon';

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
    return 'Balik-aral ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materyales ($count)';
  }

  @override
  String get mode2Title => 'Balik-aral';

  @override
  String get search => 'Hanapin';

  @override
  String get translate => 'Isalin';

  @override
  String get listen => 'Makinig';

  @override
  String get saveData => 'I-save';

  @override
  String get saved => 'Na-save';

  @override
  String get delete => 'Tanggalin';

  @override
  String get materialInfo => 'Impormasyon ng materyal';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'I-refresh';

  @override
  String studyRecords(int count) {
    return 'Mga Tala ($count)';
  }

  @override
  String get targetLanguageFilter => 'Target na Wika:';

  @override
  String get noRecords => 'Walang tala para sa napiling wika';

  @override
  String get saveTranslationsFromSearch =>
      'I-save ang mga pagsasalin mula sa search mode';

  @override
  String get flip => 'I-flip';

  @override
  String get hide => 'Itago';

  @override
  String get deleteRecord => 'Tanggalin ang Tala';

  @override
  String get confirmDelete => 'Sigurado ka bang gusto mong tanggalin ito?';

  @override
  String get recordDeleted => 'Matagumpay na natanggal ang tala';

  @override
  String deleteFailed(String error) {
    return 'Nabigong tanggalin: $error';
  }

  @override
  String get importJsonFile => 'Mag-import ng JSON';

  @override
  String get importing => 'Nag-iimport...';

  @override
  String get importComplete => 'Tapos na ang Pag-import';

  @override
  String get importFailed => 'Nabigong Mag-import';

  @override
  String importFile(String fileName) {
    return 'File: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Kabuuan: $count';
  }

  @override
  String importAdded(int count) {
    return 'Idinagdag: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Nilaktawan: $count';
  }

  @override
  String get errors => 'Mga Error:';

  @override
  String get error => 'Error';

  @override
  String importErrorMessage(String error) {
    return 'Nabigong i-import ang file:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Pumili ng Materyales';

  @override
  String get subject => 'Paksa:';

  @override
  String get source => 'Pinagmulan:';

  @override
  String get file => 'File:';

  @override
  String progress(int current, int total) {
    return 'Progreso: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Mangyaring mag-import ng JSON file';

  @override
  String get selectMaterialPrompt =>
      'Mangyaring pumili ng materyales sa pag-aaral';

  @override
  String get studyComplete => 'Napag-aralan na';

  @override
  String get markAsStudied => 'Markahan bilang Napag-aralan';

  @override
  String get listening => 'Nakikinig...';

  @override
  String get recognized => 'Natapos ang pagkilala';

  @override
  String recognitionFailed(String error) {
    return 'Nabigo ang pagkilala sa boses: $error';
  }

  @override
  String get checking => 'Sinusuri...';

  @override
  String get translating => 'Nagsasalin...';

  @override
  String get translationComplete =>
      'Tapos na ang pagsasalin (kailangang i-save)';

  @override
  String get translationLoaded => 'Na-load ang naka-save na pagsasalin';

  @override
  String translationFailed(String error) {
    return 'Nabigo ang pagsasalin: $error';
  }

  @override
  String get enterTextToTranslate => 'Ipasok ang teksto upang isalin';

  @override
  String get saving => 'Nagsa-save...';

  @override
  String get noTranslationToSave => 'Walang pagsasalin na i-save';

  @override
  String saveFailed(String error) {
    return 'Nabigong i-save: $error';
  }

  @override
  String get playing => 'Nagpe-play...';

  @override
  String get noTextToPlay => 'Walang teksto na i-play';

  @override
  String playbackFailed(String error) {
    return 'Nabigo ang pag-play: $error';
  }

  @override
  String get sourceLanguage => 'Pinagmulang Wika';

  @override
  String get targetLanguage => 'Target na Wika';

  @override
  String get similarTextFound => 'May natagpuang katulad na teksto';

  @override
  String get useExistingText => 'Gamitin ang Umiiral';

  @override
  String get createNew => 'Lumikha ng Bago';

  @override
  String reviewCount(int count) {
    return 'Binago nang $count beses';
  }

  @override
  String get tabSpeaking => 'Pagsasalita';

  @override
  String get speakingPractice => 'Pagsasanay sa Pagsasalita';

  @override
  String intervalSeconds(int seconds) {
    return 'Agwat: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Ang iyong Pagbigkas';

  @override
  String get correctAnswer => 'Tamang Sagot';

  @override
  String score(String score) {
    return 'Kawastuhan: $score%';
  }

  @override
  String get perfect => 'Perpekto!';

  @override
  String get good => 'Mahusay';

  @override
  String get tryAgain => 'Subukan muli';

  @override
  String get startPractice => 'Simulan ang Pagsasanay';

  @override
  String get stopPractice => 'Itigil';

  @override
  String get startTutorial => 'Simulan ang Pasyal';

  @override
  String get tutorialMicTitle => 'Voice Input';

  @override
  String get tutorialMicDesc => 'I-tap ang mic button para sa voice input.';

  @override
  String get tutorialTabDesc =>
      'Maaari mong piliin ang nais na mode ng pag-aaral dito.';

  @override
  String get tutorialTapToContinue => 'I-tap upang magpatuloy';

  @override
  String get tutorialTransTitle => 'Isalin';

  @override
  String get tutorialTransDesc => 'I-tap dito para isalin ang iyong teksto.';

  @override
  String get tutorialSaveTitle => 'I-save';

  @override
  String get tutorialSaveDesc =>
      'I-save ang iyong pagsasalin sa mga tala ng pag-aaral.';

  @override
  String get tutorialM2SelectTitle => 'Pumili at Mag-filter';

  @override
  String get tutorialM2SelectDesc =>
      'Pumili ng materyales o lumipat sa \'Balik-aralan Lahat\'.';

  @override
  String get tutorialM2ListTitle => 'Listahan ng Pag-aaral';

  @override
  String get tutorialM2ListDesc =>
      'Suriin ang iyong mga na-save na card at i-flip ang mga ito. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Pumili ng Materyales';

  @override
  String get tutorialM3SelectDesc =>
      'Pumili ng set para sa pagsasanay sa pagsasalita.';

  @override
  String get tutorialM3IntervalTitle => 'Agwat';

  @override
  String get tutorialM3IntervalDesc =>
      'Ayusin ang oras ng paghihintay sa pagitan ng mga pangungusap.';

  @override
  String get tutorialM3StartTitle => 'Simulan';

  @override
  String get tutorialM3StartDesc => 'I-tap ang play para magsimula.';

  @override
  String get startWarning => 'Babala';

  @override
  String get noVoiceDetected => 'Walang boses na nakita';

  @override
  String get tooltipSearch => 'Maghanap';

  @override
  String get tooltipStudyReview => 'Pag-aaral+Pagsusuri';

  @override
  String get tooltipSpeaking => 'Pagsasalita';

  @override
  String get tooltipDecrease => 'Bawasan';

  @override
  String get tooltipIncrease => 'Dagdagan';

  @override
  String get languageSettings => 'Mga setting ng wika';

  @override
  String get tutorialM2DropdownDesc => 'Pumili ng mga materyales sa pag-aaral.';

  @override
  String get tutorialM2ImportDesc =>
      'Mag-import ng JSON file mula sa folder ng device.';

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
  String get tutorialContextTitle => 'Tag ng Konteksto';

  @override
  String get tutorialContextDesc =>
      'Magdagdag ng konteksto (hal. Umaga) upang makilala ang magkatulad na mga pangungusap.';

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
  String get usageLimitTitle => 'Limitado na Paggamit';

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
  String get selectMaterialSet => 'Pumili ng Materyales sa Pag-aaral';

  @override
  String get sectionWords => 'Mga Salita';

  @override
  String get sectionSentences => 'Mga Pangungusap';

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
      'Pinapalitan ko ang aking wika ng wikang aking pinag-aaralan.';

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
  String get menuSelectMaterialSet => 'Pumili ng materyal sa pag-aaral';

  @override
  String get sectionWord => 'Seksyon ng salita';

  @override
  String get sectionSentence => 'Seksyon ng Pangungusap';

  @override
  String get tabWord => 'salita';

  @override
  String get tabSentence => 'pangungusap';

  @override
  String get errorProfanity =>
      'Hindi maaaring isalin dahil naglalaman ng mga malaswang salita.';

  @override
  String get errorHateSpeech =>
      'Hindi maaaring isalin dahil naglalaman ng mga pahayag ng pagkapoot.';

  @override
  String get errorSexualContent =>
      'Hindi maaaring isalin dahil naglalaman ng sekswal na nilalaman.';

  @override
  String get errorOtherSafety =>
      'Ang pagsasalin ay tinanggihan dahil sa patakaran sa kaligtasan ng AI.';

  @override
  String get clearAll => 'I-clear Lahat';

  @override
  String get disambiguationTitle => 'Pumili ng Kahulugan';

  @override
  String get disambiguationPrompt => 'Anong kahulugan ang gusto mong isalin?';

  @override
  String get skip => 'Laktawan';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

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
  String get basicWordRepository => 'Repository ng Mga Pangunahing Salita';

  @override
  String get basicSentenceRepository =>
      'Repository ng Mga Pangunahing Pangungusap';

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
  String get tagFormal => '존댓말';

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
  String get labelShowMemorized => '끝낸것';

  @override
  String get tagSelection => '태그 선택';

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
  String get formPresent => '현재형';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get formSingular => 'Isahan';

  @override
  String get caseSubject => '주격';

  @override
  String get caseObject => '목적격';

  @override
  String get casePossessive => '소유격';

  @override
  String get casePossessivePronoun => '소유대명사';

  @override
  String get caseReflexive => '재귀대명사';

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
}

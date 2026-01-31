// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get helpTitle => 'Msaada & Mwongozo';

  @override
  String get helpTabModes => 'Njia';

  @override
  String get helpTabJson => 'Muundo wa JSON';

  @override
  String get helpTabTour => 'Ziara';

  @override
  String get helpMode1Desc => 'Tambua sauti, tafsiri na sikiliza matokeo.';

  @override
  String get helpMode1Details =>
      '• Sauti: Gonga maikrofoni kuanza/kusimamisha\n• Maandishi: Andika moja kwa moja kwa kutafsiri\n• Utafutaji Kiotomatiki: Inagundua sentensi zinazofanana\n• Tafsiri: Kitufe cha tafsiri ya papo hapo\n• Sikiliza: Aikoni ya spika kwa TTS\n• Hifadhi: Inaongeza kwenye historia\n• Futa: Weka upya yote';

  @override
  String get helpMode2Desc =>
      'Pitia sentensi zilizohifadhiwa na tafsiri iliyofichwa.';

  @override
  String get helpMode2Details =>
      '• Chagua: Chagua seti au \'Pitia Zote\'\n• Geuza: \'Onyesha/Ficha\' tafsiri\n• Sikiliza: Cheza TTS kwa sentensi\n• Weka alama: Tiki (V) kwa zilizokamilika\n• Futa: Bonyeza kwa muda mrefu kufuta\n• Kichujio: Tazama zote au kwa nyenzo';

  @override
  String get helpMode3Desc =>
      'Fanya mazoezi ya kuzungumza kwa kusikiliza na kurudia (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Chagua: Chagua kifurushi\n• Muda: [-] [+] muda wa kusubiri (3s-60s)\n• Anza/Simama: Dhibiti kikao\n• Zungumza: Sikiliza na rudia\n• Alama: Usahihi (0-100)\n• Jaribu tena: Kitufe ikiwa sauti haigunduliwi';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'Kwa kuleta katika Hali 3, unda JSON:';

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
  String get location => 'Mahali';

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
    return 'Mapitio ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Nyenzo ($count)';
  }

  @override
  String get mode2Title => 'Mapitio';

  @override
  String get search => 'Tafuta';

  @override
  String get translate => 'Tafsiri';

  @override
  String get listen => 'Sikiliza';

  @override
  String get saveData => 'Hifadhi';

  @override
  String get saved => 'Imehifadhiwa';

  @override
  String get delete => 'Futa';

  @override
  String get materialInfo => 'Maelezo ya nyenzo';

  @override
  String get cancel => 'Ghairi';

  @override
  String get confirm => 'Sawa';

  @override
  String get refresh => 'Onyesha upya';

  @override
  String studyRecords(int count) {
    return 'Rekodi ($count)';
  }

  @override
  String get targetLanguageFilter => 'Kichujio cha Lugha:';

  @override
  String get noRecords => 'Hakuna rekodi kwa lugha iliyochaguliwa';

  @override
  String get saveTranslationsFromSearch =>
      'Hifadhi tafsiri kutoka kwa hali ya utafutaji';

  @override
  String get flip => 'Geuza';

  @override
  String get hide => 'Ficha';

  @override
  String get deleteRecord => 'Futa Rekodi';

  @override
  String get confirmDelete => 'Una uhakika unataka kufuta rekodi hii?';

  @override
  String get recordDeleted => 'Rekodi imefutwa';

  @override
  String deleteFailed(String error) {
    return 'Kufuta kumeshindikana: $error';
  }

  @override
  String get importJsonFile => 'Leta JSON';

  @override
  String get importing => 'inaleta...';

  @override
  String get importComplete => 'Kuleta Kukamilika';

  @override
  String get importFailed => 'Kuleta Kumeshindikana';

  @override
  String importFile(String fileName) {
    return 'Faili: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Jumla: $count';
  }

  @override
  String importAdded(int count) {
    return 'Imeongezwa: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Imerukwa: $count';
  }

  @override
  String get errors => 'Makosa:';

  @override
  String get error => 'Kosa';

  @override
  String importErrorMessage(String error) {
    return 'Imeshindwa kuleta faili:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Chagua Nyenzo';

  @override
  String get subject => 'Somo:';

  @override
  String get source => 'Chanzo:';

  @override
  String get file => 'Faili:';

  @override
  String progress(int current, int total) {
    return 'Maendeleo: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Tafadhali leta faili ya JSON';

  @override
  String get selectMaterialPrompt => 'Tafadhali chagua nyenzo za kusoma';

  @override
  String get studyComplete => 'Imesomwa';

  @override
  String get markAsStudied => 'Weka alama imesomwa';

  @override
  String get listening => 'Inasikiliza...';

  @override
  String get recognized => 'Utambuzi umekamilika';

  @override
  String recognitionFailed(String error) {
    return 'Utambuzi wa sauti umeshindikana: $error';
  }

  @override
  String get checking => 'Inaangalia...';

  @override
  String get translating => 'Inatafsiri...';

  @override
  String get translationComplete => 'Tafsiri imekamilika (inahitaji kuhifadhi)';

  @override
  String get translationLoaded => 'Tafsiri iliyohifadhiwa imepakiwa';

  @override
  String translationFailed(String error) {
    return 'Tafsiri imeshindikana: $error';
  }

  @override
  String get enterTextToTranslate => 'Weka maandishi ya kutafsiri';

  @override
  String get saving => 'Inahifadhi...';

  @override
  String get noTranslationToSave => 'Hakuna tafsiri ya kuhifadhi';

  @override
  String saveFailed(String error) {
    return 'Kuhifadhi kumeshindikana: $error';
  }

  @override
  String get playing => 'Inacheza...';

  @override
  String get noTextToPlay => 'Hakuna maandishi ya kucheza';

  @override
  String playbackFailed(String error) {
    return 'Kucheza kumeshindikana: $error';
  }

  @override
  String get sourceLanguage => 'Lugha Chanzo';

  @override
  String get targetLanguage => 'Lugha Lengwa';

  @override
  String get similarTextFound => 'Maandishi yanayofanana yamepatikana';

  @override
  String get useExistingText => 'Tumia Iliyopo';

  @override
  String get createNew => 'Unda Mpya';

  @override
  String reviewCount(int count) {
    return 'Imepitiwa mara $count';
  }

  @override
  String get tabSpeaking => 'Kuzungumza';

  @override
  String get speakingPractice => 'Mazoezi ya Kuzungumza';

  @override
  String intervalSeconds(int seconds) {
    return 'Muda: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Matamshi Yako';

  @override
  String get correctAnswer => 'Jibu Sahihi';

  @override
  String score(String score) {
    return 'Usahihi: $score%';
  }

  @override
  String get perfect => 'Nzuri sana!';

  @override
  String get good => 'Nzuri';

  @override
  String get tryAgain => 'Jaribu tena';

  @override
  String get startPractice => 'Anza Mazoezi';

  @override
  String get stopPractice => 'Simamisha';

  @override
  String get startTutorial => 'Anza Ziara';

  @override
  String get tutorialMicTitle => 'Ingizo la Sauti';

  @override
  String get tutorialMicDesc => 'Gonga maikrofoni kwa ingizo la sauti.';

  @override
  String get tutorialTabDesc =>
      'Unaweza kuchagua hali ya kujifunza unayotaka hapa.';

  @override
  String get tutorialTapToContinue => 'Gusa ili kuendelea';

  @override
  String get tutorialTransTitle => 'Tafsiri';

  @override
  String get tutorialTransDesc => 'Gonga hapa kutafsiri maandishi yako.';

  @override
  String get tutorialSaveTitle => 'Hifadhi';

  @override
  String get tutorialSaveDesc => 'Hifadhi tafsiri yako.';

  @override
  String get tutorialM2SelectTitle => 'Chagua & Kichujio';

  @override
  String get tutorialM2SelectDesc => 'Chagua nyenzo au \'Pitia Zote\'.';

  @override
  String get tutorialM2ListTitle => 'Orodha ya Kusoma';

  @override
  String get tutorialM2ListDesc =>
      'Angalia kadi zako na uzigeuze. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Chagua Nyenzo';

  @override
  String get tutorialM3SelectDesc => 'Chagua seti kwa mazoezi ya kuzungumza.';

  @override
  String get tutorialM3IntervalTitle => 'Muda';

  @override
  String get tutorialM3IntervalDesc => 'Rekebisha muda wa kusubiri.';

  @override
  String get tutorialM3StartTitle => 'Anza';

  @override
  String get tutorialM3StartDesc => 'Bofya cheza ili kuanza.';

  @override
  String get startWarning => 'Onyo';

  @override
  String get noVoiceDetected => 'Sauti haijagunduliwa';

  @override
  String get tooltipSearch => 'Tafuta';

  @override
  String get tooltipStudyReview => 'Kusoma+Kurudia';

  @override
  String get tooltipSpeaking => 'Kuzungumza';

  @override
  String get tooltipDecrease => 'Punguza';

  @override
  String get tooltipIncrease => 'Ongeza';

  @override
  String get languageSettings => 'Mipangilio ya lugha';

  @override
  String get tutorialM2DropdownDesc => 'Chagua nyenzo za kusoma.';

  @override
  String get tutorialM2ImportDesc =>
      'Leta faili ya JSON kutoka kwenye folda ya kifaa.';

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
  String get tutorialContextTitle => 'Lebo ya Muktadha';

  @override
  String get tutorialContextDesc =>
      'Ongeza muktadha (k.m. Asubuhi) ili kutofautisha sentensi zinazofanana.';

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
  String get usageLimitTitle => 'Upeo wa matumizi umefikiwa';

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
  String get selectMaterialSet => 'Chagua seti ya nyenzo za kujifunzia';

  @override
  String get sectionWords => 'Maneno';

  @override
  String get sectionSentences => 'Sentensi';

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
      'Ninabadilisha lugha yangu na lugha ninayojifunza.';

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
  String get menuSelectMaterialSet => 'Chagua nyenzo ya kujifunzia';

  @override
  String get sectionWord => 'Sehemu ya maneno';

  @override
  String get sectionSentence => 'Sehemu ya sentensi';

  @override
  String get tabWord => 'neno';

  @override
  String get tabSentence => 'sentensi';

  @override
  String get errorProfanity => 'Haiwezi kutafsiri kwa sababu ina lugha chafu.';

  @override
  String get errorHateSpeech =>
      'Haiwezi kutafsiri kwa sababu ina matamshi ya chuki.';

  @override
  String get errorSexualContent =>
      'Haiwezi kutafsiri kwa sababu ina maudhui ya ngono.';

  @override
  String get errorOtherSafety =>
      'Tafsiri imekataliwa na sera ya usalama ya AI.';

  @override
  String get clearAll => 'Futa zote';

  @override
  String get disambiguationTitle => 'Chagua maana';

  @override
  String get disambiguationPrompt => 'Ungependa itafsiriwe kwa maana gani?';

  @override
  String get skip => 'Ruka';

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
  String get basicWordRepository => 'Hifadhi ya Maneno ya Msingi';

  @override
  String get basicSentenceRepository => 'Hifadhi ya Sentensi za Msingi';

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
  String get labelShowMemorized => '외운것';

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
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

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
}

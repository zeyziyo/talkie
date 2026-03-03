// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get googleContinue => 'Continue with Google';

  @override
  String get kakaoContinue => 'カカオで続ける';

  @override
  String get logout => 'Logout';

  @override
  String get logoutConfirmTitle => 'Logout';

  @override
  String get logoutConfirmMessage =>
      'Are you sure you want to logout from this device?';

  @override
  String get syncingData => 'Syncing data...';

  @override
  String get helpTitle => 'ヘルプ＆ガイド';

  @override
  String get helpTabModes => '機能紹介';

  @override
  String get helpTabJson => 'JSON形式';

  @override
  String get helpTabTour => 'ツアー';

  @override
  String get helpMode1Desc => '音声を認識して翻訳し、結果を聞くことができます。新しい表現を学ぶのに最適です。';

  @override
  String get helpMode1Details =>
      '• 言語設定: 上部の翻訳アイコンで言語を変更\n• ヘルプ: 上部のハテナアイコンで使い方ガイドを確認\n• 音声入力: マイクアイコンをタップして会話を開始/停止\n• テキスト入力: 直接入力して翻訳可能\n• 自動検索: 入力時に類似の既存の文章があれば通知\n• 翻訳: 「翻訳」ボタンですぐに翻訳を実行\n• 聞く: スピーカーアイコンで原文/翻訳文を再生 (TTS)\n• 保存: 「保存」ボタンで学習記録に保存\n• クリア: 「削除」ボタンで入力内容を消去';

  @override
  String get helpMode2Desc => '保存された文章を復習します。翻訳を隠して確認し、復習回数を記録しましょう。';

  @override
  String get helpMode2Details =>
      '• 教材選択: 上部メニューから学習教材を選択または「全復習」\n• カード裏返し: 「表示/隠す」ボタンで翻訳を確認\n• 聞く: 「聞く」ボタンで該当する文章を再再生\n• 学習チェック: 完了した文章はチェックマーク (V)\n• 削除: カードを長押しすると削除ダイアログを表示\n• フィルタ: 全記録表示または学習教材別に並べ替え';

  @override
  String get helpMode3Desc => '文章を聞いて、シャドーイングで発音を練習してください。';

  @override
  String get helpMode3Details =>
      '• 教材選択: 学習する教材パックを選択\n• 間隔調整: [-] [+] ボタンで文章間の待機時間を設定 (3秒〜60秒)\n• 開始/停止: 再生ボタンでシャドーイングセッションを制御\n• 話す: ネイティブの音声を聞いて真似て話す\n• フィードバック: 発音の正確さをスコア (0-100) と色で表示 (緑/橙/赤)\n• 再試行: 認識失敗時に再試行ボタンを使用';

  @override
  String get helpModeChatDesc => 'AIペルソナと会話して、実践的な会話を練習してください。';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'モード3等で学習教材をインポートするには、以下の構造のJSONファイルを使用してください:';

  @override
  String get helpJsonTypeDialogue => 'Dialogue';

  @override
  String get helpJsonTypeSentence => 'Sentence';

  @override
  String get helpJsonTypeWord => 'Word';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc =>
      'チュートリアルを開始すると、**ハイライトサークル（円）**が主な機能を案内します。\n(例：学習カードを**ハイライトサークル**が指しているときに長押しすると削除できます。)';

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
  String get location => '場所';

  @override
  String get partner => 'Partner';

  @override
  String get me => '私';

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
    return '復習 ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return '学習教材 ($count)';
  }

  @override
  String get mode2Title => '復習';

  @override
  String get search => '検索';

  @override
  String get translate => '翻訳する';

  @override
  String get listen => '聞く';

  @override
  String get saveData => '保存';

  @override
  String get saved => '保存完了';

  @override
  String get delete => '削除';

  @override
  String get materialInfo => '教材情報';

  @override
  String get cancel => 'キャンセル';

  @override
  String get confirm => '確認';

  @override
  String get refresh => '更新';

  @override
  String studyRecords(int count) {
    return '学習記録 ($count)';
  }

  @override
  String get targetLanguageFilter => '対象言語フィルタ:';

  @override
  String get noRecords => '選択した言語の学習記録がありません';

  @override
  String get saveTranslationsFromSearch => '検索モードから翻訳を保存してください';

  @override
  String get flip => '表示';

  @override
  String get hide => '隠す';

  @override
  String get deleteRecord => '記録の削除';

  @override
  String get confirmDelete => 'この学習記録を削除しますか？';

  @override
  String get recordDeleted => '記録が削除されました';

  @override
  String deleteFailed(String error) {
    return '削除失敗: $error';
  }

  @override
  String get importJsonFile => 'JSONファイル読込';

  @override
  String get importing => '読込中...';

  @override
  String get importComplete => '読込完了';

  @override
  String get importFailed => '読込失敗';

  @override
  String importFile(String fileName) {
    return 'ファイル: $fileName';
  }

  @override
  String get addParticipant => '参加者を追加';

  @override
  String get editParticipant => '参加者を編集';

  @override
  String get labelRole => '役割';

  @override
  String get labelLangCode => '言語コード (例: en-US, ja-JP)';

  @override
  String get roleUser => 'ユーザー';

  @override
  String get roleAi => 'AI';

  @override
  String get participantDeleted => '参加者が削除されました。';

  @override
  String get confirmDeleteParticipant => 'この参加者を削除してもよろしいですか？';

  @override
  String importTotal(int count) {
    return '合計: $count件';
  }

  @override
  String importAdded(int count) {
    return '追加: $count件';
  }

  @override
  String importSkipped(int count) {
    return 'スキップ: $count件';
  }

  @override
  String get errors => 'エラー:';

  @override
  String get error => 'エラー';

  @override
  String importErrorMessage(String error) {
    return 'ファイルの読み込みに失敗しました:\\n$error';
  }

  @override
  String get importDuplicateTitleError =>
      'A material with the same title already exists. Please change the title and try again.';

  @override
  String get selectStudyMaterial => '学習教材を選択';

  @override
  String get subject => '主題:';

  @override
  String get source => '出典:';

  @override
  String get file => 'ファイル:';

  @override
  String progress(int current, int total) {
    return '進捗: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'JSONファイルを読み込んでください';

  @override
  String get selectMaterialPrompt => '学習教材を選択してください';

  @override
  String get studyComplete => '学習完了';

  @override
  String get markAsStudied => '完了としてマーク';

  @override
  String get listening => '聞き取り中...';

  @override
  String get recognized => '認識完了';

  @override
  String recognitionFailed(String error) {
    return '音声認識失敗: $error';
  }

  @override
  String get checking => '確認中...';

  @override
  String get translating => '翻訳中...';

  @override
  String get translationComplete => '翻訳完了 (保存してください)';

  @override
  String get translationLoaded => '保存済みの翻訳を読み込みました';

  @override
  String translationFailed(String error) {
    return '翻訳失敗: $error';
  }

  @override
  String get enterTextToTranslate => '翻訳するテキストを入力してください';

  @override
  String get translationResultHint => '翻訳結果 - 修正可能';

  @override
  String get voluntaryTranslations => 'Voluntary Translations';

  @override
  String get saving => '保存中...';

  @override
  String get noTranslationToSave => '保存する翻訳がありません';

  @override
  String saveFailed(String error) {
    return '保存失敗: $error';
  }

  @override
  String get playing => '再生中...';

  @override
  String get noTextToPlay => '再生するテキストがありません';

  @override
  String playbackFailed(String error) {
    return '再生失敗: $error';
  }

  @override
  String get sourceLanguage => '原文言語';

  @override
  String get targetLanguage => '翻訳言語';

  @override
  String get similarTextFound => '類似したテキストが見つかりました';

  @override
  String get useExistingText => '既存のテキストを使用';

  @override
  String get createNew => '新規作成';

  @override
  String reviewCount(int count) {
    return '復習 $count回';
  }

  @override
  String get tabSpeaking => 'スピーキング';

  @override
  String get speakingPractice => 'スピーキング練習';

  @override
  String intervalSeconds(int seconds) {
    return '間隔: $seconds秒';
  }

  @override
  String get yourPronunciation => 'あなたの発音';

  @override
  String get correctAnswer => '正解';

  @override
  String score(String score) {
    return '正確さ: $score%';
  }

  @override
  String get perfect => '完璧です！';

  @override
  String get good => '良いですね';

  @override
  String get tryAgain => 'もう一度';

  @override
  String get startPractice => '練習開始';

  @override
  String get stopPractice => '練習停止';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'チュートリアル開始';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => '音声入力';

  @override
  String get tutorialMicDesc => 'マイクボタンをタップして音声で入力できます。';

  @override
  String get tutorialTabDesc => 'ここで希望する学習モードを選択できます。';

  @override
  String get tutorialTapToContinue => 'タップして続ける';

  @override
  String get tutorialTransTitle => '翻訳';

  @override
  String get tutorialTransDesc => '入力したテキストを翻訳します。';

  @override
  String get tutorialSaveTitle => '保存';

  @override
  String get tutorialSaveDesc => '翻訳結果を学習記録に保存します。';

  @override
  String get selectParticipants => 'Select Participants';

  @override
  String get loadingParticipants => 'Loading participants...';

  @override
  String get noParticipantsFound => 'No participants found.';

  @override
  String get noInternetWarningMic =>
      'No internet connection. Voice recognition may not work offline.';

  @override
  String get noInternetWarningTranslate =>
      'No internet connection. Translation is unavailable offline. Please use Review mode.';

  @override
  String get noMaterialsInCategory => 'No materials in this category.';

  @override
  String get onlineLibraryLoadFailed => 'Failed to load materials.';

  @override
  String get onlineLibraryCheckInternet =>
      'Please check your internet connection or try again later.';

  @override
  String get onlineLibraryNoMaterials => 'No materials found.';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get startChat => 'Start Chat';

  @override
  String get manageParticipants => '参加者管理';

  @override
  String get tutorialAiChatTitle => 'AIチャット';

  @override
  String get tutorialAiChatDesc => 'AIペルソナと実践的な会話を練習しましょう。';

  @override
  String get tutorialM2SelectTitle => '選択とフィルタ';

  @override
  String get tutorialM2SelectDesc => '学習する教材を選択するか、全復習モードに切り替えます。';

  @override
  String get tutorialM2ListTitle => '学習リスト';

  @override
  String get tutorialM2ListDesc => '保存されたカードを確認し、裏返して正解を確認します。(長押しで削除)';

  @override
  String get tutorialM3SelectTitle => '教材選択';

  @override
  String get tutorialM3SelectDesc => 'スピーキング練習を行う教材セットを選択してください。';

  @override
  String get tutorialM3IntervalTitle => '間隔設定';

  @override
  String get tutorialM3IntervalDesc => '文章間の待機時間を調整します。';

  @override
  String get tutorialM3StartTitle => '練習開始';

  @override
  String get tutorialM3StartDesc => '再生ボタンを押してネイティブ音声を聞き、続いて発音してください。';

  @override
  String get startWarning => '注意';

  @override
  String get noVoiceDetected => '音声が検出されませんでした';

  @override
  String get tooltipSearch => '検索';

  @override
  String get tooltipStudyReview => '学習+復習';

  @override
  String get tooltipSpeaking => 'スピーキング';

  @override
  String get tooltipDecrease => '減少';

  @override
  String get tooltipIncrease => '増加';

  @override
  String get languageSettings => '言語設定';

  @override
  String get tutorialM2DropdownDesc => '学習教材を選択します。';

  @override
  String get tutorialM2SearchDesc =>
      'Search through your saved words and sentences.';

  @override
  String get tutorialM2ImportDesc => 'デバイスのフォルダからJSONファイルを読み込みます。';

  @override
  String get tutorialLangSettingsTitle => '言語設定';

  @override
  String get tutorialLangSettingsDesc => '翻訳元の言語と翻訳先の言語を設定します。';

  @override
  String get copy => 'コピー';

  @override
  String get copiedToClipboard => 'クリップボードにコピーしました！';

  @override
  String get tutorialContextTitle => '文脈タグ';

  @override
  String get tutorialContextDesc => '同じ文章でも状況（例：朝、夜）を追加して区別できます。';

  @override
  String get thinkingTimeInterval => '再生時差';

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
  String get translation => '翻訳';

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
  String get usageLimitTitle => '上限に達しました';

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
  String get menuDeviceImport => 'デバイスからインポート';

  @override
  String get menuSettings => 'Settings';

  @override
  String get basicWords => '基本単語リポジトリ';

  @override
  String get basicSentences => '基本文章リポジトリ';

  @override
  String get selectMaterialSet => '学習資料集を選択';

  @override
  String get sectionWords => '単語';

  @override
  String get sectionSentences => '文章';

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
  String get tutorialSwapDesc => '私の言語と学習言語を交換してください。';

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
  String get menuSelectMaterialSet => '学習教材セットを選択';

  @override
  String get sectionWord => '単語セクション';

  @override
  String get sectionSentence => '文章セクション';

  @override
  String get tabWord => '言葉';

  @override
  String get tabSentence => '文章';

  @override
  String get errorProfanity => '不適切な表現が含まれているため、翻訳できません。';

  @override
  String get errorHateSpeech => 'ヘイトスピーチが含まれているため、翻訳できません。';

  @override
  String get errorSexualContent => '性的なコンテンツが含まれているため、翻訳できません。';

  @override
  String get errorOtherSafety => 'AI安全ポリシーにより翻訳が拒否されました。';

  @override
  String get clearAll => 'すべてクリア';

  @override
  String get disambiguationTitle => '意味を選択';

  @override
  String get disambiguationPrompt => 'どの意味で翻訳しますか？';

  @override
  String get skip => 'スキップ';

  @override
  String get inputModeTitle => '入力';

  @override
  String get reviewModeTitle => '復習';

  @override
  String get practiceModeTitle => '練習';

  @override
  String get chatHistoryTitle => '会話履歴';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => '新しいチャット';

  @override
  String get chatChoosePersona => 'ペルソナを選択';

  @override
  String get chatTypeHint => 'メッセージを入力...';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String get chatNoConversations => '会話がありません';

  @override
  String get noDialogueHistory => 'No dialogue history.';

  @override
  String get chatStartNewPrompt => '練習を始めるために新しいチャットを開始しましょう！';

  @override
  String chatFromConversation(Object speaker) {
    return 'From Conversation ($speaker)';
  }

  @override
  String get personaTeacher => '英語の先生';

  @override
  String get personaGuide => '旅行ガイド';

  @override
  String get personaFriend => '地元の友人';

  @override
  String get chatUntitled => 'Untitled Conversation';

  @override
  String get chatAiChat => 'チャット';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Current Material Set: $name';
  }

  @override
  String get basicWordRepository => '基本単語リポジトリ';

  @override
  String get basicSentenceRepository => '基本文章リポジトリ';

  @override
  String get chatEndTitle => '会話を終了して保存';

  @override
  String get chatEndMessage => '会話を終了しますか？';

  @override
  String get chatSaveAndExit => '保存して終了';

  @override
  String get errorSelectCategory => '先に単語か文章を選択してください！';

  @override
  String get tutorialM1ToggleTitle => '単語/文章モード';

  @override
  String get tutorialM1ToggleDesc => 'ここで単語と文章のモードを切り替えます。';

  @override
  String get metadataDialogTitle => 'Details';

  @override
  String get tagFormal => '丁寧語';

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
  String get titleTagSelection => 'タイトルのタグ（資料集）';

  @override
  String get generalTags => '一般タグ';

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
  String get formSingular => '単数形';

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
  String get neutral => '中性';

  @override
  String get chatAllConversations => 'すべての会話';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation => 'この会話を削除しますか？\n削除した会話は復元できません。';

  @override
  String get notSelected => 'ー選択されていませんー';

  @override
  String get myWordbook => 'マイ単語帳';

  @override
  String get mySentenceCollection => 'マイ例文集';

  @override
  String get newSubjectName => '新しい単語帳/文章集のタイトル';

  @override
  String get enterNewSubjectName => '新しいタイトルを入力';

  @override
  String get addNewSubject => '新しいタイトルを追加';

  @override
  String get selectExistingSubject => '既存のタイトルを選択';

  @override
  String get addTagHint => 'タグを追加...';

  @override
  String get save => '保存';

  @override
  String get styleFormal => '敬語';

  @override
  String get styleInformal => 'ため口';

  @override
  String get stylePolite => '丁寧';

  @override
  String get styleSlang => 'スラング';

  @override
  String statusDownloading(Object name) {
    return 'Downloading: $name...';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name Imported Successfully';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Import Failed: $error';
  }

  @override
  String get statusLoginSuccess => 'Login successful.';

  @override
  String statusLoginFailed(Object error) {
    return 'Login failed: $error';
  }

  @override
  String get statusLoginCancelled => 'Login cancelled.';

  @override
  String get statusLoggingIn => 'ログイン中...';

  @override
  String get statusLogoutSuccess => 'Logged out.';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get login => 'Login';

  @override
  String get signUp => 'Sign Up';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get invalidEmail => 'Please enter a valid email.';

  @override
  String get passwordTooShort => 'Password must be at least 6 characters.';

  @override
  String get statusSigningUp => 'Signing up...';

  @override
  String statusSignUpFailed(Object error) {
    return 'Sign up failed: $error';
  }

  @override
  String get statusCheckEmail => 'メールを確認して認証を完了してください。';

  @override
  String get emailAlreadyInUse => 'すでに登録済みのメールアドレスです。ログインまたはパスワード再設定をご利用ください。';
}

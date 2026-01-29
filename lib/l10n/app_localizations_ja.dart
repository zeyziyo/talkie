// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

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
  String get helpMode3Desc => '学習教材の文章を聞いて、自分で話す練習をします。';

  @override
  String get helpMode3Details =>
      '• 教材選択: 学習する教材パックを選択\n• 間隔調整: [-] [+] ボタンで文章間の待機時間を設定 (3秒〜60秒)\n• 開始/停止: 再生ボタンでシャドーイングセッションを制御\n• 話す: ネイティブの音声を聞いて真似て話す\n• フィードバック: 発音の正確さをスコア (0-100) と色で表示 (緑/橙/赤)\n• 再試行: 認識失敗時に再試行ボタンを使用';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => 'モード3等で学習教材をインポートするには、以下の構造のJSONファイルを使用してください:';

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
  String get translate => '翻訳';

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
  String get startTutorial => 'チュートリアル開始';

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
  String get menuDeviceImport => 'Import from Device';

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
  String get practiceModeTitle => '発음練習';

  @override
  String get chatHistoryTitle => '会話履歴';

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
  String get chatAiChat => 'AIチャット';

  @override
  String get tutorialAiChatTitle => 'AIチャット';

  @override
  String get tutorialAiChatDesc => 'AIペルソナと実践的な会話を練習しましょう。';

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
}

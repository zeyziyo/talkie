// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get accuracy => '正確度';

  @override
  String get ttsMissing => 'この言語の音声エンジンがデバイスにインストールされていません。';

  @override
  String get ttsInstallGuide =>
      'Androidの設定 > Googleテキスト読み上げから、該当する言語データをインストールしてください。';

  @override
  String get adLoading => '広告を読み込み中です。しばらくしてからもう一度試してください。';

  @override
  String get addNewSubject => '新しいタイトルを追加';

  @override
  String get addParticipant => '参加者を追加';

  @override
  String get addTagHint => 'タグを追加...';

  @override
  String get alreadyHaveAccount => 'すでにアカウントをお持ちですか？';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => '自動再生';

  @override
  String get basic => '基本';

  @override
  String get basicDefault => '基本';

  @override
  String get basicMaterialRepository => '基本文/単語リポジトリ';

  @override
  String get basicSentenceRepository => '基本文章リポジトリ';

  @override
  String get basicSentences => '基本文章リポジトリ';

  @override
  String get basicWordRepository => '基本単語リポジトリ';

  @override
  String get basicWords => '基本単語リポジトリ';

  @override
  String get cancel => 'キャンセル';

  @override
  String get caseObject => '目的格';

  @override
  String get casePossessive => '所有格';

  @override
  String get casePossessivePronoun => '所有代名詞';

  @override
  String get caseReflexive => '再帰代名詞';

  @override
  String get caseSubject => '主格';

  @override
  String get chatAiChat => 'チャット';

  @override
  String get chatAllConversations => 'すべての会話';

  @override
  String get chatChoosePersona => 'ペルソナを選択';

  @override
  String get chatEndMessage => '会話を終了しますか？';

  @override
  String get chatEndTitle => '会話を終了して保存';

  @override
  String chatFailed(Object error) {
    return 'チャット失敗: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return '会話から抜粋 ($speaker)';
  }

  @override
  String get chatHistoryTitle => '会話履歴';

  @override
  String get chatNew => '新しい会話';

  @override
  String get chatNewChat => '新しいチャット';

  @override
  String get chatNoConversations => '会話がありません';

  @override
  String get chatSaveAndExit => '保存して終了';

  @override
  String get chatStartNewPrompt => '練習を始めるために新しいチャットを開始しましょう！';

  @override
  String get chatTypeHint => 'メッセージを入力...';

  @override
  String get chatUntitled => '無題の会話';

  @override
  String get checking => '確認中...';

  @override
  String get clearAll => 'すべてクリア';

  @override
  String get confirm => '確認';

  @override
  String get confirmDelete => 'この学習記録を削除しますか？';

  @override
  String get confirmDeleteConversation => 'この会話を削除しますか？\n削除した会話は復元できません。';

  @override
  String get confirmDeleteParticipant => 'この参加者を削除してもよろしいですか？';

  @override
  String get contextTagHint => '後で区別しやすいように状況を記入してください';

  @override
  String get contextTagLabel => '文脈/状況 (オプション) - 例：朝の挨拶、丁寧語';

  @override
  String get copiedToClipboard => 'クリップボードにコピーしました！';

  @override
  String get copy => 'コピー';

  @override
  String get correctAnswer => '正解';

  @override
  String get createNew => '新規作成';

  @override
  String get currentLocation => '現在の位置';

  @override
  String get currentMaterialLabel => '現在選択されている教材集:';

  @override
  String get delete => '削除';

  @override
  String deleteFailed(String error) {
    return '削除失敗: $error';
  }

  @override
  String get deleteRecord => '記録の削除';

  @override
  String get dialogueQuestDesc => 'ロールプレイを通じて会話練習をしてください。適切な答えを選択して話してください。';

  @override
  String get dialogueQuestTitle => '対話クエスト';

  @override
  String get disambiguationPrompt => 'どの意味で翻訳しますか？';

  @override
  String get disambiguationTitle => '意味を選択';

  @override
  String get dontHaveAccount => 'アカウントをお持ちでないですか？';

  @override
  String get editParticipant => '参加者を編集';

  @override
  String get email => 'メールアドレス';

  @override
  String get emailAlreadyInUse => 'すでに登録済みのメールアドレスです。ログインまたはパスワード再設定をご利用ください。';

  @override
  String get enterNewSubjectName => '新しいタイトルを入力';

  @override
  String get enterSentenceHint => '文章を入力してください...';

  @override
  String get enterTextHint => '翻訳するテキストを入力してください';

  @override
  String get enterTextToTranslate => '翻訳するテキストを入力してください';

  @override
  String get enterWordHint => '単語を入力してください...';

  @override
  String get error => 'エラー';

  @override
  String get errorHateSpeech => 'ヘイトスピーチが含まれているため、翻訳できません。';

  @override
  String get errorOtherSafety => 'AI安全ポリシーにより翻訳が拒否されました。';

  @override
  String get errorProfanity => '不適切な表現が含まれているため、翻訳できません。';

  @override
  String get errorSelectCategory => '先に単語か文章を選択してください！';

  @override
  String get errorSexualContent => '性的なコンテンツが含まれているため、翻訳できません。';

  @override
  String get errors => 'エラー:';

  @override
  String get female => '女性';

  @override
  String get file => 'ファイル:';

  @override
  String get filterAll => 'すべて';

  @override
  String get flip => '表示';

  @override
  String get formComparative => '比較級';

  @override
  String get formInfinitive => '原形/現在形';

  @override
  String get formPast => '過去形';

  @override
  String get formPastParticiple => '過去分詞';

  @override
  String get formPlural => '複数形';

  @override
  String get formPositive => '原級';

  @override
  String get formPresent => '現在形';

  @override
  String get formPresentParticiple => '現在分詞 (ing)';

  @override
  String get formSingular => '単数形';

  @override
  String get formSuperlative => '最上級';

  @override
  String get formThirdPersonSingular => '3人称単数';

  @override
  String get gameModeDesc => '練習するゲームモードを選択してください';

  @override
  String get gameModeTitle => 'ゲームモード';

  @override
  String get gameOver => 'ゲームオーバー';

  @override
  String get gender => '性別';

  @override
  String get generalTags => '一般タグ';

  @override
  String get getMaterials => '資料を入手';

  @override
  String get good => '良いですね';

  @override
  String get googleContinue => 'Googleで続行';

  @override
  String get helpDialogueImportDesc => 'JSONファイルで全体の対話セットをインポートします。';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'モード3等で学習教材をインポートするには、以下の構造のJSONファイルを使用してください:';

  @override
  String get helpJsonTypeDialogue => '対話 (Dialogue)';

  @override
  String get helpJsonTypeSentence => '文 (Sentence)';

  @override
  String get helpJsonTypeWord => '単語 (Word)';

  @override
  String get helpMode1Desc => '音声を認識して翻訳し、結果を聞くことができます。新しい表現を学ぶのに最適です。';

  @override
  String get helpMode1Details =>
      '• 言語設定: 上部の翻訳アイコンで言語を変更\n• ヘルプ: 上部のハテナアイコンで使い方ガイドを確認\n• 音声入力: マイクアイコンをタップして会話を開始/停止\n• テキスト入力: 直接入力して翻訳可能\n• 自動検索: 入力時に類似の既存の文章があれば通知\n• 翻訳: 「翻訳」ボタンですぐに翻訳を実行\n• 聞く: スピーカーアイコンで原文/翻訳文を再生 (TTS)\n• 保存: 「保存」ボタンで学習記録に保存\n• クリア: 「削除」ボタンで入力内容を消去';

  @override
  String get helpMode2Desc => '保存された文章を復習します。翻訳を隠して確認し、復習回数を記録しましょう。';

  @override
  String get helpMode2Details =>
      '• 教材選択：右上メニュー（⋮）から「学習教材の選択」または「オンライン教材室」を利用\n• カードをめくる：「表示/非表示」で翻訳を確認\n• 聞く：スピーカーアイコンで発音を再生\n• 学習完了：チェックマーク（V）で学習完了を処理\n• 削除：カードを長押しして記録を削除\n• 検索とフィルター：検索バー（リアルタイムスマート検索）とタグ、開始文字フィルターをサポート';

  @override
  String get helpMode3Desc => '文章を聞いて、シャドーイングで発音を練習してください。';

  @override
  String get helpMode3Details =>
      '• 教材選択: 学習する教材パックを選択\n• 間隔調整: [-] [+] ボタンで文章間の待機時間を設定 (3秒〜60秒)\n• 開始/停止: 再生ボタンでシャドーイングセッションを制御\n• 話す: ネイティブの音声を聞いて真似て話す\n• フィードバック: 発音の正確さをスコア (0-100) と色で表示 (緑/橙/赤)\n• 再試行: 認識失敗時に再試行ボタンを使用';

  @override
  String get helpModeChatDesc => 'AIペルソナと会話して、実践的な会話を練習してください。';

  @override
  String get helpModeChatDetails =>
      '• AIチャット：ペルソナと実践的な会話を練習します。\n• 参加者管理：自分の言語とAIの言語をそれぞれ設定して、言語の不一致を防ぐことができます。\n• GPSロールプレイ：現在の位置情報に基づいて自然な会話状況を演出します。\n• 記録保存：すべての会話はIDに基づいて安全に保存され、名前を変更しても記録は維持されます。';

  @override
  String get helpTabJson => 'JSON形式';

  @override
  String get helpTabModes => '機能紹介';

  @override
  String get helpTabTour => 'ツアー';

  @override
  String get helpTitle => 'ヘルプ＆ガイド';

  @override
  String get helpTourDesc =>
      'チュートリアルを開始すると、**ハイライトサークル（円）**が主な機能を案内します。\n(例：学習カードを**ハイライトサークル**が指しているときに長押しすると削除できます。)';

  @override
  String get hide => '隠す';

  @override
  String importAdded(int count) {
    return '追加: $count件';
  }

  @override
  String get importComplete => '読込完了';

  @override
  String get importDuplicateTitleError =>
      '同じタイトルの資料が既に存在します。タイトルを変更してからもう一度試してください。';

  @override
  String importErrorMessage(String error) {
    return 'ファイルの読み込みに失敗しました:\\n$error';
  }

  @override
  String get importFailed => '読込失敗';

  @override
  String importFile(String fileName) {
    return 'ファイル: $fileName';
  }

  @override
  String get importJsonFile => 'JSONファイル読込';

  @override
  String get importJsonFilePrompt => 'JSONファイルを読み込んでください';

  @override
  String importSkipped(int count) {
    return 'スキップ: $count件';
  }

  @override
  String importTotal(int count) {
    return '合計: $count件';
  }

  @override
  String get importing => '読込中...';

  @override
  String get inputModeTitle => '入力';

  @override
  String intervalSeconds(int seconds) {
    return '間隔: $seconds秒';
  }

  @override
  String get invalidEmail => '有効なメールアドレスを入力してください。';

  @override
  String get kakaoContinue => 'カカオで続ける';

  @override
  String get labelLangCode => '言語コード (例: en-US, ja-JP)';

  @override
  String get labelName => '名前';

  @override
  String get labelNote => '注釈';

  @override
  String get labelPOS => '品詞';

  @override
  String get labelRole => '役割';

  @override
  String get labelSentence => '文';

  @override
  String get labelSentenceCollection => '文章集';

  @override
  String get labelSentenceType => '文章の種類';

  @override
  String get labelShowMemorized => '完了済み';

  @override
  String get labelType => '種類:';

  @override
  String get labelWord => '単語';

  @override
  String get labelWordbook => '単語帳';

  @override
  String get language => '言語';

  @override
  String get languageSettings => '言語設定';

  @override
  String get languageSettingsTitle => '言語設定';

  @override
  String get libTitleFirstMeeting => '初対面';

  @override
  String get libTitleGreetings1 => 'あいさつ 1';

  @override
  String get libTitleNouns1 => '名詞 1';

  @override
  String get libTitleVerbs1 => '動詞 1';

  @override
  String get listen => '聞く';

  @override
  String get listening => '聞き取り中...';

  @override
  String get loadingParticipants => '参加者を読み込み中...';

  @override
  String get location => '場所';

  @override
  String get login => 'ログイン';

  @override
  String get logout => 'ログアウト';

  @override
  String get logoutConfirmMessage => '現在のデバイスからログアウトしますか？';

  @override
  String get logoutConfirmTitle => 'ログアウト';

  @override
  String get male => '男性';

  @override
  String get manageParticipants => '参加者管理';

  @override
  String get manual => '手動入力';

  @override
  String get markAsStudied => '完了としてマーク';

  @override
  String get materialInfo => '教材情報';

  @override
  String get me => '私';

  @override
  String get menuDeviceImport => 'デバイスからインポート';

  @override
  String get menuHelp => 'ヘルプ';

  @override
  String get menuLanguageSettings => '言語設定';

  @override
  String get menuOnlineLibrary => 'オンライン資料室';

  @override
  String get menuSelectMaterialSet => '学習教材セットを選択';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'チュートリアル';

  @override
  String get menuWebDownload => '取扱説明書';

  @override
  String get metadataDialogTitle => '詳細分類';

  @override
  String get metadataFormType => '文法形式';

  @override
  String get metadataRootWord => '原形 (Root Word)';

  @override
  String get micButtonTooltip => '音声認識を開始';

  @override
  String mode1SelectedMaterial(Object name) {
    return '現在選択されている教材集: $name';
  }

  @override
  String get mode2Title => '復習';

  @override
  String get mode3Next => '次へ';

  @override
  String get mode3Start => '開始';

  @override
  String get mode3Stop => '終了';

  @override
  String get mode3TryAgain => '再試行';

  @override
  String get mySentenceCollection => 'マイ例文集';

  @override
  String get myWordbook => 'マイ単語帳';

  @override
  String get neutral => '中性';

  @override
  String get newSubjectName => '新しい単語帳/文章集のタイトル';

  @override
  String get next => '次へ';

  @override
  String get noDialogueHistory => '会話履歴がありません。';

  @override
  String get noInternetWarningMic =>
      'インターネット接続がありません。オフライン状態では音声認識ができない場合があります。';

  @override
  String get noInternetWarningTranslate =>
      'インターネット接続がありません。オフライン状態では翻訳機能を利用できません。復習モードをご利用ください。';

  @override
  String get noMaterialsInCategory => 'このカテゴリには資料がありません。';

  @override
  String get noParticipantsFound => '登録された参加者はいません。';

  @override
  String get noRecords => '選択した言語の学習記録がありません';

  @override
  String get noStudyMaterial => '学習資料がありません。';

  @override
  String get noTextToPlay => '再生するテキストがありません';

  @override
  String get noTranslationToSave => '保存する翻訳がありません';

  @override
  String get noVoiceDetected => '音声が検出されませんでした';

  @override
  String get notSelected => 'ー選択されていませんー';

  @override
  String get onlineLibraryCheckInternet => 'インターネット接続を確認するか、後でもう一度試してください。';

  @override
  String get onlineLibraryLoadFailed => '資料を読み込むのに失敗しました。';

  @override
  String get onlineLibraryNoMaterials => '資料がありません。';

  @override
  String get participantDeleted => '参加者が削除されました。';

  @override
  String get participantRename => '参加者の名前を変更';

  @override
  String get partner => 'パートナー';

  @override
  String get partnerMode => 'パートナーモード';

  @override
  String get password => 'パスワード';

  @override
  String get passwordTooShort => 'パスワードは6文字以上である必要があります。';

  @override
  String get perfect => '完璧です！';

  @override
  String get personaFriend => '地元の友人';

  @override
  String get personaGuide => '旅行ガイド';

  @override
  String get personaTeacher => '英語の先生';

  @override
  String get playAgain => 'もう一度プレイ';

  @override
  String playbackFailed(String error) {
    return '再生失敗: $error';
  }

  @override
  String get playing => '再生中...';

  @override
  String get posAdjective => '形容詞';

  @override
  String get posAdverb => '副詞';

  @override
  String get posConjunction => '接続詞';

  @override
  String get posInterjection => '感動詞';

  @override
  String get posNoun => '名詞';

  @override
  String get posPreposition => '前置詞/助詞';

  @override
  String get posPronoun => '代名詞';

  @override
  String get posVerb => '動詞';

  @override
  String get practiceModeTitle => '練習';

  @override
  String get practiceWordsOnly => '単語のみ練習';

  @override
  String progress(int current, int total) {
    return '進捗: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return '最近作成された$count個を表示';
  }

  @override
  String recognitionFailed(String error) {
    return '音声認識失敗: $error';
  }

  @override
  String get recognized => '認識完了';

  @override
  String get recognizedText => '認識された発音:';

  @override
  String get recordDeleted => '記録が削除されました';

  @override
  String get refresh => '更新';

  @override
  String get reset => 'リセット';

  @override
  String get resetPracticeHistory => '練習履歴を初期化';

  @override
  String get retry => '再試行？';

  @override
  String get reviewAll => 'すべて復習';

  @override
  String reviewCount(int count) {
    return '復習 $count回';
  }

  @override
  String get reviewModeTitle => '復習';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => '第三者';

  @override
  String get roleUser => 'ユーザー';

  @override
  String get save => '保存';

  @override
  String get saveData => '保存';

  @override
  String saveFailed(String error) {
    return '保存失敗: $error';
  }

  @override
  String get saveTranslationsFromSearch => '検索モードから翻訳を保存してください';

  @override
  String get saved => '保存完了';

  @override
  String get saving => '保存中...';

  @override
  String score(String score) {
    return '正確さ: $score%';
  }

  @override
  String get scoreLabel => 'スコア';

  @override
  String get search => '検索';

  @override
  String get searchConditions => '検索条件';

  @override
  String get searchSentenceHint => '文章検索...';

  @override
  String get searchWordHint => '単語検索...';

  @override
  String get sectionSentence => '文章セクション';

  @override
  String get sectionSentences => '文章';

  @override
  String get sectionWord => '単語セクション';

  @override
  String get sectionWords => '単語';

  @override
  String get selectExistingSubject => '既存のタイトルを選択';

  @override
  String get selectMaterialPrompt => '学習教材を選択してください';

  @override
  String get selectMaterialSet => '学習資料集を選択';

  @override
  String get selectPOS => '品詞を選択';

  @override
  String get selectParticipants => '参加者を選択';

  @override
  String get selectSentenceType => '文の種類を選択';

  @override
  String get selectStudyMaterial => '学習教材を選択';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => '文';

  @override
  String get signUp => '会員登録';

  @override
  String get similarTextFound => '類似したテキストが見つかりました';

  @override
  String get skip => 'スキップ';

  @override
  String get source => '出典:';

  @override
  String get sourceLanguage => '原文言語';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => '今すぐ話してください！';

  @override
  String get speaker => '発話者';

  @override
  String get speakerSelect => '発話者を選択';

  @override
  String get speakingPractice => 'スピーキング練習';

  @override
  String get startChat => '会話を開始';

  @override
  String get startPractice => '練習開始';

  @override
  String get startTutorial => 'チュートリアル開始';

  @override
  String get startWarning => '注意';

  @override
  String get startsWith => '先頭文字';

  @override
  String get statusCheckEmail => 'メールを確認して認証を完了してください。';

  @override
  String statusDownloading(Object name) {
    return 'ダウンロード中: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'インポート失敗: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$nameのインポートが完了しました';
  }

  @override
  String get statusLoggingIn => 'ログイン中...';

  @override
  String get statusLoginCancelled => 'ログインがキャンセルされました。';

  @override
  String statusLoginFailed(Object error) {
    return 'ログイン失敗: $error';
  }

  @override
  String get statusLoginSuccess => 'ログインに成功しました。';

  @override
  String get statusLogoutSuccess => 'ログアウトしました。';

  @override
  String statusSignUpFailed(Object error) {
    return '会員登録失敗: $error';
  }

  @override
  String get statusSigningUp => '会員登録中...';

  @override
  String get stopPractice => '練習停止';

  @override
  String get studyComplete => '学習完了';

  @override
  String studyRecords(int count) {
    return '学習記録 ($count)';
  }

  @override
  String get styleFormal => '敬語';

  @override
  String get styleInformal => 'ため口';

  @override
  String get stylePolite => '丁寧';

  @override
  String get styleSlang => 'スラング';

  @override
  String get subject => '主題:';

  @override
  String get swapLanguages => '言語を切り替え';

  @override
  String get switchToAi => 'AIモードに切り替え';

  @override
  String get switchToPartner => 'パートナーモードに切り替え';

  @override
  String get syncingData => 'データを同期中...';

  @override
  String get tabConversation => '会話';

  @override
  String tabReview(int count) {
    return '復習 ($count)';
  }

  @override
  String get tabSentence => '文章';

  @override
  String get tabSpeaking => 'スピーキング';

  @override
  String tabStudyMaterial(int count) {
    return '学習教材 ($count)';
  }

  @override
  String get tabWord => '言葉';

  @override
  String get tagFormal => '丁寧語';

  @override
  String get tagSelection => 'タグ選択';

  @override
  String get targetLanguage => '翻訳言語';

  @override
  String get targetLanguageFilter => '対象言語フィルタ:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => '正解が表示される前に考える時間です。';

  @override
  String get thinkingTimeInterval => '再生時差';

  @override
  String get timeUp => '時間切れ！';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'タイトルのタグ（資料集）';

  @override
  String get tooltipDecrease => '減少';

  @override
  String get tooltipIncrease => '増加';

  @override
  String get tooltipSearch => '検索';

  @override
  String get tooltipSpeaking => 'スピーキング';

  @override
  String get tooltipStudyReview => '学習+復習';

  @override
  String totalRecords(int count) {
    return '合計$count件の記録（すべて表示）';
  }

  @override
  String get translate => '翻訳する';

  @override
  String get translating => '翻訳中...';

  @override
  String get translation => '翻訳';

  @override
  String get translationComplete => '翻訳完了 (保存してください)';

  @override
  String translationFailed(String error) {
    return '翻訳失敗: $error';
  }

  @override
  String get translationLimitExceeded => '翻訳制限を超過';

  @override
  String get translationLimitMessage =>
      '1日の無料翻訳（5回）をすべて使い切りました。\n\n広告を見て5回をすぐにチャージしますか？';

  @override
  String get translationLoaded => '保存済みの翻訳を読み込みました';

  @override
  String get translationRefilled => '翻訳回数が5回チャージされました！';

  @override
  String get translationResultHint => '翻訳結果 - 修正可能';

  @override
  String get tryAgain => 'もう一度';

  @override
  String get tutorialAiChatDesc => 'AIペルソナと実践的な会話を練習しましょう。';

  @override
  String get tutorialAiChatTitle => 'AIチャット';

  @override
  String get tutorialContextDesc => '同じ文章でも状況（例：朝、夜）を追加して区別できます。';

  @override
  String get tutorialContextTitle => '文脈タグ';

  @override
  String get tutorialLangSettingsDesc => '翻訳元の言語と翻訳先の言語を設定します。';

  @override
  String get tutorialLangSettingsTitle => '言語設定';

  @override
  String get tutorialM1ToggleDesc => 'ここで単語と文章のモードを切り替えます。';

  @override
  String get tutorialM1ToggleTitle => '単語/文章モード';

  @override
  String get tutorialM2DropdownDesc => '学習教材を選択します。';

  @override
  String get tutorialM2ImportDesc => 'デバイスのフォルダからJSONファイルを読み込みます。';

  @override
  String get tutorialM2ListDesc => '保存されたカードを確認し、裏返して正解を確認します。(長押しで削除)';

  @override
  String get tutorialM2ListTitle => '学習リスト';

  @override
  String get tutorialM2SearchDesc => '保存された単語や文を検索して、すばやく見つけることができます。';

  @override
  String get tutorialM2SelectDesc => '学習する教材を選択するか、全復習モードに切り替えます。';

  @override
  String get tutorialM2SelectTitle => '選択とフィルタ';

  @override
  String get tutorialM3IntervalDesc => '文章間の待機時間を調整します。';

  @override
  String get tutorialM3IntervalTitle => '間隔設定';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'スピーキング練習を行う教材セットを選択してください。';

  @override
  String get tutorialM3SelectTitle => '教材選択';

  @override
  String get tutorialM3StartDesc => '再生ボタンを押してネイティブ音声を聞き、続いて発音してください。';

  @override
  String get tutorialM3StartTitle => '練習開始';

  @override
  String get tutorialM3WordsDesc => 'チェックすると、保存された単語のみ練習します。';

  @override
  String get tutorialM3WordsTitle => '単語練習';

  @override
  String get tutorialMicDesc => 'マイクボタンをタップして音声で入力できます。';

  @override
  String get tutorialMicTitle => '音声入力';

  @override
  String get tutorialSaveDesc => '翻訳結果を学習記録に保存します。';

  @override
  String get tutorialSaveTitle => '保存';

  @override
  String get tutorialSwapDesc => '私の言語と学習言語を交換してください。';

  @override
  String get tutorialTabDesc => 'ここで希望する学習モードを選択できます。';

  @override
  String get tutorialTapToContinue => 'タップして続ける';

  @override
  String get tutorialTransDesc => '入力したテキストを翻訳します。';

  @override
  String get tutorialTransTitle => '翻訳';

  @override
  String get typeExclamation => '感嘆文';

  @override
  String get typeImperative => '命令文';

  @override
  String get typeQuestion => '疑問文';

  @override
  String get typeStatement => '平叙文';

  @override
  String get usageLimitTitle => '上限に達しました';

  @override
  String get useExistingText => '既存のテキストを使用';

  @override
  String get viewOnlineGuide => 'オンラインガイドを見る';

  @override
  String get voluntaryTranslations => '自主的な翻訳';

  @override
  String get watchAdAndRefill => '広告を見てチャージ (+5回)';

  @override
  String get word => '単語';

  @override
  String get wordDefenseDesc => '敵が到着する前に単語を言って基地を守ってください。';

  @override
  String get wordDefenseTitle => '単語ディフェンス';

  @override
  String get wordModeLabel => '単語モード';

  @override
  String get yourPronunciation => 'あなたの発音';

  @override
  String get ttsUnsupportedNatively => 'このデバイスの標準設定では、この言語の音声出力をサポートしていません。';
}

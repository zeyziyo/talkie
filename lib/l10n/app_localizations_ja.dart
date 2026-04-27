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
  String get adLoading => '広告を読み込み中です。しばらくしてからもう一度試してください。';

  @override
  String get add => '追加';

  @override
  String get addNew => '新規追加';

  @override
  String get addNewSubject => '新しいタイトルを追加';

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
  String get checking => '確認中...';

  @override
  String get clearAll => 'すべてクリア';

  @override
  String get confirm => '確認';

  @override
  String get confirmDelete => 'この学習記録を削除しますか？';

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
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => 'アカウントをお持ちでないですか？';

  @override
  String get email => 'メールアドレス';

  @override
  String get emailAlreadyInUse => 'すでに登録済みのメールアドレスです。ログインまたはパスワード再設定をご利用ください。';

  @override
  String get enterNameHint => '名前を入力してください';

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
  String get extractedText => '認識されたテキスト';

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
  String get helpJsonDesc => 'モード3等で学習教材をインポートするには、以下の構造のJSONファイルを使用してください:';

  @override
  String get helpJsonTypeSentence => '文 (Sentence)';

  @override
  String get helpJsonTypeWord => '単語 (Word)';

  @override
  String get helpMode1Desc => 'プレミアム3Dマイクと大きなキーボードアイコンで、最も直感的な方法で言語学習を始めましょう。';

  @override
  String get helpMode1Details =>
      '• 言語設定：ホーム画面上部の言語ボタンで、自分の言語と学習中の言語を確認し、学習言語を変更できます。\n• シンプル入力：中央の大きなマイクとテキストウィンドウから即座に入力してください。\n• 設定確認：入力が終わったら、右側の青いチェックボタンを押してください。詳細設定ウィンドウが表示されます。\n• 詳細設定：表示されたダイアログで、保存する資料集、注釈（メモ）、タグを指定できます。\n• 今すぐ翻訳：設定後、緑色の翻訳ボタンを押すと、人工知能が即座に翻訳を実行します。\n• 自動検索：入力中、類似した既存の翻訳をリアルタイムで検知して表示します。\n• 聴取と保存：翻訳結果の下にあるスピーカーアイコンで発音を聞き、「データ保存」で学習リストに追加してください。';

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
  String get helpNote => '単語の意味や例文、状況などを自由にご記入ください。';

  @override
  String get helpNotebook => '翻訳された結果を保存するフォルダを選択してください。';

  @override
  String get helpTabJson => 'JSON形式';

  @override
  String get helpTabModes => '機能紹介';

  @override
  String get helpTabQuickStart => 'クイックスタート';

  @override
  String get helpTabTour => 'ツアー';

  @override
  String get helpTag => '後で分類したり検索したりするためのキーワードを入力してください。';

  @override
  String get helpTitle => 'ヘルプ＆ガイド';

  @override
  String get helpTourDesc =>
      'チュートリアルを開始すると、**ハイライトサークル（円）**が主な機能を案内します。\n(例：学習カードを**ハイライトサークル**が指しているときに長押しすると削除できます。)';

  @override
  String get hide => '隠す';

  @override
  String get hintNoteExample => '例：状況説明、同音異義語など';

  @override
  String get hintTagExample => '例：ビジネス、旅行...';

  @override
  String get homeTab => '翻訳';

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
  String importFolderSuccess(num files, num entries) {
    return '$files個のファイル、$entries個の項目をインポートしました。';
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
  String get importSourceFile => '単一のJSONファイル';

  @override
  String get importSourceFolder => 'フォルダ (言語別ライブラリ構造)';

  @override
  String get importSourceTitle => 'インポート元を選択';

  @override
  String get importSourceZip => 'ZIPファイル (圧縮されたフォルダ)';

  @override
  String importTotal(int count) {
    return '合計: $count件';
  }

  @override
  String get importing => '読込中...';

  @override
  String get inputContent => '入力内容';

  @override
  String get inputLanguage => '入力言語';

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
  String get labelDetails => '詳細設定';

  @override
  String get labelFilterMaterial => '資料集';

  @override
  String get labelFilterTag => 'タグ';

  @override
  String get labelLangCode => '言語コード (例: en-US, ja-JP)';

  @override
  String get labelNote => '注釈';

  @override
  String get labelPOS => '品詞';

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
  String get manual => '手動入力';

  @override
  String get markAsStudied => '完了としてマーク';

  @override
  String get materialInfo => '教材情報';

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
  String get newNotebookTitle => '新しいノートブック名';

  @override
  String get newSubjectName => '新しい単語帳/文章集のタイトル';

  @override
  String get next => '次へ';

  @override
  String get noDataForLanguage =>
      '選択された言語の学習データがローカルDBにありません。データをダウンロードするか、別の言語を選択してください。';

  @override
  String get noMaterialsInCategory => 'このカテゴリには資料がありません。';

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
  String get noteGuidance => 'より正確な翻訳のために詳細を入力する場所';

  @override
  String get onlineLibraryCheckInternet => 'インターネット接続を確認するか、後でもう一度試してください。';

  @override
  String get onlineLibraryLoadFailed => '資料を読み込むのに失敗しました。';

  @override
  String get onlineLibraryNoMaterials => '資料がありません。';

  @override
  String get openSettings => '設定を開く';

  @override
  String get password => 'パスワード';

  @override
  String get passwordTooShort => 'パスワードは6文字以上である必要があります。';

  @override
  String get perfect => '完璧です！';

  @override
  String get pickGallery => 'ギャラリーから選択';

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
  String get posArticle => '冠詞';

  @override
  String get posConjunction => '接続詞';

  @override
  String get posInterjection => '感動詞';

  @override
  String get posNoun => '名詞';

  @override
  String get posParticle => '助詞';

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
  String get processing => '処理中...';

  @override
  String progress(int current, int total) {
    return '進捗: $current / $total';
  }

  @override
  String get quickStartStep1Desc => 'メニュー > 言語設定で、自分の言語と学習言語をまず指定してください。';

  @override
  String get quickStartStep1Title => '1. 言語設定';

  @override
  String get quickStartStep2Desc =>
      '入力（マイク/キーボード） -> 翻訳 -> 保存 の順で、自分だけの学習カードを作りましょう。';

  @override
  String get quickStartStep2Title => '2. 基本的な流れ';

  @override
  String get quickStartStep3Desc => 'チャットで練習したり、発音練習タブでテキストを見て直接発音しながら練習しましょう。';

  @override
  String get quickStartStep3Title => '3. モード活用';

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
  String get requestTranslation => '翻訳をリクエスト';

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
  String get save => '保存';

  @override
  String get saveAsSentence => '文章として保存';

  @override
  String get saveAsWord => '単語として保存';

  @override
  String get saveData => '保存';

  @override
  String saveFailed(String error) {
    return '保存失敗: $error';
  }

  @override
  String get saveToHistory => 'スキャン履歴に保存';

  @override
  String get saveTranslationsFromSearch => '検索モードから翻訳を保存してください';

  @override
  String get saved => '保存完了';

  @override
  String get saving => '保存中...';

  @override
  String get scanInstructions => 'スキャンする画像を選択してください';

  @override
  String get scanNoMatch =>
      '사진에서 설정된 학습 언어와 일치하는 텍스트를 찾을 수 없습니다. 언어 설정을 확인해 보세요.';

  @override
  String get scanNotSupported =>
      'この言語はスキャン機能をサポートしていません。OCRは現在、ラテン文字、中国語、デーバナーガリー文字（ヒンディー語など）、日本語、韓国語のみをサポートしています。';

  @override
  String get scanLabel => 'スキャン';

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
  String get selectStudyMaterial => '学習教材を選択';

  @override
  String get sentence => '文';

  @override
  String get signUp => '会員登録';

  @override
  String get simplifiedGuidance => '日常会話を外国語に瞬間変換！Talkieがあなたの言語生活を記録します。';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get startTutorial => 'チュートリアル開始';

  @override
  String get startsWith => '先頭文字';

  @override
  String get statusCheckEmail => 'メールを確認して認証を完了してください。';

  @override
  String statusDownloading(String name) {
    return 'ダウンロード中: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return 'インポート失敗: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$nameのインポートが完了しました';
  }

  @override
  String statusLoginFailed(String error) {
    return 'ログイン失敗: $error';
  }

  @override
  String get statusLoginSuccess => 'ログインに成功しました。';

  @override
  String get statusLogoutSuccess => 'ログアウトしました。';

  @override
  String statusRequestFailed(String error) {
    return '翻訳リクエスト失敗: $error';
  }

  @override
  String get statusRequestSuccess => '翻訳リクエストが完了しました。';

  @override
  String get stopPractice => '練習停止';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return '選択した教材は、現在設定されている学習言語（$targetLang）をサポートしていないため、ローカルに保存できません。翻訳をリクエストしますか？';
  }

  @override
  String get studyLangNotFoundTitle => '学習言語はサポートされていません';

  @override
  String get styleFormal => '敬語';

  @override
  String get styleInformal => 'ため口';

  @override
  String get stylePolite => '丁寧';

  @override
  String get styleSlang => 'スラング';

  @override
  String get swapLanguages => '言語を切り替え';

  @override
  String get syncingData => 'データを同期中...';

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
  String get tooltipSettingsConfirm => '設定確認';

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
  String get translateNow => '翻訳する';

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
  String get translationLanguage => '翻訳言語';

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
  String get translationResult => '翻訳結果';

  @override
  String get translationResultHint => '翻訳結果 - 修正可能';

  @override
  String get tryAgain => 'もう一度';

  @override
  String get ttsInstallGuide =>
      'Androidの設定 > Googleテキスト読み上げから、該当する言語データをインストールしてください。';

  @override
  String get ttsMissing => 'この言語の音声エンジンがデバイスにインストールされていません。';

  @override
  String get ttsUnsupportedNatively => 'このデバイスの標準設定では、この言語の音声出力をサポートしていません。';

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
  String get typeIdiom => '慣用句';

  @override
  String get typeImperative => '命令文';

  @override
  String get typeProverb => 'ことわざ';

  @override
  String get typeQuestion => '疑問文';

  @override
  String get typeStatement => '平叙文';

  @override
  String get usageLimitTitle => '上限に達しました';

  @override
  String get useExistingText => '既存のテキストを使用';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => 'オンラインガイドを見る';

  @override
  String get voluntaryTranslations => '自主的な翻訳';

  @override
  String get watchAdAndRefill => '広告を見てチャージ (+5回)';

  @override
  String get welcomeButton => '始める';

  @override
  String get welcomeDesc =>
      'Talkieへようこそ！世界80以上の言語を100%の完全性でサポートし、新しいプレミアム3Dデザインと最適化されたパフォーマンスで完璧な学習体験を提供します。';

  @override
  String get welcomeTitle => 'Talkieへようこそ！';

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
}

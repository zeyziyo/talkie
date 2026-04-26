// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get accuracy => '准确率';

  @override
  String get adLoading => '正在加载广告。请稍后重试。';

  @override
  String get add => '添加';

  @override
  String get addNew => '新增';

  @override
  String get addNewSubject => '添加新标题';

  @override
  String get addTagHint => '添加标签...';

  @override
  String get alreadyHaveAccount => '已经有账户了？';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => '自动播放';

  @override
  String get basic => '基本';

  @override
  String get basicDefault => '基本';

  @override
  String get basicMaterialRepository => '基本句子/单词存储库';

  @override
  String get basicSentenceRepository => '基础句库';

  @override
  String get basicSentences => '基础句库';

  @override
  String get basicWordRepository => '基础词库';

  @override
  String get basicWords => '基础词库';

  @override
  String get cancel => '取消';

  @override
  String get caseObject => '宾格';

  @override
  String get casePossessive => '所有格';

  @override
  String get casePossessivePronoun => '所有格代词';

  @override
  String get caseReflexive => '反身代词';

  @override
  String get caseSubject => '主格';

  @override
  String get checking => '正在检查...';

  @override
  String get clearAll => '全部清除';

  @override
  String get confirm => '确认';

  @override
  String get confirmDelete => '确定要删除这条学习记录吗？';

  @override
  String get contextTagHint => '请写下情境以便以后区分';

  @override
  String get contextTagLabel => '语境/情境 (可选) - 例如：早上问候，敬语';

  @override
  String get copiedToClipboard => '已复制到剪贴板！';

  @override
  String get copy => '复制';

  @override
  String get correctAnswer => '正确答案';

  @override
  String get createNew => '新建条目';

  @override
  String get currentLocation => '当前位置';

  @override
  String get currentMaterialLabel => '当前选择的材料集：';

  @override
  String get delete => '删除';

  @override
  String deleteFailed(String error) {
    return '删除失败: $error';
  }

  @override
  String get deleteRecord => '删除记录';

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => '没有账户？';

  @override
  String get email => '电子邮件';

  @override
  String get emailAlreadyInUse => '此邮箱已被注册，请直接登录或找回密码。';

  @override
  String get enterNameHint => '输入名称';

  @override
  String get enterNewSubjectName => '输入新标题';

  @override
  String get enterSentenceHint => '输入句子...';

  @override
  String get enterTextHint => '输入要翻译的文本';

  @override
  String get enterTextToTranslate => '请输入要翻译的文本';

  @override
  String get enterWordHint => '输入单词...';

  @override
  String get error => '错误';

  @override
  String get errorHateSpeech => '包含仇恨言论，无法翻译。';

  @override
  String get errorOtherSafety => '由于 AI 安全策略，翻译被拒绝。';

  @override
  String get errorProfanity => '包含不雅内容，无法翻译。';

  @override
  String get errorSelectCategory => '请先选择单词或句子！';

  @override
  String get errorSexualContent => '包含色情内容，无法翻译。';

  @override
  String get errors => '错误:';

  @override
  String get extractedText => '识别到的文本';

  @override
  String get female => '女性';

  @override
  String get file => '文件:';

  @override
  String get filterAll => '全部';

  @override
  String get flip => '翻转';

  @override
  String get formComparative => '比较级';

  @override
  String get formInfinitive => '原形/现在时';

  @override
  String get formPast => '过去式';

  @override
  String get formPastParticiple => '过去分词';

  @override
  String get formPlural => '复数';

  @override
  String get formPositive => '原级';

  @override
  String get formPresent => '现在时';

  @override
  String get formPresentParticiple => '现在分词 (ing)';

  @override
  String get formSingular => '单数';

  @override
  String get formSuperlative => '最高级';

  @override
  String get formThirdPersonSingular => '第三人称单数';

  @override
  String get gameModeDesc => '选择要练习的游戏模式';

  @override
  String get gameModeTitle => '游戏模式';

  @override
  String get gameOver => '游戏结束';

  @override
  String get gender => '性别';

  @override
  String get generalTags => '通用标签';

  @override
  String get getMaterials => '获取资料';

  @override
  String get good => '不错';

  @override
  String get googleContinue => '使用 Google 帐户继续';

  @override
  String get helpJsonDesc => '要在模式 3 中导入学习资料，请创建具有以下结构的 JSON 文件：';

  @override
  String get helpJsonTypeSentence => '句子 (Sentence)';

  @override
  String get helpJsonTypeWord => '单词 (Word)';

  @override
  String get helpMode1Desc => '通过优质的3D麦克风和大型键盘图标，以最直观的方式开始语言学习。';

  @override
  String get helpMode1Details =>
      '• 语言设置：点击主屏幕上方的语言按钮，查看母语及学习语言，并可更改学习语言。\n• 简单输入：通过中央的大型麦克风或文本输入框立即开始输入。\n• 确认设置：输入完成后，点击右侧的蓝色勾选按钮。将出现详细设置窗口。\n• 详细设置：在弹出的对话框中，可以指定保存的数据集、注释（备忘录）和标签。\n• 立即翻译：设置完成后，点击绿色翻译按钮，AI 将立即进行翻译。\n• 自动搜索：输入时实时检测并显示相似的现有翻译。\n• 听音与保存：点击翻译结果下方的扬声器图标听发音，点击“保存数据”添加到学习列表。';

  @override
  String get helpMode2Desc => '复习已保存的句子，自动隐藏译文并跟踪复习次数。';

  @override
  String get helpMode2Details =>
      '• 选择资料集：使用右上角菜单(⋮)中的“选择学习资料集”或“在线资料室”\n• 卡片翻转：使用“显示/隐藏”确认翻译\n• 听力：点击扬声器图标播放发音\n• 完成学习：勾选标记(V)表示完成学习\n• 删除：长按卡片删除记录\n• 搜索和过滤：支持搜索栏（实时智能搜索）以及标签、首字母过滤';

  @override
  String get helpMode3Desc => '聆听句子并跟读（影子跟读），练习发音。';

  @override
  String get helpMode3Details =>
      '• 选择资料：选择学习包\n• 间隔：使用 [-] [+] 调整等待时间（3秒-60秒）\n• 开始/停止：控制跟读会话\n• 说话：聆听音频并跟读\n• 反馈：准确率评分（0-100）及颜色代码\n• 重试：如果未检测到声音，请使用重试按钮';

  @override
  String get helpNote => '自由记录单词的释义、例句和使用场景等。';

  @override
  String get helpNotebook => '选择保存翻译结果的文件夹。';

  @override
  String get helpTabJson => 'JSON 格式';

  @override
  String get helpTabModes => '模式';

  @override
  String get helpTabQuickStart => '快速入门';

  @override
  String get helpTabTour => '新手引导';

  @override
  String get helpTag => '输入用于日后分类或搜索的关键词。';

  @override
  String get helpTitle => '帮助与指南';

  @override
  String get helpTourDesc => '启动交互式教程以了解主要功能。';

  @override
  String get hide => '隐藏';

  @override
  String get hintNoteExample => '例如：情景说明，同音异义词等';

  @override
  String get hintTagExample => '例如：商务，旅行...';

  @override
  String get homeTab => '翻译';

  @override
  String importAdded(int count) {
    return '添加: $count 项';
  }

  @override
  String get importComplete => '导入完成';

  @override
  String get importDuplicateTitleError => '已存在相同标题的资料。请更改标题后重试。';

  @override
  String importErrorMessage(String error) {
    return '文件导入失败:\\n$error';
  }

  @override
  String get importFailed => '导入失败';

  @override
  String importFile(String fileName) {
    return '文件: $fileName';
  }

  @override
  String importFolderSuccess(num files, num entries) {
    return '已导入 $files 个文件，$entries 个条目。';
  }

  @override
  String get importJsonFile => '导入 JSON 文件';

  @override
  String get importJsonFilePrompt => '请导入 JSON 文件';

  @override
  String importSkipped(int count) {
    return '跳过: $count 项';
  }

  @override
  String get importSourceFile => '单个JSON文件';

  @override
  String get importSourceFolder => '文件夹 (按语言划分的库结构)';

  @override
  String get importSourceTitle => '选择导入来源';

  @override
  String get importSourceZip => 'ZIP文件 (压缩文件夹)';

  @override
  String importTotal(int count) {
    return '总计: $count 项';
  }

  @override
  String get importing => '正在导入...';

  @override
  String get inputContent => '输入内容';

  @override
  String get inputLanguage => '输入语言';

  @override
  String get inputModeTitle => '输入';

  @override
  String intervalSeconds(int seconds) {
    return '间隔: $seconds秒';
  }

  @override
  String get invalidEmail => '请输入有效的电子邮件。';

  @override
  String get kakaoContinue => '使用Kakao继续';

  @override
  String get labelDetails => '详细设置';

  @override
  String get labelFilterMaterial => '资料集';

  @override
  String get labelFilterTag => '标签';

  @override
  String get labelLangCode => '语言代码 (例如：en-US, ko-KR)';

  @override
  String get labelNote => '注释';

  @override
  String get labelPOS => '词性';

  @override
  String get labelSentence => '句子';

  @override
  String get labelSentenceCollection => '句子集';

  @override
  String get labelSentenceType => '句子类型';

  @override
  String get labelShowMemorized => '已完成';

  @override
  String get labelType => '种类：';

  @override
  String get labelWord => '单词';

  @override
  String get labelWordbook => '单词本';

  @override
  String get language => '语言';

  @override
  String get languageSettings => '语言设置';

  @override
  String get languageSettingsTitle => '语言设定';

  @override
  String get libTitleFirstMeeting => '初次见面';

  @override
  String get libTitleGreetings1 => '问候 1';

  @override
  String get libTitleNouns1 => '名词 1';

  @override
  String get libTitleVerbs1 => '动词 1';

  @override
  String get listen => '收听';

  @override
  String get listening => '正在聆听...';

  @override
  String get location => '位置';

  @override
  String get login => '登录';

  @override
  String get logout => '登出';

  @override
  String get logoutConfirmMessage => '确定要从当前设备登出吗？';

  @override
  String get logoutConfirmTitle => '登出';

  @override
  String get male => '男性';

  @override
  String get manual => '手动输入';

  @override
  String get markAsStudied => '标记为已学习';

  @override
  String get materialInfo => '资料信息';

  @override
  String get menuDeviceImport => '从设备导入资料';

  @override
  String get menuHelp => '帮助';

  @override
  String get menuLanguageSettings => '语言设置';

  @override
  String get menuOnlineLibrary => '在线资料库';

  @override
  String get menuSelectMaterialSet => '选择学习资料集';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => '使用方法教程';

  @override
  String get menuWebDownload => '使用说明书';

  @override
  String get metadataDialogTitle => '详细分类';

  @override
  String get metadataFormType => '语法形式';

  @override
  String get metadataRootWord => '原型 (Root Word)';

  @override
  String get micButtonTooltip => '开始语音识别';

  @override
  String mode1SelectedMaterial(Object name) {
    return '当前选择的材料集: $name';
  }

  @override
  String get mode2Title => '复习';

  @override
  String get mode3Next => '下一个';

  @override
  String get mode3Start => '开始';

  @override
  String get mode3Stop => '停止';

  @override
  String get mode3TryAgain => '重试';

  @override
  String get mySentenceCollection => '我的句子集';

  @override
  String get myWordbook => '我的单词本';

  @override
  String get neutral => '中性';

  @override
  String get newNotebookTitle => '新笔记本名称';

  @override
  String get newSubjectName => '新词汇/句子集标题';

  @override
  String get next => '下一步';

  @override
  String get noDataForLanguage => '本地数据库中没有您所选语言的学习资料。请下载资料或选择其他语言。';

  @override
  String get noMaterialsInCategory => '此类别中没有资料。';

  @override
  String get noRecords => '所选语言没有学习记录';

  @override
  String get noStudyMaterial => '没有学习资料。';

  @override
  String get noTextToPlay => '没有可播放的文本';

  @override
  String get noTranslationToSave => '没有可保存的翻译';

  @override
  String get noVoiceDetected => '未检测到声音';

  @override
  String get notSelected => '- 未选择 -';

  @override
  String get noteGuidance => '输入额外详细信息以获得更准确翻译的地方';

  @override
  String get onlineLibraryCheckInternet => '请检查网络连接或稍后重试。';

  @override
  String get onlineLibraryLoadFailed => '加载资料失败。';

  @override
  String get onlineLibraryNoMaterials => '没有资料。';

  @override
  String get openSettings => '打开设置';

  @override
  String get password => '密码';

  @override
  String get passwordTooShort => '密码必须至少为 6 个字符。';

  @override
  String get perfect => '完美！';

  @override
  String get pickGallery => '从相册选择';

  @override
  String get playAgain => '再玩一次';

  @override
  String playbackFailed(String error) {
    return '播放失败: $error';
  }

  @override
  String get playing => '正在播放...';

  @override
  String get posAdjective => '形容词';

  @override
  String get posAdverb => '副词';

  @override
  String get posArticle => '冠词';

  @override
  String get posConjunction => '连词';

  @override
  String get posInterjection => '感叹词';

  @override
  String get posNoun => '名词';

  @override
  String get posParticle => '助词';

  @override
  String get posPreposition => '介词/助词';

  @override
  String get posPronoun => '代词';

  @override
  String get posVerb => '动词';

  @override
  String get practiceModeTitle => '练习';

  @override
  String get practiceWordsOnly => '仅练习单词';

  @override
  String get processing => '处理中...';

  @override
  String progress(int current, int total) {
    return '进度: $current / $total';
  }

  @override
  String get quickStartStep1Desc => '请先在“菜单 > 语言设置”中指定你的语言和学习语言。';

  @override
  String get quickStartStep1Title => '1. 设置语言';

  @override
  String get quickStartStep2Desc => '按照“输入（麦克风/键盘）-> 翻译 -> 保存”的顺序创建你自己的学习卡。';

  @override
  String get quickStartStep2Title => '2. 基本流程';

  @override
  String get quickStartStep3Desc => '通过聊天进行练习，并在发音练习标签中查看文本并直接发音练习。';

  @override
  String get quickStartStep3Title => '3. 模式活用';

  @override
  String recentNItems(int count) {
    return '查看最近创建的 $count 个';
  }

  @override
  String recognitionFailed(String error) {
    return '语音识别失败: $error';
  }

  @override
  String get recognized => '识别完成';

  @override
  String get recognizedText => '识别出的发音：';

  @override
  String get recordDeleted => '记录已删除';

  @override
  String get refresh => '刷新';

  @override
  String get requestTranslation => '请求翻译';

  @override
  String get reset => '重置';

  @override
  String get resetPracticeHistory => '重置练习记录';

  @override
  String get retry => '重试？';

  @override
  String get reviewAll => '全部复习';

  @override
  String reviewCount(int count) {
    return '复习 $count 次';
  }

  @override
  String get reviewModeTitle => '复习';

  @override
  String get save => '保存';

  @override
  String get saveAsSentence => '保存为句子';

  @override
  String get saveAsWord => '保存为单词';

  @override
  String get saveData => '保存数据';

  @override
  String saveFailed(String error) {
    return '保存失败: $error';
  }

  @override
  String get saveToHistory => '保存到扫描历史';

  @override
  String get saveTranslationsFromSearch => '在搜索模式下保存翻译';

  @override
  String get saved => '已保存';

  @override
  String get saving => '正在保存...';

  @override
  String get scanInstructions => '选择要扫描的图像';

  @override
  String get scanNotSupported => '此语言不支持扫描功能。OCR目前仅支持拉丁文、中文、梵文（印地语等）、日文和韩文字符。';

  @override
  String get scanLabel => '扫描';

  @override
  String score(String score) {
    return '准确率: $score%';
  }

  @override
  String get scoreLabel => '得分';

  @override
  String get search => '搜索';

  @override
  String get searchConditions => '搜索条件';

  @override
  String get searchSentenceHint => '搜索句子...';

  @override
  String get searchWordHint => '搜索单词...';

  @override
  String get sectionSentence => '句子部分';

  @override
  String get sectionSentences => '句子';

  @override
  String get sectionWord => '单词部分';

  @override
  String get sectionWords => '单词';

  @override
  String get selectExistingSubject => '选择现有标题';

  @override
  String get selectMaterialPrompt => '请选择学习资料';

  @override
  String get selectMaterialSet => '选择学习资料集';

  @override
  String get selectPOS => '选择词性';

  @override
  String get selectStudyMaterial => '选择学习资料';

  @override
  String get sentence => '句子';

  @override
  String get signUp => '注册';

  @override
  String get simplifiedGuidance => '将日常对话瞬间翻译成外语！Talkie会记录您的语言生活。';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get startTutorial => '开始教程';

  @override
  String get startsWith => '起始字符';

  @override
  String get statusCheckEmail => '请检查您的邮箱，完成验证。';

  @override
  String statusDownloading(String name) {
    return '正在下载: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return '导入失败: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$name 导入完成';
  }

  @override
  String statusLoginFailed(String error) {
    return '登录失败: $error';
  }

  @override
  String get statusLoginSuccess => '登录成功。';

  @override
  String get statusLogoutSuccess => '已登出。';

  @override
  String statusRequestFailed(String error) {
    return '翻译请求失败: $error';
  }

  @override
  String get statusRequestSuccess => '翻译请求已完成。';

  @override
  String get stopPractice => '停止练习';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return '您选择的材料当前不支持您设置的学习语言（$targetLang），因此无法保存到本地。是否请求翻译？';
  }

  @override
  String get studyLangNotFoundTitle => '学习语言不支持';

  @override
  String get styleFormal => '敬语';

  @override
  String get styleInformal => '非敬语';

  @override
  String get stylePolite => '客气';

  @override
  String get styleSlang => '俚语/俗语';

  @override
  String get swapLanguages => '切换语言';

  @override
  String get syncingData => '正在同步数据...';

  @override
  String tabReview(int count) {
    return '复习 ($count)';
  }

  @override
  String get tabSentence => '句子';

  @override
  String get tabSpeaking => '口语';

  @override
  String tabStudyMaterial(int count) {
    return '学习资料 ($count)';
  }

  @override
  String get tabWord => '单词';

  @override
  String get tagFormal => '敬语';

  @override
  String get tagSelection => '标签选择';

  @override
  String get targetLanguage => '目标语言';

  @override
  String get targetLanguageFilter => '目标语言筛选:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => '答案显示前用于思考的时间。';

  @override
  String get thinkingTimeInterval => '播放延迟';

  @override
  String get timeUp => '时间到！';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => '标题标签 (资料集)';

  @override
  String get tooltipDecrease => '减少';

  @override
  String get tooltipIncrease => '增加';

  @override
  String get tooltipSearch => '搜索';

  @override
  String get tooltipSettingsConfirm => '确认设置';

  @override
  String get tooltipSpeaking => '口语';

  @override
  String get tooltipStudyReview => '学习+复习';

  @override
  String totalRecords(int count) {
    return '总共 $count 条记录 (查看全部)';
  }

  @override
  String get translate => '翻译';

  @override
  String get translateNow => '立即翻译';

  @override
  String get translating => '正在翻译...';

  @override
  String get translation => '翻译';

  @override
  String get translationComplete => '翻译完成 (需保存)';

  @override
  String translationFailed(String error) {
    return '翻译失败: $error';
  }

  @override
  String get translationLanguage => '翻译语言';

  @override
  String get translationLimitExceeded => '超出翻译限额';

  @override
  String get translationLimitMessage => '已用完每日免费翻译 (5次)。\\n\\n观看广告以立即补充 5 次吗？';

  @override
  String get translationLoaded => '已加载保存的翻译';

  @override
  String get translationRefilled => '翻译次数已补充 5 次！';

  @override
  String get translationResult => '翻译结果';

  @override
  String get translationResultHint => '翻译结果 - 可修改';

  @override
  String get tryAgain => '再试一次';

  @override
  String get ttsInstallGuide => '请在安卓设置 > Google TTS 中安装相应的语言数据。';

  @override
  String get ttsMissing => '您的设备未安装此语言的语音引擎。';

  @override
  String get ttsUnsupportedNatively => '此设备的默认设置不支持此语言的语音输出。';

  @override
  String get tutorialContextDesc => '添加上下文（例如：早上）以区分相似的句子。';

  @override
  String get tutorialContextTitle => '上下文标签';

  @override
  String get tutorialLangSettingsDesc => '设置要翻译的源语言和目标语言。';

  @override
  String get tutorialLangSettingsTitle => '语言设置';

  @override
  String get tutorialM1ToggleDesc => '在这里切换单词和句子模式。';

  @override
  String get tutorialM1ToggleTitle => '单词/句子模式';

  @override
  String get tutorialM2DropdownDesc => '选择学习资料。';

  @override
  String get tutorialM2ImportDesc => '从设备文件夹导入JSON文件。';

  @override
  String get tutorialM2ListDesc => '查看已保存的卡片并翻转查看答案。 (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => '学习列表';

  @override
  String get tutorialM2SearchDesc => '搜索已保存的单词和句子以快速找到它们。';

  @override
  String get tutorialM2SelectDesc => '选择学习资料或切换到“复习全部”。';

  @override
  String get tutorialM2SelectTitle => '选择与筛选';

  @override
  String get tutorialM3IntervalDesc => '调整句子之间的等待时间。';

  @override
  String get tutorialM3IntervalTitle => '间隔';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => '选择用于口语练习的资料集。';

  @override
  String get tutorialM3SelectTitle => '选择资料';

  @override
  String get tutorialM3StartDesc => '点击播放开始聆听和跟读。';

  @override
  String get tutorialM3StartTitle => '开始练习';

  @override
  String get tutorialM3WordsDesc => '勾选后只练习保存的单词。';

  @override
  String get tutorialM3WordsTitle => '单词练习';

  @override
  String get tutorialMicDesc => '点击麦克风按钮开始语音输入。';

  @override
  String get tutorialMicTitle => '语音输入';

  @override
  String get tutorialSaveDesc => '将翻译保存到学习记录。';

  @override
  String get tutorialSaveTitle => '保存';

  @override
  String get tutorialSwapDesc => '我用我正在学习的语言替换我的母语。';

  @override
  String get tutorialTabDesc => '您可以在这里选择所需的学习模式。';

  @override
  String get tutorialTapToContinue => '点击继续';

  @override
  String get tutorialTransDesc => '点击此处翻译您的文本。';

  @override
  String get tutorialTransTitle => '翻译';

  @override
  String get typeExclamation => '感叹句';

  @override
  String get typeIdiom => '惯用语';

  @override
  String get typeImperative => '祈使句';

  @override
  String get typeProverb => '谚语/格言';

  @override
  String get typeQuestion => '疑问句';

  @override
  String get typeStatement => '陈述句';

  @override
  String get usageLimitTitle => '已达上限';

  @override
  String get useExistingText => '使用现有';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => '查看在线指南';

  @override
  String get voluntaryTranslations => '自愿翻译';

  @override
  String get watchAdAndRefill => '观看广告并补充 (+5次)';

  @override
  String get welcomeButton => '开始使用';

  @override
  String get welcomeDesc =>
      '欢迎来到Talkie！我们以100%的完整性支持全球80多种语言，并通过全新的优质3D设计和优化的性能，为您带来完美的学习体验。';

  @override
  String get welcomeTitle => '欢迎使用 Talkie!';

  @override
  String get word => '单词';

  @override
  String get wordDefenseDesc => '在敌人到达之前说出单词来防御基地。';

  @override
  String get wordDefenseTitle => '单词防御';

  @override
  String get wordModeLabel => '单词模式';

  @override
  String get yourPronunciation => '你的发音';
}

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get accuracy => '准确率';

  @override
  String get adLoading => '正在加载广告。请稍后重试。';

  @override
  String get add => '添加';

  @override
  String get addNew => '新增';

  @override
  String get addNewSubject => '添加新标题';

  @override
  String get addTagHint => '添加标签...';

  @override
  String get alreadyHaveAccount => '已有账号？';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => '自动播放';

  @override
  String get basic => '基本';

  @override
  String get basicDefault => '基本';

  @override
  String get basicMaterialRepository => '基本语句/单词库';

  @override
  String get basicSentenceRepository => '基础句库';

  @override
  String get basicSentences => '基础句库';

  @override
  String get basicWordRepository => '基础词汇库';

  @override
  String get basicWords => '基础词库';

  @override
  String get cancel => '取消';

  @override
  String get caseObject => '宾格';

  @override
  String get casePossessive => '所有格';

  @override
  String get casePossessivePronoun => '所有格代词';

  @override
  String get caseReflexive => '反身代词';

  @override
  String get caseSubject => '主格';

  @override
  String get checking => '正在检查...';

  @override
  String get clearAll => '全部清除';

  @override
  String get confirm => '确认';

  @override
  String get confirmDelete => '确定要删除这条学习记录吗？';

  @override
  String get contextTagHint => '为了方便以后区分，请描述情景';

  @override
  String get contextTagLabel => '上下文/情景 (可选) - 例如: 早上问候，敬语';

  @override
  String get copiedToClipboard => '已复制到剪贴板！';

  @override
  String get copy => '复制';

  @override
  String get correctAnswer => '正确答案';

  @override
  String get createNew => '新建条目';

  @override
  String get currentLocation => '当前位置';

  @override
  String get currentMaterialLabel => '当前选择的资料集：';

  @override
  String get delete => '删除';

  @override
  String deleteFailed(String error) {
    return '删除失败: $error';
  }

  @override
  String get deleteRecord => '删除记录';

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => '没有账号？';

  @override
  String get email => '电子邮件';

  @override
  String get emailAlreadyInUse => '此邮箱已被注册，请直接登录或找回密码。';

  @override
  String get enterNameHint => '请输入名称';

  @override
  String get enterNewSubjectName => '输入新标题';

  @override
  String get enterSentenceHint => '输入句子...';

  @override
  String get enterTextHint => '输入要翻译的文本';

  @override
  String get enterTextToTranslate => '请输入要翻译的文本';

  @override
  String get enterWordHint => '输入单词...';

  @override
  String get error => '错误';

  @override
  String get errorHateSpeech => '包含仇恨言论，无法翻译。';

  @override
  String get errorOtherSafety => '由于 AI 安全策略，翻译被拒绝。';

  @override
  String get errorProfanity => '包含不雅内容，无法翻译。';

  @override
  String get errorSelectCategory => '请先选择单词或句子！';

  @override
  String get errorSexualContent => '包含性暗示内容，无法翻译。';

  @override
  String get errors => '错误:';

  @override
  String get extractedText => '识别的文本';

  @override
  String get female => '女性';

  @override
  String get file => '文件:';

  @override
  String get filterAll => '全部';

  @override
  String get flip => '翻转';

  @override
  String get formComparative => '比较级';

  @override
  String get formInfinitive => '原形/现在形';

  @override
  String get formPast => '过去式';

  @override
  String get formPastParticiple => '过去分词';

  @override
  String get formPlural => '复数';

  @override
  String get formPositive => '原级';

  @override
  String get formPresent => '现在式';

  @override
  String get formPresentParticiple => '现在分词 (ing)';

  @override
  String get formSingular => '单数';

  @override
  String get formSuperlative => '最高级';

  @override
  String get formThirdPersonSingular => '第三人称单数';

  @override
  String get gameModeDesc => '选择要练习的游戏模式';

  @override
  String get gameModeTitle => '游戏模式';

  @override
  String get gameOver => '游戏结束';

  @override
  String get gender => '性别';

  @override
  String get generalTags => '通用标签';

  @override
  String get getMaterials => '获取资料';

  @override
  String get good => '不错';

  @override
  String get googleContinue => '使用 Google 账号继续';

  @override
  String get helpJsonDesc => '要在模式 3 中导入学习资料，请创建具有以下结构的 JSON 文件：';

  @override
  String get helpJsonTypeSentence => '句子（Sentence）';

  @override
  String get helpJsonTypeWord => '单词（Word）';

  @override
  String get helpMode1Desc => '通过高级3D麦克风和大尺寸键盘图标，以最直观的方式开始语言学习。';

  @override
  String get helpMode1Details =>
      '• 语言设置：点击主屏幕上方的语言按钮，查看母语及学习语言，并可更改学习语言。\n• 简单输入：通过中央的大型麦克风或文本输入框立即开始输入。\n• 确认设置：输入完成后，点击右侧的蓝色勾选按钮。将出现详细设置窗口。\n• 详细设置：在弹出的对话框中，可以指定保存的数据集、注释（备忘录）和标签。\n• 立即翻译：设置完成后，点击绿色翻译按钮，AI 将立即进行翻译。\n• 自动搜索：输入时实时检测并显示相似的现有翻译。\n• 听音与保存：点击翻译结果下方的扬声器图标听发音，点击“保存数据”添加到学习列表。';

  @override
  String get helpMode2Desc => '复习已保存的句子，自动隐藏译文并跟踪复习次数。';

  @override
  String get helpMode2Details =>
      '• 选择资料集：使用右上角菜单(⋮)中的“选择学习资料集”或“在线资料库”\n• 卡片翻转：使用“显示/隐藏”来确认翻译\n• 听力：点击扬声器图标播放发音\n• 完成学习：使用复选标记 (V) 完成学习处理\n• 删除：长按卡片删除记录\n• 搜索和筛选：支持搜索栏（实时智能搜索）以及标签、首字母筛选';

  @override
  String get helpMode3Desc => '听句子并跟读（影子跟读），练习发音。';

  @override
  String get helpMode3Details =>
      '• 选择资料：选择学习包\n• 间隔：使用 [-] [+] 调整等待时间（3秒-60秒）\n• 开始/停止：控制跟读会话\n• 说话：聆听音频并跟读\n• 反馈：准确率评分（0-100）及颜色代码\n• 重试：如果未检测到声音，请使用重试按钮';

  @override
  String get helpNote => '自由记录单词的含义、例句、情景等。';

  @override
  String get helpNotebook => '选择用于保存翻译结果的文件夹。';

  @override
  String get helpTabJson => 'JSON 格式';

  @override
  String get helpTabModes => '模式';

  @override
  String get helpTabQuickStart => '快速开始';

  @override
  String get helpTabTour => '新手引导';

  @override
  String get helpTag => '输入用于日后分类或搜索的关键词。';

  @override
  String get helpTitle => '帮助与指南';

  @override
  String get helpTourDesc =>
      '开始教程后，**高亮圆圈**将引导您了解主要功能。\n(例如：当**高亮圆圈**指向学习卡片时，长按可将其删除。)';

  @override
  String get hide => '隐藏';

  @override
  String get hintNoteExample => '例：情景说明、同音异义词等';

  @override
  String get hintTagExample => '例：商务、旅行...';

  @override
  String get homeTab => '翻译';

  @override
  String importAdded(int count) {
    return '添加: $count 项';
  }

  @override
  String get importComplete => '导入完成';

  @override
  String get importDuplicateTitleError => '已存在相同标题的资料。请更改标题后重试。';

  @override
  String importErrorMessage(String error) {
    return '文件导入失败:\\n$error';
  }

  @override
  String get importFailed => '导入失败';

  @override
  String importFile(String fileName) {
    return '文件: $fileName';
  }

  @override
  String importFolderSuccess(num files, num entries) {
    return '已导入 $files 个文件，$entries 个条目。';
  }

  @override
  String get importJsonFile => '导入 JSON 文件';

  @override
  String get importJsonFilePrompt => '请导入 JSON 文件';

  @override
  String importSkipped(int count) {
    return '跳过: $count 项';
  }

  @override
  String get importSourceFile => '单个 JSON 文件';

  @override
  String get importSourceFolder => '文件夹（按语言库结构）';

  @override
  String get importSourceTitle => '选择导入源';

  @override
  String get importSourceZip => 'ZIP 文件（压缩文件夹）';

  @override
  String importTotal(int count) {
    return '总计: $count 项';
  }

  @override
  String get importing => '正在导入...';

  @override
  String get inputContent => '输入内容';

  @override
  String get inputLanguage => '输入语言';

  @override
  String get inputModeTitle => '输入';

  @override
  String intervalSeconds(int seconds) {
    return '间隔: $seconds秒';
  }

  @override
  String get invalidEmail => '请输入有效的电子邮件。';

  @override
  String get kakaoContinue => '使用Kakao继续';

  @override
  String get labelDetails => '详细设置';

  @override
  String get labelFilterMaterial => '资料集';

  @override
  String get labelFilterTag => '标签';

  @override
  String get labelLangCode => '语言代码 (例: en-US, ko-KR)';

  @override
  String get labelNote => '注释';

  @override
  String get labelPOS => '词性';

  @override
  String get labelSentence => '句子';

  @override
  String get labelSentenceCollection => '句子集';

  @override
  String get labelSentenceType => '句子类型';

  @override
  String get labelShowMemorized => '已完成';

  @override
  String get labelType => '类型：';

  @override
  String get labelWord => '单词';

  @override
  String get labelWordbook => '单词本';

  @override
  String get language => '语言';

  @override
  String get languageSettings => '语言设置';

  @override
  String get languageSettingsTitle => '语言设置';

  @override
  String get libTitleFirstMeeting => '初次见面';

  @override
  String get libTitleGreetings1 => '问候 1';

  @override
  String get libTitleNouns1 => '名词 1';

  @override
  String get libTitleVerbs1 => '动词 1';

  @override
  String get listen => '收听';

  @override
  String get listening => '正在聆听...';

  @override
  String get location => '位置';

  @override
  String get login => '登录';

  @override
  String get logout => '退出登录';

  @override
  String get logoutConfirmMessage => '确定要从当前设备退出登录吗？';

  @override
  String get logoutConfirmTitle => '退出登录';

  @override
  String get male => '男性';

  @override
  String get manual => '手动输入';

  @override
  String get markAsStudied => '标记为已学习';

  @override
  String get materialInfo => '资料信息';

  @override
  String get menuDeviceImport => '从设备导入资料';

  @override
  String get menuHelp => '帮助';

  @override
  String get menuLanguageSettings => '语言设置';

  @override
  String get menuOnlineLibrary => '在线资料库';

  @override
  String get menuSelectMaterialSet => '选择学习资料';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => '使用教程';

  @override
  String get menuWebDownload => '使用说明书';

  @override
  String get metadataDialogTitle => '详细分类';

  @override
  String get metadataFormType => '语法形式';

  @override
  String get metadataRootWord => '词根 (Root Word)';

  @override
  String get micButtonTooltip => '开始语音识别';

  @override
  String mode1SelectedMaterial(Object name) {
    return '当前选择的资料集: $name';
  }

  @override
  String get mode2Title => '复习';

  @override
  String get mode3Next => '下一个';

  @override
  String get mode3Start => '开始';

  @override
  String get mode3Stop => '停止';

  @override
  String get mode3TryAgain => '重试';

  @override
  String get mySentenceCollection => '我的句子集';

  @override
  String get myWordbook => '我的词汇本';

  @override
  String get neutral => '中性';

  @override
  String get newNotebookTitle => '新笔记本名称';

  @override
  String get newSubjectName => '新建词汇本/句子集标题';

  @override
  String get next => '下一个';

  @override
  String get noDataForLanguage => '本地数据库中没有您所选语言的学习资料。请下载资料或选择其他语言。';

  @override
  String get noMaterialsInCategory => '此类别下没有资料。';

  @override
  String get noRecords => '所选语言没有学习记录';

  @override
  String get noStudyMaterial => '没有学习资料。';

  @override
  String get noTextToPlay => '没有可播放的文本';

  @override
  String get noTranslationToSave => '没有可保存的翻译';

  @override
  String get noVoiceDetected => '未检测到声音';

  @override
  String get notSelected => '- 未选择 -';

  @override
  String get noteGuidance => '输入额外详细信息以获得更准确翻译的地方';

  @override
  String get onlineLibraryCheckInternet => '请检查网络连接，或稍后重试。';

  @override
  String get onlineLibraryLoadFailed => '加载资料失败。';

  @override
  String get onlineLibraryNoMaterials => '没有资料。';

  @override
  String get openSettings => '打开设置';

  @override
  String get password => '密码';

  @override
  String get passwordTooShort => '密码必须至少为 6 个字符。';

  @override
  String get perfect => '完美！';

  @override
  String get pickGallery => '从相册选择';

  @override
  String get playAgain => '再玩一次';

  @override
  String playbackFailed(String error) {
    return '播放失败: $error';
  }

  @override
  String get playing => '正在播放...';

  @override
  String get posAdjective => '形容词';

  @override
  String get posAdverb => '副词';

  @override
  String get posArticle => '冠词';

  @override
  String get posConjunction => '连词';

  @override
  String get posInterjection => '感叹词';

  @override
  String get posNoun => '名词';

  @override
  String get posParticle => '助词';

  @override
  String get posPreposition => '介词/助词';

  @override
  String get posPronoun => '代词';

  @override
  String get posVerb => '动词';

  @override
  String get practiceModeTitle => '练习';

  @override
  String get practiceWordsOnly => '仅练习单词';

  @override
  String get processing => '处理中...';

  @override
  String progress(int current, int total) {
    return '进度: $current / $total';
  }

  @override
  String get quickStartStep1Desc => '请在“菜单 > 语言设置”中首先指定您的母语和学习语言。';

  @override
  String get quickStartStep1Title => '1. 设置语言';

  @override
  String get quickStartStep2Desc => '按照“输入（麦克风/键盘）-> 翻译 -> 保存”的顺序创建您自己的学习卡片。';

  @override
  String get quickStartStep2Title => '2. 基本流程';

  @override
  String get quickStartStep3Desc => '通过聊天进行练习，并在发音练习选项卡中查看文本并直接发音练习。';

  @override
  String get quickStartStep3Title => '3. 模式活用';

  @override
  String recentNItems(int count) {
    return '查看最近创建的 $count 个项目';
  }

  @override
  String recognitionFailed(String error) {
    return '语音识别失败: $error';
  }

  @override
  String get recognized => '识别完成';

  @override
  String get recognizedText => '识别到的发音：';

  @override
  String get recordDeleted => '记录已删除';

  @override
  String get refresh => '刷新';

  @override
  String get requestTranslation => '请求翻译';

  @override
  String get reset => '重置';

  @override
  String get resetPracticeHistory => '重置练习记录';

  @override
  String get retry => '重试？';

  @override
  String get reviewAll => '全部复习';

  @override
  String reviewCount(int count) {
    return '复习 $count 次';
  }

  @override
  String get reviewModeTitle => '复习';

  @override
  String get save => '保存';

  @override
  String get saveAsSentence => '保存为句子';

  @override
  String get saveAsWord => '保存为单词';

  @override
  String get saveData => '保存数据';

  @override
  String saveFailed(String error) {
    return '保存失败: $error';
  }

  @override
  String get saveToHistory => '保存到扫描历史记录';

  @override
  String get saveTranslationsFromSearch => '在搜索模式下保存翻译';

  @override
  String get saved => '已保存';

  @override
  String get saving => '正在保存...';

  @override
  String get scanInstructions => '选择要扫描的图像';

  @override
  String get scanNotSupported => '此语言不支持扫描功能。OCR 目前仅支持拉丁文、中文、梵文（印地语等）、日文和韩文字符。';

  @override
  String get scanLabel => '扫描';

  @override
  String score(String score) {
    return '准确率: $score%';
  }

  @override
  String get scoreLabel => '分数';

  @override
  String get search => '搜索';

  @override
  String get searchConditions => '搜索条件';

  @override
  String get searchSentenceHint => '搜索句子...';

  @override
  String get searchWordHint => '搜索单词...';

  @override
  String get sectionSentence => '句子部分';

  @override
  String get sectionSentences => '句子';

  @override
  String get sectionWord => '文字部分';

  @override
  String get sectionWords => '单词';

  @override
  String get selectExistingSubject => '选择现有标题';

  @override
  String get selectMaterialPrompt => '请选择学习资料';

  @override
  String get selectMaterialSet => '选择学习资料集';

  @override
  String get selectPOS => '选择词性';

  @override
  String get selectStudyMaterial => '选择学习资料';

  @override
  String get sentence => '句子';

  @override
  String get signUp => '注册';

  @override
  String get simplifiedGuidance => '将日常对话瞬间转换为外语！Talkie会记录您的语言生活。';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get startTutorial => '开始教程';

  @override
  String get startsWith => '起始字符';

  @override
  String get statusCheckEmail => '请验证您的电子邮件以完成身份验证。';

  @override
  String statusDownloading(String name) {
    return '下载中: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return '导入失败: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$name 导入完成';
  }

  @override
  String statusLoginFailed(String error) {
    return '登录失败: $error';
  }

  @override
  String get statusLoginSuccess => '登录成功。';

  @override
  String get statusLogoutSuccess => '已退出登录。';

  @override
  String statusRequestFailed(String error) {
    return '翻译请求失败: $error';
  }

  @override
  String get statusRequestSuccess => '翻译请求已完成。';

  @override
  String get stopPractice => '停止练习';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return '您选择的资料目前不支持您设置的学习语言（$targetLang），因此无法保存到本地。是否请求翻译？';
  }

  @override
  String get studyLangNotFoundTitle => '不支持学习语言';

  @override
  String get styleFormal => '敬语';

  @override
  String get styleInformal => '非敬语';

  @override
  String get stylePolite => '礼貌';

  @override
  String get styleSlang => '俚语/俗语';

  @override
  String get swapLanguages => '切换语言';

  @override
  String get syncingData => '数据同步中...';

  @override
  String tabReview(int count) {
    return '复习 ($count)';
  }

  @override
  String get tabSentence => '句子';

  @override
  String get tabSpeaking => '口语';

  @override
  String tabStudyMaterial(int count) {
    return '学习资料 ($count)';
  }

  @override
  String get tabWord => '单词';

  @override
  String get tagFormal => '敬语';

  @override
  String get tagSelection => '选择标签';

  @override
  String get targetLanguage => '目标语言';

  @override
  String get targetLanguageFilter => '目标语言筛选:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => '在显示答案之前，给自己一些思考时间。';

  @override
  String get thinkingTimeInterval => '播放延迟';

  @override
  String get timeUp => '时间到！';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => '标题标签（资料集）';

  @override
  String get tooltipDecrease => '减少';

  @override
  String get tooltipIncrease => '增加';

  @override
  String get tooltipSearch => '搜索';

  @override
  String get tooltipSettingsConfirm => '确认设置';

  @override
  String get tooltipSpeaking => '口语';

  @override
  String get tooltipStudyReview => '学习+复习';

  @override
  String totalRecords(int count) {
    return '总共 $count 条记录（查看全部）';
  }

  @override
  String get translate => '翻译';

  @override
  String get translateNow => '立即翻译';

  @override
  String get translating => '正在翻译...';

  @override
  String get translation => '翻译';

  @override
  String get translationComplete => '翻译完成 (需保存)';

  @override
  String translationFailed(String error) {
    return '翻译失败: $error';
  }

  @override
  String get translationLanguage => '翻译语言';

  @override
  String get translationLimitExceeded => '超出翻译限额';

  @override
  String get translationLimitMessage => '您已用完每日免费翻译 (5 次)。\\n\\n观看广告立即补充 5 次吗？';

  @override
  String get translationLoaded => '已加载保存的翻译';

  @override
  String get translationRefilled => '翻译次数已补充 5 次！';

  @override
  String get translationResult => '翻译结果';

  @override
  String get translationResultHint => '翻译结果 - 可修改';

  @override
  String get tryAgain => '再试一次';

  @override
  String get ttsInstallGuide => '请在安卓设置 > Google 文字转语音中安装相应的语言数据。';

  @override
  String get ttsMissing => '您的设备上未安装此语言的语音引擎。';

  @override
  String get ttsUnsupportedNatively => '此设备的默认设置不支持此语言的语音输出。';

  @override
  String get tutorialContextDesc => '添加上下文（例如：早上）以区分相似的句子。';

  @override
  String get tutorialContextTitle => '上下文标签';

  @override
  String get tutorialLangSettingsDesc => '设置翻译的源语言和目标语言。';

  @override
  String get tutorialLangSettingsTitle => '语言设置';

  @override
  String get tutorialM1ToggleDesc => '在这里切换单词和句子模式。';

  @override
  String get tutorialM1ToggleTitle => '单词/句子模式';

  @override
  String get tutorialM2DropdownDesc => '选择学习资料。';

  @override
  String get tutorialM2ImportDesc => '从设备文件夹导入JSON文件。';

  @override
  String get tutorialM2ListDesc => '查看已保存的卡片并翻转查看答案。(长按删除)';

  @override
  String get tutorialM2ListTitle => '学习列表';

  @override
  String get tutorialM2SearchDesc => '搜索已保存的单词和句子，以便快速查找。';

  @override
  String get tutorialM2SelectDesc => '选择学习资料或切换到“复习全部”。';

  @override
  String get tutorialM2SelectTitle => '选择与筛选';

  @override
  String get tutorialM3IntervalDesc => '调整句子之间的等待时间。';

  @override
  String get tutorialM3IntervalTitle => '间隔';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => '选择用于口语练习的资料集。';

  @override
  String get tutorialM3SelectTitle => '选择资料';

  @override
  String get tutorialM3StartDesc => '点击播放开始聆听和跟读。';

  @override
  String get tutorialM3StartTitle => '开始练习';

  @override
  String get tutorialM3WordsDesc => '勾选后，只练习已保存的单词。';

  @override
  String get tutorialM3WordsTitle => '单词练习';

  @override
  String get tutorialMicDesc => '点击麦克风按钮开始语音输入。';

  @override
  String get tutorialMicTitle => '语音输入';

  @override
  String get tutorialSaveDesc => '将翻译保存到学习记录。';

  @override
  String get tutorialSaveTitle => '保存';

  @override
  String get tutorialSwapDesc => '我用我正在学习的语言替换我的母语。';

  @override
  String get tutorialTabDesc => '您可以在这里选择所需的学习模式。';

  @override
  String get tutorialTapToContinue => '点击继续';

  @override
  String get tutorialTransDesc => '点击此处翻译您的文本。';

  @override
  String get tutorialTransTitle => '翻译';

  @override
  String get typeExclamation => '感叹句';

  @override
  String get typeIdiom => '成语';

  @override
  String get typeImperative => '祈使句';

  @override
  String get typeProverb => '谚语/格言';

  @override
  String get typeQuestion => '疑问句';

  @override
  String get typeStatement => '陈述句';

  @override
  String get usageLimitTitle => '已达用量上限';

  @override
  String get useExistingText => '使用现有';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => '查看在线指南';

  @override
  String get voluntaryTranslations => '自愿翻译';

  @override
  String get watchAdAndRefill => '观看广告并补充 (+5 次)';

  @override
  String get welcomeButton => '开始使用';

  @override
  String get welcomeDesc =>
      '欢迎来到Talkie！我们以100%的完整性支持全球80多种语言，并通过全新的高级3D设计和优化的性能，为您提供完美的学习体验。';

  @override
  String get welcomeTitle => '欢迎使用 Talkie!';

  @override
  String get word => '单词';

  @override
  String get wordDefenseDesc => '在敌人到达之前说出单词，保卫基地。';

  @override
  String get wordDefenseTitle => '单词防御';

  @override
  String get wordModeLabel => '单词模式';

  @override
  String get yourPronunciation => '你的发音';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get accuracy => '準確度';

  @override
  String get adLoading => '正在載入廣告。請稍後重試。';

  @override
  String get add => '新增';

  @override
  String get addNew => '新增';

  @override
  String get addNewSubject => '新增標題';

  @override
  String get addTagHint => '新增標籤...';

  @override
  String get alreadyHaveAccount => '已經有帳號了嗎？';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => '自動播放';

  @override
  String get basic => '基本';

  @override
  String get basicDefault => '基本 (預設)';

  @override
  String get basicMaterialRepository => '基本句子/單字儲存庫';

  @override
  String get basicSentenceRepository => '基礎句庫';

  @override
  String get basicSentences => '基礎句庫';

  @override
  String get basicWordRepository => '基礎詞彙庫';

  @override
  String get basicWords => '基礎詞庫';

  @override
  String get cancel => '取消';

  @override
  String get caseObject => '受格';

  @override
  String get casePossessive => '所有格';

  @override
  String get casePossessivePronoun => '所有代名詞';

  @override
  String get caseReflexive => '反身代名詞';

  @override
  String get caseSubject => '主格';

  @override
  String get checking => '正在檢查...';

  @override
  String get clearAll => '全部清除';

  @override
  String get confirm => '確認';

  @override
  String get confirmDelete => '確定要刪除這條學習記錄嗎？';

  @override
  String get contextTagHint => '請註明情境以便日後區分';

  @override
  String get contextTagLabel => '情境 (可選) - 例如：早安問候、敬語';

  @override
  String get copiedToClipboard => '已複製到剪貼板！';

  @override
  String get copy => '複製';

  @override
  String get correctAnswer => '正確答案';

  @override
  String get createNew => '新建項目';

  @override
  String get currentLocation => '目前位置';

  @override
  String get currentMaterialLabel => '目前選擇的教材：';

  @override
  String get delete => '刪除';

  @override
  String deleteFailed(String error) {
    return '刪除失敗: $error';
  }

  @override
  String get deleteRecord => '刪除記錄';

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => '還沒有帳號嗎？';

  @override
  String get email => '電子郵件';

  @override
  String get emailAlreadyInUse => '此電子郵件已註冊。請登入或使用忘記密碼功能。';

  @override
  String get enterNameHint => '請輸入名稱';

  @override
  String get enterNewSubjectName => '輸入新標題';

  @override
  String get enterSentenceHint => '請輸入句子...';

  @override
  String get enterTextHint => '輸入要翻譯的文字';

  @override
  String get enterTextToTranslate => '請輸入要翻譯的文字';

  @override
  String get enterWordHint => '請輸入單字...';

  @override
  String get error => '錯誤';

  @override
  String get errorHateSpeech => '包含仇恨言論，無法翻譯。';

  @override
  String get errorOtherSafety => '因人工智慧安全政策而拒絕翻譯。';

  @override
  String get errorProfanity => '包含不雅字詞，無法翻譯。';

  @override
  String get errorSelectCategory => '請先選擇單字或句子！';

  @override
  String get errorSexualContent => '包含煽情內容，無法翻譯。';

  @override
  String get errors => '錯誤:';

  @override
  String get extractedText => '辨識文字';

  @override
  String get female => '女性';

  @override
  String get file => '檔案:';

  @override
  String get filterAll => '全部';

  @override
  String get flip => '翻轉';

  @override
  String get formComparative => '比較級';

  @override
  String get formInfinitive => '原形/現在式';

  @override
  String get formPast => '過去式';

  @override
  String get formPastParticiple => '過去分詞';

  @override
  String get formPlural => '複數形';

  @override
  String get formPositive => '原級';

  @override
  String get formPresent => '現在式';

  @override
  String get formPresentParticiple => '現在分詞 (ing)';

  @override
  String get formSingular => '單數';

  @override
  String get formSuperlative => '最高級';

  @override
  String get formThirdPersonSingular => '第三人稱單數';

  @override
  String get gameModeDesc => '選擇要練習的遊戲模式';

  @override
  String get gameModeTitle => '遊戲模式';

  @override
  String get gameOver => '遊戲結束';

  @override
  String get gender => '性別';

  @override
  String get generalTags => '一般標籤';

  @override
  String get getMaterials => '取得資料';

  @override
  String get good => '不錯';

  @override
  String get googleContinue => '使用 Google 帳戶繼續';

  @override
  String get helpJsonDesc => '要在模式 3 中匯入學習資料，請建立具有以下結構的 JSON 檔案：';

  @override
  String get helpJsonTypeSentence => '句子 (Sentence)';

  @override
  String get helpJsonTypeWord => '單字 (Word)';

  @override
  String get helpMode1Desc => '透過頂級 3D 麥克風和大尺寸鍵盤圖示，以最直觀的方式開始語言學習。';

  @override
  String get helpMode1Details =>
      '• 語言設置：點擊主屏幕上方的語言按鈕，查看母語及學習語言，並可更改學習語言。\n• 簡單輸入：透過中央的大型麥克風或文本輸入框立即開始輸入。\n• 確認設置：輸入完成後，點擊右側的藍色勾選按鈕。將出現詳細設置窗口。\n• 詳細設置：在彈出的對話框中，可以指定保存的資料集、注釋（備忘錄）和標籤。\n• 立即翻譯：設置完成後，點擊綠色翻譯按鈕，AI 將立即進行翻譯。\n• 自動搜索：輸入時實時檢測並顯示相似的現有翻譯。\n• 聽音與保存：點擊翻譯結果下方的揚聲器圖標聽發音，點擊「保存數據」添加到學習列表。';

  @override
  String get helpMode2Desc => '複習已儲存的句子，自動隱藏譯文並追蹤複習次數。';

  @override
  String get helpMode2Details =>
      '• 選擇教材：使用右上角選單（⋮）中的「選擇學習教材」或「線上資料庫」\n• 翻轉卡片：使用「顯示/隱藏」來確認翻譯\n• 聆聽：點擊喇叭圖示播放發音\n• 完成學習：勾選（V）標記為已完成學習\n• 刪除：長按卡片以刪除紀錄\n• 搜尋與篩選：支援搜尋欄（即時智慧搜尋）和標籤、首字篩選';

  @override
  String get helpMode3Desc => '聆聽句子並跟讀（模仿），練習發音。';

  @override
  String get helpMode3Details =>
      '• 選擇資料：選擇學習包\n• 間隔：使用 [-] [+] 調整等待時間（3秒-60秒）\n• 開始/停止：控制跟讀會話\n• 說話：聆聽音訊並跟讀\n• 反饋：準確率評分（0-100）及顏色代碼\n• 重試：如果未偵測到聲音，請使用重試按鈕';

  @override
  String get helpNote => '自由記錄單字的意思、例句或情境等。';

  @override
  String get helpNotebook => '選擇儲存翻譯結果的資料夾。';

  @override
  String get helpTabJson => 'JSON 格式';

  @override
  String get helpTabModes => '模式';

  @override
  String get helpTabQuickStart => '快速開始';

  @override
  String get helpTabTour => '導覽';

  @override
  String get helpTag => '輸入關鍵字以便日後分類或搜尋。';

  @override
  String get helpTitle => '幫助與指南';

  @override
  String get helpTourDesc =>
      '開始教學後，**高亮圓圈**將引導您了解主要功能。\n(例如：當**高亮圓圈**指向學習卡片時，長按可將其刪除。)';

  @override
  String get hide => '隱藏';

  @override
  String get hintNoteExample => '例：情境說明、同音異義詞等';

  @override
  String get hintTagExample => '例：商務、旅行...';

  @override
  String get homeTab => '翻譯';

  @override
  String importAdded(int count) {
    return '新增: $count 項';
  }

  @override
  String get importComplete => '匯入完成';

  @override
  String get importDuplicateTitleError => '已存在相同標題的資料。請變更標題後重試。';

  @override
  String importErrorMessage(String error) {
    return '檔案匯入失敗:\\n$error';
  }

  @override
  String get importFailed => '匯入失敗';

  @override
  String importFile(String fileName) {
    return '檔案: $fileName';
  }

  @override
  String importFolderSuccess(num files, num entries) {
    return '已匯入 $files 個檔案、$entries 個項目';
  }

  @override
  String get importJsonFile => '匯入 JSON 檔案';

  @override
  String get importJsonFilePrompt => '請匯入 JSON 檔案';

  @override
  String importSkipped(int count) {
    return '略過: $count 項';
  }

  @override
  String get importSourceFile => '單個 JSON 檔案';

  @override
  String get importSourceFolder => '資料夾 (按語言區分的庫結構)';

  @override
  String get importSourceTitle => '選擇匯入來源';

  @override
  String get importSourceZip => 'ZIP 檔案 (壓縮資料夾)';

  @override
  String importTotal(int count) {
    return '總計: $count 項';
  }

  @override
  String get importing => '正在匯入...';

  @override
  String get inputContent => '輸入內容';

  @override
  String get inputLanguage => '輸入語言';

  @override
  String get inputModeTitle => '輸入';

  @override
  String intervalSeconds(int seconds) {
    return '間隔: $seconds秒';
  }

  @override
  String get invalidEmail => '請輸入有效的電子郵件。';

  @override
  String get kakaoContinue => '以 Kakao 繼續';

  @override
  String get labelDetails => '詳細設定';

  @override
  String get labelFilterMaterial => '資料集';

  @override
  String get labelFilterTag => '標籤';

  @override
  String get labelLangCode => '語言代碼 (例如：en-US, ko-KR)';

  @override
  String get labelNote => '註解';

  @override
  String get labelPOS => '詞性';

  @override
  String get labelSentence => '句子';

  @override
  String get labelSentenceCollection => '句子集';

  @override
  String get labelSentenceType => '句子類型';

  @override
  String get labelShowMemorized => '已完成';

  @override
  String get labelType => '種類：';

  @override
  String get labelWord => '單字';

  @override
  String get labelWordbook => '單字集';

  @override
  String get language => '語言';

  @override
  String get languageSettings => '語言設定';

  @override
  String get languageSettingsTitle => '語言設定';

  @override
  String get libTitleFirstMeeting => '初次見面';

  @override
  String get libTitleGreetings1 => '問候 1';

  @override
  String get libTitleNouns1 => '名詞 1';

  @override
  String get libTitleVerbs1 => '動詞 1';

  @override
  String get listen => '收聽';

  @override
  String get listening => '正在聆聽...';

  @override
  String get location => '位置';

  @override
  String get login => '登入';

  @override
  String get logout => '登出';

  @override
  String get logoutConfirmMessage => '確定要從此裝置登出嗎？';

  @override
  String get logoutConfirmTitle => '登出';

  @override
  String get male => '男性';

  @override
  String get manual => '手動輸入';

  @override
  String get markAsStudied => '標記為已學習';

  @override
  String get materialInfo => '資料資訊';

  @override
  String get menuDeviceImport => '從裝置匯入資料';

  @override
  String get menuHelp => '說明';

  @override
  String get menuLanguageSettings => '語言設定';

  @override
  String get menuOnlineLibrary => '線上資料庫';

  @override
  String get menuSelectMaterialSet => '選擇學習資料';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => '使用教學';

  @override
  String get menuWebDownload => '使用說明書';

  @override
  String get metadataDialogTitle => '詳細分類';

  @override
  String get metadataFormType => '文法形式';

  @override
  String get metadataRootWord => '原形 (Root Word)';

  @override
  String get micButtonTooltip => '開始語音辨識';

  @override
  String mode1SelectedMaterial(Object name) {
    return '目前選擇的教材：$name';
  }

  @override
  String get mode2Title => '複習';

  @override
  String get mode3Next => '下一步';

  @override
  String get mode3Start => '開始';

  @override
  String get mode3Stop => '停止';

  @override
  String get mode3TryAgain => '重試';

  @override
  String get mySentenceCollection => '我的句子收藏';

  @override
  String get myWordbook => '我的單字本';

  @override
  String get neutral => '中性';

  @override
  String get newNotebookTitle => '新筆記本名稱';

  @override
  String get newSubjectName => '新增字彙本/句子集標題';

  @override
  String get next => '下一步';

  @override
  String get noDataForLanguage => '您選擇的語言沒有學習資料在本機資料庫中。請下載資料或選擇其他語言。';

  @override
  String get noMaterialsInCategory => '此類別中沒有資料。';

  @override
  String get noRecords => '所選語言沒有學習記錄';

  @override
  String get noStudyMaterial => '沒有學習資料。';

  @override
  String get noTextToPlay => '沒有可播放的文字';

  @override
  String get noTranslationToSave => '沒有可儲存的翻譯';

  @override
  String get noVoiceDetected => '未偵測到聲音';

  @override
  String get notSelected => '- 未選擇 -';

  @override
  String get noteGuidance => '輸入額外詳細資訊以獲得更準確翻譯的地方';

  @override
  String get onlineLibraryCheckInternet => '請檢查網路連線或稍後重試。';

  @override
  String get onlineLibraryLoadFailed => '載入資料失敗。';

  @override
  String get onlineLibraryNoMaterials => '沒有資料。';

  @override
  String get openSettings => '開啟設定';

  @override
  String get password => '密碼';

  @override
  String get passwordTooShort => '密碼長度必須超過 6 個字元。';

  @override
  String get perfect => '完美！';

  @override
  String get pickGallery => '從相簿選擇';

  @override
  String get playAgain => '再玩一次';

  @override
  String playbackFailed(String error) {
    return '播放失敗: $error';
  }

  @override
  String get playing => '正在播放...';

  @override
  String get posAdjective => '形容詞';

  @override
  String get posAdverb => '副詞';

  @override
  String get posArticle => '冠詞';

  @override
  String get posConjunction => '連接詞';

  @override
  String get posInterjection => '感嘆詞';

  @override
  String get posNoun => '名詞';

  @override
  String get posParticle => '助詞';

  @override
  String get posPreposition => '介系詞/助詞';

  @override
  String get posPronoun => '代名詞';

  @override
  String get posVerb => '動詞';

  @override
  String get practiceModeTitle => '練習';

  @override
  String get practiceWordsOnly => '只練習單字';

  @override
  String get processing => '處理中...';

  @override
  String progress(int current, int total) {
    return '進度: $current / $total';
  }

  @override
  String get quickStartStep1Desc => '請先在「選單 > 語言設定」中指定您的母語和學習語言。';

  @override
  String get quickStartStep1Title => '1. 設定語言';

  @override
  String get quickStartStep2Desc => '按照「輸入 (麥克風/鍵盤) -> 翻譯 -> 儲存」的順序，建立您自己的學習卡。';

  @override
  String get quickStartStep2Title => '2. 基本流程';

  @override
  String get quickStartStep3Desc => '透過聊天進行練習，並在「發音練習」分頁中看著文字直接發音練習。';

  @override
  String get quickStartStep3Title => '3. 模式活用';

  @override
  String recentNItems(int count) {
    return '查看最近 $count 個新增項目';
  }

  @override
  String recognitionFailed(String error) {
    return '語音辨識失敗: $error';
  }

  @override
  String get recognized => '辨識完成';

  @override
  String get recognizedText => '辨識到的發音：';

  @override
  String get recordDeleted => '記錄已刪除';

  @override
  String get refresh => '重新整理';

  @override
  String get requestTranslation => '請求翻譯';

  @override
  String get reset => '重置';

  @override
  String get resetPracticeHistory => '重設練習記錄';

  @override
  String get retry => '重試？';

  @override
  String get reviewAll => '全部複習';

  @override
  String reviewCount(int count) {
    return '複習 $count 次';
  }

  @override
  String get reviewModeTitle => '複習';

  @override
  String get save => '儲存';

  @override
  String get saveAsSentence => '儲存為句子';

  @override
  String get saveAsWord => '儲存為單字';

  @override
  String get saveData => '儲存資料';

  @override
  String saveFailed(String error) {
    return '儲存失敗: $error';
  }

  @override
  String get saveToHistory => '儲存至掃描歷史';

  @override
  String get saveTranslationsFromSearch => '在搜尋模式下儲存翻譯';

  @override
  String get saved => '已儲存';

  @override
  String get saving => '正在儲存...';

  @override
  String get scanInstructions => '請選擇要掃描的圖片';

  @override
  String get scanNotSupported =>
      '此語言不支援掃描功能。目前 OCR 僅支援拉丁字母、中文、天城文（印地語等）、日文和韓文字元。';

  @override
  String get scanLabel => '掃描';

  @override
  String score(String score) {
    return '準確率: $score%';
  }

  @override
  String get scoreLabel => '分數';

  @override
  String get search => '搜尋';

  @override
  String get searchConditions => '搜尋條件';

  @override
  String get searchSentenceHint => '搜尋句子...';

  @override
  String get searchWordHint => '搜尋單字...';

  @override
  String get sectionSentence => '句子部分';

  @override
  String get sectionSentences => '句子';

  @override
  String get sectionWord => '文字部分';

  @override
  String get sectionWords => '單字';

  @override
  String get selectExistingSubject => '選擇現有標題';

  @override
  String get selectMaterialPrompt => '請選擇學習資料';

  @override
  String get selectMaterialSet => '選擇學習資料集';

  @override
  String get selectPOS => '選擇詞性';

  @override
  String get selectStudyMaterial => '選擇學習資料';

  @override
  String get sentence => '句子';

  @override
  String get signUp => '註冊';

  @override
  String get simplifiedGuidance => '將日常對話瞬間翻譯成外語！ Talkie 將記錄您的語言生活。';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get startTutorial => '開始教學';

  @override
  String get startsWith => '開頭字母';

  @override
  String get statusCheckEmail => '請檢查電子郵件以完成驗證。';

  @override
  String statusDownloading(String name) {
    return '下載中：$name...';
  }

  @override
  String statusImportFailed(String error) {
    return '匯入失敗：$error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$name 匯入完成';
  }

  @override
  String statusLoginFailed(String error) {
    return '登入失敗：$error';
  }

  @override
  String get statusLoginSuccess => '登入成功。';

  @override
  String get statusLogoutSuccess => '已登出。';

  @override
  String statusRequestFailed(String error) {
    return '翻譯請求失敗：$error';
  }

  @override
  String get statusRequestSuccess => '翻譯請求已完成。';

  @override
  String get stopPractice => '停止練習';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return '您選擇的資料目前不支援您設定的學習語言（$targetLang），因此無法儲存到本機。您要請求翻譯嗎？';
  }

  @override
  String get studyLangNotFoundTitle => '學習語言不支援';

  @override
  String get styleFormal => '敬語';

  @override
  String get styleInformal => '半語';

  @override
  String get stylePolite => '客氣';

  @override
  String get styleSlang => '俚語/粗俗語';

  @override
  String get swapLanguages => '交換語言';

  @override
  String get syncingData => '正在同步資料...';

  @override
  String tabReview(int count) {
    return '複習 ($count)';
  }

  @override
  String get tabSentence => '句子';

  @override
  String get tabSpeaking => '口說';

  @override
  String tabStudyMaterial(int count) {
    return '學習資料 ($count)';
  }

  @override
  String get tabWord => '單字';

  @override
  String get tagFormal => '敬語';

  @override
  String get tagSelection => '選擇標籤';

  @override
  String get targetLanguage => '目標語言';

  @override
  String get targetLanguageFilter => '目標語言篩選:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => '在答案揭曉前，給您思考的時間。';

  @override
  String get thinkingTimeInterval => '播放延遲';

  @override
  String get timeUp => '時間到！';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => '標題標籤 (資料夾)';

  @override
  String get tooltipDecrease => '減少';

  @override
  String get tooltipIncrease => '增加';

  @override
  String get tooltipSearch => '搜尋';

  @override
  String get tooltipSettingsConfirm => '確認設定';

  @override
  String get tooltipSpeaking => '口語';

  @override
  String get tooltipStudyReview => '學習+複習';

  @override
  String totalRecords(int count) {
    return '總共 $count 筆記錄 (查看全部)';
  }

  @override
  String get translate => '翻譯';

  @override
  String get translateNow => '立即翻譯';

  @override
  String get translating => '正在翻譯...';

  @override
  String get translation => '翻譯';

  @override
  String get translationComplete => '翻譯完成 (需儲存)';

  @override
  String translationFailed(String error) {
    return '翻譯失敗: $error';
  }

  @override
  String get translationLanguage => '翻譯語言';

  @override
  String get translationLimitExceeded => '已超過翻譯限制';

  @override
  String get translationLimitMessage => '您已用完每日免費翻譯 (5 次)。\n\n要觀看廣告立即補充 5 次嗎？';

  @override
  String get translationLoaded => '已載入儲存的翻譯';

  @override
  String get translationRefilled => '翻譯次數已補充 5 次！';

  @override
  String get translationResult => '翻譯結果';

  @override
  String get translationResultHint => '翻譯結果 - 可修改';

  @override
  String get tryAgain => '再試一次';

  @override
  String get ttsInstallGuide => '請在「Android 設定」>「Google 文字轉語音」中安裝相應的語言資料。';

  @override
  String get ttsMissing => '您的裝置未安裝此語言的語音引擎。';

  @override
  String get ttsUnsupportedNatively => '此裝置的預設設定不支援此語言的語音輸出。';

  @override
  String get tutorialContextDesc => '添加上下文（例如：早上）以區分相似的句子。';

  @override
  String get tutorialContextTitle => '上下文標籤';

  @override
  String get tutorialLangSettingsDesc => '設定翻譯的來源語言和目標語言。';

  @override
  String get tutorialLangSettingsTitle => '語言設定';

  @override
  String get tutorialM1ToggleDesc => '在這裡切換單字和句子模式。';

  @override
  String get tutorialM1ToggleTitle => '單字/句子模式';

  @override
  String get tutorialM2DropdownDesc => '選擇學習資料。';

  @override
  String get tutorialM2ImportDesc => '從裝置資料夾匯入JSON檔案。';

  @override
  String get tutorialM2ListDesc => '查看已儲存的卡片並翻轉查看答案。(長按刪除)';

  @override
  String get tutorialM2ListTitle => '學習列表';

  @override
  String get tutorialM2SearchDesc => '搜尋並快速找到已儲存的單字和句子。';

  @override
  String get tutorialM2SelectDesc => '選擇學習資料或切換到「複習全部」。';

  @override
  String get tutorialM2SelectTitle => '選擇與篩選';

  @override
  String get tutorialM3IntervalDesc => '調整句子之間的等待時間。';

  @override
  String get tutorialM3IntervalTitle => '間隔';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => '選擇用於口說練習的資料集。';

  @override
  String get tutorialM3SelectTitle => '選擇資料';

  @override
  String get tutorialM3StartDesc => '點擊播放開始聆聽和跟讀。';

  @override
  String get tutorialM3StartTitle => '開始練習';

  @override
  String get tutorialM3WordsDesc => '勾選後，只練習已儲存的單字。';

  @override
  String get tutorialM3WordsTitle => '單字練習';

  @override
  String get tutorialMicDesc => '點擊麥克風按鈕開始語音輸入。';

  @override
  String get tutorialMicTitle => '語音輸入';

  @override
  String get tutorialSaveDesc => '將翻譯儲存到學習記錄。';

  @override
  String get tutorialSaveTitle => '儲存';

  @override
  String get tutorialSwapDesc => '我用我正在學習的語言取代我的母語。';

  @override
  String get tutorialTabDesc => '您可以在這裡選擇所需的學習模式。';

  @override
  String get tutorialTapToContinue => '點擊繼續';

  @override
  String get tutorialTransDesc => '點擊此處翻譯您的文字。';

  @override
  String get tutorialTransTitle => '翻譯';

  @override
  String get typeExclamation => '感嘆句';

  @override
  String get typeIdiom => '慣用語';

  @override
  String get typeImperative => '祈使句';

  @override
  String get typeProverb => '諺語/格言';

  @override
  String get typeQuestion => '疑問句';

  @override
  String get typeStatement => '陳述句';

  @override
  String get usageLimitTitle => '已達使用上限';

  @override
  String get useExistingText => '使用現有';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => '查看線上指南';

  @override
  String get voluntaryTranslations => '自願翻譯';

  @override
  String get watchAdAndRefill => '觀看廣告並補充 (+5 次)';

  @override
  String get welcomeButton => '开始使用';

  @override
  String get welcomeDesc =>
      '歡迎使用 Talkie！我們以 100% 的完整性支援全球超過 80 種語言，並透過全新的頂級 3D 設計和最佳化效能，提供完美的學習體驗。';

  @override
  String get welcomeTitle => '欢迎使用 Talkie!';

  @override
  String get word => '單字';

  @override
  String get wordDefenseDesc => '在敵人抵達前說出單字來防禦基地。';

  @override
  String get wordDefenseTitle => '單字防禦';

  @override
  String get wordModeLabel => '單字模式';

  @override
  String get yourPronunciation => '你的發音';
}

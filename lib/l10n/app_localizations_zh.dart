// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get helpTitle => '帮助与指南';

  @override
  String get helpTabModes => '模式';

  @override
  String get helpTabJson => 'JSON 格式';

  @override
  String get helpTabTour => '新手引导';

  @override
  String get helpMode1Desc => '语音识别、翻译并收听结果。';

  @override
  String get helpMode1Details =>
      '• 语音输入：点击麦克风图标开始/停止聆听\n• 文本输入：直接输入文本进行翻译\n• 自动搜索：检测相似的现有句子\n• 翻译：点击按钮立即翻译\n• 收听：点击扬声器图标收听 TTS（原文/译文）\n• 保存：“保存数据”添加到历史记录\n• 清除：重置所有输入';

  @override
  String get helpMode2Desc => '复习已保存的句子，自动隐藏译文并跟踪复习次数。';

  @override
  String get helpMode2Details =>
      '• 选择资料：选择特定资料集或“复习全部”\n• 翻转卡片：使用“显示/隐藏”查看译文\n• 收听：播放特定句子的 TTS\n• 标记已学：勾选 (V) 已完成的项目\n• 删除：长按卡片删除记录\n• 筛选：查看全部或按资料筛选';

  @override
  String get helpMode3Desc => '通过聆听和跟读句子练习口语。';

  @override
  String get helpMode3Details =>
      '• 选择资料：选择学习包\n• 间隔：使用 [-] [+] 调整等待时间（3秒-60秒）\n• 开始/停止：控制跟读会话\n• 说话：聆听音频并跟读\n• 反馈：准确率评分（0-100）及颜色代码\n• 重试：如果未检测到声音，请使用重试按钮';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => '要在模式 3 中导入学习资料，请创建具有以下结构的 JSON 文件：';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc => '启动交互式教程以了解主要功能。';

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
  String get location => '位置';

  @override
  String get partner => 'Partner';

  @override
  String get me => '我';

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
    return '复习 ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return '学习资料 ($count)';
  }

  @override
  String get mode2Title => '复习';

  @override
  String get search => '搜索';

  @override
  String get translate => '翻译';

  @override
  String get listen => '收听';

  @override
  String get saveData => '保存数据';

  @override
  String get saved => '已保存';

  @override
  String get delete => '删除';

  @override
  String get materialInfo => '资料信息';

  @override
  String get cancel => '取消';

  @override
  String get confirm => '确认';

  @override
  String get refresh => '刷新';

  @override
  String studyRecords(int count) {
    return '学习记录 ($count)';
  }

  @override
  String get targetLanguageFilter => '目标语言筛选:';

  @override
  String get noRecords => '所选语言没有学习记录';

  @override
  String get saveTranslationsFromSearch => '在搜索模式下保存翻译';

  @override
  String get flip => '翻转';

  @override
  String get hide => '隐藏';

  @override
  String get deleteRecord => '删除记录';

  @override
  String get confirmDelete => '确定要删除这条学习记录吗？';

  @override
  String get recordDeleted => '记录已删除';

  @override
  String deleteFailed(String error) {
    return '删除失败: $error';
  }

  @override
  String get importJsonFile => '导入 JSON 文件';

  @override
  String get importing => '正在导入...';

  @override
  String get importComplete => '导入完成';

  @override
  String get importFailed => '导入失败';

  @override
  String importFile(String fileName) {
    return '文件: $fileName';
  }

  @override
  String importTotal(int count) {
    return '总计: $count 项';
  }

  @override
  String importAdded(int count) {
    return '添加: $count 项';
  }

  @override
  String importSkipped(int count) {
    return '跳过: $count 项';
  }

  @override
  String get errors => '错误:';

  @override
  String get error => '错误';

  @override
  String importErrorMessage(String error) {
    return '文件导入失败:\\n$error';
  }

  @override
  String get selectStudyMaterial => '选择学习资料';

  @override
  String get subject => '主题:';

  @override
  String get source => '来源:';

  @override
  String get file => '文件:';

  @override
  String progress(int current, int total) {
    return '进度: $current / $total';
  }

  @override
  String get importJsonFilePrompt => '请导入 JSON 文件';

  @override
  String get selectMaterialPrompt => '请选择学习资料';

  @override
  String get studyComplete => '已学习';

  @override
  String get markAsStudied => '标记为已学习';

  @override
  String get listening => '正在聆听...';

  @override
  String get recognized => '识别完成';

  @override
  String recognitionFailed(String error) {
    return '语音识别失败: $error';
  }

  @override
  String get checking => '正在检查...';

  @override
  String get translating => '正在翻译...';

  @override
  String get translationComplete => '翻译完成 (需保存)';

  @override
  String get translationLoaded => '已加载保存的翻译';

  @override
  String translationFailed(String error) {
    return '翻译失败: $error';
  }

  @override
  String get enterTextToTranslate => '请输入要翻译的文本';

  @override
  String get saving => '正在保存...';

  @override
  String get noTranslationToSave => '没有可保存的翻译';

  @override
  String saveFailed(String error) {
    return '保存失败: $error';
  }

  @override
  String get playing => '正在播放...';

  @override
  String get noTextToPlay => '没有可播放的文本';

  @override
  String playbackFailed(String error) {
    return '播放失败: $error';
  }

  @override
  String get sourceLanguage => '源语言';

  @override
  String get targetLanguage => '目标语言';

  @override
  String get similarTextFound => '发现相似文本';

  @override
  String get useExistingText => '使用现有';

  @override
  String get createNew => '新建条目';

  @override
  String reviewCount(int count) {
    return '复习 $count 次';
  }

  @override
  String get tabSpeaking => '口语';

  @override
  String get speakingPractice => '口语练习';

  @override
  String intervalSeconds(int seconds) {
    return '间隔: $seconds秒';
  }

  @override
  String get yourPronunciation => '你的发音';

  @override
  String get correctAnswer => '正确答案';

  @override
  String score(String score) {
    return '准确率: $score%';
  }

  @override
  String get perfect => '完美！';

  @override
  String get good => '不错';

  @override
  String get tryAgain => '再试一次';

  @override
  String get startPractice => '开始练习';

  @override
  String get stopPractice => '停止练习';

  @override
  String get startTutorial => '开始教程';

  @override
  String get tutorialMicTitle => '语音输入';

  @override
  String get tutorialMicDesc => '点击麦克风按钮开始语音输入。';

  @override
  String get tutorialTabDesc => '您可以在这里选择所需的学习模式。';

  @override
  String get tutorialTapToContinue => '点击继续';

  @override
  String get tutorialTransTitle => '翻译';

  @override
  String get tutorialTransDesc => '点击此处翻译您的文本。';

  @override
  String get tutorialSaveTitle => '保存';

  @override
  String get tutorialSaveDesc => '将翻译保存到学习记录。';

  @override
  String get tutorialM2SelectTitle => '选择与筛选';

  @override
  String get tutorialM2SelectDesc => '选择学习资料或切换到“复习全部”。';

  @override
  String get tutorialM2ListTitle => '学习列表';

  @override
  String get tutorialM2ListDesc => '查看已保存的卡片并翻转查看答案。 (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => '选择资料';

  @override
  String get tutorialM3SelectDesc => '选择用于口语练习的资料集。';

  @override
  String get tutorialM3IntervalTitle => '间隔';

  @override
  String get tutorialM3IntervalDesc => '调整句子之间的等待时间。';

  @override
  String get tutorialM3StartTitle => '开始练习';

  @override
  String get tutorialM3StartDesc => '点击播放开始聆听和跟读。';

  @override
  String get startWarning => '警告';

  @override
  String get noVoiceDetected => '未检测到声音';

  @override
  String get tooltipSearch => '搜索';

  @override
  String get tooltipStudyReview => '学习+复习';

  @override
  String get tooltipSpeaking => '口语';

  @override
  String get tooltipDecrease => '减少';

  @override
  String get tooltipIncrease => '增加';

  @override
  String get languageSettings => '语言设置';

  @override
  String get tutorialM2DropdownDesc => '选择学习资料。';

  @override
  String get tutorialM2ImportDesc => '从设备文件夹导入JSON文件。';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get copy => '复制';

  @override
  String get copiedToClipboard => '已复制到剪贴板！';

  @override
  String get tutorialContextTitle => '上下文标签';

  @override
  String get tutorialContextDesc => '添加上下文（例如：早上）以区分相似的句子。';

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
  String get usageLimitTitle => '已达上限';

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
  String get basicWords => '基础词库';

  @override
  String get basicSentences => '基础句库';

  @override
  String get selectMaterialSet => '选择学习资料集';

  @override
  String get sectionWords => '单词';

  @override
  String get sectionSentences => '句子';

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
  String get tutorialSwapDesc => '我用我正在学习的语言替换我的母语。';

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
  String get menuSelectMaterialSet => '选择学习资料集';

  @override
  String get sectionWord => '单词部分';

  @override
  String get sectionSentence => '句子部分';

  @override
  String get tabWord => '单词';

  @override
  String get tabSentence => '句子';

  @override
  String get errorProfanity => '包含不雅内容，无法翻译。';

  @override
  String get errorHateSpeech => '包含仇恨言论，无法翻译。';

  @override
  String get errorSexualContent => '包含色情内容，无法翻译。';

  @override
  String get errorOtherSafety => '由于 AI 安全策略，翻译被拒绝。';

  @override
  String get clearAll => '全部清除';

  @override
  String get disambiguationTitle => '选择含义';

  @override
  String get disambiguationPrompt => '您想翻译成哪个含义？';

  @override
  String get skip => '跳过';

  @override
  String get inputModeTitle => '输入';

  @override
  String get reviewModeTitle => '复习';

  @override
  String get practiceModeTitle => '发音练习';

  @override
  String get chatHistoryTitle => '对话历史';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => '新对话';

  @override
  String get chatChoosePersona => '选择角色';

  @override
  String get chatTypeHint => '输入消息...';

  @override
  String chatFailed(Object error) {
    return 'Chat failed: $error';
  }

  @override
  String get chatNoConversations => '暂无对话';

  @override
  String get chatStartNewPrompt => '开始新对话进行练习！';

  @override
  String chatFromConversation(Object speaker) {
    return 'From Conversation ($speaker)';
  }

  @override
  String get personaTeacher => '英语老师';

  @override
  String get personaGuide => '旅行导游';

  @override
  String get personaFriend => '当地朋友';

  @override
  String get chatUntitled => 'Untitled Conversation';

  @override
  String get chatAiChat => 'AI聊天';

  @override
  String get tutorialAiChatTitle => 'AI聊天';

  @override
  String get tutorialAiChatDesc => '在这里与 AI 角色练习实际对话。';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Current Material Set: $name';
  }

  @override
  String get basicWordRepository => '基础词库';

  @override
  String get basicSentenceRepository => '基础句库';

  @override
  String get chatEndTitle => '结束并保存对话';

  @override
  String get chatEndMessage => '是否结束此对话？';

  @override
  String get chatSaveAndExit => '保存并退出';

  @override
  String get errorSelectCategory => '请先选择单词或句子！';

  @override
  String get tutorialM1ToggleTitle => '单词/句子模式';

  @override
  String get tutorialM1ToggleDesc => '在这里切换单词和句子模式。';

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
  String get formPresent => '현재형';

  @override
  String get formThirdPersonSingular => '3rd Person Singular';

  @override
  String get formPlural => 'Plural';

  @override
  String get formSingular => '单数';

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

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get helpTitle => '帮助与指南';

  @override
  String get helpTabModes => '模式';

  @override
  String get helpTabJson => 'JSON 格式';

  @override
  String get helpTabTour => '新手引导';

  @override
  String get helpMode1Desc => '语音识别、翻译并收听结果。';

  @override
  String get helpMode1Details =>
      '• 语言设置：通过顶部翻译图标更改语言\n• 帮助：通过顶部帮助图标查看指南\n• 语音输入：点击麦克风图标开始/停止聆听\n• 文本输入：直接输入文本进行翻译\n• 自动搜索：检测相似的现有句子\n• 翻译：点击按钮立即翻译\n• 收听：点击扬声器图标收听 TTS（原文/译文）\n• 保存：“保存数据”添加到历史记录\n• 清除：重置所有输入';

  @override
  String get helpMode2Desc => '复习已保存的句子，自动隐藏译文并跟踪复习次数。';

  @override
  String get helpMode2Details =>
      '• 选择资料：选择特定资料集或“复习全部”\n• 翻转卡片：使用“显示/隐藏”查看译文\n• 收听：播放特定句子的 TTS\n• 标记已学：勾选 (V) 已完成的项目\n• 删除：长按卡片删除记录\n• 筛选：查看全部或按资料筛选';

  @override
  String get helpMode3Desc => '通过聆听和跟读句子练习口语。';

  @override
  String get helpMode3Details =>
      '• 选择资料：选择学习包\n• 间隔：使用 [-] [+] 调整等待时间（3秒-60秒）\n• 开始/停止：控制跟读会话\n• 说话：聆听音频并跟读\n• 反馈：准确率评分（0-100）及颜色代码\n• 重试：如果未检测到声音，请使用重试按钮';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => '要在模式 3 中导入学习资料，请创建具有以下结构的 JSON 文件：';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc =>
      '开始教程后，**高亮圆圈**将引导您了解主要功能。\n(例如：当**高亮圆圈**指向学习卡片时，长按可将其删除。)';

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
  String get location => '位置';

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
    return '复习 ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return '学习资料 ($count)';
  }

  @override
  String get mode2Title => '复习';

  @override
  String get search => '搜索';

  @override
  String get translate => '翻译';

  @override
  String get listen => '收听';

  @override
  String get saveData => '保存数据';

  @override
  String get saved => '已保存';

  @override
  String get delete => '删除';

  @override
  String get materialInfo => '资料信息';

  @override
  String get cancel => '取消';

  @override
  String get confirm => '确认';

  @override
  String get refresh => '刷新';

  @override
  String studyRecords(int count) {
    return '学习记录 ($count)';
  }

  @override
  String get targetLanguageFilter => '目标语言筛选:';

  @override
  String get noRecords => '所选语言没有学习记录';

  @override
  String get saveTranslationsFromSearch => '在搜索模式下保存翻译';

  @override
  String get flip => '翻转';

  @override
  String get hide => '隐藏';

  @override
  String get deleteRecord => '删除记录';

  @override
  String get confirmDelete => '确定要删除这条学习记录吗？';

  @override
  String get recordDeleted => '记录已删除';

  @override
  String deleteFailed(String error) {
    return '删除失败: $error';
  }

  @override
  String get importJsonFile => '导入 JSON 文件';

  @override
  String get importing => '正在导入...';

  @override
  String get importComplete => '导入完成';

  @override
  String get importFailed => '导入失败';

  @override
  String importFile(String fileName) {
    return '文件: $fileName';
  }

  @override
  String importTotal(int count) {
    return '总计: $count 项';
  }

  @override
  String importAdded(int count) {
    return '添加: $count 项';
  }

  @override
  String importSkipped(int count) {
    return '跳过: $count 项';
  }

  @override
  String get errors => '错误:';

  @override
  String get error => '错误';

  @override
  String importErrorMessage(String error) {
    return '文件导入失败:\\n$error';
  }

  @override
  String get selectStudyMaterial => '选择学习资料';

  @override
  String get subject => '主题:';

  @override
  String get source => '来源:';

  @override
  String get file => '文件:';

  @override
  String progress(int current, int total) {
    return '进度: $current / $total';
  }

  @override
  String get importJsonFilePrompt => '请导入 JSON 文件';

  @override
  String get selectMaterialPrompt => '请选择学习资料';

  @override
  String get studyComplete => '已学习';

  @override
  String get markAsStudied => '标记为已学习';

  @override
  String get listening => '正在聆听...';

  @override
  String get recognized => '识别完成';

  @override
  String recognitionFailed(String error) {
    return '语音识别失败: $error';
  }

  @override
  String get checking => '正在检查...';

  @override
  String get translating => '正在翻译...';

  @override
  String get translationComplete => '翻译完成 (需保存)';

  @override
  String get translationLoaded => '已加载保存的翻译';

  @override
  String translationFailed(String error) {
    return '翻译失败: $error';
  }

  @override
  String get enterTextToTranslate => '请输入要翻译的文本';

  @override
  String get saving => '正在保存...';

  @override
  String get noTranslationToSave => '没有可保存的翻译';

  @override
  String saveFailed(String error) {
    return '保存失败: $error';
  }

  @override
  String get playing => '正在播放...';

  @override
  String get noTextToPlay => '没有可播放的文本';

  @override
  String playbackFailed(String error) {
    return '播放失败: $error';
  }

  @override
  String get sourceLanguage => '源语言';

  @override
  String get targetLanguage => '目标语言';

  @override
  String get similarTextFound => '发现相似文本';

  @override
  String get useExistingText => '使用现有';

  @override
  String get createNew => '新建条目';

  @override
  String reviewCount(int count) {
    return '复习 $count 次';
  }

  @override
  String get tabSpeaking => '口语';

  @override
  String get speakingPractice => '口语练习';

  @override
  String intervalSeconds(int seconds) {
    return '间隔: $seconds秒';
  }

  @override
  String get yourPronunciation => '你的发音';

  @override
  String get correctAnswer => '正确答案';

  @override
  String score(String score) {
    return '准确率: $score%';
  }

  @override
  String get perfect => '完美！';

  @override
  String get good => '不错';

  @override
  String get tryAgain => '再试一次';

  @override
  String get startPractice => '开始练习';

  @override
  String get stopPractice => '停止练习';

  @override
  String get startTutorial => '开始教程';

  @override
  String get tutorialMicTitle => '语音输入';

  @override
  String get tutorialMicDesc => '点击麦克风按钮开始语音输入。';

  @override
  String get tutorialTabDesc => '您可以在这里选择所需的学习模式。';

  @override
  String get tutorialTapToContinue => '点击继续';

  @override
  String get tutorialTransTitle => '翻译';

  @override
  String get tutorialTransDesc => '点击此处翻译您的文本。';

  @override
  String get tutorialSaveTitle => '保存';

  @override
  String get tutorialSaveDesc => '将翻译保存到学习记录。';

  @override
  String get tutorialM2SelectTitle => '选择与筛选';

  @override
  String get tutorialM2SelectDesc => '选择学习资料或切换到“复习全部”。';

  @override
  String get tutorialM2ListTitle => '学习列表';

  @override
  String get tutorialM2ListDesc => '查看已保存的卡片并翻转查看答案。(长按删除)';

  @override
  String get tutorialM3SelectTitle => '选择资料';

  @override
  String get tutorialM3SelectDesc => '选择用于口语练习的资料集。';

  @override
  String get tutorialM3IntervalTitle => '间隔';

  @override
  String get tutorialM3IntervalDesc => '调整句子之间的等待时间。';

  @override
  String get tutorialM3StartTitle => '开始练习';

  @override
  String get tutorialM3StartDesc => '点击播放开始聆听和跟读。';

  @override
  String get startWarning => '警告';

  @override
  String get noVoiceDetected => '未检测到声音';

  @override
  String get tooltipSearch => '搜索';

  @override
  String get tooltipStudyReview => '学习+复习';

  @override
  String get tooltipSpeaking => '口语';

  @override
  String get tooltipDecrease => '减少';

  @override
  String get tooltipIncrease => '增加';

  @override
  String get languageSettings => '语言设置';

  @override
  String get tutorialM2DropdownDesc => '选择学习资料。';

  @override
  String get tutorialM2ImportDesc => '从设备文件夹导入JSON文件。';

  @override
  String get tutorialLangSettingsTitle => '语言设置';

  @override
  String get tutorialLangSettingsDesc => '设置翻译的源语言和目标语言。';

  @override
  String get copy => '复制';

  @override
  String get copiedToClipboard => '已复制到剪贴板！';

  @override
  String get tutorialContextTitle => '上下文标签';

  @override
  String get tutorialContextDesc => '添加上下文（例如：早上）以区分相似的句子。';

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
  String get usageLimitTitle => '已达用量上限';

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
  String get basicWords => '基础词库';

  @override
  String get basicSentences => '基础句库';

  @override
  String get selectMaterialSet => '选择学习资料集';

  @override
  String get sectionWords => '单词';

  @override
  String get sectionSentences => '句子';

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
  String get tutorialSwapDesc => '我用我正在学习的语言替换我的母语。';

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
  String get menuSelectMaterialSet => '选择学习资料';

  @override
  String get sectionWord => '文字部分';

  @override
  String get sectionSentence => '句子部分';

  @override
  String get tabWord => '单词';

  @override
  String get tabSentence => '句子';

  @override
  String get errorProfanity => '包含不雅内容，无法翻译。';

  @override
  String get errorHateSpeech => '包含仇恨言论，无法翻译。';

  @override
  String get errorSexualContent => '包含性暗示内容，无法翻译。';

  @override
  String get errorOtherSafety => '由于 AI 安全策略，翻译被拒绝。';

  @override
  String get clearAll => '全部清除';

  @override
  String get disambiguationTitle => '选择释义';

  @override
  String get disambiguationPrompt => '您想翻译成哪个意思？';

  @override
  String get skip => '跳过';

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
  String get basicWordRepository => '基础词汇库';

  @override
  String get basicSentenceRepository => '基础句库';

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
  String get formSingular => '单数';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get helpTitle => '幫助與指南';

  @override
  String get helpTabModes => '模式';

  @override
  String get helpTabJson => 'JSON 格式';

  @override
  String get helpTabTour => '導覽';

  @override
  String get helpMode1Desc => '語音辨識、翻譯並收聽結果。';

  @override
  String get helpMode1Details =>
      '• 語言設定：透過頂部翻譯圖示更改語言\n• 幫助：透過頂部幫助圖示查看指南\n• 語音輸入：點擊麥克風圖示開始/停止聆聽\n• 文字輸入：直接輸入文字進行翻譯\n• 自動搜尋：偵測相似的現有句子\n• 翻譯：點擊按鈕立即翻譯\n• 收聽：點擊揚聲器圖示收聽 TTS（原文/譯文）\n• 儲存：「儲存資料」添加到歷史記錄\n• 清除：重設所有輸入';

  @override
  String get helpMode2Desc => '複習已儲存的句子，自動隱藏譯文並追蹤複習次數。';

  @override
  String get helpMode2Details =>
      '• 選擇資料：選擇特定資料集或「複習全部」\n• 翻轉卡片：使用「顯示/隱藏」查看譯文\n• 收聽：播放特定句子的 TTS\n• 標記已學：勾選 (V) 已完成的項目\n• 刪除：長按卡片刪除記錄\n• 篩選：查看全部或按資料篩選';

  @override
  String get helpMode3Desc => '通過聆聽和跟讀句子練習口說。';

  @override
  String get helpMode3Details =>
      '• 選擇資料：選擇學習包\n• 間隔：使用 [-] [+] 調整等待時間（3秒-60秒）\n• 開始/停止：控制跟讀會話\n• 說話：聆聽音訊並跟讀\n• 反饋：準確率評分（0-100）及顏色代碼\n• 重試：如果未偵測到聲音，請使用重試按鈕';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc => '要在模式 3 中匯入學習資料，請建立具有以下結構的 JSON 檔案：';

  @override
  String get helpDialogueImportDesc =>
      'Import complete dialogue sets via JSON files.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpTourDesc =>
      '開始教學後，**高亮圓圈**將引導您了解主要功能。\n(例如：當**高亮圓圈**指向學習卡片時，長按可將其刪除。)';

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
  String get location => '位置';

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
    return '複習 ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return '學習資料 ($count)';
  }

  @override
  String get mode2Title => '複習';

  @override
  String get search => '搜尋';

  @override
  String get translate => '翻譯';

  @override
  String get listen => '收聽';

  @override
  String get saveData => '儲存資料';

  @override
  String get saved => '已儲存';

  @override
  String get delete => '刪除';

  @override
  String get materialInfo => '資料資訊';

  @override
  String get cancel => '取消';

  @override
  String get confirm => '確認';

  @override
  String get refresh => '重新整理';

  @override
  String studyRecords(int count) {
    return '學習記錄 ($count)';
  }

  @override
  String get targetLanguageFilter => '目標語言篩選:';

  @override
  String get noRecords => '所選語言沒有學習記錄';

  @override
  String get saveTranslationsFromSearch => '在搜尋模式下儲存翻譯';

  @override
  String get flip => '翻轉';

  @override
  String get hide => '隱藏';

  @override
  String get deleteRecord => '刪除記錄';

  @override
  String get confirmDelete => '確定要刪除這條學習記錄嗎？';

  @override
  String get recordDeleted => '記錄已刪除';

  @override
  String deleteFailed(String error) {
    return '刪除失敗: $error';
  }

  @override
  String get importJsonFile => '匯入 JSON 檔案';

  @override
  String get importing => '正在匯入...';

  @override
  String get importComplete => '匯入完成';

  @override
  String get importFailed => '匯入失敗';

  @override
  String importFile(String fileName) {
    return '檔案: $fileName';
  }

  @override
  String importTotal(int count) {
    return '總計: $count 項';
  }

  @override
  String importAdded(int count) {
    return '新增: $count 項';
  }

  @override
  String importSkipped(int count) {
    return '略過: $count 項';
  }

  @override
  String get errors => '錯誤:';

  @override
  String get error => '錯誤';

  @override
  String importErrorMessage(String error) {
    return '檔案匯入失敗:\\n$error';
  }

  @override
  String get selectStudyMaterial => '選擇學習資料';

  @override
  String get subject => '主題:';

  @override
  String get source => '來源:';

  @override
  String get file => '檔案:';

  @override
  String progress(int current, int total) {
    return '進度: $current / $total';
  }

  @override
  String get importJsonFilePrompt => '請匯入 JSON 檔案';

  @override
  String get selectMaterialPrompt => '請選擇學習資料';

  @override
  String get studyComplete => '已學習';

  @override
  String get markAsStudied => '標記為已學習';

  @override
  String get listening => '正在聆聽...';

  @override
  String get recognized => '辨識完成';

  @override
  String recognitionFailed(String error) {
    return '語音辨識失敗: $error';
  }

  @override
  String get checking => '正在檢查...';

  @override
  String get translating => '正在翻譯...';

  @override
  String get translationComplete => '翻譯完成 (需儲存)';

  @override
  String get translationLoaded => '已載入儲存的翻譯';

  @override
  String translationFailed(String error) {
    return '翻譯失敗: $error';
  }

  @override
  String get enterTextToTranslate => '請輸入要翻譯的文字';

  @override
  String get saving => '正在儲存...';

  @override
  String get noTranslationToSave => '沒有可儲存的翻譯';

  @override
  String saveFailed(String error) {
    return '儲存失敗: $error';
  }

  @override
  String get playing => '正在播放...';

  @override
  String get noTextToPlay => '沒有可播放的文字';

  @override
  String playbackFailed(String error) {
    return '播放失敗: $error';
  }

  @override
  String get sourceLanguage => '源語言';

  @override
  String get targetLanguage => '目標語言';

  @override
  String get similarTextFound => '發現相似文字';

  @override
  String get useExistingText => '使用現有';

  @override
  String get createNew => '新建項目';

  @override
  String reviewCount(int count) {
    return '複習 $count 次';
  }

  @override
  String get tabSpeaking => '口說';

  @override
  String get speakingPractice => '口說練習';

  @override
  String intervalSeconds(int seconds) {
    return '間隔: $seconds秒';
  }

  @override
  String get yourPronunciation => '你的發音';

  @override
  String get correctAnswer => '正確答案';

  @override
  String score(String score) {
    return '準確率: $score%';
  }

  @override
  String get perfect => '完美！';

  @override
  String get good => '不錯';

  @override
  String get tryAgain => '再試一次';

  @override
  String get startPractice => '開始練習';

  @override
  String get stopPractice => '停止練習';

  @override
  String get startTutorial => '開始教學';

  @override
  String get tutorialMicTitle => '語音輸入';

  @override
  String get tutorialMicDesc => '點擊麥克風按鈕開始語音輸入。';

  @override
  String get tutorialTabDesc => '您可以在這裡選擇所需的學習模式。';

  @override
  String get tutorialTapToContinue => '點擊繼續';

  @override
  String get tutorialTransTitle => '翻譯';

  @override
  String get tutorialTransDesc => '點擊此處翻譯您的文字。';

  @override
  String get tutorialSaveTitle => '儲存';

  @override
  String get tutorialSaveDesc => '將翻譯儲存到學習記錄。';

  @override
  String get tutorialM2SelectTitle => '選擇與篩選';

  @override
  String get tutorialM2SelectDesc => '選擇學習資料或切換到「複習全部」。';

  @override
  String get tutorialM2ListTitle => '學習列表';

  @override
  String get tutorialM2ListDesc => '查看已儲存的卡片並翻轉查看答案。(長按刪除)';

  @override
  String get tutorialM3SelectTitle => '選擇資料';

  @override
  String get tutorialM3SelectDesc => '選擇用於口說練習的資料集。';

  @override
  String get tutorialM3IntervalTitle => '間隔';

  @override
  String get tutorialM3IntervalDesc => '調整句子之間的等待時間。';

  @override
  String get tutorialM3StartTitle => '開始練習';

  @override
  String get tutorialM3StartDesc => '點擊播放開始聆聽和跟讀。';

  @override
  String get startWarning => '警告';

  @override
  String get noVoiceDetected => '未偵測到聲音';

  @override
  String get tooltipSearch => '搜尋';

  @override
  String get tooltipStudyReview => '學習+複習';

  @override
  String get tooltipSpeaking => '口語';

  @override
  String get tooltipDecrease => '減少';

  @override
  String get tooltipIncrease => '增加';

  @override
  String get languageSettings => '語言設定';

  @override
  String get tutorialM2DropdownDesc => '選擇學習資料。';

  @override
  String get tutorialM2ImportDesc => '從裝置資料夾匯入JSON檔案。';

  @override
  String get tutorialLangSettingsTitle => '語言設定';

  @override
  String get tutorialLangSettingsDesc => '設定翻譯的來源語言和目標語言。';

  @override
  String get copy => '複製';

  @override
  String get copiedToClipboard => '已複製到剪貼板！';

  @override
  String get tutorialContextTitle => '上下文標籤';

  @override
  String get tutorialContextDesc => '添加上下文（例如：早上）以區分相似的句子。';

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
  String get usageLimitTitle => '已達使用上限';

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
  String get basicWords => '基礎詞庫';

  @override
  String get basicSentences => '基礎句庫';

  @override
  String get selectMaterialSet => '選擇學習資料集';

  @override
  String get sectionWords => '單字';

  @override
  String get sectionSentences => '句子';

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
  String get tutorialSwapDesc => '我用我正在學習的語言取代我的母語。';

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
  String get menuSelectMaterialSet => '選擇學習資料';

  @override
  String get sectionWord => '文字部分';

  @override
  String get sectionSentence => '句子部分';

  @override
  String get tabWord => '單字';

  @override
  String get tabSentence => '句子';

  @override
  String get errorProfanity => '包含不雅字詞，無法翻譯。';

  @override
  String get errorHateSpeech => '包含仇恨言論，無法翻譯。';

  @override
  String get errorSexualContent => '包含煽情內容，無法翻譯。';

  @override
  String get errorOtherSafety => '因人工智慧安全政策而拒絕翻譯。';

  @override
  String get clearAll => '全部清除';

  @override
  String get disambiguationTitle => '選擇含義';

  @override
  String get disambiguationPrompt => '您想翻譯成哪個含義？';

  @override
  String get skip => '跳過';

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
  String get basicWordRepository => '基礎詞彙庫';

  @override
  String get basicSentenceRepository => '基礎句庫';

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
  String get formSingular => '單數';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';
}

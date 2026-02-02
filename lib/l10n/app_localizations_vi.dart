// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get helpTitle => 'Trợ giúp & Hướng dẫn';

  @override
  String get helpTabModes => 'Chế độ';

  @override
  String get helpTabJson => 'Định dạng JSON';

  @override
  String get helpTabTour => 'Hướng dẫn';

  @override
  String get helpMode1Desc =>
      'Nhận dạng giọng nói, dịch sang ngôn ngữ đích và nghe kết quả.';

  @override
  String get helpMode1Details =>
      '• Nhập giọng nói: Nhấn biểu tượng mic để bắt đầu/dừng\n• Nhập văn bản: Nhập trực tiếp để dịch\n• Tự động tìm kiếm: Phát hiện các câu tương tự đã có\n• Dịch: Nhấn nút để dịch ngay lập tức\n• Nghe: Biểu tượng loa để nghe TTS\n• Lưu: \'Lưu dữ liệu\' thêm vào lịch sử\n• Xóa: Đặt lại tất cả đầu vào';

  @override
  String get helpMode2Desc =>
      'Ôn tập các câu đã lưu với tính năng tự động ẩn bản dịch.';

  @override
  String get helpMode2Details =>
      '• Chọn tài liệu: Chọn bộ cụ thể hoặc \'Ôn tập tất cả\'\n• Lật thẻ: Sử dụng \'Hiện/Ẩn\' để xem bản dịch\n• Nghe: Phát TTS cho câu cụ thể\n• Đánh dấu đã học: Chọn (V) cho các mục đã hoàn thành\n• Xóa: Nhấn giữ thẻ để xóa bản ghi\n• Lọc: Xem tất cả hoặc lọc theo tài liệu';

  @override
  String get helpMode3Desc =>
      'Luyện nói bằng cách nghe và nhại lại câu (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Chọn tài liệu: Chọn gói học tập\n• Khoảng cách: [-] [+] điều chỉnh thời gian chờ (3s-60s)\n• Bắt đầu/Dừng: Điều khiển phiên nhại lại\n• Nói: Nghe âm thanh và lặp lại theo\n• Phản hồi: Điểm chính xác (0-100) với mã màu\n• Thử lại: Sử dụng nút thử lại nếu không phát hiện được giọng nói';

  @override
  String get helpModeChatDesc =>
      'Talk to AI persona to practice real conversation and save useful sentences.';

  @override
  String get helpModeChatDetails =>
      '• Start Chat: Tap bubble icon on top right\n• Choose Persona: Pick teacher, guide or friend\n• Chat & Save: AI responses are auto-translated. Tap any message to save it to Mode 2\n• Dual Language: View both mother tongue and target language for all messages\n• TTS: Tap speaker icon to hear pronunciation for both languages\n• Auto-Title: AI suggests a title based on topic\n• Management: View past chats in history';

  @override
  String get helpJsonDesc =>
      'Để nhập tài liệu học tập trong Chế độ 3, hãy tạo tệp JSON với cấu trúc sau:';

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
  String get location => 'Vị trí';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Tôi';

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
    return 'Ôn tập ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Tài liệu học ($count)';
  }

  @override
  String get mode2Title => 'Ôn tập';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get translate => 'Dịch';

  @override
  String get listen => 'Nghe';

  @override
  String get saveData => 'Lưu';

  @override
  String get saved => 'Đã lưu';

  @override
  String get delete => 'Xóa';

  @override
  String get materialInfo => 'Thông tin tài liệu';

  @override
  String get cancel => 'Hủy';

  @override
  String get confirm => 'OK';

  @override
  String get refresh => 'Làm mới';

  @override
  String studyRecords(int count) {
    return 'Bản ghi học tập ($count)';
  }

  @override
  String get targetLanguageFilter => 'Lọc ngôn ngữ đích:';

  @override
  String get noRecords => 'Không có bản ghi cho ngôn ngữ đã chọn';

  @override
  String get saveTranslationsFromSearch => 'Lưu bản dịch từ chế độ tìm kiếm';

  @override
  String get flip => 'Lật';

  @override
  String get hide => 'Ẩn';

  @override
  String get deleteRecord => 'Xóa bản ghi';

  @override
  String get confirmDelete => 'Bạn có chắc chắn muốn xóa bản ghi này không?';

  @override
  String get recordDeleted => 'Đã xóa bản ghi thành công';

  @override
  String deleteFailed(String error) {
    return 'Xóa thất bại: $error';
  }

  @override
  String get importJsonFile => 'Nhập file JSON';

  @override
  String get importing => 'Đang nhập...';

  @override
  String get importComplete => 'Nhập hoàn tất';

  @override
  String get importFailed => 'Nhập thất bại';

  @override
  String importFile(String fileName) {
    return 'Tập tin: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Tổng: $count';
  }

  @override
  String importAdded(int count) {
    return 'Đã thêm: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Bỏ qua: $count';
  }

  @override
  String get errors => 'Lỗi:';

  @override
  String get error => 'Lỗi';

  @override
  String importErrorMessage(String error) {
    return 'Không thể nhập tập tin:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Chọn tài liệu học';

  @override
  String get subject => 'Chủ đề:';

  @override
  String get source => 'Nguồn:';

  @override
  String get file => 'Tập tin:';

  @override
  String progress(int current, int total) {
    return 'Tiến độ: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Vui lòng nhập tập tin JSON';

  @override
  String get selectMaterialPrompt => 'Vui lòng chọn tài liệu học';

  @override
  String get studyComplete => 'Đã học';

  @override
  String get markAsStudied => 'Đánh dấu đã học';

  @override
  String get listening => 'Đang nghe...';

  @override
  String get recognized => 'Nhận dạng hoàn tất';

  @override
  String recognitionFailed(String error) {
    return 'Nhận dạng giọng nói thất bại: $error';
  }

  @override
  String get checking => 'Đang kiểm tra...';

  @override
  String get translating => 'Đang dịch...';

  @override
  String get translationComplete => 'Dịch hoàn tất (cần lưu)';

  @override
  String get translationLoaded => 'Đã tải bản dịch đã lưu';

  @override
  String translationFailed(String error) {
    return 'Dịch thất bại: $error';
  }

  @override
  String get enterTextToTranslate => 'Vui lòng nhập văn bản để dịch';

  @override
  String get saving => 'Đang lưu...';

  @override
  String get noTranslationToSave => 'Không có bản dịch để lưu';

  @override
  String saveFailed(String error) {
    return 'Lưu thất bại: $error';
  }

  @override
  String get playing => 'Đang phát...';

  @override
  String get noTextToPlay => 'Không có văn bản để phát';

  @override
  String playbackFailed(String error) {
    return 'Phát thất bại: $error';
  }

  @override
  String get sourceLanguage => 'Ngôn ngữ nguồn';

  @override
  String get targetLanguage => 'Ngôn ngữ đích';

  @override
  String get similarTextFound => 'Tìm thấy văn bản tương tự';

  @override
  String get useExistingText => 'Sử dụng bản có sẵn';

  @override
  String get createNew => 'Tạo mục mới';

  @override
  String reviewCount(int count) {
    return 'Đã ôn tập $count lần';
  }

  @override
  String get tabSpeaking => 'Nói';

  @override
  String get speakingPractice => 'Luyện nói';

  @override
  String intervalSeconds(int seconds) {
    return 'Khoảng cách: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Phát âm của bạn';

  @override
  String get correctAnswer => 'Đáp án đúng';

  @override
  String score(String score) {
    return 'Độ chính xác: $score%';
  }

  @override
  String get perfect => 'Hoàn hảo!';

  @override
  String get good => 'Tốt';

  @override
  String get tryAgain => 'Thử lại';

  @override
  String get startPractice => 'Bắt đầu luyện tập';

  @override
  String get stopPractice => 'Dừng luyện tập';

  @override
  String get startTutorial => 'Bắt đầu hướng dẫn';

  @override
  String get tutorialMicTitle => 'Nhập giọng nói';

  @override
  String get tutorialMicDesc => 'Nhấn nút mic để bắt đầu nhập giọng nói.';

  @override
  String get tutorialTabDesc => 'Bạn có thể chọn chế độ học mong muốn tại đây.';

  @override
  String get tutorialTapToContinue => 'Chạm để tiếp tục';

  @override
  String get tutorialTransTitle => 'Dịch';

  @override
  String get tutorialTransDesc => 'Nhấn vào đây để dịch văn bản của bạn.';

  @override
  String get tutorialSaveTitle => 'Lưu';

  @override
  String get tutorialSaveDesc => 'Lưu bản dịch của bạn vào hồ sơ học tập.';

  @override
  String get tutorialM2SelectTitle => 'Chọn & Lọc';

  @override
  String get tutorialM2SelectDesc =>
      'Chọn tài liệu học hoặc chuyển sang \'Ôn tập tất cả\'.';

  @override
  String get tutorialM2ListTitle => 'Danh sách học';

  @override
  String get tutorialM2ListDesc =>
      'Kiểm tra các thẻ đã lưu và lật chúng để xem câu trả lời. (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'Chọn tài liệu';

  @override
  String get tutorialM3SelectDesc => 'Chọn bộ tài liệu để luyện nói.';

  @override
  String get tutorialM3IntervalTitle => 'Khoảng cách';

  @override
  String get tutorialM3IntervalDesc => 'Điều chỉnh thời gian chờ giữa các câu.';

  @override
  String get tutorialM3StartTitle => 'Bắt đầu luyện tập';

  @override
  String get tutorialM3StartDesc => 'Nhấn phát để bắt đầu nghe và nhại lại.';

  @override
  String get startWarning => 'Cảnh báo';

  @override
  String get noVoiceDetected => 'Không phát hiện giọng nói';

  @override
  String get tooltipSearch => 'Tìm kiếm';

  @override
  String get tooltipStudyReview => 'Học+Ôn tập';

  @override
  String get tooltipSpeaking => 'Nói';

  @override
  String get tooltipDecrease => 'Giảm';

  @override
  String get tooltipIncrease => 'Tăng';

  @override
  String get languageSettings => 'Cài đặt ngôn ngữ';

  @override
  String get tutorialM2DropdownDesc => 'Chọn tài liệu học tập.';

  @override
  String get tutorialM2ImportDesc => 'Nhập tệp JSON từ thư mục thiết bị.';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get copy => 'Sao chép';

  @override
  String get copiedToClipboard => 'Đã sao chép vào bộ nhớ tạm!';

  @override
  String get tutorialContextTitle => 'Thẻ ngữ cảnh';

  @override
  String get tutorialContextDesc =>
      'Thêm ngữ cảnh (ví dụ: Buổi sáng) để phân biệt các câu tương tự.';

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
  String get usageLimitTitle => 'Đã đạt đến giới hạn';

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
  String get selectMaterialSet => 'Chọn bộ tài liệu học tập';

  @override
  String get sectionWords => 'Từ';

  @override
  String get sectionSentences => 'Câu';

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
      'Tôi sử dụng song song ngôn ngữ mẹ đẻ với ngôn ngữ mà tôi đang học.';

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
  String get menuSelectMaterialSet => 'Chọn tài liệu học tập';

  @override
  String get sectionWord => 'Phần chữ';

  @override
  String get sectionSentence => 'Phần câu';

  @override
  String get tabWord => 'từ';

  @override
  String get tabSentence => 'câu';

  @override
  String get errorProfanity => 'Không thể dịch vì chứa từ ngữ tục tĩu.';

  @override
  String get errorHateSpeech =>
      'Không thể dịch vì chứa nội dung kích động thù hận.';

  @override
  String get errorSexualContent => 'Không thể dịch vì chứa nội dung khiêu dâm.';

  @override
  String get errorOtherSafety =>
      'Bản dịch bị từ chối theo chính sách an toàn AI.';

  @override
  String get clearAll => 'Xóa hết';

  @override
  String get disambiguationTitle => 'Chọn nghĩa';

  @override
  String get disambiguationPrompt => 'Bạn muốn dịch theo nghĩa nào?';

  @override
  String get skip => 'Bỏ qua';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'Lịch sử trò chuyện';

  @override
  String get chatNew => 'New Chat';

  @override
  String get chatNewChat => 'Trò chuyện mới';

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
  String get chatAiChat => 'Trò chuyện AI';

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
  String get basicWordRepository => 'Kho từ cơ bản';

  @override
  String get basicSentenceRepository => 'Kho câu cơ bản';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'Lưu và thoát';

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
  String get formSingular => 'Số ít';

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

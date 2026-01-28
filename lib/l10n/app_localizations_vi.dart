// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

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
  String get helpJsonDesc =>
      'Để nhập tài liệu học tập trong Chế độ 3, hãy tạo tệp JSON với cấu trúc sau:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

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
  String get chatHistoryTitle => 'Lịch sử trò chuyện';

  @override
  String get chatNewChat => 'Trò chuyện mới';

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
  String get chatAiChat => 'Trò chuyện AI';

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
  String get me => 'Tôi';

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
}

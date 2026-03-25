// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get basicWords => 'Kho từ cơ bản';

  @override
  String get inputLanguage => 'Ngôn ngữ nhập';

  @override
  String get translationLanguage => 'Ngôn ngữ dịch';

  @override
  String get simplifiedGuidance =>
      'Chuyển đổi tức thì các cuộc trò chuyện hàng ngày sang ngoại ngữ! Talkie sẽ ghi lại cuộc sống ngôn ngữ của bạn.';

  @override
  String get noDataForLanguage =>
      'Không có tài liệu học tập cho ngôn ngữ bạn đã chọn trong cơ sở dữ liệu cục bộ. Vui lòng tải xuống tài liệu hoặc chọn một ngôn ngữ khác.';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get cancel => 'Hủy';

  @override
  String get accuracy => 'Độ chính xác';

  @override
  String get ttsMissing =>
      'Không tìm thấy công cụ chuyển văn bản thành giọng nói cho ngôn ngữ này trên thiết bị của bạn.';

  @override
  String get ttsInstallGuide =>
      'Vui lòng cài đặt dữ liệu ngôn ngữ tương ứng trong Cài đặt Android > Google TTS.';

  @override
  String get adLoading => 'Đang tải quảng cáo. Vui lòng thử lại sau.';

  @override
  String get addNewSubject => 'Thêm tên mới';

  @override
  String get addParticipant => 'Thêm người tham gia';

  @override
  String get addTagHint => 'Thêm thẻ...';

  @override
  String get alreadyHaveAccount => 'Bạn đã có tài khoản?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Tự động phát';

  @override
  String get basic => 'Cơ bản';

  @override
  String get basicDefault => 'Cơ bản';

  @override
  String get basicMaterialRepository => 'Kho từ/câu cơ bản';

  @override
  String get basicSentenceRepository => 'Kho câu cơ bản';

  @override
  String get basicSentences => 'Kho câu cơ bản';

  @override
  String get basicWordRepository => 'Kho từ cơ bản';

  @override
  String get caseObject => 'Tân cách';

  @override
  String get casePossessive => 'Sở hữu cách';

  @override
  String get casePossessivePronoun => 'Đại từ sở hữu';

  @override
  String get caseReflexive => 'Phản thân đại từ';

  @override
  String get caseSubject => 'Chủ cách';

  @override
  String get chatAiChat => 'Trò chuyện';

  @override
  String get chatAllConversations => 'Toàn bộ hội thoại';

  @override
  String get chatChoosePersona => 'Chọn nhân vật';

  @override
  String get chatEndMessage => 'Bạn có muốn kết thúc cuộc trò chuyện không?';

  @override
  String get chatEndTitle => 'Kết thúc và lưu cuộc trò chuyện';

  @override
  String chatFailed(Object error) {
    return 'Trò chuyện thất bại: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Trích đoạn từ cuộc trò chuyện ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Lịch sử trò chuyện';

  @override
  String get chatNew => 'Cuộc trò chuyện mới';

  @override
  String get chatNewChat => 'Trò chuyện mới';

  @override
  String get chatNoConversations => 'Chưa có cuộc trò chuyện nào';

  @override
  String get chatSearchHint => '대화 제목으로 검색...';

  @override
  String get chatSaveAndExit => 'Lưu và thoát';

  @override
  String get chatStartNewPrompt =>
      'Hãy bắt đầu một cuộc trò chuyện mới để luyện tập!';

  @override
  String get chatTypeHint => 'Nhập tin nhắn...';

  @override
  String get chatUntitled => 'Cuộc trò chuyện không có tiêu đề';

  @override
  String get checking => 'Đang kiểm tra...';

  @override
  String get clearAll => 'Xóa hết';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get confirmDelete => 'Bạn có chắc chắn muốn xóa bản ghi này không?';

  @override
  String get confirmDeleteConversation =>
      'Bạn có chắc chắn muốn xóa hội thoại này?\nHội thoại đã xóa không thể khôi phục.';

  @override
  String get confirmDeleteParticipant =>
      'Bạn có muốn xóa người tham gia này không?';

  @override
  String get contextTagHint => 'Ghi lại tình huống để dễ phân biệt sau này';

  @override
  String get contextTagLabel =>
      'Ngữ cảnh/Tình huống (tùy chọn) - Ví dụ: Chào buổi sáng, Kính ngữ';

  @override
  String get copiedToClipboard => 'Đã sao chép vào bộ nhớ tạm!';

  @override
  String get copy => 'Sao chép';

  @override
  String get correctAnswer => 'Đáp án đúng';

  @override
  String get createNew => 'Tạo mục mới';

  @override
  String get currentLocation => 'Vị trí hiện tại';

  @override
  String get currentMaterialLabel => 'Bộ tài liệu đã chọn:';

  @override
  String get delete => 'Xóa';

  @override
  String deleteFailed(String error) {
    return 'Xóa thất bại: $error';
  }

  @override
  String get deleteRecord => 'Xóa bản ghi';

  @override
  String get dialogueQuestDesc =>
      'Luyện tập hội thoại thông qua nhập vai. Chọn và nói câu trả lời thích hợp.';

  @override
  String get dialogueQuestTitle => 'Nhiệm vụ hội thoại';

  @override
  String get disambiguationPrompt => 'Bạn muốn dịch theo nghĩa nào?';

  @override
  String get disambiguationTitle => 'Chọn nghĩa';

  @override
  String get dontHaveAccount => 'Bạn chưa có tài khoản?';

  @override
  String get editParticipant => 'Sửa người tham gia';

  @override
  String get email => 'Email';

  @override
  String get emailAlreadyInUse =>
      'Email này đã được sử dụng. Vui lòng đăng nhập hoặc sử dụng chức năng tìm mật khẩu.';

  @override
  String get enterNewSubjectName => 'Nhập tên mới';

  @override
  String get enterSentenceHint => 'Nhập câu...';

  @override
  String get enterTextHint => 'Nhập văn bản cần dịch';

  @override
  String get enterTextToTranslate => 'Vui lòng nhập văn bản để dịch';

  @override
  String get enterWordHint => 'Nhập từ...';

  @override
  String get error => 'Lỗi';

  @override
  String get errorHateSpeech =>
      'Không thể dịch vì chứa nội dung kích động thù hận.';

  @override
  String get errorOtherSafety =>
      'Bản dịch bị từ chối theo chính sách an toàn AI.';

  @override
  String get errorProfanity => 'Không thể dịch vì chứa từ ngữ tục tĩu.';

  @override
  String get errorSelectCategory => 'Vui lòng chọn từ hoặc câu trước!';

  @override
  String get errorSexualContent => 'Không thể dịch vì chứa nội dung khiêu dâm.';

  @override
  String get errors => 'Lỗi:';

  @override
  String get female => 'Nữ';

  @override
  String get file => 'Tập tin:';

  @override
  String get filterAll => 'Tất cả';

  @override
  String get flip => 'Lật';

  @override
  String get formComparative => 'So sánh hơn';

  @override
  String get formInfinitive => 'Nguyên thể/Hiện tại';

  @override
  String get formPast => 'Quá khứ';

  @override
  String get formPastParticiple => 'Quá khứ phân từ';

  @override
  String get formPlural => 'Số nhiều';

  @override
  String get formPositive => 'Nguyên cấp';

  @override
  String get formPresent => 'Hiện tại';

  @override
  String get formPresentParticiple => 'Hiện tại phân từ (ing)';

  @override
  String get formSingular => 'Số ít';

  @override
  String get formSuperlative => 'So sánh nhất';

  @override
  String get formThirdPersonSingular => 'Ngôi thứ ba số ít';

  @override
  String get gameModeDesc => 'Chọn chế độ trò chơi để luyện tập';

  @override
  String get gameModeTitle => 'Chế độ trò chơi';

  @override
  String get gameOver => 'Kết thúc trò chơi';

  @override
  String get gender => 'Giới tính';

  @override
  String get labelFilterMaterial => 'Tài liệu';

  @override
  String get labelFilterTag => 'Thẻ';

  @override
  String get generalTags => 'Thẻ chung';

  @override
  String get getMaterials => 'Nhận tài liệu';

  @override
  String get good => 'Tốt';

  @override
  String get googleContinue => 'Tiếp tục với Google';

  @override
  String get helpDialogueImportDesc =>
      'Nhập toàn bộ bộ hội thoại bằng tệp JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'Để nhập tài liệu học tập trong Chế độ 3, hãy tạo tệp JSON với cấu trúc sau:';

  @override
  String get helpJsonTypeDialogue => 'Hội thoại';

  @override
  String get helpJsonTypeSentence => 'Câu';

  @override
  String get helpJsonTypeWord => 'Từ';

  @override
  String get helpMode1Desc =>
      'Bắt đầu học ngôn ngữ một cách trực quan nhất với micrô 3D cao cấp và biểu tượng bàn phím lớn.';

  @override
  String get helpMode1Details =>
      '• Cài đặt ngôn ngữ: Kiểm tra ngôn ngữ của tôi và ngôn ngữ đang học, đồng thời thay đổi ngôn ngữ học bằng nút ngôn ngữ ở trên cùng của màn hình chính.\n• Nhập đơn giản: Nhập ngay lập tức thông qua micrô lớn và cửa sổ văn bản ở giữa.\n• Xác nhận cài đặt: Sau khi nhập xong, hãy nhấp vào nút kiểm tra màu xanh lam ở bên phải. Cửa sổ cài đặt chi tiết sẽ xuất hiện.\n• Cài đặt chi tiết: Trong hộp thoại xuất hiện, bạn có thể chỉ định bộ sưu tập tài liệu, chú thích (ghi nhớ) và thẻ để lưu.\n• Dịch ngay bây giờ: Sau khi hoàn tất cài đặt, hãy nhấp vào nút dịch màu xanh lục để trí tuệ nhân tạo thực hiện dịch ngay lập tức.\n• Tìm kiếm tự động: Phát hiện và hiển thị các bản dịch hiện có tương tự theo thời gian thực trong khi nhập.\n• Nghe và lưu: Nghe phát âm bằng biểu tượng loa ở cuối kết quả dịch và thêm vào danh sách học tập thông qua \'Lưu dữ liệu\'.';

  @override
  String get helpMode2Desc =>
      'Ôn tập các câu đã lưu với tính năng tự động ẩn bản dịch.';

  @override
  String get helpMode2Details =>
      '• Chọn bộ tài liệu: Sử dụng \'Chọn bộ tài liệu học\' hoặc \'Thư viện tài liệu trực tuyến\' trong menu (⋮) ở góc trên bên phải\n• Lật thẻ: Kiểm tra bản dịch bằng cách \'Hiện/Ẩn\'\n• Nghe: Phát âm bằng biểu tượng loa\n• Hoàn thành học tập: Xử lý hoàn thành học tập bằng dấu kiểm (V)\n• Xóa: Xóa bản ghi bằng cách nhấn giữ (Nhấn lâu) vào thẻ\n• Tìm kiếm và lọc: Hỗ trợ thanh tìm kiếm (tìm kiếm thông minh theo thời gian thực), thẻ và bộ lọc chữ cái đầu';

  @override
  String get helpMode3Desc =>
      'Luyện tập phát âm bằng cách nghe và lặp lại câu (Shadowing).';

  @override
  String get helpMode3Details =>
      '• Chọn tài liệu: Chọn gói học tập\n• Khoảng cách: [-] [+] điều chỉnh thời gian chờ (3s-60s)\n• Bắt đầu/Dừng: Điều khiển phiên nhại lại\n• Nói: Nghe âm thanh và lặp lại theo\n• Phản hồi: Điểm chính xác (0-100) với mã màu\n• Thử lại: Sử dụng nút thử lại nếu không phát hiện được giọng nói';

  @override
  String get helpModeChatDesc =>
      'Luyện tập hội thoại thực tế bằng cách trò chuyện với AI Persona.';

  @override
  String get helpModeChatDetails =>
      '• Trò chuyện AI: Thực hành trò chuyện thực tế với một nhân vật trong menu \'Trò chuyện\' trên thanh tab ở dưới cùng\n• Cài đặt nhân vật: Tự do chỉ định giới tính, tên và mã ngôn ngữ của đối phương\n• Tình huống GPS: Nhận biết vị trí hiện tại của bạn và đề xuất các chủ đề trò chuyện phù hợp với địa điểm\n• Hai ngôn ngữ: Câu trả lời của AI được hiển thị cùng với bản dịch để tối đa hóa hiệu quả học tập\n• Quản lý lịch sử: Lọc lịch sử trò chuyện trước đây và lưu các tin nhắn cụ thể trong cuộc trò chuyện dưới dạng tài liệu học tập';

  @override
  String get helpTabJson => 'Định dạng JSON';

  @override
  String get helpTabModes => 'Chế độ';

  @override
  String get helpTabTour => 'Hướng dẫn';

  @override
  String get helpTitle => 'Trợ giúp & Hướng dẫn';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Ẩn';

  @override
  String importAdded(int count) {
    return 'Đã thêm: $count';
  }

  @override
  String get importComplete => 'Nhập hoàn tất';

  @override
  String get importDuplicateTitleError =>
      'Đã có tài liệu có tiêu đề giống nhau. Vui lòng thay đổi tiêu đề và thử lại.';

  @override
  String importErrorMessage(String error) {
    return 'Không thể nhập tập tin:\\n$error';
  }

  @override
  String get importFailed => 'Nhập thất bại';

  @override
  String importFile(String fileName) {
    return 'Tập tin: $fileName';
  }

  @override
  String get importJsonFile => 'Nhập file JSON';

  @override
  String get importJsonFilePrompt => 'Vui lòng nhập tập tin JSON';

  @override
  String importSkipped(int count) {
    return 'Bỏ qua: $count';
  }

  @override
  String importTotal(int count) {
    return 'Tổng: $count';
  }

  @override
  String get importing => 'Đang nhập...';

  @override
  String get inputModeTitle => 'Nhập';

  @override
  String intervalSeconds(int seconds) {
    return 'Khoảng cách: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Vui lòng nhập email hợp lệ.';

  @override
  String get kakaoContinue => 'Tiếp tục với Kakao';

  @override
  String get labelLangCode => 'Mã ngôn ngữ (ví dụ: en-US, ko-KR)';

  @override
  String get labelName => 'Tên';

  @override
  String get labelNote => 'Ghi chú';

  @override
  String get labelPOS => 'Loại từ';

  @override
  String get labelRole => 'Vai trò';

  @override
  String get labelSentence => 'Câu';

  @override
  String get labelSentenceCollection => 'Bộ sưu tập câu';

  @override
  String get labelSentenceType => 'Loại câu';

  @override
  String get labelShowMemorized => 'Đã hoàn thành';

  @override
  String get labelType => 'Loại:';

  @override
  String get labelWord => 'Từ';

  @override
  String get labelWordbook => 'Sổ từ vựng';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languageSettings => 'Cài đặt ngôn ngữ';

  @override
  String get languageSettingsTitle => 'Cài đặt ngôn ngữ';

  @override
  String get libTitleFirstMeeting => 'Lần đầu gặp mặt';

  @override
  String get libTitleGreetings1 => 'Chào hỏi 1';

  @override
  String get libTitleNouns1 => 'Danh từ 1';

  @override
  String get libTitleVerbs1 => 'Động từ 1';

  @override
  String get listen => 'Nghe';

  @override
  String get listening => 'Đang nghe...';

  @override
  String get loadingParticipants => 'Đang tải người tham gia...';

  @override
  String get location => 'Vị trí';

  @override
  String get login => 'Đăng nhập';

  @override
  String get logout => 'Đăng xuất';

  @override
  String get logoutConfirmMessage =>
      'Bạn có muốn đăng xuất khỏi thiết bị này không?';

  @override
  String get logoutConfirmTitle => 'Đăng xuất';

  @override
  String get male => 'Nam';

  @override
  String get manageParticipants => 'Quản lý người tham gia';

  @override
  String get manual => 'Nhập thủ công';

  @override
  String get markAsStudied => 'Đánh dấu đã học';

  @override
  String get materialInfo => 'Thông tin tài liệu';

  @override
  String get me => 'Tôi';

  @override
  String get menuDeviceImport => 'Nhập tài liệu từ thiết bị';

  @override
  String get menuHelp => 'Trợ giúp';

  @override
  String get menuLanguageSettings => 'Cài đặt ngôn ngữ';

  @override
  String get menuOnlineLibrary => 'Thư viện trực tuyến';

  @override
  String get menuSelectMaterialSet => 'Chọn tài liệu học tập';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Hướng dẫn sử dụng';

  @override
  String get menuWebDownload => 'Hướng dẫn sử dụng';

  @override
  String get metadataDialogTitle => 'Phân loại chi tiết';

  @override
  String get metadataFormType => 'Dạng ngữ pháp';

  @override
  String get metadataRootWord => 'Từ gốc';

  @override
  String get micButtonTooltip => 'Bắt đầu nhận dạng giọng nói';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Bộ tài liệu đã chọn: $name';
  }

  @override
  String get mode2Title => 'Ôn tập';

  @override
  String get mode3Next => 'Tiếp theo';

  @override
  String get mode3Start => 'Bắt đầu';

  @override
  String get mode3Stop => 'Kết thúc';

  @override
  String get mode3TryAgain => 'Thử lại';

  @override
  String get mySentenceCollection => 'Tuyển tập câu của tôi';

  @override
  String get myWordbook => 'Từ vựng của tôi';

  @override
  String get neutral => 'Trung tính';

  @override
  String get newSubjectName => 'Tên Sổ từ/Câu mới';

  @override
  String get next => 'Tiếp theo';

  @override
  String get noDialogueHistory => 'Không có lịch sử hội thoại.';

  @override
  String get noInternetWarningMic =>
      'Không có kết nối Internet. Nhận dạng giọng nói có thể không khả dụng ở chế độ ngoại tuyến.';

  @override
  String get noInternetWarningTranslate =>
      'Không có kết nối Internet. Chức năng dịch không khả dụng ở chế độ ngoại tuyến. Vui lòng sử dụng chế độ ôn tập.';

  @override
  String get noMaterialsInCategory =>
      'Không có tài liệu nào trong danh mục này.';

  @override
  String get noParticipantsFound => 'Không tìm thấy người tham gia nào.';

  @override
  String get noRecords => 'Không có bản ghi cho ngôn ngữ đã chọn';

  @override
  String get noStudyMaterial => 'Không có tài liệu học tập.';

  @override
  String get noTextToPlay => 'Không có văn bản để phát';

  @override
  String get noTranslationToSave => 'Không có bản dịch để lưu';

  @override
  String get noVoiceDetected => 'Không phát hiện giọng nói';

  @override
  String get notSelected => '- Không chọn -';

  @override
  String get onlineLibraryCheckInternet =>
      'Vui lòng kiểm tra kết nối Internet hoặc thử lại sau.';

  @override
  String get onlineLibraryLoadFailed => 'Không tải được tài liệu.';

  @override
  String get onlineLibraryNoMaterials => 'Không có tài liệu.';

  @override
  String get participantDeleted => 'Đã xóa người tham gia.';

  @override
  String get participantRename => 'Đổi tên người tham gia';

  @override
  String get partner => 'Đối tác';

  @override
  String get partnerMode => 'Chế độ đối tác';

  @override
  String get password => 'Mật khẩu';

  @override
  String get passwordTooShort => 'Mật khẩu phải có ít nhất 6 ký tự.';

  @override
  String get perfect => 'Hoàn hảo!';

  @override
  String get personaFriend => 'Bạn địa phương';

  @override
  String get personaGuide => 'Hướng dẫn viên du lịch';

  @override
  String get personaTeacher => 'Giáo viên tiếng Anh';

  @override
  String get playAgain => 'Chơi lại';

  @override
  String playbackFailed(String error) {
    return 'Phát thất bại: $error';
  }

  @override
  String get playing => 'Đang phát...';

  @override
  String get posAdjective => 'Tính từ';

  @override
  String get posAdverb => 'Trạng từ';

  @override
  String get posConjunction => 'Liên từ';

  @override
  String get posInterjection => 'Thán từ';

  @override
  String get posNoun => 'Danh từ';

  @override
  String get posPreposition => 'Giới từ';

  @override
  String get posPronoun => 'Đại từ';

  @override
  String get posVerb => 'Động từ';

  @override
  String get practiceModeTitle => 'Luyện tập';

  @override
  String get practiceWordsOnly => 'Chỉ luyện tập từ';

  @override
  String progress(int current, int total) {
    return 'Tiến độ: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Xem $count mục mới tạo gần đây';
  }

  @override
  String recognitionFailed(String error) {
    return 'Nhận dạng giọng nói thất bại: $error';
  }

  @override
  String get recognized => 'Nhận dạng hoàn tất';

  @override
  String get recognizedText => 'Phát âm đã nhận dạng:';

  @override
  String get recordDeleted => 'Đã xóa bản ghi thành công';

  @override
  String get refresh => 'Làm mới';

  @override
  String get reset => 'Đặt lại';

  @override
  String get resetPracticeHistory => 'Đặt lại lịch sử luyện tập';

  @override
  String get retry => 'Thử lại?';

  @override
  String get reviewAll => 'Ôn tập tất cả';

  @override
  String reviewCount(int count) {
    return 'Đã ôn tập $count lần';
  }

  @override
  String get reviewModeTitle => 'Ôn tập';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Bên thứ ba';

  @override
  String get roleUser => 'Người dùng';

  @override
  String get save => 'Lưu';

  @override
  String get saveData => 'Lưu';

  @override
  String saveFailed(String error) {
    return 'Lưu thất bại: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'Lưu bản dịch từ chế độ tìm kiếm';

  @override
  String get saved => 'Đã lưu';

  @override
  String get saving => 'Đang lưu...';

  @override
  String score(String score) {
    return 'Độ chính xác: $score%';
  }

  @override
  String get scoreLabel => 'Điểm';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get searchConditions => 'Điều kiện tìm kiếm';

  @override
  String get searchSentenceHint => 'Tìm kiếm câu...';

  @override
  String get searchWordHint => 'Tìm kiếm từ...';

  @override
  String get sectionSentence => 'Phần câu';

  @override
  String get sectionSentences => 'Câu';

  @override
  String get sectionWord => 'Phần chữ';

  @override
  String get sectionWords => 'Từ';

  @override
  String get selectExistingSubject => 'Chọn tên hiện có';

  @override
  String get selectMaterialPrompt => 'Vui lòng chọn tài liệu học';

  @override
  String get selectMaterialSet => 'Chọn bộ tài liệu học tập';

  @override
  String get selectPOS => 'Chọn từ loại';

  @override
  String get selectParticipants => 'Chọn người tham gia';

  @override
  String get selectSentenceType => 'Chọn loại câu';

  @override
  String get selectStudyMaterial => 'Chọn tài liệu học';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Câu';

  @override
  String get signUp => 'Đăng ký';

  @override
  String get similarTextFound => 'Tìm thấy văn bản tương tự';

  @override
  String get skip => 'Bỏ qua';

  @override
  String get source => 'Nguồn:';

  @override
  String get sourceLanguage => 'Ngôn ngữ nguồn';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Nói ngay!';

  @override
  String get speaker => 'Người nói';

  @override
  String get speakerSelect => 'Chọn người nói';

  @override
  String get speakingPractice => 'Luyện nói';

  @override
  String get startChat => 'Bắt đầu trò chuyện';

  @override
  String get startPractice => 'Bắt đầu luyện tập';

  @override
  String get startTutorial => 'Bắt đầu hướng dẫn';

  @override
  String get startWarning => 'Cảnh báo';

  @override
  String get startsWith => 'Bắt đầu bằng';

  @override
  String get statusCheckEmail =>
      'Vui lòng kiểm tra email để hoàn tất xác minh.';

  @override
  String statusDownloading(Object name) {
    return 'Đang tải xuống: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Nhập thất bại: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return 'Đã nhập $name thành công';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Đăng nhập đã bị hủy.';

  @override
  String statusLoginFailed(Object error) {
    return 'Đăng nhập thất bại: $error';
  }

  @override
  String get statusLoginSuccess => 'Đăng nhập thành công.';

  @override
  String get statusLogoutSuccess => 'Đã đăng xuất.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Đăng ký thất bại: $error';
  }

  @override
  String get statusSigningUp => 'Đang đăng ký...';

  @override
  String get stopPractice => 'Dừng luyện tập';

  @override
  String get studyComplete => 'Đã học';

  @override
  String studyRecords(int count) {
    return 'Bản ghi học tập ($count)';
  }

  @override
  String get styleFormal => 'Kính ngữ';

  @override
  String get styleInformal => 'Thân mật';

  @override
  String get stylePolite => 'Lịch sự';

  @override
  String get styleSlang => 'Tiếng lóng';

  @override
  String get subject => 'Chủ đề:';

  @override
  String get swapLanguages => 'Đổi ngôn ngữ';

  @override
  String get switchToAi => 'Chuyển sang chế độ AI';

  @override
  String get switchToPartner => 'Chuyển sang chế độ đối tác';

  @override
  String get syncingData => 'Đang đồng bộ dữ liệu...';

  @override
  String get tabConversation => 'Hội thoại';

  @override
  String tabReview(int count) {
    return 'Ôn tập ($count)';
  }

  @override
  String get tabSentence => 'câu';

  @override
  String get tabSpeaking => 'Nói';

  @override
  String tabStudyMaterial(int count) {
    return 'Tài liệu học ($count)';
  }

  @override
  String get tabWord => 'từ';

  @override
  String get tagFormal => 'Kính ngữ';

  @override
  String get tagSelection => 'Chọn thẻ';

  @override
  String get targetLanguage => 'Ngôn ngữ đích';

  @override
  String get targetLanguageFilter => 'Lọc ngôn ngữ đích:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Thời gian suy nghĩ trước khi câu trả lời đúng được tiết lộ.';

  @override
  String get thinkingTimeInterval => 'Độ trễ phát lại';

  @override
  String get timeUp => 'Hết giờ!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Thẻ tiêu đề (tuyển tập)';

  @override
  String get tooltipDecrease => 'Giảm';

  @override
  String get tooltipIncrease => 'Tăng';

  @override
  String get tooltipSearch => 'Tìm kiếm';

  @override
  String get tooltipSpeaking => 'Nói';

  @override
  String get tooltipStudyReview => 'Học+Ôn tập';

  @override
  String totalRecords(int count) {
    return 'Tổng cộng $count bản ghi (Xem tất cả)';
  }

  @override
  String get translate => 'Dịch';

  @override
  String get translating => 'Đang dịch...';

  @override
  String get translation => 'Dịch';

  @override
  String get translationComplete => 'Dịch hoàn tất (cần lưu)';

  @override
  String translationFailed(String error) {
    return 'Dịch thất bại: $error';
  }

  @override
  String get translationLimitExceeded => 'Đã vượt quá giới hạn dịch';

  @override
  String get translationLimitMessage =>
      'Bạn đã sử dụng hết lượt dịch miễn phí hàng ngày (5 lần).\\n\\nBạn có muốn xem quảng cáo để nạp ngay 5 lượt không?';

  @override
  String get translationLoaded => 'Đã tải bản dịch đã lưu';

  @override
  String get translationRefilled => 'Bạn đã được nạp 5 lượt dịch!';

  @override
  String get translationResultHint => 'Kết quả dịch - Có thể chỉnh sửa';

  @override
  String get tryAgain => 'Thử lại';

  @override
  String get tutorialAiChatDesc =>
      'Luyện tập hội thoại thực tế với nhân vật AI.';

  @override
  String get tutorialAiChatTitle => 'Trò chuyện AI';

  @override
  String get tutorialContextDesc =>
      'Thêm ngữ cảnh (ví dụ: Buổi sáng) để phân biệt các câu tương tự.';

  @override
  String get tutorialContextTitle => 'Thẻ ngữ cảnh';

  @override
  String get tutorialLangSettingsDesc =>
      'Đặt ngôn ngữ gốc và ngôn ngữ đích để dịch.';

  @override
  String get tutorialLangSettingsTitle => 'Cài đặt ngôn ngữ';

  @override
  String get tutorialM1ToggleDesc =>
      'Chuyển đổi giữa chế độ từ và câu tại đây.';

  @override
  String get tutorialM1ToggleTitle => 'Chế độ từ/câu';

  @override
  String get tutorialM2DropdownDesc => 'Chọn tài liệu học tập.';

  @override
  String get tutorialM2ImportDesc => 'Nhập tệp JSON từ thư mục thiết bị.';

  @override
  String get tutorialM2ListDesc =>
      'Kiểm tra các thẻ đã lưu và lật chúng để xem câu trả lời. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Danh sách học';

  @override
  String get tutorialM2SearchDesc =>
      'Tìm và nhanh chóng định vị các từ và câu đã lưu.';

  @override
  String get tutorialM2SelectDesc =>
      'Chọn tài liệu học hoặc chuyển sang \'Ôn tập tất cả\'.';

  @override
  String get tutorialM2SelectTitle => 'Chọn & Lọc';

  @override
  String get tutorialM3IntervalDesc => 'Điều chỉnh thời gian chờ giữa các câu.';

  @override
  String get tutorialM3IntervalTitle => 'Khoảng cách';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Chọn bộ tài liệu để luyện nói.';

  @override
  String get tutorialM3SelectTitle => 'Chọn tài liệu';

  @override
  String get tutorialM3StartDesc => 'Nhấn phát để bắt đầu nghe và nhại lại.';

  @override
  String get tutorialM3StartTitle => 'Bắt đầu luyện tập';

  @override
  String get tutorialM3WordsDesc => 'Chọn để chỉ luyện tập các từ đã lưu.';

  @override
  String get tutorialM3WordsTitle => 'Luyện tập từ vựng';

  @override
  String get tutorialMicDesc => 'Nhấn nút mic để bắt đầu nhập giọng nói.';

  @override
  String get tutorialMicTitle => 'Nhập giọng nói';

  @override
  String get tutorialSaveDesc => 'Lưu bản dịch của bạn vào hồ sơ học tập.';

  @override
  String get tutorialSaveTitle => 'Lưu';

  @override
  String get tutorialSwapDesc =>
      'Tôi sử dụng song song ngôn ngữ mẹ đẻ với ngôn ngữ mà tôi đang học.';

  @override
  String get tutorialTabDesc => 'Bạn có thể chọn chế độ học mong muốn tại đây.';

  @override
  String get tutorialTapToContinue => 'Chạm để tiếp tục';

  @override
  String get tutorialTransDesc => 'Nhấn vào đây để dịch văn bản của bạn.';

  @override
  String get tutorialTransTitle => 'Dịch';

  @override
  String get typeExclamation => 'Câu cảm thán';

  @override
  String get typeImperative => 'Câu mệnh lệnh';

  @override
  String get typeQuestion => 'Câu hỏi';

  @override
  String get typeStatement => 'Câu trần thuật';

  @override
  String get usageLimitTitle => 'Đã đạt đến giới hạn';

  @override
  String get useExistingText => 'Sử dụng bản có sẵn';

  @override
  String get viewOnlineGuide => 'Xem hướng dẫn trực tuyến';

  @override
  String get voluntaryTranslations => 'Bản dịch đóng góp';

  @override
  String get watchAdAndRefill => 'Xem quảng cáo để nạp (+5 lượt)';

  @override
  String get word => 'Từ';

  @override
  String get wordDefenseDesc => 'Nói từ trước khi kẻ thù đến để bảo vệ căn cứ.';

  @override
  String get wordDefenseTitle => 'Phòng thủ từ vựng';

  @override
  String get wordModeLabel => 'Chế độ từ';

  @override
  String get yourPronunciation => 'Phát âm của bạn';

  @override
  String get ttsUnsupportedNatively =>
      'Thiết bị này không hỗ trợ xuất âm thanh cho ngôn ngữ này trong cài đặt gốc.';

  @override
  String get homeTab => 'Trang chủ';

  @override
  String get welcomeTitle => 'Chào mừng bạn đến với Talkie!';

  @override
  String get welcomeDesc =>
      'Chào mừng bạn đến với Talkie! Chúng tôi hỗ trợ hơn 80 ngôn ngữ trên toàn thế giới với độ chính xác 100%, cùng với thiết kế 3D cao cấp mới và hiệu suất tối ưu hóa để mang lại trải nghiệm học tập hoàn hảo.';

  @override
  String get welcomeButton => 'Bắt đầu';

  @override
  String get labelDetails => 'Cài đặt chi tiết';

  @override
  String get translationResult => 'Kết quả dịch';

  @override
  String get inputContent => 'Nội dung nhập';

  @override
  String get translateNow => 'Dịch ngay';

  @override
  String get tooltipSettingsConfirm => 'Xác nhận cài đặt';

  @override
  String get hintNoteExample => 'Ví dụ: Giải thích ngữ cảnh, từ đồng âm,...';

  @override
  String get hintTagExample => 'Ví dụ: Kinh doanh, Du lịch...';

  @override
  String get addNew => 'Thêm mới';

  @override
  String get newNotebookTitle => 'Tên sổ tay mới';

  @override
  String get enterNameHint => 'Nhập tên';

  @override
  String get add => 'Thêm';

  @override
  String get openSettings => 'Mở cài đặt';

  @override
  String get helpNotebook => 'Chọn thư mục để lưu trữ các kết quả đã dịch.';

  @override
  String get helpNote => 'Tự do ghi lại ý nghĩa, ví dụ hoặc tình huống của từ.';

  @override
  String get helpTag => 'Nhập từ khóa để phân loại hoặc tìm kiếm sau này.';

  @override
  String get requestTranslation => 'Yêu cầu dịch';

  @override
  String get statusRequestSuccess => 'Yêu cầu dịch đã hoàn tất.';

  @override
  String statusRequestFailed(String error) {
    return 'Yêu cầu dịch thất bại: $error';
  }

  @override
  String get studyLangNotFoundTitle => 'Ngôn ngữ học tập không được hỗ trợ';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Tài liệu bạn chọn hiện không hỗ trợ ngôn ngữ học tập đã đặt ($targetLang) nên không thể lưu cục bộ. Bạn có muốn yêu cầu dịch không?';
  }
}

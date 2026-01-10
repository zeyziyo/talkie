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
      'Bắt đầu hướng dẫn tương tác để tìm hiểu các tính năng chính.';

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
      'Kiểm tra các thẻ đã lưu và lật chúng để xem câu trả lời.';

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
}

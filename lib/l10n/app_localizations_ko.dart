// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return '복습 ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return '학습 자료 ($count)';
  }

  @override
  String get search => '검색';

  @override
  String get translate => '번역';

  @override
  String get listen => '듣기';

  @override
  String get saveData => '데이터 저장';

  @override
  String get saved => '저장 완료';

  @override
  String get delete => '삭제';

  @override
  String get materialInfo => '자료 정보';

  @override
  String get cancel => '취소';

  @override
  String get confirm => '확인';

  @override
  String get refresh => '새로고침';

  @override
  String studyRecords(int count) {
    return '학습 기록 ($count)';
  }

  @override
  String get targetLanguageFilter => '대상 언어 필터:';

  @override
  String get noRecords => '선택한 언어의 학습 기록이 없습니다';

  @override
  String get saveTranslationsFromSearch => '검색 모드에서 번역을 저장해보세요';

  @override
  String get flip => '뒤집기';

  @override
  String get hide => '숨기기';

  @override
  String get deleteRecord => '레코드 삭제';

  @override
  String get confirmDelete => '이 학습 기록을 삭제하시겠습니까?';

  @override
  String get recordDeleted => '레코드가 삭제되었습니다';

  @override
  String deleteFailed(String error) {
    return '삭제 실패: $error';
  }

  @override
  String get importJsonFile => 'JSON 파일 불러오기';

  @override
  String get importing => '불러오는 중...';

  @override
  String get importComplete => '불러오기 완료';

  @override
  String get importFailed => '불러오기 실패';

  @override
  String importFile(String fileName) {
    return '파일: $fileName';
  }

  @override
  String importTotal(int count) {
    return '전체: $count개';
  }

  @override
  String importAdded(int count) {
    return '추가: $count개';
  }

  @override
  String importSkipped(int count) {
    return '건너뜀: $count개';
  }

  @override
  String get errors => '오류:';

  @override
  String get error => '오류';

  @override
  String importErrorMessage(String error) {
    return '파일 불러오기 실패:\\n$error';
  }

  @override
  String get selectStudyMaterial => '학습 자료 선택';

  @override
  String get subject => '주제:';

  @override
  String get source => '출처:';

  @override
  String get file => '파일:';

  @override
  String progress(int current, int total) {
    return '진행률: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'JSON 파일을 불러와주세요';

  @override
  String get selectMaterialPrompt => '학습 자료를 선택하세요';

  @override
  String get studyComplete => '학습 완료';

  @override
  String get markAsStudied => '학습 표시';

  @override
  String get listening => '듣는 중...';

  @override
  String get recognized => '인식 완료';

  @override
  String recognitionFailed(String error) {
    return '음성 인식 실패: $error';
  }

  @override
  String get checking => '확인 중...';

  @override
  String get translating => '번역 중...';

  @override
  String get translationComplete => '번역 완료 (저장 필요)';

  @override
  String get translationLoaded => '저장된 번역 불러옴';

  @override
  String translationFailed(String error) {
    return '번역 실패: $error';
  }

  @override
  String get enterTextToTranslate => '번역할 텍스트를 입력하세요';

  @override
  String get saving => '저장 중...';

  @override
  String get noTranslationToSave => '저장할 번역이 없습니다';

  @override
  String saveFailed(String error) {
    return '저장 실패: $error';
  }

  @override
  String get playing => '재생 중...';

  @override
  String get noTextToPlay => '재생할 텍스트가 없습니다';

  @override
  String playbackFailed(String error) {
    return '재생 실패: $error';
  }

  @override
  String get sourceLanguage => '원본 언어';

  @override
  String get targetLanguage => '대상 언어';

  @override
  String get similarTextFound => '유사한 텍스트 발견';

  @override
  String get useExistingText => '기존 텍스트 사용';

  @override
  String get createNew => '새 문장으로 진행';

  @override
  String reviewCount(int count) {
    return '복습 $count회';
  }
}

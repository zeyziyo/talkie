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
  String get mode2Title => '복습';

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
  String get flip => '보이기';

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

  @override
  String get tabSpeaking => '말하기';

  @override
  String get speakingPractice => '말하기 연습';

  @override
  String intervalSeconds(int seconds) {
    return '간격: $seconds초';
  }

  @override
  String get yourPronunciation => '내 발음';

  @override
  String get correctAnswer => '정답';

  @override
  String score(String score) {
    return '정확도: $score%';
  }

  @override
  String get perfect => '완벽해요!';

  @override
  String get good => '좋아요';

  @override
  String get tryAgain => '다시 시도';

  @override
  String get startPractice => '연습 시작';

  @override
  String get stopPractice => '연습 중지';

  @override
  String get helpTitle => '도움말 및 가이드';

  @override
  String get helpTabModes => '기능 소개';

  @override
  String get helpTabJson => 'JSON 형식';

  @override
  String get helpTabTour => '튜토리얼';

  @override
  String get helpMode1Desc => '음성을 인식하여 번역하고, 결과를 듣습니다. 새로운 표현을 익히기에 좋습니다.';

  @override
  String get helpMode1Details =>
      '• 언어 설정: 상단 번역 아이콘으로 언어 변경\n• 도움말: 상단 물음표 아이콘으로 사용법 가이드 확인\n• 음성 입력: 마이크 아이콘을 눌러 말하기/멈추기\n• 텍스트 입력: 직접 타이핑하여 입력 가능\n• 자동 검색: 입력 시 유사한 문장이 있으면 알림\n• 번역하기: \'번역\' 버튼으로 즉시 번역 실행\n• 듣기: 스피커 아이콘으로 원어/번역문 듣기 (TTS)\n• 저장: \'데이터 저장\' 버튼으로 학습 기록 저장\n• 초기화: \'지우기\' 버튼으로 입력 내용 삭제';

  @override
  String get helpMode2Desc => '저장된 문장을 복습합니다. 번역을 가리고 확인하며 복습 횟수를 기록하세요.';

  @override
  String get helpMode2Details =>
      '• 자료 선택: 상단 메뉴에서 학습 자료 선택 또는 \'전체 복습\'\n• 카드 뒤집기: \'보이기/숨기기\' 버튼으로 번역 확인\n• 듣기: \'듣기\' 버튼으로 해당 문장 다시 듣기\n• 학습 체크: 완료된 문장은 체크 표시 (V)\n• 삭제: 카드를 길게 누르면 삭제 다이얼로그 표시\n• 필터: 전체 기록 보기 또는 학습 자료별 정렬';

  @override
  String get helpMode3Desc => '학습 자료의 문장을 듣고 직접 말하는 연습을 합니다.';

  @override
  String get helpMode3Details =>
      '• 자료 선택: 학습할 자료 팩 선택\n• 간격 조절: [-] [+] 버튼으로 문장 사이 대기 시간 설정 (3초~60초)\n• 시작/정지: 재생 버튼으로 쉐도잉 세션 제어\n• 말하기: 원어민 음성을 듣고 따라서 말하기\n• 피드백: 발음 정확도 점수(0~100) 및 색상 표시 (초록/주황/빨강)\n• 재시도: 인식 실패 시 재시도 버튼 사용';

  @override
  String get helpJsonDesc => '학습 자료를 가져오려면 다음과 같은 구조의 JSON 파일을 사용하세요:';

  @override
  String get helpTourDesc =>
      '튜토리얼을 시작하면 **하이라이트 원(Circle)**이 주요 기능을 안내해 드립니다.\n(예: 학습 카드를 **하이라이트 원**이 가리킬 때 길게 누르면 삭제할 수 있습니다.)';

  @override
  String get startTutorial => '튜토리얼 시작';

  @override
  String get tutorialMicTitle => '음성 입력';

  @override
  String get tutorialMicDesc => '마이크 버튼을 눌러 음성으로 입력할 수 있습니다.';

  @override
  String get tutorialTabDesc => '여기서 원하는 학습 모드를 선택할 수 있습니다.';

  @override
  String get tutorialTapToContinue => '화면을 탭하여 계속';

  @override
  String get tutorialTransTitle => '번역하기';

  @override
  String get tutorialTransDesc => '입력한 텍스트를 번역합니다.';

  @override
  String get tutorialSaveTitle => '저장하기';

  @override
  String get tutorialSaveDesc => '번역된 결과를 학습 기록에 저장하세요.';

  @override
  String get tutorialM2SelectTitle => '자료 선택 & 필터';

  @override
  String get tutorialM2SelectDesc => '학습할 자료를 선택하거나 전체 복습 모드로 전환합니다.';

  @override
  String get tutorialM2ListTitle => '학습 목록';

  @override
  String get tutorialM2ListDesc =>
      '이 카드를 길게 누르면(Long Click) 삭제할 수 있습니다. 저장된 문장을 확인하고 뒤집어보세요.';

  @override
  String get tutorialM3SelectTitle => '자료 선택';

  @override
  String get tutorialM3SelectDesc => '말하기 연습을 진행할 자료 세트를 선택하세요.';

  @override
  String get tutorialM3IntervalTitle => '간격 설정';

  @override
  String get tutorialM3IntervalDesc => '문장 사이의 대기 시간을 조절합니다.';

  @override
  String get tutorialM3StartTitle => '연습 시작';

  @override
  String get tutorialM3StartDesc => '재생 버튼을 눌러 원어민 음성을 듣고 따라하세요.';

  @override
  String get startWarning => '주의';

  @override
  String get noVoiceDetected => '목소리가 감지되지 않았어요';

  @override
  String get tooltipSearch => '검색';

  @override
  String get tooltipStudyReview => '학습+복습';

  @override
  String get tooltipSpeaking => '말하기';

  @override
  String get tooltipDecrease => '감소';

  @override
  String get tooltipIncrease => '증가';

  @override
  String get languageSettings => 'Language Settings';

  @override
  String get tutorialM2DropdownDesc => '학습할 자료를 선택합니다.';

  @override
  String get tutorialM2ImportDesc => '기기의 폴더에서 JSON 파일을 불러옵니다.';

  @override
  String get tutorialLangSettingsTitle => '언어 설정';

  @override
  String get tutorialLangSettingsDesc => '번역할 원본 언어와 대상 언어를 설정합니다.';

  @override
  String get copy => '복사';

  @override
  String get copiedToClipboard => '클립보드에 복사되었습니다!';

  @override
  String get tutorialContextTitle => '상황/문맥 태그';

  @override
  String get tutorialContextDesc =>
      '같은 문장이라도 상황(예: 아침, 저녁)을 적어두면 별도로 저장할 수 있어요.';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      '단어와 문장 모드를 여기서 전환할 수 있습니다. 단어는 목록에서 더 크게 표시됩니다.';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc =>
      'Check this to practice only your saved words.';

  @override
  String get labelType => '종류:';

  @override
  String get labelWord => '단어';

  @override
  String get labelSentence => '문장';

  @override
  String get contextTagLabel => '문맥/상황 (선택사항) - 예: 아침인사, 존댓말';

  @override
  String get contextTagHint => '나중에 구분하기 쉽도록 상황을 적어주세요';

  @override
  String get translationLimitExceeded => '번역 한도 초과';

  @override
  String get translationLimitMessage =>
      '일일 무료 번역(5회)을 모두 사용했습니다.\\n\\n광고를 보고 5회를 즉시 충전하시겠습니까?';

  @override
  String get watchAdAndRefill => '광고 보고 충전 (+5회)';

  @override
  String get translationRefilled => '번역 횟수가 5회 충전되었습니다!';

  @override
  String get adLoading => '광고를 불러오는 중입니다. 잠시 후 다시 시도해주세요.';

  @override
  String get reviewAll => '전체 복습';

  @override
  String totalRecords(int count) {
    return '총 $count개의 기록 (전체 보기)';
  }

  @override
  String get filterAll => '전체';

  @override
  String get practiceWordsOnly => '단어만 연습 (Words Only)';

  @override
  String get resetPracticeHistory => '연습 기록 초기화';

  @override
  String get retry => '다시 시도?';

  @override
  String get noStudyMaterial => '학습 자료가 없습니다.';

  @override
  String get gameOver => 'Game Over';

  @override
  String get playAgain => '다시 하기';

  @override
  String get speakNow => '말하세요! (Speak!)';

  @override
  String get scoreLabel => '점수';

  @override
  String get viewOnlineGuide => '온라인 가이드 보기';

  @override
  String get getMaterials => '자료 받기';

  @override
  String get swapLanguages => '언어 전환';

  @override
  String get next => '다음';

  @override
  String get thinkingTimeInterval => '생각 시간 간격';

  @override
  String get thinkingTimeDesc => '정답이 공개되기 전 생각할 시간입니다.';

  @override
  String get autoPlay => '자동 재생';

  @override
  String get timeUp => '시간 초과!';

  @override
  String get gameModeTitle => '게임 모드';

  @override
  String get gameModeDesc => '연습할 게임 모드를 선택하세요';

  @override
  String get wordDefenseTitle => '단어 디펜스';

  @override
  String get wordDefenseDesc => '적이 도착하기 전에 단어를 말해서 기지를 방어하세요.';

  @override
  String get dialogueQuestTitle => '대화 퀘스트';

  @override
  String get dialogueQuestDesc => '상황극을 통해 대화 연습을 하세요. 적절한 답변을 선택하고 말해보세요.';

  @override
  String get micButtonTooltip => '듣기 시작';

  @override
  String get enterTextHint => '번역할 텍스트 입력';

  @override
  String get wordModeLabel => '단어 모드';
}

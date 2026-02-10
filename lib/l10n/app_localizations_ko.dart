// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get helpTitle => '도움말 & 가이드';

  @override
  String get helpTabModes => '모드 설명';

  @override
  String get helpTabJson => 'JSON 형식';

  @override
  String get helpTabTour => '체험하기';

  @override
  String get helpMode1Desc => '음성을 인식하여 번역하고, 결과를 들어볼 수 있습니다.';

  @override
  String get helpMode1Details =>
      '• 언어 설정: 상단/하단 아이콘을 눌러 언어 변경\n• 단어/문장 토글: 모드 전환\n• 음성 입력: 마이크 아이콘을 눌러 듣기 시작/정지\n• 텍스트 입력: 직접 입력하여 번역\n• 자동 검색: 유사한 기존 문장 감지\n• 번역: 번역 버튼을 눌러 즉시 번역\n• 듣기: 스피커 아이콘으로 TTS 재생\n• 저장: \'데이터 저장\'으로 기록 추가\n• 지우기: 입력 초기화';

  @override
  String get helpMode2Desc => '저장된 문장을 복습하고, 자동 숨김 기능으로 암기 여부를 확인하세요.';

  @override
  String get helpMode2Details =>
      '• 자료 선택: 상단 앱바의 상세 설정(Tune) 아이콘으로 자료 선택 및 온라인 자료실 접근\n• 카드 뒤집기: \'보이기/숨기기\'로 번역 확인 (자동 학습 체크)\n• 듣기: 문장 TTS 재생\n• 학습 완료: 체크 표시(V)로 학습 완료 처리\n• 삭제: 카드를 길게 눌러 기록 삭제\n• 검색 조건: 태그, 최근 항목, 시작 글자로 필터링';

  @override
  String get helpMode3Desc => '문장을 듣고 따라 말하며(Shadowing) 발음을 연습하세요.';

  @override
  String get helpMode3Details =>
      '• 자료 선택: 상단 앱바의 상세 설정(Tune) 아이콘으로 자료 선택\n• 간격 설정: [-] [+] 버튼으로 문장 간 대기 시간 조정 (3초~60초)\n• 시작/정지: 쉐도잉 세션 제어\n• 말하기: 음성을 듣고 따라 말하기\n• 피드백: 정확도 점수(0-100) 및 색상 표시\n• 검색 조건: 태그, 최근 항목, 시작 글자로 연습 대상 필터링';

  @override
  String get helpModeChatDesc => 'AI 페르소나와 대화하며 실전 회화를 연습하세요.';

  @override
  String get helpModeChatDetails =>
      '• AI 채팅: 내 언어로 말하여 회화 연습\n• 멀티 페르소나: 말풍선 위 메뉴로 상대방의 성별/언어/이름 변경 가능\n• 파트너 추가: + 버튼으로 새로운 대화 상대(Stranger) 추가\n• GPS: 현재 위치 기반 상황극\n• 자동 저장: 대화 내용 자동 번역 및 저장';

  @override
  String get helpJsonDesc => 'Mode 3에서 사용할 학습 자료를 JSON 파일로 가져오려면 다음 형식을 따르세요:';

  @override
  String get helpDialogueImportDesc => 'JSON 파일로 전체 대화 세트를 가져옵니다.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON 구조: `entries` 대신 `dialogues` 배열 사용\n• 자동 복구: 대화 제목, 페르소나, 메시지 순서가 복구됩니다.\n• 위치: 가져온 대화는 AI 채팅 모드의 \'기록\' 탭에 나타납니다.';

  @override
  String get helpTourDesc =>
      '**하이라이트 원**이 주요 기능을 안내합니다.\n(예: **하이라이트 원**이 가리키는 카드를 길게 눌러 삭제할 수 있습니다.)';

  @override
  String get partnerMode => '파트너 모드';

  @override
  String get manual => '수동 입력';

  @override
  String get speaker => '화자';

  @override
  String get switchToAi => 'AI 모드로 전환';

  @override
  String get switchToPartner => '파트너 모드로 전환';

  @override
  String get currentLocation => '현재 위치';

  @override
  String get location => '위치';

  @override
  String get partner => '파트너';

  @override
  String get me => '나';

  @override
  String get currentMaterialLabel => '현재 선택 자료집:';

  @override
  String get basicMaterialRepository => '기본 문장/단어 저장소';

  @override
  String get word => '단어';

  @override
  String get sentence => '문장';

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
  String get subject => '제목:';

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
  String get menuOnlineLibrary => '온라인 자료실';

  @override
  String get startTutorial => '튜토리얼 시작';

  @override
  String get menuTutorial => '사용법 투어';

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
  String get tutorialM2SelectTitle => '자료 선택';

  @override
  String get tutorialM2SelectDesc =>
      '상단 앱바의 상세 설정(Tune) 아이콘을 눌러 학습할 자료를 선택하거나 온라인 자료실을 이용하세요.';

  @override
  String get tutorialM3SelectDesc => '상단 앱바의 자료집 아이콘(📚)을 눌러 연습할 자료를 선택하세요.';

  @override
  String get tutorialM2ListTitle => '학습 목록';

  @override
  String get tutorialM2ListDesc =>
      '이 카드를 길게 누르면(Long Click) 삭제할 수 있습니다. 저장된 문장을 확인하고 뒤집어보세요.';

  @override
  String get tutorialM3SelectTitle => '자료 선택';

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
  String get languageSettings => '언어 설정';

  @override
  String get tutorialM2DropdownDesc => '상단 메뉴를 통해 학습할 자료를 선택할 수 있습니다.';

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
  String get usageLimitTitle => '한도 도달';

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
  String get practiceWordsOnly => '단어만 연습';

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
  String get speakNow => '지금 말하세요!';

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
  String get wordModeLabel => '단어 모드';

  @override
  String get accuracy => '정확도';

  @override
  String get basicDefault => '기본';

  @override
  String get basic => '기본';

  @override
  String get tutorialM3WordsTitle => '단어 연습';

  @override
  String get tutorialM3WordsDesc => '체크하면 저장된 단어만 연습합니다.';

  @override
  String get enterTextHint => '번역할 텍스트를 입력하세요';

  @override
  String get micButtonTooltip => '음성 인식 시작';

  @override
  String get menuHelp => '도움말';

  @override
  String get menuWebDownload => '홈페이지';

  @override
  String get menuDeviceImport => '기기에서 자료 가져오기';

  @override
  String get menuSettings => '언어 설정';

  @override
  String get basicWords => '기본 단어 저장소';

  @override
  String get basicSentences => '기본 문장 저장소';

  @override
  String get selectMaterialSet => '학습 자료집 선택';

  @override
  String get sectionWords => '단어';

  @override
  String get sectionSentences => '문장';

  @override
  String get languageSettingsTitle => '언어 설정';

  @override
  String get sourceLanguageLabel => '내 언어 (Source)';

  @override
  String get targetLanguageLabel => '학습 언어 (Target)';

  @override
  String get mode3Start => '시작';

  @override
  String get mode3Stop => '종료';

  @override
  String get mode3Next => '다음';

  @override
  String get mode3TryAgain => '재시도';

  @override
  String get tutorialM3ResetTitle => '필터 및 설정';

  @override
  String get tutorialSwapDesc => '내 언어와 학습 언어를 서로 바꿉니다.';

  @override
  String get recognizedText => '인식된 발음:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      '태그를 선택하거나 암기한 항목 제외 등 연습 대상을 자유롭게 설정할 수 있습니다.';

  @override
  String get menuSelectMaterialSet => '학습 자료집 선택';

  @override
  String get sectionWord => '단어 섹션';

  @override
  String get sectionSentence => '문장 섹션';

  @override
  String get tabWord => '단어';

  @override
  String get tabSentence => '문장';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorSexualContent => '선정적인 내용이 포함되어 있어 번역할 수 없습니다.';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다.';

  @override
  String get clearAll => '모두 지우기';

  @override
  String get disambiguationTitle => '의미 선택';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까?';

  @override
  String get skip => '건너뛰기';

  @override
  String get inputModeTitle => '입력';

  @override
  String get reviewModeTitle => '복습';

  @override
  String get practiceModeTitle => '발음 연습';

  @override
  String get chatHistoryTitle => '대화 기록';

  @override
  String get chatNew => '새 대화';

  @override
  String get chatNewChat => '새 대화';

  @override
  String get chatChoosePersona => '페르소나 선택';

  @override
  String get chatTypeHint => '메시지를 입력하세요...';

  @override
  String chatFailed(Object error) {
    return '채팅 실패: $error';
  }

  @override
  String get chatNoConversations => '아직 대화가 없습니다';

  @override
  String get chatStartNewPrompt => '연습을 위해 새 대화를 시작해보세요!';

  @override
  String chatFromConversation(Object speaker) {
    return '대화 발췌 ($speaker)';
  }

  @override
  String get personaTeacher => '영어 선생님';

  @override
  String get personaGuide => '여행 가이드';

  @override
  String get personaFriend => '현지인 친구';

  @override
  String get chatUntitled => '제목 없는 대화';

  @override
  String get chatAiChat => '채팅';

  @override
  String get tutorialAiChatTitle => 'AI 채팅';

  @override
  String get tutorialAiChatDesc => 'AI 페르소나와 실전 대화를 연습해 보세요.';

  @override
  String mode1SelectedMaterial(Object name) {
    return '현재 선택된 자료집: $name';
  }

  @override
  String get basicWordRepository => '기본 단어 저장소';

  @override
  String get basicSentenceRepository => '기본 문장 저장소';

  @override
  String get chatEndTitle => '대화 종료 및 저장';

  @override
  String get chatEndMessage => '대화를 종료하시겠습니까?';

  @override
  String get chatSaveAndExit => '저장 후 종료';

  @override
  String get errorSelectCategory => '먼저 단어나 문장을 선택하세요!';

  @override
  String get tutorialM1ToggleTitle => '단어/문장 모드';

  @override
  String get tutorialM1ToggleDesc => '단어와 문장 모드를 여기서 전환하세요.';

  @override
  String get metadataDialogTitle => '상세 분류';

  @override
  String get tagFormal => '존댓말';

  @override
  String get selectPOS => '품사 선택';

  @override
  String get selectSentenceType => '문장 종류 선택';

  @override
  String get metadataRootWord => '원형 (Root Word)';

  @override
  String get posNoun => '명사';

  @override
  String get posVerb => '동사';

  @override
  String get posAdjective => '형용사';

  @override
  String get posAdverb => '부사';

  @override
  String get posPronoun => '대명사';

  @override
  String get posPreposition => '전치사/조사';

  @override
  String get posConjunction => '접속사';

  @override
  String get posInterjection => '감탄사';

  @override
  String get typeStatement => '평서문';

  @override
  String get typeQuestion => '의문문';

  @override
  String get typeExclamation => '감탄문';

  @override
  String get typeImperative => '명령문';

  @override
  String get labelNote => '주석';

  @override
  String get labelShowMemorized => '끝낸것';

  @override
  String get titleTagSelection => '제목 태그 (자료집)';

  @override
  String get generalTags => '일반 태그';

  @override
  String get tagSelection => '태그 선택';

  @override
  String get metadataFormType => '문법 형태';

  @override
  String get formInfinitive => '원형/현재형';

  @override
  String get formPast => '과거형';

  @override
  String get formPastParticiple => '과거분사';

  @override
  String get formPresentParticiple => '현재분사 (ing)';

  @override
  String get formPresent => '현재형';

  @override
  String get formThirdPersonSingular => '3인칭 단수';

  @override
  String get formPlural => '복수형';

  @override
  String get formSingular => '단수형';

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
  String get formPositive => '원급';

  @override
  String get formComparative => '비교급';

  @override
  String get formSuperlative => '최상급';

  @override
  String get searchConditions => '검색 조건';

  @override
  String recentNItems(int count) {
    return '최근 생성된 $count개 보기';
  }

  @override
  String get startsWith => '시작 글자';

  @override
  String get reset => '초기화';

  @override
  String get participantRename => '참가자 이름 변경';

  @override
  String get labelName => '이름';

  @override
  String get gender => '성별';

  @override
  String get language => '언어';

  @override
  String get male => '남성';

  @override
  String get female => '여성';

  @override
  String get neutral => '중성';

  @override
  String get chatAllConversations => '전체 대화';

  @override
  String get tabConversation => '대화';

  @override
  String get confirmDeleteConversation =>
      '이 대화를 삭제하시겠습니까?\n삭제된 대화는 복구할 수 없습니다.';

  @override
  String get notSelected => '- 선택 안함 -';

  @override
  String get myWordbook => '나의 단어장';

  @override
  String get mySentenceCollection => '나의 문장집';

  @override
  String get newSubjectName => '새 단어장/문장집 제목';

  @override
  String get enterNewSubjectName => '새 제목 입력';

  @override
  String get addNewSubject => '새 제목 추가';

  @override
  String get selectExistingSubject => '기존 제목 선택';

  @override
  String get addTagHint => '태그 추가...';
}

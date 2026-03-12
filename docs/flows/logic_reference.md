# 앱 흐름도: 로직 통합 명세 (Logic Reference)

본 문서는 '앱 흐름도'의 각 UI 요소[n]에서 연결되는 실제 코드 구현체(Dart) 정보를 통합 관리하는 마스터 명세서입니다.

---

## 🏗️ 핵심 로직 목록

<a id="LC-TOGGLE"></a>
### [1] 단어/문장 토글
- **파일**: `lib/screens/home_screen.dart`
- **로직**: `appState.setRecordTypeFilter('word' | 'sentence')` (in `app_state_settings.dart`)
- **설명**: 현재 입력/복습 모드가 단어 중심인지 문장 중심인지를 전환합니다.

<a id="LC-SWAP-LANG"></a>
### [2] 언어 전환
- **파일**: `lib/screens/home_screen.dart`
- **로직**: `appState.swapLanguages()`
- **설명**: 모국어(Source)와 학습어(Target) 설정을 서로 스왑합니다.

<a id="LC-NOTE-DISPLAY"></a>
### [3] 주석 표시 (Display)
- **파일**: `lib/widgets/simplified_input_widget.dart`
- **상태**: `appState.note`
- **설명**: 현재 입력 중인 항목에 주석이 설정되어 있을 경우, '상세 설정' 섹션 내 주석 필드에 텍스트가 표시됩니다.

<a id="LC-INPUT"></a>
### [4] 소스 텍스트 입력
- **파일**: `lib/widgets/simplified_input_widget.dart`
- **로직**: `appState.setSourceText(value)`
- **설명**: 사용자의 키보드 입력을 받아 전역 상태를 업데이트합니다. 입력값이 있을 때만 상세 설정 섹션이 노출됩니다.

<a id="LC-POS-SELECT"></a>
### [5] 품사(POS) 선택
- **파일**: `lib/widgets/simplified_input_widget.dart`
- **로직**: `appState.setSourcePos(value)`
- **설명**: 단어 모드에서 데이터의 문법적 범주를 지정합니다. (상세 설정 섹션 내 포함)

<a id="LC-TRANSLATE"></a>
### [6] 번역 실행
- **파일**: `lib/providers/app_state.dart`
- **기능**: `translate()`
- **설명**: Gemini AI를 통해 번역을 수행합니다. 음성 입력을 통한 STT 완료 후 자동으로 호출되거나, 텍스트 입력 시 실시간/수동으로 호출됩니다.

<a id="LC-TTS"></a>
### [7] 듣기 (TTS)
- **파일**: `lib/providers/app_state.dart`
- **기능**: `speak()`, `stopSpeaking()`
- **설명**: 기기의 TTS 엔진을 사용하여 번역 결과물을 음성으로 출력합니다.

<a id="LC-SAVE"></a>
### [8] 데이터 저장
- **파일**: `lib/providers/app_state_mode1.dart`
- **기능**: `saveTranslation({List<String>? tags})`
- **설명**: 입력된 모든 정보(텍스트, 태그, 어근, 주석 등)를 로컬 및 클라우드 DB에 동시 저장합니다.

<a id="LC-SUBJECT-NEW"></a>
### [9] 새 제목 입력
- **파일**: `lib/widgets/metadata_dialog.dart`
- **로직**: `appState.setSelectedSaveSubject(text)`
- **설명**: 사용자가 새로운 자료집 이름을 직접 입력하여 생성합니다.

<a id="LC-SUBJECT-PICK"></a>
### [10] 기존 제목 선택 (드롭다운)
- **파일**: `lib/widgets/simplified_input_widget.dart` (메인), `lib/widgets/mode2_widget.dart` (복습)
- **로직**: `appState.setSelectedSaveSubject(value)`
- **설명**: 사용자가 학습 자료를 묶어서 관리할 그룹(자료집 명칭)을 선택합니다. 메인화면과 각 모드에서 공통 사용됩니다.

<a id="LC-TAGS"></a>
### [11] 일반 태그 관리
- **파일**: `lib/widgets/simplified_input_widget.dart`
- **상태**: `appState.setTags(tags)`
- **설명**: 해당 데이터에 부여할 임의의 해시태그 목록을 편집합니다.

<a id="LC-NOTE-INPUT"></a>
### [12] 주석 입력 (Input)
- **파일**: `lib/widgets/simplified_input_widget.dart`
- **로직**: `appState.setNote(value)`
- **설명**: 번역 품질 향상을 위한 문맥적 힌트를 입력합니다. 상세 설정 섹션에 위치합니다.

<a id="LC-STT"></a>
### [LC-STT] 메인 음성 인식
- **파일**: `lib/widgets/simplified_input_widget.dart`
- **로직**: `appState.startListening()`
- **설명**: 대형 마이크 버튼을 통해 사용자의 음성을 인식하여 소스 텍스트로 변환합니다. 인식 종료 후 자동 번역 로직으로 연결됩니다.

<a id="LC-ROOT"></a>
### [13] 어근 (Root)
- **파일**: `lib/providers/app_state_mode1.dart`
- **로직**: `appState.setSourceRoot(value)`
- **설명**: 단어의 원형 정보를 기록합니다. (AI 자동 감지 시 기본값 채워짐)

<a id="LC-GRAMMAR"></a>
### [14] 활용형/문법 정보
- **파일**: `lib/providers/app_state_mode1.dart`
- **설명**: 품사나 문장 종류 등 구조화된 문법 메타데이터를 저장합니다.

<a id="LC-SEARCHBAR"></a>
### [15] 스마트 검색
- **파일**: `lib/widgets/mode2_widget.dart`, `lib/widgets/mode3_widget.dart`
- **로직**: `appState.searchByType()`, `appState.jumpToSearchResult()`
- **설명**: 학습 자료 내 단어/문장을 자동 완성으로 신속 검색하고 점프합니다.

<a id="LC-SEARCH-FILTER"></a>
### [16] 검색 필터 및 태그 조건
- **파일**: `lib/widgets/search_filter_dialog.dart`
- **로직**: `appState.setSelectedTags()`, `appState.setFilterLimit()`
- **설명**: 특정 품사, 품사 형태, 태그 등 다중 조건으로 학습 자료 풀을 필터링합니다.

<a id="LC-TOGGLE-MEMORIZED"></a>
### [17] 암기 완료 보기 토글
- **파일**: `lib/widgets/mode2_widget.dart`, `lib/widgets/mode3_widget.dart`
- **로직**: `appState.setShowMemorized(!appState.showMemorized)`
- **설명**: 이미 외운 항목(is_memorized = true)을 리스트에 표시하거나 숨깁니다.

<a id="LC-AUTOPLAY"></a>
### [18] 자동 재생 (Auto Play)
- **파일**: `lib/widgets/mode2_widget.dart`
- **로직**: `_startAutoPlay()`, `_stopAutoPlay()`
- **설명**: 전체 리스트를 순차적으로 스크롤하며 TTS를 자동 발음하는 복습 기능입니다.

<a id="LC-THINKING-TIME"></a>
### [19] 타이머(대기시간) 설정
- **파일**: `lib/widgets/mode2_widget.dart`
- **상태**: `_thinkingInterval`
- **설명**: 자동 재생 시 카드 앞(모국어) 뒤(학습어) 사이의 생각할 시간을 조절합니다 (기본 2초).

<a id="LC-MARK-MEMORIZED"></a>
### [20] 암기 완료 체크
- **파일**: `lib/widgets/mode2_card.dart`
- **로직**: `appState.toggleMemorizedStatus()`
- **설명**: 학습자가 암기를 완료했다고 표시하여 진행률과 필터에 반영합니다. DB에 `is_memorized` 플래그가 저장됩니다.

<a id="LC-PRACTICE-STT"></a>
### [21] 평가용 음성 인식 (Practice STT)
- **파일**: `lib/widgets/mode3_practice_card.dart`
- **로직**: `appState.startMode3ListeningManual()`
- **설명**: 사용자의 발음을 인식하여 텍스트로 변환하고 `spoken_text`에 저장합니다.

<a id="LC-STOP-MIC"></a>
### [22] 연습 마이크 중지
- **파일**: `lib/widgets/mode3_practice_card.dart`
- **로직**: `appState.stopMode3ListeningManual()`
- **설명**: 인식 대기 중인 마이크를 수동으로 닫고 세션을 초기화합니다.

<a id="LC-JUDGE"></a>
### [23] 발음 채점 (Judge)
- **파일**: `lib/providers/app_state_mode3.dart`
- **로직**: `_evaluateSpeech()`
- **설명**: AI 또는 유사도 평가를 통해 사용자의 발음(STT)과 정답 텍스트를 비교하여 Great/Good/Try Again으로 평가합니다. 

<a id="LC-PARTNER-MODE"></a>
### [24] AI 문장 생성 요청 (수동)
- **파일**: `lib/screens/chat_screen.dart`
- **기능**: `_triggerAiResponseManually()`
- **설명**: 현재 대화 문맥을 바탕으로 AI가 다음 응답을 생성하도록 요청합니다. (매직 완드 아이콘)

<a id="LC-CHAT-SAVE"></a>
### [25] 대화 저장 및 종료
- **파일**: `lib/screens/chat_screen.dart`
- **로직**: `_endChat()`
- **설명**: 대화 이력을 닫으며 상황 제목과 위치 정보(GPS/IP) 및 주석을 저장합니다. (AI 자동 제목 추천 지원)

<a id="LC-AI-TTS"></a>
### [26] 대화 상대 TTS 듣기
- **파일**: `lib/screens/chat_screen.dart`
- **로직**: `_speak()`
- **설명**: 파트너 또는 AI의 음성을 설정된 언어의 TTS 엔진으로 읽어줍니다. 

<a id="LC-CHAT-TRANSLATE"></a>
### [27] 대화 번역 토글
- **파일**: `lib/screens/chat_screen.dart`
- **상태**: `_showTranslationMap`
- **설명**: 상대방의 외국어 문장 하단에 번역된 모국어 뜻을 보이거나 숨깁니다.

<a id="LC-CHAT-PROCESS"></a>
### [28] 대화 메시지 처리
- **파일**: `lib/screens/chat_screen.dart`
- **로직**: `_sendMessage()` -> `TranslationService` -> `SupabaseService.processChat()`
- **설명**: 사용자의 입력을 즉시 번역하여 보여주고, AI 모드일 경우 문맥과 함께 서버로 전송해 AI 응답을 받아옵니다. 화면 상단에 로딩 게이지가 적용됩니다.

<a id="LC-CHAT-MIC"></a>
### [29] 대화용 마이크 (STT)
- **파일**: `lib/screens/chat_screen.dart`
- **로직**: `_startListening()`
- **설명**: 대화창 전용 음성 인식 세션을 엽니다. 메인뷰의 전역 마이크와 독립 처리됩니다.

<a id="LC-CHAT-SEARCH"></a>
### [LC-CHAT-SEARCH] 대화 내역 검색
- **파일**: `lib/screens/chat_history_screen.dart`
- **로직**: `_filterDialogues()` 내 제목 매칭
- **설명**: 제목 검색어를 통해 과거 대화 내역을 필터링합니다.

<a id="LC-CHAT-DATE"></a>
### [LC-CHAT-DATE] 대화 날짜 필터링
- **파일**: `lib/screens/chat_history_screen.dart`
- **로직**: `_pickDateRange()`
- **설명**: 특정 기간을 지정하여 대화 내역을 필터링합니다.

<a id="LC-CHAT-NEW"></a>
### [LC-CHAT-NEW] 새 대화 시작
- **파일**: `lib/screens/chat_history_screen.dart`
- **로직**: `_showNewChatDialog()`
- **설명**: 참가자 선택 다이얼로그를 통해 AI 또는 파트너와의 새로운 대화 세션을 생성합니다.

<a id="LC-CHAT-RENAME"></a>
### [LC-CHAT-RENAME] 참가자 이름 변경
- **파일**: `lib/screens/chat_screen.dart`
- **로직**: `_showRenameDialog()`
- **설명**: 메세지 상단의 이름/아바타를 클릭하여 해당 참가자의 이름을 수정합니다.

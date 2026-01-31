# 📜 Antigravity 작업 이력 (Chronological History)

이 파일은 Antigravity 에이전트가 수행한 모든 작업의 태스크와 워크스루 내용을 최신순으로 기록하는 통합 이력장입니다.

---

## 📅 [2026-01-31 17:15:00] Phase 42: 채팅 목록 미표시 수정 (Offline-First & UI 개선)

### ✅ 태스크 (Task)
- [x] AppState: `loadDialogueGroups` 로직을 **Offline-First**로 변경 (클라우드 동기화 실패/지연 시에도 로컬 데이터 즉시 표시)
- [x] ChatScreen: 드롭다운 UI 디자인 개선 (반투명 배경, 테두리, 아이콘 추가로 "버튼임"을 명확히 함)

### 📝 워크스루 (Walkthrough)
- **Offline-First 데이터 로딩**: 기존에는 로그인 상태면 서버 데이터만 믿고 로컬 데이터를 무시하는 로직이었으나, 이제는 로컬 데이터를 최우선으로 보여주고 서버 데이터는 백그라운드에서 동기화하도록 변경했습니다. 이로 인해 "목록이 비어 보이는 문제"가 해결됩니다.
- **UI 시인성**: 드롭다운이 텍스트처럼 보여서 찾기 힘들다는 피드백을 반영하여, 명확한 테두리와 아이콘이 있는 디자인으로 변경했습니다.

---

## 📅 [2026-01-31 17:05:00] Phase 41: AI 음성 발음 및 채팅 기록 드롭다운 수정

### ✅ 태스크 (Task)
- [x] SpeechService: 영어 발음의 한국어 억양(Konglish) 문제 해결 (Locale Normalization)
- [x] SpeechService: AI/User 성별 설정이 적용되지 않던 문제 수정 (강제 Voice 설정)
- [x] AppState: '저장 후 종료' 시 채팅 목록 드롭다운이 즉시 갱신되도록 수정 (Optimistic Update)

### 📝 워크스루 (Walkthrough)
- **AI 발음**: `en_US`와 `en-US` 포맷 불일치로 인해 시스템 기본 목소리(한국어)가 영어를 읽던 문제를 해결했습니다. 이제 조건에 맞는 영어 목소리를 강제로 찾아 설정합니다.
- **채팅 드롭다운**: 채팅 제목을 변경하고 저장했을 때, 클라우드 동기화를 기다리지 않고 **즉시 목록을 업데이트**하여 UI 반응 속도를 개선했습니다.

---

## 📅 [2026-01-31 16:50:00] Phase 40: 태그 국제화(L10n) 및 중복 표시 완벽 수정

### ✅ 태스크 (Task)
- [x] Mode2Widget: `_getLocalizedTag` 대소문자 무관(case-insensitive) 처리 및 필터링 로직 수정
- [x] Mode3Widget: 동일한 대소문자 필터링 로직 적용
- [x] L10n: `formPresent` ("현재형") 키 추가 및 적용

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 데이터베이스의 소문자 태그('adjective')와 코드의 대문자 필터링('Adjective') 불일치를 해결하기 위해 **대소문자 무관(Case-insensitive)** 로직을 적용했습니다. 또한 'present' 태그를 위한 번역 키를 추가하여 한글로 정상 표시되도록 했습니다.
- **결과**: "adjective" 처럼 영어로 나오거나 중복되는 현상이 사라지고, 모든 태그가 "형용사", "현재형" 등으로 깔끔하게 번역되어 하나만 표시됩니다.

---

## 📅 [2026-01-31 14:15:00] Phase 39: 빌드 오류 긴급 수정 (Hotfix)

### ✅ 태스크 (Task)
- [x] AppState: 중복 `setShowMemorized` 제거 및 `fetchRecommendations` try-catch 수정
- [x] Mode2Widget: `l10n` 정의 추가 및 BoxShadow 로직 단순화
- [x] Mode3Widget: `l10n` 정의 추가 및 `const` 오류 수정

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: GitHub Actions 빌드 실패를 유발했던 `AppState`의 중복 메서드와 문법 오류, 그리고 `Mode2/3Widget`의 `l10n` 미정의 오류를 긴급 수정했습니다.
- **결과**: 컴파일 오류가 해소되어 정상적인 빌드가 가능해졌습니다.

---

## 📅 [2026-01-31 13:45:00] Phase 38.5: AI 채팅 음성 연령 제한 제거

### ✅ 태스크 (Task)
- [x] SpeechService: 연령 관련 키워드(grandpa, grandma 등) 제거
- [x] ChatScreen: 음성 설정 팝업 내 '30s tone' 문구 삭제

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 사용자 요청에 따라 AI 음성 선택 시 '30대(30s)' 연령 기준을 제거했습니다. 이제 순수하게 성별과 원어민 발음만을 기준으로 음성을 선택합니다.
- **결과**: 불필요한 연령 제한 텍스트가 삭제되고, 더 범용적인 AI 음성이 제공됩니다.

---

## 📅 [2026-01-31 13:35:00] Phase 38: AI 채팅 음성 개선 및 대화 목록 기능 보강

### ✅ 태스크 (Task)
- [x] SpeechService: `_setBestVoice` 로직 개선 (성별 매칭 실패 시 언어 기반 Fallback 적용)
- [x] AppState: `saveDialogueProgress` 호출 시 대화 목록 정렬 및 갱신 보장
- [x] ChatScreen: 저장 후 종료 시 목록 갱신 연동

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: AI 음성이 성별 불일치 시 한국어 TTS로 영어를 읽는 문제('콩글리시')를 해결하기 위해 언어 기반 강제 선택(Fallback)을 도입했습니다. 또한 채팅 목록이 비어있어도 드롭다운이 항상 보이도록 하여 사용 편의성을 높였습니다.
- **결과**: AI가 올바른 영어 발음으로 대화하며, 언제든 상단 드롭다운을 통해 대화 목록을 확인할 수 있습니다.

---

## 📅 [2026-01-31 12:50:00] Phase 37: Mode 3 태그 선택 기능 추가 및 필터 실시간 적용

### ✅ 태스크 (Task)
- [x] AppState: `_validateCurrentMode3Question` 메서드 추가 및 필터 변경 시 호출
- [x] Mode3Widget: 상단 바에 '태그 선택' 버튼 추가 UI
- [x] 검증: 필터 변경 시 현재 문제가 즉시 교체되는지 확인

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 발음 연습 모드에 '태그 선택' 기능을 추가하고, 필터(태그, 외운것 등)를 변경할 때 현재 연습 중인 카드가 조건에 맞지 않으면 즉시 다음 카드로 넘어가도록 로직을 개선했습니다.
- **결과**: 연습 흐름 끊김 없이 원하는 조건의 카드만 집중적으로 학습할 수 있습니다.

---

## 📅 [2026-01-31 12:15:00] Phase 36: 대명사 격 선택 기능 구현

### ✅ 태스크 (Task)
- [x] AppState: `pronounCaseCategories` 상수 추가
- [x] l10n: 대명사 격(주격, 목적격 등) 번역 키 추가 (ko/en)
- [x] Mode1Widget: 대명사 선택 시 격 선택 드롭다운 UI 구현
- [x] Mode2Widget & Mode3Widget: 격 태그 국제화 표시 지원 (`_getLocalizedTag`)

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 대명사 입력 시 주격, 목적격, 소유격 등 문법적 격(Case)을 선택할 수 있는 전용 UI를 구현하고, 이를 카드에 다국어 배지로 표시했습니다.
- **결과**: 'I', 'me', 'my' 등 대명사의 역할을 명확히 구분하여 저장하고 학습할 수 있습니다.

---

## 📅 [2026-01-31 11:30:00] Phase 35: 태그 및 주석 국제화 완비 및 데이터 중복 제거

### ✅ 태스크 (Task)
- [x] Mode1Widget: 주석 라벨 국제화 및 자동 완성 시스템 태그 번역 적용
- [x] Mode2Widget: 하드코딩된 UI 텍스트 제거 및 주석/POS 중복 표시 방지
- [x] Mode3Widget: 하드코딩된 UI 텍스트 제거 및 주석/POS 중복 표시 방지
- [x] 전체 검증: 다국어 전환 시 모든 텍스트 정합성 확인

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 앱 내 모든 하드코딩된 텍스트(주석 라벨, 태그 등)를 다국어 리소스(`ARB`)로 교체하고, 카드 UI에서 중복되는 정보 표시를 정리했습니다.
- **결과**: 언어 설정 변경 시 UI가 완벽하게 해당 언어로 표시되며, 훨씬 깔끔한 정보 전달이 가능해졌습니다.

---

## 📅 [2026-01-31 10:45:00] Phase 34: 발음 연습 모드 '외운것' 필터링 추가 및 UI 명칭 통일

### ✅ 태스크 (Task)
- [x] AppState: `_getAvailableQuestions`에 `showMemorized` 필터링 적용
- [x] Mode3Widget: 상단 설정 영역에 '외운것' 토글 스위치 UI 추가
- [x] Mode3Widget: 카드 목록 표시 시 `filteredMaterialRecords`를 사용하도록 수정
- [x] Mode2 & 3: 태그 필터 버튼 명칭을 '태그 선택'으로 통일
- [x] 전 모드: 자동 완성 검색 결과에 주석(note) 표시 추가

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 발음 연습 모드에도 '외운 카드 보기/숨기기' 기능을 도입하고, UI 용어('태그 선택')를 복습 모드와 통일했습니다. 또한 자동 완성 검색 시 동음이의어 구분을 위해 주석(Note)을 함께 표시하도록 개선했습니다.
- **결과**: 모드 간 일관된 사용자 경험을 제공하며, 학습 효율이 향상되었습니다.

---

## 📅 [2026-01-31 10:15:00] Phase 33: 복습 모드 '외운것' 필터링 수정

### ✅ 태스크 (Task)
- [x] AppState: `filteredMaterialRecords` 게터에 `showMemorized` 필터링 추가
- [x] AppState: `setShowMemorized` 및 `toggleMemorizedStatus` 호출 시 데이터 동기화 확인
- [x] Mode2Widget: '외운것' 스위치 작동 및 카드 실시간 필터링 확인

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 복습 모드의 '외운것' 필터가 실제 목록 쿼리에 반영되지 않던 문제를 해결하고, 스위치 조작 시 리스트가 즉시 갱신되도록 수정했습니다.
- **결과**: 학습 완료된 카드를 숨기거나 다시 복습하는 기능이 정상적으로 작동합니다.

---

## 📅 [2026-01-31 09:55:00] Phase 32: 복습 및 발음연습 모드 UI 정정

### ✅ 태스크 (Task)
- [x] Mode2Widget: 품사 및 문장 종류 배지 국제화 적용
- [x] Mode3Widget: 품사 및 문장 종류 배지 국제화 적용 (`_getLocalizedTag` 추가)
- [x] Mode2 & 3: 카드 하단 태그 목록에서 시스템 태그 및 불필요한 태그 필터링

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 카드에 표시되는 품사(Pos) 및 문장 종류(Type) 배지가 영문 코드로 나오던 것을 다국어(한국어 등)로 표시되도록 수정하고, 중복되거나 내부적인 태그는 숨겼습니다.
- **결과**: 카드의 정보가 사용자 친화적인 언어로 명확하게 표시됩니다.

---

## 📅 [2026-01-31 09:30:00] Phase 31: 입력 모드 자동 완성 검색 수정

### ✅ 태스크 (Task)
- [x] Mode1Widget: `TextField`의 `onChanged`에서 `searchSimilarSources` 호출 연동
- [x] Mode1Widget: 검색 결과(`similarSources`)를 보여주는 자동 완성 목록 UI 추가
- [x] DatabaseService: `searchSimilarText` 로직 확인 및 필요 시 '시작하는 글자' 검색(`LIKE %`) 기능 강화

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 입력 모드에서 단어 입력 시 실시간으로 유사한(또는 시작하는) 기존 데이터를 검색하여 자동 완성 목록으로 보여주는 기능을 구현했습니다.
- **결과**: 중복 입력을 방지하고 기존 데이터를 쉽게 재사용할 수 있습니다.

---

## 📅 [2026-01-31 09:10:00] Phase 30: 문장 부호 자동 삽입

### ✅ 태스크 (Task)
- [x] AppState: 문장 부호 자동 삽입 로직 구현 (`_applyAutoPunctuation`)
- [x] AppState: `setSourceFormType` 호출 시 부호 자동 적용 연동
- [x] Mode1Widget: 문장 입력 후 종류 선택 시 실시간 반영 확인 및 검증

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 문장 종류(평서문, 의문문, 감탄문) 선택 시 텍스트 끝에 적절한 부호(., ?, !)가 자동으로 붙거나 교체되도록 로직을 추가했습니다.
- **결과**: 사용자가 일일이 부호를 수정할 필요 없이 문장 종류만 선택하면 됩니다.

---

## 📅 [2026-01-31 08:50:00] Phase 29: 태그 정교화 및 국제화

### ✅ 태스크 (Task)
- [x] "sentence" 태그 원인 조사 완료
- [x] AppState.clearTexts 업데이트 (메타데이터 초기화)
- [x] Mode1Widget 저장 로직 개선 (품사 vs 문장 종류)
- [x] Mode2Widget 시스템 태그 국제화 구현

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 시스템 내부적으로 사용되는 태그가 사용자에게 노출되는 문제를 해결하고, 품사와 문장 종류 선택 시 메타데이터가 꼬이지 않도록 초기화 로직을 강화했습니다.
- **결과**: 데이터 저장이 더 정확해지고 태그 관리가 깔끔해졌습니다.

---

### ✅ 태스크 (Task)
- [x] 모든 모드의 "단어/문장" 토글에서 아이콘을 제거하여 가로 길이 최적화
- [x] 필터 영역 위젯들(토글, 태그 버튼, 스위치) 사이의 가로 간격을 대폭 확장
- [x] 입력, 복습, 발음 연습 모드 전반에 걸친 UI 일관성 확보

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 상단 필터 영역의 시각적 복잡도를 낮추기 위해 토글에서 아이콘을 제거하고 텍스트 위주로 슬림하게 변경했습니다. 또한 위젯들 사이의 가로 간격을 넓혀 터치 오작동을 방지하고 가독성을 높였습니다.
- **결과**: 필터 UI가 더 정갈해졌으며, 한정된 가로 공간 내에서 각 요소들이 충분한 여백을 가져 훨씬 시원한 느낌을 줍니다.

---

## 📅 [2026-01-31 03:50:00] Phase 27: 복습 모드 필터 고도화 및 UI/UX 개선

### ✅ 태스크 (Task)
- [x] "외운 카드 표시/숨기기" 필터 기능을 AppState 및 SQL 쿼리에 구현
- [x] 복습 모드 상단 레이아웃을 3단(단어/문장, 태그, 외운것 토글)으로 개편
- [x] 카드 뒤집기(Flip) 시 자동으로 학습 완료 처리되는 UX 자동화 적용
- [x] 하단의 중복되는 체크 아이콘 제거로 UI 간소화

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 이미 외운 카드를 숨겨 학습 효율을 높일 수 있는 필터를 추가하고, 조작 편의성을 위해 주요 컨트롤을 한 줄에 나란히 배치했습니다. 또한 수동 체크의 번거로움을 줄이기 위해 카드 확인 시 자동으로 학습 상태가 기록되도록 개선했습니다.
- **결과**: 복습 모드가 훨씬 직관적이고 군더더기 없는 모습으로 바뀌었으며, 학습 흐름이 더욱 자연스러워졌습니다.

---

## 📅 [2026-01-31 03:10:10] Phase 26: 학습 카드 중복 노출 수정 및 태그 UI 개선

### ✅ 태스크 (Task)
- [x] SQL `GROUP BY group_id`를 적용하여 번역 쌍 중복 노출 버그 해결
- [x] "전체" 필터 옵션 제거 및 "단어" 모드를 기본값으로 설정
- [x] 시스템 태그("word", "sentence") 목록에서 필터링
- [x] 산만한 태그 리스트를 "태그 선택" 팝업 버튼으로 통합

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 데이터베이스 수준에서 중복을 원천 차단하여 데이터 신뢰성을 회복했습니다. 또한 UI 측면에서는 불필요한 옵션을 줄이고 태그 관리를 모달 형태로 통합하여 시각적 피로도를 대폭 낮췄습니다.
- **결과**: 사용자가 더 깔끔한 화면에서 본인이 설정한 태그에만 집중하며 학습할 수 있는 환경이 조성되었습니다.

---

## 📅 [2026-01-31 03:10:10] Phase 25: 입력 모드 UI 간소화 및 레이아웃 재배치

### ✅ 태스크 (Task)
- [x] 입력 모드의 언어 전환 UI를 축소하여 앱바 하단으로 이동
- [x] 앱바 내 "단어/문장" 토글과 "언어 전환" 버튼 나란히 배치
- [x] `Mode1Widget` 내 중복되는 기존 대형 언어 선택 UI 제거

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 입력 모드에서 공간을 많이 차지하던 기존 언어 스위처를 앱바의 유휴 공간(단어/문장 토글 옆)으로 이동시켜 메인 입력 영역의 가시성을 확보했습니다.
- **결과**: UI가 훨씬 깔끔해졌으며, 언어 전환과 모드 설정을 한곳에서 제어할 수 있어 사용자 경험이 개선되었습니다.

---

## 📅 [2026-01-30 17:34:10] Phase 24.2: 컴파일 및 색상 상수 오류 수정 (Hotfix)

### ✅ 태스크 (Task)
- [x] `lib/providers/app_state.dart`: 정의되지 않은 `isMemorized` 변수를 `sourceRow['is_memorized']`로 수정
- [x] `lib/widgets/mode2_widget.dart`: 유효하지 않은 색상 상수 `Colors.blackDE`를 `Colors.black87`로 수정

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 정적 분석에서 발견된 두 가지 치명적인 오류(정의되지 않은 변수 참조 및 존재하지 않는 색상 상수 사용)를 빌드 가능하도록 즉각 수정했습니다.
- **결과**: 컴파일 오류가 해소되어 애플리케이션 빌드가 정상적으로 진행됩니다.

---

## 📅 [2026-01-30 17:11:05] Phase 24.1: Mode 3 구문 오류 긴급 수정 (Hotfix)

### ✅ 태스크 (Task)
- [x] `lib/widgets/mode3_widget.dart` 내 위젯 트리 구조적 결함(중복 및 잘못된 괄호) 수정

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 단순한 콤마 오류가 아닌, 위젯 트리 중간에 삽입된 중복 괄호와 리스트 닫기(`], ), )`) 세트가 빌드 실패의 근본 원인임을 파악하여 이를 제거하고 트리를 정교하게 복구했습니다.
- **결과**: 위젯 트리의 무결성이 확보되어 모든 빌드 환경에서 정상적으로 컴파일 및 실행이 가능합니다.

---

## 📅 [2026-01-30 16:35:10] Phase 24: 복습/연습 카드 UI 고도화 (Card UI Enhancement)

# 워크스루 - [GUARD CHECK: PASSED] 복습/연습 카드 UI 고도화

복습(Mode 2) 및 발음 연습(Mode 3) 모드의 카드 UI를 전면 개편하여 학습에 필요한 상세 정보를 한눈에 파악할 수 있도록 고도화했습니다.

## 🌟 주요 변경 사항

### 1. 데이터 로드 로직 고도화
- `AppState.dart`의 `loadRecordsByTags`를 수정하여 **품사(POS), 문법 형태(Form Type), 원형(Root), 태그(Tags)** 데이터를 UI로 완벽히 전달하도록 쿼리 및 페어링 로직을 강화했습니다.

### 2. 프리미엄 카드 UI 디자인 (Mode 2 & 3)
- **품사 및 형태 시각화**: 파란색(품사) 및 주황색(형태) 배지를 사용하여 문법 정보를 직관적으로 표시합니다.
- **주석(Note) 및 원형(Root)**: 이탤릭체와 아이콘을 사용하여 부가 정보와 단어의 기원을 깔끔하게 배치했습니다.
- **태그 칩셋**: 해시태그 형태의 칩을 사용하여 카테고리 분류를 명확히 했습니다.
- **언어별 색상 구분**: 소스 언어(파란색 계열)와 타겟 언어(초록색 계열) 배지를 통해 언어 관계를 명확히 시각화했습니다.

### 3. 발음 연습 모드(Mode 3) 구조 개선
- **카드 목록 도입**: 기존에 하나씩만 보이던 방식에서 벗어나, 하단에 전체 카드 목록을 배치했습니다.
- **인터랙티브 연습**: 목록에서 특정 카드를 클릭하면 즉시 해당 항목의 발음 연습 세션이 시작되도록 `selectMode3QuestionById` 로직을 구현했습니다.

## 📸 핵심 UI 갤러리

![새로운 카드 디자인 컨셉](./premium_card_ui_mockup_1769758161732.png)

### Mode 2 (복습) 변경 사항
- 카드 확장 시 타겟 언어 배지(Green)와 TTS 아이콘 배치 최적화
- 품사/형태 배지 추가로 학습 효율 증대

### Mode 3 (연습) 변경 사항
- 하단 리스트에서 연습할 단어/문장 직접 선택 가능
- 현재 연습 중인 항목은 파란색 하이라이트 및 마이크 아이콘 표시

## 🛠️ 수정된 파일
- [app_state.dart](file:///c:/FlutterProjects/talkie/lib/providers/app_state.dart): 데이터 쿼리 및 세션 제어 로직 수정
- [mode2_widget.dart](file:///c:/FlutterProjects/talkie/lib/widgets/mode2_widget.dart): 복습 카드 UI 고도화
- [mode3_widget.dart](file:///c:/FlutterProjects/talkie/lib/widgets/mode3_widget.dart): 연습 모드 리스트 추가 및 UI 개선

## ✅ 검증 결과
- 모든 카드가 품사 및 형태 정보를 정확히 표시함 확인
- 복습 모드에서 카드 확장/축소 및 학습 완료 체크 정상 작동
- 연습 모드 리스트에서 항목 클릭 시 즉시 발음 연습 시작 및 정답 비교 로직 연동 확인

---

## 📅 [2026-01-31 03:10:10] Phase 27: Review Mode Filter & UI Refinement (2026-01-31)
- **New Feature**: "Show/Hide Memorized Cards" filter added to Review mode.
- **UI Refinement**: 
    - 3-column top layout: [Word/Sentence Toggle] | [Tag Select] | [Show Memorized Toggle].
    - Removed redundant study check button from the bottom of cards.
- **UX Automation**: Automatically marks a card as "studied" in the current session when it is flipped (expanded).
- **AppState**: Added `_showMemorized` state and updated `loadRecordsByTags` query logic.

---

## 📅 [2026-01-31 03:10:10] Phase 26: Fix Duplicate Cards & Filter/Tag UI Refinement (2026-01-31)
- **Resolved**: Duplicate cards showing in Review/Practice modes by implementing `GROUP BY group_id` in SQL queries.
- **UI Refinement**: Removed "All" filter option; defaults to "Word" across all modes.
- **Tag UI Improvements**:
    - Removed system tags ("word", "sentence") from the visible list.
    - Replaced the cluttered tag chip list with a "Select Tags" button that opens a checkbox dialog.
    - Placed Toggle and Tag Button side-by-side for better layout.
- **AppState**: Added `clearSelectedTags` and improved filter initialization logic.

---

## 📅 [2026-01-30 16:22:28] Phase 23: 저장 및 표시 동기화 오류 수정 (Save & Display Sync Fix)

### ✅ 태스크 (Task)
- [x] `saveTranslation` 내 로컬 목록(`loadRecordsByTags`) 새로고침 누락 수정
- [x] 신규 저장 시 `is_memorized=0` 명시적 설정
- [x] 모드 전환 시 데이터 최신화 보장 로직 검증
- [x] 전체 기능 검증 및 릴리스 배포

### 📝 워크스루 (Walkthrough Summary)
- **핵심 조치**: 
    1. `AppState.saveTranslation` 로직에 로컬 리스트 즉시 갱신(`loadRecordsByTags`) 추가.
    2. 모든 신규 데이터를 '학습 미완료(`is_memorized=0`)' 상태로 저장하여 복습 리스트에 즉시 반영.
    3. 모드 전환(`switchMode`) 시 항상 최신 데이터를 로드하도록 구조 개선.
- **결과**: 사용자가 단어/문장을 저장하는 즉시 "복습" 및 "발음 연습" 모드의 카드 리스트에서 확인 가능함.

---

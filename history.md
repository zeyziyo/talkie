# 📜 Antigravity 작업 이력 (Chronological History)

이 파일은 Antigravity 에이전트가 수행한 모든 작업의 태스크와 워크스루 내용을 최신순으로 기록하는 통합 이력장입니다.

---

## 📅 [2026-02-03 08:30:00] Phase 65: Help Section & Tutorial Consistency (Feb 3, 2026)
- **Problem**: Tutorial highlights were missing targets or pointing to wrong areas due to disconnected GlobalKeys. Help Dialog JSON example was outdated.
- **Action**:
    - Wired `_swapButtonKey`, `_mode1ToggleKey` in `HomeScreen`.
    - Passed keys to `Mode1Widget` constructor.
    - Updated `HelpDialog` JSON example with `default_type` and correct schema.
- **Result**: Tutorial now accurately highlights all Mode 1 elements. Help section provides valid JSON examples.

## 📅 [2026-02-03 08:30:00] Phase 64: 멀티 페르소나 채팅 시스템 (Multi-Persona Chat System)

### ✅ 태스크 (Task)
- [x] **Database Schema**: `dialogue_participants` 테이블 신설 및 `ChatParticipant` 모델 구현.
- [x] **UI Overhaul**:
    - **Smart Header**: AI 및 파트너 말풍선 위에 **[언어 | 성별 | 이름]** 제어판 추가.
    - **Rename**: "Stranger" 등 참가자 이름을 즉시 수정하는 팝업 구현.
    - **Language Switch**: 드롭다운을 통해 참가자의 언어를 변경하면 즉시 **재번역(Retranslation)** 및 DB 업데이트.
    - **Gender Toggle**: 남/녀 아이콘 토글 시 즉시 DB 업데이트 및 목소리 변경.
- [x] **Engine Logic**:
    - **Retranslation**: 언어 변경 시 기존의 'Native Meaning'을 유지한 채 새로운 언어로 재번역하여 표시.
    - **TTS Heuristics**: Google TTS 엔진이 성별(Male/Female)을 명시적으로 지원하지 않을 경우, 인덱스 기반(1번=여성, 2번=남성)으로 추측하는 2차 로직 구현.
- [x] **Ad-hoc Participant**: 이름이 없는 "Stranger" 참가자가 등장해도 즉시 로컬 DB에 등록하여 대화의 맥락 유지.

### 📝 워크스루 (Walkthrough)
- **문제**: 기존 채팅은 단순히 "AI vs User" 구도로 고정되어 있어, 다양한 역할극(Roleplay)이나 3자 대화, 혹은 언어/성별 설정을 자유롭게 바꾸는 시나리오에 대응하기 어려웠음.
- **해결**:
    - **참가자 명부(Registry)** 개념을 도입하여 대화방마다 등장인물을 별도로 관리.
    - 채팅 화면에서 바로 등장인물의 **페르소나(언어, 성별, 이름)**를 수정할 수 있는 직관적인 UI 제공.
    - 특히 TTS 엔진이 성별을 못 찾는 고질적인 문제(Android Google TTS)를 해결하기 위해, 이름 매칭 실패 시 2번째 목소리를 남성으로 간주하는 휴리스틱을 추가하여 "성별 토글" 기능의 신뢰성을 확보함.

## 📅 [2026-02-02 15:45:00] Phase 62: 대화 관리 기능 강화 (Dialogue Management Enhancements)

### ✅ 태스크 (Task)
- [x] **Database & Model**: `dialogue_groups` 테이블에 `note` 컬럼 추가(v9) 및 모델 반영.
- [x] **Auto Title**: 대화 종료 시 제목을 "Chat N"(개수 기반)으로 자동 생성.
- [x] **Chat History**:
    - **검색(Search)**: 제목, 노트, 페르소나 키워드 검색 지원.
    - **필터(Filter)**: 날짜 범위(Date Range) 필터링 구현.
- [x] **UX 개선**:
    - **Optimistic Update**: 대화 시작/종료 시 로컬 리스트를 즉시 갱신하여 딜레이 제거.
    - **Note Field**: 대화 저장 시 메모(Note) 입력 필드 추가.
- [x] **Hotfix 4**: `ChatHistoryScreen` 빌드 오류(Missing Import) 긴급 수정.

### 📝 워크스루 (Walkthrough)
- **문제**: 대화 저장 시 사용자가 제목을 일일이 입력해야 했고, 저장 후 목록 갱신에 딜레이가 있었음. 또한 과거 대화를 찾기 어려웠음.
- **해결**:
    - `getDialogueCount`를 이용해 "Chat 1", "Chat 2" 등 고유 제목 자동 생성.
    - `AppState`에서 Supabase 응답을 기다리지 않고 로컬 리스트를 선제적으로 업데이트(Optimistic)하여 반응 속도 극대화.
    - 대화 목록 화면에 검색 바와 날짜 선택기를 추가하여 탐색 편의성 강화.

## 📅 [2026-02-02 11:00:00] Phase 61: 빌드 및 배포 (Build & Release v1.0.9)

### ✅ 태스크 (Task)
- [x] **Version Bump**: `1.0.8+13` -> `1.0.9+14` 상향.
- [x] **Hotfix 2**: `saveTranslationLink` 호출 시 필수 인자 누락 수정.
- [x] **Hotfix 3**: `loadRecordsByTags` SQL 쿼리 문법(`LIMIT` vs `GROUP BY` 순서) 수정.

## 📅 [2026-02-02 09:00:00] Phase 60: 'Formal' 태그 공식 지원 및 입력 보호 (Formal Tag & User Input Protection)

### ✅ 태스크 (Task)
- [x] **사용자 입력 보호**: AI 자동 분석이 사용자가 직접 선택한 품사나 문장 종류를 덮어쓰지 않도록 수정 (User Select > AI Auto-fill).
- [x] **'존댓말' 태그 분리**: AI가 분석한 'Formal' 속성을 문장 종류에 덮어씌우지 않고, 별도의 **"존댓말 (Polite)"** 태그로 자동 추가.
- [x] **카테고리 추가**: 문장 종류 선택 메뉴에 **"존댓말"** 항목 공식 추가.
- [x] **UI 수정**: 입력 모드의 "상세 정보" 팝업 타이틀을 **"상세 분류"**로 변경.

### 📝 워크스루 (Walkthrough)
- **문제**: AI가 한국어 문장의 존댓말 여부를 "Formal"이라고 반환하면서, 사용자가 선택한 "평서문(Statement)" 등의 설정을 강제로 덮어쓰는 문제 발생.
- **해결**: 
  - `AppState.translate` 로직을 수정하여, 사용자가 입력한 값이 없을 때만 AI 값을 채워넣도록 변경.
  - "Formal" 값이 오면 `_sourceFormType`이 아닌 `_aiDetectedTags` 리스트에 저장.
  - `Mode1Widget`에서 이 리스트를 확인하여 "존댓말" 태그를 칩으로 추가.

## 📅 [2026-02-01 22:45:00] Phase 59: 고급 필터 및 검색 조건 강화 (Advanced Filters)

### ✅ 태스크 (Task)
- [x] **검색 조건 강화**: 복습(Mode 2) 및 연습(Mode 3) 모드에 **"시작 글자(Starts With)"** 검색 필터 추가 (DB `LIKE 'A%'` 쿼리 최적화).
- [x] **최근 항목 필터**: **"최근 N개 보기"** (Limit) 기능을 추가하여 최신 학습 데이터만 집중적으로 복습 가능.
- [x] **UI 개선**: 필터 팝업의 "태그 선택" 버튼을 "검색 조건"으로 변경하고, 내부에서 태그/시작글자/개수제한을 통합 설정하도록 개편.
- [x] **L10n**: 관련 UI 텍스트(시작 글자, 초기화 등) 국제화 적용.

## 📅 [2026-02-01 19:30:00] Phase 58: Mode 1/2 일관성 및 데이터 무결성 (Consistency & Data Integrity)

### ✅ 태스크 (Task)
- [x] **저장 로직 조정**: 소스 단어는 "번역" 버튼 클릭 시 즉시 DB에 저장되지 않음.
- [x] **데이터 무결성**: "저장" 버튼 클릭 시에만 저장되도록 하여 번역 쌍이 항상 완전하게 유지되도록 보장.
- [x] **중복 방지**: `getLanguageRecordId`를 구현하여 "고아(orphan)" 레코드 삽입 없이 기존 단어 존재 여부 확인.
- [x] **레거시 백필**: `saveTranslation`에 레거시 테이블 백필 로직을 추가하여 API 재사용 최적화를 유지하면서 데이터 무결성 강화.

## 📅 [2026-02-01 18:55:00] Phase 57: Mode 1 자동 완성 최적화 (Optimize Autocomplete)

### ✅ 태스크 (Task)
- [x] **Debounce 추가**: `Mode1Widget` 입력창에 `Timer`를 이용한 300ms 디바운스 로직 적용.
- [x] **Performance**: 불필요한 DB 조회 횟수 감소 및 UI 반응성 향상.

## 📅 [2026-02-01 13:50:00] Hotfix: 빌드 오류 수정 (Fix Build Error)

### ✅ 태스크 (Task)
- [x] **Fix Error**: `AppState`에서 `SpeechService`의 정의되지 않은 메서드 `stopListening`을 `stopSTT`로 교체하여 빌드 오류 해결.
- [x] **Cleanup**: `Mode3PracticeCard`의 미사용 변수 정리.

## 📅 [2026-02-01 13:30:00] Phase 56: Mode 3 리스트 구조 개편 (Refactor List to Include Expandable Cards)

### ✅ 태스크 (Task)
- [x] **New List Structure**: Mode 3의 상단 고정 플레이어를 제거하고, 리스트 내 카드가 직접 확장되는 방식으로 변경.
    - 초기 상태: 모국어(Source) 부분만 표시.
    - 터치 시: 카드가 확장되며 발음 연습 영역(Target, Mic, Controls) 노출.
- [x] **Add Features**: 확장된 카드 영역에 **초기화(Reset)** 버튼 추가 (학습 상태 초기화).
- [x] **Code Cleanup**: 사용하지 않는 변수 및 Deprecated 코드(`withOpacity` -> `withValues`) 정리.

## 📅 [2026-02-01 12:45:00] Phase 55: 용어 변경 및 UI 통일 (Terms & UI Consistency)

### ✅ 태스크 (Task)
- [x] **L10n**: "완료한것" -> **"끝낸것"** (KO), "Completed" -> **"Finished"** (EN) 변경.
- [x] **UI Unification**: Mode 3의 상단 컨트롤 바(단어/문장 토글, 태그 버튼, "끝낸것" 스위치) 디자인을 Mode 2와 완전히 동일하게 통일 (비율, 색상, 아이콘 크기 등).

## 📅 [2026-02-01 12:15:00] Phase 54: Mode 3 UI 통합 (UI Unification)

### ✅ 태스크 (Task)
- [x] **New Widget**: `Mode3PracticeCard` 생성 (Mode 2 디자인 + Mode 3 기능)
- [x] **Integration**: `Mode3Widget` 연습 영역을 새로운 카드로 교체.
- [x] **Features**:
  - 모국어(Source)가 상단에 표시됨.
  - "완료(Completed)" 체크 가능 (Target ID 기반).
  - 연습 상태(Listening/Result)에 따라 하단 영역이 동적으로 변화 (마이크, 점수, 리셋/스킵 버튼).
- [x] **Bugfix**: `toggleMemorizedStatus` 내 `_currentMode3Question` 동기화 코드가 누락되어 UI가 즉시 갱신되지 않는 문제 수정.

### 📝 워크스루 (Walkthrough)
- `Mode3PracticeCard.dart`를 신규 생성하여 `Mode2Card`의 프리미엄 그래픽 디자인(Gradient, Shadow)을 적용.
- `Mode3Widget.dart`에서 기존 `_buildActivePracticeArea`를 `Mode3PracticeCard` 호출로 대체하고 중복 코드 정리.

## 📅 [2026-02-01 11:30:00] Phase 53: '외운것' 용어 변경 및 로직 수정 (Rename & Fix Logic)

### ✅ 태스크 (Task)
- [x] **UI Text**: "외운것"을 "완료한것"으로 변경 (학습의 종료 의미 강화)
- [x] **Logic Fix**: 
  - '완료' 상태가 **학습 언어(Target Language)**에만 적용되도록 수정 (기존: Source 포함 전체 그룹)
  - `Mode2Card`에서 `target_id`를 사용하여 명확한 대상 지정

### 📝 워크스루 (Walkthrough)
- **변경 사항**: 
  - `app_ko.arb`: "외운것" -> "완료한것" (EN: Memorized -> Completed)
  - `AppState`: `loadRecordsByTags`에서 `record` 맵 생성 시 `target_id` 추가 및 `is_memorized`를 Target Row 기준으로 설정.
  - `AppState`: `toggleMemorizedStatus`를 단일 ID(`id`) 대상 업데이트로 원복.
  - `Mode2Card`: 토글 동작 시 `target_id` 사용하도록 변경.

## 📅 [2026-02-01 10:45:00] Phase 52: 카드 삭제 및 외운것 상태 오류 수정 (Fix Deletion & Toggle Logic)

### ✅ 태스크 (Task)
- [x] **Bug Fix**: 카드가 삭제되어도 화면에 남는 문제 해결
- [x] **Bug Fix**: '외운것' 체크 아이콘이 반응하지 않거나 상태가 동기화되지 않는 문제 해결
- [x] **Logic Update**: 
  - `Mode2Card.dart`에서 개별 Row ID(`id`)가 아닌 통합 Group ID(`group_id`)를 사용하도록 변경
  - `DatabaseService`에 `toggleMemorizedStatusByGroup` 추가하여 번역 쌍(Source-Target) 전체의 상태 동기화 보장

### 📝 워크스루 (Walkthrough)
- **원인**: 통합 스키마 도입 후 `AppState.deleteRecord`는 `group_id`를 요구하지만 UI는 기존의 row `id`를 전달하여 삭제가 실패함. 또한 '암기 완료' 토글 시 한쪽 언어(Source)만 업데이트되어 반대쪽 언어나 그룹 전체 상태에 반영되지 않음.
- **해결**: 
  - UI(`Mode2Card`)에서 `group_id`를 추출하여 전달하도록 수정.
  - `DatabaseService` 및 `AppState`가 그룹 단위로 `is_memorized` 상태를 업데이트하도록 로직 강화.

## 📅 [2026-02-01 10:15:30] Phase 51: Mode 2 UI 및 기능 수정 (Fix Interaction & Styling)

### ✅ 태스크 (Task)
- [x] **UI 수정**: Mode 2 카드 텍스트에 잘못 적용되던 취소선(Strikethrough) 스타일 제거
- [x] **기능 수정**: '외운것 보기' 스위치 토글 시 목록이 갱신되지 않던 문제 해결 (`loadRecordsByTags` 호출 추가)
- [x] **검증**: 체크 아이콘 및 스위치 정상 작동 확인

### 📝 워크스루 (Walkthrough)
- **문제**: Mode 2 카드에서 학습 완료(Check)된 항목에 취소선이 그어져 가독성을 해쳤으며, '외운것 보기' 스위치를 켜도 목록이 갱신되지 않아 사용자가 변화를 인지할 수 없었음.
- **해결**:
  - `Mode2Card.dart`에서 `TextDecoration.lineThrough` 로직을 제거하여 텍스트가 깨끗하게 표시되도록 수정.
  - `AppState.dart`의 `setShowMemorized` 메서드에 `loadRecordsByTags()` 호출을 추가하여, 스위치 조작 시 즉시 DB에서 목록을 다시 불러오도록 개선.

## 📅 [2026-02-01 09:12:30] Phase 50: 'Singular' 태그 국제화 (L10n: Singular)

### ✅ 태스크 (Task)
- [x] **국제화 (L10n)**: 영문으로 표시되던 'singular' 태그를 모든 지원 언어(42개)에 대해 로컬라이즈
- [x] **Automation**: `update_arbs.py` 스크립트를 작성하여 전체 ARB 파일에 `formSingular` 키 및 번역(es: Singular, ja: 単数形, zh: 单数 등) 일괄 적용
- [x] **UI 적용**: `Mode2Card` 및 `Mode3Card`의 `_getLocalizedTag` 메서드에 `singular` 케이스 추가

### 📝 워크스루 (Walkthrough)
- **문제**: 복습 모드에서 다른 품사 태그는 한글로 나오는데 'singular'만 영어로 표시됨.
- **해결**:
  - `update_arbs.py` 자동화 스크립트를 통해 한국어, 일본어, 중국어, 스페인어 등 주요 언어에 대한 번역을 포함하여 전체 42개 언어 ARB 파일에 `formSingular` 키를 추가함.
  - UI 위젯에서 해당 키를 참조하도록 코드를 업데이트.



## 📅 [2026-02-01 08:58:10] Phase 49: Mode 2 언어 배지 크기 조정 (UI Tweak)

### ✅ 태스크 (Task)
- [x] **Mode 2 (복습)**: 모국어(소스 언어) 배지의 크기가 다른 메타데이터 배지보다 크게 표시되던 문제 수정
- [x] **스타일 통일**: 패딩(`8,4` -> `6,2`) 및 모서리 반경(`8` -> `4`)을 조정하여 우측의 태그들과 시각적 균형을 맞춤

### 📝 워크스루 (Walkthrough)
- **문제**: Mode 2 카드의 상단 언어 배지(`Container`)가 다른 배지들보다 과도한 패딩을 가지고 있어 시각적으로 불균형했음.
- **해결**: `Mode2Card.dart` 내 해당 `Container`의 속성을 `_buildBadge` 헬퍼 메서드와 동일한 수치로 조정함.



## 📅 [2026-02-01 08:12:30] Phase 48: 카드 삭제 기능 복구 (Fix Deletion Logic)

### ✅ 태스크 (Task)
- [x] **Mode 3 (발음 연습)**:
  - 삭제 다이얼로그(`_showDeleteDialog`)가 누락되어 있던 문제 해결
  - `InkWell.onLongPress` 이벤트를 추가하여 삭제 기능 연결
- [x] **UI/UX 개선 (Mode 2 & 3)**:
  - 기존: `InkWell` > `Container(color)` 구조로 인해 터치 피드백(물결 효과)이 배경색에 가려짐
  - 변경: `Container` > `Material(transparent)` > `InkWell` 구조로 재배치하여 터치 반응성 확보 및 제스처 인식율 개선

### 📝 워크스루 (Walkthrough)
- **문제**: 프리미엄 디자인 적용 과정에서 Mode 3의 삭제 로직이 이관되지 않았으며, Mode 2는 디자인 구조 상 터치 영역이 명확하지 않았음.
- **해결**:
  - `Mode3Card.dart`에 `_showDeleteDialog` 메서드를 구현하고 롱프레스 이벤트에 연결.
  - 두 카드의 위젯 트리를 수정하여 `Material` 위젯이 `Container`의 장식 위에서 터치 효과를 그릴 수 있도록 개선.



## 📅 [2026-02-01 08:05:30] Phase 47: 빌드 오류 긴급 수정 (Hotfix: Mode 2 Build)

### ✅ 태스크 (Task)
- [x] **Mode2Card**: `AppLocalizations` import 누락 및 `AppState` 메서드명 오타(`toggleStudied`, `deleteMaterialRecord`) 수정
- [x] **Mode2Widget**: `_getLocalizedTag` 메서드 복구 (Autocomplete 기능 필수 의존성)
- [x] **Legacy Cleanup**: `_buildRecordCardOld` 메서드 블록 주석 처리로 충돌 방지

### 📝 워크스루 (Walkthrough)
- **원인**: CI/CD 빌드 과정에서 `Mode2Card.dart`의 import 경로 오류와 `AppState`의 존재하지 않는 메서드 호출로 인한 컴파일 실패. 또한 `Mode2Widget`에서 리팩토링 중 `Autocomplete` 기능에 필요한 헬퍼 메서드가 실수로 삭제됨.
- **조치**: 
  - `package:talkie/l10n/app_localizations.dart` 올바른 경로로 수정.
  - `toggleMemorizedStatus`, `deleteRecord` 등 정확한 메서드명으로 교체.
  - `_getLocalizedTag` 메서드 복원 및 레거시 코드 안전하게 비활성화.
- **결과**: `flutter analyze` 통과 확인, 빌드 정상화 예상.



## 📅 [2026-02-01 04:38:23] Phase 46: 프리미엄 카드 디자인 적용 (Premium Card Design)

### ✅ 태스크 (Task)
- [x] **Mode 2 (복습)**: 기존 흰색 단일 카드에서 그라데이션(`LinearGradient`), 둥근 모서리, 그림자(`BoxShadow`)가 적용된 모던한 UI로 전면 교체
- [x] **Mode 3 (발음 연습)**: 선택된 항목에 프리미엄 그라데이션(Blue-Purple)을 적용하여 시각적 몰입도 강화
- [x] **리팩토링**: `mode2_card.dart` 및 `mode3_card.dart` 분리를 통해 코드 유지보수성 향상

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: `Mode2Card`와 `Mode3Card` 위젯을 신규 생성하여 기존의 복잡한 `_buildRecordCard` 메서드를 대체했습니다.
- **디자인 개선**:
  - **색감**: `#667eea` -> `#764ba2`의 고급스러운 그라데이션 적용
  - **가독성**: 선택된 상태에서는 흰색 텍스트로 반전시켜 명시성 확보
  - **인터랙션**: 상태에 따른 부드러운 전환과 그림자 효과 추가
- **결과**: 앱의 전반적인 Look & Feel이 훨씬 세련되게 개선되었으며, 사용자가 현재 학습 중인 항목을 더 명확하게 인지할 수 있게 되었습니다.



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
- [x] `lib/widgets/mode3_widget.dart` 내 중복 `SizedBox` 및 콤마 구문 오류 제거

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: UI 리스트 끝부분에 잘못 포함된 빈 `SizedBox`와 콤마를 삭제하여 빌드 실패 문제를 해결했습니다.
- **결과**: 다트 문법 오류가 해소되어 정상적으로 빌드가 가능한 상태로 복구되었습니다.

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
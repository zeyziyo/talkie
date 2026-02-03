# 📜 Antigravity 작업 이력 (Chronological History)

이 파일은 Antigravity 에이전트가 수행한 모든 작업의 태스크와 워크스루 내용을 최신순으로 기록하는 통합 이력장입니다.

---

## 📅 [2026-02-03 10:30:00] Phase 68: 가져오기 로직 업데이트 (Import Logic Update)

### ✅ 태스크 (Task)
- [x] **DatabaseService**: `importFromJsonWithMetadata` 메서드를 최신 JSON 스키마(v66)에 맞춰 전면 수정.
- [x] **Meta Data**: 파일 내 `meta` 객체의 제목, 출처, 태그 정보를 우선적으로 파싱.
- [x] **Participants**: 대화형 자료의 참여자 목록(`participants`)을 읽어 `dialogue_participants` 테이블에 자동 등록.
- [x] **Extended Fields**: 단어/문장의 세부 정보(`pos`, `root`, `form_type`, `tags`)를 누락 없이 DB에 저장.
- [x] **Cleanup**: 레거시 테이블(`translations`) 쓰기 로직 제거 및 코드 최적화.

### 📝 워크스루 (Walkthrough)
- **문제**: Phase 66에서 데이터 구조는 고도화되었으나, 정작 "기기에서 자료 가져오기" 기능은 구버전 로직을 사용하고 있어 새로운 데이터가 제대로 표시되지 않음.
- **해결**:
    - `DatabaseService`의 가져오기 로직을 재작성하여 `meta` 및 `participants` 필드를 지원하도록 개선.
    - 기존의 중복 저장 로직(`saveTranslationLinkWithMaterial`)을 제거하고, 통합 스키마(`words`, `sentences`)에만 데이터를 저장하도록 변경하여 데이터 무결성 확보.
    - 이제 사용자가 최신 형식의 JSON 파일을 가져오면, 태그와 분류 정보가 완벽하게 복원됨.

## 📅 [2026-02-03 10:15:00] Phase 67: 채팅 화면 성별 토글 UI 복구 (Chat UI Fix)

### ✅ 태스크 (Task)
- [x] **UI 수정**: "Voice Settings" 메뉴 제거로 사라진 성별 토글 기능을 사용자 말풍선 헤더에 복구.
- [x] **User Header**: AI 말풍선과 동일한 "스마트 헤더" 스타일을 사용자 말풍선에도 적용 (언어 표시 + 성별 토글).

### 📝 워크스루 (Walkthrough)
- **문제**: AppBar 메뉴 정리 과정에서 사용자 목소리 성별을 바꿀 수 있는 기능이 제거됨.
- **해결**: 사용자 말풍선 상단에 성별 아이콘(Face/Face_3)을 배치하여, 터치 시 즉시 성별이 변경되고 다시 말하기(Re-speak)가 수행되도록 직관적으로 개선함.

## 📅 [2026-02-03 10:00:00] Hotfix: GitHub Pages 빌드 대기 현상 수정
- **문제**: `docs/materials` 폴더의 수많은 JSON 파일로 인해 Jekyll 빌드가 30분 이상 지연됨.
- **해결**: `docs/.nojekyll` 파일을 추가하여 Jekyll 처리를 우회, 정적 파일 서빙 속도 정상화.

## 📅 [2026-02-03 09:30:00] Phase 66: 예제 자료 구조 업데이트 (Example Materials)
- **문제**: `docs/materials` 내의 예제 JSON 파일들이 최신 스키마(Phase 66 적용)를 반영하지 않아 테스트에 부적합함.
- **해결**: `first_meeting.json`, `greetings.json` 등 주요 예제 파일에 `meta`, `participants`, `default_type` 등 신규 필드 적용 완료.

## 📅 [2026-02-03 09:00:00] Phase 65: 도움말 및 튜토리얼 정합성 수정 (Help & Tutorial)
- **문제**: 튜토리얼 하이라이트가 엉뚱한 위치를 가리키거나, 도움말 예제 JSON이 구버전임.
- **해결**: 
    - `HomeScreen`의 GlobalKey(`_swapButtonKey` 등)를 `Mode1Widget`으로 전달하여 하이라이트 위치 보정.
    - 도움말 다이얼로그(`HelpDialog`)의 JSON 예시 코드를 최신 스키마로 현행화.

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

## 📅 [2026-02-02 18:00:00] Phase 63: 문서 업데이트 (Documentation Update)
- **내용**: `README.md` 및 `ROADMAP`에 Phase 62(대화 관리)까지의 변경 사항을 반영하고, 최신 기능(검색, 필터, 노트)을 문서화함.

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
- [x] **New Version**: `1.0.8+13` -> `1.0.9+14`로 버전 상향.
- [x] **Hotfix 2**: `saveTranslationLink` 호출 시 필수 인자 누락되는 문제 수정.
- [x] **Hotfix 3**: `loadRecordsByTags` SQL 쿼리 문법(`LIMIT`와 `GROUP BY` 순서) 수정.

## 📅 [2026-02-02 09:00:00] Phase 60: 'Formal' 태그 공식 지원 및 입력 보호 (Formal Tag & Input Protection)

### ✅ 태스크 (Task)
- [x] **사용자 입력 보호**: 사용자가 직접 선택한 품사나 문장 종류를 AI 자동 분석 결과가 덮어쓰지 않도록 로직 수정.
- [x] **'존댓말' 태그 분리**: AI가 분석한 'Formal' 속성을 별도의 **"존댓말 (Polite)"** 태그로 자동 추가하도록 변경.
- [x] **카테고리 추가**: 문장 종류 선택 메뉴에 **"존댓말"** 항목을 공식적으로 추가.
- [x] **UI 수정**: 입력 모드의 "상세 정보" 팝업 타이틀을 **"상세 분류"**로 변경하여 직관성 개선.

### 📝 워크스루 (Walkthrough)
- **문제**: AI가 한국어 문장의 존댓말 여부를 "Formal"이라고 반환하면서, 사용자가 선택한 "평서문(Statement)" 등을 강제로 덮어쓰는 문제가 있었음.
- **해결**: 
  - `AppState.translate`에서 사용자 입력값이 없을 때만 AI 분석 결과를 반영하도록 변경.
  - "Formal" 속성을 `_aiDetectedTags` 리스트로 관리하고, 이를 "존댓말" 태그 칩으로 변환하여 표기함.

## 📅 [2026-02-01 22:45:00] Phase 59: 고급 필터 및 검색 조건 강화 (Advanced Filters)

### ✅ 태스크 (Task)
- [x] **검색 조건 강화**: 복습(Mode 2) 및 연습(Mode 3) 모드에 **"시작 글자(Starts With)"** 필터 구현.
- [x] **최근 항목 필터**: **"최근 N개 보기"** (Limit) 기능을 추가하여 최신 데이터 집중 복습 지원.
- [x] **UI 개선**: 필터 팝업을 개선하여 태그, 시작 글자, 개수 제한을 한곳에서 설정하도록 통합.
- [x] **L10n**: 필터 관련 UI 텍스트(조건, 초기화 등) 국제화 적용.

## 📅 [2026-02-01 19:30:00] Phase 58: Mode 1/2 일관성 및 데이터 무결성 (Consistency & Integrity)

### ✅ 태스크 (Task)
- [x] **저장 로직 조정**: 소스 언어 입력 시 '번역'만으로는 DB에 저장되지 않도록 변경.
- [x] **데이터 무결성**: 사용자가 명시적으로 "저장" 버튼을 눌렀을 때만 번역 쌍이 저장됨.
- [x] **중복 방지**: `getLanguageRecordId`를 통해 중복된 단어의 고아(Ill-formed) 레코드 생성 방지.
- [x] **레거시 백필**: API 재사용성을 유지하면서 데이터 무결성을 위해 레거시 테이블 호환 로직 추가.

## 📅 [2026-02-01 18:55:00] Phase 57: 자동 완성 최적화 (Optimize Autocomplete)

### ✅ 태스크 (Task)
- [x] **Debounce 도입**: `Mode1Widget` 입력창에 300ms 디바운스(Debounce)를 적용하여 과도한 DB 조회 방지.
- [x] **성능 최적화**: 입력 중 쿼리 빈도를 줄여 UI 반응 속도 향상.

## 📅 [2026-02-01 13:50:00] Hotfix: 빌드 오류 수정 (Fix Build Error)

### ✅ 태스크 (Task)
- [x] **오류 수정**: `AppState`에서 정의되지 않은 `stopListening` 메서드를 `stopSTT`로 교체.
- [x] **정리**: `Mode3PracticeCard`의 미사용 변수 제거.

## 📅 [2026-02-01 13:30:00] Phase 56: Mode 3 리스트 구조 개편 (Expandable Cards)

### ✅ 태스크 (Task)
- [x] **리스트 구조 변경**: 상단 고정 플레이어를 제거하고, 리스트 내 카드가 직접 확장되는 방식으로 변경.
    - 기본 상태: 모국어(Source)만 표시.
    - 선택 시: 카드가 확장되며 연습 영역(Target, 마이크 등) 노출.
- [x] **기능 추가**: 확장된 카드에 **초기화(Reset)** 버튼을 추가하여 학습 상태 리셋 지원.
- [x] **코드 정리**: 미사용 변수 및 Deprecated 코드(`withOpacity` -> `withValues`) 수정.

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



## 📅 [2026-02-01 04:00:00] Phase 45: 모드 4 드롭다운 수정 & 대화창 UI 정리
- [x] **HomeScreen**: 모드 3 전환 시 대화 목록 자동 로드 및 드롭다운 응답성 개선.
- [x] **ChatScreen**: 불필요한 드롭다운 제거 및 타이틀 텍스트 단순화.
- [x] **Partner Icon**: 파트너 아이콘 기능 확인 및 답변 준비.

## 📅 [2026-02-01 03:45:00] Phase 44: 빌드 오류 수정 (HomeScreen Import)
- [x] **Fix**: `HomeScreen`에 `chat_screen.dart` import 구문 추가하여 컴파일 에러 해결.

## 📅 [2026-02-01 03:30:00] Phase 43: 콩글리시 해결 & 모드 4 드롭다운 추가
- [x] **HomeScreen**: 모드 4(AI 채팅) 앱바에 '대화 목록' 드롭다운 배치.
- [x] **SpeechService**: 텍스트 언어 감지(한글/영어)를 통해 발음 언어를 강제로 설정하여 콩글리시 발음 문제 차단.
- [x] **ChatScreen**: 저장 시 대화 목록 자동 갱신 로직 추가.

## 📅 [2026-02-01 03:15:00] Phase 42: 채팅 목록 미표시 수정 (Offline-First)
- [x] **AppState**: 대화 목록 로딩 로직을 로컬 데이터 우선(Offline-First)으로 변경하여 반응 속도 개선.
- [x] **ChatScreen**: 드롭다운 UI의 배경, 테두리, 아이콘 등을 개선하여 시인성 확보.

## 📅 [2026-02-01 03:00:00] Phase 41: AI 음성 발음 및 채팅 기록 드롭다운 수정
- [x] **SpeechService**: AI 영어 발음 문제 원인(Locale 설정) 분석 및 해결.
- [x] **Verify**: 사용자 음성과 AI 음성 설정 적용 로직 검증.
- [x] **ChatScreen**: 채팅 기록 드롭다운 UI 구현 및 데이터 연동, 저장 후 갱신 확인.

## 📅 [2026-02-01 02:45:00] Phase 40: 태그 국제화(L10n) 및 중복 표시 수정
- [x] **Mode2Widget**: `_getLocalizedTag`에 대소문자 정규화 적용.
- [x] **Filter**: 시스템 태그 필터링을 대소문자 무관(Case-insensitive)으로 변경.
- [x] **UI**: 태그 칩에도 국제화 적용 완료.

## 📅 [2026-02-01 02:30:00] Phase 39: 빌드 오류 긴급 수정 (Hotfix)
- [x] **AppState**: 중복된 `setShowMemorized` 제거 및 `fetchRecommendations` 예외 처리 강화.
- [x] **UI Widgets**: `l10n` 정의 추가 및 `BoxShadow` 로직 단순화, `const` 오류 수정.

## 📅 [2026-02-01 02:15:00] Phase 38.5: AI 채팅 음성 연령 제한 제거
- [x] **SpeechService**: 연령 관련 키워드(grandpa, grandma 등) 제거하여 30대 톤 이슈 해결.
- [x] **ChatScreen**: 음성 설정 팝업 내 불필요한 문구 삭제.

## 📅 [2026-02-01 02:00:00] Phase 38: AI 채팅 음성 개선 및 대화 목록 기능 보강
- [x] **SpeechService**: `_setBestVoice` 로직 개선 (성별 매칭 실패 시 언어 기반 Fallback).
- [x] **AppState**: `saveDialogueProgress` 호출 시 대화 목록 정렬 및 갱신 보장.

## 📅 [2026-02-01 01:45:00] Phase 37: Mode 3 태그 선택 기능 및 실시간 필터
- [x] **AppState**: `_validateCurrentMode3Question` 구현, 필터 변경 시 현재 문제 갱신.
- [x] **Mode3Widget**: 상단 바에 '태그 선택' 버튼 추가 및 즉시 반영 확인.

## 📅 [2026-02-01 01:30:00] Phase 36: 대명사 격 선택 기능 구현
- [x] **AppState**: `pronounCaseCategories` 상수 추가.
- [x] **L10n**: 대명사 격(주격, 목적격 등) 번역 키 추가.
- [x] **UI**: 입력 모드 드롭다운 및 복습/연습 모드 태그 표시에 격 정보 반영.

## 📅 [2026-02-01 01:15:00] Phase 35: 태그 및 주석 국제화 완비
- [x] **UI**: 주석 라벨 국제화 및 자동 완성 시스템 태그 번역 적용.
- [x] **Fix**: 하드코딩된 텍스트 제거 및 주석/POS 중복 표시 방지.

## 📅 [2026-02-01 01:00:00] Phase 34: 발음 연습 모드 '완료한것' 필터링
- [x] **AppState**: `_getAvailableQuestions`에 `showMemorized` 필터 적용.
- [x] **Mode3Widget**: 상단에 '완료한것' 토글 스위치 추가 및 카드 목록 필터링 연동.
- [x] **Common**: 태그 필터 버튼 명칭을 '태그 선택'으로 통일.

## 📅 [2026-02-01 00:45:00] Phase 33: 복습 모드 '완료한것' 필터링 수정
- [x] **AppState**: `filteredMaterialRecords` 게터에 필터 로직 추가.
- [x] **Sync**: 스위치 토글 시 데이터 동기화 및 실시간 필터링 확인.

## 📅 [2026-02-01 00:30:00] Phase 32: 복습 및 발음연습 모드 UI 정정
- [x] **UI**: 품사 및 문장 종류 배지 국제화(`_getLocalizedTag`) 적용.
- [x] **Filter**: 카드 하단 태그 목록에서 시스템 태그 및 불필요한 태그 숨김 처리.

## 📅 [2026-02-01 00:15:00] Phase 31: 입력 모드 자동 완성 검색 수정
- [x] **Mode1Widget**: 입력창 변경 시 `searchSimilarSources` 호출 연동.
- [x] **UI**: 검색 결과(`similarSources`)를 보여주는 자동 완성 목록 UI 구현.
- [x] **Database**: `searchSimilarText` 로직 확인.

## 📅 [2026-01-31 23:30:00] Phase 30: 문장 부호 자동 삽입
- [x] **AppState**: `_applyAutoPunctuation` 로직 구현 및 `setSourceFormType` 연동.
- [x] **Verify**: 문장 종류 선택 시 부호가 실시간으로 반영되는지 확인.

## 📅 [2026-01-31 23:00:00] Phase 29: 태그 정교화 및 국제화
- [x] **Fix**: "sentence" 태그 문제 원인 조사 및 해결.
- [x] **AppState**: 메타데이터 초기화 로직(`clearTexts`) 업데이트.
- [x] **Mode2Widget**: 시스템 태그 국제화 구현.

## 📅 [2026-01-31 22:30:00] Phase 28: 필터 UI 정교화 (아이콘 제거 및 간격 조정)
- [x] **UI**: 모드별 "단어/문장" 버튼 아이콘 제거 및 컨트롤 간격 확대.
- [x] **Consistency**: 홈, 모드 2, 모드 3 간의 UI 일관성 확보.

## 📅 [2026-01-31 22:00:00] Phase 27: 복습 모드 필터 및 UI 개선
- [x] **Feature**: "외운 카드 표시/숨기기" 필터 구현 (SQL 쿼리 업데이트).
- [x] **Layout**: 상단 레이아웃을 3단(형태/태그/토글)으로 개편.
- [x] **UX**: 카드 뒤집기 시 자동 학습 완료 처리 및 중복 아이콘 제거.

## 📅 [2026-01-31 21:30:00] Phase 26: 카드 중복 수정 및 필터/태그 UI 개선 (Fix Duplicate Cards)
- [x] **SQL**: `GROUP BY group_id` 적용으로 번역 쌍 중복 노출 해결.
- [x] **Filter**: "전체" 옵션 제거 및 "단어" 기본값 설정.
- [x] **Tags**: 시스템 태그 필터링 및 "태그 선택" 팝업 통합.
- [x] **Logic**: 필터 초기화(`clearSelectedTags`) 로직 개선.

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

## 📅 [2026-01-30 16:00:00] Phase 22: 재학습 필요 항목 우선 표시 및 탭별 검색
- [x] **Database**: `is_memorized` 컬럼 추가 및 마이그레이션.
- [x] **Service**: `searchByType`, `toggleMemorizedStatus` 메서드 구현.
- [x] **AppState**: 기본 뷰에서 `is_memorized=0` 필터링 로직 구현.
- [x] **UI**: 탭별 검색 적용 및 학습 완료 체크 추가.

## 📅 [2026-01-30 15:30:00] Phase 21: 검색 위젯 자동완성 확대
- [x] **Mode2/3**: 검색바를 Autocomplete 위젯으로 교체.
- [x] **Mode1**: UI 검증 및 개선.

## 📅 [2026-01-30 15:00:00] Phase 20: 스마트 원형 선택
- [x] **Database**: 단어 검색(Autocomplete용) API 추가.
- [x] **AppState**: 단어 검색 연동 기능 구현.
- [x] **Mode1**: 원형 입력 필드를 Autocomplete 위젯으로 교체.

## 📅 [2026-01-30 14:30:00] Phase 19: 형용사/부사 문법 형태 확장
- [x] **AppState**: 형용사 문법 형태(Grammar Form) 카테고리 추가.
- [x] **L10n**: 원급/비교급/최상급 레이블 추가.
- [x] **UI**: 상세 정보 팝업에 형용사/부사 전용 드롭다운 추가.

## 📅 [2026-01-30 14:00:00] Phase 18: 상세 정보 팝업 개선
- [x] **AppState**: 동사 문법 형태(Grammar Form) 카테고리 추가.
- [x] **L10n**: 주석 및 문법 형태 레이블 추가.
- [x] **UI**: 주석 라벨 변경 및 동사 전용 폼 추가.

## 📅 [2026-01-30 13:30:00] Phase 17: AI 채팅 수정 및 사용자 편의 기능
- [x] **Fix**: AI 채팅 저장 및 조회 오류 수정.
- [x] **Cloud**: 개인용 클라우드 백업 및 비동기 동기화 최적화.
- [x] **UI**: 단어/문장 토글 앱바 하단 이동 (기본값 '단어').
- [x] **Feature**: AI 채팅 TTS 정지 아이콘 추가.

## 📅 [2026-01-30 13:00:00] Phase 16: 최종 검증 및 빌드 배포
- [x] **Release**: 버전 범프 (1.0.8+13) 및 GitHub Actions 배포.

## 📅 [2026-01-29 18:00:00] Phase 14: 시스템 안정화 및 UI 간소화
- [x] **Fix**: SQLite 스키마 오류 수정 (words 테이블 root).
- [x] **Cleanup**: 미사용 코드 정리 및 자료집 배너/아이콘 제거.

## 📅 [2026-01-29 15:00:00] 출시 후 핫픽스 & 최적화
- [x] **Fix**: 수익 모델, GPS 타임아웃, 사용량 한도 수정.
- [x] **Perf**: JSON 가져오기 성능 최적화 (INSERT OR IGNORE).
- [x] **Chat**: AI 채팅 파트너 모드 및 GPS 컨텍스트 통합.
- [x] **Import**: 로컬 파일 가져오기 및 자료집 가시성 문제 해결.

## 📅 [2026-01-29 12:00:00] Phase 12: 데이터 구조 혁신 (통합 스키마)
- [x] **Schema**: 통합 스키마(`words`, `sentences`, `item_tags`) 설계.
- [x] **Migration**: 데이터 마이그레이션 및 서비스 리팩토링.
- [x] **Refactor**: 전 모드 태그 필터링 및 스마트 검색 적용.

## 📅 [2026-01-28 18:00:00] UI 및 기능 정교화: 최종 릴리스 준비
- [x] **Tutorial**: 튜토리얼 하이라이트 및 좌표 수정.
- [x] **Chat**: 채팅 종료/저장 워크플로 및 이중 언어 표시.
- [x] **L10n**: 43개 언어 다국어 완전 동기화.
- [x] **Docs**: 마케팅 에셋 생성 및 README/ROADMAP 업데이트.

## 📅 [2026-01-27 18:00:00] Phase 11: AI 채팅 & 대화형 데이터 구조
- [x] **Schema**: 대화 스키마(`dialogue_groups`) 설계 및 마이그레이션.
- [x] **UI**: AI 채팅 화면 구현 (메신저 스타일, 자동 제목).
- [x] **UX**: 복습 모드 내 대화 맥락 UI 연결.

## 📅 [2026-01-26 18:00:00] Phase 10: AI 기반 학습 추천 시스템
- [x] **Backend**: Supabase Edge Function 구현.
- [x] **UI**: 추천 UI 및 간편 저장 로직 구현.

## 📅 [2026-01-25 18:00:00] Phase 4-9: 데이터 동기화 및 핵심 기능 안정화
- [x] **Sync**: "이중 쓰기" (SQLite + Supabase) 구현.
- [x] **Logic**: 동음이의어 중의성 해소 (Disambiguation).
- [x] **UX**: 스와이프 내비게이션 및 자료집 관리.
- [x] **Fix**: 삭제 버그 수정 및 ARB 동기화.

## 📅 [2026-01-23 18:00:00] Phase 1-3: 번역 안전 로직 및 기초 공사
- [x] **Safety**: "Filtered: PROFANITY" 오류 수정 및 표준화.
- [x] **Logic**: 오류 팝업 및 캐시 무효화 로직.
- [x] **Rule**: 로컬 빌드 금지 규칙 수립.

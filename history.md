# 📜 Antigravity 작업 이력 (History Index)

본 파일은 프로젝트의 통합 이력 인덱스입니다.
상세한 작업 내용은 아래의 분류별 파일에서 확인할 수 있습니다.

---

## 📂 카테고리별 상세 이력 (Detailed History by Category)

### 1. [🔄 데이터 동기화 및 가져오기 (Data Sync & Import)](docs/history/HISTORY_SYNC_IMPORT.md)
- **주요 내용**: 서버 동기화, 온라인 자료실, 피벗 언어 전략, 데이터 마이그레이션.
- **최근 이슈**: 온라인 가져오기 노출 문제, 그룹 ID 분리 (해결됨).

### 2. [🎨 UI 및 모드 (UI & Modes)](docs/history/HISTORY_UI_MODES.md)
- **주요 내용**: Mode 1~4 기능 구현, UI 디자인(프리미엄 카드), 필터링, 검색, 튜토리얼.
- **최근 이슈**: Mode 3 튜토리얼 하이라이트, 채팅 TTS 언어 감지.

### 3. [🛠️ 설정 및 빌드 (Setup & Build)](docs/history/HISTORY_SETUP_BUILD.md)
- **주요 내용**: CI/CD 파이프라인(GitHub Actions), 배포, 문서화 규칙, 국제화(L10n).
- **최근 이슈**: 홈 화면 빌드 오류, 문서 통합.

---

## 📅 최근 주요 변경 로그 (Recent Changelog)

### [2026-02-08] UX 및 튜토리얼 일관성 강화 (Phase 75)
- **UI**: Mode 1, 2, 3 위젯에 '자료 선택' 버튼 추가 및 GlobalKey 바인딩 완료.
- **Tutorial**: 각 모드별 튜토리얼 시나리오에 '자료 선택' 안내 단계 추가.
- **Terminology**: 용어 "입력/복습/연습/채팅"으로 전면 개편 및 ARB 동기화.
- **Help**: 도움말 JSON 예제를 최신 v66 스키마(dialogues 권장)로 교체.

### [2026-02-08] Documentation Refactor
- **Action**: `history.md` 분리 및 `docs/PROJECT_RULES.md` 생성.
- **Goal**: 문서 관리 효율화 및 "Single Source of Truth" 확립.

### [2026-02-08] Pivot Sync Implementation
- **Feature**: 영어(English) 데이터를 기준으로 다국어 자료 자동 그룹핑.
- **Fix**: 서로 다른 파일명을 가진 자료들도 "English Title"로 통합 관리.

### [2026-02-08] Online Library Refactor (Phase 76.5)
- **UI Enhancement**: `OnlineLibrary` 접근성을 `MetadataDialog`로 통합하여 일관성 확보.
- **Tag Integration**: `Library`에서 가져온 파일명을 태그로 자동 등록 및 `MetadataDialog`에서 필터링 지원.
- **Code Cleanup**: 중복된 `Online Library` 아이콘 제거 및 위젯 구조 최적화.

### [2026-02-09] Build Fixes & Polish (Phase 76.5)
- **Fix**: 호환성 문제 해결을 위해 `home_screen.dart`, `mode1_widget.dart`, `mode3_widget.dart`의 모든 빌드 오류 수정.
- **Syntax**: 괄호 누락, 중복 case 문, 잘못된 파라미터 등 문법 오류 전수 조사 및 수정 완료.

### [2026-02-09] Metadata Dialog Redesign & Mode 1 Fixes (Phase 77)
- **Refactor**: 'Metadata Dialog'에서 'Online Library' 아이콘 제거 (역할 분리 명확화).

### [2026-02-10] Hotfix: Online Library Import & UI Refresh (Phase 78.1)
- **Fix**: 번역(Translation)이 없는 단일 언어 자료집 가져오기 시 항목 누락 오류 수정.
- **UX**: 자료 가져오기 성공 시 목록 자동 새로고침 로직 추가.
- **Stability**: `saveUnifiedRecord` 내 단일 언어 데이터 처리 예외 상황 방어 로직 강화.

### [2026-02-10] File-Name-Based Smart Sync & Tag UI (Phase 78)
- **Sync Strategy**: 자료집 동기화 키를 영어 제목에서 **파일 이름**(예: `nouns_1.json` -> `nouns_1`)으로 변경하여 안정성 극대화.
- **Native Tag**: 현지어 제목(예: "명사 1")을 태그로 자동 저장하여 사용자 가독성 및 필터링 편의성 제공.
- **UI/UX**: `SearchFilterDialog` 내에 **'제목 태그' 전용 드롭다운** 신규 배치 및 일반 태그(품사 등)와 시각적 분리.
- **Dialogue**: 대화(Dialogue) 가져오기 시에도 파일명 기반 동기화 로직 전면 적용.

### [2026-02-09] UX 복구 및 기능 재배치 (Phase 77.5)
- **Revert**: 사용자의 강력한 요청으로 Mode 3 명칭을 "Practice"에서 "**발음 연습 (Speaking Practice)**"으로 원복.
- **New Feature**: `SearchFilterDialog` 위젯 신규 생성 (태그 필터, 최근 N개 제한, 시작 문자 검색).
- **UX Improvement**: Mode 2/3의 설정(Tune) 버튼 클릭 시 편집 창(`MetadataDialog`) 대신 **필터 창(`SearchFilterDialog`)**이 뜨도록 변경.
- **Accessibility**: 숨겨졌던 'Online Library' 기능을 **AppBar 상단 메뉴**로 꺼내어 접근성 대폭 강화.

- **UX**: 'Metadata Dialog' 내 '전체 태그(자료집 제목)' 드롭다운 상시 노출로 변경.
- **Fix**: Mode 1 튜토리얼 하이라이트가 작동하지 않던 문제 해결 (`materialDropdownKey` 바인딩 추가).
- **Cleanup**: 위젯 내 불필요한 `onOpenLibrary` 콜백 및 import 제거.
- **HOTFIX**: Fixed build errors (Mode2 syntax, Mode3 import, SearchFilterDialog logic).
- **HOTFIX 2**: Resolved `HelpDialog` undefined errors and invalid arguments in Mode 2/3.
- **Logic**: `AppState.importRemoteMaterial`에서 Pivot Subject(영어 제목) 강제 로직을 제거, 각 언어별 원본 제목(Native Subject)을 태그로 사용하도록 변경.
- **UI**: Mode 2 및 Mode 3 태그 선택 다이얼로그(`_showTagSelectionDialog`)에서 현재 소스 언어와 일치하는 자료집 태그만 필터링하여 노출.
- **UI REVERT**: Mode 2/3의 임의 추가된 헤더 및 상세 분류 버튼 삭제, '온라인 자료실'을 AppBar 메뉴로 이동 (사용자 지시).



---

> **Note**: 과거의 시행착오(Trial & Error) 로그는 삭제되었으며, 각 파일에는 **"최종 구현된 결과(Finalized Features)"** 위주로 기록됩니다.

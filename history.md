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

### [2026-02-11] Mode 1 UI Aesthetics & Emoji Removal (Phase 84.5)
- **UI**: `HomeScreen` 앱바 하단에 커스텀 단어/문장 토글(글자 크기 16px)을 배치하고, `Mode1Widget` 내부의 중복된 토글 행을 삭제하여 레이아웃 최적화.
- **Rules**: 모든 Mode 1 UI(주석, 상세 분류, 번역 실행, 언어 배지, 어근 배지, 저장 버튼 등)에서 이모지를 전면 제거하여 전문적인 프리미엄 디자인 완성. 하드코딩된 한국어 문자열을 `l10n` 키로 전면 교체하여 80개 언어 지원 규격 준수.
- **Font**: "상세 분류" 버튼 및 앱바 토글의 텍스트 크기를 확대하여 고령자 및 시인성 중심의 가독성 확보.
- **Repair**: 버튼 아이콘 제거 과정에서 발생한 구조적 오류를 신속히 복구하고 일반적인 `ElevatedButton`으로 스타일 통일.
- **Misc**: `RecommendationWidget` 등의 보조 위젯에서도 불필요한 이모지(✨)를 삭제하여 일관성 유지.

### [2026-02-11] Mode 1 UI Renewal & Root Detection (Phase 83-84)
- **UI**: Mode 1 입력 화면을 Row 기반의 프리미엄 레이레이아웃으로 리뉴얼 (상단 바, 액션 라인 최적화).
- **Feature**: AI 번역 시 어근(Root) 자동 감지 및 결과창 🌱 배지 표시 기능 구현.
- **Repair**: `mode1_widget.dart` 내 중첩 괄호 누락으로 인한 빌드 오류 및 품사 번역(`l110n`) 오타 긴급 수정 완료.
- **Metadata**: 상세분류 다이얼로그(`MetadataDialog`)를 학습 효율 중심(태그/주석 분리)으로 재설계.
- **Docs**: Markdown 기반 통합 마인드맵(`system_flow_mindmap.md`) 생성 및 불필요한 HTML 문서 제거.

### [2026-02-10] Critical Build Repair & L10n Expansion (Phase 82)
- **Fix**: `AppState.dart` 파일의 중괄호 구조 손상으로 인한 대규모 컴파일 에러를 전수 조사하여 복구 완료.
- **Sync**: `Mode1Widget` 등에서의 메서드 호출 명칭을 `fetchAiRecommendations`, `refillUsage`로 신규 규격에 맞춰 전면 동기화.
- **DB**: `DatabaseService.importFromJsonWithMetadata` 파라미터 누락(`fileName`, `userId`) 수정으로 런타임 및 빌드 안정성 확보.
- **L10n**: 필터 및 위젯 UI용 신규 키(`titleTagSelection`, `generalTags` 등) 80개 언어 전체 자동 번역 및 배포 완료.
- **Clean**: `online_library_dialog.dart` 내 중복 코드 및 구문 오류 정리.


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

### [2026-02-10] Data Integrity & Global Default Titles (Phase 81.5)
- **L10n**: "나의 단어장", "나의 문장집" 기본 제목 80개 언어 전체 자동 번역 및 적용.
- **Logic**: 저장 시 제목이 없거나 'Basic'인 경우 지역화된 기본 제목 강제 부여로 자료 유실 및 미노출 원천 차단.
- **Cloud**: Supabase 동기화 시 `type`(word/sentence)과 `tags` 정보를 포함하여 서버-로컬 간 데이터 분류 체계 완벽 일치.
- **Import**: JSON 임포트 시 `default_type` 엄격 준수 및 언어 정보 누락 시 앱 설정 스마트 상속 로직 구현.

### [2026-02-10] Mode 1 Input Enhancement & Save Reliability (Phase 81.4)
- **UI**: Mode 1(입력)에 자료집 선택/생성용 Autocomplete 필드 추가 및 기본 힌트 지역화.
- **Autocomplete**: 메인 입력란에 기존 데이터 기반 자동 완성 도입으로 입력 편의성 및 데이터 중복 방지 강화.
- **Persistence**: `AppState` 내 저장 로직을 `DatabaseService.saveUnifiedRecord`로 통합하여 데이터 가시성 및 정합성 결함 해결.

### [2026-02-10] Visibility Recovery & Search Integration (Phase 81.2 - 81.3)
- **UI**: 모국어 중심 검색 및 다이얼로그 통합으로 목표어 번역 유무와 관계없는 원활한 데이터 접근 보장.
- **Fix**: 학습 카드 가시성 정밀 복구 및 성능 최적화로 복습 모드(Mode 2)의 실시간 데이터 반영 속도 개선.

### [2026-02-10] Unified Schema Integration & Visibility Fix (Phase 79.3)
    - Updated `getStudyMaterials` to count words/sentences via Unified Schema.
    - Modified `loadRecordsByTags` to use group-id subquery for cross-language search.
    - Fixed empty filters in `SearchFilterDialog`. [f85bd2e9-884e-484d-92c4-6ce3d1216e75]
- **Phase 79.4: Legacy Table Removal & DB Cleanup** (2026-02-10)
    - Removed legacy `translations` table and redundant `word_translations`, `sentence_translations`.
    - Upgraded DB version to 12 with physical DROP TABLE cleanup.
    - Cleaned up 10+ legacy methods and migration tools in `DatabaseService`.
    - Maintained full UI search/filter integrity. [f85bd2e9-884e-484d-92c4-6ce3d1216e75]

### [2026-02-10] Filter UI & Visibility Refinement (Phase 79.2)
- **Fix**: 자료 임포트 시 `overrideSubject`에 내부 키(syncKey) 대신 모국어 제목(mName)을 사용하여 필터 불일치 해결.
- **UI**: `SearchFilterDialog`에서 태그 로딩 여부와 상관없이 내 자료집 제목을 드롭다운에 상시 노출 (4개 드롭다운 고정).
- **Logic**: `DatabaseService.importFromJsonWithMetadata`에 `syncKey` 인자를 추가하여 보이지 않는 곳에서의 동기화와 보이는 곳에서의 제목을 분리 관리.
- **Build**: `DatabaseService.saveUnifiedRecord` 파라미터 불일치(`subject` vs `syncSubject`)로 인한 빌드 오류 수정.
- **L10n**: 필터 UI 관련 신규 키(`generalTags`, `notSelected` 등) 80개 언어 전체 자동 번역 및 동기화 완료.

### [2026-02-10] EMERGENCY: Build Failure Resolution (Phase 79.1)
- **Fix**: `DatabaseService` 내 `getStudyMaterials` 중복 선언 제거.
- **Fix**: `AppState.loadRecordsByTags` 내 `targetRow`에 대한 Null Safety 보완 (`targetRow?['id']`).
- **Fix**: `SearchFilterDialog` 내 `_buildDropdown` 함수에 `l10n` 객체를 명시적으로 전달하여 스코프 오류 해결.

### [2026-02-10] EMERGENCY: Build Fix (Phase 78.2)
- **Fix**: Accidental deletion of `sourceText` and `targetText` in `lib/services/database_service.dart` causing CI build failure.

### [2026-02-10] Data Visibility & Filter UI Redesign (Phase 79)
- **Fix**: 모국어 중심 데이터 로딩 로직으로 목표어 번역이 없는 자료의 노출 문제 해결.
- **UI**: 검색 필터 다이얼로그 4단 드롭다운(제목1 + 태그3)으로 개편.
- **Optimization**: 현재 선택된 모국어와 연관된 태그들만 필터링해서 보여주는 로직 추가.
- **Stability**: `DatabaseService.getAllStudyMaterials`를 `getStudyMaterials`로 통합/정리.

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

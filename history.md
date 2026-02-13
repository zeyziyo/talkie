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

### [2026-02-13] Pivot Sync Precision & Performance Optimization (Phase 105 ~ 108)
- **UI/L10n**: 문체 배지(`Style Badge`)를 80개 언어 전체에 적용하고, Mode 2 카드에서 문체 정보를 시각적으로 확인할 수 있도록 개선 (Phase 105).
- **Integrity**: 서버의 정식 그룹 ID(`Canonical ID`) 확인 및 로컬 임시 ID의 자동 재연결(`Relinking`) 로직을 구현하여 데이터 정합성 강화 (Phase 106).
- **Sync**: 인터넷이 끊긴 상태에서 저장된 항목이 나중에 백그라운드 동기화될 때도 서버의 정식 ID를 찾아 자동으로 통합하도록 `BackgroundSyncService` 고도화 (Phase 107).
- **Performance**: `sqflite`의 `Batch` 객체와 SQL 서브쿼리를 활용하여 수천 개의 레코드와 태그를 한꺼번에 삽입하는 고속 임포트 엔진 구축 (Phase 108).
- **Database**: 인덱스 추가(`v16`)를 통해 대량 데이터 조회 성능을 최적화하고 시스템 안정성을 확보.

### [2026-02-13] Focus & Autocomplete UX Maintenance (Phase 109)
- **Bug Fix**: 복습/발음 연습 모드에서 검색어 초기화 시 자동 완성 목록(Overlay)이 사라지지 않던 잔상 문제를 해결.
- **Repository**: `WordRepository` 및 `SentenceRepository`의 검색 메서드에 빈 검색어 가드를 추가하여 불필요한 DB 조회를 차단.
- **UI/UX**: `Autocomplete` 위젯의 컨트롤러와 `AppState` 간의 동기화 로직을 강화하고, 삭제 버튼 클릭 시 오버레이가 즉시 닫히도록 개선.

### [2026-02-13] Device Library & Localization (Phase 111)
- **Feature**: 기기 자료실(Device Library) 기능 추가. HomeScreen 메뉴에 로컬 JSON 파일 임포트 기능 연결.
- **Improved**: 임포트 시 동일한 제목과 언어의 자료가 존재할 경우 중복 임포트를 차단하고 안내 메시지 표시 로직 추가.
- **L10n**: 다국어(ES, JA) 번역 보완 및 중복 제목 에러 메시지(importDuplicateTitleError) 추가.

### [2026-02-13] Dialogue Fix & Mode 2 Isolation (Phase 112)
- **Bug Fix**: 새 대화 저장 후 채팅 히스토리에서 내용이 나타나지 않던 문제(로드 쿼리 언어 코드 불일치 등) 해결.
- **Isolation**: 사용자 요청에 따라 대화(Dialogue) 자료를 복습 모드(Mode 2) 학습 자료 목록에서 완전히 제거하여 채팅 전용으로 격리.
- **Integrity**: `DialogueRepository`의 메시지 조회 쿼리를 강화하고, `AppStateChat`에 참가자 생성 시 널 참조 방지 가드를 추가하여 안정성 확보.
- **Reporting**: 대화 목록 로드 시 'User'/'user' 대소문자를 구분하지 않고 메시지 수를 정확히 카운트하도록 개선.

### [2026-02-13] Import Visibility & ID Type Mismatch Fix (Phase 110)
- **Bug Fix**: 자료 임포트 시 `syncKey`와 `id` 필드의 타입 불일치로 인해 임포트된 자료가 즉시 화면에 노출되지 않던 문제 해결.
- **Integrity**: `DatabaseService.importFromJsonWithMetadata` 로직을 개선하여 임포트된 자료의 `id`가 `int` 타입으로 정확히 저장되도록 수정.
- **UI/UX**: 임포트 완료 후 `AppState`의 `notifyListeners()`를 호출하여 UI가 즉시 업데이트되고, 임포트된 자료가 화면에 바로 표시되도록 개선.

### [2026-02-12] Supabase 스키마 정규화 및 양방향 동기화 정합성 완료 (Phase 98 + 98.1 + 98.2 + 98.3)
- **Schema Alignment**: 로컬 SQLite와 Supabase 공용 DB의 `words`, `sentences` 테이블 스키마를 1:1로 일치시켰습니다. 불필요한 필드는 각 테이블에서 제거하여 데이터 순수성을 확보했습니다.
- **Normalization**: `words`는 `pos`/`form_type`/`root`, `sentences`는 `pos`/`style` 필드로 명확히 분리하여 전문화된 정보만 보관합니다.
- **Selective Persistence**: 로컬 저장(`DatabaseService`) 및 클라우드 동기화 시 각 테이블 스키마에 맞는 필드만 선별적으로 저장하도록 모든 유입 경로를 수정하였습니다.
- **Export Patch**: 로컬 DB 테이블 간 컬럼 불일치로 인한 JSON 내보내기(`UNION ALL`) 오류를 해결하고 신규 필드들을 내보내기 대상에 포함했습니다.
- **Edge Function**: AI 분석 결과를 전송 시 단어/문장 타입에 맞춰 동적으로 필드를 매핑하도록 업데이트했습니다.

### [2026-02-12] Technical Debt Cleanup & Optimization (Phase 96)
- **Centralization**: `lib/constants/app_constants.dart`를 생성하여 분산되어 있던 서버 URL, GitHub 경로, 기본 학습 자료 명칭 등을 상수로 통합 관리.
- **Refactoring**: `AppStateSettings` 내의 로캘 맵핑 로직(`getServiceLocale`)을 하나로 통합하고 중복된 레거시 메서드를 제거하여 코드 응집도 향상.
- **Optimization**: `TranslationService`에 안전성 검증 에러 메시지 맵핑 도우미(`getErrorMessage`)를 추가하여 `AppState`의 복잡한 UI 분기 로직을 정규화.
- **Integrity**: 전체 파트 파일(`Mode 1, 2, 3, Chat`)의 내부 메서드 참조 명칭을 일관성 있게 동기화하고, `flutter analyze`를 통해 잠재적 오류를 전수 제거.

### [2026-02-12] UI Finish & Critical Download Fix (Phase 95)
- **Repair (Online Library)**: `baseRepoUrl`에서 실제 서버에 존재하지 않던 `/docs` 경로를 삭제하여 온라인 자료실의 404 다운로드 오류(Download failed)를 근본적으로 해결.
- **UX (Mode 1)**: 번역 결과창에 부적절하게 표시되던 "번역할 텍스트를 입력하세요" 힌트를 "**번역 결과 - 수정 가능함** (Translation result - editable)"으로 변경하고 80개 언어 전체에 적용.
- **UI (Mode 3)**: 발음 연습 모드 카드의 상단 헤더에 **언어 이름(전체 명칭)**과 **주석(Note)**을 가로 한 줄로 나란히 배치하여 레이아웃 최적화.
- **Relocation (Hint)**: 상단 텍스트 영역에 노출되던 **목표 언어 힌트**(첫 글자 힌트 등)를 하단 오디오 컨트롤 영역(Listening/Result View)으로 이전하여 가독성 강화 및 디자인 간소화.


### [2026-02-12] UI Refinement & Mode 1 Reset Fix (Phase 94)
- **Repair**: Mode 1(입력) 초기화(X) 버튼 클릭 시 입력란뿐만 아니라 '상세 분류'의 주석(Note) 필드도 함께 초기화되도록 `AppState.clearTexts` 로직 수정.
- **UI/UX**: Mode 2(복습) 상단의 4가지 주요 컨트롤(검색 조건, 끝낸것, 자동 재생, 재생 시차)을 가로 한 줄로 재정렬하고 `SingleChildScrollView`를 적용하여 공간 효율성 극대화.
- **Terminology**: "생각 시간 간격" 용어를 더 직관적인 "**재생 시차** (Playback Delay)"로 변경하고 80개 언어 전체 동기화.
- **Card Design**: `Mode2Card`에서 중복 노출되던 원형(Root Word) 표시를 제거하고, 태그와 주석을 첫 번째 줄(품사 뒤)로 통합 배치하여 학습 카드의 세로 높이 축소 및 시인성 개선.
- **Stable**: `AppStateAuth.dart`의 온라인 자료실 다운로드 URL 구성 시 ISO 코드를 서버 디렉토리명으로 변환하는 `getLangDir` 로직의 안정성 재검증 및 `importing` 메시지 지역화 처리.

### [2026-02-11] Mode 1 UI Aesthetics & Emoji Removal (Phase 84.5)
- **UI**: `HomeScreen` 앱바 하단에 커스텀 단어/문장 토글(글자 크기 16px)을 배치하고, `Mode1Widget` 내부의 중복된 토글 행을 삭제하여 레이아웃 최적화.
- **Rules**: 모든 Mode 1 UI(주석, 상세 분류, 번역 실행, 언어 배지, 어근 배지, 저장 버튼 등)에서 이모지를 전면 제거하여 전문적인 프리미엄 디자인 완성. 하드코딩된 한국어 문자열을 `l10n` 키로 전면 교체하여 80개 언어 지원 규격 준수.
- **Font**: "상세 분류" 버튼 및 앱바 토글의 텍스트 크기를 확대하여 고령자 및 시인성 중심의 가독성 확보.
- **Repair**: 버튼 아이콘 제거 과정에서 발생한 구조적 오류를 신속히 복구하고 일반적인 `ElevatedButton`으로 스타일 통일.
- **Docs**: `main_view_flow.md` 및 `metadata_dialog_flow.md` 설계 문서를 실제 UI(토글 위치, 버튼 레이블) 및 "No Emoji" 규칙과 완벽히 동기화.
- **Misc**: `RecommendationWidget` 등의 보조 위젯에서도 불필요한 이모지(✨)를 삭제하여 일관성 유지.
- **Hotfix (CI/Build)**: `mode1_widget.dart`의 하위 위젯 중첩 시 발생한 초과 괄호(Syntax Error)를 제거하고 미사용 메서드(`_buildToggleButton`)를 정리하여 GitHub Actions 빌드 정상화 완료. `withOpacity` 경고 사항을 최신 `withValues`로 일괄 교체.

### [2026-02-11] 앱 흐름도(App Flow Diagram) 전용 폴더 및 고도화 (Phase 85)
- **Structure**: 설계 문서 관리 효율화를 위해 `docs/flows/` 전용 폴더 생성 및 기존 흐름도 파일(`.md`) 이동.
- **Interactive Flow**: 단순 화면 설명을 넘어, UI 요소 옆에 로직 마커(`[n]`)를 배치하고 하단에 실제 코드(클래스, 함수명)를 매핑한 **'로직 명세(Logic Reference)'** 섹션 신규 구현.
- **Navigation**: 위젯 설계도 간 상호 이동 링크(`app_flow_main.md` <-> `app_flow_metadata.md`)를 구축하여 문서 간 연결성 강화.
- **Sync**: 파일 이동에 맞추어 `system_flow_mindmap.md` 대시보드 내 Mermaid 클릭 링크 및 목록 최신화.

### [2026-02-11] 데이터베이스 레거시 전수 제거 및 v14 통합 (Phase 87)
- **Fix**: 번역 재사용 시 발생하던 `DatabaseException(no such table: translations)` 결함을 해결하고, `translations` 레거시 테이블 참조를 현재의 통합 스키마(`group_id` 연결)로 전면 리팩토링.
- **Migration**: DB 버전을 14로 격상하고, 기존의 언어별 동적 테이블(`lang_xx`)을 폐쇄(No-op)한 뒤 오디오 데이터 및 리뷰 통계 컬럼을 통합 테이블(`words`, `sentences`)로 일원화.
- **Refactor**: 오디오 저장(`saveAudioFile`), 로드(`getAudioFile`), 유사도 검색(`searchSimilarText`) 로직을 통합 스키마 기반으로 현대화하여 시스템의 무결성과 성능을 확보.

### [2026-02-11] 동음이의어 팝업 억제 및 캐시 무결성 개선 (Phase 86)
- **UX**: 사용자가 이미 주석(Context Note)을 입력한 경우 (예: "사과" + 과일), 불필요한 동음이의어 선택 팝업을 억제하고 즉시 번역 결과를 표시하도록 개선.
- **Bug Fix (Phase 86.5)**: `TranslationService`의 로컬 캐시 키에 주석(`note`)이 포함되지 않아, 서로 다른 문맥의 단어가 잘못 캐싱되는 결함 수정. 이제 주석별로 개별 캐시가 적용됩니다.
- **Logging**: `SupabaseService`에 AI 호출 시 주석 포함 여부를 명시적으로 출력하는 디버그 로그 추가.

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

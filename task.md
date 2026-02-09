# 🛑 시작 전 확인: `.agent/rules`를 반드시 먼저 읽을 것!
# 🛑 에이전트 실책 사례 및 경고: **사용자의 승인 없는 커밋/푸시는 즉시 세션 종료 사유임.** (2026-01-31 사례 반영)
# 🛑 중요 규칙 (필독)
**[강제 규칙 원본 보기: docs/PROJECT_RULES.md](docs/PROJECT_RULES.md)**
(모든 규칙은 위 문서를 따르며, 이곳에는 진행 상황만 기록합니다.)

**[필수 문서 현행화 대상]**
1. `docs/PROJECT_RULES.md`
2. `task.md`
3. `history.md`: 작업 이력 인덱스 (상세: `docs/history/*.md`)
4. `README.md`: 사용자 매뉴얼 및 기능 소개.
5. `future_roadmap.md`

- [x] 프로젝트 파일 정리 (Project File Cleanup)
    - [x] 삭제: `models.json`, `ROADMAP_AND_CHANGELOG_*.md`, 로그/임시 파일.
    - [x] 이동: `*_BUILD_STRUCTURE.md` → `docs/guides/`.

- [x] 긴급 수정: 홈 화면 빌드 오류 (Hotfix: HomeScreen Build Failure)
    - [x] `_showMaterialSelectionDialog` 미정의 오류 수정 (`_showOnlineLibraryDialog`로 교체)
    - [x] `DialogueGroup` 미정의 오류 수정 (import 추가)
    - [x] `DialogueGroup` 생성자 오류 수정 (`userId: 'user'` 추가)
    - [x] `selectMaterial` 빈 콘텐츠 버그 수정 (`loadStudyMaterials` & `getStudyMaterials` 복구)
    - [x] 스마트 동기화를 위한 **피벗 전략(Pivot Strategy)** 구현 (공유 그룹 ID)
    - [x] **수동 입력 피벗 전략** 구현 (텍스트 일치 연결)
    - [x] **영어 피벗 자동 다운로드** 구현 (1+1 다운로드)

- [x] 긴급 수정: 온라인 가져오기 노출 문제 (Hotfix: Online Import Visibility)
    - [x] `subject` 정렬을 통한 **그룹 ID 연결** 수정 (Source/Target/Pivot)
    - [x] **개선**: 피벗 언어(영어) 주제를 기준(Ground Truth)으로 사용
    - [x] `userId: 'user'` 명시적 전달로 **대화 노출** 수정
    - [x] `importFromJsonWithMetadata` 시그니처 및 사용법 업데이트

- [x] 긴급 수정: 빌드 오류 해결 (Hotfix: Build Error Resolution)
    - [x] `HomeScreen` 중복 함수 정의 제거 및 파라미터 오류 수정
    - [x] `HelpDialog` 누락된 `startTutorial` 로컬라이제이션 키 추가
    - [x] **L10n 동기화**: 전체 언어 ARB 파일 동기화 완료
    - [x] `history.md` 및 `task.md` 현행화

- [x] Phase 76: Data Integration & AI Chat Optimization (데이터 통합 및 AI 채팅 고도화)
    - [x] 학습 자료 병합 도구(`scripts/merge_materials.ps1`) 개발
    - [x] DB 스키마 확장(`style` 컬럼 추가, Version 11)
    - [x] AI 채팅 주제별 필터 드롭다운 UI 구현
    - [x] 대화 임포트 후 목록 자동 새로고침 및 `user_id` 개인화 연동
    - [x] 홈페이지 자료 생성 logic 및 가이드 문서 최신화
    - [x] 5대 필수 문서(task, history, README, roadmap, future) 현행화

- [x] Phase 76.5: UI/UX Polish - Online Library Refactor
    - [x] `Online Library` 팝업 구조 개편 (단어/문장/대화 3탭 분리)
    - [x] 온라인 자료 필터링 로직 구현 (Category: Words/Sentences/Dialogue)
    - [x] 자료 임포트 후 자동 선택 및 화면 갱신(Auto-Select) 구현
        - [x] Word/Sentence: `material_id` 기반 `selectMaterial`
        - [x] Dialogue: `dialogue_id` 기반 `switchMode(3)`
        - [x] 완료 메시지 형식: `"{Material Name} Imported Successfully"` 확인
    - [x] 각 모드 'Online Library' 아이콘 제거 및 'Metadata Dialog' 통합
        - [x] `MetadataDialog`에 'Online Library' 버튼 추가
        - [x] Mode 1/2/3 위젯에서 `MetadataDialog` 호출로 변경
        - [x] 'Total Tags' 드롭다운 추가 (Implemented in MetadataDialog)
        - [x] 데이터 일관성 및 자동 태깅(Source Subject) 로직 확인 (DatabaseService.dart)
    - [x] **규칙 준수 조치 (Rule Compliance Fixes)**
        - [x] `history.md` 현행화 (Phase 76.5)
        - [x] `README.md` 기능 설명 업데이트 (UI 변경 반영)
        - [x] `l10n/app_ko.arb` 및 다국어 튜토리얼 문구 동기화
        - [x] 한국어 소통 원칙 재확인
        - [x] 긴급 빌드 오류 수정 (Syntax & References)
        - [x] **AppState**: Pivot Subject 강제 로직 제거 (Native Tag Strategy 적용).
        - [x] **AppState**: Pivot Subject 강제 로직 제거 (Native Tag Strategy 적용).
        - [x] **Mode 2/3**: 리뷰 모드 UI에서 현재 언어에 맞는 태그(자료집)만 필터링 노출.




- [x] Phase 77: Metadata Dialog Redesign & Mode 1 Fixes (메타데이터 다이얼로그 재설계 및 모드 1 수정)
    - [x] **Metadata Dialog**: 'Online Library' 아이콘 제거 (AppBar 메뉴로만 접근).
    - [x] **Metadata Dialog**: 'Total Tags' 드롭다운 상시 노출 (빈 상태라도 표시).
    - [x] **Mode 1**: `_showMetadataDialog` 호출 시 `onOpenLibrary` 제거.
    - [x] **Mode 1**: 튜토리얼용 `materialDropdownKey` 바인딩 누락 수정.

- [/] Phase 75: Pre-deployment Quality Assurance (출시 전 품질 검증)
    - [x] `docs/PRE_DEPLOYMENT_CHECKLIST.md` 생성 및 보안 점검 결과/계획 통합
    - [x] 1. 보안 및 API 감사 (보안 강화 로직 반영 및 체크리스트 업데이트 완료)
    - [x] 2. 다국어 및 데이터 정합성 검증
        - [x] 탐본 점검 계획 수립 및 구현 계획서 작성
        - [x] 검증 스크립트(`verify_l10n.py`) 작성 및 실행
        - [x] 티베트어 ARB 복구 및 한국어 JSON 구문 오류 수정 완료 (전수 조사 Pass)
        - [x] 비라틴 문자권(아랍어, 힌디어 등) 표본 육안 검사
        - [x] 체크리스트 내 개선 계획 추가 및 조치 여부 명시화
    - [/] 3. UX 및 튜토리얼 일치성 확인
        - [x] 구현 계획서(`implementation_plan.md`) 작성 및 승인 요청
        - [ ] Mode 3 `GlobalKey` 바인딩 시스템 버그 수정
        - [ ] 도움말 JSON 가이드 최신화 (v66 스키마 및 참여자 필드 반영)
        - [ ] 튜토리얼 타겟 문구 및 Drawer 내비게이션 용어 정합성 수정
        - [ ] 통합 검증 (Manual Tutorial Tour)
    - [ ] 4. 성능 및 메모리 누수 테스트 (Mode 4 집중)
    - [ ] 4. 성능 및 메모리 누수 테스트 (Mode 4 집중)

- [x] Phase 74: Generate All Homepage Materials (홈페이지 학습 자료 전체 생성)
    - [x] Fix `tool/generate_homepage_materials.dart` syntax and path errors
    - [x] Run the script to fill missing 27 languages
    - [x] Verify file generation in `docs/materials`
    - [x] Update `history.md`, `README.md`, `ROADMAP`

- [x] Phase 73: Notification System Replacement & UI Refinement (공지 시스템 교체 및 UI 개선)
    - [x] Replace Overlay Notifications with `showDialog`
    - [x] Refine Mode 3 Practice Card: Add Reset button to Listening/Idle view
    - [x] Verify Localization (ARB) for all new dialog messages
    - [x] Update `history.md`, `README.md`, `ROADMAP`

- [x] Phase 72: Enhance Homepage Language Selection (홈페이지 언어 선택 UI 개선)
    - [x] Replace `<input>` with `<select>` for language selection in `index.html`
    - [x] Add initialization logic to populate dropdowns with `languages` array
    - [x] Remove obsolete English search warning and `findLanguage` helper
    - [x] Update `history.md` and `task.md`
- [x] Phase 71: Fix JSON Download Type Bug (JSON 다운로드 타입 버그 수정)
    - [x] Diagnose incorrect type assignment in homepage JSON download
    - [x] Identify missing `type` field in merged entries (index.html:487-491)
    - [x] Add `type: typeCode` to each entry in the merge logic
    - [x] Update `history.md` and `task.md`
- [x] Phase 70: Fix Import Hang Bug (가져오기 무한 대기 버그 수정)
    - [x] Diagnose "Importing Entries..." infinite loop
    - [x] Identify deadlock in `importFromJsonWithMetadata` (createLanguageTable inside transaction)
    - [x] Move `createLanguageTable` calls outside transaction block
    - [x] Update `history.md` and `task.md`
- [x] Phase 69: Process Hardening (규칙 준수 시스템화)
    - [x] Create `scripts/rule_guard.ps1` to physically block commits without doc updates
    - [x] Integrate `rule_guard.ps1` into `commit` SKILL (Step 0)
    - [x] Update `PROJECT_RULES.md` to reflect mandatory script execution

- [x] Phase 68: Update Import Logic (가져오기 로직 업데이트)
    - [x] Update `DatabaseService.importFromJsonWithMetadata` (v66 Schema)
    - [x] Add `participants` parsing
    - [x] Add extended fields (`pos`, `root`, `form_type`) support
    - [x] Cleanup legacy tables writes

- [x] Phase 67: Documentation & Process Cleanup (문서 및 이력 정비)
    - [x] Fix `history.md` numbering (Phase 68~61) and localize to Korean
    - [x] Restore missing Phases 45~26 and 22~1 in `history.md`
    - [x] Translate all English entries to Korean in `history.md`
    - [x] Sync `task.md` with `history.md`
- [x] Phase 66: Example Materials Update (2026-02-03)
- [x] Phase 65: Help Section & Tutorial Consistency (2026-02-03)
- [x] Phase 64: Multi-Persona Chat System (2026-02-03)
- ... (rest omitted for brevity as per brain's task.md)

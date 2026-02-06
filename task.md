# 🛑 시작 전 확인: `.agent/rules`를 반드시 먼저 읽을 것!
# 🛑 에이전트 실책 사례 및 경고: **사용자의 승인 없는 커밋/푸시는 즉시 세션 종료 사유임.** (2026-01-31 사례 반영)
# 🛑 중요 규칙 (필독)
0. **한국어 우선**: 이용자(개발자)에게 보여주는 모든 문서(Artifacts), 설명(Task Summary), 진행 상황(Task Status), 워크스루(Walkthrough)는 반드시 **한국어**로 작성해야 한다.
1. **로컬 패키징 금지**: 로컬에서 APK/AAB 파일을 생성하지 말 것. 배포는 반드시 `git push`를 통해 수행한다. (디버깅을 위한 `flutter run`은 허용됨).
2. **CI/CD 전용**: 모든 배포는 반드시 `git push`를 통해 수행한다.
3. **예외 없음**: 어떤 경우에도 이 규칙을 어기지 말 것.
4. **승인 필요**: `git commit` 및 `git push` 전에는 항상 사용자의 승인을 받을 것.
5. **완료의 정의**: 기능을 구현할 때 다음 사항을 선제적으로 업데이트해야 한다:
    - **코드**: 구현 및 테스트 (분석)
    - **문서**: README.md, 도움말/가이드 (문구), 로드맵 상태
    - **다국어**: 모든 언어 파일(ARB)에 새로운 키 추가 (필요시 영어 기본값 사용)
    - **검증**: 사용자에게 알리기 전에 위 사항을 모두 확인할 것. 프롬프트를 기다리지 말 것.
6. **엄격한 프로토콜**: 한 가지 코드 수정이나 추가 작업을 완료했을 때에 반드시 **문제의 원인과 조치 내용**을 개발자에게 설명을 한 다음 **허락을 받고** 다음 과정을 진행한다.
7. **문서 관리**: `task.md`의 내용은 항상 **최신순(역순)**으로 정리한다. 새로운 태스크나 Phase는 항상 규칙 섹션 바로 아래에 가장 먼저 추가한다.

- [x] Phase 76: Data Integration & AI Chat Optimization (데이터 통합 및 AI 채팅 고도화)
    - [x] 학습 자료 병합 도구(`scripts/merge_materials.ps1`) 개발
    - [x] DB 스키마 확장(`style` 컬럼 추가, Version 11)
    - [x] AI 채팅 주제별 필터 드롭다운 UI 구현
    - [x] 대화 임포트 후 목록 자동 새로고침 및 `user_id` 개인화 연동
    - [x] 홈페이지 자료 생성 logic 및 가이드 문서 최신화
    - [x] 5대 필수 문서(task, history, README, roadmap, future) 현행화

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

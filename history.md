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

### [2026-02-08] Documentation Refactor
- **Action**: `history.md` 분리 및 `docs/PROJECT_RULES.md` 생성.
- **Goal**: 문서 관리 효율화 및 "Single Source of Truth" 확립.

### [2026-02-08] Pivot Sync Implementation
- **Feature**: 영어(English) 데이터를 기준으로 다국어 자료 자동 그룹핑.
- **Fix**: 서로 다른 파일명을 가진 자료들도 "English Title"로 통합 관리.

---

> **Note**: 과거의 시행착오(Trial & Error) 로그는 삭제되었으며, 각 파일에는 **"최종 구현된 결과(Finalized Features)"** 위주로 기록됩니다.

# 서버 및 데이터베이스 마이그레이션 계획 (2026-01)

## 1. 목표 (Goal)
로컬 기반 앱에서 **서버 동기화 플랫폼**으로 전환하여 다음을 달성합니다:
*   **중복 제로 (Zero Duplication)**: 동일한 개념은 언어가 달라도 하나로 연결합니다. (예: "Love" = "사랑" = "Amour").
*   **AI 검증 (AI Validation)**: Gemini AI를 사용하여 고품질 콘텐츠만 필터링합니다.
*   **커뮤니티 공유**: 번역은 공유하되, 개인적인 노트는 비공개로 유지합니다.

## 2. 기술 스택 (확정)
*   **데이터베이스**: **Supabase** (PostgreSQL)
    *   관계형 구조가 우리의 "번역 그룹(Translation Group)" 모델에 가장 적합합니다.
*   **AI 엔진**: **Google Gemini 1.5 Flash**
    *   기존 Google 번역 API를 대체합니다.
    *   **번역 + 비속어 감지 + 문맥 파악**을 한 번에 처리합니다.
*   **백엔드 로직**: **Supabase Edge Functions** (TypeScript/Deno)

## 3. 데이터베이스 아키텍처

### A. 공용 데이터 (`sentences` 테이블)
모든 사용자가 공유하는 핵심 사전 데이터입니다.
*   **구조**: 모든 언어를 하나의 테이블에서 관리합니다.
*   **핵심 필드**:
    *   `group_id`: **핵심 연결고리(The Hub)**. 번역된 문장들을 하나로 묶습니다. (예: 그룹 100 = "사랑의 개념")
    *   `text`: 실제 단어 또는 문장.
    *   `lang_code`: 'en', 'ko' 등.
    *   `note`: **의미 구분용 문맥(Shared Context)**. 해당 언어에서 단어 뜻이 여러 개일 때만 사용합니다. (예: 한국어 "일" -> Note: "노동")

    **구조 예시 (사랑의 개념: group_id 100)**:
    | ID | Group ID | Lang | Text | Note |
    | :--- | :--- | :--- | :--- | :--- |
    | 1 | 100 | en | Love | NULL |
    | 2 | 100 | ko | 사랑 | NULL |
    | 3 | 100 | ja | 愛 | NULL |
    | 4 | 100 | es | Amor | NULL |


### B. 개인 데이터 (`user_library` 테이블)
사용자의 개인 학습 목록 및 메모 저장소입니다.
*   **구조**: 사용자(User)와 문장 그룹(Group)을 연결합니다.
*   **핵심 필드**:
    *   `user_id`: Supabase 인증 유저 ID.
    *   `group_id`: 학습 중인 문장 그룹.
    *   `personal_note`: **비공개 메모** (예: "이거 다음 시험에 나옴!").
    *   `review_stats`: 개인별 학습 진도.

## 4. AI 및 검증 전략
*   **심사위원**: Gemini 1.5 Flash가 1차 검수자 역할을 합니다.
*   **워크플로우**:
    1.  사용자가 "새 번역" 제출.
    2.  Edge Function이 Gemini 호출: "이 번역 점수 매겨주고(0~100점), 비속어 있는지 확인해."
    3.  **고득점 (>80점)**: 자동 승인 및 저장 (`approved`).
    4.  **저득점**: 거절(`rejected`) 또는 관리자 확인 대기(`pending`).

## 5. 작업 현황 (Status)

### ✅ Phase 1~7: 기반 구축 완료 (Jan 20-25)
*   [x] **Supabase 설정**: 프로젝트 생성 및 테이블(sentences, user_library) 구축 완료.
*   [x] **Edge Function 구현**: `translate-and-validate` 함수 개발 및 배포 완료.
*   [x] **Flutter 마이그레이션**: 로컬 SQLite와 Supabase 실시간 동기화 엔진(Dual-write) 구축 완료.

### ✅ Phase 8: 사용자 경험 혁신 (Jan 26)
*   [x] **Swipe UI**: 홈 화면에서 모드 간 스와이프 이동 구현.
*   [x] **Universal Deletion**: 로컬과 서버의 데이터를 동시 삭제하는 통합 로직 구현.
*   [x] **AppBar Refinement**: 모드명 자동 표시 및 학습 자료 선택 UI 개선.

### ✅ Phase 9: 글로벌 진출 및 안정화 (Jan 27)
*   [x] **국제화 동기화**: 80개 언어에 대한 ARB 파일(v1.0.4) 최신화 및 AI 번역 동기화.
*   [x] **배포 준비**: 앱 버전 상향(`1.0.4+8`) 및 구글 플레이 업그레이드 가이드 작성.

### ✅ Phase 11: 대화형 학습 및 AI 채팅 (Jan 27-28)
*   [x] **Dialogue Engine**: 대화 그룹화(Dialogue Group) 및 맥락 보존형 데이터 구조 구축 완료.
*   [x] **Messenger UI**: AI 페르소나 기반 실시간 채팅 인터페이스 구현 완료.
*   [x] **Auto-Titling**: Gemini 기반 대화 주제 분석 및 제목 자동 생성 기능 도입.
*   [x] **Help & Tutorial**: AI 채팅 전용 도움말 및 인터랙티브 가이드업데이트.
*   [x] **Dialogue Set Import**: JSON 파일을 통한 문장 세트 및 전체 대화 내역 일괄 가져오기 기능 완성.

### ✅ Phase 12: 품질 고도화 및 확장 (Jan 28)
*   [x] **Partner Mode**: Mode 4에서 실제 상대방(사람)과의 대화를 기록하는 '파트너 모드' 구현 (양방향 통역).
*   [x] **GPS Context**: 현재 위치 정보를 AI에게 제공하여 상황에 맞는 답변 생성(Context Awareness).
*   [x] **Deep Localization**: 80개 이상의 언어 파일(ARB)에 누락된 키를 모두 동기화하여 완벽한 다국어 지원.
*   [x] **UX/Guide**: Mode 1 '단어/문장' 토글 스위치 및 하이라이트 튜토리얼 적용.
*   [x] **Stability**: Deprecated 코드 제거 및 Import 트랜잭션 최적화.
*   [x] **Final Stability (Jan 30)**: `AppState` 중복 필드 제거, `DatabaseService` 문법 오류 수정, `Geolocator` 최신 SDK 대응 및 80개 언어 Localization 전수 동기화 완료 (Build 100% 성공 보장).
*   [x] **Phase 62: Dialogue Enhancements (Feb 2)**:
    *   **Auto-Title**: 대화 개수 기반(Chat 1, Chat 2) 제목 자동 생성.
    *   **Note & Search**: 대화 종료 시 메모(Note) 저장 및 히스토리 검색/필터(날짜) 기능 추가.
    *   **Optimistic Sync**: 저장 및 대화 시작 시 UI 즉시 갱신(렉 제거).
*   [x] **Phase 65: Help Section & Tutorial Consistency (Focus: UI/Help Sync)**:
    *   **Accurate Targeting**: 튜토리얼 하이라이트가 실제 UI 요소(마이크, 번역 버튼 등)를 정확히 가리키도록 `GlobalKey` 바인딩 수정.
    *   **JSON Guide**: 도움말 내 JSON 예제를 최신 스키마(Phase 64 반영)로 현행화.
### ✅ Phase 67: 문서 및 이력 정비 (Documentation & History)
*   [x] `history.md` 및 `task.md` 한글화 및 유실된 항목 복구.

### ✅ Phase 68: 가져오기 로직 업데이트 (Import Logic Update)
*   [x] 최신 JSON 스키마(v66)에 맞춰 `DatabaseService.importFromJsonWithMetadata` 전면 수정.
*   [x] 메타데이터(`meta`), 참여자(`participants`), 확장 필드(`pos`, `root` 등) 파싱 지원.

### ✅ Phase 69: 프로세스 강화 (Process Hardening)
*   [x] `scripts/rule_guard.ps1`을 통한 문서 업데이트 강제화.
*   [x] `commit` SKILL에 룰 가드 통합.

### ✅ Phase 70: 가져오기 데드락 수정 (Fix Import deadlock)
*   [x] 트랜잭션 내부에서 테이블 생성 호출 시 발생하던 데드락 해결.

### ✅ Phase 71: JSON 다운로드 타입 버그 수정 (Fix JSON Download Bug)
*   [x] 홈페이지 JSON 병합 다운로드 시 `type` 필드가 누락되어 단어가 문장으로 표시되는 버그 수정.

### ✅ Phase 72: 홈페이지 언어 선택 UI 개선 (Enhance Homepage UI)
*   [x] 언어 코드를 직접 사용하도록 드롭다운 및 데이터 구조 최적화 (ko, en 등).

### ✅ Phase 73: 알림 시스템 교체 (Notification Overhaul)
*   [x] 상단 오버레이 알림을 `showDialog` 및 `SnackBar`로 교체하여 UI 일관성 및 안정성 확보.

### ✅ Phase 74: 홈페이지 학습 자료 대량 생성 (Homepage Materials Generation)
*   [x] Gemini 2.0 Flash (v1beta) 기반 자동 번역 스크립트 구축.
*   [x] 지원하는 모든 79개 언어에 대해 학습 자료(JSON 4종) 생성 완료. (총 316개 파일)

## 🚀 Phase 75: 개인화 & 추천 (Planned - Feb)
*   [ ] **Recommender**: 사용자 데이터를 분석하여 맞춤형 학습 콘텐츠 제안.
*   [ ] **Home Widget**: 오늘의 추천 문장을 보여주는 세련된 UI 위젯 추가.

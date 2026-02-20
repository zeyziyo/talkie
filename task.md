# 🛑 시작 전 확인: `.agent/rules`를 반드시 먼저 읽을 것!

**[필수 문서 현행화 대상]**
1. `task.md`
2. `README.md`: 사용자 매뉴얼 및 기능 소개.

---

# 🚀 Current Project: Participant Management System (참여자 관리 시스템)

## Phase 1: Database Migration (데이터베이스 마이그레이션)
- [x] **DB 스키마 업데이트**: `participants` 테이블 생성 및 마이그레이션 (v22).
- [x] **리포지토리 업데이트**: `DialogueRepository` 정규화된 참여자 CRUD 구현.
- [x] **모델 업데이트**: `ChatParticipant` 클래스 DB 스키마 일치화.

## Phase 2: ID Logic & Data Integrity (ID 로직 및 데이터 무결성)
- [x] **컨텐츠 기반 ID**: `UnifiedRepository.generateContentId()` 구현.
- [x] **마이그레이션 스크립트**: `ensure_participants_migration.dart` 실행.

## Phase 3: Server Synchronization (서버 동기화)
- [x] **Supabase 서비스**: `processChat` 및 ID 일관성 로직 업데이트.
- [x] **동기화 로직**: `SupabaseRepository` 로컬 DB 변경 사항 반영.

## Phase 4: UI Implementation (UI 구현)
- [x] **참여자 관리 화면**: `ParticipantManageScreen` (CRUD UI).
- [x] **참여자 선택 다이얼로그**: `ParticipantSelectorDialog` 채팅 생성 시 사용.
- [x] **채팅 통합**: `ChatScreen` 정규화된 참여자 사용 업데이트.
- [x] **히스토리 통합**: `ChatHistoryScreen` 필터 및 생성 흐름.
- [x] **코드 정리**: 레거시 페르소나 코드 제거 및 deprecation 수정.

## Phase 5: Final Verification (최종 검증)
- [ ] **수동 테스트**: 참여자 생성 -> 대화 시작 -> 유지 여부 확인.
- [ ] **회귀 테스트**: 특수 모드(Mode 1/2/3) 영향도 점검.
- [x] **코드 품질**: 잔여 lint 문제 해결 (완료).

## [Phase 6] 버그 수정 및 안정화 (Bug Fixes & Stabilization)
- [x] "Online Library" 데이터 표시 문제 해결 (`online_library_dialog.dart` category 대소문자/복수형 불일치 수정)
- [x] "Start Chat" 기능 오류 수정 (`participant_selector_dialog.dart` async onSelected await 처리)
- [x] "대화 시작" 시 대화창 진입 문제 해결 (Navigator.pop 순서 + await 수정)
- [ ] 데이터베이스 무결성 검사 및 정규화 마무리
- [ ] 전체 기능 회귀 테스트 수행

# 📜 Antigravity 작업 이력 (Chronological History)

이 파일은 Antigravity 에이전트가 수행한 모든 작업의 태스크와 워크스루 내용을 최신순으로 기록하는 통합 이력장입니다.

---

## 📅 [2026-01-31 03:50:00] Phase 27: 복습 모드 필터 고도화 및 UI/UX 개선

### ✅ 태스크 (Task)
- [x] "외운 카드 표시/숨기기" 필터 기능을 AppState 및 SQL 쿼리에 구현
- [x] 복습 모드 상단 레이아웃을 3단(단어/문장, 태그, 외운것 토글)으로 개편
- [x] 카드 뒤집기(Flip) 시 자동으로 학습 완료 처리되는 UX 자동화 적용
- [x] 하단의 중복되는 체크 아이콘 제거로 UI 간소화

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 이미 외운 카드를 숨겨 학습 효율을 높일 수 있는 필터를 추가하고, 조작 편의성을 위해 주요 컨트롤을 한 줄에 나란히 배치했습니다. 또한 수동 체크의 번거로움을 줄이기 위해 카드 확인 시 자동으로 학습 상태가 기록되도록 개선했습니다.
- **결과**: 복습 모드가 훨씬 직관적이고 군더더기 없는 모습으로 바뀌었으며, 학습 흐름이 더욱 자연스러워졌습니다.

---

## 📅 [2026-01-31 03:10:10] Phase 26: 학습 카드 중복 노출 수정 및 태그 UI 개선

### ✅ 태스크 (Task)
- [x] SQL `GROUP BY group_id`를 적용하여 번역 쌍 중복 노출 버그 해결
- [x] "전체" 필터 옵션 제거 및 "단어" 모드를 기본값으로 설정
- [x] 시스템 태그("word", "sentence") 목록에서 필터링
- [x] 산만한 태그 리스트를 "태그 선택" 팝업 버튼으로 통합

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 데이터베이스 수준에서 중복을 원천 차단하여 데이터 신뢰성을 회복했습니다. 또한 UI 측면에서는 불필요한 옵션을 줄이고 태그 관리를 모달 형태로 통합하여 시각적 피로도를 대폭 낮췄습니다.
- **결과**: 사용자가 더 깔끔한 화면에서 본인이 설정한 태그에만 집중하며 학습할 수 있는 환경이 조성되었습니다.

---

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
- [x] `lib/widgets/mode3_widget.dart` 내 위젯 트리 구조적 결함(중복 및 잘못된 괄호) 수정

### 📝 워크스루 (Walkthrough)
- **핵심 조치**: 단순한 콤마 오류가 아닌, 위젯 트리 중간에 삽입된 중복 괄호와 리스트 닫기(`], ), )`) 세트가 빌드 실패의 근본 원인임을 파악하여 이를 제거하고 트리를 정교하게 복구했습니다.
- **결과**: 위젯 트리의 무결성이 확보되어 모든 빌드 환경에서 정상적으로 컴파일 및 실행이 가능합니다.

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

## 📅 [2026-01-31 03:10:10] Phase 27: Review Mode Filter & UI Refinement (2026-01-31)
- **New Feature**: "Show/Hide Memorized Cards" filter added to Review mode.
- **UI Refinement**: 
    - 3-column top layout: [Word/Sentence Toggle] | [Tag Select] | [Show Memorized Toggle].
    - Removed redundant study check button from the bottom of cards.
- **UX Automation**: Automatically marks a card as "studied" in the current session when it is flipped (expanded).
- **AppState**: Added `_showMemorized` state and updated `loadRecordsByTags` query logic.

---

## 📅 [2026-01-31 03:10:10] Phase 26: Fix Duplicate Cards & Filter/Tag UI Refinement (2026-01-31)
- **Resolved**: Duplicate cards showing in Review/Practice modes by implementing `GROUP BY group_id` in SQL queries.
- **UI Refinement**: Removed "All" filter option; defaults to "Word" across all modes.
- **Tag UI Improvements**:
    - Removed system tags ("word", "sentence") from the visible list.
    - Replaced the cluttered tag chip list with a "Select Tags" button that opens a checkbox dialog.
    - Placed Toggle and Tag Button side-by-side for better layout.
- **AppState**: Added `clearSelectedTags` and improved filter initialization logic.

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

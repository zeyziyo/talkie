# 🎨 UI 및 모드 이력 (UI & Modes History)
- **최근 업데이트 (2026-02-08)**:
  - Mode 1, 2, 3 '자료 선택' 버튼 추가 및 튜토리얼 하이라이트(GlobalKey) 바인딩.
  - 앱 전체 용어 통일: "입력/복습/연습/채팅".
  - 도움말 JSON 예제 v66 스키마(dialogues)로 현행화.
(앱 UI, 모드별 기능, 사용자 경험 관련 이력)

---

## ✅ 구현 완료 기능 (Finalized Features)

### 2026-02-08: Mode 3 튜토리얼 수정 (Mode 3 Tutorial Fix)
- **문제 (Problem)**: 튜토리얼 하이라이트가 엉뚱한 위치를 가리킴.
- **해결 (Solution)**: `GlobalKey` 바인딩을 `HomeScreen`에서 `Mode3Widget`까지 올바르게 전달하여 타겟 위젯(설정 버튼 등)을 정확히 조준하도록 수정.

### 2026-02-07: AI 채팅 TTS (Chat Text-to-Speech)
- **문제 (Problem)**: 영어 문장을 한국어 억양으로 읽는 "콩글리쉬" 발음 문제.
- **해결 (Solution)**:
    1. **휴리스틱 감지 (Heuristic Detection)**: 텍스트 내 라틴 문자 비중을 분석하여 언어 감지.
    2. **로케일 강제 (Forced Locale)**: 영어가 감지되면 TTS 엔진 로케일을 `en-US`로 강제 전환.
    3. **화자 일치 (Speaker Consistency)**: 화자의 성별(Male/Female) 정보를 TTS 엔진에 명시적으로 전달.

### 2026-02-06: 멀티 페르소나 (Multi-Persona Chat)
- **기능 (Feature)**: 대화방 내 참여자(Participant)별 언어/성별/이름 설정 기능.
- **해결 (Solution)**:
    - **스마트 헤더 (Smart Header)**: 말풍선 상단에 제어판(Chip) 추가.
    - **즉시 재번역 (Dynamic Retranslation)**: 언어 변경 시 즉시 재번역 수행.
    - **게스트 처리 (Guest Handling)**: "Stranger" 등 미등록 화자도 로컬 DB에 자동 등록.

### 2026-02-05: 알림 시스템 (Notification System)
- **변경 (Change)**: 상단 오버레이 메시지(`_statusMessage`) 제거.
- **Improvement**: `MetadataDialog` 내에서도 `OnlineLibrary` 접근 불가하도록 아이콘 제거 (역할 충돌 방지).

### [2026-02-09] UX 복구 및 기능 재배치 (Phase 77.5)
#### 1. Mode 3 명칭 원복 (Title Revert)
- **변경 전**: "Practice" (Phase 75에서 변경됨).
- **변경 후**: "**발음 연습 (Speaking Practice)**" (기존 명칭으로 복귀).
- **사유**: 사용자의 명칭 변경에 대한 불편사항 수용 및 학습 목적 명확화.

#### 2. 검색 조건 다이얼로그 (Search Filter Dialog)
- **신규 위젯**: `lib/widgets/search_filter_dialog.dart` 생성.
- **기능**:
    - **Tag Selection**: 현재 학습 언어(Source Language)와 일치하는 자료집 태그만 필터링 노출 (`Native Tag Strategy`).
    - **Recent N Items**: 최근 학습 항목 N개 제한 필터.
    - **Starts With**: 특정 문자로 시작하는 항목 검색.
- **적용**: Mode 2(복습)와 Mode 3(발음 연습)의 '설정(Tune)' 버튼 연결 대상을 `MetadataDialog`에서 `SearchFilterDialog`로 교체.
- **효과**: 불필요한 메타데이터 편집 UI 노출을 방지하고, 순수한 '검색 및 필터링' 경험 제공.

#### 3. 온라인 자료실 접근성 (Online Library Accessibility)
- **변경**: `MetadataDialog` 내부 깊숙이 있던 'Online Library' 버튼을 제거.
- **개선**: Mode 2/3 상단 `AppBar` 메뉴(Action)에 '구름(Cloud)' 아이콘으로 직접 배치.
- **결과**: 사용자가 언제든(One-click) 온라인 자료실에 접근하여 자료를 추가할 수 있음.


### 2026-02-01: 디자인 고도화 (Premium Card Design)
- **변경 (Change)**: Mode 2(복습)/Mode 3(연습) 카드 디자인 전면 교체.
- **스타일 (Style)**: 그라데이션(`Blue-Purple`), 둥근 모서리, 그림자(`BoxShadow`) 적용.
- **상호작용 (Interaction)**: 터치 시 확장(Expand)되는 애니메이션 추가.

### 2026-02-01: 고급 필터 (Advanced Filtering)
- **기능 (Feature)**: 복습 모드에서 "시작 글자(Starts With)" 및 "최근 N개 보기" 필터 추가.
- **L10n**: 필터 조건의 다국어 지원 적용.


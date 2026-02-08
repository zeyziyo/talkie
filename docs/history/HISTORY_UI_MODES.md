# 🎨 UI 및 모드 이력 (UI & Modes History)
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
- **해결 (Solution)**: 표준 `SnackBar` 및 `AlertDialog`로 대체하여 UI 간섭 최소화.

### 2026-02-01: 디자인 고도화 (Premium Card Design)
- **변경 (Change)**: Mode 2(복습)/Mode 3(연습) 카드 디자인 전면 교체.
- **스타일 (Style)**: 그라데이션(`Blue-Purple`), 둥근 모서리, 그림자(`BoxShadow`) 적용.
- **상호작용 (Interaction)**: 터치 시 확장(Expand)되는 애니메이션 추가.

### 2026-02-01: 고급 필터 (Advanced Filtering)
- **기능 (Feature)**: 복습 모드에서 "시작 글자(Starts With)" 및 "최근 N개 보기" 필터 추가.
- **L10n**: 필터 조건의 다국어 지원 적용.


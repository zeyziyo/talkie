# 🧪 Phase 5: Participant Management Verification Checklist

## 1. 사전 준비 (Prerequisites)
- [ ] **Build Check**: `flutter analyze` 결과가 'No issues found'여야 함 in terminal.
- [ ] **Clean Install**: 기존 데이터 충돌 방지를 위해 앱을 재설치하거나 데이터를 초기화하는 것을 권장.

## 2. 참여자 관리 (Participant Management)
*경로: 메뉴(Drawer) > '참여자 관리 (Manager Participants)'*

### A. 생성 (Create)
- [ ] **기본 생성**:
    1. 우측 하단 `+` 버튼 클릭.
    2. 이름: "Test User 1"
    3. 역할: "User"
    4. 저장(Save) 클릭.
    - **결과**: 목록에 "Test User 1"이 나타나야 함.

### B. 상세 생성 (AI Persona)
- [ ] **AI Persona**:
    1. `+` 버튼 클릭.
    2. 이름: "French Tutor"
    3. 역할: "Assistant"
    4. 성별: "Female"
    5. 언어: "French (fr)"
    6. 모델: "gpt-4o" (선택 가능 시)
    7. 프롬프트: "You are a helpful French tutor."
    8. 저장 클릭.
    - **결과**: 목록에 "French Tutor"가 나타나고, 역할 아이콘이 AI(로봇/별)로 표시되어야 함.

### C. 수정 (Edit)
- [ ] **정보 수정**:
    1. "Test User 1" 항목 클릭 (또는 수정 아이콘).
    2. 이름을 "Updated User"로 변경.
    3. 저장 클릭.
    - **결과**: 목록에서 이름이 "Updated User"로 변경되어야 함.

### D. 삭제 (Delete)
- [ ] **삭제 확인**:
    1. "Updated User"의 삭제(휴지통) 아이콘 클릭.
    2. 확인 팝업에서 "Delete" 선택.
    - **결과**: 목록에서 항목이 사라져야 함.
    - **DB 확인**: 실제 DB에서도 삭제되었는지 확인 (선택 사항).

## 3. 대화 시작 (Start Chat)
*경로: 홈 화면 > '새 대화 (New Chat)'*

### A. 참여자 선택 (Selector)
- [ ] **다중 선택**:
    1. '참여자 추가 (+)' 버튼 클릭.
    2. 목록에서 "French Tutor"와 "나(Me)"(또는 기본 사용자) 선택.
    3. 확인(Complete/Done) 클릭.
    - **결과**: 대화방 생성 화면(또는 상단)에 선택된 참여자들이 표시됨.

### B. 대화방 진입
- [ ] **대화 시작**:
    1. '대화 시작(Start)' 버튼 클릭.
    2. 채팅 화면으로 이동.
    3. 상단 타이틀이 "French Tutor, ..." 등으로 표시되는지 확인.
    
### C. 메시지 전송 및 페르소나 동작
- [ ] **메시지 전송**: "Bonjour" 입력 후 전송.
- [ ] **응답 확인**: "French Tutor"가 불어(혹은 설정된 프롬프트)로 응답하는지 확인.
    - *API 미연동 시*: 로컬 DB에 메시지가 "French Tutor" ID로 저장되는지 확인.

## 4. 데이터 영속성 (Persistence)
- [ ] **앱 재시작**:
    1. 앱 완전히 종료 후 재실행.
    2. '대화 기록 (History)' 또는 '참여자 관리' 화면 이동.
    - **결과**: "French Tutor"가 여전히 목록에 존재하고, 생성한 대화방이 기록에 남아있어야 함.

## 5. 기존 기능 회귀 테스트 (Regression)
- [ ] **Mode 1 (Words)**: 단어 학습 기능이 정상 작동하는지 (참여자 변경 영향 없음).
- [ ] **Mode 2 (Sentences)**: 문장 학습 기능 정상 작동 확인.

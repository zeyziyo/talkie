# 🏗️ Blueprint: Chat (Mode 4)

> **핵심 원칙**: 독립적인 대화 경험 및 맥락 유지

## 1. 대화 학습 데이터 활용

### 1-1. 경험 중심 (Experience-based)
*   '암기'가 목적이 아니라, AI 페르소나와의 상호작용을 통한 '체득'이 목적이다.
*   따라서 `chat_messages`는 암기 여부(`is_memorized`)를 추적하지 않는다.

### 1-2. 구조 (Participants & Context)
*   **Persona**: 다양한 성격과 역할을 가진 AI 캐릭터.
*   **History**: 대화의 맥락을 유지하기 위해 이전 메시지들을 LLM에 함께 전송한다.

## 2. 학습 연동 (Bridge to Non-Dialogue Learning)
*   **Save to Sentence**: 
    *   대화 중 유용한 표현을 발견하면, 사용자는 이를 '비대화 학습 데이터'(`sentences`)로 추출할 수 있다.
    *   이 과정은 **복사(Cloning)**이며, 원본 대화 로그('대화 학습 데이터')는 그대로 유지된다.

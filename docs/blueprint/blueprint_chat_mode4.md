# 🏗️ Blueprint: Chat (Mode 4)

> **핵심 원칙**: 독립적인 대화 경험 및 맥락 유지

## 1. 대화 학습 데이터 활용

### 1-1. 경험 중심 (Experience-based)
*   '암기'가 목적이 아니라, AI 페르소나와의 상호작용을 통한 '체득'이 목적이다.
*   따라서 `chat_messages`는 암기 여부(`is_memorized`)를 추적하지 않는다.

### 1-2. 구조 (Participants & Context)
*   **Persona**: 다양한 성격과 역할을 가진 AI 캐릭터.
*   **History**: 대화의 맥락을 유지하기 위해 이전 메시지들을 LLM에 함께 전송한다.

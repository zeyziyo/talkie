# 🚀 Talkie SaaS 로드맵

이 문서는 Talkie의 향후 기능 확장 및 서비스 고도화 계획을 담고 있습니다. 현재의 독립형 앱(Standalone App)에서 **구독형 서비스(SaaS)**로 발전하기 위한 핵심 전략을 제안합니다.

## 1. AI 튜터 & 롤플레잉 (Premium B2C)
단순한 발음 체크를 넘어, 실제 상황처럼 대화하는 LLM(거대언어모델) 기반 기능입니다.
*   **현재 문제:** 정해진 문장만 읽는 연습은 실제 회화 적응력이 떨어짐.
    *   AI 응답 자동 번역 및 원하는 문장 즉시 학습 목록(Mode 2) 저장.
    *   **향후 SaaS 고도화:** 실시간 음성 교정 및 문법 피드백 기능 유료화.
*   **수익 모델:** 기본 채팅 무료 / 고급 교정 및 무제한 대화는 월 구독 ($9.99/월).

## 2. 콘텐츠 마켓플레이스 (Creator Economy)
현재의 JSON 파일 기능을 클라우드 플랫폼으로 확장합니다.
*   **현재 문제:** 좋은 학습 자료(JSON)를 구하기 어렵고, 만들기 귀찮음.
*   **SaaS 솔루션:** **"Talkie Store"**
    *   유명 강사나 일반 사용자가 자신만의 '단어장/문장 세트'를 만들어 올림.
    *   다른 사용자는 이를 다운로드하여 앱에서 바로 학습(Mode 2, 3, 4).
    *   **큐레이션:** "영화 쉐도잉 세트", "토익 빈출 800" 등 고퀄리티 자료 유료 판매 또는 프리미엄 구독자 전용 제공.
*   **수익 모델:** 프리미엄 자료 판매 수수료 or 구독자에게 무제한 다운로드 제공.

## 3. 학습 관리 시스템 (LMS) - 교육용 B2B
학교, 학원, 스터디 그룹을 위한 관리 도구입니다.
*   **현재 문제:** 선생님이 학생들의 연습 여부를 확인할 수 없음.
*   **SaaS 솔루션:** **"Talkie Class"**
    *   **선생님용 웹 대시보드:** 학생들에게 이번 주 학습할 단어/문장 세트(JSON)를 원격으로 배포.
    *   **학생 앱:** "오늘의 숙제" 알림이 뜨고, Mode 3(말하기)와 Mode 4(게임)로 숙제 수행.
    *   **리포트:** 학생의 발음 점수, 학습 시간, 게임 점수가 선생님에게 자동 전송됨.
*   **수익 모델:** 학생 1인당 월 과금 (학교/학원 대상 영업).

## 4. 실시간 단어 배틀 (Multiplayer)
혼자 하는 게임을 실시간 경쟁으로 확장하여 리텐션(재접속률)을 높입니다.
*   **현재 문제:** Mode 4 게임이 혼자 하기 심심할 수 있음.
*   **SaaS 솔루션:** **"Word Rain Battle"**
    *   비슷한 레벨의 사용자와 1:1 매칭.
    *   같은 단어가 떨어지고, 누가 더 빨리 정확하게 말해서 없애는지 대결.
    *   승리 시 포인트 획득 -> 앱 내 아바타 꾸미기 등 보상.
*   **수익 모델:** 부분 유료화 (게임 아이템), 광고 제거.

---

## 📡 [Backlog] 실시간 글로벌 커뮤니티 (언어 교환 채팅)

사용자가 배우고 있는 언어를 모국어로 사용하는 전 세계 사람들과 실시간으로 소통하며 언어 능력을 향상시킬 수 있는 기능입니다.

### 1. 주요 기능 (Key Features)
- **언어 기반 매칭**: 사용자의 모국어와 학습 언어 설정을 기반으로 최적화된 대화 상대 추천.
- **실시간 채팅 (Supabase Realtime)**: 웹소켓 기술을 활용한 지연 없는 즉각적인 메시지 송수신.
- **AI 자동 번역 (Gemini)**: 모든 채팅 메시지에 대해 상대방 언어로의 실시간 번역 결과 제공.
- **사용자 상태 추적**: 실시간 접속 중인 유저와 오프라인 유저 구분 표시.

### 2. 기술 아키텍처 (Tech Stack)
- **Database**: Supabase `profiles`, `public_chat_rooms`, `public_chat_messages` 테이블.
- **Realtime**: PostgreSQL 변동 사항을 추적하는 Realtime 채널 구독.
- **AI Integration**: 전송 시점에 번역 및 콘텐츠 필터링을 동시 수행하는 `translateAndValidate` 로직 활용.

### 3. 비용 관리 전략 (Cost Optimization)
- **번역 선택제 (On-Demand)**: 모든 메시지 자동 번역 대신 사용자가 클릭 시에만 API 호출.
- **캐싱 (Caching)**: 반복되는 일상적인 표현(인사말 등)은 AI 호출 없이 DB에서 즉시 매칭.
- **메시지 TTL**: 일정 기간(예: 30일)이 지난 대화 내역은 자동 삭제하여 DB 비용 절감.

---

## 🚀 추천 단계 (Phasing)

1.  **Phase 1 (User Base):** **콘텐츠 마켓플레이스** 구축. (현재 진행 중: Supabase 클라우드 동기화 완료).
3.  **Phase 2 (Revenue):** **실시간 교정 및 롤플레잉** 고도화.
4.  **Phase 3 (Scale):** **B2B(학원용)** 진출 및 **글로벌 커뮤니티** 활성화.

---

## 🛠️ 추천 기술 스택 (Tech Stack Strategy)
1인 개발 또는 소규모 팀이 효율적으로 확장하기 위한 **"가성비 & 생산성"** 중심의 스택입니다.

### A. 백엔드 (Backend as a Service)
*   **Supabase** (추천): PostgreSQL, Auth, Edge Functions, Realtime 통합 제공.

### B. AI & LLM
*   **OpenAI API (GPT-4o-mini):** 회화 및 교정에 최적.
*   **Gemini API:** 번역 및 콘텐츠 필터링 보조.

### C. 결제 (Payments)
*   **RevenueCat:** 구독 모델 관리 필수.

### D. 아키텍처 다이어그램 (Flow)
```mermaid
graph TD
    User[사용자 앱 (Flutter)] -->|Auth/DB/Realtime| Supabase
    User -->|In-App Purchase| RevenueCat
    User -->|Voice/Text| EdgeFunc[Supabase Edge Functions]
    
    Teacher[선생님 웹 (Flutter Web)] -->|Manage| Supabase
    
    EdgeFunc -->|Request| OpenAI[GPT-4o]
    EdgeFunc -->|TTS| GoogleCloudTTS
```

---
*Last Updated: 2026-03-18*

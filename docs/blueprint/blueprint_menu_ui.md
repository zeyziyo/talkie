# 🏗️ Blueprint: Menu & UI

> **핵심 원칙**: 직관적인 모드 전환 및 일관된 경험

## 1. 메뉴 구조 (Menu Structure)

학습의 단계와 방식에 따라 4가지 모드로 구분한다.

### 1-1. Mode 1: Input & Translate (입력/번역)
*   **목적**: 새로운 '비대화 학습 데이터'(`words`/`sentences`) 생성의 진입점.
*   **주요 기능**: STT, 번역, AI 분석.

### 1-2. Mode 2: List & Review (목록/복습)
*   **목적**: 저장된 '비대화 학습 데이터'의 조회 및 관리.
*   **UI 구성**:
    *   카드 리스트 (Card List).
    *   **Search Filter**: `Title Tag` (자료집) vs `General Tag` (품사 등) 분리 표시.
    *   **Online Library**: 자료 다운로드.

### 1-3. Mode 3: Practice (연습)
*   **목적**: '비대화 학습 데이터'를 활용한 발화 테스트.
*   **주요 기능**: 발음 평가, 반복 훈련.

### 1-4. Mode 4: Chat (대화)
*   **목적**: '대화 학습 데이터'를 생성하고 경험하는 공간.
*   **주요 기능**: 롤플레잉, 페르소나 대화.

## 2. UI 표준 (UI Standards)

### 2-1. 태그 표시 정책 (Tag Display)
*   **Whitelist**: 언어학적 정보(Noun, Verb, Question)만 표시.
*   **Blacklist**: 시스템 태그(#word) 및 자료 제목(명사 1)은 카드 내 태그 칩으로 노출하지 않음(필터에서만 사용).

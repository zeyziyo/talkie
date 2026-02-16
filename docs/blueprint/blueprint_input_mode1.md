# 🏗️ Blueprint: Input (Mode 1)

> **핵심 원칙**: 정확한 입력 및 풍부한 메타데이터 생성

## 1. 입력 프로세스

### 1-1. 데이터 생성 (Creation)
*   사용자의 입력(Text/Voice)을 기반으로 `words` 또는 `sentences` ('비대화 학습 데이터')를 생성한다.
*   **AI 역할**: 단순 번역을 넘어, 해당 입력이 가지는 언어학적 속성(POS, Root, Style)을 분석하여 메타데이터로 부착한다.

## 2. 저장 정책
*   **타겟 테이블**: `words` vs `sentences` (사용자 선택).
*   **암기 상태**: 신규 생성된 아이템은 기본적으로 `is_memorized = false` 상태로 시작한다.

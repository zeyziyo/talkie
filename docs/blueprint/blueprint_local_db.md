# 🏗️ Blueprint: Local DB (SQLite)

> **핵심 원칙**: 공유 데이터(Content)와 개인화 데이터(Context)의 완벽한 분리 및 정규화.

## 1. 스키마 구조 (Schema Structure)

데이터는 '누가 소유하는가'와 '변하는가'를 기준으로 **공유(Shared)**와 **개인화(Personalized)** 테이블로 나뉜다.

### 1-1. 공유 데이터 (Shared Data) - "The Dictionary"
*모든 언어 사용자가 공용으로 사용할 수 있는 불변(Immutable) 성격의 언어 자원.*

*   **`words` 테이블**
    *   **역할**: 단어의 의미와 언어별 번역 텍스트 저장.
    *   **PK**: `group_id` (생성 시점의 Timestamp 등 고유 식별자).
    *   **Columns**:
        *   `data_json`: 모든 언어의 번역 정보 (e.g., `{ "en": {...}, "ko": {...}, "es": {...} }`).
        *   `created_at`: 생성 일시.
    *   **특징**: 사용자 개인의 태그, 노트, 암기 상태는 일절 포함하지 않는다.

*   **`sentences` 테이블**
    *   **역할**: 문장의 의미와 언어별 번역 텍스트 저장.
    *   **PK**: `group_id`.
    *   **Columns**: `data_json`, `created_at`.

### 1-2. 개인화 데이터 (Personalized Data) - "My Notebook"
*사용자가 공유 데이터를 자신의 학습 목적으로 참조(Reference)하고 가공한 메타데이터.*

*   **`words_meta` 테이블**
    *   **역할**: 사용자의 단어 학습 현황 및 설정 저장.
    *   **PK**: `id` (Auto Increment).
    *   **FK**: `group_id` (`words` 테이블 참조).
    *   **Columns**:
        *   `notebook_title`: 단어장 제목 (e.g., "나의 단어장", "필수 암기").
        *   `source_lang`: 사용자가 설정한 모국어 (e.g., "ko").
        *   `target_lang`: 사용자가 설정한 학습어 (e.g., "es").
        *   `caption`: 주석/노트 (e.g., "과일").
        *   `tags`: 사용자 정의 태그 (e.g., "음식").
        *   `is_memorized`: 암기 여부 (Boolean).
        *   `review_count`: 복습 횟수.
        *   `last_reviewed`: 마지막 학습 일시.

*   **`sentences_meta` 테이블**
    *   **역할**: 사용자의 문장 학습 현황 및 설정 저장.
    *   **구조**: `words_meta`와 동일 (FK: `group_id` -> `sentences`).

### 1-3. 대화 데이터 (Dialogue Data) - "My History"
*대화는 그 자체로 사용자의 고유한 경험이므로 전적으로 개인화 데이터이다.*

*   **`dialogues` 테이블** (기존 `chat_messages` 대체/통합)
    *   **역할**: AI 페르소나와의 대화 내역 저장.
    *   **PK**: `id`.
    *   **Columns**:
        *   `session_id`: 대화 세션 식별자.
        *   `speaker`: 발화자 (User/AI).
        *   `content`: 원본 텍스트.
        *   `translation`: 번역 텍스트.
        *   `created_at`: 발화 일시.

## 2. 데이터 처리 프로세스 (Data Process)

### 2-1. 단어/문장 생성 예시 (Input Process)
1.  **사용자 입력**: "나의 단어장"에서 "사과"(ko) 입력 후 "스페인어"(es) 번역 요청.
2.  **AI 처리**: Pivot 언어(en "Apple")와 Target 언어(es "Manzana") 생성.
3.  **공유 데이터 저장 (`words`)**:
    *   `group_id`: (Timestamp)
    *   `data_json`: `{ "ko": "사과", "en": "Apple", "es": "Manzana" }`
4.  **개인화 데이터 저장 (`words_meta`)**:
    *   `group_id`: (위의 Timestamp)
    *   `notebook_title`: "나의 단어장"
    *   `source_lang`: "ko"
    *   `target_lang`: "es"
    *   `caption`: "과일" (사용자 입력 주석)
    *   `tags`: "음식"

### 2-2. 동기화 전략 (Sync Strategy)
*   **Upstream (Local -> Server)**:
    *   `words`/`sentences`: 새로운 `group_id`가 생성되면 서버의 공용 풀(Public Pool)로 전송. (중복 방지 로직 적용).
    *   `_meta` / `dialogues`: 사용자 ID(`user_id`)와 함께 서버의 개인 저장소로 전송.
*   **Downstream (Server -> Local)**:
    *   다른 기기에서 로그인 시, 서버의 `_meta` 정보를 받아오고, 그에 해당하는 `words`/`sentences` 정보를 공용 풀에서 당겨옴(Pre-fetch).

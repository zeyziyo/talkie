# 통합 데이터 구조 정의서 (Integrated Data Structure Definition)
> **최종 업데이트**: 2026-03-17
> **설명**: 로컬 DB와 서버 DB의 구조 및 데이터 운용 방식을 정의한 최상위 문서입니다. 모든 내용은 **로컬 DB(SQLite)**를 중심으로 설명되며, **서버 DB(Supabase)**는 마지막에 기술합니다.

## 1. 개요 및 원칙

### 1.1 데이터 격리 원칙 (Data Isolation - Rule #6)
*   **학습 데이터 (Content)**: `words`(단어), `sentences`(문장) 테이블에 저장됩니다. (80+ 언어 지원)
*   **대화 데이터 (Dialogue)**: `dialogues`(대화 내역), `dialogue_groups` 테이블에 저장됩니다. 하단 네비게이션을 통해 접근합니다.
*   **참여자 데이터 (Identity)**: `participants`(프로필), `dialogue_participants`(참여) 테이블에 저장됩니다.
*   **혼용 금지**: 편의성을 이유로 대화 데이터를 학습 테이블에 넣거나 그 반대로 하지 않습니다.

### 1.2 공유와 개인의 분리 (Shared vs Personal)
*   **공유 데이터**: 언어 본연의 정의(예: "Apple"="사과"). 불변(Immutable)이며 모든 사용자가 공통으로 사용합니다.
*   **개인 데이터**: 사용자의 학습 상태(암기 여부, 나만의 단어장). 가변(Mutable)이며 사용자별로 격리됩니다.

### 1.3 피봇 언어 (Pivot Language)
*   모든 다국어 데이터는 **영어(English)**를 피봇으로 사용하여 연결됩니다.
*   예: `사과(KR) <-> Apple(EN) <-> Manzana(ES)`

---

## 2. 로컬 데이터베이스 (Local DB - SQLite)

이 섹션에서는 앱 내부에서 구동되는 SQLite 데이터베이스의 **구조와 상세 스키마**를 정의합니다.

### 2.1 학습 콘텐츠 (Content) - Shared
언어 데이터 본연의 값을 저장하는 테이블입니다.

*   **`words`** (단어)
    *   `group_id` (INTEGER PK): 3.1 공식에 의한 식별자.
    *   `data_json` (TEXT NN): 다국어 데이터.
        *   **Schema (Per Language)**:
            ```json
            {
              "text": "단어",
              "note": "의미/설명",
              "root": "어근(선택)"
            }
            ```
    *   `created_at` (INTEGER NN): 타임스탬프.

*   **`sentences`** (문장)
    *   `group_id` (INTEGER PK): 3.1 공식에 의한 식별자.
    *   `data_json` (TEXT NN): 다국어 데이터.
        *   **Schema (Per Language)**:
            ```json
            {
              "text": "문장(부호포함)",
              "note": "뉘앙스/설명"
            }
            ```
    *   `created_at` (INTEGER NN): 타임스탬프.

### 2.2 학습 메타데이터 (Context) - Personal
사용자의 학습 이력과 개인화된 단어장을 관리하는 테이블입니다.

*   **`words_meta`** (나만의 단어장)
    *   `id` (INTEGER PK AI): 로컬 고유 ID.
    *   `group_id` (INTEGER NN): Shared 데이터 참조 (1:N 대응).
    *   `notebook_title` (TEXT NN): 단어장 이름.
    *   **UK (Unique Key)**: `(group_id, notebook_title)` 복합 키.
    *   `source_lang` (TEXT NN): 질문 언어 (e.g. 'ko').
    *   `target_lang` (TEXT NN): 정답 언어 (e.g. 'en').
    *   `tags` (TEXT): 태그 (CSV string).
    *   `is_memorized` (INTEGER): 학습 완료 여부 (0/1).
    *   `is_synced` (INTEGER): 서버 동기화 여부 (0/1).
    *   `review_count` (INTEGER): 복습 횟수.
    *   `last_reviewed` (TEXT): 최근 학습일 (ISO8601).
    *   `created_at` (TEXT): 등록일.

*   **`sentences_meta`** (나만의 문장장)
    *   `id` (INTEGER PK AI).
    *   `group_id` (INTEGER NN).
    *   `notebook_title` (TEXT NN).
    *   **UK (Unique Key)**: `(group_id, notebook_title)` 복합 키.
    *   `source_lang` (TEXT NN).
    *   `target_lang` (TEXT NN).
    *   `tags` (TEXT).
    *   `is_memorized` (INTEGER).
    *   `is_synced` (INTEGER).
    *   `review_count` (INTEGER).
    *   `last_reviewed` (TEXT).
    *   `created_at` (TEXT).

### 2.3 대화 데이터 (Dialogue) - Personal
채팅 세션과 대화 내용을 관리하는 테이블입니다.

*   **`dialogue_groups`** (대화 세션)
    *   `id` (TEXT PK): UUID (세션 고유 ID).
    *   `user_id` (TEXT): 사용자 식별 ID.
    *   `title` (TEXT NN): 시나리오 제목 (예: "카페에서 주문하기").
    *   `location` (TEXT): 대화 장소 정보.
    *   `note` (TEXT): 대화 관련 메모.
    *   `created_at` (TEXT NN): 대화 시작 시간 (이력 정렬용).

*   **`participants`** (참여자 마스터)
    *   `id` (TEXT PK): 고유 ID.
    *   `name` (TEXT NN): 기본 이름.
    *   `role` (TEXT NN): 역할 (user/ai).
    *   `gender` (TEXT).
    *   `lang_code` (TEXT).
    *   `avatar_color` (INTEGER): 아바타 색상 값.
    *   `created_at` (TEXT NN): 생성 시간.

*   **`dialogue_participants`** (참여자 연결 - Link Table)
    *   `dialogue_id` (TEXT NN, FK): `dialogue_groups.id` 참조.
    *   `participant_id` (TEXT NN, FK): `participants.id` 참조.
    *   `joined_at` (TEXT NN): 참여 시간.
    *   **UK (Unique Key)**: `(dialogue_id, participant_id)` (중복 참여 방지).

*   **`dialogues`** (메시지 내역)
    *   `id` (INTEGER PK AI).
    *   `session_id` (TEXT NN, FK): `dialogue_groups.id` 참조.
    *   `speaker` (TEXT NN): 발화자 식별 ID (`participants.id`).
    *   `content` (TEXT NN): 메시지 내용.
    *   `translation` (TEXT): 번역 (옵션).
    *   `sequence_order` (INTEGER): 순서.
    *   `created_at` (TEXT NN): 발화 시간.

---

## 3. 데이터 운용 규칙 (Local Data Operations)

### 3.1 통합 식별자 생성 규칙 (Unified ID Generation)
온라인 자료와 사용자 입력 자료 모두 **동일한 규칙**으로 `group_id`를 생성하여 데이터 중복을 방지하고 일관성을 유지합니다.

*   **핵심 원칙**: **내용 기반 식별 (Content-Based ID)**

#### A. 단어 및 문장 (Unified Content)
*   **생성 공식**: `hash(영어(Pivot) 텍스트)`
    *   의미의 핵이 되는 **텍스트 내용**만을 기준으로 합니다.
    *   예: "Apple" -> `hash("apple")` -> `1092384`
    *   예: "Hello?" -> `hash("hello?")` -> `121212`

*   **표준화(Standardization) 처리**:
    *   **정규화**: 소문자 변환, 앞뒤 공백 제거.
    *   **부호 보존**: 문장의 경우 의미를 결정짓는 문장 부호(?, !)는 내용의 일부로 포함합니다.

### 3.2 온라인 자료 임포트 전략
1.  **ID 생성**: 각 항목의 **영어 내용(Pivot Text)**을 추출하여 3.1의 공식대로 ID 생성.
2.  **병합 저장 (Upsert)**:
    *   DB에 해당 ID가 없으면 -> 신규 생성.
    *   DB에 해당 ID가 있으면 -> 기존 `data_json`에 없는 언어 데이터만 병합(Merge).
    *   메타 데이터(`_meta`) 생성 -> 사용자 학습장에 추가.

---

## 4. 온라인 자료 구조 (Online Material Structure)

### 4.1 단어 파일 (Words JSON)
```json
{
  "default_type": "word",
  "subject": "주제(Notebook Title)",
  "entries": [
    {
      "text": "단어 텍스트",
      "note": "뜻/설명",
      "tags": ["태그1", "태그2"]
    }
  ]
}
```

### 4.2 문장 파일 (Sentences JSON)
```json
{
  "default_type": "sentence",
  "subject": "주제(Notebook Title)",
  "entries": [
    {
      "text": "문장 텍스트(부호 포함)",
      "note": "상황/뉘앙스 설명",
      "tags": ["태그1", "태그2"]
    }
  ]
}
```

---

## 5. 서버 데이터베이스 (Server DB - Supabase)

### 5.2 개인 데이터 (Personal - Sync/Backup)

#### A. 단어장 (Words Meta)
*   `id` (BIGINT PK)
*   `user_id` (UUID FK NN)
*   `group_id` (BIGINT FK NN)
*   `notebook_title` (TEXT NN)
*   `source_lang` (TEXT)
*   `target_lang` (TEXT)
*   `tags` (TEXT)
*   `is_memorized` (INTEGER)
*   `review_count` (INTEGER)
*   `last_reviewed` (TIMESTAMP)
*   `created_at` (TIMESTAMP)

#### B. 문장집 (Sentences Meta)
*   `id` (BIGINT PK)
*   `user_id` (UUID FK NN)
*   `group_id` (BIGINT FK NN)
*   `notebook_title` (TEXT NN)
*   `source_lang` (TEXT)
*   `target_lang` (TEXT)
*   `tags` (TEXT)
*   `is_memorized` (INTEGER)
*   `review_count` (INTEGER)
*   `last_reviewed` (TIMESTAMP)
*   `created_at` (TIMESTAMP)

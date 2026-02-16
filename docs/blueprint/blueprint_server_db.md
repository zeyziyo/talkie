# 🏗️ Blueprint: Server DB (Supabase)

> **핵심 원칙**: 로컬 DB 구조와의 미러링(Mirroring) 및 효율적인 글로벌 공유.

## 1. 테이블 구조 (Table Structure)

서버 DB는 로컬 DB의 구조를 수용하되, 다중 사용자 환경을 지원하기 위한 필드(`user_id`, `visibility`)를 추가한다.

### 1-1. 공유 데이터 (Global Shared Data)
*모든 사용자가 접근 가능한 공용 자원.*

*   **`public_words`**
    *   **PK**: `group_id` (로컬과 동일).
    *   **Columns**: `data_json`, `created_at`, `contributor_id` (최초 생성자).
    *   **Policy**: 누구나 읽기 가능(Read), 인증된 사용자는 쓰기 가능(Insert). 수정(Update)은 제한적 허용.

*   **`public_sentences`**
    *   **PK**: `group_id`.
    *   **Columns**: `data_json`, `created_at`, `contributor_id`.

### 1-2. 개인화 데이터 (User Private Data)
*사용자별로 격리된 데이터.*

*   **`user_words_meta`**
    *   **PK**: `id` (UUID).
    *   **FK**: `user_id` (Auth User), `group_id` (Public Words).
    *   **Columns**: `notebook_title`, `source_lang`, `target_lang`, `caption`, `tags`, `is_memorized`.

*   **`user_sentences_meta`**
    *   **PK**: `id`.
    *   **FK**: `user_id`, `group_id` (Public Sentences).
    *   **Columns**: 동일.

*   **`user_dialogues`**
    *   **PK**: `id`.
    *   **FK**: `user_id`.
    *   **Columns**: `session_id`, `speaker`, `content`, `translation` 등.

## 2. 동기화 로직 (Sync Logic)

### 2-1. 저장 (Save / Push)
1.  **공유 데이터 확인**: 로컬에서 생성된 `group_id`가 서버 `public_words`에 존재하는지 확인.
2.  **공유 데이터 업로드**: 없으면 `public_words`에 업로드. (이때, 개인 정보는 포함되지 않음).
3.  **개인 데이터 업로드**: `user_words_meta`에 사용자의 개인 설정(노트, 태그, 암기상태) 업로드.

### 2-2. 로드 (Load / Pull)
1.  **메타 데이터 동기화**: `user_words_meta`에서 해당 사용자의 데이터를 가져옴.
2.  **참조 해결 (Resolve)**: 가져온 메타 데이터의 `group_id` 목록을 추출.
3.  **공유 데이터 패치**: `public_words`에서 해당 `group_id`들의 실제 내용(`data_json`)을 가져옴.
4.  **로컬 병합**: 로컬의 `words` 테이블과 `words_meta` 테이블에 각각 저장.

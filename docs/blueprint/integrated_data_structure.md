# 통합 데이터 구조 정의서 (Integrated Data Structure Definition)
> **최종 업데이트**: 2026-02-19
> **설명**: 로컬 DB와 서버 DB의 구조 및 데이터 운용 방식을 정의한 최상위 문서입니다. 모든 내용은 **로컬 DB(SQLite)**를 중심으로 설명되며, **서버 DB(Supabase)**는 마지막에 기술합니다.

## 1. 개요 및 원칙

### 1.1 데이터 격리 원칙 (Data Isolation - Rule #6)
*   **학습 데이터 (Content)**: `words`(단어), `sentences`(문장) 테이블에 저장됩니다.
*   **대화 데이터 (Dialogue)**: `dialogues`(대화 내역), `dialogue_groups` 테이블에 저장됩니다.
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
              "pos": "품사(Noun/Verb...)",
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
              "style": "문체(formal/informal...)",
              "form_type": "형식(statement/question...)",
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
    *   `tags` (TEXT): 태그 (JSON string).
    *   `is_memorized` (INTEGER): 학습 완료 여부 (0/1).
    *   `review_count` (INTEGER): 복습 횟수.
    *   `last_reviewed` (INTEGER): 최근 학습일.
    *   `created_at` (INTEGER): 등록일.

*   **`sentences_meta`** (나만의 문장장)
    *   `id` (INTEGER PK AI).
    *   `group_id` (INTEGER NN).
    *   `notebook_title` (TEXT NN).
    *   **UK (Unique Key)**: `(group_id, notebook_title)` 복합 키.
    *   `source_lang` (TEXT NN).
    *   `target_lang` (TEXT NN).
    *   `tags` (TEXT).
    *   `is_memorized` (INTEGER).
    *   `review_count` (INTEGER).
    *   `last_reviewed` (INTEGER).
    *   `created_at` (INTEGER).

### 2.3 대화 데이터 (Dialogue) - Personal
채팅 세션과 대화 내용을 관리하는 테이블입니다.

*   **`dialogue_groups`** (대화 세션)
    > **역할**: 개별 대화 메시지(`dialogues`)를 하나로 묶는 **세션 컨테이너**입니다.
    *   `id` (TEXT PK): UUID (세션 고유 ID).
    *   `title` (TEXT NN): 시나리오 제목 (예: "카페에서 주문하기").
    *   `persona_id` (TEXT): **AI 페르소나 템플릿 ID** (예: `tutor_bot_v1`).
    *   `created_at` (INTEGER NN): 대화 시작 시간 (이력 정렬용).

*   **`participants`** (참여자 마스터)
    > **역할**: 앱 전체에서 등장하는 **고유한 사용자/AI 프로필**입니다. (예: '나', 'AI튜터')
    *   `id` (TEXT PK): 고유 ID.
    *   `name` (TEXT): 기본 이름.
    *   `role` (TEXT): 역할 (user/ai).
    *   `gender` (TEXT): 성별.
    *   `lang_code` (TEXT): 기본 언어.

*   **`dialogue_participants`** (참여자 연결 - Link Table)
    > **역할**: 대화 세션(`groups`)과 참여자(`participants`)를 연결하는 **N:M 매핑 테이블**입니다.
    > **활용**:
    > 1. **대화방 목록**: "이 방에 참여 중인 사람(AI)들의 이름"을 미리 보여줄 때.
    > 2. **대화 화면**: 채팅방 입장 시, 참여자들의 프로필(이름, 사진 등)을 로딩할 때.
    *   `dialogue_id` (TEXT NN, FK): `dialogue_groups.id` 참조.
    *   `participant_id` (TEXT NN, FK): `participants.id` 참조.
    *   **UK (Unique Key)**: `(dialogue_id, participant_id)` (중복 참여 방지).

*   **`dialogues`** (메시지 내역)
    *   `id` (INTEGER PK AI).
    *   `session_id` (TEXT NN, FK): `dialogue_groups.id` 참조.
    *   `speaker_id` (TEXT NN): 화자 ID (A/B) -> `participants.id` 참조.
    *   `content` (TEXT NN): 메시지 내용.
    *   `translation` (TEXT): 번역 (옵션).
    *   `sequence_order` (INTEGER): 순서.
    *   `created_at` (INTEGER NN): 발화 시간.

---

## 3. 데이터 운용 규칙 (Local Data Operations)

### 3.1 통합 식별자 생성 규칙 (Unified ID Generation)
온라인 자료와 사용자 입력 자료 모두 **동일한 규칙**으로 `group_id`를 생성하여 데이터 중복을 방지하고 일관성을 유지합니다.

*   **핵심 원칙**: **내용 기반 식별 (Content-Based ID)**

#### A. 단어 (Words)
*   **생성 공식**: `hash(영어(Pivot)단어 + 품사)`
    *   예: "Apple" + "Noun" -> `hash("apple_noun")` -> `1092384`

#### B. 문장 (Sentences)
*   **생성 공식**: `hash(표준_문장 + 문체)`
    *   **구성 요소**: `text`(내용 + 부호) + `style`(문체).
    *   **제외**: `form_type`은 문장 부호에 이미 포함되어 있으므로 ID 생성에서 제외합니다.
    *   예: "Hello?" + "formal" -> `hash("hello?_formal")` -> **ID: 121212**
    *   예: "Hello." + "formal" -> `hash("hello._formal")` -> **ID: 343434**

*   **표준화(Standardization) 처리**:
    *   **부호 보정**: 문장 끝에 부호가 없으면 형식(`form_type`)에 맞춰 부호(`.`, `?`, `!`)를 자동 추가하여 **'표준 문장'**을 만듭니다.
    *   **정규화**: 소문자 변환, 앞뒤 공백 제거.

### 3.2 온라인 자료 임포트 전략
1.  **3개 파일 로드**: 소스, 타겟, **피봇(영어)** 파일 로드.
2.  **ID 생성**: 파일 이름이 아닌, 각 항목의 **영어 내용(단어/문장)과 속성(품사/문체)**을 추출하여 3.1의 공식대로 ID 생성.
3.  **병합 저장 (Upsert)**:
    *   DB에 해당 ID가 없으면 -> `words`/`sentences`에 신규 생성.
    *   DB에 해당 ID가 있으면 -> 기존 `data_json`에 없는 언어 데이터만 병합(Merge).
    *   `words_meta`/`sentences_meta` 생성 -> 해당 ID를 참조하여 사용자 학습장에 추가.

### 3.3 사용자 입력 자료 전략
1.  **입력 및 변환**: 사용자 입력 -> AI가 영어(Pivot) 및 타겟 언어 생성, 속성(품사/문체) 자동 판별.
2.  **ID 생성**: 생성된 **영어 내용과 속성**을 이용해 3.1의 공식대로 ID 생성.
3.  **병합 저장 (Upsert)**:
    *   (온라인 임포트와 동일하게) ID 존재 여부 확인 후 저장 또는 병합.
    *   메타 데이터(`_meta`) 생성 -> 사용자 학습장에 추가.

### 3.4 중복 저장 정책 (Duplicate Control Policy)
동일한 단어/문장을 저장하려 할 때 "단어장(Notebook)"을 기준으로 중복을 허용합니다.

1.  **같은 단어장 내 중복**: **불가**.
    *   이미 '기본 단어장'에 "사과"가 있는데, 또 '기본 단어장'에 "사과"를 추가하려 하면 -> **"이미 저장된 단어입니다" (Skip/Alert)**.
2.  **다른 단어장 간 중복**: **허용 (1:N)**.
    *   '기본 단어장'에 "사과"가 있어도, '복습 단어장'에 "사과"를 새로 추가 가능.
    *   이 경우 `words` 테이블(공유 데이터)은 하나(`group_id` 동일)지만, `words_meta` 테이블에 **새로운 레코드**가 생성됨.
    *   **효과**: 단어장별로 암기 상태(`is_memorized`)를 따로 관리할 수 있음.

### 3.5 온라인 업데이트 규칙 (Online Update Policy)
제공되는 온라인 단어장(JSON)이 업데이트(오타 수정, 단어 추가)되었을 때 사용자의 로컬 DB 처리 규칙입니다.

1.  **수행 시점**: **앱 실행 시(On Launch)** 또는 **버전 변경 감지 시** 자동으로 수행합니다.
2.  **공유 데이터 (`words`)**: **무조건 최신화 (Upsert)**.
    *   JSON의 철자 수정이나 새로운 번역이 있다면 로컬 `words` 테이블에 반영하여 데이터를 개선합니다.
3.  **개인 메타 (`words_meta`)**: **보수적 업데이트 (Insert Only)**.
    *   **신규 단어**: 온라인 단어장에 새로 추가된 단어는 사용자의 단어장에도 **추가(Insert)**합니다.
    *   **기존 단어**: 이미 사용자가 가지고 있는 단어(ID 동일)는 **건드리지 않습니다(Skip)**. 사용자의 암기 상태(`is_memorized`)나 복습 횟수를 보호하기 위함입니다.
    *   **삭제된 단어**: 온라인에서 삭제되었더라도, 사용자의 로컬 DB에서는 **삭제하지 않습니다**. 사용자의 학습 이력을 보존합니다.

---

## 4. 온라인 자료 구조 (Online Material Structure)
서버 또는 로컬 파일 시스템에 저장된 JSON 파일들의 스키마 정의입니다.

### 4.1 단어 파일 (Words JSON)
*   **파일명 규칙**: `words/{주제}_{순서}.json`
*   **구조**:
    ```json
    {
      "default_type": "word",
      "subject": "주제(Notebook Title)",
      "entries": [
        {
          "text": "단어 텍스트",
          "note": "뜻/설명",
          "pos": "품사",
          "tags": ["태그1", "태그2"]
        }
      ]
    }
    ```

### 4.2 문장 파일 (Sentences JSON)
*   **파일명 규칙**: `sentences/{주제}_{순서}.json`
*   **구조**:
    ```json
    {
      "default_type": "sentence",
      "subject": "주제(Notebook Title)",
      "entries": [
        {
          "text": "문장 텍스트(부호 포함)",
          "note": "상황/뉘앙스 설명",
          "form_type": "평서문/의문문/감탄문",
          "style": "높임말(formal)/반말(informal)",
          "tags": ["태그1", "태그2"]
        }
      ]
    }
    ```

### 4.3 대화 파일 (Dialogues JSON)
*   **파일명 규칙**: `dialogues/{시나리오명}.json`
*   **구조**:
    ```json
    {
      "default_type": "dialogue",
      "subject": "시나리오 제목",
      "participants": [
        { "id": "A", "name": "철수", "role": "user", "gender": "male", "lang_code": "ko-KR" },
        { "id": "B", "name": "AI", "role": "ai", "gender": "female", "lang_code": "en-US" }
      ],
      "entries": [
        {
          "speaker": "A",
          "text": "안녕하세요.",
          "sequence_order": 1,
          "note": "가벼운 인사",
          "form_type": "평서문",
          "style": "높임말",
          "tags": ["인사", "소개"]
        }
      ]
    }
    ```

---

## 5. 서버 데이터베이스 (Server DB - Supabase)

이 섹션에서는 로컬 DB와 동기화되거나 백업 목적으로 사용되는 서버 측 데이터베이스를 정의합니다.
Supabase의 **`user_id`를 활용한 RLS(Row Level Security)** 정책이 적용됩니다.

### 5.1 공개 데이터 (Shared - Read Only)
*   **`public_words`**: 전 세계 모든 사용자들이 생성한 단어들의 집합소 (Universal Dictionary).
*   **`public_sentences`**: 전 세계 모든 사용자들이 생성한 문장들의 집합소.
*   **역할**: 각 사용자의 로컬 `words` / `sentences` 내용을 **모두 수집(Aggregation)**합니다. 중복된(ID가 같은) 내용은 하나로 합쳐집니다(Upsert).

### 5.2 개인 데이터 (Personal - Sync/Backup)
사용자별로 격리된 데이터 테이블입니다. 모든 테이블은 **`user_id`**를 포함해야 합니다.

#### A. 단어장 (Words Meta)
*   **`user_words_meta`** (로컬 `words_meta` 대응)
    *   `id` (BIGINT PK GENERATED BY DEFAULT AS IDENTITY): 서버 고유 ID.
    *   `user_id` (UUID FK NN): Supabase Auth 사용자 ID (RLS Key).
    *   `group_id` (BIGINT FK NN): `public_words.group_id` 참조.
    *   `notebook_title` (TEXT NN): 단어장 이름.
    *   `source_lang` (TEXT): 질문 언어.
    *   `target_lang` (TEXT): 정답 언어.
    *   `tags` (TEXT): 태그 (JSON).
    *   `is_memorized` (INTEGER): 암기 여부.
    *   `review_count` (INTEGER): 복습 횟수.
    *   `last_reviewed` (TIMESTAMP WITH TIME ZONE): 최근 학습일.
    *   `created_at` (TIMESTAMP WITH TIME ZONE): 생성일.

#### B. 문장집 (Sentences Meta)
*   **`user_sentences_meta`** (로컬 `sentences_meta` 대응)
    *   `id` (BIGINT PK GENERATED BY DEFAULT AS IDENTITY).
    *   `user_id` (UUID FK NN): Supabase Auth 사용자 ID.
    *   `group_id` (BIGINT FK NN): `public_sentences.group_id` 참조.
    *   `notebook_title` (TEXT NN).
    *   `source_lang` (TEXT).
    *   `target_lang` (TEXT).
    *   `tags` (TEXT).
    *   `is_memorized` (INTEGER).
    *   `review_count` (INTEGER).
    *   `last_reviewed` (TIMESTAMP WITH TIME ZONE).
    *   `created_at` (TIMESTAMP WITH TIME ZONE).

#### C. 대화 (Dialogues)
로컬 대화 구조를 그대로 미러링하여 백업합니다.

1.  **`user_dialogue_groups`** (대화 세션 백업)
    *   `id` (UUID PK): 로컬 `dialogue_groups.id`와 동일값 저장.
    *   `user_id` (UUID FK NN): 소유자 ID.
    *   `title` (TEXT NN): 채팅방 제목.
    *   `persona_id` (TEXT): 페르소나 템플릿 ID.
    *   `created_at` (TIMESTAMP WITH TIME ZONE NN).

2.  **`user_participants`** (참여자 프로필 백업)
    *   `id` (TEXT): 로컬 `participants.id` (예: `me`, `tutor_bot`).
    *   `user_id` (UUID FK NN): 소유자 ID.
    *   `name` (TEXT): 사용자 지정 이름.
    *   `role` (TEXT): `user` / `ai`.
    *   `gender` (TEXT).
    *   `lang_code` (TEXT).
    *   **PK (Primary Key)**: `(user_id, id)` 복합키. (사용자마다 'me'가 다름)

3.  **`user_dialogue_participants`** (참여자 연결 백업)
    *   `dialogue_id` (UUID FK NN): `user_dialogue_groups.id` 참조.
    *   `participant_id` (TEXT NN): 사용자의 `user_participants.id` 참조.
    *   `user_id` (UUID FK NN): RLS용 소유자 ID.
    *   **PK (Primary Key)**: `(dialogue_id, participant_id)`.

4.  **`user_dialogue_messages`** (대화 내역 백업)
    *   `id` (BIGINT PK GENERATED BY DEFAULT AS IDENTITY).
    *   `session_id` (UUID FK NN): `user_dialogue_groups.id` 참조.
    *   `user_id` (UUID FK NN): RLS용 소유자 ID.
    *   `speaker_id` (TEXT NN): `user_participants.id` 참조.
    *   `content` (TEXT NN): 메시지 내용.
    *   `translation` (TEXT): 번역문.
    *   `sequence_order` (INTEGER NN): 말풍선 순서.
    *   `created_at` (TIMESTAMP WITH TIME ZONE NN): 발화 시간.

### 5.3 동기화 (Sync)
*   **서버 업로드**: 로컬에서 생성된/병합된 데이터는 위 테이블 구조에 맞춰 주기적으로 서버에 백업됩니다.

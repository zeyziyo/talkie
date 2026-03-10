# Talkie 데이터베이스 스키마 명세서 (v25)

이 문서는 `talkie.db` (SQLite)의 모든 테이블 구조와 관계를 상세히 설명하는 기술 명세서입니다.

---

## 1. 학습 데이터 테이블 (Shared Content)
언어별 텍스트와 의미 데이터를 저장하는 핵심 테이블입니다. `group_id`를 통해 여러 언어의 번역이 하나의 그룹으로 묶입니다.

### [words] - 단어 데이터
| 컬럼명 | 타입 | 설명 |
| :--- | :--- | :--- |
| `group_id` | INTEGER (PK) | 단어 그룹 고유 ID (내용 기반 해시) |
| `data_json` | TEXT | 언어별 상세 정보 (JSON 형식) |
| `created_at` | TEXT | 생성 일시 |

### [sentences] - 문장 데이터
| 컬럼명 | 타입 | 설명 |
| :--- | :--- | :--- |
| `group_id` | INTEGER (PK) | 문장 그룹 고유 ID (내용 기반 해시) |
| `data_json` | TEXT | 언어별 상세 정보 (JSON 형식) |
| `created_at` | TEXT | 생성 일시 |

---

## 2. 사용자 메타 테이블 (Personalized Meta)
사용자의 학습 상태, 메모, 태그 등 개인화된 정보를 관리합니다. 공유 데이터와 1:N 관계로 연결됩니다.

### [words_meta] - 단어 메타 정보
| 컬럼명 | 타입 | 설명 |
| :--- | :--- | :--- |
| `id` | INTEGER (PK) | 자동 증가 고유 번호 |
| `group_id` | INTEGER | `words` 테이블 참조 (FK) |
| `notebook_title` | TEXT | 자료집(단어장) 제목 |
| `source_lang` | TEXT | 입력 언어 코드 (e.g., 'ko') |
| `target_lang` | TEXT | 번역 언어 코드 (e.g., 'en') |
| `caption` | TEXT | 주석/노트 (개인별 메모) |
| `tags` | TEXT | 태그 (쉼표로 구분된 문자열) |
| `is_memorized` | INTEGER | 암기 여부 (0: 미암기, 1: 암기) |
| `is_synced` | INTEGER | 클라우드 동기화 성공 여부 |
| `review_count` | INTEGER | 총 복습 횟수 |
| `last_reviewed` | TEXT | 마지막 복습 일시 (ISO8601) |
| `created_at` | TEXT | 생성 일시 |

### [sentences_meta] - 문장 메타 정보
- 구조는 `words_meta`와 거의 동일하며, `sentences` 테이블을 참조합니다.

---

## 3. 대화 및 AI 기능 테이블 (AI & Dialogue)
AI 페르소나와의 대화 내역 및 참여자 정보를 관리합니다.

### [dialogue_groups] - 대화 세션 그룹
| 컬럼명 | 타입 | 설명 |
| :--- | :--- | :--- |
| `id` | TEXT (PK) | 대화 세션 UUID |
| `user_id` | TEXT | 소유자 고유 ID (클라우드 식별용) |
| `title` | TEXT | 대화 주제/제목 |
| `persona` | TEXT | 적용된 AI 페르소나 이름 |
| `location` | TEXT | 가상 상황/장소 설정 |
| `note` | TEXT | 세션 관련 추가 기록 |
| `created_at` | TEXT | 세션 생성 일시 |

### [participants] - 대화 참여자
| 컬럼명 | 타입 | 설명 |
| :--- | :--- | :--- |
| `id` | TEXT (PK) | 참여자 고유 ID |
| `name` | TEXT | 표시 이름 |
| `role` | TEXT | 역할 ('user' 또는 'ai') |
| `gender` | TEXT | 성별 설정 |
| `lang_code` | TEXT | 주로 사용하는 언어 코드 |
| `avatar_color` | INTEGER | UI 표시용 아바타 색상 |
| `created_at` | TEXT | 등록 일시 |

### [dialogues] - 상세 대화 내역 (Messages)
| 컬럼명 | 타입 | 설명 |
| :--- | :--- | :--- |
| `id` | INTEGER (PK) | 자동 증가 일련번호 |
| `session_id` | TEXT | `dialogue_groups` 참조 (FK) |
| `speaker` | TEXT | 발화 참여자 ID |
| `content` | TEXT | 발화된 원본 텍스트 |
| `translation` | TEXT | 발화에 대한 자동 번역 |
| `sequence_order` | INTEGER | 세션 내 발화 순서 (정렬용) |
| `created_at` | TEXT | 발화 일송 (기본값 현재시각) |

---

## 4. 인덱스 및 제약 조건 (Optimization)
- **복합 유니크 인덱스**: `words_meta (group_id, notebook_title)` - 동일 단어의 복수 단어장 등록 지원.
- **외래키**: `ON DELETE CASCADE` 설정을 통해 부모 데이터(학습 데이터/세션) 삭제 시 메타데이터 자동 정리.
- **캐시 테이블**: `translation_cache`를 통한 반복 번역 요청 가속화.

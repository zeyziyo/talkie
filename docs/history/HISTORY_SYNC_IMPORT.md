# 🔄 데이터 동기화 및 가져오기 이력 (Data Sync & Import History)
(서버 동기화, 온라인 자료실, 데이터 임포트 관련 이력)

---

## ✅ 구현 완료 기능 (Finalized Features)

### 2026-02-10: 데이터 정량화 및 전방위 국제화 (Phase 81.5)
- **국제화 (L10n)**: "나의 단어장", "나의 문장집" 기본 제목을 80개 언어로 자동 번역하여 시스템 기본값으로 적용.
- **무결성 (Integrity)**: Supabase 동기화 시 `type` 및 `tags` 누락 방지 로직을 `SupabaseService`에 구현.
- **임포트 (Import)**: JSON 임포트 시 `default_type` 분류 정확도 개선 및 언어 메타데이터 유실 시 앱 현재 설정을 상속하도록 보완.
- **강제화 (Enforcement)**: 저장 시 제목이 없는 경우 지역화된 기본 제목을 강제 부여하여 데이터 미노출 원천 차단.


### 2026-02-10: 데이터 노출 및 필터 UI 리뉴얼 (Phase 79)
- **문제 (Problem)**: 목표 언어 번역 파일이 아직 준비되지 않은 자료집의 경우, 모국어 로딩 시 건너뛰게 되어 화면에 아무것도 나타나지 않는 현상 발생.
- **해결 (Solution)**:
    - `loadRecordsByTags`를 모국어(Source) 중심으로 개편하여 목표어 없이도 즉시 노출되도록 수정.
    - 선택된 모국어와 실제 연관된 태그들만 추출하는 `getAllTagsForLanguage` 도입.
    - 검색 필터 UI를 **제목 태그 1개 + 일반 태그 3개**의 드롭다운 방식으로 개편하여 가독성 강화.

### 2026-02-10: 온라인 자료실 가져오기 오류 수정 (Online Library Import Hotfix)
- **문제 (Problem)**: "온라인 자료실"에서 번역이 없는 단일 언어 자료집 가져오기 시 항목이 저장되지 않는 문제.
- **해결 (Solution)**: `importFromJsonWithMetadata`에서 번역 필드 필수 체크를 완화하고, `saveUnifiedRecord`에서 단일 언어 저장을 지원하도록 수정.
- **UI 연동**: 자료 임포트 성공 직후 `loadRecordsByTags()`를 호출하여 화면에 즉시 반영되도록 개선.

### 2026-02-10: 파일명 기반 스마트 동기화 (File-Name-Based Smart Sync)
- **변경 (Change)**: 동기화 피벗(Sync Pivot)을 영문 제목(`mName`)에서 **파일 이름**(`nouns_1`)으로 전환.
- **사유 (Reason)**: 영문 제목은 수정될 가능성이 있으나, 파일 이름은 URL 경로로써 불변성이 높아 훨씬 안정적인 동기화가 가능함.
- **적용 (Scope)**: 단어, 문장뿐만 아니라 **대화(Dialogue)** 가져오기 로직에도 동일하게 적용.
- **Native Tag**: 파일명 동기화와 별개로, 현지어 제목을 태그로 보존하여 사용자 필터링 지원 (`Native Tag Strategy`).

### 2026-02-08: 피벗 언어 동기화 (Pivot Language Synchronization)
- **문제 (Problem)**: 다국어 자료(한/영/스)가 각각 다른 그룹 ID로 저장되어 서로 연결되지 않음.
- **해결 (Solution)**:
    1. **피벗 우선 전략 (Pivot-First Strategy)**: 자료 임포트 시 영어(Pivot) 데이터를 우선 파싱하여 `Subject`를 추출.
    2. **태그 정렬 (Tag Alignment)**: 모든 언어의 `overrideSubject`를 추출된 영어 제목으로 강제 통일.
    3. **그룹 ID 연결 (Group ID Linking)**: 동일한 `Subject` + `Sequence`를 가진 항목들은 언어가 달라도 같은 `group_id`를 공유하도록 DB 로직(`saveUnifiedRecord`) 수정.
- **결과 (Result)**: "사과"(KO)와 "Manzana"(ES)가 "Apple"(EN)을 매개로 하나의 그룹으로 묶임.

### 2026-02-08: 온라인 자료실 접근성 (Online Library Accessibility)
- **해결 (Solution)**: 앱바 메뉴에 **'온라인 자료실'** 숏컷 추가 및 다이얼로그 탭 분리(단어/문장/대화).
- **결과 (Result)**: 홈페이지를 거치지 않고 앱 내에서 직접 검색 및 다운로드 가능.

### 2026-02-07: 온디바이스 스마트 임포트 (Smart On-Device Import)
- **변경 (Change)**: 레거시 파일 병합 스크립트(`merge_materials.ps1`) 폐기.
- **해결 (Solution)**: 서버의 JSON 파일을 앱이 직접 다운로드하여 로컬 DB(`SQLite`)에 순차적으로 적재.
- **기능 (Feature)**: `materials_v3.json` 인덱스를 기반으로 최신 자료 자동 리스팅.

### 2026-02-06: 데이터 무결성 및 메타데이터 (Data Integrity & Metadata)
- **스키마 (Schema)**: JSON 구조에 `meta` 객체 도입 (Title, Source, Tags).
- **표준화 (Normalization)**: 참여자(Participant) 성별/역할 및 파일명 표준화 완료.


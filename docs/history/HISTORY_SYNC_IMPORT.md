# 🔄 데이터 동기화 및 가져오기 이력 (Data Sync & Import History)
(서버 동기화, 온라인 자료실, 데이터 임포트 관련 이력)

---

## ✅ 구현 완료 기능 (Finalized Features)

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


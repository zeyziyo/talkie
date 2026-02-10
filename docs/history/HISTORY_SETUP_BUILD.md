# 🛠️ 설정 및 빌드 이력 (Setup & Build History)
(빌드, 배포, 환경 설정, 문서화, 규칙 관련 이력)

---

## ✅ 구현 완료 기능 (Finalized Features)

### 2026-02-10: 릴리스 준비 및 80개 언어 검증 (Phase 82)
- **환경 점검**: `pubspec.yaml` 버전(1.1.0+15) 및 `AndroidManifest.xml` 필수 권한 전수 조사.
- **L10n 검증**: `tool/manage_l10n.dart`를 활용하여 80개 언어 전체 ARB 파일의 국제화 키 정합성 및 번역 무결성 확보.
- **코드 정리**: 대규모 리팩토링 및 기능 추가 이후 불필요한 출력문 및 임시 로직 제거로 코드 품질 향상.


### 2026-02-08: 프로젝트 파일 정리 (Project File Cleanup)
- **조치 (Action)**: 불필요한 임시 파일(`models.json`, 로그 파일 등) 및 구버전 변경 로그 삭제.
- **이동 (Move)**: 빌드 관련 가이드 문서(`*_BUILD_STRUCTURE.md`)를 `docs/guides/`로 이동하여 정리.

### 2026-02-08: 문서 통합 (Documentation Consolidation)
- **조치 (Action)**: `docs/PROJECT_RULES.md`를 유일한 강제 규칙 원본(Single Source of Truth)으로 지정.
- **정리 (Cleanup)**: `task.md` 내 인라인 규칙 삭제 및 링크 대체.
- **이력 분리 (History Split)**: `history.md`를 기능별 분할(`docs/history/`)하여 관리 용이성 확보.

### 2026-02-08: 빌드 오류 해결 (Build Error Resolution)
- **문제 (Problem)**: `HomeScreen` 내 중복 함수 정의 및 `Future.wait` 타입 불일치로 CI/CD 실패.
- **해결 (Solution)**:
    - 중복 코드(`_showMaterialSelectionDialog`) 제거.
    - `Future.wait<http.Response>` 제네릭 타입 명시.
    - **Rule 8**: 코드 수정 후 중복/괄호 검사 강제화.

### 2026-02-07: 레거시 청산 (Legacy Cleanup)
- **조치 (Action)**: `scripts/merge_materials.ps1` 및 `docs/merges` 폴더 영구 삭제.
- **문서 (Doc)**: `README.md` 등에서 '병합 다운로드' 안내 제거, '앱 내 임포트'로 변경.

### 2026-02-06: 국제화 자동화 (L10n Automation)
- **확장 (Scale)**: 지원 언어를 42개 → **80개**로 확장.
- **도구 (Tool)**: `verify_l10n.py` 및 `update_arbs.dart` 스크립트로 누락된 키(Key) 및 파일 정합성 100% 검증.

### 2026-02-05: GitHub Actions CI/CD (배포 자동화)
- **파이프라인 (Pipeline)**: `push` 트리거 시 `test` -> `build` -> `release` 파이프라인 구축.
- **보안 (Secret)**: `SUPABASE_URL`, `SUPABASE_ANON_KEY` 등 환경 변수 GitHub Secrets 연동.


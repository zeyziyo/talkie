# 📜 Antigravity 작업 이력 (History Index)

본 파일은 프로젝트의 통합 이력 인덱스입니다.
상세한 작업 내용은 아래의 분류별 파일에서 확인할 수 있습니다.

---

## 📂 카테고리별 상세 이력 (Detailed History by Category)

### 1. [🔄 데이터 동기화 및 가져오기 (Data Sync & Import)](docs/history/HISTORY_SYNC_IMPORT.md)
- **주요 내용**: 서버 동기화, 온라인 자료실, 피벗 언어 전략, 데이터 마이그레이션.
- **최근 이슈**: 온라인 가져오기 노출 문제, 그룹 ID 분리 (해결됨).

### 2. [🎨 UI 및 모드 (UI & Modes)](docs/history/HISTORY_UI_MODES.md)
- **주요 내용**: Mode 1~4 기능 구현, UI 디자인(프리미엄 카드), 필터링, 검색, 튜토리얼.
- **최근 이슈**: Mode 3 튜토리얼 하이라이트, 채팅 TTS 언어 감지.

### 3. [🛠️ 설정 및 빌드 (Setup & Build)](docs/history/HISTORY_SETUP_BUILD.md)
- **주요 내용**: CI/CD 파이프라인(GitHub Actions), 배포, 문서화 규칙, 국제화(L10n).
- **최근 이슈**: 홈 화면 빌드 오류, 문서 통합.

---

### [2026-03-09] 온보딩 및 홈 화면 내비게이션 개선 (v1.9.1)

- **Smart Mode Tabs (Swipe Indicator)**: 사용자가 앱의 다른 기능(모드)이 있음을 항상 인지하고 스와이프를 유도할 수 있도록 `AppBar` 하단에 **상시 노출되는 탭 바**를 추가했습니다.
- **Navigation Sync**: `PageController`와 `TabController`를 연동하여 스와이프와 탭 클릭이 상호 즉시 동기화되도록 구현했습니다.
- **UI Optimization**: 기존의 '단어/문장 토글'과 '언어 스왑' 버튼을 탭 바 아래로 배치하여 정보의 위계를 정리하고 화면 공간을 효율적으로 활용했습니다.
- **Welcome Banner**: 신규 사용자가 앱의 목적을 오해하지 않도록 메인 화면 상단에 세련된 그라데이션 디자인의 '환영 배너'를 추가했습니다.
- **80+ Language Support**: 앱이 지원하는 모든 언어(80개 이상)에 대해 환영 문구 및 탭 바 메뉴의 자동 번역과 정합성을 확보했습니다. 특히 스토어 등록 정보 문서의 언어 지원 수를 80개로 최신화했습니다.

### [2026-03-06] 검색 고도화 및 UI 테마 일관성 확보 (v1.8.13)

- **Search Accuracy (Mode 2/3)**: 기존의 포괄적인 JSON 문자열 검색(`t.data_json LIKE ?`)을 데이터베이스 엔진이 제공하는 정밀한 **`json_extract`** 함수 방식으로 전면 개편했습니다. 이제 대상 언어(`target_lang`)와 원본 언어(`source_lang`)의 `.text` 필드 및 `caption`만을 정확하게 조준하여 "물" 검색 시 "책" 같은 엉뚱한 결과가 출력되지 않도록 필터링 무결성을 확보했습니다.
- **As-You-Type Filtering**: `SearchBar` 위젯의 키보드 입력 발생 시점에 실시간 필터링을 트리거하여(`appState.setSearchQuery(value)`), 엔터키 없이도 즉각 반응하는 스마트 검색을 구현했습니다.
- **Focus & Overlay Recovery (v1.8.12)**: 자동완성 항복 클릭 시 `selection['type']` 참조 에러로 인해 모드 전환이 먹통이 되고 오버레이가 사라지지 않던 치명적 버그 수정. `FocusManager.instance.primaryFocus?.unfocus()`를 활용한 전역 포커스 회수 도입으로 앱 내비게이션 안정성 달성.
- **UI Unification (Mode 4)**: '대화 기록(Chat History)'에 있는 `TextField` 검색창 디자인을 모드 2, 3과 동일한 비율의 "다크 테마 둥근 검색바(`Colors.grey.shade900`, 흰색 텍스트)"로 교체하여 앱 전반의 다크 모드 통일감 향상.

### [2026-03-05] 카자흐스탄어 TTS 지원 해결 및 로케일 매핑 보강 (v16.2.3)

- **TTS Mapping Enhancement**: `app_state_settings.dart`의 `getServiceLocale` 테이블에 카자흐스탄어(`kk` -> `kk-KZ`), 우즈베크어, 싱할라어 등 누락되었던 30여 개 언어의 상세 로케일 매핑을 추가하여 TTS 엔진 호환성을 확보했습니다.
- **Reporting Accuracy**: 사용자가 보고한 카자흐스탄어 작동 불능 이슈를 정밀 조사하여, 기술적 원인(매핑 누락)과 환경적 원인(iOS 18+ 사양)을 명확히 구분한 교정 보고서를 작성했습니다.


### [2026-03-04] GitHub Actions 빌드 복구 - 아키텍처 명칭 불일치 해결 (v16.2.2)

- **CI Asset Fix**: `sqlite3` 릴리스 자산의 `x86` 아키텍처 파일명이 서버상에서 `ia32`로 명명되어 있는 것을 확인하여 `build-apk.yml`의 다운로드 루프를 `ia32`로 수정했습니다.
- **Verification Logic**: 다운로드 성공 여부 검증 필터를 다시 한번 최적화하여 빌드 안정성을 높였습니다.


### [2026-03-04] GitHub Actions 빌드 복구 및 CI 워크플로우 견고화 (v16.2.1)

- **CI Build Fix**: `sqlite3` 네이티브 에셋(`libsqlite3.x64.android.so`) 다운로드 시 발생하는 `HttpException` 이슈를 해결하기 위해 `build-apk.yml` 워크플로우를 수정했습니다.
- **Robustness**: `curl` 옵션에 `--fail`, `--location`, `--connect-timeout`, `--retry 10` 등을 추가하여 네트워크 불안정 상황에서의 재시도 로직을 대폭 강화했습니다.
- **Verification Logic**: 다운로드 완료 후 에셋 파일의 존재 여부와 개수(4개 아키텍처)를 검증하는 단계를 추가하여, 불완전한 상태로 빌드가 진행되는 것을 방지했습니다.


### [2026-03-04] 리소스 소실 복구 및 전 세계 언어 현지화 완결 (v16.2.0)

- **Data Recovery**: `git checkout`으로 유실되었던 10,537개의 l10n 번역 항목을 `mark_all_untranslated.py` 도구를 통해 전수 식별하고 재번역하여 시스템 무결성을 완벽히 복구했습니다.
- **Missing Keys Restoration**: `flutter analyze` 에러를 유발하던 `menuLanguageSettings`, `libTitleNouns1`, `enterWordHint` 등 13개의 필수 리소스 키를 마스터 ARB 파일에 복원하고 80개 언어 전체에 반영했습니다.
- **Mistranslation Fix**: 앱바 메뉴의 "사용 설명서"(`menuWebDownload`)가 일부 언어에서 영문으로 노출되던 이슈를 78개 언어 모두에서 각국의 로컬 언어(예: JA 取扱説明書, ES Manual de usuario)로 자동 수정 및 검증 완료했습니다.
- **Verification**: `flutter gen-l10n` 및 `flutter analyze` 정적 분석 결과 "No issues found!" 상태를 달성하여 배포 안정성을 확보했습니다.


### [2026-03-03] 온라인 자료실 현지화 제목 자동 복구 및 시스템 무결성 확보 (v16.1.0)

- **Localization Repair**: 앱 시작 시 백그라운드 무음 구동(`_initializeAll` -> `fetchOnlineMaterialsList`)을 통해, 사용자가 '온라인 자료실' 메뉴를 직접 열지 않아도 기존에 잘못된 영문 표시명(예: `Nouns 1`)이 설정된 모국어 번역 제목(예: `명사 1`)으로 자동 전환 및 복구되도록 시스템을 고도화했습니다.
- **Import Integrity**: 신규 자료 다운로드 시 발생하던 `overrideSubject` 파라미터 강제 덮어쓰기 버그를 100% 제거하여, 배포된 모국어 원본 JSON 내부의 고유 `subject` 값이 UI에 최우선 적용되도록 보완했습니다.
- **Legacy Migration**: 과거 생성되어 태그 정보가 누락된 구형 DB 레코드까지 빠짐없이 마이그레이션하기 위해, `_repairLocalTitles` 함수에 영문 베이스 동기화 키(Name 필드) 매칭 로직을 추가하여 강력한 현지화 자동 업데이트를 수행하도록 변경했습니다.
- **Query Bug Fix**: SQLite 내 JSON 배열 형태의 동기화 태그 검색 쿼리에서 발생하던 쉼표(,) 구분 인식 버그를 쌍따옴표(\" \") 정밀 검색 방식으로 교체해 완벽히 해결했습니다.

---

### [2026-02-28] 대화 위치 정보 저장 방식 간소화 (v16.0.0)

- **Feature (Location Format Simplification)**: 사용자의 요청에 따라 대화 내역 저장 시 위치 필드에 더 이상 국가/도시 지명(Address)을 사용하지 않도록 수정했습니다. 대신 geocoding 변환 과정을 생략하고, Geolocator 또는 IP-API 폴백으로부터 획득한 순수 위도/경도 좌표(lat, lon)만을 일관성 있게 저장하여 데이터 정합성을 확보했습니다.

---

### [2026-02-27] 카카오 로그인 KOE205 해결 및 키 해시 추출 도구 추가 (v15.8.4)

- **Key Hash Troubleshooting**: 릴리스 APK에서 발생하는 KOE205(잘못된 요청) 오류를 해결하기 위해, 앱 실행 시 현재 플랫폼의 실제 키 해시 값을 로그로 출력하는 코드를 `main.dart`에 추가했습니다.
- **Documentation Update**: 카카오 개발자 센터의 2025년 12월 개편된 UI를 반영하여 Redirect URI 및 플랫폼 설정 경로를 최신화했습니다.

---

### [2026-02-27] 안드로이드 런타임 크래시 방지 및 빌드 보완 (v15.8.3)

- **Main Entry Point Stabilization**: `main.dart`의 초기화 로직을 `try-catch` 블록으로 보호했습니다. `.env` 파일 로딩 실패나 카카오 SDK 초기화 오류가 발생하더라도 앱이 비정상 종료되지 않고 실행되도록 개선했습니다.
- **CI/CD Configuration Update**: GitHub Actions의 `build-apk.yml`에서 `.env` 생성 시 카카오 릴리스 키(`KAKAO_NATIVE_APP_KEY`, `KAKAO_JAVASCRIPT_KEY`)를 포함하도록 수정하여, 빌드된 APK가 런타임 에러 없이 작동하도록 보완했습니다.
- **Code Refactoring**: `main.dart` 내의 중복된 환경 변수 로딩 코드를 제거하고 초기화 로그 출력을 체계화했습니다.

---

- **Manifest Merger Fix**: `AndroidManifest.xml`에서 사용된 `KAKAO_NATIVE_APP_KEY` 플레이스홀더가 Gradle에서 정의되지 않아 발생하던 빌드 오류를 해결했습니다. `build.gradle.kts`의 `manifestPlaceholders`에 해당 키값을 등록하여 CI/CD 환경에서의 빌드 정합성을 확보했습니다.

### [2026-02-25] 빌드 오류 수정 및 로직 최적화 (v15.8.1)

- **Build Fix (main.dart)**: 누락되었던 `dart:io`, `google_mobile_ads`, `shared_preferences` 임포트를 복구하고 `io.Platform` 접두어 문제를 해결했습니다.
- **Conflict Resolution**: `google_mobile_ads` 패키지의 `AppState` 클래스와 프로젝트 내 클래스 간의 명칭 충돌을 `hide` 키워드로 해결했습니다.
- **Type Safety (Kakao Auth)**: `SupabaseAuthService.signInWithKakao`의 반환 타입을 `Future<void>`로 정규화하여 `signInWithOAuth`와의 타입 불일치 오류를 제거하고, `AppStateAuth`의 연동 로직을 OAuth 흐름에 최적화했습니다.
- **Code Hygiene**: `app_state_auth.dart`에서 사용되지 않는 지역 변수를 삭제하고 `flutter analyze` 무결점 상태를 복구했습니다.

### [2026-02-25] 카카오톡 로그인 기능 통합 (v15.8)

- **Kakao Login Integration**: 카카오톡 간편 로그인 기능을 추가했습니다. `kakao_flutter_sdk_user`를 도입하고 `main.dart`에서 초기화하여 네이티브 및 웹 환경을 지원합니다.
- **Platform Configuration**: Android(`AndroidManifest.xml`)의 패키지 가시성 및 리다이렉트 액티비티 설정, iOS(`Info.plist`)의 URL 스키마 등록을 완료했습니다.
- **Supabase OAuth Linkage**: Supabase의 카카오 OAuth 프로바이더를 연동했습니다. `SupabaseAuthService`에 `signInWithKakao`를 구현하고, `AppStateAuth`에서 기존 익명 세션 데이터와의 머지 로직을 통합했습니다.
- **Kakao Style UI**: `AuthScreen`에 카카오 공식 브랜드 가이드(노란색 #FEE500)를 준수한 로그인 버튼을 배치했습니다.
- **L10n & Assets**: 한국어 및 영어 다국어 파일에 "카카오로 계속하기" 문자열을 추가하고, 카카오 전용 128px 고해상도 아이콘 리소스를 생성 및 등록했습니다.
- **Verification**: `flutter analyze` 정적 분석 무결성을 확인하고, 안드로이드 디버그 키 해시 추출 도구를 지원하여 설정 편의성을 높였습니다.

### [2026-02-23] 안드로이드 구글 로그인 수정 및 이메일 인증 기능 구현 (v15.7)

- **Android Google Login Fix**: 안드로이드 환경에서 "No ID Token found" 오류가 발생하던 문제를 해결했습니다. `.env`의 `GOOGLE_WEB_CLIENT_ID`를 '웹 애플리케이션' 클라이언트 ID로 수정하고, `SupabaseAuthService`에서 `openid`, `profile` 스코프를 명시적으로 요청하도록 개선했습니다.
- **Email/Password Authentication**: Supabase 기반의 이메일 가입 및 로그인 기능을 새롭게 구현했습니다. `SupabaseAuthService`와 `AppStateAuth`에 관련 로직을 추가하여 보조 인증 수단을 확보했습니다.
- **Unified Auth UI (AuthScreen)**: 구글 로그인과 이메일 인증을 통합하여 제공하는 `AuthScreen` 위젯을 신규 개발했습니다. 로그인/가입 모드 전환, 비밀번호 가시성 토글, 유효성 검사 기능을 포함합니다.
- **App Entry Integration**: `HomeScreen`의 상단 앱바와 사이드바(Drawer)에 위치한 로그인 버튼을 새로운 `AuthScreen`으로 연동하여 사용자 접근성을 통일했습니다.
- **Unified Auth UI Refinement**: 구글 로그인 버튼의 시인성을 개선(브랜드 색상 및 아이콘 적용)하고, 다국어 파일의 "Google로 계속하기" 오번역을 수정하여 웹/모바일 공통의 인증 경험을 고도화했습니다.
- **L11n & Quality**: 이메일 인증 관련 다국어(KO, EN) 문자열을 추가하고, 비동기 BuildContext 사용 관련 린트 경고(`context.mounted`)를 모두 해결하여 `flutter analyze` 무결점 상태를 유지했습니다.

### [2026-02-23] 대화 이력 병합 로직 및 빌드 안정화 (v15.5)

- **Anonymous Data Merge**: 익명 사용자가 구글 로그인 시 기존 대화 내역이 유실(은폐)되지 않도록, 로컬 DB의 `user_id`를 새로운 계정 ID로 자동 업데이트하는 병합 로직을 구현했습니다.
- **Dialogue ID Integrity**: 서버와 로컬 간의 대화 ID 불일치(Mismatch)로 인해 메시지가 유실되던 근본 원인을 수정했습니다. 이제 서버 저장 시 로컬 고유 UUID를 그대로 유지하여 재설치 후에도 완벽한 복원이 가능합니다.
- **Login Flow & UI Feedback**: Google 로그인 상태가 UI(Drawer)에 실시간으로 반영되지 않던 문제를 해결했습니다. 이제 로그인 즉시 '로그아웃' 버튼이 나타나며, 로그인/로그아웃 성공·실패 시 하단 스낵바를 통해 명확한 피드백을 제공합니다.
- **L10n Enrichment**: 로그인 상태 변화와 관련된 모든 피드백 메시지를 한국어 및 영어 국제화 파일(`app_ko.arb`, `app_en.arb`)에 추가하여 글로벌 사용자 경험을 강화했습니다.
- **Build Fix (Kernel Snapshot)**: `HomeScreen`에서 `statusLoginFailed` 리소스가 메서드(Function)임에도 문자열처럼 사용되던 문법 오류를 수정했습니다. 또한 `l10n.yaml`의 `output-dir`을 교정하여 모든 80개 언어의 국제화 파일이 소스 경로(`lib/l10n`)에 정확히 생성되도록 보장했습니다.
- **UI Logic Finalization**: `AppLocalizations`의 불필요한 Null-aware 연산자를 제거하고 Lint 경고를 해결하여 최적화된 빌드 무결성을 달성했습니다.

---

### [2026-02-23] 구글 로그인 UI 개선 및 데이터 동기화 보강 (v15.4)

- **Hotfix (Build Recovery)**: 배포 시 누락되었던 `Mode2Widget`, `Mode3Widget` 파라미터(`searchKey`)와 자동 생성된 국제화(L10n) 파일을 긴급 푸시하여 원격 빌드 시스템을 복구했습니다.
- **Auth Accessibility**: 구글 로그인/로그아웃 기능을 메인 사이드바(Drawer)에 통합하여 접근성을 높이고, 로그인 시 사용자 프로필(아바타, 이메일)이 표시되도록 개선했습니다.
- **Auto Session Sync**: 앱 구동 시 및 로그인 이벤트 발생 시 세션을 즉시 감지하여 대화 기록 및 학습 데이터를 클라우드로부터 자동 동기화하는 트리거를 보강했습니다.
- **Cloud-to-Local Pull**: `syncCloudLibraryToLocal` 기능을 구현하여 사용자의 클라우드 보관함 데이터를 로컬 SQLite로 자동 캐싱(Pull)함으로써 기기 변경 시에도 데이터 연속성을 보장했습니다.
- **Sync Visualization**: 데이터 동기화 진행 중일 때 사이드바에 진행 인디케이터와 상태 메시지를 표시하여 사용자 피드백을 강화했습니다.
- **Localization**: 로그인, 로그아웃, 동기화 상태 메시지 등 신규 UI 요소에 대해 한국어 및 영어 국제화(L10n)를 완료했습니다.
- **Quality**: `flutter analyze` 정적 분석 오류를 전수 해결하고 미사용 변수를 정리했습니다.

### [2026-02-22] 출시 품질 최종 고도화 (Phase 32)

- **AI Participant Recovery**: AI 참가자 명칭이 'Group'으로 표시되던 하드코딩 오류를 'AI'로 통일하고 초기화 로직을 정교화했습니다.
- **TTS Core Logic**: 주요 4개 국어(KO, EN, ES, JA)에 대해 성별(Male/Female)과 일치하는 최적의 보이스가 Source/Target 언어 모두에서 선택되도록 알고리즘을 고도화했습니다.
- **Visual Polish**: HomeScreen 및 ChatScreen에 남아있던 테스트용 버전 배너(v14.6)와 잔여 임시 UI 요소를 전면 제거하여 정식 버전의 품질을 확보했습니다.
- **User Guidance**: 튜토리얼(`TutorialCoachMark`) 가이드 지점에 검색바(SearchBar)를 추가하여 대량 데이터 검색 기능을 사용자에게 효과적으로 각인시켰습니다.
- **Static Analysis**: `flutter analyze` 린트 경고(Color.value, DropdownButtonFormField.value 등) 및 미사용 코드를 전수 정리하여 No Issues Found 상태를 달성했습니다.

### [2026-02-22] 출시 준비 및 국제화(i18n) 고도화 (Phase 31)

- **Internationalization**: `ParticipantManageScreen` 및 `ChatScreen` 내의 모든 하드코딩된 영어 문자열을 제거하고 `l10n`(KO, EN, ES, JA)으로 전환 완료.
- **User Guidance**: `HelpDialog`의 안내 문구와 JSON 예제를 최신 v14.6+ 데이터 무결성 패치 규격(ID 기반 매핑)에 맞게 현행화.
- **UI/UX Polish**: 성별 전환 툴팁, 참가자 이름 변경 다이얼로그, 번역 에러 메시지 등 사용자 접점 텍스트 전수 조사 및 디자인 폴리싱.
- **Infrastructure**: `pubspec.yaml` 버전을 `1.2.0+16`으로 범프하고, 프로젝트 청사진(`integrated_data_structure.md`)에 국제화 사양 업그레이드 내역 반영.
- **Deployment**: 모든 수정 사항을 GitHub 메인 브랜치에 안전하게 배포하여 출시 빌드 준비 완료.

### [2026-02-21] Chat 기능 버그 수정 및 AI 구현 (2차 시도 완결)

- **Bug Fix (이름 매핑 불일치)**: DB 저장 시 'User'로 하드코딩되던 발화자 이름을 실제 참가자 이름('나')으로 동기화. 히스토리 로드 시 참가자 데이터(성별, 언어) 유실 문제 해결.
- **Bug Fix (STT 입력 안정화)**: `ChatScreen`에서 마이크 버튼 클릭 시 `appState.stopListening()`을 선제 호출하여 기존 STT 세션과의 충돌 방지.
- **Reliability (초기화 보강)**: `AppState` 생성자에서 참가자 정보를 미리 로딩하도록 수정하여 신규 유저의 다이얼로그 지연 현상 제거.
- **Feature (AI 응답 및 모드)**: 참가자 선택 시 AI 포함 여부에 따라 AI 대화 모드와 파트너(사람간) 모드가 정확히 자동 전환되도록 구현.
- **Desktop (인프라 구축)**: Windows 빌드 대응을 위한 `sqflite_ffi` 설정 및 플랫폼 가드(`kIsWeb`, `Platform.isWindows`)를 `main.dart`에 적용 완료. (수동 빌드 도구 설치 후 즉시 빌드 가능)
- **Quality**: `flutter analyze` No issues found.

### [2026-02-20] Phase 6 Bug Fixes: Online Library & Start Chat

- **Bug Fix (Online Library)**: `online_library_dialog.dart`의 category 필터 조건에서 `"Dialogue"` (단수형)를 `"Dialogues"` (복수형) 소문자 비교로 수정. JSON 실제 값과의 불일치로 대화 탭이 빈 화면으로 표시되던 문제 해결.
- **Bug Fix (Start Chat)**: `participant_selector_dialog.dart`의 "Start Chat" 버튼 `onPressed`를 `async`로 변경하고 `onSelected` 콜백을 `await` 처리. 기존에는 `Navigator.pop` 이후 `startNewDialogue()`가 완료되기 전에 `ChatScreen`이 열려 `activeDialogueId == null` 상태였던 타이밍 버그 해결.
- **Quality**: `flutter analyze` No issues found.



### [2026-02-13] AI Chat UI/UX Refinement & Reliability (Phase 119)
- **UI/UX**: 성별 선택 다이얼로그를 제거하고, 각 참가자의 헤더(언어 드롭다운 옆)로 성별 전환 위젯을 이동하여 실시간 제어성을 극대화했습니다. 
- **Acoustic Symmetry**: 영어('en-US') 및 한국어('ko-KR') 로케일을 강제 매핑하여 억양 불일치(콩글리쉬)를 원천 차단했습니다.
- **Performance**: 채팅 화면 진입 시 `SpeechService`를 사전 초기화(Pre-warm)하여 첫 마이크 클릭 시의 반응 지연 현상을 해결했습니다.
- **Reliability**: 대화 저장 시 삭제된 레거시 테이블(`sentence_translations`) 참조로 인해 트랜잭션이 실패하여 내용이 누락되던 중대 결함을 해결했습니다. `UnifiedRepository` 기반으로 저장 로직을 정규화하여 대화 기록 로딩의 대규모 신뢰성을 확보했습니다.
- **Stability**: `flutter analyze` 린트 오류 및 미사용 임포트/레거시 메서드(`_getUnifiedId`)를 정리하여 경고 제로 상태를 달성했습니다.

### [2026-02-13] Mode 2 Data Visibility & Null Safety Fix (Phase 114)
- **Bug Fix**: 온라인 자료실 자료 임포트 시 복습 모드(Mode 2)에서 카드가 표시되지 않던 결함(TypeError 및 타입 불일치)을 해결했습니다.
- **Integrity**: `Mode2Card` 위젯에 널 안전성(Null Safety)을 적용하여 특정 언어의 번역 정보가 누락되더라도 리스트 전체의 렌더링이 중단되지 않도록 보완했습니다.
- **Logic**: `is_memorized` 상태 확인 로직을 `bool` 매칭으로 수정하여 `AppState`와의 데이터 정합성을 확보했습니다.
- **Quality**: `flutter analyze` 정적 분석을 통해 미사용 변수 및 테스트 코드의 중복 임포트를 정리하여 경고 제로 상태를 달성했습니다.

### [2026-02-13] Multi-Language Merge & Order Integrity Fix (Phase 115)
- **Feature**: 온라인 자료실 임포트 시 소스/타겟/피봇 JSON을 인덱스 기준으로 병합하여 저장하는 지능형 엔진 구현. 이제 한국어 카드에 영어 번역이 정상 노출됩니다.
- **Integrity**: 임포트 시 `batchCreatedAt` 타임스탬프를 고정하여 자료집 내 단어 순서가 역전되거나 뒤섞이는 현상을 원천 해결했습니다.
- **Search**: 복습 모드 정렬 기준을 `created_at DESC, id ASC`로 정교화하여 최신 자료집 우선 노출 및 내부 순서 무결성을 확보했습니다.
- **L10n**: 피봇 언어(English) 데이터 존재 시 학습 카드 노트에 영문 힌트를 자동 추가하도록 개선했습니다.

### [2026-02-13] Manual Input Consistency & Visibility Fix (Phase 116)
- **Bug Fix**: 수동 입력(Mode 1) 자료가 복습 모드(Mode 2/3)의 "제목 태그(자료집)" 필터 목록에서 누락되던 결함을 해결했습니다.
- **Improved**: `saveTranslation` 시 `study_materials` 테이블에 자료집 정보를 자동 등록하여 수동/자동 데이터의 가시성을 일원화했습니다.
- **Integrity**: 소스 행뿐만 아니라 타겟(번역) 행에도 공통 메타데이터(`note`, `style`)를 동기화하고, 언어별 고유 정보(`root`, `form_type`)는 엄격히 격리하여 무결성을 강화했습니다.

### [2026-02-13] Online Material Metadata Enrichment (Phase 117)
- **Feature**: 온라인 자료실 임포트 시 파일 상단의 기본 품사(`pos`)를 개별 엔트리로 상속하는 지능형 추출 로직(`getVal`)을 구현했습니다.
- **Merging**: 소스/타겟 언어 파일의 고유 메타데이터(어근 등)가 병합 과정에서 유실되지 않고 각각의 행에 정확히 배분되도록 엔진을 고도화했습니다.
- **Integrity**: 빈 문자열과 누락 필드를 정규화하여 앱의 고급 학습 기능(필터링, 그룹화)과의 100% 정합성을 Toxicology-style로 확보했습니다.

### [2026-02-13] AI Chat Multi-Language & Acoustic Symmetry (Phase 118)
- **Feature**: 대화 모드(Mode 4)에서 사용자와 AI 각각의 대화 언어를 독립적으로 지정할 수 있는 헤더 드롭다운을 추가했습니다.
- **Toggle**: 각 메시지별로 번역(상대 언어)을 볼 수 있는 토글 스위치를 배치하여 학습 가독성을 높였습니다.
- **Acoustic Symmetry**: 사용자의 핵심 요청인 "표시된 언어와 발음 억양의 일치"를 위해, 토글된 언어에 맞춰 TTS 로케일이 즉시 전환되도록 구현했습니다 (예: 영어 텍스트는 원어민 발음으로 재생).
- **L10n**: KO, EN, ES, JA 4개 국어 지원 및 `flutter analyze` 무결성 검증을 완료했습니다.

### [2026-02-13] Pivot Sync Precision & Performance Optimization (Phase 105 ~ 108)
- **UI/L10n**: 문체 배지(`Style Badge`)를 80개 언어 전체에 적용하고, Mode 2 카드에서 문체 정보를 시각적으로 확인할 수 있도록 개선 (Phase 105).
- **Integrity**: 서버의 정식 그룹 ID(`Canonical ID`) 확인 및 로컬 임시 ID의 자동 재연결(`Relinking`) 로직을 구현하여 데이터 정합성 강화 (Phase 106).
- **Sync**: 인터넷이 끊긴 상태에서 저장된 항목이 나중에 백그라운드 동기화될 때도 서버의 정식 ID를 찾아 자동으로 통합하도록 `BackgroundSyncService` 고도화 (Phase 107).
- **Performance**: `sqflite`의 `Batch` 객체와 SQL 서브쿼리를 활용하여 수천 개의 레코드와 태그를 한꺼번에 삽입하는 고속 임포트 엔진 구축 (Phase 108).
- **Database**: 인덱스 추가(`v16`)를 통해 대량 데이터 조회 성능을 최적화하고 시스템 안정성을 확보.

### [2026-02-13] Focus & Autocomplete UX Maintenance (Phase 109 / 113)
- **Bug Fix**: 복습/발음 연습 모드에서 검색어 초기화 시 자동 완성 목록(Overlay)이 사라지지 않던 잔상 문제를 해결.
- **Repository**: `WordRepository` 및 `SentenceRepository`의 검색 메서드에 빈 검색어 가드를 추가하여 불필요한 DB 조회를 차단.
- **UI/UX**: `Autocomplete` 위젯의 컨트롤러와 `AppState` 간의 동기화 로직을 강화하고, 삭제 버튼 클릭 시 오버레이가 즉시 닫히도록 개선.
- **Sync Fix**: `AppStateMode1.jumpToSearchResult`에서 '학습 자료(material)' 선택 시에도 `loadRecordsByTags()`가 호출되도록 하여 선택 결과가 즉시 UI에 반영되도록 수정 (Phase 113).
- **Focus Fix**: 각 모드의 검색창 클리어(X) 버튼 및 항목 선택 시 `focusNode.unfocus()` 또는 `FocusScope`를 통해 오버레이를 강제로 해제하여 ghosting 현상 해결.

### [2026-02-13] Device Library & Localization (Phase 111)
- **Feature**: 기기 자료실(Device Library) 기능 추가. HomeScreen 메뉴에 로컬 JSON 파일 임포트 기능 연결.
- **Improved**: 임포트 시 동일한 제목과 언어의 자료가 존재할 경우 중복 임포트를 차단하고 안내 메시지 표시 로직 추가.
- **L10n**: 다국어(ES, JA) 번역 보완 및 중복 제목 에러 메시지(importDuplicateTitleError) 추가.

### [2026-02-13] Dialogue Fix & Mode 2 Isolation (Phase 112)
- **Bug Fix**: 새 대화 저장 후 채팅 히스토리에서 내용이 나타나지 않던 문제(로드 쿼리 언어 코드 불일치 등) 해결.
- **Isolation**: 사용자 요청에 따라 대화(Dialogue) 자료를 복습 모드(Mode 2) 학습 자료 목록에서 완전히 제거하여 채팅 전용으로 격리.
- **Integrity**: `DialogueRepository`의 메시지 조회 쿼리를 강화하고, `AppStateChat`에 참가자 생성 시 널 참조 방지 가드를 추가하여 안정성 확보.
- **Reporting**: 대화 목록 로드 시 'User'/'user' 대소문자를 구분하지 않고 메시지 수를 정확히 카운트하도록 개선.

### [2026-02-13] Phase 112 Hotfix: Emergency Build Recovery
- **Critical Fix**: `lib/services/database_service.dart`의 괄호 유실로 인한 대규모 구문 오류(Syntax Error)를 복구하고 누락된 `importFromJsonWithMetadata` 선언부를 복원했습니다.
- **Scope Fix**: `lib/screens/chat_screen.dart`의 화자 헤더에서 정의되지 않은 변수(`isUser`, `isPartner`) 참조 오류를 해결하고, 'Partner' 명칭의 지역화 로직을 보완했습니다.
- **Async Fix**: `lib/screens/home_screen.dart`의 `PopupMenuButton` 콜백에 `async` 키워드가 누락되어 `await`를 사용할 수 없던 문제를 수정했습니다.
- **Stability**: 이전 커밋 과정에서 의도치 않게 mangled된 `Switch` 위젯 로직을 정상화하여 UI 안정성을 확보했습니다.

### [2026-02-13] Import Visibility & ID Type Mismatch Fix (Phase 110)
- **Bug Fix**: 자료 임포트 시 `syncKey`와 `id` 필드의 타입 불일치로 인해 임포트된 자료가 즉시 화면에 노출되지 않던 문제 해결.
- **Integrity**: `DatabaseService.importFromJsonWithMetadata` 로직을 개선하여 임포트된 자료의 `id`가 `int` 타입으로 정확히 저장되도록 수정.
- **UI/UX**: 임포트 완료 후 `AppState`의 `notifyListeners()`를 호출하여 UI가 즉시 업데이트되고, 임포트된 자료가 화면에 바로 표시되도록 개선.

### [2026-02-12] Supabase 스키마 정규화 및 양방향 동기화 정합성 완료 (Phase 98 + 98.1 + 98.2 + 98.3)
- **Schema Alignment**: 로컬 SQLite와 Supabase 공용 DB의 `words`, `sentences` 테이블 스키마를 1:1로 일치시켰습니다. 불필요한 필드는 각 테이블에서 제거하여 데이터 순수성을 확보했습니다.
- **Normalization**: `words`는 `pos`/`form_type`/`root`, `sentences`는 `pos`/`style` 필드로 명확히 분리하여 전문화된 정보만 보관합니다.
- **Selective Persistence**: 로컬 저장(`DatabaseService`) 및 클라우드 동기화 시 각 테이블 스키마에 맞는 필드만 선별적으로 저장하도록 모든 유입 경로를 수정하였습니다.
- **Export Patch**: 로컬 DB 테이블 간 컬럼 불일치로 인한 JSON 내보내기(`UNION ALL`) 오류를 해결하고 신규 필드들을 내보내기 대상에 포함했습니다.
- **Edge Function**: AI 분석 결과를 전송 시 단어/문장 타입에 맞춰 동적으로 필드를 매핑하도록 업데이트했습니다.

### [2026-02-12] Technical Debt Cleanup & Optimization (Phase 96)
- **Centralization**: `lib/constants/app_constants.dart`를 생성하여 분산되어 있던 서버 URL, GitHub 경로, 기본 학습 자료 명칭 등을 상수로 통합 관리.
- **Refactoring**: `AppStateSettings` 내의 로캘 맵핑 로직(`getServiceLocale`)을 하나로 통합하고 중복된 레거시 메서드를 제거하여 코드 응집도 향상.
- **Optimization**: `TranslationService`에 안전성 검증 에러 메시지 맵핑 도우미(`getErrorMessage`)를 추가하여 `AppState`의 복잡한 UI 분기 로직을 정규화.
- **Integrity**: 전체 파트 파일(`Mode 1, 2, 3, Chat`)의 내부 메서드 참조 명칭을 일관성 있게 동기화하고, `flutter analyze`를 통해 잠재적 오류를 전수 제거.

### [2026-02-12] UI Finish & Critical Download Fix (Phase 95)
- **Repair (Online Library)**: `baseRepoUrl`에서 실제 서버에 존재하지 않던 `/docs` 경로를 삭제하여 온라인 자료실의 404 다운로드 오류(Download failed)를 근본적으로 해결.
- **UX (Mode 1)**: 번역 결과창에 부적절하게 표시되던 "번역할 텍스트를 입력하세요" 힌트를 "**번역 결과 - 수정 가능함** (Translation result - editable)"으로 변경하고 80개 언어 전체에 적용.
- **UI (Mode 3)**: 발음 연습 모드 카드의 상단 헤더에 **언어 이름(전체 명칭)**과 **주석(Note)**을 가로 한 줄로 나란히 배치하여 레이아웃 최적화.
- **Relocation (Hint)**: 상단 텍스트 영역에 노출되던 **목표 언어 힌트**(첫 글자 힌트 등)를 하단 오디오 컨트롤 영역(Listening/Result View)으로 이전하여 가독성 강화 및 디자인 간소화.


### [2026-02-12] UI Refinement & Mode 1 Reset Fix (Phase 94)
- **Repair**: Mode 1(입력) 초기화(X) 버튼 클릭 시 입력란뿐만 아니라 '상세 분류'의 주석(Note) 필드도 함께 초기화되도록 `AppState.clearTexts` 로직 수정.
- **UI/UX**: Mode 2(복습) 상단의 4가지 주요 컨트롤(검색 조건, 끝낸것, 자동 재생, 재생 시차)을 가로 한 줄로 재정렬하고 `SingleChildScrollView`를 적용하여 공간 효율성 극대화.
- **Terminology**: "생각 시간 간격" 용어를 더 직관적인 "**재생 시차** (Playback Delay)"로 변경하고 80개 언어 전체 동기화.
- **Card Design**: `Mode2Card`에서 중복 노출되던 원형(Root Word) 표시를 제거하고, 태그와 주석을 첫 번째 줄(품사 뒤)로 통합 배치하여 학습 카드의 세로 높이 축소 및 시인성 개선.
- **Stable**: `AppStateAuth.dart`의 온라인 자료실 다운로드 URL 구성 시 ISO 코드를 서버 디렉토리명으로 변환하는 `getLangDir` 로직의 안정성 재검증 및 `importing` 메시지 지역화 처리.

### [2026-02-11] Mode 1 UI Aesthetics & Emoji Removal (Phase 84.5)
- **UI**: `HomeScreen` 앱바 하단에 커스텀 단어/문장 토글(글자 크기 16px)을 배치하고, `Mode1Widget` 내부의 중복된 토글 행을 삭제하여 레이아웃 최적화.
- **Rules**: 모든 Mode 1 UI(주석, 상세 분류, 번역 실행, 언어 배지, 어근 배지, 저장 버튼 등)에서 이모지를 전면 제거하여 전문적인 프리미엄 디자인 완성. 하드코딩된 한국어 문자열을 `l10n` 키로 전면 교체하여 80개 언어 지원 규격 준수.
- **Font**: "상세 분류" 버튼 및 앱바 토글의 텍스트 크기를 확대하여 고령자 및 시인성 중심의 가독성 확보.
- **Repair**: 버튼 아이콘 제거 과정에서 발생한 구조적 오류를 신속히 복구하고 일반적인 `ElevatedButton`으로 스타일 통일.
- **Docs**: `main_view_flow.md` 및 `metadata_dialog_flow.md` 설계 문서를 실제 UI(토글 위치, 버튼 레이블) 및 "No Emoji" 규칙과 완벽히 동기화.
- **Misc**: `RecommendationWidget` 등의 보조 위젯에서도 불필요한 이모지(✨)를 삭제하여 일관성 유지.
- **Hotfix (CI/Build)**: `mode1_widget.dart`의 하위 위젯 중첩 시 발생한 초과 괄호(Syntax Error)를 제거하고 미사용 메서드(`_buildToggleButton`)를 정리하여 GitHub Actions 빌드 정상화 완료. `withOpacity` 경고 사항을 최신 `withValues`로 일괄 교체.

### [2026-02-11] 앱 흐름도(App Flow Diagram) 전용 폴더 및 고도화 (Phase 85)
- **Structure**: 설계 문서 관리 효율화를 위해 `docs/flows/` 전용 폴더 생성 및 기존 흐름도 파일(`.md`) 이동.
- **Interactive Flow**: 단순 화면 설명을 넘어, UI 요소 옆에 로직 마커(`[n]`)를 배치하고 하단에 실제 코드(클래스, 함수명)를 매핑한 **'로직 명세(Logic Reference)'** 섹션 신규 구현.
- **Navigation**: 위젯 설계도 간 상호 이동 링크(`app_flow_main.md` <-> `app_flow_metadata.md`)를 구축하여 문서 간 연결성 강화.
- **Sync**: 파일 이동에 맞추어 `system_flow_mindmap.md` 대시보드 내 Mermaid 클릭 링크 및 목록 최신화.

### [2026-02-11] 데이터베이스 레거시 전수 제거 및 v14 통합 (Phase 87)
- **Fix**: 번역 재사용 시 발생하던 `DatabaseException(no such table: translations)` 결함을 해결하고, `translations` 레거시 테이블 참조를 현재의 통합 스키마(`group_id` 연결)로 전면 리팩토링.
- **Migration**: DB 버전을 14로 격상하고, 기존의 언어별 동적 테이블(`lang_xx`)을 폐쇄(No-op)한 뒤 오디오 데이터 및 리뷰 통계 컬럼을 통합 테이블(`words`, `sentences`)로 일원화.
- **Refactor**: 오디오 저장(`saveAudioFile`), 로드(`getAudioFile`), 유사도 검색(`searchSimilarText`) 로직을 통합 스키마 기반으로 현대화하여 시스템의 무결성과 성능을 확보.

### [2026-02-11] 동음이의어 팝업 억제 및 캐시 무결성 개선 (Phase 86)
- **UX**: 사용자가 이미 주석(Context Note)을 입력한 경우 (예: "사과" + 과일), 불필요한 동음이의어 선택 팝업을 억제하고 즉시 번역 결과를 표시하도록 개선.
- **Bug Fix (Phase 86.5)**: `TranslationService`의 로컬 캐시 키에 주석(`note`)이 포함되지 않아, 서로 다른 문맥의 단어가 잘못 캐싱되는 결함 수정. 이제 주석별로 개별 캐시가 적용됩니다.
- **Logging**: `SupabaseService`에 AI 호출 시 주석 포함 여부를 명시적으로 출력하는 디버그 로그 추가.

### [2026-02-11] Mode 1 UI Renewal & Root Detection (Phase 83-84)
- **UI**: Mode 1 입력 화면을 Row 기반의 프리미엄 레이레이아웃으로 리뉴얼 (상단 바, 액션 라인 최적화).
- **Feature**: AI 번역 시 어근(Root) 자동 감지 및 결과창 🌱 배지 표시 기능 구현.
- **Repair**: `mode1_widget.dart` 내 중첩 괄호 누락으로 인한 빌드 오류 및 품사 번역(`l110n`) 오타 긴급 수정 완료.
- **Metadata**: 상세분류 다이얼로그(`MetadataDialog`)를 학습 효율 중심(태그/주석 분리)으로 재설계.
- **Docs**: Markdown 기반 통합 마인드맵(`system_flow_mindmap.md`) 생성 및 불필요한 HTML 문서 제거.

### [2026-02-10] Critical Build Repair & L10n Expansion (Phase 82)
- **Fix**: `AppState.dart` 파일의 중괄호 구조 손상으로 인한 대규모 컴파일 에러를 전수 조사하여 복구 완료.
- **Sync**: `Mode1Widget` 등에서의 메서드 호출 명칭을 `fetchAiRecommendations`, `refillUsage`로 신규 규격에 맞춰 전면 동기화.
- **DB**: `DatabaseService.importFromJsonWithMetadata` 파라미터 누락(`fileName`, `userId`) 수정으로 런타임 및 빌드 안정성 확보.
- **L10n**: 필터 및 위젯 UI용 신규 키(`titleTagSelection`, `generalTags` 등) 80개 언어 전체 자동 번역 및 배포 완료.
- **Clean**: `online_library_dialog.dart` 내 중복 코드 및 구문 오류 정리.


### [2026-02-08] UX 및 튜토리얼 일관성 강화 (Phase 75)
- **UI**: Mode 1, 2, 3 위젯에 '자료 선택' 버튼 추가 및 GlobalKey 바인딩 완료.
- **Tutorial**: 각 모드별 튜토리얼 시나리오에 '자료 선택' 안내 단계 추가.
- **Terminology**: 용어 "입력/복습/연습/채팅"으로 전면 개편 및 ARB 동기화.
- **Help**: 도움말 JSON 예제를 최신 v66 스키마(dialogues 권장)로 교체.

### [2026-02-08] Documentation Refactor
- **Action**: `history.md` 분리 및 `docs/PROJECT_RULES.md` 생성.
- **Goal**: 문서 관리 효율화 및 "Single Source of Truth" 확립.

### [2026-02-08] Pivot Sync Implementation
- **Feature**: 영어(English) 데이터를 기준으로 다국어 자료 자동 그룹핑.
- **Fix**: 서로 다른 파일명을 가진 자료들도 "English Title"로 통합 관리.

### [2026-02-08] Online Library Refactor (Phase 76.5)
- **UI Enhancement**: `OnlineLibrary` 접근성을 `MetadataDialog`로 통합하여 일관성 확보.
- **Tag Integration**: `Library`에서 가져온 파일명을 태그로 자동 등록 및 `MetadataDialog`에서 필터링 지원.
- **Code Cleanup**: 중복된 `Online Library` 아이콘 제거 및 위젯 구조 최적화.

### [2026-02-09] Build Fixes & Polish (Phase 76.5)
- **Fix**: 호환성 문제 해결을 위해 `home_screen.dart`, `mode1_widget.dart`, `mode3_widget.dart`의 모든 빌드 오류 수정.
- **Syntax**: 괄호 누락, 중복 case 문, 잘못된 파라미터 등 문법 오류 전수 조사 및 수정 완료.

### [2026-02-09] Metadata Dialog Redesign & Mode 1 Fixes (Phase 77)
- **Refactor**: 'Metadata Dialog'에서 'Online Library' 아이콘 제거 (역할 분리 명확화).

### [2026-02-10] Data Integrity & Global Default Titles (Phase 81.5)
- **L10n**: "나의 단어장", "나의 문장집" 기본 제목 80개 언어 전체 자동 번역 및 적용.
- **Logic**: 저장 시 제목이 없거나 'Basic'인 경우 지역화된 기본 제목 강제 부여로 자료 유실 및 미노출 원천 차단.
- **Cloud**: Supabase 동기화 시 `type`(word/sentence)과 `tags` 정보를 포함하여 서버-로컬 간 데이터 분류 체계 완벽 일치.
- **Import**: JSON 임포트 시 `default_type` 엄격 준수 및 언어 정보 누락 시 앱 설정 스마트 상속 로직 구현.

### [2026-02-10] Mode 1 Input Enhancement & Save Reliability (Phase 81.4)
- **UI**: Mode 1(입력)에 자료집 선택/생성용 Autocomplete 필드 추가 및 기본 힌트 지역화.
- **Autocomplete**: 메인 입력란에 기존 데이터 기반 자동 완성 도입으로 입력 편의성 및 데이터 중복 방지 강화.
- **Persistence**: `AppState` 내 저장 로직을 `DatabaseService.saveUnifiedRecord`로 통합하여 데이터 가시성 및 정합성 결함 해결.

### [2026-02-10] Visibility Recovery & Search Integration (Phase 81.2 - 81.3)
- **UI**: 모국어 중심 검색 및 다이얼로그 통합으로 목표어 번역 유무와 관계없는 원활한 데이터 접근 보장.
- **Fix**: 학습 카드 가시성 정밀 복구 및 성능 최적화로 복습 모드(Mode 2)의 실시간 데이터 반영 속도 개선.

### [2026-02-10] Unified Schema Integration & Visibility Fix (Phase 79.3)
    - Updated `getStudyMaterials` to count words/sentences via Unified Schema.
    - Modified `loadRecordsByTags` to use group-id subquery for cross-language search.
    - Fixed empty filters in `SearchFilterDialog`. [f85bd2e9-884e-484d-92c4-6ce3d1216e75]
- **Phase 79.4: Legacy Table Removal & DB Cleanup** (2026-02-10)
    - Removed legacy `translations` table and redundant `word_translations`, `sentence_translations`.
    - Upgraded DB version to 12 with physical DROP TABLE cleanup.
    - Cleaned up 10+ legacy methods and migration tools in `DatabaseService`.
    - Maintained full UI search/filter integrity. [f85bd2e9-884e-484d-92c4-6ce3d1216e75]

### [2026-02-10] Filter UI & Visibility Refinement (Phase 79.2)
- **Fix**: 자료 임포트 시 `overrideSubject`에 내부 키(syncKey) 대신 모국어 제목(mName)을 사용하여 필터 불일치 해결.
- **UI**: `SearchFilterDialog`에서 태그 로딩 여부와 상관없이 내 자료집 제목을 드롭다운에 상시 노출 (4개 드롭다운 고정).
- **Logic**: `DatabaseService.importFromJsonWithMetadata`에 `syncKey` 인자를 추가하여 보이지 않는 곳에서의 동기화와 보이는 곳에서의 제목을 분리 관리.
- **Build**: `DatabaseService.saveUnifiedRecord` 파라미터 불일치(`subject` vs `syncSubject`)로 인한 빌드 오류 수정.
- **L10n**: 필터 UI 관련 신규 키(`generalTags`, `notSelected` 등) 80개 언어 전체 자동 번역 및 동기화 완료.

### [2026-02-10] EMERGENCY: Build Failure Resolution (Phase 79.1)
- **Fix**: `DatabaseService` 내 `getStudyMaterials` 중복 선언 제거.
- **Fix**: `AppState.loadRecordsByTags` 내 `targetRow`에 대한 Null Safety 보완 (`targetRow?['id']`).
- **Fix**: `SearchFilterDialog` 내 `_buildDropdown` 함수에 `l10n` 객체를 명시적으로 전달하여 스코프 오류 해결.

### [2026-02-10] EMERGENCY: Build Fix (Phase 78.2)
- **Fix**: Accidental deletion of `sourceText` and `targetText` in `lib/services/database_service.dart` causing CI build failure.

### [2026-02-10] Data Visibility & Filter UI Redesign (Phase 79)
- **Fix**: 모국어 중심 데이터 로딩 로직으로 목표어 번역이 없는 자료의 노출 문제 해결.
- **UI**: 검색 필터 다이얼로그 4단 드롭다운(제목1 + 태그3)으로 개편.
- **Optimization**: 현재 선택된 모국어와 연관된 태그들만 필터링해서 보여주는 로직 추가.
- **Stability**: `DatabaseService.getAllStudyMaterials`를 `getStudyMaterials`로 통합/정리.

### [2026-02-10] File-Name-Based Smart Sync & Tag UI (Phase 78)
- **Sync Strategy**: 자료집 동기화 키를 영어 제목에서 **파일 이름**(예: `nouns_1.json` -> `nouns_1`)으로 변경하여 안정성 극대화.
- **Native Tag**: 현지어 제목(예: "명사 1")을 태그로 자동 저장하여 사용자 가독성 및 필터링 편의성 제공.
- **UI/UX**: `SearchFilterDialog` 내에 **'제목 태그' 전용 드롭다운** 신규 배치 및 일반 태그(품사 등)와 시각적 분리.
- **Dialogue**: 대화(Dialogue) 가져오기 시에도 파일명 기반 동기화 로직 전면 적용.

### [2026-02-09] UX 복구 및 기능 재배치 (Phase 77.5)
- **Revert**: 사용자의 강력한 요청으로 Mode 3 명칭을 "Practice"에서 "**발음 연습 (Speaking Practice)**"으로 원복.
- **New Feature**: `SearchFilterDialog` 위젯 신규 생성 (태그 필터, 최근 N개 제한, 시작 문자 검색).
- **UX Improvement**: Mode 2/3의 설정(Tune) 버튼 클릭 시 편집 창(`MetadataDialog`) 대신 **필터 창(`SearchFilterDialog`)**이 뜨도록 변경.
- **Accessibility**: 숨겨졌던 'Online Library' 기능을 **AppBar 상단 메뉴**로 꺼내어 접근성 대폭 강화.

- **UX**: 'Metadata Dialog' 내 '전체 태그(자료집 제목)' 드롭다운 상시 노출로 변경.
- **Fix**: Mode 1 튜토리얼 하이라이트가 작동하지 않던 문제 해결 (`materialDropdownKey` 바인딩 추가).
- **Cleanup**: 위젯 내 불필요한 `onOpenLibrary` 콜백 및 import 제거.
- **HOTFIX**: Fixed build errors (Mode2 syntax, Mode3 import, SearchFilterDialog logic).
- **HOTFIX 2**: Resolved `HelpDialog` undefined errors and invalid arguments in Mode 2/3.
- **Logic**: `AppState.importRemoteMaterial`에서 Pivot Subject(영어 제목) 강제 로직을 제거, 각 언어별 원본 제목(Native Subject)을 태그로 사용하도록 변경.
- **UI**: Mode 2 및 Mode 3 태그 선택 다이얼로그(`_showTagSelectionDialog`)에서 현재 소스 언어와 일치하는 자료집 태그만 필터링하여 노출.
- **UI REVERT**: Mode 2/3의 임의 추가된 헤더 및 상세 분류 버튼 삭제, '온라인 자료실'을 AppBar 메뉴로 이동 (사용자 지시).



### [2026-02-27] Kakao Login & Location Persistence Final Fix (v15.8.8)
- **Fix**: `AuthScreen`에 전용 `onAuthStateChange` 리스너를 추가하여, 인증 완료 시 지체 없이 홈 화면으로 전환되도록 개선 (윈도우/네이티브 환경 최적화).
- **Update**: 위치 정보 저장 형식을 `[좌표] 주소`로 변경하여, 주소 변환 후에도 좌표 정보가 항상 가장 앞에 노출되도록 강제 (정보 유실 방지 정책).
- **Logic**: 대화 자동 제목 생성 시 좌표 대괄호 `[]`를 파싱하여 제목에 좌표가 불필요하게 섞이지 않도록 개선.
- **Stability**: `dart:async` 임포트 누락 및 `flutter analyze` 위반 사항 해결.

### [2026-02-28] 최적화 및 안정성 강화 배포 (v15.8.12)
- **Feature**: 채팅 히스토리 저장 시 GPS 좌표 획득 실패 대비 ip-api.com 연동 구현.
- **Cleanup**: user_library.dart 모델과 파생 위젯 삭제.
- **Legacy Rules**: 구형 테이블 명칭을 최신 분할 메타 규칙으로 수정.
- **Quality**: Orphaned import 정리 및 앱 경량화 완료.

### [2026-02-28] Web Kakao Login & Supabase Schema Fix (v15.8.11)
- **Fix**: Supabase 테이블 명칭에서 잘못된 `user_` 접두사를 모두 제거하여 실제 DB 구조(`dialogue_groups`, `dialogue_messages`, `participants` 등)와 일치하도록 정정.
- **Stability**: `AppState` 초기화(`_initializeAll`) 과정에서 에러 발생 시에도 `finally` 블록을 통해 로딩 상태를 강제 해제하도록 보강하여 무한 스피너 현상 방지.
- **Sync**: 인증 후 데이터 머지 로직이 모든 'Personal' 테이블에 정상 적용되도록 복구.
- **Verification**: `flutter analyze` 통과 (No issues found).

---

> **Note**: 과거의 시행착오(Trial & Error) 로그는 삭제되었으며, 각 파일에는 **"최종 구현된 결과(Finalized Features)"** 위주로 기록됩니다.

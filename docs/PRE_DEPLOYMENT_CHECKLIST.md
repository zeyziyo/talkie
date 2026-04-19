# 🚀 Talkie 출시 전 최종 점검 체크리스트 (Pre-deployment Checklist)

본 문서는 Talkie 앱의 정식 배포 전, 안정성과 품질을 확보하기 위해 반드시 확인해야 할 항목들을 담고 있습니다.

## 1. 🔑 보안 및 API (Security & API)
- [x] **환경 변수 검증**: `.env` 관리 확인 완료 (.gitignore 등록됨). 코드 내 Gemini 키 하드코딩 없음.
    - **개선 계획**: `SupabaseService.dart` 운영 빌드(Release) 시 `.env` 필수 로직 점검 및 보강 **[조치 완료]**.
- [x] **Gemini Rate Limit**: `Mode1Widget`, `AppState`에서 예외 처리 및 알림 가이드 확인 완료.
    - **개선 계획**: API 429 에러 발생 시 사용자 친절 가이드(`_showLimitDialog`)의 정합성 최종 확인 **[조치 완료]**.
- [x] **Supabase RLS**: 대시보드에서 직접 보안 정책 확인 권고 (문서 반영).
    - **개선 계획**: 앱 내 익명 로그인(`signInAnonymously`) 연동 확인 및 대시보드 수동 점검 항목 기록 **[조치 완료]**.
- [x] **AdMob**: `UsageService.dart` 광고 ID 점검 완료.
    - **개선 계획**: `UsageService.dart` 내 `FIXME` 주석 및 테스트 ID 사용 시 런타임 경고 로그 구현 **[조치 완료]**.

## 2. 🌍 다국어 및 데이터 (Localization & Data)
- [x] **ARB 파일 전수 동기화**: 80개 언어 조사 완료.
    - **개선 계획**: 티베트어(`app_bo.arb`) 등 거의 비어있던 번역 파일을 영어 원본 키 기준으로 100% 동기화하여 런타임 에러 방지 **[조치 완료]**.
- [x] **79개 언어 학습 자료 검증**: 316개 JSON 파일 전수 조사 완료.
    - **개선 계획**: `verify_l10n.py` 스크립트를 통한 전수 검사로 인코딩 깨짐 탐지 및 `greetings_50.json` 등의 구문 오류 교정 **[조치 완료]**.

## 3. 🎯 UX 및 튜토리얼 (UX & Tutorial)
- [x] **Tutorial Targeting**: `GlobalKey` 바인딩을 통해 하이라이트 위치가 실제 위젯과 일치하는지 확인. **[조치 완료]**
    - Mode 1: `micButtonKey`, `translateButtonKey`, `saveButtonKey`, `swapButtonKey`, `mode1ToggleKey`, `contextFieldKey` 연결 확인.
    - Mode 2: `mode2ListKey`, `actionButtonKey` 연결 확인.
    - Mode 3: `mode3ResetKey` 연결 확인.
    - Mode 4: `chatFabKey` 연결 확인.
- [x] **안내 다이얼로그**: 마이크/위치 권한 거부, 네트워크 단절 등 예외 상황에서의 안내 문구 확인. **[조치 완료]**
    - 권한 거부 시 기능 비활성화 처리됨 (별도 안내 다이얼로그 없이 graceful degradation).
    - API 한도 초과 시 `_showLimitDialog`를 통해 사용자 친절 가이드 제공.

## 4. 🎙️ 하드웨어 연동 (Performance & Hardware)
- [x] **STT/TTS 안정성**: `SpeechService` 코드 분석 완료. **[코드 검증 완료]**
    - `audio_session` 패키지를 통해 STT/TTS 모드 전환 시 오디오 세션 자동 구성.
    - `startSTT`, `stopSTT`, `speak`, `_setBestVoice` 등 핵심 메서드 구조 확인.

## 5. 🛠️ 스토어 등록 준비 (Store Readiness)
- [x] **권한 설명 문구**: `Info.plist`, `AndroidManifest.xml` 내 권한 요청 사유 확인. **[조치 완료]**
    - **Android**: 마이크, 인터넷, 블루투스, 광고 ID 권한 선언됨.
    - **iOS**: 마이크, 음성 인식, **위치(신규 추가)** 권한 설명 포함.
- [x] **버전 넘버링**: `pubspec.yaml` 확인 완료. **[현재: 1.1.0+15]**

## 6. 🚀 성능 및 자원 (Optimization)
- [x] **Import Transaction**: `INSERT OR IGNORE` 최적화 적용 확인. **[조치 완료]**
- [x] **에셋 최적화**: 에셋 폴더에 아이콘 2개만 존재. **[확인 완료]**

## 7. 🧪 최종 통합 테스트 (End-to-End Test)
- [x] **워크플로우 테스트**: 핵심 시나리오 코드 연결 상태 확인. **[코드 검증 완료]**
    - `switchMode`: 모드 전환 시 `loadRecordsByTags` 자동 호출로 데이터 동기화.
    - `saveTranslation`: 저장 후 즉시 목록 갱신 로직 확인.
    - Mode 0→1→2→3→4 간 데이터 흐름 정상.
    - ⚠️ **실기기 E2E 테스트는 별도 진행 필요**.

---
마지막 업데이트: 2026-02-06

# Talkie

[![Build Android APK](https://github.com/zeyziyo/talkie/actions/workflows/build-apk.yml/badge.svg)](https://github.com/zeyziyo/talkie/actions/workflows/build-apk.yml)

언어 학습 앱 - 음성 인식 및 번역 기능 제공

## 앱 소개 (About)

**"Talkie" 앱의 주된 목적은 단순한 번역을 넘어, 새로 학습한 문장을 언제 어디서든 자유롭게 복습하는 데 있습니다.** 

화면을 옆으로 밀어(Swipe) 모드를 전환하는 직관적인 UX를 제공하며, 이제 AI 스캔 기능을 통해 책이나 이미지 속 문장을 즉시 내 학습 리스트로 가져올 수 있습니다. 이미 검증된 번역 문장들을 무제한으로 반복 청취하고 말하며 연습할 수 있습니다. 여러분의 언어 학습에 큰 도움이 되길 바랍니다.

**The main purpose of "Talkie" goes beyond simple translation; it allows you to freely review newly learned sentences anytime, anywhere.**

It provides an intuitive UX for switching modes by swiping the screen. With the new AI Scan feature, you can instantly import sentences from books or images into your study list. You can then practice these verified translations with unlimited repetition. We hope this app becomes a valuable asset in your language learning journey.

### Platforms
-   **Android & iOS**: Full support (STT/TTS/Ads/Sync)
-   **Web**: Supported (IndexedDB SQLite, STT/TTS via Browser)
-   **Windows**: Setup completed (MSVC environment required)

### Run with Web
```bash
flutter run -d chrome --release
```
To setup web SQLite assets:
```bash
dart run sqflite_common_ffi_web:setup --dir web
```

## 기능 (Features)

### MODE 1: 심플 입력 (Simplified Input)
- 🎤 **스마트 입력**: 중앙의 대형 마이크 또는 텍스트 입력창을 통해 즉시 시작
- 🚀 **즉시 번역**: 입력 후 인공지능이 문맥에 맞는 최적의 번역 수행
- 🔊 **TTS**: 번역된 텍스트 듣기 (원어민 발음)
- 💾 **저장**: 나만의 학습 기록으로 즉시 추가 (자료집, 태그, 메모 설정 가능)
- 🔍 **유사 문장 감지**: 입력 중 이전에 학습한 비슷한 문장을 자동으로 감지
- 💡 **추천 학습**: 매일 새로운 추천 문장을 통해 학습 범위 확장

* **Smart Input**: Start instantly via the central Mic icon or direct text input
* **Instant Translation**: AI performs context-aware translation after input
* **TTS**: Listen to translated text with native pronunciation
* **Save**: Instantly add to your personalized study list with tags and notes
* **Duplicate Detection**: Auto-detect similar sentences you've studied before
* **Recommended Learning**: Expand your vocabulary with daily AI-suggested sentences

### MODE 2: 복습 (Review)
- 📱 **하단 네비게이션**: 탭 바를 통한 직관적인 모드 이동
- 📖 **복습 모드**: 저장된 문장 복습 및 카드 뒤집기
- 🔄 **자동 재생**: 자료집 전체를 자동으로 재생하며 학습 (Thinking Interval 지원)
- ⏱️ **대기 시간**: 1초~10초 사이의 생각할 시간(Interval) 설정 가능
- ✅ **학습 체크**: 복습 횟수 기록 및 학습 완료 표시
- 🔍 **검색 및 필터**: 태그, 최근 항목, 시작 글자 필터링 지원

* **Review Mode**: Review saved sentences & flip cards
* **Auto Play**: Automatically play through your material collection
* **Thinking Interval**: Adjust wait time between cards (1s-10s)
* **Study Check**: Track review counts & mark as completed
* **Search & Filter**: Filter by Tags, Recent N, and Starts With

### MODE 3: 발음 연습 (Speaking Practice)
- 🎙️ **쉐도잉 연습**: 원어민 음성 듣고 따라 말하기
- 📊 **발음 평가**: 실시간 음성 분석을 통한 정확도 점수 (0-100) 및 피드백
- 🔄 **반복 및 다음**: 완벽하게 익힐 때까지 무제한 반복 또는 다음 문장으로 이동
- 🔍 **대상 필터**: 태그 및 조건으로 연습할 문장만 선별 가능

* **Shadowing Practice**: Listen to native audio and shadow (repeat)
* **Pronunciation Evaluation**: Accuracy score (0-100) & feedback via real-time voice analysis
* **Repeat & Next**: Unlimited practice until mastery or skip to the next sentence
* **Target Filter**: Filter practice items by tags and specific conditions

### MODE 4: 스캔 (Scan) - OCR Translation
- 📷 **AI 스캔 (AI Scan)**: 카메라로 촬영하거나 갤러리에서 사진을 불러와 텍스트를 즉시 추출
- 🔍 **터치 번역**: 이미지 내 인식된 문장 중 번역하고 싶은 부분을 터치하여 즉시 번역 수행
- 🔊 **TTS 발음 듣기**: 스캔된 문장과 번역된 결과에 대해 원어민 발음 제공
- 💾 **이력 저장**: 스캔하고 번역한 내용을 날짜별 이력으로 관리하고 학습 리스트에 추가
- 🌐 **다국어 OCR**: 라틴계 언어, 한국어, 일본어, 중국어 등 주요 언어의 문자 인식 지원

* **AI Scan**: Extract text instantly by taking a photo or picking one from the gallery
* **Touch to Translate**: Simply tap the recognized sentences in the image to translate them
* **TTS Pronunciation**: Native audio playback for both scanned and translated text
* **History Management**: Manage scanned items by date and add them to your study list
* **Multilingual OCR**: Supports text recognition for Latin-based languages, Korean, Japanese, and Chinese

## 지원 언어 (Supported Languages)

Talkie는 이제 **전 세계 80개 언어**를 100% 완벽하게 지원하며, 모든 언어 리소스에 대해 정밀 감사(Audit)를 완료했습니다:
Talkie now provides **100% integrity** for **80+ languages** worldwide, with complete localization audits:

- **동아시아 (East Asia, 4)**: Korean, Japanese, Chinese (Simplified), Chinese (Traditional)
- **유럽 (Europe, 25)**: English, Spanish, French, German, Italian, Portuguese, Russian, Polish, Ukrainian, Dutch, Greek, Czech, Romanian, Swedish, Danish, Finnish, Norwegian, Hungarian, **Albanian, Armenian, Basque, Belarusian, Bosnian, Bulgarian, Catalan, Croatian, Estonian, Galician, Icelandic, Latvian, Lithuanian, Macedonian, Serbian, Slovak, Slovenian, Welsh**
- **남아시아 (South Asia, 12)**: Hindi, Bengali, Tamil, Telugu, Marathi, Urdu, Gujarati, Kannada, Malayalam, Punjabi, **Assamese, Odia, Sinhala**
- **동남아시아 (Southeast Asia, 8)**: Indonesian, Vietnamese, Thai, Filipino, Malay, **Burmese, Khmer, Lao**
- **중동 및 중앙아시아 (Middle East & Central Asia, 10)**: Arabic, Turkish, Persian, Hebrew, **Azerbaijani, Georgian, Kazakh, Kyrgyz, Tibetan, Uzbek**
- **아프리카 (Africa, 4)**: Swahili, Afrikaans, **Xhosa, Zulu**
- **기타 (Others)**: **Amharic, Nepali, Pashto... (and more)**

> [!TIP]
> 홈페이지(`Zeyziyo/talkie`)에서 지원 언어별 학습 자료 카탈로그를 확인하고, 앱 내 **앱바 메뉴 > 온라인 자료실(Online Library)**에서 직접 임포트하여 즉시 학습을 시작할 수 있습니다.

## 기술 스택 (Tech Stack)

- **Framework**: Flutter 3.10.4+
- **State Management**: Provider
- **Backend/Database**: Supabase (PostgreSQL, Edge Functions)
- **AI/Translation**: Google Gemini API (via Supabase Edge Functions)
- **STT**: speech_to_text (Google Speech Recognition)
- **TTS**: flutter_tts
- **Audio**: record package

## 시작하기 (Getting Started)

### 필수 요구사항 (Prerequisites)
- Flutter SDK 3.10.4 or higher
- Windows: Developer Mode enabled

### 설치 (Installation)

1. 의존성 설치 (Install dependencies):
```bash
flutter pub get
```

2. 데스크톱에서 실행 (Run on Desktop - Windows):
```bash
flutter run -d windows
```

3. 웹에서 실행 (Run on Web):
```bash
flutter run -d chrome
```

4. Android APK 빌드 (Build Android APK):
```bash
flutter build apk --release
```

## 플랫폼별 참고사항 (Platform Notes)

### Android
- 마이크 및 위치 권한이 사용 시 요청됩니다 (Microphone & Location permissions requested)
- 인터넷 연결이 필요합니다 (번역 API) (Internet connection required)

### iOS
- Info.plist에 권한 설명이 포함되어 있습니다 (Permissions descriptions included in Info.plist)
- 시뮬레이터에서는 음성 인식이 제한적일 수 있습니다 (Speech recognition limited on simulator)

### Desktop (Windows)
- 마이크 접근 권한이 필요합니다 (Microphone access required)
- Windows Defender에서 차단할 수 있으므로 허용해주세요 (Allow in Windows Defender if blocked)

### Web
- HTTPS 또는 localhost 환경에서 마이크 접근이 가능합니다 (Microphone access requires HTTPS or localhost)
- `flutter run -d chrome` 사용 시 자동으로 localhost에서 실행됩니다 (Runs on localhost automatically)

## 프로젝트 구조 (Project Structure)

```
lib/
├── main.dart                    # App Entry Point
├── providers/
│   └── app_state.dart           # Global State Management
├── services/
│   ├── database_service.dart    # SQLite Database (Local Cache)
│   ├── speech_service.dart      # STT/TTS Services
│   ├── translation_service.dart # Translation Service
│   └── supabase_service.dart    # Backend Integration (Supabase)
├── screens/
│   ├── home_screen.dart         # Main Screen (Mode 1, 2, 3, 4 Switcher)
│   └── auth_screen.dart         # User Authentication (Login/SignUp)
├── widgets/
│   ├── simplified_input_widget.dart # MODE 1: Simplified Input UI
│   ├── mode2_widget.dart        # MODE 2: Study Material & Review UI
│   ├── mode3_widget.dart        # MODE 3: Speaking Practice UI
│   ├── scan_widget.dart         # MODE 4: AI Scan (OCR) Translation UI
│   └── help_dialog.dart         # Help & Tutorial Dialog
└── l10n/                        # Internationalization (80 languages)
    ├── app_ko.arb               # Korean
    ├── app_en.arb               # English

    └── ...

## 다국어 번역 (Localization)
이 프로젝트는 `tool/manage_l10n.dart` 스크립트를 통해 자동화된 국제화를 지원합니다.
새로운 문자열 추가 시:
1. `lib/l10n/app_ko.arb`에 키 추가
2. `dart tool/manage_l10n.dart` 실행 (나머지 언어 자동 번역)
자세한 내용은 `.agent/workflows/update_localization.md`를 참고하세요.

```

## 개발 히스토리 (Development History)

이 프로젝트는 원래 Flet (Python) 으로 개발되었으나, Android에서 audio recording 이슈로 인해 Flutter로 마이그레이션 되었습니다.
This project was originally developed with Flet (Python), but migrated to Flutter due to audio recording issues on Android.

Flet 버전은 `c:\PythonProjects\talkland_flet` 에 보존되어 있습니다.
The Flet version is preserved at `c:\PythonProjects\talkland_flet`.

## 최근 업데이트 (Recent Updates - 2026-01-30)

- **빌드 안정화**: `AppState` 및 `DatabaseService` 내의 모든 중복 정의 및 문법 오류 해결 (Clean Build 보장)
- **대화 기능 강화 (Feb 2)**: AI 채팅 자동 제목(Chat N), 메모(Note) 기능, 대화 목록 검색 및 날짜 필터, 즉시 반응 UI(Optimistic Update) 적용
- **글로벌 동기화**: `app_en.arb`의 신규 키(`chatNewChat` 등)를 80개 언어 전체 파일에 자동 동기화
- **SDK 대응**: `Geolocator` 패키지(v13.0.0+)의 브레이킹 체인지 대응 및 위치 설정 최적화

## 라이선스 (License)

Private project

## 수익 모델 및 과금 정책 (Revenue & Pricing)

본 앱은 사용자에게 최대한의 가치를 무료로 제공하면서도, 지속 가능한 서비스를 유지하기 위해 다음과 같은 합리적인 과금 정책을 운영합니다.
The app operates a sustainable pricing policy to provide maximum value for free while maintaining service quality.

### 1. 무료 플랜 (Basic Plan)
*   **일일 번역 제한**: 하루 10회 무료 제공 (Daily Limit: 10 translations free)
*   **말하기 연습 (Mode 3)**: **무제한 무료** (Unlimited free - uses On-Device Engine)
*   **학습 자료 가져오기**: **무제한 무료** (Unlimited free - Local DB storage)
*   **리필 (Refill)**: 보상형 광고 시청 시 번역 횟수 리필 제공 (Watch ad to refill quota)

### 2. 비용 구조 및 지속 가능성 (Sustainability)
*   **AI 비용**: 최신 Gemini 모델 사용으로 매우 저렴 (Very low AI cost)
*   **수익성**: 사용자가 많아질수록 광고 수익(보상형 광고)이 서버 유지비를 충분히 상회하는 구조 (Ad revenue covers server costs exponentially as users grow)
*   **서버 리스크 없음**: 1만 명 이상의 동시 사용자도 안정적으로 지원 (Stable even with 10k+ concurrent users)

자세한 분석 내용은 `revenue_model.md`를 참고하세요.
See `revenue_model.md` for detailed analysis.
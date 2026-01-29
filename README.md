# Talkie

[![Build Android APK](https://github.com/zeyziyo/talkie/actions/workflows/build-apk.yml/badge.svg)](https://github.com/zeyziyo/talkie/actions/workflows/build-apk.yml)

언어 학습 앱 - 음성 인식 및 번역 기능 제공

## 앱 소개 (About)

**"Talkie" 앱의 주된 목적은 단순한 번역을 넘어, 새로 학습한 문장을 언제 어디서든 자유롭게 복습하는 데 있습니다.** 

화면을 옆으로 밀어(Swipe) 모드를 전환하는 직관적인 UX를 제공하며, 사용자께서 미리 준비한 학습 자료(JSON 파일)를 활용하면 더욱 강력한 학습 도구가 됩니다. 여러분이 익히고 싶은 문장들을 수집하여 AI 모델 등을 통해 미리 번역한 뒤, 이를 파일로 만들어 앱에서 불러오기만 하세요. 이미 검증된 번역 문장들을 무제한으로 반복 청취하고 말하며 연습할 수 있습니다. 여러분의 언어 학습에 큰 도움이 되길 바랍니다.

**The main purpose of "Talkie" goes beyond simple translation; it allows you to freely review newly learned sentences anytime, anywhere.**

It provides an intuitive UX for switching modes by swiping the screen. In particular, it becomes an even more powerful tool when used with your own study materials (JSON files). Simply collect the sentences you want to learn, translate them using AI models, and save them as a file to import into the app. You can then practice these verified translations with unlimited repetition. We hope this app becomes a valuable asset in your language learning journey.

## 기능 (Features)

### MODE 1: 검색 (Search)
- 🎤 **음성 인식**: 모국어로 말하기 (43개 언어 지원)
- 🔄 **번역**: 실시간 번역 및 중복 감지
- 🔀 **모드 전환**: **단어 / 문장** 토글을 통한 입력 모드 변경
- 🔊 **TTS**: 번역된 텍스트 듣기
- 💾 **저장**: 학습 기록으로 저장

* **Voice Recognition**: Speak in your native language (supports 43 languages)
* **Translation**: Real-time translation & duplicate detection
* **Toggle Mode**: Switch between **Word / Sentence** input modes
* **TTS**: Listen to translated text
* **Save**: Save as study records

### MODE 2: 복습 (Review)
- ↔️ **스와이프 전환**: 화면을 밀어 모드 간 자유로운 이동
- 📚 **학습 자료 관리**: 상단 앱바의 아이콘(📚)으로 자료 선택 및 JSON 파일 가져오기
- 📖 **복습 모드**: 저장된 문장 복습 및 카드 뒤집기
- 🔊 **TTS 재생**: 원문 및 번역문 듣기
- ✅ **학습 체크**: 복습 횟수 기록 및 학습 완료 표시

* **Study Material Management**: Import study materials via JSON files (Transactions applied for speed)
* **Review Mode**: Review saved sentences & flip cards
* **TTS Playback**: Listen to original and translated text
* **Study Check**: Track review counts & mark as completed

### MODE 3: 말하기 연습 (Speaking Practice)
- 🎙️ **쉐도잉 연습**: 원어민 음성 듣고 따라 말하기
- ⏱️ **간격 조절**: 3초~60초 사이 대기 시간 설정
- 📊 **발음 평가**: 정확도 점수 (0-100) 및 피드백
- 🔄 **자동 반복**: 완벽하게 학습한 문장 제외하고 반복

* **Shadowing Practice**: Listen to native audio and shadow (repeat)
* **Interval Control**: Set interval between 3s-60s
* **Pronunciation Evaluation**: Accuracy score (0-100) & feedback
* **Auto-Repeat**: Repeat sentences excluding those fully mastered

### MODE 4: AI 채팅 (AI Chat)
- 💬 **실시간 대화**: AI 페르소나(교사, 친구 등)와 실전 회화 연습
- 🤝 **파트너 모드 (Partner Mode)**: **실제 친구/파트너**와 대화하며 기록 (사람 아이콘 토글)
- 📍 **GPS 위치 기반**: 현재 위치 정보를 AI에게 제공하여 생생한 현장 회화 가능 ("여기 근처 맛집 추천해줘")
- 🌐 **2개 국어 표시**: 나의 말과 답변이 2개 국어로 표시되어 이해도 향상
- 🔊 **TTS 발음 듣기**: 스피커 아이콘으로 정확한 발음 청취
- 🤖 **자동 번역 및 저장**: 즉시 번역 및 "지역명 (시간)" 기반 자동 제목 저장
- 📑 **대화 이력 관리**: 과거 대화 내용을 불러오고 제목을 수정하여 관리

* **Real-time Conversation**: Practice speaking with AI personas or Real Partners
* **Partner Mode**: Record conversation with a real person (Target Language Input)
* **GPS Context**: AI uses your current location for context-aware responses
* **Dual Language Display**: View both mother tongue and target language
* **TTS Pronunciation**: Listen to correct pronunciation for all messages
* **Smart Save**: Auto-save chats with "Location (Date)" titles
* **History Management**: Revisit past chats & edit titles

### JSON 파일 구조 (JSON Structure)

기존의 개별 문장(`entries`)뿐만 아니라, 완성된 대화 세트(`dialogues`)를 한 번에 불러올 수 있습니다.
You can import both individual sentences (`entries`) and complete conversation sets (`dialogues`).

```json
{
  "source_language": "ko",
  "target_language": "en",
  "entries": [
    { "source_text": "사과", "target_text": "Apple", "note": "Fruit" }
  ],
  "dialogues": [
    {
      "title": "공항 체크인 연습",
      "persona": "공항 직원",
      "messages": [
        { "speaker": "Me", "source_text": "체크인하고 싶어요.", "target_text": "I'd like to check in." }
      ]
    }
  ]
}
```

## 지원 언어 (Supported Languages)

Talkie는 **43개 언어**를 지원합니다:
Talkie supports **43 languages**:

- **동아시아 (East Asia, 4)**: Korean, Japanese, Chinese (Simplified), Chinese (Traditional)
- **유럽 (Europe, 17)**: English, Spanish, French, German, Italian, Portuguese, Russian, Polish, Ukrainian, Dutch, Greek, Czech, Romanian, Swedish, Danish, Finnish, Norwegian, Hungarian
- **남아시아 (South Asia, 10)**: Hindi, Bengali, Tamil, Telugu, Marathi, Urdu, Gujarati, Kannada, Malayalam, Punjabi
- **동남아시아 (Southeast Asia, 5)**: Indonesian, Vietnamese, Thai, Filipino, Malay
- **중동 (Middle East, 4)**: Arabic, Turkish, Persian, Hebrew
- **아프리카 (Africa, 2)**: Swahili, Afrikaans

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
│   ├── home_screen.dart         # Main Screen & Tutorial
│   ├── chat_screen.dart         # AI Chat Room
│   └── chat_history_screen.dart # AI Chat History (Mode 4 Entry)
├── widgets/
│   ├── mode1_widget.dart        # MODE 1: Search UI
│   ├── mode2_widget.dart        # MODE 2: Study Material & Review UI
│   ├── mode3_widget.dart        # MODE 3: Speaking Practice UI
│   └── help_dialog.dart         # Help Dialog
└── l10n/                        # Internationalization (43 languages)
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

## 라이선스 (License)

Private project

## 수익 모델 및 과금 정책 (Revenue & Pricing)

본 앱은 사용자에게 최대한의 가치를 무료로 제공하면서도, 지속 가능한 서비스를 유지하기 위해 다음과 같은 합리적인 과금 정책을 운영합니다.
The app operates a sustainable pricing policy to provide maximum value for free while maintaining service quality.

### 1. 무료 플랜 (Basic Plan)
*   **일일 번역 제한**: 하루 20회 무료 제공 (Daily Limit: 20 translations free)
*   **말하기 연습 (Mode 3)**: **무제한 무료** (Unlimited free - uses On-Device Engine)
*   **학습 자료 가져오기**: **무제한 무료** (Unlimited free - Local DB storage)
*   **리필 (Refill)**: 보상형 광고 시청 시 번역 횟수 리필 제공 (Watch ad to refill quota)

### 2. 비용 구조 및 지속 가능성 (Sustainability)
*   **AI 비용**: 최신 Gemini 모델 사용으로 매우 저렴 (Very low AI cost)
*   **수익성**: 사용자가 많아질수록 광고 수익(보상형 광고)이 서버 유지비를 충분히 상회하는 구조 (Ad revenue covers server costs exponentially as users grow)
*   **서버 리스크 없음**: 1만 명 이상의 동시 사용자도 안정적으로 지원 (Stable even with 10k+ concurrent users)

자세한 분석 내용은 `revenue_model.md`를 참고하세요.
See `revenue_model.md` for detailed analysis.

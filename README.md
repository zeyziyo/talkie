# Talkie

[![Build Android APK](https://github.com/zeyziyo/talkie/actions/workflows/build-apk.yml/badge.svg)](https://github.com/zeyziyo/talkie/actions/workflows/build-apk.yml)

언어 학습 앱 - 음성 인식 및 번역 기능 제공

## 앱 소개 (About)

**"Talkie" 앱의 주된 목적은 단순한 번역을 넘어, 새로 학습한 문장을 언제 어디서든 자유롭게 복습하는 데 있습니다.** 

화면을 옆으로 밀어(Swipe) 모드를 전환하는 직관적인 UX를 제공하며, 사용자께서 미리 준비한 학습 자료(JSON 파일)를 활용하면 더욱 강력한 학습 도구가 됩니다. 여러분이 익히고 싶은 문장들을 수집하여 AI 모델 등을 통해 미리 번역한 뒤, 이를 파일로 만들어 앱에서 불러오기만 하세요. 이미 검증된 번역 문장들을 무제한으로 반복 청취하고 말하며 연습할 수 있습니다. 여러분의 언어 학습에 큰 도움이 되길 바랍니다.

**The main purpose of "Talkie" goes beyond simple translation; it allows you to freely review newly learned sentences anytime, anywhere.**

It provides an intuitive UX for switching modes by swiping the screen. In particular, it becomes an even more powerful tool when used with your own study materials (JSON files). Simply collect the sentences you want to learn, translate them using AI models, and save them as a file to import into the app. You can then practice these verified translations with unlimited repetition. We hope this app becomes a valuable asset in your language learning journey.

## 기능 (Features)

### MODE 1: 입력 (Input)
- 🎤 **음성 인식**: 모국어로 말하기 (80개 언어 지원)
- 🔄 **번역**: 실시간 번역 및 중복 감지
- 🔀 **모드 전환**: **단어 / 문장** 토글을 통한 입력 모드 변경
- 🔊 **TTS**: 번역된 텍스트 듣기
- 💾 **저장**: 학습 기록으로 저장

* **Voice Recognition**: Speak in your native language (supports 80 languages)
* **Translation**: Real-time translation & duplicate detection
* **Toggle Mode**: Switch between **Word / Sentence** input modes
* **TTS**: Listen to translated text
* **Save**: Save as study records

### MODE 2: 복습 (Review)
- ↔️ **스와이프 전환**: 화면을 밀어 모드 간 자유로운 이동
- 📚 **학습 자료 관리**: 상단 앱바의 **구름(Cloud) 아이콘**으로 온라인 자료실 접근
- 📖 **복습 모드**: 저장된 문장 복습 및 카드 뒤집기
- 🔊 **TTS 재생**: 원문 및 번역문 듣기
- ✅ **학습 체크**: 복습 횟수 기록 및 학습 완료 표시
- 🔍 **검색 조건**: **설정(Tune) 아이콘**으로 태그, 최근 항목, 시작 글자 필터링 (Search Filter Dialog)

* **Study Material Management**: Manage study materials via **Cloud Icon** on AppBar (Online Library)
* **Review Mode**: Review saved sentences & flip cards
* **TTS Playback**: Listen to original and translated text
* **Study Check**: Track review counts & mark as completed
* **Search Conditions**: Filter by Tags, Recent N, Starts With via **Tune Icon** (Search Filter Dialog)

### MODE 3: 발음 연습 (Speaking Practice)
- 🎙️ **쉐도잉 연습**: 원어민 음성 듣고 따라 말하기
- ⏱️ **간격 조절**: 3초~60초 사이 대기 시간 설정
- 📊 **발음 평가**: 정확도 점수 (0-100) 및 피드백
- 🔄 **자동 반복**: 완벽하게 학습한 문장 제외하고 반복
- 🔍 **검색 조건**: 학습 대상을 태그 및 조건으로 필터링 (설정 아이콘)

* **Shadowing Practice**: Listen to native audio and shadow (repeat)
* **Interval Control**: Set interval between 3s-60s
* **Pronunciation Evaluation**: Accuracy score (0-100) & feedback
* **Auto-Repeat**: Repeat sentences excluding those fully mastered
* **Search Conditions**: Filter practice targets by Tags/Conditions (Tune Icon)

### MODE 4: 채팅 (Chat) - Multi-Persona
- 🎭 **멀티 페르소나 (Multi-Persona)**: 말풍선 탭으로 상대방의 **성별, 이름, 언어**를 즉시 변경 (New!)
- 🔄 **자동 재번역**: 대화 상대의 언어를 바꾸면 기존 메시지도 자동으로 재번역되어 문맥 유지
- 💬 **실시간 대화**: AI 페르소나(교사, 친구 등)와 실전 회화 연습
- 🤝 **파트너 모드**: **실제 친구/파트너**와 대화하며 기록 ("Stranger" 추가 기능)
- 📍 **GPS 위치 기반**: 현재 위치 정보를 AI에게 제공하여 생생한 현장 회화 가능 ("여기 근처 맛집 추천해줘")
- 🌐 **2개 국어 표시**: 나의 말과 답변이 2개 국어로 표시되어 이해도 향상
- 🔊 **TTS 발음 듣기**: 성별에 맞는 정확한 TTS 발음 (Heuristic 적용)
- 🤖 **자동 번역 및 저장**: 즉시 번역 및 "지역명 (시간)" 기반 자동 제목 저장
- 📑 **대화 이력 관리**: 과거 대화 내용을 불러오고 제목을 수정하여 관리
- 🔍 **대화 필터링 (New!)**: 주제(Note)별 드롭다운 필터 및 검색 기능으로 수많은 대화 손쉽게 관리

* **Multi-Persona**: Change Gender/Lang/Name on the fly via bubble menu (New!)
* **Auto-Retranslation**: Context stays intact when changing partner's language
* **Real-time Conversation**: Practice speaking with AI personas or Real Partners
* **Partner Mode**: Record conversation with a real person
* **GPS Context**: AI uses your current location for context-aware responses
* **Dual Language Display**: View both mother tongue and target language
* **TTS Pronunciation**: Gender-aware TTS playback
* **Smart Save**: Auto-save chats with "Location (Date)" titles
* **History Management**: Revisit past chats & edit titles

- **온라인 자료 관리 자동화 (Phase 75.9 Automation)**: 사용자가 `docs/materials`에 파일만 업로드하면 GitHub Actions가 인덱스(`materials_v3.json`)를 자동으로 갱신하는 체계를 구축했습니다. (2026-02-07)
- **온라인 직접 임포트 고도화 (Phase 75.9)**: 서버 인덱스를 통해 최신 학습 자료를 앱 내에서 직접 실시간 임포트하는 체계를 구축했습니다. 과거의 복잡한 오프라인 병합 과정 없이도 다국어 파일이 지능적으로 통합되며, 화자 메타데이터 보완 로직으로 '콩글리쉬' 발음 문제를 근본적으로 해결했습니다. (2026-02-07)
- **가져오기(Import) 알림 개선**: JSON 파일 가져오기 실패 시 상세 에러 내용을 다이얼로그로 표시하여 문제 진단을 용이하게 함.

## 최근 업데이트 (Recent Updates - 2026-02-03)

- **멀티 페르소나 시스템 (Multi-Persona)**: 대화방 내 참가자의 신원(언어, 성별, 이름)을 즉시 변경하고 재번역하는 기능 추가. (Phase 64)
- **UI 개선**: 채팅 말풍선 위에 직관적인 제어 패널(언어/성별/이름) 도입 및 Stranger 추가 기능 구현
- **TTS 엔진 최적화**: Google TTS 엔진에서 성별 인식이 안 될 경우를 대비한 스마트 추측 로직 적용
- **데이터베이스 확장**: `dialogue_participants` 테이블 추가로 인물별 설정 영구 저장 지원
- **대화 기능 강화 (Feb 2)**: AI 채팅 자동 제목(Chat N), 메모(Note) 기능, 대화 목록 검색 및 날짜 필터, 즉시 반응 UI(Optimistic Update) 적용
- **온라인 자료실 통합 (Feb 8)**: `Online Library` 팝업을 `Metadata Dialog`로 통합하여 접근성 개선 및 가져온 자료 자동 태깅 (`Native Tag Strategy`) 지원 (Phase 76.5)
- **UI 필터링 고도화 (Feb 9)**: 리뷰 모드에서 현재 학습 언어에 맞는 태그(예: "명사 1" vs "Nouns 1")만 지능적으로 필터링하여 사용자 혼란 방지 (Phase 77)



### JSON 파일 구조 (JSON Structure)

기존의 개별 문장(`entries`)뿐만 아니라, 완성된 대화 세트(`dialogues`)를 한 번에 불러올 수 있습니다.
You can import both individual sentences (`entries`) and complete conversation sets (`dialogues`).

```json
{
  "subject": "첫 만남 (First Meeting)",
  "dialogues": [
    {
      "speaker": "조단",
      "text": "안녕하세요! 제 이름은 조단입니다.",
      "sequence_order": 1,
      "style": "높임말",
      "tags": ["인사", "소개"]
    }
  ],
  "participants": [
    { "id": "p1", "name": "조단", "role": "사용자", "gender": "남성", "lang_code": "en-US" },
    { "id": "p2", "name": "민지", "role": "AI", "gender": "여성", "lang_code": "ko-KR" }
  ]
}
```

## 지원 언어 (Supported Languages)

Talkie는 이제 **전 세계 80개 언어**를 완벽하게 지원합니다:
Talkie now fully supports **80 languages** worldwide:

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
│   ├── home_screen.dart         # Main Screen & Tutorial
│   ├── chat_screen.dart         # AI Chat Room
│   └── chat_history_screen.dart # AI Chat History (Mode 4 Entry)
├── widgets/
│   ├── mode1_widget.dart        # MODE 1: Search UI
│   ├── mode2_widget.dart        # MODE 2: Study Material & Review UI
│   ├── mode3_widget.dart        # MODE 3: Speaking Practice UI
│   └── help_dialog.dart         # Help Dialog
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

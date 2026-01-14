# Talkie

언어 학습 앱 - 음성 인식 및 번역 기능 제공

## 앱 소개 (About)

**"Talkie" 앱의 주된 목적은 단순한 번역을 넘어, 새로 학습한 문장을 언제 어디서든 자유롭게 복습하는 데 있습니다.** 

특히, 사용자께서 미리 준비한 학습 자료(JSON 파일)를 활용하면 더욱 강력한 학습 도구가 됩니다. 여러분이 익히고 싶은 문장들을 수집하여 AI 모델 등을 통해 미리 번역한 뒤, 이를 파일로 만들어 앱에서 불러오기만 하세요. 이미 검증된 번역 문장들을 무제한으로 반복 청취하고 말하며 연습할 수 있습니다. 여러분의 언어 학습에 큰 도움이 되길 바랍니다.

**The main purpose of "Talkie" goes beyond simple translation; it allows you to freely review newly learned sentences anytime, anywhere.**

In particular, it becomes an even more powerful tool when used with your own study materials (JSON files). Simply collect the sentences you want to learn, translate them using AI models, and save them as a file to import into the app. You can then practice these verified translations with unlimited repetition. We hope this app becomes a valuable asset in your language learning journey.

## 기능 (Features)

### MODE 1: 검색 (Search)
- 🎤 **음성 인식**: 모국어로 말하기 (43개 언어 지원)
- 🔄 **번역**: 실시간 번역 및 중복 감지
- 🔊 **TTS**: 번역된 텍스트 듣기
- 💾 **저장**: 학습 기록으로 저장

* **Voice Recognition**: Speak in your native language (supports 43 languages)
* **Translation**: Real-time translation & duplicate detection
* **TTS**: Listen to translated text
* **Save**: Save as study records

### MODE 2: 학습 자료 & 복습 (Study Material & Review)
- 📚 **학습 자료 관리**: JSON 파일로 학습 자료 가져오기
- 📖 **복습 모드**: 저장된 문장 복습 및 카드 뒤집기
- 🔊 **TTS 재생**: 원문 및 번역문 듣기
- ✅ **학습 체크**: 복습 횟수 기록 및 학습 완료 표시

* **Study Material Management**: Import study materials via JSON files
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

## 지원 언어 (Supported Languages)

Talkie는 **43개 언어**를 지원합니다:
Talkie supports **43 languages**:

- **동아시아 (East Asia, 4)**: 한국어(Korean), 일본어(Japanese), 중국어 간체(Chinese Simplified), 중국어 번체(Chinese Traditional)
- **유럽 (Europe, 17)**: 영어(English), 스페인어(Spanish), 프랑스어(French), 독일어(German), 이탈리아어(Italian), 포르투갈어(Portuguese), 러시아어(Russian), 폴란드어(Polish), 우크라이나어(Ukrainian), 네덜란드어(Dutch), 그리스어(Greek), 체코어(Czech), 루마니아어(Romanian), 스웨덴어(Swedish), 덴마크어(Danish), 핀란드어(Finnish), 노르웨이어(Norwegian), 헝가리어(Hungarian)
- **남아시아 (South Asia, 10)**: 힌디어(Hindi), 벵골어(Bengali), 타밀어(Tamil), 텔루구어(Telugu), 마라티어(Marathi), 우르두어(Urdu), 구자라트어(Gujarati), 칸나다어(Kannada), 말라얄람어(Malayalam), 펀자브어(Punjabi)
- **동남아시아 (Southeast Asia, 5)**: 인도네시아어(Indonesian), 베트남어(Vietnamese), 태국어(Thai), 필리핀어(Filipino), 말레이어(Malay)
- **중동 (Middle East, 4)**: 아랍어(Arabic), 터키어(Turkish), 페르시아어(Persian), 히브리어(Hebrew)
- **아프리카 (Africa, 2)**: 스와힐리어(Swahili), 아프리칸스어(Afrikaans)

## 기술 스택 (Tech Stack)

- **Framework**: Flutter 3.10.4+
- **State Management**: Provider
- **STT**: speech_to_text (Google Speech Recognition)
- **TTS**: flutter_tts
- **Translation**: Google Translate API (Free)
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
- 마이크 권한이 자동으로 요청됩니다 (Microphone permission specific requested)
- 인터넷 연결이 필요합니다 (번역 API) (Internet connection required)

### iOS
- Info.plist에 권한 설명이 포함되어 있습니다 (Permissions descriptions included in Info.plist)
- 시뮬레이터에서는 음성 인식이 제한적일 수 있습니다 (Speech recognition limited on simulator)

### Desktop (Windows)
- 마이크 접근 권한이 필요합니다 (Microphone access required)
- Windows Defender에서 차단할 수 있으므로 허용해주세요 (Allow in Windows Defender if blocked)

### Web
- HTTPS 환경에서 마이크 접근이 가능합니다 (Microphone access requires HTTPS)
- `flutter run -d chrome` 사용 시 자동으로 localhost에서 실행됩니다 (Runs on localhost automatically)

## 프로젝트 구조 (Project Structure)

```
lib/
├── main.dart                    # App Entry Point
├── providers/
│   └── app_state.dart           # Global State Management
├── services/
│   ├── database_service.dart    # SQLite Database
│   ├── speech_service.dart      # STT/TTS Services
│   └── translation_service.dart # Translation Service
├── screens/
│   └── home_screen.dart         # Main Screen & Tutorial
├── widgets/
│   ├── mode1_widget.dart        # MODE 1: Search UI
│   ├── mode2_widget.dart        # MODE 2: Study Material & Review UI
│   ├── mode3_widget.dart        # MODE 3: Speaking Practice UI
│   └── help_dialog.dart         # Help Dialog
└── l10n/                        # Internationalization (43 languages)
    ├── app_ko.arb               # Korean
    ├── app_en.arb               # English
    └── ...
```

## 개발 히스토리 (Development History)

이 프로젝트는 원래 Flet (Python) 으로 개발되었으나, Android에서 audio recording 이슈로 인해 Flutter로 마이그레이션 되었습니다.
This project was originally developed with Flet (Python), but migrated to Flutter due to audio recording issues on Android.

Flet 버전은 `c:\PythonProjects\talkland_flet` 에 보존되어 있습니다.
The Flet version is preserved at `c:\PythonProjects\talkland_flet`.

## 라이선스 (License)

Private project

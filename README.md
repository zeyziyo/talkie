# TalkLand

언어 학습 앱 - 음성 인식 및 번역 기능 제공

## 기능

### MODE 1: 의미 학습
- 🎤 **음성 인식**: 한국어 말하기
- 🔄 **번역**: 한국어 → 스페인어
- 🔊 **TTS**: 스페인어 듣기

### MODE 2: 발음 훈련
- 발음 연습 기능 (기본 구현)

## 기술 스택

- **Framework**: Flutter 3.10.4+
- **State Management**: Provider
- **STT**: speech_to_text (Google Speech Recognition)
- **TTS**: flutter_tts
- **Translation**: Google Translate API (무료)
- **Audio**: record package

## 시작하기

### 필수 요구사항
- Flutter SDK 3.10.4 이상
- Windows: Developer Mode 활성화 필요

### 설치

1. 의존성 설치:
```bash
flutter pub get
```

2. 데스크톱에서 실행 (Windows):
```bash
flutter run -d windows
```

3. 웹에서 실행:
```bash
flutter run -d chrome
```

4. Android APK 빌드:
```bash
flutter build apk --release
```

## 플랫폼별 참고사항

### Android
- 마이크 권한이 자동으로 요청됩니다
- 인터넷 연결이 필요합니다 (번역 API)

### iOS
- Info.plist에 권한 설명이 포함되어 있습니다
- 시뮬레이터에서는 음성 인식이 제한적일 수 있습니다

### Desktop (Windows)
- 마이크 접근 권한이 필요합니다
- Windows Defender에서 차단할 수 있으므로 허용해주세요

### Web
- HTTPS 환경에서 마이크 접근이 가능합니다
- `flutter run -d chrome` 사용 시 자동으로 localhost에서 실행됩니다

## 프로젝트 구조

```
lib/
├── main.dart              # 앱 진입점
├── providers/
│   └── app_state.dart     # 전역 상태 관리
├── services/
│   ├── speech_service.dart      # STT/TTS 서비스
│   └── translation_service.dart # 번역 서비스
├── screens/
│   └── home_screen.dart   # 메인 화면
└── widgets/
    ├── mode1_widget.dart  # MODE 1 UI
    └── mode2_widget.dart  # MODE 2 UI
```

## 개발 히스토리

이 프로젝트는 원래 Flet (Python) 으로 개발되었으나, Android에서 audio recording 이슈로 인해 Flutter로 마이그레이션 되었습니다.

Flet 버전은 `c:\PythonProjects\talkland_flet` 에 보존되어 있습니다.

## 라이선스

Private project

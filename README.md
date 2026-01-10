# Talkie

언어 학습 앱 - 음성 인식 및 번역 기능 제공

## 기능

### MODE 1: 검색 (Search)
- 🎤 **음성 인식**: 모국어로 말하기 (43개 언어 지원)
- 🔄 **번역**: 실시간 번역 및 중복 감지
- 🔊 **TTS**: 번역된 텍스트 듣기
- 💾 **저장**: 학습 기록으로 저장

### MODE 2: 학습 자료 & 복습 (Study Material & Review)
- 📚 **학습 자료 관리**: JSON 파일로 학습 자료 가져오기
- 📖 **복습 모드**: 저장된 문장 복습 및 카드 뒤집기
- 🔊 **TTS 재생**: 원문 및 번역문 듣기
- ✅ **학습 체크**: 복습 횟수 기록 및 학습 완료 표시

### MODE 3: 말하기 연습 (Speaking Practice)
- 🎙️ **쉐도잉 연습**: 원어민 음성 듣고 따라 말하기
- ⏱️ **간격 조절**: 3초~60초 사이 대기 시간 설정
- 📊 **발음 평가**: 정확도 점수 (0-100) 및 피드백
- 🔄 **자동 반복**: 완벽하게 학습한 문장 제외하고 반복

## 지원 언어

Talkie는 **43개 언어**를 지원합니다:

- **동아시아 (4개)**: 한국어, 일본어, 중국어 간체, 중국어 번체
- **유럽 (17개)**: 영어, 스페인어, 프랑스어, 독일어, 이탈리아어, 포르투갈어, 러시아어, 폴란드어, 우크라이나어, 네덜란드어, 그리스어, 체코어, 루마니아어, 스웨덴어, 덴마크어, 핀란드어, 노르웨이어, 헝가리어
- **남아시아 (10개)**: 힌디어, 벵골어, 타밀어, 텔루구어, 마라티어, 우르두어, 구자라트어, 칸나다어, 말라얄람어, 펀자브어
- **동남아시아 (5개)**: 인도네시아어, 베트남어, 태국어, 필리핀어, 말레이어
- **중동 (4개)**: 아랍어, 터키어, 페르시아어, 히브리어
- **아프리카 (2개)**: 스와힐리어, 아프리칸스어

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
├── main.dart                    # 앱 진입점
├── providers/
│   └── app_state.dart           # 전역 상태 관리
├── services/
│   ├── database_service.dart    # SQLite 데이터베이스
│   ├── speech_service.dart      # STT/TTS 서비스
│   └── translation_service.dart # 번역 서비스
├── screens/
│   └── home_screen.dart         # 메인 화면 및 튜토리얼
├── widgets/
│   ├── mode1_widget.dart        # MODE 1: 검색 UI
│   ├── mode2_widget.dart        # MODE 2: 학습 자료 & 복습 UI
│   ├── mode3_widget.dart        # MODE 3: 말하기 연습 UI
│   └── help_dialog.dart         # 도움말 다이얼로그
└── l10n/                        # 국제화 (43개 언어)
    ├── app_ko.arb               # 한국어
    ├── app_en.arb               # 영어
    └── ... (41개 언어)
```

## 개발 히스토리

이 프로젝트는 원래 Flet (Python) 으로 개발되었으나, Android에서 audio recording 이슈로 인해 Flutter로 마이그레이션 되었습니다.

Flet 버전은 `c:\PythonProjects\talkland_flet` 에 보존되어 있습니다.

## 라이선스

Private project

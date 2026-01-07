# iOS 빌드 구조 및 파일 역할 가이드

> Flutter 앱을 iOS로 빌드할 때 필요한 모든 파일과 설정을 역할별로 정리한 문서입니다.

## 📋 목차

- [1. 프로젝트 구조 개요](#1-프로젝트-구조-개요)
- [2. Xcode 프로젝트 설정](#2-xcode-프로젝트-설정)
- [3. 앱 설정 파일](#3-앱-설정-파일)
- [4. 빌드 설정 파일](#4-빌드-설정-파일)
- [5. 리소스 파일](#5-리소스-파일)
- [6. CI/CD 설정 (GitHub Actions)](#6-cicd-설정-github-actions)
- [7. 서명 및 배포](#7-서명-및-배포)
- [8. 파일 역할 요약표](#8-파일-역할-요약표)

---

## 1. 프로젝트 구조 개요

```
ios/
├── Runner/                           # iOS 앱 프로젝트
│   ├── AppDelegate.swift            # iOS 앱 진입점
│   ├── Info.plist                   # 앱 메타데이터 (권한, 버전 등)
│   ├── Assets.xcassets/             # 앱 아이콘 및 이미지
│   └── Base.lproj/                  # 런치 스크린 및 스토리보드
├── Runner.xcodeproj/                # Xcode 프로젝트 파일
│   └── project.pbxproj              # 프로젝트 빌드 설정
├── Runner.xcworkspace/              # Xcode 워크스페이스 (CocoaPods 사용 시)
├── Flutter/                         # Flutter 관련 설정
│   ├── AppFrameworkInfo.plist
│   └── Release.xcconfig             # Flutter 빌드 설정
└── .gitignore                       # Git 무시 파일
```

---

## 2. Xcode 프로젝트 설정

### 2.1 `Runner.xcodeproj/project.pbxproj`

**역할**: Xcode 프로젝트의 모든 빌드 설정 (Bundle ID, 버전, SDK 등)

이 파일은 Xcode가 자동 생성하는 복잡한 XML 형식의 파일입니다. 주요 설정:

- **Bundle Identifier**: `com.talkland.talkland` (App Store 식별자)
- **Deployment Target**: 최소 iOS 버전
- **Build Configurations**: Debug, Profile, Release
- **Code Signing**: 개발자 인증서 및 프로비저닝 프로필

**중요 포인트**:
- ⚠️ **직접 편집하지 않음** - Xcode GUI를 통해 수정
- Git에 커밋됨
- 팀 작업 시 충돌 가능성 높음

---

### 2.2 `Runner.xcworkspace`

**역할**: CocoaPods 의존성 관리를 위한 Xcode 워크스페이스

Flutter는 네이티브 iOS 플러그인을 CocoaPods로 관리합니다:
- `Runner.xcodeproj`: 앱 프로젝트
- `Pods.xcodeproj`: CocoaPods 의존성 프로젝트

**중요 포인트**:
- Xcode에서 **`.xcworkspace`를 열어야 함** (`.xcodeproj` 아님)
- `flutter pub get` 실행 시 자동 생성

---

## 3. 앱 설정 파일

### 3.1 `Runner/Info.plist`

**역할**: iOS 앱의 메타데이터, 권한, 설정

```xml
<?xml version="1.0" encoding="UTF-8"?>
<plist version="1.0">
<dict>
    <!-- 앱 이름 -->
    <key>CFBundleDisplayName</key>
    <string>Talkland</string>
    
    <!-- Bundle ID -->
    <key>CFBundleIdentifier</key>
    <string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
    
    <!-- 버전 (pubspec.yaml에서 가져옴) -->
    <key>CFBundleShortVersionString</key>
    <string>$(FLUTTER_BUILD_NAME)</string>
    
    <key>CFBundleVersion</key>
    <string>$(FLUTTER_BUILD_NUMBER)</string>
    
    <!-- 지원 방향 -->
    <key>UISupportedInterfaceOrientations</key>
    <array>
        <string>UIInterfaceOrientationPortrait</string>
        <string>UIInterfaceOrientationLandscapeLeft</string>
        <string>UIInterfaceOrientationLandscapeRight</string>
    </array>
    
    <!-- 권한 요청 메시지 -->
    <key>NSMicrophoneUsageDescription</key>
    <string>This app needs microphone access for speech recognition</string>
    
    <key>NSSpeechRecognitionUsageDescription</key>
    <string>This app needs speech recognition to convert your voice to text</string>
</dict>
</plist>
```

**중요 포인트**:
- **권한 설명**: iOS는 각 권한마다 사용자에게 표시할 설명 필요
- **버전 변수**: `pubspec.yaml`의 `version` 필드에서 자동 추출
  - `1.0.0+1` → `CFBundleShortVersionString=1.0.0`, `CFBundleVersion=1`

**자주 수정하는 항목**:
- 앱 이름 (`CFBundleDisplayName`)
- 권한 설명 (`NS*UsageDescription`)
- 지원 방향 (`UISupportedInterfaceOrientations`)

---

### 3.2 `Runner/AppDelegate.swift`

**역할**: iOS 앱의 진입점 (Flutter 엔진 초기화)

```swift
import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
```

**중요 포인트**:
- `FlutterAppDelegate`를 상속하여 Flutter 엔진 실행
- 플러그인 자동 등록 (`GeneratedPluginRegistrant`)
- 필요시 네이티브 iOS 코드 추가 가능 (푸시 알림, 딥링크 등)

---

## 4. 빌드 설정 파일

### 4.1 `Flutter/Release.xcconfig`

**역할**: Flutter 빌드 모드별 설정

```
#include "Generated.xcconfig"
```

**중요 포인트**:
- Debug, Profile, Release 모드별로 별도 파일 존재
- `Generated.xcconfig`는 `flutter build` 시 자동 생성
- 커스텀 환경 변수 추가 가능

---

### 4.2 `Flutter/AppFrameworkInfo.plist`

**역할**: Flutter 프레임워크 정보

```xml
<?xml version="1.0" encoding="UTF-8"?>
<plist version="1.0">
<dict>
  <key>CFBundleIdentifier</key>
  <string>io.flutter.flutter</string>
  <key>MinimumOSVersion</key>
  <string>12.0</string>
</dict>
</plist>
```

**중요 포인트**:
- 최소 iOS 버전 지정
- Flutter 엔진 메타데이터

---

## 5. 리소스 파일

### 5.1 `Runner/Assets.xcassets/AppIcon.appiconset/`

**역할**: 앱 아이콘 (다양한 크기)

iOS는 여러 해상도의 아이콘이 필요합니다:
- iPhone: 60x60@2x, 60x60@3x
- iPad: 76x76, 83.5x83.5@2x
- App Store: 1024x1024

**중요 포인트**:
- [App Icon Generator](https://www.appicon.co/) 사용 권장
- Xcode의 Asset Catalog로 관리

---

### 5.2 `Runner/Base.lproj/LaunchScreen.storyboard`

**역할**: 앱 시작 화면

앱 로딩 중 표시되는 스플래시 화면입니다.

**중요 포인트**:
- Flutter가 로드되기 전에 표시
- iOS 가이드라인: 단순한 플레이스홀더 화면 권장

---

## 6. CI/CD 설정 (GitHub Actions)

### iOS 빌드 워크플로우 예시

```yaml
name: Build iOS IPA

on:
  push:
    branches: [ main ]
  workflow_dispatch:

jobs:
  build:
    runs-on: macos-latest  # iOS는 macOS에서만 빌드 가능
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup Flutter
      uses: subosito/flutter-action@v2
      with:
        flutter-version: '3.38.5'
        channel: 'stable'
        
    - name: Install dependencies
      run: flutter pub get
      
    - name: Build iOS (no codesign)
      run: flutter build ios --release --no-codesign
      
    # App Store 배포 시에는 fastlane 사용 권장
```

**중요 포인트**:
- **macOS 러너 필요**: iOS 빌드는 macOS에서만 가능
- **코드 서명 필요**: 실제 기기 테스트 및 App Store 배포 시
- **fastlane 권장**: 자동화된 서명 및 배포

---

## 7. 서명 및 배포

### 7.1 개발 빌드 (로컬 테스트)

```bash
# 코드 서명 없이 빌드 (시뮬레이터용)
flutter build ios --simulator

# 실제 기기용 빌드 (Xcode에서 자동 서명)
flutter build ios --release
```

**필요 사항**:
- Apple Developer 계정 ($99/년)
- Xcode에서 "Automatically manage signing" 활성화

---

### 7.2 App Store 배포

1. **App Store Connect에 앱 등록**
   - Bundle ID: `com.talkland.talkland`
   - 앱 이름, 설명, 스크린샷 등

2. **Archive 생성**:
   ```bash
   flutter build ios --release
   ```
   
   Xcode에서:
   - Product → Archive
   - Organizer에서 "Distribute App" → "App Store Connect"

3. **TestFlight 베타 테스트** (선택)
   - App Store Connect에서 TestFlight 설정
   - 내부 또는 외부 테스터 초대

4. **App Store 제출**
   - App Store Connect에서 "제출 심사"
   - Apple 심사 (평균 1-3일)

---

### 7.3 Fastlane 자동화 (권장)

**Fastlane**은 iOS 빌드, 서명, 배포를 자동화하는 도구입니다.

설치:
```bash
gem install fastlane
cd ios
fastlane init
```

`Fastfile` 예시:
```ruby
lane :beta do
  build_app(scheme: "Runner")
  upload_to_testflight
end

lane :release do
  build_app(scheme: "Runner")
  upload_to_app_store
end
```

실행:
```bash
fastlane beta    # TestFlight 업로드
fastlane release # App Store 제출
```

---

## 8. 파일 역할 요약표

| 파일 경로 | 역할 | 로컬 필요 | CI/CD 필요 | 수정 빈도 |
|-----------|------|-----------|------------|-----------|
| `project.pbxproj` | Xcode 프로젝트 설정 | ✅ | ✅ | 낮음 |
| `Info.plist` | 앱 메타데이터, 권한 | ✅ | ✅ | 중간 |
| `AppDelegate.swift` | iOS 앱 진입점 | ✅ | ✅ | 낮음 |
| `Release.xcconfig` | Flutter 빌드 설정 | ✅ | ✅ | 낮음 |
| `AppIcon.appiconset/` | 앱 아이콘 | ✅ | ✅ | 낮음 |
| `LaunchScreen.storyboard` | 시작 화면 | ✅ | ✅ | 낮음 |
| `.xcworkspace` | Xcode 워크스페이스 | ✅ | ✅ | - |

---

## 9. 빌드 프로세스 요약

### 로컬 빌드

```bash
# 시뮬레이터용
flutter run -d ios

# 실제 기기용 (Xcode 필요)
flutter build ios --release
```

**필요 환경**:
- macOS
- Xcode (App Store에서 무료 다운로드)
- CocoaPods (`sudo gem install cocoapods`)

---

### GitHub Actions 빌드

**제약 사항**:
- macOS 러너 필요 (분당 비용 높음)
- 코드 서명 인증서 필요 (App Store 배포 시)
- 무료 계정에서는 분당 비용 발생

**대안**:
- Codemagic (Flutter 전용 CI/CD, 무료 티어 제공)
- Bitrise (모바일 앱 CI/CD)

---

## 10. 트러블슈팅

### 에러: "No such module 'Flutter'"

**원인**: CocoaPods 의존성이 설치되지 않음

**해결**:
```bash
cd ios
pod install
```

---

### 에러: "Signing for 'Runner' requires a development team"

**원인**: 개발자 계정 또는 팀 ID가 설정되지 않음

**해결**:
1. Xcode에서 프로젝트 열기
2. Runner 타겟 선택 → "Signing & Capabilities"
3. "Team" 드롭다운에서 계정 선택
4. "Automatically manage signing" 체크

---

### 에러: "The iOS deployment target is set to..."

**원인**: 최소 iOS 버전 불일치

**해결**:
1. `ios/Podfile` 수정:
   ```ruby
   platform :ios, '12.0'  # 필요한 최소 버전
   ```
2. Xcode에서 "Deployment Target" 수정

---

## 11. Android와의 차이점

| 항목 | Android | iOS |
|------|---------|-----|
| 빌드 환경 | Linux, macOS, Windows | **macOS만** |
| IDE | Android Studio (선택) | **Xcode 필수** |
| 패키지 관리 | Gradle | CocoaPods |
| 빌드 도구 | Gradle | Xcode Build System |
| 배포 스토어 | Google Play | App Store |
| 개발자 비용 | $25 (일회성) | **$99/년** |
| 심사 기간 | 즉시 | 1-3일 |
| 코드 서명 | 선택 (디버그는 불필요) | **항상 필요** |

---

## 12. 다음 단계

- [ ] **Apple Developer 계정 등록**: App Store 배포 시 필수
- [ ] **Fastlane 설정**: 자동화된 빌드 및 배포
- [ ] **TestFlight 설정**: 베타 테스터 초대

---

## 참고 자료

- [Flutter iOS 빌드 가이드](https://docs.flutter.dev/deployment/ios)
- [Apple Developer Documentation](https://developer.apple.com/documentation/)
- [Fastlane 공식 문서](https://docs.fastlane.tools/)
- [CocoaPods 가이드](https://guides.cocoapods.org/)

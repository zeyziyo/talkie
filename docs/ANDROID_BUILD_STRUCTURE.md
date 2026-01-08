# Android 빌드 구조 및 파일 역할 가이드

> Flutter 앱을 Android로 빌드할 때 필요한 모든 파일과 설정을 역할별로 정리한 문서입니다.

## 📋 목차

- [1. 프로젝트 구조 개요](#1-프로젝트-구조-개요)
- [2. 빌드 설정 파일 (Build Configuration)](#2-빌드-설정-파일-build-configuration)
- [3. 앱 설정 파일 (App Configuration)](#3-앱-설정-파일-app-configuration)
- [4. 환경 설정 파일 (Environment)](#4-환경-설정-파일-environment)
- [5, CI/CD 설정 (GitHub Actions)](#5-cicd-설정-github-actions)
- [6. 서명 및 배포 (Signing & Release)](#6-서명-및-배포-signing--release)
- [7. 파일 역할 요약표](#7-파일-역할-요약표)

---

## 1. 프로젝트 구조 개요

```
talkie/
├── android/                          # Android 네이티브 코드 및 빌드 설정
│   ├── app/                          # 앱 모듈 (실제 Android 앱이 생성되는 곳)
│   │   ├── src/                      # 소스 코드 및 리소스
│   │   └── build.gradle.kts          # 앱 레벨 빌드 설정
│   ├── gradle/                       # Gradle Wrapper 파일
│   ├── build.gradle.kts              # 프로젝트 레벨 빌드 설정
│   ├── settings.gradle.kts           # Gradle 프로젝트 설정
│   ├── local.properties              # 로컬 개발 환경 설정 (gitignore)
│   └── gradle.properties             # Gradle 글로벌 속성
├── .github/                          # GitHub Actions 워크플로우
│   └── workflows/
│       └── build-apk.yml             # Android APK 자동 빌드 워크플로우
├── lib/                              # Flutter/Dart 코드 (플랫폼 독립적)
└── pubspec.yaml                      # Flutter 프로젝트 의존성 및 메타데이터
```

---

## 2. 빌드 설정 파일 (Build Configuration)

### 2.1 `android/build.gradle.kts` (프로젝트 레벨)

**역할**: 전체 Android 프로젝트의 공통 빌드 설정

```kotlin
allprojects {
    repositories {
        google()        // Google의 Android 라이브러리 저장소
        mavenCentral()  // Maven Central 저장소
    }
}

rootProject.buildDir = file("../build")  // 빌드 출력 디렉토리
subprojects {
    project.buildDir = file("${rootProject.buildDir}/${project.name}")
}
subprojects {
    project.evaluationDependsOn(":app")  // 모든 서브프로젝트는 :app에 의존
}

tasks.register<Delete>("clean") {
    delete(rootProject.buildDir)  // clean 태스크 정의
}
```

**중요 포인트**:
- 의존성 저장소 설정 (google, mavenCentral)
- 빌드 출력 경로 정의
- Clean 태스크 등록

---

### 2.2 `android/settings.gradle.kts`

**역할**: Gradle 프로젝트 설정 및 Flutter SDK 경로 해석

```kotlin
pluginManagement {
    val flutterSdkPath = run {
        // 1. 환경 변수에서 FLUTTER_ROOT 확인 (CI/CD용)
        val flutterRoot = System.getenv("FLUTTER_ROOT")
        if (flutterRoot != null) return@run flutterRoot
        
        // 2. local.properties에서 flutter.sdk 읽기 (로컬 개발용)
        val properties = java.util.Properties()
        val localPropertiesFile = file("local.properties")
        if (localPropertiesFile.exists()) {
            localPropertiesFile.inputStream().use { properties.load(it) }
            val flutterSdkPath = properties.getProperty("flutter.sdk")
            if (flutterSdkPath != null) return@run flutterSdkPath
        }
        
        // 3. 찾지 못하면 에러
        throw GradleException("Flutter SDK not found...")
    }
    
    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")
    
    repositories {
        gradlePluginPortal()
        google()
        mavenCentral()
    }
}

plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.11.1" apply false
    id("org.jetbrains.kotlin.android") version "2.2.20" apply false
}

include(":app")  // :app 모듈 포함
```

**중요 포인트**:
- Flutter SDK 경로를 **환경 변수** 또는 **local.properties**에서 자동 탐색
- CI/CD 환경(GitHub Actions)과 로컬 개발 환경 모두 지원
- Gradle 플러그인 버전 관리

---

### 2.3 `android/app/build.gradle.kts` (앱 레벨)

**역할**: 앱의 구체적인 빌드 설정 (버전, ID, SDK 레벨 등)

```kotlin
plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.talkie.talkie"  // 앱 네임스페이스
    compileSdk = flutter.compileSdkVersion  // Flutter가 제공하는 컴파일 SDK
    
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    
    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }
    
    defaultConfig {
        applicationId = "com.talkie.talkie"  // 고유 앱 ID (Play Store 식별자)
        minSdk = flutter.minSdkVersion           // 최소 지원 Android 버전
        targetSdk = flutter.targetSdkVersion     // 타겟 Android 버전
        versionCode = flutter.versionCode        // 정수 버전 (내부)
        versionName = flutter.versionName        // 문자열 버전 (사용자용)
    }
    
    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")  // 임시로 debug 키 사용
        }
    }
}

flutter {
    source = "../.."  // Flutter 프로젝트 루트 경로
}
```

**중요 포인트**:
- `applicationId`: Google Play Store에서 앱을 식별하는 고유 ID
- `minSdk`, `targetSdk`: 지원할 Android 버전 범위
- `versionCode`, `versionName`: `pubspec.yaml`의 `version` 필드에서 자동 추출
- `signingConfig`: Release 빌드 서명 설정 (현재는 임시로 debug 키 사용)

---

### 2.4 `android/gradle/wrapper/gradle-wrapper.properties`

**역할**: Gradle 빌드 도구 버전 지정

```properties
distributionBase=GRADLE_USER_HOME
distributionPath=wrapper/dists
zipStoreBase=GRADLE_USER_HOME
zipStorePath=wrapper/dists
distributionUrl=https://services.gradle.org/distributions/gradle-8.14-all.zip
```

**중요 포인트**:
- `distributionUrl`: 사용할 Gradle 버전 (8.14)
- 로컬과 CI/CD 환경에서 동일한 Gradle 버전을 보장

---

## 3. 앱 설정 파일 (App Configuration)

### 3.1 `android/app/src/main/AndroidManifest.xml`

**역할**: Android 앱의 메타데이터 및 권한 선언

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <!-- 필요한 권한 선언 -->
    <uses-permission android:name="android.permission.RECORD_AUDIO" />
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.BLUETOOTH" />
    <uses-permission android:name="android.permission.BLUETOOTH_CONNECT" />
    
    <application
        android:label="Talkie"                    <!-- 앱 이름 (런처에 표시) -->
        android:name="${applicationName}"
        android:icon="@mipmap/ic_launcher">         <!-- 앱 아이콘 -->
        
        <activity
            android:name=".MainActivity"
            android:exported="true"
            android:launchMode="singleTop"
            android:theme="@style/LaunchTheme"
            android:configChanges="..."
            android:hardwareAccelerated="true"
            android:windowSoftInputMode="adjustResize">
            
            <!-- 앱 런처에 표시되도록 설정 -->
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
        
        <!-- Flutter 엔진 버전 -->
        <meta-data
            android:name="flutterEmbedding"
            android:value="2" />
    </application>
</manifest>
```

**중요 포인트**:
- **권한**: 마이크, 인터넷, 블루투스 등 앱이 사용하는 기능에 필요한 권한
- **앱 이름 & 아이콘**: 사용자가 보는 앱 정보
- **MainActivity**: Flutter 앱의 진입점
- **Build Variants**: `main/`, `debug/`, `profile/` 디렉토리별로 다른 Manifest 사용 가능

---

### 3.2 `android/app/src/main/kotlin/com/talkie/talkie/MainActivity.kt`

**역할**: Android 네이티브 진입점 (Flutter 엔진 초기화)

```kotlin
package com.talkie.talkie

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity()
```

**중요 포인트**:
- `FlutterActivity`를 상속하여 Flutter 엔진 실행
- 필요시 네이티브 코드 추가 가능 (플랫폼 채널 등)

---

### 3.3 앱 리소스 (`android/app/src/main/res/`)

**역할**: 앱 아이콘, 스타일, 런치 화면 등

```
res/
├── mipmap-*/           # 앱 아이콘 (다양한 해상도)
│   └── ic_launcher.png
├── drawable/           # 런치 화면 배경
│   └── launch_background.xml
└── values/             # 스타일 및 테마
    └── styles.xml
```

---

## 4. 환경 설정 파일 (Environment)

### 4.1 `android/local.properties` (Git 무시됨)

**역할**: 로컬 개발 환경 설정 (개발자마다 다름)

```properties
flutter.sdk=C:\\tools\\flutter
sdk.dir=C:\\Android\\Sdk
```

**중요 포인트**:
- `.gitignore`에 포함되어 Git에 커밋되지 않음
- **로컬 개발**에서만 사용
- **GitHub Actions**에서는 환경 변수(`FLUTTER_ROOT`, `ANDROID_HOME`)로 대체

---

### 4.2 `android/gradle.properties`

**역할**: Gradle 빌드 최적화 설정

```properties
org.gradle.jvmargs=-Xmx4096m -Dfile.encoding=UTF-8
android.useAndroidX=true
android.enableJetifier=true
```

**중요 포인트**:
- JVM 메모리 할당
- AndroidX 사용 활성화

---

## 5. CI/CD 설정 (GitHub Actions)

### 5.1 `.github/workflows/build-apk.yml`

**역할**: GitHub에 푸시하면 자동으로 APK 빌드

```yaml
name: Build Android APK

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]
  workflow_dispatch:  # 수동 실행 가능

jobs:
  build:
    runs-on: ubuntu-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup Java
      uses: actions/setup-java@v4
      with:
        distribution: 'zulu'
        java-version: '17'
        
    - name: Setup Flutter
      uses: subosito/flutter-action@v2
      with:
        flutter-version: '3.38.5'
        channel: 'stable'
        
    - name: Get dependencies
      run: flutter pub get
      
    - name: Build APK
      env:
        FLUTTER_ROOT: ${{ env.FLUTTER_ROOT }}
      run: flutter build apk --release
      
    - name: Upload APK
      uses: actions/upload-artifact@v4
      with:
        name: talkland-release-apk
        path: build/app/outputs/flutter-apk/app-release.apk
        retention-days: 30
```

**중요 포인트**:
- **Java 17**, **Flutter 3.38.5** 자동 설치
- `local.properties` 없이도 빌드 가능 (환경 변수 사용)
- 빌드된 APK를 **Artifact**로 업로드 (30일 보관)

---

## 6. 서명 및 배포 (Signing & Release)

### 6.1 현재 상태: Debug 키 사용

```kotlin
// android/app/build.gradle.kts
buildTypes {
    release {
        signingConfig = signingConfigs.getByName("debug")  // ⚠️ 임시 설정
    }
}
```

### 6.2 프로덕션 배포 시 필요 작업

1. **Keystore 생성**:
   ```bash
   keytool -genkey -v -keystore upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
   ```

2. **`key.properties` 파일 생성** (gitignore):
   ```properties
   storePassword=***
   keyPassword=***
   keyAlias=upload
   storeFile=upload-keystore.jks
   ```

3. **`build.gradle.kts`에 서명 설정 추가**:
   ```kotlin
   val keystoreProperties = Properties()
   val keystorePropertiesFile = rootProject.file("key.properties")
   if (keystorePropertiesFile.exists()) {
       keystoreProperties.load(FileInputStream(keystorePropertiesFile))
   }

   android {
       signingConfigs {
           create("release") {
               keyAlias = keystoreProperties["keyAlias"] as String
               keyPassword = keystoreProperties["keyPassword"] as String
               storeFile = file(keystoreProperties["storeFile"] as String)
               storePassword = keystoreProperties["storePassword"] as String
           }
       }
       buildTypes {
           release {
               signingConfig = signingConfigs.getByName("release")
           }
       }
   }
   ```

4. **GitHub Secrets에 키 정보 저장**:
   - `KEYSTORE_BASE64`: Keystore 파일을 Base64로 인코딩
   - `KEY_PROPERTIES`: `key.properties` 내용

5. **GitHub Actions 워크플로우 수정**:
   ```yaml
   - name: Decode Keystore
     run: echo "${{ secrets.KEYSTORE_BASE64 }}" | base64 --decode > android/app/upload-keystore.jks
     
   - name: Create key.properties
     run: echo "${{ secrets.KEY_PROPERTIES }}" > android/key.properties
   ```

> 자세한 내용은 [KEYSTORE_SETUP.md](file:///C:/FlutterProjects/talkland_flutter/KEYSTORE_SETUP.md) 참조

---

## 7. 파일 역할 요약표

| 파일 경로 | 역할 | 로컬 필요 | CI/CD 필요 | 수정 빈도 |
|-----------|------|-----------|------------|-----------|
| `build.gradle.kts` (프로젝트) | 공통 빌드 설정 | ✅ | ✅ | 낮음 |
| `build.gradle.kts` (앱) | 앱 빌드 설정 (버전, ID) | ✅ | ✅ | 중간 |
| `settings.gradle.kts` | Gradle 프로젝트 설정 | ✅ | ✅ | 낮음 |
| `gradle-wrapper.properties` | Gradle 버전 | ✅ | ✅ | 낮음 |
| `AndroidManifest.xml` | 앱 메타데이터, 권한 | ✅ | ✅ | 중간 |
| `MainActivity.kt` | 네이티브 진입점 | ✅ | ✅ | 낮음 |
| `local.properties` | 로컬 SDK 경로 | ✅ | ❌ | - |
| `gradle.properties` | Gradle 최적화 | ✅ | ✅ | 낮음 |
| `.github/workflows/build-apk.yml` | CI/CD 자동화 | ❌ | ✅ | 낮음 |
| `key.properties` (선택) | 서명 키 정보 | ✅ | ❌ | - |
| `upload-keystore.jks` (선택) | 서명 키 파일 | ✅ | ❌ | - |

---

## 8. 빌드 프로세스 요약

### 로컬 빌드 (Android SDK 필요)

```bash
flutter build apk --release
```

**필요 파일**:
- `local.properties` (Android SDK 경로)
- 모든 Gradle 설정 파일

---

### GitHub Actions 빌드 (Android SDK 자동 설치)

1. 코드 푸시:
   ```bash
   git push origin main
   ```

2. 자동 빌드 트리거 (`.github/workflows/build-apk.yml`)

3. APK 다운로드:
   - GitHub → Actions → 워크플로우 실행 → Artifacts → `talkland-release-apk`

**필요 파일**:
- `.github/workflows/build-apk.yml`
- `settings.gradle.kts` (환경 변수에서 Flutter SDK 자동 탐색)

---

## 9. 트러블슈팅

### 에러: "SDK location not found"

**원인**: `local.properties`에 Android SDK 경로가 없음

**해결**:
```bash
echo "flutter.sdk=C:\\tools\\flutter" > android/local.properties
echo "sdk.dir=C:\\Android\\Sdk" >> android/local.properties
```

---

### 에러: "Flutter SDK not found"

**원인**: `settings.gradle.kts`가 Flutter SDK를 찾지 못함

**해결**:
- 로컬: `local.properties`에 `flutter.sdk` 추가
- CI/CD: 환경 변수 `FLUTTER_ROOT` 설정 (GitHub Actions에서 자동)

---

### 빌드는 성공했지만 앱이 설치 안됨

**원인**: Release 빌드에 서명이 없거나 debug 키로 서명됨

**해결**: [6. 서명 및 배포](#6-서명-및-배포-signing--release) 섹션 참조

---

## 10. 다음 단계

- [ ] **서명 키 생성**: 프로덕션 배포를 위한 Keystore 설정
- [ ] **다른 플랫폼 빌드**: iOS, Web, Windows 등 문서화
- [ ] **자동 릴리스**: Git 태그 푸시 시 GitHub Release 자동 생성

---

## 참고 자료

- [Flutter Android 빌드 가이드](https://docs.flutter.dev/deployment/android)
- [Gradle 공식 문서](https://docs.gradle.org/)
- [GitHub Actions 문서](https://docs.github.com/en/actions)
- 프로젝트 내 가이드:
  - [GITHUB_ACTIONS_GUIDE.md](file:///C:/FlutterProjects/talkland_flutter/GITHUB_ACTIONS_GUIDE.md)
  - [KEYSTORE_SETUP.md](file:///C:/FlutterProjects/talkland_flutter/KEYSTORE_SETUP.md)

# Web 빌드 구조 및 파일 역할 가이드

> Flutter 앱을 Web(PWA)으로 빌드할 때 필요한 모든 파일과 설정을 역할별로 정리한 문서입니다.

## 📋 목차

- [1. 프로젝트 구조 개요](#1-프로젝트-구조-개요)
- [2. HTML 및 메타데이터](#2-html-및-메타데이터)
- [3. PWA 설정](#3-pwa-설정)
- [4. 리소스 파일](#4-리소스-파일)
- [5. 빌드 설정](#5-빌드-설정)
- [6. CI/CD 설정 (GitHub Actions & Pages)](#6-cicd-설정-github-actions--pages)
- [7. 배포 방법](#7-배포-방법)
- [8. 파일 역할 요약표](#8-파일-역할-요약표)

---

## 1. 프로젝트 구조 개요

```
web/
├── index.html              # HTML 진입점
├── manifest.json           # PWA 메타데이터 (앱처럼 설치 가능)
├── favicon.png             # 웹사이트 파비콘
└── icons/                  # PWA 아이콘 (다양한 크기)
    ├── Icon-192.png
    ├── Icon-512.png
    ├── Icon-maskable-192.png
    └── Icon-maskable-512.png
```

**빌드 출력**:
```
build/web/
├── index.html
├── main.dart.js            # Dart → JavaScript 컴파일 결과
├── flutter.js              # Flutter 엔진
├── flutter_service_worker.js  # 오프라인 지원용 Service Worker
├── assets/                 # 이미지, 폰트 등
└── canvaskit/              # Flutter 렌더링 엔진
```

---

## 2. HTML 및 메타데이터

### 2.1 `web/index.html`

**역할**: 웹 앱의 진입점 (HTML 파일)

```html
<!DOCTYPE html>
<html>
<head>
  <!-- Base URL 설정 (하위 경로에 배포 시 변경) -->
  <base href="$FLUTTER_BASE_HREF">

  <meta charset="UTF-8">
  <meta content="IE=Edge" http-equiv="X-UA-Compatible">
  <meta name="description" content="A new Flutter project.">

  <!-- iOS 메타 태그 -->
  <meta name="mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="talkland">
  <link rel="apple-touch-icon" href="icons/Icon-192.png">

  <!-- 파비콘 -->
  <link rel="icon" type="image/png" href="favicon.png"/>

  <title>talkland</title>
  
  <!-- PWA Manifest -->
  <link rel="manifest" href="manifest.json">
</head>
<body>
  <!-- Flutter 부트스트랩 스크립트 -->
  <script src="flutter_bootstrap.js" async></script>
</body>
</html>
```

**중요 포인트**:
- **`$FLUTTER_BASE_HREF`**: `flutter build web --base-href /path/` 시 자동 치환
- **SEO 메타 태그**: `<meta name="description">` 수정하여 검색 엔진 최적화
- **PWA 설정**: `manifest.json` 링크로 앱처럼 설치 가능

**자주 수정하는 항목**:
- `<title>`: 브라우저 탭 이름
- `<meta name="description">`: SEO 설명
- iOS/Android 앱 이름 (`apple-mobile-web-app-title`)

---

## 3. PWA 설정

### 3.1 `web/manifest.json`

**역할**: Progressive Web App (PWA) 메타데이터

```json
{
    "name": "talkland",
    "short_name": "talkland",
    "start_url": ".",
    "display": "standalone",           // 브라우저 UI 숨김 (앱처럼)
    "background_color": "#0175C2",
    "theme_color": "#0175C2",
    "description": "A new Flutter project.",
    "orientation": "portrait-primary",
    "prefer_related_applications": false,
    "icons": [
        {
            "src": "icons/Icon-192.png",
            "sizes": "192x192",
            "type": "image/png"
        },
        {
            "src": "icons/Icon-512.png",
            "sizes": "512x512",
            "type": "image/png"
        },
        {
            "src": "icons/Icon-maskable-192.png",
            "sizes": "192x192",
            "type": "image/png",
            "purpose": "maskable"      // Android adaptive icon
        }
    ]
}
```

**중요 포인트**:
- **`display: standalone`**: 홈 화면에 추가 시 앱처럼 실행
- **`icons`**: 다양한 크기 필요 (192x192, 512x512)
- **`maskable` 아이콘**: Android adaptive icon 지원
- **테마 색상**: 상단 바 색상 (`theme_color`)

**PWA 요구사항**:
- HTTPS 필수 (localhost 제외)
- `manifest.json` 포함
- Service Worker 등록 (Flutter가 자동 생성)

---

### 3.2 Service Worker (자동 생성)

**역할**: 오프라인 지원 및 캐싱

빌드 시 `flutter_service_worker.js`가 자동 생성됩니다:
- 앱 리소스 캐싱
- 오프라인에서도 앱 실행 가능
- 업데이트 감지 및 자동 다운로드

**중요 포인트**:
- 수동 수정 불필요 (Flutter가 자동 관리)
- 캐시 전략: 네트워크 우선 → 캐시 대체

---

## 4. 리소스 파일

### 4.1 `web/icons/`

**역할**: PWA 아이콘 (홈 화면 추가 시 표시)

필요한 아이콘:
- `Icon-192.png`: 192x192px (Android)
- `Icon-512.png`: 512x512px (스플래시 화면)
- `Icon-maskable-192.png`: 192x192px (Android adaptive)
- `Icon-maskable-512.png`: 512x512px (Android adaptive)

**Maskable Icon**:
- Android의 adaptive icon 지원
- 원형, 모서리 둥근 사각형 등 다양한 모양에 대응
- [Maskable.app](https://maskable.app/) 에서 테스트 가능

---

### 4.2 `web/favicon.png`

**역할**: 브라우저 탭 아이콘

16x16 또는 32x32px PNG 파일

---

## 5. 빌드 설정

### 5.1 빌드 명령어

```bash
# 기본 빌드 (CanvasKit 렌더러)
flutter build web

# HTML 렌더러 (파일 크기 작음, 성능 낮음)
flutter build web --web-renderer html

# Base URL 지정 (GitHub Pages 등 하위 경로 배포 시)
flutter build web --base-href /talkland_flutter/

# Release 모드 (최적화)
flutter build web --release
```

**렌더러 비교**:

| 렌더러 | 파일 크기 | 성능 | 플랫폼 지원 |
|--------|-----------|------|-------------|
| **CanvasKit** (기본) | ~2MB | 높음 | 모든 브라우저 |
| **HTML** | ~500KB | 낮음 | 구형 브라우저 |

**권장**: CanvasKit (기본값)

---

### 5.2 빌드 출력 구조

```
build/web/
├── index.html
├── main.dart.js             # Dart 코드 → JS 컴파일
├── flutter.js               # Flutter 엔진 로더
├── flutter_service_worker.js  # PWA Service Worker
├── manifest.json
├── favicon.png
├── icons/
├── assets/                  # pubspec.yaml의 assets
│   ├── fonts/
│   ├── images/
│   └── AssetManifest.json
└── canvaskit/               # CanvasKit 렌더링 엔진
    ├── canvaskit.wasm
    └── canvaskit.js
```

---

## 6. CI/CD 설정 (GitHub Actions & Pages)

### 6.1 GitHub Pages 자동 배포

**`.github/workflows/deploy-web.yml`**:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]
  workflow_dispatch:

# GitHub Pages에 쓰기 권한 부여
permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  build-and-deploy:
    runs-on: ubuntu-latest
    
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
      
    - name: Build Web
      run: flutter build web --release --base-href /talkland_flutter/
      
    - name: Upload artifact
      uses: actions/upload-pages-artifact@v3
      with:
        path: build/web
        
    - name: Deploy to GitHub Pages
      uses: actions/deploy-pages@v4
```

**GitHub 저장소 설정**:
1. Settings → Pages
2. Source: "GitHub Actions"
3. 워크플로우 실행 후 `https://<username>.github.io/<repo-name>/` 에서 접근

---

### 6.2 다른 호스팅 플랫폼

#### Netlify

```bash
# netlify.toml
[build]
  command = "flutter build web --release"
  publish = "build/web"
```

#### Vercel

```bash
# vercel.json
{
  "buildCommand": "flutter build web --release",
  "outputDirectory": "build/web"
}
```

#### Firebase Hosting

```bash
firebase init hosting
# Public directory: build/web
firebase deploy
```

---

## 7. 배포 방법

### 7.1 정적 호스팅

1. **빌드**:
   ```bash
   flutter build web --release
   ```

2. **업로드**:
   `build/web/` 폴더의 모든 파일을 호스팅 서버에 업로드

3. **서버 설정**:
   - 모든 경로를 `index.html`로 리다이렉트 (SPA 라우팅)
   
   **Nginx 예시**:
   ```nginx
   location / {
     try_files $uri $uri/ /index.html;
   }
   ```

---

### 7.2 HTTPS 필수

PWA 기능 (Service Worker, 홈 화면 추가)은 HTTPS 필수:
- GitHub Pages: 자동 HTTPS
- 커스텀 도메인: Let's Encrypt 무료 인증서

---

## 8. 파일 역할 요약표

| 파일 경로 | 역할 | 수정 빈도 | PWA 필수 |
|-----------|------|-----------|----------|
| `index.html` | HTML 진입점 | 중간 | ✅ |
| `manifest.json` | PWA 메타데이터 | 중간 | ✅ |
| `icons/*.png` | PWA 아이콘 | 낮음 | ✅ |
| `favicon.png` | 브라우저 아이콘 | 낮음 | ❌ |
| `flutter_service_worker.js` (빌드 생성) | 오프라인 지원 | - | ✅ |

---

## 9. Web 플랫폼 특징

### 9.1 장점

- ✅ **크로스 플랫폼**: 모든 OS에서 실행 (Windows, macOS, Linux, Android, iOS)
- ✅ **배포 간편**: 앱 스토어 심사 불필요
- ✅ **즉시 업데이트**: 서버 업데이트 즉시 모든 사용자에게 반영
- ✅ **PWA 지원**: 홈 화면 추가, 오프라인 실행

### 9.2 제약 사항

- ❌ **파일 시스템 제한**: 브라우저 샌드박스
- ❌ **네이티브 API 제한**: 블루투스, NFC 등 일부 기능 불가
- ❌ **성능**: 네이티브 앱 대비 느림 (특히 복잡한 애니메이션)
- ⚠️ **음성 인식**: Web Speech API 지원 브라우저 제한
  - Chrome, Edge: ✅ 지원
  - Safari (iOS): ⚠️ 제한적
  - Firefox: ❌ 미지원

---

## 10. 트러블슈팅

### 에러: "CanvasKit failed to load"

**원인**: CanvasKit WASM 파일 로딩 실패

**해결**:
```bash
# HTML 렌더러로 빌드
flutter build web --web-renderer html
```

---

### PWA 설치 버튼이 안 보임

**원인**: PWA 요구사항 미충족

**확인 사항**:
1. HTTPS 사용 여부 (localhost 제외)
2. `manifest.json` 포함 여부
3. Service Worker 등록 여부
4. Chrome DevTools → Application → Manifest 확인

---

### 라우팅이 작동 안 함 (404 에러)

**원인**: 서버가 SPA 라우팅을 지원하지 않음

**해결**:
- 서버 설정에서 모든 경로를 `index.html`로 리다이렉트
- GitHub Pages는 자동 지원

---

## 11. Android/iOS와의 차이점

| 항목 | Web | Android/iOS |
|------|-----|-------------|
| 빌드 환경 | 모든 OS | Android: 모든 OS, iOS: macOS만 |
| 배포 | 정적 호스팅 | 앱 스토어 |
| 업데이트 | 즉시 | 스토어 심사 필요 |
| 설치 | 브라우저 (PWA) | 앱 스토어 |
| 오프라인 | Service Worker | 기본 지원 |
| 성능 | 중간 | 높음 |
| 파일 크기 | 2-5MB | 20-50MB |

---

## 12. 다음 단계

- [ ] **SEO 최적화**: `index.html`의 메타 태그 수정
- [ ] **PWA 아이콘 생성**: [Maskable.app](https://maskable.app/) 사용
- [ ] **GitHub Pages 배포**: 자동화된 CI/CD 설정
- [ ] **Analytics 추가**: Google Analytics, Firebase Analytics

---

## 참고 자료

- [Flutter Web 공식 가이드](https://docs.flutter.dev/platform-integration/web)
- [PWA 가이드](https://web.dev/progressive-web-apps/)
- [GitHub Pages 문서](https://docs.github.com/en/pages)
- [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)

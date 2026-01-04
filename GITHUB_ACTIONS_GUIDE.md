# GitHub Actions 사용 가이드

## GitHub Actions으로 Android APK 빌드하기

### 1. Git 저장소 초기화 (아직 안 했다면)

```bash
cd c:\FlutterProjects\talkland_flutter
git init
git add .
git commit -m "Initial commit: TalkLand Flutter app"
```

### 2. GitHub에 새 저장소 생성

1. GitHub 웹사이트 방문: https://github.com/new
2. 저장소 이름: `talkland_flutter` (또는 원하는 이름)
3. Private/Public 선택
4. **"Add .gitignore"와 "Add README" 체크 해제** (이미 있음)
5. "Create repository" 클릭

### 3. GitHub에 푸시

```bash
# GitHub에서 제공하는 URL로 변경하세요
git remote add origin https://github.com/YOUR_USERNAME/talkland_flutter.git
git branch -M main
git push -u origin main
```

### 4. GitHub Actions 실행

푸시 후 자동으로 빌드가 시작됩니다!

#### 수동 빌드 실행 방법:
1. GitHub 저장소 페이지에서 "Actions" 탭 클릭
2. 왼쪽에서 "Build Android APK" 워크플로우 선택
3. "Run workflow" 버튼 클릭
4. "Run workflow" 확인

### 5. APK 다운로드

빌드 완료 후 (약 5-10분 소요):

1. "Actions" 탭으로 이동
2. 최신 워크플로우 실행 클릭
3. 아래 "Artifacts" 섹션에서 **"talkland-release-apk"** 다운로드
4. ZIP 파일 압축 해제
5. `app-release.apk` 파일을 Android 기기로 전송

### 6. Android 기기에 설치

**방법 A: USB 연결**
```bash
adb install app-release.apk
```

**방법 B: 파일 직접 전송**
1. APK 파일을 Google Drive, 이메일 등으로 전송
2. Android 기기에서 다운로드
3. 파일 매니저에서 APK 파일 클릭
4. "알 수 없는 출처" 설치 허용
5. 설치 진행

---

## Workflow 트리거 조건

현재 설정된 트리거:
- ✅ `main` 또는 `master` 브랜치에 푸시할 때
- ✅ Pull Request 생성 시
- ✅ 수동 실행 (workflow_dispatch)

---

## 빌드 프로세스

GitHub Actions는 다음을 자동으로 수행합니다:

1. ✅ Ubuntu 환경 준비
2. ✅ Java 17 설치
3. ✅ Flutter 3.38.5 설치
4. ✅ 프로젝트 의존성 다운로드 (`flutter pub get`)
5. ✅ 유닛 테스트 실행 (`flutter test`)
6. ✅ Release APK 빌드 (`flutter build apk --release`)
7. ✅ APK 파일을 Artifact로 업로드

---

## 문제 해결

### 빌드 실패 시
1. "Actions" 탭에서 실패한 워크플로우 클릭
2. 빨간색 X 표시된 단계 클릭
3. 로그 확인
4. 오류 메시지 검토

### 일반적인 이슈
- **테스트 실패**: 로컬에서 `flutter test` 실행 확인
- **의존성 오류**: `pubspec.yaml` 확인
- **권한 문제**: `AndroidManifest.xml` 확인

---

## 추가 설정 (선택사항)

### APK 서명 (Signed APK)
프로덕션 배포 시 필요합니다. 서명 키를 GitHub Secrets에 추가하여 설정할 수 있습니다.

### 자동 릴리스
Git 태그를 푸시하면 자동으로 GitHub Release가 생성되고 APK가 첨부됩니다:

```bash
git tag v1.0.0
git push origin v1.0.0
```

---

## 비교: Flet vs Flutter GitHub Actions

| 항목 | Flet | Flutter |
|------|------|---------|
| 빌드 도구 | `flet build apk` | `flutter build apk` |
| Python 필요 | ✅ | ❌ |
| Flutter SDK | ✅ | ✅ |
| Java SDK | ✅ | ✅ |
| 빌드 시간 | ~10분 | ~5-7분 |
| Artifact 크기 | ~50MB | ~20-30MB |

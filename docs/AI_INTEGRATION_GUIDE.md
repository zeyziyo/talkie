# AI 모델 통합 가이드 (AI Integration Guide)

이 문서는 Flutter 앱에 AI 모델(Gemini)을 통합하는 과정에서 거친 주요 단계를 기록한 것입니다.

---

## 1. 아키텍처 개요

```
┌─────────────────┐     ┌──────────────────────┐     ┌─────────────────┐
│   Flutter App   │────▶│  Supabase Edge Func  │────▶│   Gemini API    │
│   (Client)      │◀────│  (Serverless)        │◀────│   (Google AI)   │
└─────────────────┘     └──────────────────────┘     └─────────────────┘
```

**왜 이 구조인가?**
- **API 키 보호**: Gemini API 키를 앱에 직접 넣으면 디컴파일로 노출됨 → 서버에서 관리
- **비용 제어**: 서버에서 요청을 검증/제한하여 악용 방지
- **유연성**: AI 모델 변경 시 앱 업데이트 없이 서버 코드만 수정

---

## 2. 필요한 계정 및 서비스

| 서비스 | 용도 | 가격 |
|--------|------|------|
| **Google AI Studio** | Gemini API 키 발급 | 무료 (일일 한도 있음) |
| **Supabase** | Edge Functions 호스팅 + DB | 무료 티어 제공 |
| **GitHub** | 소스 코드 관리 + CI/CD | 무료 |

---

## 3. 단계별 설정 가이드

### 3.1 Google AI Studio에서 API 키 발급

1. [Google AI Studio](https://aistudio.google.com/app/apikey) 접속
2. Google 계정으로 로그인
3. **[Create API key]** 버튼 클릭
4. **[Create API key in new project]** 선택
5. 생성된 키(`AIza...`로 시작) 복사하여 안전한 곳에 보관

> ⚠️ **주의**: API 키는 절대 GitHub에 커밋하지 마세요!

---

### 3.2 Supabase 프로젝트 설정

#### 3.2.1 프로젝트 생성
1. [Supabase](https://supabase.com) 회원가입/로그인
2. **[New Project]** 클릭
3. 프로젝트 이름, 비밀번호 설정 후 생성

#### 3.2.2 API 키 등록 (Edge Function Secrets)
1. 프로젝트 대시보드 → 왼쪽 메뉴 **⚙️ Settings**
2. **Edge Functions** 선택
3. **Secrets** 섹션에서 **[Add new secret]** 클릭
4. 아래 정보 입력:
   - **Name**: `GEMINI_API_KEY`
   - **Value**: Google AI Studio에서 복사한 키
5. **[Add]** 클릭

---

### 3.3 Edge Function 생성 및 배포

#### 3.3.1 Edge Function이란?
- Supabase에서 제공하는 **서버리스 함수**
- TypeScript/Deno 환경에서 실행
- 앱이 직접 Gemini API를 호출하는 대신, 이 함수를 거쳐서 호출

#### 3.3.2 함수 코드 (translate-and-validate)

```typescript
// @ts-ignore
declare const Deno: any;

const GEMINI_API_KEY = Deno.env.get('GEMINI_API_KEY')

const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

Deno.serve(async (req: Request) => {
    if (req.method === 'OPTIONS') {
        return new Response('ok', { headers: corsHeaders })
    }

    try {
        const { text, sourceLang, targetLang } = await req.json()

        if (!text || !targetLang) {
            throw new Error('Missing text or targetLang')
        }

        if (!GEMINI_API_KEY) {
            throw new Error('Server Config Error: GEMINI_API_KEY is missing')
        }

        const prompt = `
      Translate the following text from ${sourceLang || 'auto'} to ${targetLang}.
      Also validate the content for profanity, hate speech, or sexual content.
      
      Provide the output in strict JSON format:
      {
        "translatedText": "string",
        "isValid": boolean, 
        "reason": "string (if invalid, explain why)",
        "note": "string (disambiguation if ambiguous, otherwise null)"
      }

      Text: "${text}"
    `

        const response = await fetch(
          `https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-pro:generateContent?key=${GEMINI_API_KEY}`, 
          {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                contents: [{ parts: [{ text: prompt }] }]
            })
        })

        const data = await response.json()

        if (!data.candidates?.[0]?.content) {
            throw new Error('Failed to get AI response')
        }

        const rawText = data.candidates[0].content.parts[0].text
        const jsonString = rawText.replace(/```json\n?|\n?```/g, '').trim()
        const result = JSON.parse(jsonString)

        return new Response(JSON.stringify(result), {
            headers: { ...corsHeaders, 'Content-Type': 'application/json; charset=utf-8' },
        })

    } catch (error) {
        const errorMessage = error instanceof Error ? error.message : String(error)
        return new Response(JSON.stringify({ error: errorMessage }), {
            status: 400,
            headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        })
    }
})
```

#### 3.3.3 배포 방법 (웹 대시보드)
1. Supabase 대시보드 → **⚡ Edge Functions**
2. **[Create a new Function]** 클릭
3. Function slug: `translate-and-validate`
4. 위 코드 붙여넣기
5. **[Deploy]** 클릭

---

### 3.4 Flutter 앱 연동

#### 3.4.1 의존성 추가 (pubspec.yaml)

```yaml
dependencies:
  supabase_flutter: ^2.8.0
  flutter_dotenv: ^6.0.0
```

#### 3.4.2 환경 변수 파일 (.env)

```env
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_ANON_KEY=your-anon-key-here
```

> ⚠️ `.env` 파일은 `.gitignore`에 추가하세요!

#### 3.4.3 Supabase 서비스 클래스

```dart
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SupabaseService {
  static bool _initialized = false;
  
  static SupabaseClient get client {
    if (!_initialized) {
      throw Exception('SupabaseService not initialized');
    }
    return Supabase.instance.client;
  }

  static Future<void> initialize() async {
    if (_initialized) return;
    
    await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL']!,
      anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
    );
    
    _initialized = true;
  }

  /// Edge Function 호출
  static Future<Map<String, dynamic>> translateAndValidate({
    required String text,
    required String sourceLang,
    required String targetLang,
  }) async {
    final response = await client.functions.invoke(
      'translate-and-validate',
      body: {
        'text': text,
        'sourceLang': sourceLang,
        'targetLang': targetLang,
      },
    );
    return Map<String, dynamic>.from(response.data);
  }
}
```

#### 3.4.4 main.dart에서 초기화

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await dotenv.load(fileName: ".env");
  await SupabaseService.initialize();
  
  runApp(MyApp());
}
```

---

### 3.5 CI/CD 설정 (GitHub Actions)

릴리스 빌드 시 `.env` 파일이 없으므로, GitHub Secrets에서 주입해야 합니다.

#### 3.5.1 GitHub Secrets 등록
Repository → Settings → Secrets and variables → Actions → New repository secret

| Secret Name | Value |
|-------------|-------|
| `SUPABASE_URL` | `https://your-project.supabase.co` |
| `SUPABASE_ANON_KEY` | Supabase 대시보드에서 복사 |

#### 3.5.2 Workflow 파일 수정 (.github/workflows/build-apk.yml)

```yaml
- name: Create .env file
  run: |
    echo "SUPABASE_URL=${{ secrets.SUPABASE_URL }}" > .env
    echo "SUPABASE_ANON_KEY=${{ secrets.SUPABASE_ANON_KEY }}" >> .env
```

---

## 4. 트러블슈팅

### 4.1 `LateInitializationError: Field 'client' has not been initialized`
**원인**: Supabase 클라이언트에 초기화 전에 접근  
**해결**: `static final` 대신 getter로 변경하고 `_initialized` 플래그 추가

### 4.2 `SupabaseService not initialized. Call initialize() first.`
**원인**: `.env` 파일이 없거나 로드 실패  
**해결**: 
- 로컬: `.env` 파일 존재 확인
- CI/CD: GitHub Secrets 설정 확인

### 4.3 웹에서 AdMob 에러
**원인**: `google_mobile_ads`는 웹 미지원  
**해결**: `kIsWeb` 체크로 웹에서는 광고 로드 스킵

```dart
void _loadBannerAd() {
  if (kIsWeb) return;
  // ... 광고 로드 코드
}
```

### 4.4 `Gemini Model Not Found (404)` 또는 `Quota Exceeded (429)`
**원인**: 
- 2024~2025년 사이 Google AI 모델 업데이트가 잦아, 특정 모델명(`gemini-pro` 등)이 갑자기 변경되거나 Deprecated 될 수 있습니다.
- `gemini-1.5-pro` 같은 고성능 모델은 무료 계정(Free Tier)에서 요청이 차단될 수 있습니다.

**해결 (Dynamic Model Selection)**:
- 코드에 모델명을 하드코딩하지 않고, `models.list` API로 현재 사용 가능한 모델 목록을 조회합니다.
- 무료 사용자는 **Flash** 계열 모델(`gemini-2.5-flash`, `gemini-1.5-flash`)을 우선 사용하도록 로직을 구현합니다.

**추천 코드 패턴 (Edge Function)**:
```typescript
// 1. 모델 목록 조회
const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models?key=${apiKey}`);
const data = await response.json();

// 2. Flash 모델 우선 검색 (비용/속도 최적화)
const preferredOrder = ['gemini-2.5-flash', 'gemini-1.5-flash', 'gemini-flash'];
const bestModel = data.models.find(m => preferredOrder.some(p => m.name.includes(p)));
const modelName = bestModel ? bestModel.name : 'models/gemini-1.5-flash';

// 3. 선택된 모델로 번역 요청
await fetch(`https://generativelanguage.googleapis.com/v1beta/${modelName}:generateContent...`);
```

---

## 5. 보안 체크리스트

- [ ] API 키가 소스 코드에 하드코딩되어 있지 않은가?
- [ ] `.env` 파일이 `.gitignore`에 포함되어 있는가?
- [ ] Edge Function에서 입력 검증을 하고 있는가?
- [ ] CORS 설정이 적절한가?
- [ ] Rate limiting 고려가 되어 있는가? (향후 구현)

---

## 6. 비용 최적화 팁

1. **캐싱**: 이미 번역된 문장은 로컬 DB에 캐싱하여 중복 API 호출 방지
2. **모델 선택**: `gemini-1.5-flash`가 `gemini-1.5-pro`보다 저렴
3. **프롬프트 최적화**: 불필요한 지시 제거로 토큰 절약

---

## 7. 향후 개선 사항

- [ ] Rate limiting 구현 (사용자당 일일 요청 제한)
- [ ] 응답 캐싱 (Supabase DB 활용)
- [ ] 오프라인 모드 지원 (로컬 캐시 우선)
- [ ] A/B 테스트 (다른 AI 모델 비교)

---

*마지막 업데이트: 2026-01-26*

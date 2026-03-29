# Talkie Extractor (범용 데이터 추출 모듈)

다양한 온라인 학습 콘텐츠나 로컬 이미지 파일에서 데이터를 추출하여 Talkie 앱용 로드 파일(JSON)로 변환해주는 도구입니다.

## 주요 특징
- **스마트 분석(Smart Mode)**: URL 입력 시 HTML 내 텍스트를 먼저 분석하고, 부족할 경우 자동으로 이미지/OCR 모드로 전환
- 특정 뉴스 사이트(조선일보 등)의 동적 렌더링 구조 및 이미지 URL 자동 추출 지원
- 로컬 이미지 파일(JPG, PNG 등)에서 텍스트 추출 지원
- Talkie 앱의 "기기에서 자료 가져오기" 규격과 100% 호환

## 모드 안내
### 1. 텍스트 추출 모드
웹페이지 HTML 내에 `A: ...`, `나: ...`, `「...」` 등의 대화 패턴이 텍스트로 존재할 경우 자동으로 이를 감지하여 수집합니다.

### 2. 이미지/OCR 추출 모드
조선일보와 같이 본문이 이미지로 구성된 경우, 이미지 URL을 찾아낸 뒤 OCR 연동을 시도합니다.

## 설치 및 사용 방법

### 1. 의존성 설치
```bash
pip install -r requirements.txt
```

### 2. 모듈 사용 예시 (Smart Mode)
```python
from talkie_extractor import TalkieExtractor

extractor = TalkieExtractor()

# URL 스마트 분석 (텍스트 우선, 이미지 폴백)
url = "기사_또는_웹페이지_주소"
metadata, entries = extractor.smart_extract(url)

# 만약 entries가 비어있다면 이미지 OCR 필요
if not entries:
    # OCR 로직 실행 (상세 안내는 OCR 가이드 참고)
    pass

# JSON 생성
extractor.process_to_talkie_json(metadata, entries)
```

## JSON 규격 안내
생성된 JSON은 다음 필드를 포함하며 Talkie 앱의 설정 -> 기기에서 자료 가져오기 기능을 통해 즉시 사용 가능합니다.
- `subject`: 기사 제목
- `entries`: 학습 데이터 목록 (`source_text`, `target_text`, `note`)

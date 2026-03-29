import requests
from bs4 import BeautifulSoup
import json
import re
import os
from PIL import Image
try:
    import pytesseract
except ImportError:
    pytesseract = None

class TalkieExtractor:
    """
    다양한 온라인 기사 및 로컬 이미지에서 학습 데이터를 추출하여 Talkie 앱용 로드 파일(JSON)을 생성하는 클래스입니다.
    텍스트 기반 추출과 이미지 기반 OCR 추출을 모두 지원합니다.
    """

    def __init__(self, output_dir="output", tesseract_path=None):
        self.output_dir = output_dir
        if not os.path.exists(self.output_dir):
            os.makedirs(self.output_dir)
        
        # Tesseract 경로 설정 (필요 시)
        if tesseract_path and pytesseract:
            pytesseract.pytesseract.tesseract_cmd = tesseract_path

    def smart_extract(self, url):
        """
        URL을 분석하여 텍스트가 있으면 텍스트 문장으로, 없으면 이미지 OCR 모드로 자동 전환하여 추출합니다.
        """
        print(f"[*] 스마트 분석 시작: {url}")
        try:
            response = requests.get(url, timeout=10)
            response.raise_for_status()
            soup = BeautifulSoup(response.text, 'html.parser')
            
            # 1. 텍스트 기반 대화문 추출 시도
            entries = self.extract_text_content(soup)
            metadata = {"title": self._get_title(soup), "image_url": None, "url": url}

            if entries and len(entries) >= 2:
                print(f"[!] {len(entries)}개의 텍스트 대화문을 발견했습니다.")
                return metadata, entries

            # 2. 텍스트가 없을 경우 이미지 기반(조선일보 등)으로 전환
            print("[?] 유효한 텍스트 대화문을 찾지 못했습니다. 이미지 모드로 전환합니다.")
            article_data = self.fetch_article_data(url, soup=soup)
            if article_data and article_data.get('image_url'):
                return article_data, [] # entries는 이후 OCR 단계를 위해 비워둠
            
            return metadata, []

        except Exception as e:
            print(f"[!] 스마트 추출 중 에러: {e}")
            return None, []

    def _get_title(self, soup):
        title_tag = soup.find('title') or soup.find('h1')
        return title_tag.text.strip() if title_tag else "Untitled"

    def extract_text_content(self, soup):
        """
        HTML 본문에서 대화형 패턴(A: ..., 나: ..., 「...」)을 찾아 entries 리스트를 반환합니다.
        """
        entries = []
        # 일반적인 대화 구분자 패턴
        patterns = [
            re.compile(r'^([A-Za-z가-힣0-9\s]+)[:：]\s*(.*)$'), # A: Hello / 나: 안녕
            re.compile(r'^([A-Za-z가-힣0-9\s]+)[「](.*)[」]$'), # A「안녕」
        ]

        # 본문 텍스트가 포함될 가능성이 높은 태그 탐색
        for tag in soup.find_all(['p', 'li', 'span', 'div']):
            text = tag.text.strip()
            if not text or len(text) > 300: continue # 너무 길거나 짧은 건 무시
            
            for p in patterns:
                match = p.match(text)
                if match:
                    speaker = match.group(1).strip()
                    content = match.group(2).strip()
                    entries.append({
                        "source_text": f"[{speaker}] {content}", # 임시로 화자 표시 포함
                        "target_text": "", # 사용자가 이후 채우거나 기계 번역 연동 가능
                        "note": "",
                        "type": "sentence"
                    })
                    break
        return entries

    def fetch_article_data(self, url, soup=None):
        """
        특정 사이트(조선일보 등) 구조에서 이미지 주소를 추출합니다.
        """
        if not soup:
            print(f"[*] 기사 분석 중: {url}")
            try:
                response = requests.get(url, timeout=10)
                response.raise_for_status()
                soup = BeautifulSoup(response.text, 'html.parser')
            except Exception as e:
                print(f"[!] 기사 수집 에러: {e}")
                return None

        title = self._get_title(soup)
        image_url = None
        
        # 조선일보 Fusion JSON 파싱
        metadata_script = soup.find('script', id='fusion-metadata')
        if metadata_script:
            match = re.search(r'Fusion\.globalContent\s*=\s*({.*?});', metadata_script.string, re.DOTALL)
            if match:
                try:
                    content_json = json.loads(match.group(1))
                    elements = content_json.get('content_elements', [])
                    for elem in elements:
                        if elem.get('type') == 'image':
                            image_url = elem.get('url')
                            break
                except: pass # JSON 파싱 에러 무시
        
        if not image_url:
            og_image = soup.find('meta', property='og:image')
            image_url = og_image.get('content') if og_image else None

        return {"title": title, "image_url": image_url, "url": url}

    def extract_text_via_ocr(self, image_source, lang='jpn+kor'):
        """
        이미지에서 텍스트를 추출합니다. 
        Tesseract 또는 외부 Vision API 연동을 위한 인터페이스 역할을 합니다.
        """
        if not pytesseract:
            print("[!] pytesseract가 설치되어 있지 않습니다. pip install pytesseract를 실행하세요.")
            return ""

        try:
            # image_source가 URL인 경우 다운로드, 파일 경로인 경우 열기
            if image_source.startswith('http'):
                print(f"[*] 이미지 다운로드 중: {image_source}")
                img = Image.open(requests.get(image_source, stream=True).raw)
            else:
                img = Image.open(image_source)
            
            # Tesseract OCR 실행 (실제 정밀한 추출을 위해선 Vision API 사용을 권장)
            text = pytesseract.image_to_string(img, lang=lang)
            return text
        except Exception as e:
            print(f"[!] OCR 처리 중 에러 발생: {e}")
            return ""

    def process_local_image(self, file_path, title="Manual Import"):
        """
        로컬 이미지 파일을 처리하여 메타데이터 형태의 딕셔너리를 반환합니다.
        """
        if not os.path.exists(file_path):
            print(f"[!] 파일을 찾을 수 없습니다: {file_path}")
            return None
            
        print(f"[*] 로컬 이미지 처리 중: {file_path}")
        return {
            "title": title,
            "image_url": file_path,  # 로컬 경로를 URL 필드에 대입
            "url": "local_file"
        }

    def process_to_talkie_json(self, metadata, entries):
        """
        Talkie용 JSON 생성
        """
        talkie_data = {
            "subject": metadata['title'],
            "default_type": "sentence",
            "source_language": "ko",
            "target_language": "ja",
            "entries": entries
        }
        
        # 파일명에서 특수문자 제거
        safe_title = re.sub(r'[\/:*?"<>|]', '', metadata['title']).replace(' ', '_')
        filename = f"talkie_import_{safe_title}.json"
        output_path = os.path.join(self.output_dir, filename)
        
        with open(output_path, 'w', encoding='utf-8') as f:
            json.dump(talkie_data, f, ensure_ascii=False, indent=2)
        
        print(f"[+] JSON 생성 완료: {output_path}")
        return output_path

if __name__ == "__main__":
    extractor = TalkieExtractor()
    # 예시: 이미지 소스에서 추출된 문장 및 단어 자료 구성
    metadata = {
        "title": "[입에 착착 붙는 일본어] 잠시 담가 두다",
        "url": "https://www.chosun.com/..."
    }
    
    # 문장(sentence)과 단어(word) 유형을 명시적으로 구분
    entries = [
        {
            "source_text": "이 얼룩, 빠질까?",
            "target_text": "この汚れ、取れるかな。",
            "type": "sentence"
        },
        {
            "source_text": "때, 더러움",
            "target_text": "汚れ",
            "note": "よごれ",
            "type": "word"
        }
    ]
    
    # extractor.process_to_talkie_json(metadata, entries)

# 앱 흐름도: 말하기 연습 모드 (Mode 3 Flow)

> [!NOTE]
> 본 문서는 Mode 3(말하기 화면)의 UI 요소와 실제 코드 로직을 연결합니다. 번호가 달린 링크(예: `[1]`)를 클릭하면 별도로 분리된 **[로직 통합 명세(Logic Reference)](./logic_reference.md)**로 이동합니다.

<div style="background-color: #fce4ec; padding: 30px; border-radius: 16px; border: 1px solid #f8bbd0; font-family: sans-serif;">
<h2 style="color: #c2185b; margin-top: 0; display: flex; align-items: center;">
<span style="background: #c2185b; color: white; padding: 5px 12px; border-radius: 8px; margin-right: 12px;">3</span> 
Mode 3 (말하기 실전 연습)
</h2>

<!-- 공통 상단 앱바 (Home Screen) -->
<div style="background: #4a69bd; padding: 15px 20px; border-radius: 12px; margin-bottom: 25px; display: flex; align-items: center; color: white;">
<div style="background: rgba(255,255,255,0.2); padding: 5px; border-radius: 8px; display: flex;">
<span style="background: white; color: #4a69bd; padding: 5px 15px; border-radius: 6px; font-weight: bold; font-size: 13px;">단어 (Word)</span>
<span style="padding: 5px 15px; font-size: 13px;">문장 (Sentence)</span> <a href="./logic_reference.md#LC-TOGGLE" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[1]</a>
</div>

<div style="margin-left: 10px; cursor: pointer; background: rgba(0,0,0,0.2); padding: 5px; border-radius: 5px;" title="언어 스왑">
🔄 <a href="./logic_reference.md#LC-SWAP-LANG" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[2]</a>
</div>

<!-- Mode 2 & 3 전용 자료집 선택 -->
<div style="margin-left: auto; background: #fff9c4; color: #856404; padding: 6px 12px; border-radius: 20px; font-size: 13px; font-weight: bold; border: 1px solid #ffe082;">
📚 나의 문장집 (선택) ▼ <a href="./logic_reference.md#LC-SUBJECT-PICK" style="text-decoration: none; font-size: 11px; vertical-align: super; color: #856404;">[10]</a>
</div>
</div>

<!-- 스마트 검색바 -->
<div style="background: white; padding: 12px 16px; border-radius: 25px; border: 1px solid #f8bbd0; margin-bottom: 15px; display: flex; align-items: center; box-shadow: 0 1px 3px rgba(0,0,0,0.05);">
<span style="font-size: 18px; margin-right: 10px; color: #9e9e9e;">🔍</span>
<span style="color: #9e9e9e; font-style: italic; font-size: 14px;">연습할 문장 검색...</span> <a href="./logic_reference.md#LC-SEARCHBAR" style="text-decoration: none; font-size: 12px; vertical-align: super; margin-left: auto;">[15]</a>
</div>

<!-- 액션 라인 -->
<div style="display: flex; gap: 8px; margin-bottom: 20px; align-items: center; overflow-x: auto; padding-bottom: 5px;">
<div style="background: #f8f9fa; padding: 8px 12px; border-radius: 8px; border: 1px solid #dce1e9; font-size: 12px; font-weight: bold; color: #424242;">
🎛️ 검색 조건 (2) <a href="./logic_reference.md#LC-SEARCH-FILTER" style="text-decoration: none; font-size: 11px; vertical-align: super;">[16]</a>
</div>
<div style="background: #e8f5e9; padding: 8px 12px; border-radius: 8px; border: 1px solid #c8e6c9; font-size: 12px; color: #2e7d32; font-weight: bold;">
👁️ 외운 항목 보기 <a href="./logic_reference.md#LC-TOGGLE-MEMORIZED" style="text-decoration: none; font-size: 11px; vertical-align: super;">[17]</a>
</div>
</div>

<!-- 연습 카드 리스트 (Mode3PracticeCard) (4칸 이상의 들여쓰기를 전면 제거) -->
<div style="background: #fff0f5; padding: 15px; border-radius: 10px; border: 1px solid #f8bbd0; min-height: 300px;">

<!-- 비활성 상태 카드 (그라데이션 배경 적용) -->
<div style="background: linear-gradient(135deg, #667eea, #764ba2); padding: 20px; border-radius: 20px; margin-bottom: 16px; color: white; box-shadow: 0 6px 12px rgba(118, 75, 162, 0.4); border: 2px solid transparent;">
<div style="display: flex; justify-content: space-between; margin-bottom: 12px;">
<div style="display: flex; gap: 8px; align-items: center;">
<span style="background: rgba(255,255,255,0.24); padding: 2px 6px; border-radius: 4px; font-size: 10px; font-weight: bold; border: 1px solid rgba(255,255,255,0.3);">KO</span>
<span style="font-size: 12px; color: rgba(255,255,255,0.7); font-style: italic;">이력서/면접 태그</span>
</div>
<!-- 암기 완료 원형 체크박스 -->
<div style="width: 20px; height: 20px; border-radius: 10px; border: 1.5px solid white; display: flex; justify-content: center; align-items: center; background: white;">
<span style="font-size: 14px; color: #764ba2;">✔️</span> <a href="./logic_reference.md#LC-MARK-MEMORIZED" style="text-decoration: none; font-size: 11px; vertical-align: super; color: #764ba2;">[20]</a>
</div>
</div>

<!-- 원문 (항상 최상단은 본인의 모국어) -->
<div style="font-size: 24px; font-weight: bold; line-height: 1.4;">저는 이전에 3년간 개발자로 일했습니다.</div>
</div>

<!-- 활성 연습 상태 카드 (카드를 터치하여 확장했을 때) -->
<div style="background: linear-gradient(135deg, #667eea, #764ba2); border-radius: 20px; color: white; box-shadow: 0 6px 12px rgba(118, 75, 162, 0.4);">
<div style="padding: 20px;">
<div style="display: flex; gap: 8px; align-items: center; margin-bottom: 12px;">
<span style="background: rgba(255,255,255,0.24); padding: 2px 6px; border-radius: 4px; font-size: 10px; font-weight: bold; border: 1px solid rgba(255,255,255,0.3);">KO</span>
</div>
<!-- 상단 모국어 영역 -->
<div style="font-size: 24px; font-weight: bold; margin-bottom: 15px;">이것은 연필입니까?</div>
</div>

<div style="border-top: 1px solid rgba(255,255,255,0.1);"></div>

<!-- 하단 연습 제어 영역 (Idle 뷰 - 버튼 나열) -->
<div style="background: rgba(0,0,0,0.12); padding: 20px; border-radius: 0 0 20px 20px; text-align: center;">
<div style="display: flex; justify-content: center; align-items: center; gap: 20px; margin-bottom: 20px;">
<!-- Skip Button -->
<span style="background: rgba(255,255,255,0.24); width: 40px; height: 40px; border-radius: 20px; display: flex; align-items: center; justify-content: center;">⏭️</span>

<!-- 대형 마이크 버튼 -->
<span style="background: white; color: #764ba2; width: 70px; height: 70px; border-radius: 35px; display: flex; align-items: center; justify-content: center; font-size: 32px; box-shadow: 0 4px 8px rgba(0,0,0,0.2);">🎤</span> <a href="./logic_reference.md#LC-PRACTICE-STT" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[21]</a>

<!-- TTS 듣기 버튼 -->
<span style="background: rgba(255,255,255,0.24); width: 40px; height: 40px; border-radius: 20px; display: flex; align-items: center; justify-content: center;">🔊</span> <a href="./logic_reference.md#LC-TTS" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[7]</a>

<!-- Reset Button -->
<span style="background: rgba(255,255,255,0.24); width: 40px; height: 40px; border-radius: 20px; display: flex; align-items: center; justify-content: center;">🔄</span>
</div>

<!-- 글자 수 힌트 제공 영역 -->
<div style="background: rgba(255,255,255,0.1); display: inline-block; padding: 4px 8px; border-radius: 6px; font-family: monospace; letter-spacing: 2px;">
I- ---- - ------ (Hint)
</div>
</div>
</div>

<!-- (결과 화면 예시 : 발음을 마치고 난 직후) -->
<div style="background: linear-gradient(135deg, #667eea, #764ba2); border-radius: 20px; margin-top: 16px; color: white; box-shadow: 0 6px 12px rgba(118, 75, 162, 0.4);">
<div style="background: rgba(0,0,0,0.12); padding: 20px; border-radius: 0 0 20px 20px; text-align: center;">  
<div style="font-size: 18px; font-weight: bold; color: #69f0ae; margin-bottom: 8px;">정확도: 100.0% <a href="./logic_reference.md#LC-JUDGE" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[23]</a></div>
<div style="font-size: 22px; font-weight: bold; margin-bottom: 10px;">Is this a pencil? (정답 어휘)</div>
<div style="font-size: 14px; font-style: italic; color: rgba(255,255,255,0.7); margin-bottom: 20px;">"Is this a pencil?" (내 발음 인식 결과)</div>
<div style="display: flex; gap: 8px; justify-content: center;">
<span style="background: rgba(255,255,255,0.12); width: 48px; height: 48px; border-radius: 24px; display: flex; justify-content: center; align-items: center;">🔄</span>
<span style="background: rgba(255,255,255,0.24); padding: 12px; flex: 1; border-radius: 12px; font-weight: bold; display: flex; justify-content: center; align-items: center;">🔁 Retry</span>
<span style="background: white; color: #764ba2; padding: 12px; flex: 1; border-radius: 12px; font-weight: bold; display: flex; justify-content: center; align-items: center;">Next ➔</span>
</div>
</div>
</div>

</div>
</div>

---
## 🔗 참고 문서
- [로직 통합 명세 (Logic Reference)](./logic_reference.md)
- [메인 화면 흐름도 (App Flow Main)](./app_flow_main.md)
- [복습 화면 (App Flow Mode 2)](./app_flow_mode2.md)

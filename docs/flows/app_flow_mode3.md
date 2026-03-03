# 앱 흐름도: 말하기 연습 모드 (Mode 3 Flow)

> [!NOTE]
> 본 문서는 Mode 3(말하기 화면)의 UI 요소와 실제 코드 로직을 연결합니다. 번호가 달린 링크(예: `[1]`)를 클릭하면 별도로 분리된 **[로직 통합 명세(Logic Reference)](./logic_reference.md)**로 이동합니다.

<div style="background-color: #fce4ec; padding: 30px; border-radius: 16px; border: 1px solid #f8bbd0; font-family: sans-serif;">
  <h2 style="color: #c2185b; margin-top: 0; display: flex; align-items: center;">
    <span style="background: #c2185b; color: white; padding: 5px 12px; border-radius: 8px; margin-right: 12px;">3</span> 
    Mode 3 (말하기 실전 연습)
  </h2>

  <!-- 스마트 검색바 -->
  <div style="background: white; padding: 20px; border-radius: 12px; border: 2px solid #f8bbd0; margin-bottom: 25px; display: flex; align-items: center;">
    <span style="font-size: 20px; margin-right: 10px; color: #666;">🔍</span>
    <span style="color: #9e9e9e; font-style: italic; font-size: 15px;">단어/문장 검색 (연습 풀 필터링)</span> <a href="./logic_reference.md#LC-SEARCHBAR" style="text-decoration: none; font-size: 12px; vertical-align: super; margin-left: auto;">[15]</a>
  </div>

  <!-- 액션 라인 -->
  <div style="display: flex; gap: 8px; margin-bottom: 25px; align-items: center; overflow-x: auto; padding-bottom: 5px;">
    <div style="background: white; padding: 8px 12px; border-radius: 8px; border: 1px solid #dce1e9; font-size: 12px; white-space: nowrap; font-weight: bold; color: #c2185b;">
      다중 필터/태그 설정 <a href="./logic_reference.md#LC-SEARCH-FILTER" style="text-decoration: none; font-size: 11px; vertical-align: super;">[16]</a>
    </div>
    <div style="background: white; padding: 8px 12px; border-radius: 8px; border: 1px solid #dce1e9; font-size: 12px; white-space: nowrap; color: #2e7d32; font-weight: bold;">
      암기 완료 보기 토글 <a href="./logic_reference.md#LC-TOGGLE-MEMORIZED" style="text-decoration: none; font-size: 11px; vertical-align: super;">[17]</a>
    </div>
  </div>

  <!-- 연습 카드 영역 -->
  <div style="background: #fff0f5; padding: 15px; border-radius: 10px; border: 1px solid #f8bbd0; min-height: 300px;">
    
    <!-- 비활성 카드 -->
    <div style="background: white; padding: 15px; border-radius: 8px; border: 1px solid #e2e8f0; margin-bottom: 10px; color: #666;">
        <span style="font-size: 15px; font-weight: bold;">목표 텍스트 (클릭 시 연습 시작)</span>
    </div>

    <!-- 활성 연습 세션 카드 -->
    <div style="background: white; padding: 20px; border-radius: 12px; border: 2px solid #c2185b; box-shadow: 0 4px 12px rgba(194, 24, 91, 0.15); position: relative;">
        <div style="position: absolute; top: -12px; right: 20px; background: #c2185b; color: white; padding: 4px 12px; border-radius: 15px; font-size: 11px; font-weight: bold;">
            🎙️ 연습 중 (Active)
        </div>
        
        <div style="display: flex; justify-content: space-between; margin-bottom: 15px;">
            <span style="color: #666; font-size: 14px;">모국어 원문 (번역 전)</span>
            <span style="color: #c2185b; cursor: pointer;">🔊 듣기 <a href="./logic_reference.md#LC-TTS" style="text-decoration: none; font-size: 11px; vertical-align: super;">[7]</a></span>
        </div>

        <div style="background: #f8faff; padding: 15px; border-radius: 8px; border: 1px dashed #cfd8dc; margin-bottom: 20px; text-align: center; color: #455a64;">
            내 입으로 말한 영어 문장 (STT 결과) <a href="./logic_reference.md#LC-PRACTICE-STT" style="text-decoration: none; font-size: 12px; vertical-align: super;">[21]</a>
        </div>

        <div style="display: flex; justify-content: center; gap: 20px;">
            <div style="background: #ef5350; color: white; padding: 12px 24px; border-radius: 25px; font-weight: bold;">
                마이크 중지 <a href="./logic_reference.md#LC-STOP-MIC" style="text-decoration: none; font-size: 11px; color: white; vertical-align: super;">[22]</a>
            </div>
        </div>

        <!-- 평가 결과 (음성 인식 후) -->
        <div style="margin-top: 20px; background: #e8f5e9; padding: 15px; border-radius: 8px; border: 1px solid #c8e6c9;">
            <div style="font-size: 13px; font-weight: bold; color: #2e7d32; margin-bottom: 5px;">
                채점 결과: 훌륭합니다! (Perfect Match) <a href="./logic_reference.md#LC-JUDGE" style="text-decoration: none; font-size: 11px; vertical-align: super;">[23]</a>
            </div>
            <div style="font-size: 12px; color: #1b5e20;">(유사 발음 교정 필터 작동됨)</div>
        </div>
    </div>
  </div>

</div>

---

## 🔗 참고 문서
- [로직 통합 명세 (Logic Reference)](./logic_reference.md)
- [메인 입력 화면 흐름도 (App Flow Main)](./app_flow_main.md)
- [대화(프리토킹) 화면 흐름도 (App Flow Mode 4)](./app_flow_mode4.md)

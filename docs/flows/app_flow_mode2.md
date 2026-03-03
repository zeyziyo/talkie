# 앱 흐름도: 학습 자료 및 복습 모드 (Mode 2 Flow)

> [!NOTE]
> 본 문서는 Mode 2(복습 화면)의 UI 요소와 실제 코드 로직을 연결합니다. 번호가 달린 링크(예: `[1]`)를 클릭하면 별도로 분리된 **[로직 통합 명세(Logic Reference)](./logic_reference.md)**로 이동합니다.

<div style="background-color: #f8faff; padding: 30px; border-radius: 16px; border: 1px solid #e1e8f5; font-family: sans-serif;">
  <h2 style="color: #1a73e8; margin-top: 0; display: flex; align-items: center;">
    <span style="background: #1a73e8; color: white; padding: 5px 12px; border-radius: 8px; margin-right: 12px;">2</span> 
    Mode 2 (복습 화면)
  </h2>

  <!-- 스마트 검색바 -->
  <div style="background: white; padding: 20px; border-radius: 12px; border: 2px solid #e1e8f5; margin-bottom: 25px; display: flex; align-items: center;">
    <span style="font-size: 20px; margin-right: 10px; color: #666;">🔍</span>
    <span style="color: #9e9e9e; font-style: italic; font-size: 15px;">단어/문장 검색 (자동 완성 지원)</span> <a href="./logic_reference.md#LC-SEARCHBAR" style="text-decoration: none; font-size: 12px; vertical-align: super; margin-left: auto;">[15]</a>
  </div>

  <!-- 액션 라인 -->
  <div style="display: flex; gap: 8px; margin-bottom: 25px; align-items: center; overflow-x: auto; padding-bottom: 5px;">
    <div style="background: white; padding: 8px 12px; border-radius: 8px; border: 1px solid #dce1e9; font-size: 12px; white-space: nowrap; font-weight: bold; color: #1a73e8;">
      다중 필터/태그 설정 <a href="./logic_reference.md#LC-SEARCH-FILTER" style="text-decoration: none; font-size: 11px; vertical-align: super;">[16]</a>
    </div>
    <div style="background: white; padding: 8px 12px; border-radius: 8px; border: 1px solid #dce1e9; font-size: 12px; white-space: nowrap; color: #2e7d32; font-weight: bold;">
      암기 완료 보기 토글 <a href="./logic_reference.md#LC-TOGGLE-MEMORIZED" style="text-decoration: none; font-size: 11px; vertical-align: super;">[17]</a>
    </div>
    <div style="background: white; padding: 8px 12px; border-radius: 8px; border: 1px solid #dce1e9; font-size: 12px; white-space: nowrap; color: #1565c0; font-weight: bold;">
      ▶/■ 자동 재생 <a href="./logic_reference.md#LC-AUTOPLAY" style="text-decoration: none; font-size: 11px; vertical-align: super;">[18]</a>
    </div>
    <div style="background: white; padding: 8px 12px; border-radius: 8px; border: 1px solid #dce1e9; font-size: 12px; white-space: nowrap; color: #666; font-weight: bold;">
      타이머(대기시간) 설정 <a href="./logic_reference.md#LC-THINKING-TIME" style="text-decoration: none; font-size: 11px; vertical-align: super;">[19]</a>
    </div>
  </div>

  <!-- 리스트 정보 -->
  <div style="display: flex; justify-content: space-between; margin-bottom: 15px; color: #666; font-size: 14px; font-weight: bold; padding: 0 10px;">
    <span>📊 진행률 (Progress)</span>
    <span>학습률 %</span>
  </div>

  <!-- 카드 리스트 -->
  <div style="background: #f1f5f9; padding: 15px; border-radius: 10px; border: 1px solid #dce1e9; min-height: 200px;">
    <div style="background: white; padding: 15px; border-radius: 8px; border: 1px solid #e2e8f0; margin-bottom: 10px; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">
        <div style="display: flex; justify-content: space-between; margin-bottom: 8px;">
            <span style="background: #e3f2fd; color: #1565c0; padding: 2px 6px; border-radius: 4px; font-size: 10px; font-weight: bold;">EN</span>
            <span style="color: #9e9e9e; font-size: 16px;">V</span>
        </div>
        <div style="font-size: 18px; font-weight: bold; margin-bottom: 15px; color: #333;">번역된 목표 텍스트</div>
        
        <div style="display: flex; justify-content: space-between; align-items: center; border-top: 1px dashed #e2e8f0; padding-top: 10px;">
            <div style="font-size: 14px; color: #666;">모국어 원문 (확장 시 표시)</div>
            <span style="font-size: 18px;">✅</span> <a href="./logic_reference.md#LC-MARK-MEMORIZED" style="text-decoration: none; font-size: 11px; vertical-align: super;">[20]</a>
        </div>
    </div>
    
    <div style="text-align: center; color: #94a3b8; font-size: 12px; margin-top: 10px;">... 학습 카드 목록 ...</div>
  </div>

</div>

---

## 🔗 참고 문서
- [로직 통합 명세 (Logic Reference)](./logic_reference.md)
- [메인 입력 화면 흐름도 (App Flow Main)](./app_flow_main.md)
- [전체 대시보드 (Dashboard)](../../system_flow_mindmap.md)

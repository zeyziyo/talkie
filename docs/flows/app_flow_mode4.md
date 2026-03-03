# 앱 흐름도: 대화 모드 (Mode 4 Flow)

> [!NOTE]
> 본 문서는 Mode 4(자유 대화 화면)의 UI 요소와 실제 코드 로직을 연결합니다. 번호가 달린 링크(예: `[1]`)를 클릭하면 별도로 분리된 **[로직 통합 명세(Logic Reference)](./logic_reference.md)**로 이동합니다.

<div style="background-color: #f3e5f5; padding: 30px; border-radius: 16px; border: 1px solid #ce93d8; font-family: sans-serif;">
  <h2 style="color: #6a1b9a; margin-top: 0; display: flex; align-items: center;">
    <span style="background: #6a1b9a; color: white; padding: 5px 12px; border-radius: 8px; margin-right: 12px;">4</span> 
    Mode 4 (자유 대화)
  </h2>

  <!-- 상단 앱바 제어부 -->
  <div style="background: #4a69bd; padding: 15px 20px; border-radius: 12px; margin-bottom: 25px; display: flex; align-items: center; color: white;">
    <span style="font-size: 18px; font-weight: bold; flex: 1; display: flex; align-items: center; justify-content: center;">
      <span style="color: #69f0ae; margin-right: 8px;">✅</span> 현재 대화방 제목
    </span>
    
    <div style="display: flex; gap: 15px;">
        <!-- 검색 아이콘 -->
        <span style="cursor: pointer;" title="대화 내용 검색">🔍</span>
        <!-- 모드 전환 (AI <-> Partner) -->
        <span style="cursor: pointer;" title="AI / 파트너 모드 전환">🤖 <a href="./logic_reference.md#LC-PARTNER-MODE" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[24]</a></span>
        <!-- 저장 및 종료 -->
        <span style="cursor: pointer;" title="저장 및 종료">💾 <a href="./logic_reference.md#LC-CHAT-SAVE" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[25]</a></span>
    </div>
  </div>

  <!-- 메세지 리스트 -->
  <div style="background: #fafafa; padding: 20px; border-radius: 12px; border: 1px solid #e0e0e0; min-height: 350px; display: flex; flex-direction: column; gap: 15px;">
    
    <!-- AI 응답 버블 (왼쪽) -->
    <div style="align-self: flex-start; max-width: 80%;">
        <div style="font-size: 12px; color: #666; margin-bottom: 4px; display: flex; align-items: center;">
            <span style="background: #e3f2fd; color: #1976d2; padding: 2px 6px; border-radius: 4px; margin-right: 6px;">AI</span>
            <span style="cursor: pointer;">🔊 <a href="./logic_reference.md#LC-AI-TTS" style="text-decoration: none; font-size: 10px; vertical-align: super;">[26]</a></span>
        </div>
        <div style="background: #f5f5f5; padding: 12px 16px; border-radius: 16px; border-top-left-radius: 4px;">
            <div style="color: #333; font-size: 15px;">AI가 응답하는 영어 문장 (목표 언어)</div>
            <div style="color: #9e9e9e; font-size: 13px; margin-top: 8px; padding-top: 8px; border-top: 1px dashed #e0e0e0;">
                (번역 토글 시 표시되는 한국어 뜻) 
                <span style="float: right; cursor: pointer;">🌐 <a href="./logic_reference.md#LC-CHAT-TRANSLATE" style="text-decoration: none; font-size: 10px; vertical-align: super;">[27]</a></span>
            </div>
        </div>
    </div>

    <!-- 유저 입력 버블 (오른쪽) -->
    <div style="align-self: flex-end; max-width: 80%;">
        <div style="font-size: 12px; color: #666; margin-bottom: 4px; display: flex; align-items: center; justify-content: flex-end;">
            <span style="cursor: pointer; margin-right: 6px;">🔊</span>
            <span style="background: #e0f2f1; color: #00796b; padding: 2px 6px; border-radius: 4px;">Me</span>
        </div>
        <div style="background: #e3f2fd; padding: 12px 16px; border-radius: 16px; border-top-right-radius: 4px;">
            <div style="color: #1565c0; font-size: 15px;">내가 입력/말한 한국어 원문</div>
            <div style="color: #5c6bc0; font-size: 13px; margin-top: 8px; padding-top: 8px; border-top: 1px dashed #bbdefb;">
                (번역 대기 중...) <a href="./logic_reference.md#LC-CHAT-PROCESS" style="text-decoration: none; font-size: 10px; vertical-align: super;">[28]</a>
            </div>
        </div>
    </div>

  </div>

  <!-- 입력부 영역 -->
  <div style="background: white; margin-top: 15px; padding: 15px; border-radius: 12px; border: 1px solid #e0e0e0; display: flex; align-items: center; gap: 10px;">
    <!-- 마이크 버튼 (STT) -->
    <div style="background: #e53935; width: 45px; height: 45px; border-radius: 25px; display: flex; justify-content: center; align-items: center; color: white; cursor: pointer; flex-shrink: 0;">
      🎤 <a href="./logic_reference.md#LC-CHAT-MIC" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[29]</a>
    </div>

    <!-- 텍스트 입력 칸 -->
    <div style="flex: 1; border: 1px solid #dce1e9; padding: 12px 16px; border-radius: 20px; color: #9e9e9e; font-size: 14px; background: #fafafa;">
      메시지를 입력하세요 (한국어/영어)...
    </div>

    <!-- 전송 버튼 -->
    <div style="background: #1e88e5; width: 45px; height: 45px; border-radius: 25px; display: flex; justify-content: center; align-items: center; color: white; cursor: pointer; flex-shrink: 0;">
      ➤
    </div>
  </div>

</div>

---

## 🔗 참고 문서
- [로직 통합 명세 (Logic Reference)](./logic_reference.md)
- [메인 입력 화면 흐름도 (App Flow Main)](./app_flow_main.md)
- [복습/말하기 모드 연계 (App Flow Mode 2 & 3)](./app_flow_mode2.md)

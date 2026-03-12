# 앱 흐름도: 대화 모드 (Mode 4 Flow)

> [!NOTE]
> 본 문서는 Mode 4(자유 대화 화면)의 UI 요소와 실제 코드 로직을 연결합니다. 번호가 달린 링크(예: `[1]`)를 클릭하면 별도로 분리된 **[로직 통합 명세(Logic Reference)](./logic_reference.md)**로 이동합니다.

<div style="background-color: #fffae6; padding: 30px; border-radius: 16px; border: 1px solid #ffe8cc; font-family: sans-serif;">
<h2 style="color: #d97706; margin-top: 0; display: flex; align-items: center;">
<span style="background: #d97706; color: white; padding: 5px 12px; border-radius: 8px; margin-right: 12px;">4</span> 
Mode 4 (자유 대화/채팅 화면)
</h2>

<!-- 상단 앱바 (ChatScreen AppBar) -->
<div style="background: #4a69bd; padding: 10px 15px; border-radius: 12px; margin-bottom: 15px; display: flex; justify-content: space-between; align-items: center; color: white; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">

<!-- 뒤로가기 버튼 -->
<span style="font-size: 20px; font-weight: bold; cursor: pointer;">←</span>

<!-- 중앙 타이틀 영역 -->
<div style="display: flex; flex-direction: column; align-items: center;">
<div style="display: flex; align-items: center;">
<span style="color: #69f0ae; margin-right: 8px; font-size: 16px;">✔️</span> 
<span style="font-size: 18px; font-weight: bold;">대화방 제목 (Talkie)</span>
</div>
<!-- 파트너 모드 시 중앙 아래에 작게 노출 -->
<span style="font-size: 11px; color: rgba(255,255,255,0.7); margin-top: 2px;">파트너 모드: 수동</span>
</div>

<!-- 우측 액션 아이콘들 -->
<div style="display: flex; gap: 8px;">
<span style="padding: 8px; cursor: pointer;">🔍</span>
<span style="padding: 8px; cursor: pointer;" title="스마트 로봇(AI)/사람 아이콘">🤖 <a href="./logic_reference.md#LC-PARTNER-MODE" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[24]</a></span>
<span style="padding: 8px; cursor: pointer;" title="저장 아이콘">💾 <a href="./logic_reference.md#LC-CHAT-SAVE" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[25]</a></span>
</div>
</div>

<!-- 메세지 리스트 -->
<div style="background: #fff; padding: 20px; border-radius: 12px; border: 1px solid #e0e0e0; min-height: 400px; display: flex; flex-direction: column; gap: 15px; position: relative; box-shadow: 0 2px 4px rgba(0,0,0,0.05);">

<!-- AI/Partner 버블 (왼쪽 정렬) -->
<div style="align-self: flex-start; max-width: 90%;">
<!-- 스피커 헤더 -->
<div style="display: flex; align-items: center; gap: 6px; margin-bottom: 4px; margin-left: 4px;">
<div style="width: 20px; height: 20px; border-radius: 10px; background: #bdbdbd; display: flex; justify-content: center; align-items: center; color: white; font-size: 10px;">A</div>
<span style="color: #616161; font-size: 12px; font-weight: bold;">Assistant</span>
<span style="font-size: 10px; color: #9e9e9e;">✎</span>
</div>

<div style="display: flex; align-items: flex-end; gap: 4px;">
<!-- 번역 뱃지 (Toggle) - 왼쪽(자신 기준 반대쪽)에 위치 -->
<div style="display: flex; flex-direction: column; align-items: center; margin-right: 4px;">
<div style="width: 24px; height: 14px; background: #e0e0e0; border-radius: 7px; display: flex; align-items: center; padding: 2px;">
<div style="width: 10px; height: 10px; background: white; border-radius: 5px;"></div>
</div>
<span style="font-size: 8px; color: #9e9e9e; margin-top: 2px;">번역</span> <a href="./logic_reference.md#LC-CHAT-TRANSLATE" style="text-decoration: none; font-size: 10px; vertical-align: super;">[27]</a>
</div>

<!-- 메시지 바디 -->
<div style="background: #f5f5f5; padding: 12px 16px; border-radius: 16px; border-top-left-radius: 0; display: flex; align-items: center;">
<span style="color: #212121; font-size: 16px; font-weight: 400; max-width: 200px;">Hello! How can I help you?</span>
<!-- 메시지 안쪽의 스피커(TTS) 버튼 -->
<span style="margin-left: 8px; cursor: pointer; color: #9e9e9e;">🔊 <a href="./logic_reference.md#LC-AI-TTS" style="text-decoration: none; font-size: 10px; vertical-align: super;">[26]</a></span>
</div>
</div>
</div>

<!-- 유저 입력 버블 (오른쪽 정렬) -->
<div style="align-self: flex-end; max-width: 90%;">
<!-- User 헤더 -->
<div style="display: flex; justify-content: flex-end; margin-bottom: 4px; margin-right: 4px;">
<span style="color: #616161; font-size: 12px; font-weight: bold;">나표 (ME)</span>
</div>

<div style="display: flex; align-items: flex-end; flex-direction: row-reverse; gap: 4px;">
<!-- 번역 뱃지 (Toggle) - 오른쪽(자신 기준 반대쪽)에 위치 -->
<div style="display: flex; flex-direction: column; align-items: center; margin-left: 4px;">
<div style="width: 24px; height: 14px; background: #ffcc80; border-radius: 7px; display: flex; align-items: center; justify-content: flex-end; padding: 2px;">
<div style="width: 10px; height: 10px; background: white; border-radius: 5px;"></div>
</div>
<span style="font-size: 8px; color: #9e9e9e; margin-top: 2px;">번역</span>
</div>

<!-- 메시지 바디 -->
<div style="background: #e3f2fd; padding: 12px 16px; border-radius: 16px; border-top-right-radius: 0; display: flex; align-items: center; flex-direction: row-reverse;">
<span style="color: #212121; font-size: 16px; font-weight: 400; max-width: 200px; text-align: right;">만나서 반가워!</span>
<!-- 메시지 안쪽의 스피커(TTS) 버튼 -->
<span style="margin-right: 8px; cursor: pointer; color: #9e9e9e;">🔊</span>
</div>
</div>
</div>
</div>

<!-- 하단 입력부 영역 -->
<div style="background: #fafafa; border: 1px solid #e0e0e0; border-top: none; padding-top: 8px; padding-bottom: 16px; border-radius: 0 0 12px 12px;">

<!-- (파트너 모드일 때만 나타나는 스위치) -->
<div style="display: flex; justify-content: center; align-items: center; gap: 8px; margin-bottom: 8px;">
<span style="font-size: 14px;">화자 변경</span>
<div style="width: 34px; height: 20px; background: #e0e0e0; border-radius: 10px; display: flex; align-items: center; padding: 2px;">
<div style="width: 16px; height: 16px; background: white; border-radius: 8px;"></div>
</div>
<span style="font-size: 14px; font-weight: bold; color: #2196f3;">나 (ME)</span>
</div>

<!-- 입력 프레임 -->
<div style="display: flex; align-items: center; padding: 0 8px;">

<!-- 왼쪽: 마이크 버튼 -->
<div style="padding: 8px; cursor: pointer; color: #2196f3;">
🎤 <a href="./logic_reference.md#LC-CHAT-MIC" style="text-decoration: none; font-size: 10px; vertical-align: super;">[29]</a>
</div>

<!-- 중앙: 텍스트 입력 칸 -->
<div style="flex: 1; border: none; padding: 8px 16px; border-radius: 24px; color: #9e9e9e; font-size: 14px; background: white; box-shadow: 0 1px 3px rgba(0,0,0,0.1);">
나 (KO)...
</div>

<!-- 오른쪽: 전송 버튼 (둥근 배경) -->
<div style="margin-left: 4px; width: 40px; height: 40px; border-radius: 20px; background: #667eea; display: flex; justify-content: center; align-items: center; color: white;">
➤ <a href="./logic_reference.md#LC-CHAT-PROCESS" style="text-decoration: none; font-size: 10px; vertical-align: super; color: white;">[28]</a>
</div>
</div>
</div>

</div>

</div>

---

## 📋 상세 흐름 명세 (Detailed Flow)

### 1. 대화 내역 필터링 및 관리
- **[A] 제목 검색**: `ChatHistoryScreen` 상단 검색바에 키워드를 입력하여 대화 제목과 매칭되는 내역을 실시간 필터링합니다. <a href="./logic_reference.md#LC-CHAT-SEARCH">[LC-CHAT-SEARCH]</a>
- **[B] 날짜 필터**: 달력 아이콘 클릭 시 `DateRangePicker`가 호출되며, 특정 기간 내 생성된 대화만 목록에 노출합니다. <a href="./logic_reference.md#LC-CHAT-DATE">[LC-CHAT-DATE]</a>
- **[C] 상세 정보**: 각 대화 아이템은 날짜, 위치(GPS/IP), 주석을 요약하여 보여줍니다. 쓰레기통 아이콘 클릭 시 해당 대화가 DB에서 완전히 삭제됩니다.

### 2. 새 대화 시작 및 참가자 구성
- **[D] 참가자 선택**: `+ 새 대화` 버튼 클릭 시 `ParticipantSelectorDialog`가 열립니다. 여기서 AI 비서, 언어별 파트너 등을 다중 선택하여 대화방을 생성할 수 있습니다. <a href="./logic_reference.md#LC-CHAT-NEW">[LC-CHAT-NEW]</a>
- **[E] 모드 결정**: 선택된 참가자 중 AI가 포함되어 있으면 AI 응답 자동 생성 기능이 활성화됩니다.

### 3. 대화창 상호작용 (Chat Screen)
- **[F] 발화자 전환**: 하단 드롭다운을 통해 '나(User)' 또는 다른 참가자(AI, Third Party) 중 누가 말할지 선택합니다. 선택된 화자의 언어 설정에 맞춰 STT/TTS가 동작합니다.
- **[G] 이름 변경**: 메시지 상단의 아바타나 이름을 클릭하면 팝업이 뜨며, 해당 참가자의 이름을 자유롭게 수정할 수 있습니다. <a href="./logic_reference.md#LC-CHAT-RENAME">[LC-CHAT-RENAME]</a>
- **[H] 번역 토글**: 각 메시지 옆의 스위치를 통해 원문(Spoken Text)과 번역문(App Native Lang)을 개별적으로 전환하여 볼 수 있습니다. <a href="./logic_reference.md#LC-CHAT-TRANSLATE">[LC-CHAT-TRANSLATE]</a>

### 4. 메시지 처리 및 AI 연동
- **[I] 음성 인식 (STT)**: 마이크 버튼 클릭 시 전용 세션이 시작되며, 인식된 텍스트는 즉시 입력창에 채워집니다. <a href="./logic_reference.md#LC-CHAT-MIC">[LC-CHAT-MIC]</a>
- **[J] 메시지 전송**: 전송 버튼 클릭 시 `TranslationService`를 거쳐 번역 후 DB에 저장되며, 화면에 낙관적(Optimistic)으로 즉시 표시됩니다. <a href="./logic_reference.md#LC-CHAT-PROCESS">[LC-CHAT-PROCESS]</a>
- **[K] AI 수동 생성**: 화자가 AI인 경우 노출되는 요술봉(✨) 버튼을 누르면, 이전 대화 문맥을 AI가 분석하여 가장 적절한 답변을 생성하고 자동으로 TTS 발화합니다. <a href="./logic_reference.md#LC-PARTNER-MODE">[LC-PARTNER-MODE]</a>

### 5. 대화 종료 및 데이터 영구 저장
- **[L] 종료 다이얼로그**: 상단 저장(💾) 버튼 클릭 시 호출됩니다. <a href="./logic_reference.md#LC-CHAT-SAVE">[LC-CHAT-SAVE]</a>
- **[M] 정보 최신화**: AI가 추천하는 제목 중 하나를 고르거나 직접 입력하고, 위치 정보 및 대화 요약 주석을 추가하여 최종 저장한 뒤 목록으로 돌아갑니다.

---

## 🔗 참고 문서
- [로직 통합 명세 (Logic Reference)](./logic_reference.md)
- [메인 화면 흐름도 (App Flow Main)](./app_flow_main.md)
- [복습/말하기 화면 (App Flow Mode 2 & 3)](./app_flow_mode2.md)

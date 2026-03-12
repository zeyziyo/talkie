# 앱 흐름도: 학습 자료 및 복습 모드 (Mode 2 Flow)

> [!NOTE]
> 본 문서는 Mode 2(복습 화면)의 UI 요소와 실제 코드 로직을 연결합니다. 번호가 달린 링크(예: `[1]`)를 클릭하면 별도로 분리된 **[로직 통합 명세(Logic Reference)](./logic_reference.md)**로 이동합니다.

<div style="background-color: #f8faff; padding: 30px; border-radius: 16px; border: 1px solid #e1e8f5; font-family: sans-serif;">
<h2 style="color: #1a73e8; margin-top: 0; display: flex; align-items: center;">
<span style="background: #1a73e8; color: white; padding: 5px 12px; border-radius: 8px; margin-right: 12px;">2</span> 
Mode 2 (복습 화면)
</h2>

<!-- 스마트 검색바 (Autocomplete) -->
<div style="background: #212121; padding: 12px 16px; border-radius: 25px; border: 1px solid #333; margin-bottom: 15px; display: flex; align-items: center; box-shadow: 0 4px 6px rgba(0,0,0,0.2);">
  <span style="font-size: 18px; margin-right: 10px; color: #757575;">🔍</span>
  <span style="color: #bdbdbd; font-size: 14px;">검색어 입력 시 자동 완성 목록 노출 <a href="./logic_reference.md#LC-SEARCHBAR" style="text-decoration: none; font-size: 11px; vertical-align: super; margin-left: auto; color: #bb86fc;">[15]</a></span>
</div>

<!-- 액션 컨트롤 라인 -->
<div style="display: flex; gap: 8px; margin-bottom: 20px; align-items: center; overflow-x: auto; padding: 5px 0;">
  <div style="background: #f8f9fa; padding: 8px 12px; border-radius: 8px; border: 1px solid #dce1e9; font-size: 11px; white-space: nowrap; font-weight: bold;">
    🎛️ 필터 조건 <a href="./logic_reference.md#LC-SEARCH-FILTER" style="text-decoration: none; font-size: 10px; vertical-align: super;">[16]</a>
  </div>
  <div style="background: #e8f5e9; padding: 8px 12px; border-radius: 8px; border: 1px solid #c8e6c9; font-size: 11px; white-space: nowrap; color: #2e7d32; font-weight: bold;">
    👁️ 외운 항목 <a href="./logic_reference.md#LC-TOGGLE-MEMORIZED" style="text-decoration: none; font-size: 10px; vertical-align: super;">[17]</a>
  </div>
  <div style="background: #fff3e0; padding: 8px 12px; border-radius: 8px; border: 1px solid #ffe0b2; font-size: 11px; white-space: nowrap; color: #e65100; font-weight: bold;">
    ▶ 오토 플레이 <a href="./logic_reference.md#LC-AUTOPLAY" style="text-decoration: none; font-size: 10px; vertical-align: super;">[18]</a>
  </div>
  <div style="background: #f3e5f5; padding: 8px 12px; border-radius: 8px; border: 1px solid #e1bee7; font-size: 11px; white-space: nowrap; color: #7b1fa2; font-weight: bold;">
    ⏱️ 생각 시간 <a href="./logic_reference.md#LC-THINKING-TIME" style="text-decoration: none; font-size: 10px; vertical-align: super;">[19]</a>
  </div>
</div>


<!-- 리스트 정보 (Progress Bar) -->
<div style="display: flex; justify-content: space-between; margin-bottom: 15px; color: #424242; font-size: 14px; font-weight: bold; padding: 0 16px;">
<span>📊 진행률 5 / 20</span>
<span style="color: #9e9e9e;">25%</span>
</div>

<!-- 카드 리스트 영역 (4칸 들여쓰기를 전면 제거하여 코드 블록으로 보이는 현상 해결) -->
<div style="background: #f1f5f9; padding: 15px; border-radius: 10px; border: 1px solid #dce1e9; min-height: 250px;">

<!-- 비확장 카드 (Collapsed) -->
<div style="background: linear-gradient(135deg, #667eea, #764ba2); border-radius: 20px; margin-bottom: 16px; color: white; box-shadow: 0 6px 12px rgba(118, 75, 162, 0.4);">
<div style="padding: 20px;">
<div style="display: flex; justify-content: space-between; align-items: flex-start;">
<div style="display: flex; gap: 8px; align-items: center; flex-wrap: wrap; flex: 1;">
<span style="background: rgba(255,255,255,0.24); padding: 2px 6px; border-radius: 4px; font-size: 10px; font-weight: bold; border: 1px solid rgba(255,255,255,0.3);">EN</span>
<span style="background: rgba(255,255,255,0.1); padding: 2px 6px; border-radius: 4px; font-size: 10px; font-weight: bold;">명사</span>
<span style="background: rgba(255,255,255,0.1); padding: 2px 6px; border-radius: 4px; font-size: 10px; font-style: italic; color: rgba(255,255,255,0.7);">과일 태그</span>
</div>
<!-- 암기 완료 원형 체크박스 -->
<div style="width: 20px; height: 20px; border-radius: 10px; border: 1.5px solid white; display: flex; justify-content: center; align-items: center; background: white; flex-shrink: 0;">
<span style="font-size: 14px; color: #764ba2;">✔️</span> <a href="./logic_reference.md#LC-MARK-MEMORIZED" style="text-decoration: none; font-size: 11px; vertical-align: super; color: #764ba2;">[20]</a>
</div>
</div>

<div style="font-size: 24px; font-weight: bold; margin-top: 12px; margin-bottom: 0;">Apple</div>
</div>

<!-- 하단 Flip 영역 (축소 상태) -->
<div style="padding: 12px 20px; display: flex; justify-content: space-between; align-items: center;">
<span style="background: rgba(255,255,255,0.24); width: 32px; height: 32px; border-radius: 16px; display: flex; justify-content: center; align-items: center;">🔊</span>
<div style="display: flex; align-items: center; font-weight: bold;">
뒤집기 ▿
</div>
</div>
</div>

<!-- 활성 카드 (Expanded) -->
<div style="background: linear-gradient(135deg, #667eea, #764ba2); border-radius: 20px; margin-bottom: 16px; color: white; box-shadow: 0 6px 12px rgba(118, 75, 162, 0.4);">
<div style="padding: 20px;">
<div style="display: flex; justify-content: space-between; align-items: flex-start;">
<div style="display: flex; gap: 8px; align-items: center; flex-wrap: wrap;">
<span style="background: rgba(255,255,255,0.24); padding: 2px 6px; border-radius: 4px; font-size: 10px; font-weight: bold; border: 1px solid rgba(255,255,255,0.3);">EN</span>
</div>
<!-- 암기 취소 상태 (투명 빈 원) -->
<div style="width: 20px; height: 20px; border-radius: 10px; border: 1.5px solid white; display: flex; justify-content: center; align-items: center; background: transparent;">
</div>
</div>

<div style="font-size: 24px; font-weight: bold; margin-top: 12px;">Car</div>
</div>

<div style="border-top: 1px solid rgba(255,255,255,0.1);"></div>

<!-- 확장된 하단 연습 뷰 -->
<div style="background: rgba(0,0,0,0.12); padding: 20px; border-radius: 0 0 20px 20px;">
<div style="display: flex; gap: 8px; align-items: flex-start; margin-bottom: 15px;">
<span style="background: rgba(255,255,255,0.24); padding: 2px 6px; border-radius: 4px; font-size: 10px; font-weight: bold; border: 1px solid rgba(255,255,255,0.3);">KO</span>
<span style="font-size: 18px; line-height: 1.4; flex: 1;">자동차</span>
</div>

<div style="display: flex; justify-content: flex-end; gap: 12px;">
<!-- TTS 듣기 버튼 -->
<span style="background: rgba(255,255,255,0.24); width: 40px; height: 40px; border-radius: 20px; display: flex; align-items: center; justify-content: center;">🔊</span> <a href="./logic_reference.md#LC-TTS" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[7]</a>
<!-- 숨기기 버튼 -->
<span style="display: flex; align-items: center; color: rgba(255,255,255,0.7); font-weight: bold; padding: 0 8px;">
👁️‍🗨️ 숨기기
</span>
</div>
</div>
</div>

</div>
</div>

</div>

---

## 📋 상세 흐름 명세 (Detailed Flow)

### 1. 자료 필터링 및 검색
- **[A] 스마트 검색**: 검색바에 초성을 입력하거나 단어를 입력하면 자동 완성 목록을 통해 해당 항목으로 즉시 점프합니다. <a href="./logic_reference.md#LC-SEARCHBAR">[LC-SEARCHBAR]</a>
- **[B] 조건별 필터**: 상세 필터 버튼을 통해 특정 품사, 품사 형태, 태그 조건이 맞는 항목만 목록에 노출합니다. <a href="./logic_reference.md#LC-SEARCH-FILTER">[LC-SEARCH-FILTER]</a>
- **[C] 암기 여분 처리**: '외운 항목 보기' 토글을 통해 학습이 완료된 데이터를 목록에서 숨기거나 다시 보게 할 수 있습니다. <a href="./logic_reference.md#LC-TOGGLE-MEMORIZED">[LC-TOGGLE-MEMORIZED]</a>

### 2. 순차 복습 및 자동 재생
- **[D] 오토 플레이**: 플레이 버튼 클릭 시 리스트의 첫 항목부터 순차적으로 TTS를 읽어주며 자동 스크롤합니다. <a href="./logic_reference.md#LC-AUTOPLAY">[LC-AUTOPLAY]</a>
- **[E] 생각 시간 설정**: 시스템이 원문(KO)을 읽어준 후 번역문(EN)을 읽어주기 전까지 사용자가 뜻을 떠올릴 수 있도록 대기 인터벌을 조절합니다. <a href="./logic_reference.md#LC-THINKING-TIME">[LC-THINKING-TIME]</a>

### 3. 학습 카드 상호작용
- **[F] 암기 상태 토글**: 카드의 체크 아이콘을 클릭하여 암기 완료 여부를 즉시 업데이트합니다. 플래그가 저장되면 리스트 필터에 반영됩니다. <a href="./logic_reference.md#LC-MARK-MEMORIZED">[LC-MARK-MEMORIZED]</a>
- **[G] 카드 플립 (Flip)**: 터치 시 카드가 뒤집히며 숨겨져 있던 학습 대상 언어와 TTS 버튼이 노출됩니다.
- **[H] 개별 발음 청취**: 스피커 아이콘을 통해 해당 문장의 원어민 발음을 반복 청취할 수 있습니다. <a href="./logic_reference.md#LC-TTS">[LC-TTS]</a>

---

## 🔗 참고 문서
- [로직 통합 명세 (Logic Reference)](./logic_reference.md)
- [메인 화면 흐름도 (App Flow Main)](./app_flow_main.md)

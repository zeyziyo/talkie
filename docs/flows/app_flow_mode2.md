# 앱 흐름도: 학습 자료 및 복습 모드 (Mode 2 Flow)

> [!NOTE]
> 본 문서는 Mode 2(복습 화면)의 UI 요소와 실제 코드 로직을 연결합니다. 번호가 달린 링크(예: `[1]`)를 클릭하면 별도로 분리된 **[로직 통합 명세(Logic Reference)](./logic_reference.md)**로 이동합니다.

<div style="background-color: #f8faff; padding: 30px; border-radius: 16px; border: 1px solid #e1e8f5; font-family: sans-serif;">
<h2 style="color: #1a73e8; margin-top: 0; display: flex; align-items: center;">
<span style="background: #1a73e8; color: white; padding: 5px 12px; border-radius: 8px; margin-right: 12px;">2</span> 
Mode 2 (복습 화면)
</h2>

<!-- 스마트 검색바 -->
<div style="background: white; padding: 12px 16px; border-radius: 25px; border: 1px solid #e1e8f5; margin-bottom: 15px; display: flex; align-items: center; box-shadow: 0 1px 3px rgba(0,0,0,0.05);">
<span style="font-size: 18px; margin-right: 10px; color: #9e9e9e;">🔍</span>
<span style="color: #9e9e9e; font-style: italic; font-size: 14px;">단어 검색... (자동 완성 지원)</span> <a href="./logic_reference.md#LC-SEARCHBAR" style="text-decoration: none; font-size: 12px; vertical-align: super; margin-left: auto;">[15]</a>
</div>

<!-- 액션 라인 -->
<div style="display: flex; gap: 8px; margin-bottom: 20px; align-items: center; overflow-x: auto; padding-bottom: 5px;">
<div style="background: #f8f9fa; padding: 8px 12px; border-radius: 8px; border: 1px solid #dce1e9; font-size: 12px; white-space: nowrap; font-weight: bold; color: #424242;">
🎛️ 검색 조건 (0) <a href="./logic_reference.md#LC-SEARCH-FILTER" style="text-decoration: none; font-size: 11px; vertical-align: super;">[16]</a>
</div>
<div style="background: #e8f5e9; padding: 8px 12px; border-radius: 8px; border: 1px solid #c8e6c9; font-size: 12px; white-space: nowrap; color: #2e7d32; font-weight: bold;">
👁️ 외운 항목 보기 <a href="./logic_reference.md#LC-TOGGLE-MEMORIZED" style="text-decoration: none; font-size: 11px; vertical-align: super;">[17]</a>
</div>
<div style="background: #f8f9fa; padding: 8px 12px; border-radius: 8px; border: 1px solid #dce1e9; font-size: 12px; white-space: nowrap; color: #1565c0; font-weight: bold;">
▶ 자동 재생 <a href="./logic_reference.md#LC-AUTOPLAY" style="text-decoration: none; font-size: 11px; vertical-align: super;">[18]</a>
</div>
<div style="background: #f8f9fa; padding: 8px 12px; border-radius: 8px; border: 1px solid #dce1e9; font-size: 12px; white-space: nowrap; color: #616161; font-weight: bold;">
⏱️ 대기 시간: 2s <a href="./logic_reference.md#LC-THINKING-TIME" style="text-decoration: none; font-size: 11px; vertical-align: super;">[19]</a>
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

---
## 🔗 참고 문서
- [로직 통합 명세 (Logic Reference)](./logic_reference.md)
- [메인 화면 흐름도 (App Flow Main)](./app_flow_main.md)

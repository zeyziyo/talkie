# 앱 흐름도: 메인 입력 화면 (Main View Flow)

> [!NOTE]
> 본 문서는 UI 요소와 실제 코드 로직을 연결합니다. 번호가 달린 링크(예: `[1]`)를 클릭하면 별도로 분리된 **[로직 통합 명세(Logic Reference)](./logic_reference.md)**로 이동합니다.

<div style="background-color: #f8faff; padding: 30px; border-radius: 16px; border: 1px solid #e1e8f5; font-family: sans-serif;">
  <h2 style="color: #1a73e8; margin-top: 0; display: flex; align-items: center;">
    <span style="background: #1a73e8; color: white; padding: 5px 12px; border-radius: 8px; margin-right: 12px;">1</span> 
    Main View (메인 번역 화면)
  </h2>

  <!-- 상단 컨트롤 (AppBar Bottom) -->
  <div style="background: white; padding: 15px; border-radius: 12px; border: 1px solid #d0e3ff; margin-bottom: 25px; box-shadow: 0 4px 6px rgba(0,0,0,0.02);">
    <div style="font-size: 11px; color: #1a73e8; margin-bottom: 8px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Navigation & Mode</div>
    <div style="display: flex; gap: 12px;">
      <div style="flex: 1; background: #f8faff; padding: 12px; border-radius: 8px; border: 1px solid #e1e8f5; text-align: center; font-size: 15px; font-weight: bold; color: #1a73e8;">
        단어 / 문장 탭 토글 <a href="./logic_reference.md#LC-TOGGLE" style="text-decoration: none; font-size: 12px; vertical-align: super;">[1]</a>
      </div>
      <div style="flex: 1; background: #e8f0fe; padding: 12px; border-radius: 8px; border: 1px solid #d2e3fc; text-align: center; font-size: 14px; font-weight: bold; color: #1565c0;">
        언어 표시 및 전환 <a href="./logic_reference.md#LC-SWAP-LANG" style="text-decoration: none; font-size: 12px; vertical-align: super;">[2]</a>
      </div>
    </div>
  </div>

  <!-- 입력창 -->
  <div style="background: white; padding: 25px; border-radius: 12px; border: 2px solid #e1e8f5; margin-bottom: 25px; min-height: 80px; display: flex; align-items: center; justify-content: center; position: relative;">
    <div style="position: absolute; top: -12px; left: 20px; background: #fff9c4; padding: 2px 10px; border-radius: 4px; font-size: 12px; border: 1px solid #ffe082;">
      주석 (조건부 표시) <a href="./logic_reference.md#LC-NOTE-DISPLAY" style="text-decoration: none; font-size: 11px; vertical-align: super;">[3]</a>
    </div>
    소스 텍스트 입력창 <a href="./logic_reference.md#LC-INPUT" style="text-decoration: none; font-size: 12px; vertical-align: super;">[4]</a>
  </div>

  <!-- 액션 라인 -->
  <div style="display: flex; gap: 15px; margin-bottom: 25px; align-items: center;">
    <div style="flex: 1.5; background: white; padding: 12px; border-radius: 8px; border: 1px solid #dce1e9; text-align: center; font-size: 13px;">
      의미/품사 선택 <a href="./logic_reference.md#LC-POS-SELECT" style="text-decoration: none; font-size: 12px; vertical-align: super;">[5]</a>
    </div>
    <a href="./app_flow_metadata.md" style="flex: 2; background: #e3f2fd; color: #1976d2; padding: 12px; border-radius: 8px; text-align: center; text-decoration: none; font-weight: bold; border: 1px solid #bbdefb;">상세 분류 설정 시 이동 ➔</a>
  </div>

  <!-- 실행 및 결과 -->
  <div style="display: flex; gap: 15px; margin-bottom: 20px;">
    <div style="flex: 1; background: #4caf50; color: white; padding: 15px; border-radius: 10px; text-align: center; font-weight: bold; box-shadow: 0 4px 6px rgba(76, 175, 80, 0.3);">
      번역 실행 <a href="./logic_reference.md#LC-TRANSLATE" style="text-decoration: none; color: white; font-size: 12px; vertical-align: super;">[6]</a>
    </div>
  </div>
  
  <div style="background: white; padding: 20px; border-radius: 10px; border: 1px solid #dce1e9;">
    <div style="display: flex; justify-content: space-between; margin-bottom: 10px; color: #666; font-size: 13px;">
      <span>목표 언어 표시</span>
      <span>듣기 <a href="./logic_reference.md#LC-TTS" style="text-decoration: none; font-size: 12px; vertical-align: super;">[7]</a></span>
    </div>
    <div style="min-height: 60px; color: #333;">번역 결과 (편집 가능)</div>
  </div>

  <!-- 하단 저장 버튼 -->
  <div style="margin-top: 20px; background: #2e7d32; color: white; padding: 15px; border-radius: 10px; text-align: center; font-weight: bold;">
    데이터 저장 <a href="./logic_reference.md#LC-SAVE" style="text-decoration: none; color: white; font-size: 12px; vertical-align: super;">[8]</a>
  </div>
</div>

---

## 🔗 참고 문서
- [로직 통합 명세 (Logic Reference)](./logic_reference.md)
- [상세 분류 흐름도 (Metadata Dialog Flow)](./app_flow_metadata.md)
- [전체 대시보드 (Dashboard)](../../system_flow_mindmap.md)

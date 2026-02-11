# Mode 1: Main View Flow (Premium)

> [!IMPORTANT]
> **[내비게이션]**: 하단의 **[상세 분류]** 버튼을 클릭하면 이동합니다.

<div style="background-color: #f8faff; padding: 30px; border-radius: 16px; border: 1px solid #e1e8f5; font-family: sans-serif;">
  <h2 style="color: #1a73e8; margin-top: 0; display: flex; align-items: center;">
    <span style="background: #1a73e8; color: white; padding: 5px 12px; border-radius: 8px; margin-right: 12px;">1</span> 
    Main View (메인 번역 화면)
  </h2>

  <!-- 상단 컨트롤 (AppBar Bottom) -->
  <div style="background: white; padding: 15px; border-radius: 12px; border: 1px solid #d0e3ff; margin-bottom: 25px; box-shadow: 0 4px 6px rgba(0,0,0,0.02);">
    <div style="font-size: 11px; color: #1a73e8; margin-bottom: 8px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">AppBar Bottom Area</div>
    <div style="display: flex; gap: 12px;">
      <div style="flex: 1; background: #f8faff; padding: 12px; border-radius: 8px; border: 1px solid #e1e8f5; text-align: center; font-size: 15px; font-weight: bold; color: #1a73e8;">단어 / 문장 토글</div>
      <div style="flex: 1; background: #f8faff; padding: 12px; border-radius: 8px; border: 1px solid #e1e8f5; text-align: center; font-size: 15px; font-weight: bold; color: #1a73e8;">언어 전환</div>
    </div>
  </div>

  <!-- 입력창 -->
  <div style="background: white; padding: 25px; border-radius: 12px; border: 2px solid #e1e8f5; margin-bottom: 25px; min-height: 80px; display: flex; align-items: center; justify-content: center; position: relative;">
    <div style="position: absolute; top: -12px; left: 20px; background: #fff9c4; padding: 2px 10px; border-radius: 4px; font-size: 12px; border: 1px solid #ffe082;">주석 (조건부 표시)</div>
    소스 텍스트 입력창
  </div>

  <!-- 액션 라인 -->
  <div style="display: flex; gap: 15px; margin-bottom: 25px; align-items: center;">
    <div style="flex: 1; background: white; padding: 12px; border-radius: 8px; border: 1px solid #dce1e9; text-align: center;">품사 선택</div>
    <a href="./metadata_dialog_flow.md" style="flex: 2; background: #2979ff; color: white; padding: 12px; border-radius: 8px; text-align: center; text-decoration: none; font-weight: bold; box-shadow: 0 4px 10px rgba(41, 121, 255, 0.3);">상세 분류 (클릭하여 이동)</a>
  </div>

  <!-- 실행 및 결과 -->
  <div style="background: #4caf50; color: white; padding: 15px; border-radius: 10px; text-align: center; font-weight: bold; margin-bottom: 20px;">번역</div>
  
  <div style="background: white; padding: 20px; border-radius: 10px; border: 1px solid #dce1e9;">
    <div style="display: flex; justify-content: space-between; margin-bottom: 10px; color: #666; font-size: 13px;">
      <span>목표 언어 표시</span>
      <span>듣기</span>
    </div>
    <div style="min-height: 60px; color: #333;">번역 결과 (편집 가능)</div>
  </div>

  <!-- 하단 저장 버튼 -->
  <div style="margin-top: 20px; background: #2e7d32; color: white; padding: 15px; border-radius: 10px; text-align: center; font-weight: bold;">데이터 저장</div>
</div>

---
## 연결된 내비게이션
- [전체 대시보드 (Dashboard)](./system_flow_mindmap.md)
- [상세 설정 팝업 (Metadata Dialog)](./metadata_dialog_flow.md)

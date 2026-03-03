# 앱 흐름도: 상세 분류 다이얼로그 (Metadata Dialog Flow)

> [!NOTE]
> 본 문서는 상세 분류 설정을 위한 다이얼로그의 구조와 코드 로직을 연결합니다. 번호를 클릭하면 **[로직 통합 명세(Logic Reference)](./logic_reference.md)**의 해당 섹션으로 이동합니다.

<div style="background-color: #f0f7ff; padding: 30px; border-radius: 16px; border: 1px solid #d0e3ff; font-family: sans-serif;">
  <h2 style="color: #1565c0; margin-top: 0; display: flex; align-items: center;">
    <span style="background: #1565c0; color: white; padding: 5px 12px; border-radius: 8px; margin-right: 12px;">2</span> 
    Metadata Dialog (상세 설정 팝업)
  </h2>

  <!-- 자료집 관리 섹션 -->
  <div style="background: white; padding: 20px; border-radius: 12px; border: 1px solid #d0e3ff; margin-bottom: 20px;">
    <h4 style="margin-top: 0; color: #1565c0; border-bottom: 1px solid #eee; padding-bottom: 8px;">자료집 관리 (Subject Management)</h4>
    <div style="display: flex; gap: 10px; margin-bottom: 12px;">
      <div style="flex: 4; background: #f9f9f9; padding: 10px; border-radius: 6px; border: 1px solid #ddd; color: #666; font-size: 13px;">
        새 자료집/주제 이름 입력창 <a href="./logic_reference.md#LC-SUBJECT-NEW" style="text-decoration: none; font-size: 11px; vertical-align: super;">[1]</a>
      </div>
      <div style="flex: 1; background: #e0e0e0; padding: 10px; border-radius: 6px; text-align: center; font-size: 13px;">추가</div>
    </div>
    <div style="background: #fff9c4; padding: 12px; border-radius: 6px; border: 1px solid #ffe082; font-size: 13px; color: #856404;">
      기본 또는 기존 자료집 선택 (자동 완성 드롭다운 적용) <a href="./logic_reference.md#LC-SUBJECT-PICK" style="text-decoration: none; font-size: 11px; vertical-align: super;">[2]</a>
    </div>
  </div>

  <!-- 태그 및 주석 섹션 -->
  <div style="background: white; padding: 20px; border-radius: 12px; border: 1px solid #d0e3ff; margin-bottom: 20px;">
    <h4 style="margin-top: 0; color: #1565c0; border-bottom: 1px solid #eee; padding-bottom: 8px;">상황 메타데이터 (Context & Retrieval)</h4>
    <div style="background: #fdfdfd; padding: 11px; border-radius: 6px; border: 1px solid #d0e3ff; border-left: 4px solid #1565c0; margin-bottom: 10px;">
      주석 (Context Note) : 기계번역 품질 향상을 위한 필수 힌트 <a href="./logic_reference.md#LC-NOTE-INPUT" style="text-decoration: none; font-size: 11px; vertical-align: super;">[4]</a>
    </div>
    <div style="background: #f9f9f9; padding: 10px; border-radius: 6px; border: 1px solid #ddd; font-size: 13px;">
      부가 검색 태그 입력 (여러 개 지정 가능) <a href="./logic_reference.md#LC-TAGS" style="text-decoration: none; font-size: 11px; vertical-align: super;">[3]</a>
    </div>
  </div>

  <!-- 문법 정보 섹션 -->
  <div style="background: white; padding: 20px; border-radius: 12px; border: 1px solid #d0e3ff; margin-bottom: 25px;">
    <h4 style="margin-top: 0; color: #1565c0; border-bottom: 1px solid #eee; padding-bottom: 8px;">문법 및 형태 정보 (Grammar)</h4>
    <div style="display: flex; gap: 10px;">
      <div style="flex: 1; background: #f9f9f9; padding: 10px; border-radius: 6px; border: 1px solid #ddd; text-align: center;">
        어근 (Root) <a href="./logic_reference.md#LC-ROOT" style="text-decoration: none; font-size: 11px; vertical-align: super;">[5]</a>
      </div>
      <div style="flex: 1; background: #f9f9f9; padding: 10px; border-radius: 6px; border: 1px solid #ddd; text-align: center;">
        활용형/문법 <a href="./logic_reference.md#LC-GRAMMAR" style="text-decoration: none; font-size: 11px; vertical-align: super;">[6]</a>
      </div>
    </div>
  </div>

  <a href="./app_flow_main.md" style="display: block; background: #1565c0; color: white; padding: 18px; border-radius: 10px; text-align: center; text-decoration: none; font-weight: bold; font-size: 16px; box-shadow: 0 4px 12px rgba(21, 101, 192, 0.3);">확인 (저장 및 메인으로 복귀)</a>
</div>

---

## 🔗 참고 문서
- [로직 통합 명세 (Logic Reference)](./logic_reference.md)
- [메인 입력 화면 흐름도 (Main View Flow)](./app_flow_main.md)
- [전체 대시보드 (Dashboard)](../../system_flow_mindmap.md)

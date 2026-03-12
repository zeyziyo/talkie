# 앱 흐름도: 메인 입력 화면 (Main View Flow)

> [!NOTE]
> 본 문서는 UI 요소와 실제 코드 로직을 연결합니다. 번호가 달린 링크(예: `[1]`)를 클릭하면 별도로 분리된 **[로직 통합 명세(Logic Reference)](./logic_reference.md)**로 이동합니다.

<div style="background-color: #f8faff; padding: 30px; border-radius: 16px; border: 1px solid #e1e8f5; font-family: sans-serif;">
  <h2 style="color: #1a73e8; margin-top: 0; display: flex; align-items: center;">
    <span style="background: #1a73e8; color: white; padding: 5px 12px; border-radius: 8px; margin-right: 12px;">1</span> 
    Main View (메인 번역 화면)
  </h2>

  <!-- 1. 언어 선택 및 전환 (상단) -->
  <div style="background: white; padding: 15px; border-radius: 12px; border: 1px solid #d0e3ff; margin-bottom: 25px; box-shadow: 0 4px 6px rgba(0,0,0,0.02);">
    <div style="font-size: 11px; color: #1a73e8; margin-bottom: 8px; font-weight: bold; text-transform: uppercase; letter-spacing: 0.5px;">Language Selection</div>
    <div style="display: flex; align-items: center; gap: 10px; justify-content: center;">
      <div style="flex: 1; background: #f8faff; padding: 10px; border-radius: 8px; border: 1px solid #e1e8f5; text-align: center; font-size: 14px; font-weight: bold; color: #1a73e8;">
        학습 주체 언어 <a href="./logic_reference.md#LC-LANG-SELECT" style="text-decoration: none; font-size: 11px; vertical-align: super;">[2]</a>
      </div>
      <div style="color: #1a73e8; font-size: 20px;">⇄</div>
      <div style="flex: 1; background: #f8faff; padding: 10px; border-radius: 8px; border: 1px solid #e1e8f5; text-align: center; font-size: 14px; font-weight: bold; color: #1a73e8;">
        학습 대상 언어 <a href="./logic_reference.md#LC-LANG-SELECT" style="text-decoration: none; font-size: 11px; vertical-align: super;">[2]</a>
      </div>
    </div>
  </div>

  <!-- 2. 주 메커니즘: 음성 인식 아이콘 -->
  <div style="display: flex; flex-direction: column; align-items: center; margin-bottom: 30px;">
    <div style="width: 80px; height: 80px; background: #1a73e8; color: white; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 32px; box-shadow: 0 8px 15px rgba(26, 115, 232, 0.3); cursor: pointer; margin-bottom: 12px;">
      🎙️
    </div>
    <div style="font-size: 14px; color: #1a73e8; font-weight: bold;">길게 눌러 음성 입력 <a href="./logic_reference.md#LC-STT" style="text-decoration: none; font-size: 11px; vertical-align: super;">[9]</a></div>
  </div>

  <!-- 3. 보조 입력: 텍스트 입력창 -->
  <div style="background: white; padding: 12px 20px; border-radius: 30px; border: 1px solid #e1e8f5; margin-bottom: 25px; display: flex; align-items: center; gap: 12px; box-shadow: inset 0 2px 4px rgba(0,0,0,0.02);">
    <span style="color: #757575;">⌨️</span>
    <div style="flex: 1; color: #9e9e9e; font-size: 14px;">직접 텍스트 입력... <a href="./logic_reference.md#LC-INPUT" style="text-decoration: none; font-size: 11px; vertical-align: super;">[4]</a></div>
  </div>

  <!-- 4. 상세 설정 섹션 (조건부 노출) -->
  <div style="background: #f1f3f4; padding: 15px; border-radius: 12px; border: 1px solid #e0e0e0; margin-bottom: 25px;">
    <div style="display: flex; align-items: center; gap: 8px; margin-bottom: 12px;">
      <span style="font-size: 14px;">⚙️</span>
      <span style="font-size: 13px; font-weight: bold; color: #5f6368;">상세 설정</span>
    </div>
    <div style="display: flex; flex-wrap: wrap; gap: 8px;">
      <div style="background: white; padding: 6px 12px; border-radius: 6px; border: 1px solid #dcdcdc; font-size: 12px;">단어/문장 <a href="./logic_reference.md#LC-TOGGLE" style="text-decoration: none; font-size: 10px; vertical-align: super;">[1]</a></div>
      <div style="background: white; padding: 6px 12px; border-radius: 6px; border: 1px solid #dcdcdc; font-size: 12px;">자료집 선택 <a href="./logic_reference.md#LC-SUBJECT-PICK" style="text-decoration: none; font-size: 10px; vertical-align: super;">[10]</a></div>
      <div style="background: white; padding: 6px 12px; border-radius: 6px; border: 1px solid #dcdcdc; font-size: 12px;">추가 주석 <a href="./logic_reference.md#LC-NOTE-DISPLAY" style="text-decoration: none; font-size: 10px; vertical-align: super;">[3]</a></div>
    </div>
  </div>

  <!-- 5. 결과 및 액션 -->
  <div style="background: #e8f5e9; padding: 20px; border-radius: 12px; border: 1px solid #c8e6c9; margin-bottom: 15px;">
    <div style="font-size: 11px; color: #2e7d32; font-weight: bold; margin-bottom: 8px;">번역 결과</div>
    <div style="font-size: 18px; font-weight: bold; color: #1b5e20;">Translated Text <a href="./logic_reference.md#LC-TRANSLATE" style="text-decoration: none; font-size: 11px; vertical-align: super;">[6]</a></div>
  </div>

  <div style="background: #1b5e20; color: white; padding: 15px; border-radius: 12px; text-align: center; font-weight: bold; box-shadow: 0 4px 10px rgba(27, 94, 32, 0.2); cursor: pointer;">
    데이터 저장 <a href="./logic_reference.md#LC-SAVE" style="text-decoration: none; color: white; font-size: 11px; vertical-align: super;">[8]</a>
  </div>

</div>

</div>

---

## 📋 상세 흐름 명세 (Detailed Flow)

### 1. 언어 설정 및 방향 전환
- **[A] 언어 선택**: 상단 드롭다운 또는 탭을 통해 학습의 주체(Source) 및 대상(Target) 언어를 설정합니다.
- **[B] 방향 스왑**: 중앙의 스왑(⇄) 아이콘을 클릭하여 현재 설정된 언어 방향을 즉시 반전시킵니다. <a href="./logic_reference.md#LC-SWAP-LANG">[LC-SWAP-LANG]</a>

### 2. 소스 데이터 입력 (Voice/Text)
- **[C] 음성 입력 (STT)**: 메인 마이크 아이콘을 길게 눌러 발화하면 하이퍼 인식 엔진이 텍스트로 변환하여 입력란에 자동 반영합니다. <a href="./logic_reference.md#LC-STT">[LC-STT]</a>
- **[D] 텍스트 입력**: 키보드 아이콘 또는 입력창을 통해 직접 텍스트를 입력합니다. 입력 시 DB 내 유사 데이터(주석 포함)가 하단에 자동 완성 리스트로 노출됩니다. <a href="./logic_reference.md#LC-INPUT">[LC-INPUT]</a>

### 3. 상세 속성 설정 (조건부 노출)
- **[E] 모드 토글**: 입력된 데이터가 '단어'인지 '문장'인지를 지정합니다. 홈 화면 설정에 따라 기본값이 결정됩니다. <a href="./logic_reference.md#LC-TOGGLE">[LC-TOGGLE]</a>
- **[F] 자료집 배정**: 번역 후 저장될 대상 자료집(Subject)을 선택하거나 새 자료집 이름을 입력합니다. <a href="./logic_reference.md#LC-SUBJECT-PICK">[LC-SUBJECT-PICK]</a>
- **[G] 문맥 주석(Note)**: 번역의 품질을 높이기 위해 "이 단어는 ~한 상황에서 쓰임"과 같은 추가 힌트를 입력합니다. <a href="./logic_reference.md#LC-NOTE-INPUT">[LC-NOTE-INPUT]</a>

### 4. AI 번역 및 결과 검토
- **[H] 번역 처리**: 텍스트가 확정되거나 입력이 완료되면 Gemini AI가 주석을 참조하여 최적의 번역 결과를 도출합니다. <a href="./logic_reference.md#LC-TRANSLATE">[LC-TRANSLATE]</a>
- **[I] 발음 듣기 (TTS)**: 결과 카드 상단의 스피커 아이콘을 통해 원어민 발음을 즉시 청취합니다. <a href="./logic_reference.md#LC-TTS">[LC-TTS]</a>

### 5. 최종 영구 저장
- **[J] 저장 실행**: 하단 저장 버튼 클릭 시 모든 메타데이터(품사, 어근, 주석 등)가 로컬 및 클라우드 DB에 동시 기록됩니다. <a href="./logic_reference.md#LC-SAVE">[LC-SAVE]</a>

---

## 🔗 참고 문서
- [로직 통합 명세 (Logic Reference)](./logic_reference.md)
- [상세 분류 흐름도 (Metadata Dialog Flow)](./app_flow_metadata.md)
- [전체 대시보드 (Dashboard)](../../system_flow_mindmap.md)

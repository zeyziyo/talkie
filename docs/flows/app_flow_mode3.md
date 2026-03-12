# 앱 흐름도: 말하기 연습 모드 (Mode 3 Flow)

> [!NOTE]
> 본 문서는 Mode 3(말하기 화면)의 UI 요소와 실제 코드 로직을 연결합니다. 번호가 달린 링크(예: `[1]`)를 클릭하면 별도로 분리된 **[로직 통합 명세(Logic Reference)](./logic_reference.md)**로 이동합니다.

<div style="background-color: #fce4ec; padding: 30px; border-radius: 16px; border: 1px solid #f8bbd0; font-family: sans-serif;">
<h2 style="color: #c2185b; margin-top: 0; display: flex; align-items: center;">
<span style="background: #c2185b; color: white; padding: 5px 12px; border-radius: 8px; margin-right: 12px;">3</span> 
Mode 3 (말하기 실전 연습)
</h2>

<!-- 공통 상단 앱바 (Home Screen) -->
<div style="background: #4a69bd; padding: 15px 20px; border-radius: 12px; margin-bottom: 25px; display: flex; align-items: center; color: white;">
<div style="background: rgba(255,255,255,0.2); padding: 5px; border-radius: 8px; display: flex;">
<span style="background: white; color: #4a69bd; padding: 5px 15px; border-radius: 6px; font-weight: bold; font-size: 13px;">단어 (Word)</span>
<span style="padding: 5px 15px; font-size: 13px;">문장 (Sentence)</span> <a href="./logic_reference.md#LC-TOGGLE" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[1]</a>
</div>

<div style="margin-left: 10px; cursor: pointer; background: rgba(0,0,0,0.2); padding: 5px; border-radius: 5px;" title="언어 스왑">
🔄 <a href="./logic_reference.md#LC-SWAP-LANG" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[2]</a>
</div>

<!-- Mode 2 & 3 전용 자료집 선택 -->
<div style="margin-left: auto; background: #fff9c4; color: #856404; padding: 6px 12px; border-radius: 20px; font-size: 13px; font-weight: bold; border: 1px solid #ffe082;">
📚 나의 문장집 (선택) ▼ <a href="./logic_reference.md#LC-SUBJECT-PICK" style="text-decoration: none; font-size: 11px; vertical-align: super; color: #856404;">[10]</a>
</div>
</div>

<!-- 스마트 검색바 -->
<div style="background: white; padding: 12px 16px; border-radius: 25px; border: 1px solid #f8bbd0; margin-bottom: 15px; display: flex; align-items: center; box-shadow: 0 1px 3px rgba(0,0,0,0.05);">
<span style="font-size: 18px; margin-right: 10px; color: #9e9e9e;">🔍</span>
<span style="color: #9e9e9e; font-style: italic; font-size: 14px;">연습할 문장 검색...</span> <a href="./logic_reference.md#LC-SEARCHBAR" style="text-decoration: none; font-size: 12px; vertical-align: super; margin-left: auto;">[15]</a>
</div>

<!-- 액션 라인 -->
<div style="display: flex; gap: 8px; margin-bottom: 20px; align-items: center; overflow-x: auto; padding-bottom: 5px;">
<div style="background: #f8f9fa; padding: 8px 12px; border-radius: 8px; border: 1px solid #dce1e9; font-size: 12px; font-weight: bold; color: #424242;">
🎛️ 검색 조건 (2) <a href="./logic_reference.md#LC-SEARCH-FILTER" style="text-decoration: none; font-size: 11px; vertical-align: super;">[16]</a>
</div>
<div style="background: #e8f5e9; padding: 8px 12px; border-radius: 8px; border: 1px solid #c8e6c9; font-size: 12px; color: #2e7d32; font-weight: bold;">
👁️ 외운 항목 보기 <a href="./logic_reference.md#LC-TOGGLE-MEMORIZED" style="text-decoration: none; font-size: 11px; vertical-align: super;">[17]</a>
</div>
</div>

<!-- 연습 카드 리스트 (Mode3PracticeCard) (4칸 이상의 들여쓰기를 전면 제거) -->
<div style="background: #fff0f5; padding: 15px; border-radius: 10px; border: 1px solid #f8bbd0; min-height: 300px;">

<!-- 비활성 상태 카드 (그라데이션 배경 적용) -->
<div style="background: linear-gradient(135deg, #667eea, #764ba2); padding: 20px; border-radius: 20px; margin-bottom: 16px; color: white; box-shadow: 0 6px 12px rgba(118, 75, 162, 0.4); border: 2px solid transparent;">
<div style="display: flex; justify-content: space-between; margin-bottom: 12px;">
<div style="display: flex; gap: 8px; align-items: center;">
<span style="background: rgba(255,255,255,0.24); padding: 2px 6px; border-radius: 4px; font-size: 10px; font-weight: bold; border: 1px solid rgba(255,255,255,0.3);">KO</span>
<span style="font-size: 12px; color: rgba(255,255,255,0.7); font-style: italic;">이력서/면접 태그</span>
</div>
<!-- 암기 완료 원형 체크박스 -->
<div style="width: 20px; height: 20px; border-radius: 10px; border: 1.5px solid white; display: flex; justify-content: center; align-items: center; background: white;">
<span style="font-size: 14px; color: #764ba2;">✔️</span> <a href="./logic_reference.md#LC-MARK-MEMORIZED" style="text-decoration: none; font-size: 11px; vertical-align: super; color: #764ba2;">[20]</a>
</div>
</div>

<!-- 원문 (항상 최상단은 본인의 모국어) -->
<div style="font-size: 24px; font-weight: bold; line-height: 1.4;">저는 이전에 3년간 개발자로 일했습니다.</div>
</div>

<!-- 활성 연습 상태 카드 (카드를 터치하여 확장했을 때) -->
<div style="background: linear-gradient(135deg, #667eea, #764ba2); border-radius: 20px; color: white; box-shadow: 0 6px 12px rgba(118, 75, 162, 0.4);">
<div style="padding: 20px;">
<div style="display: flex; gap: 8px; align-items: center; margin-bottom: 12px;">
<span style="background: rgba(255,255,255,0.24); padding: 2px 6px; border-radius: 4px; font-size: 10px; font-weight: bold; border: 1px solid rgba(255,255,255,0.3);">KO</span>
</div>
<!-- 상단 모국어 영역 -->
<div style="font-size: 24px; font-weight: bold; margin-bottom: 15px;">이것은 연필입니까?</div>
</div>

<div style="border-top: 1px solid rgba(255,255,255,0.1);"></div>

<!-- 하단 연습 제어 영역 (Idle 뷰 - 버튼 나열) -->
<div style="background: rgba(0,0,0,0.12); padding: 20px; border-radius: 0 0 20px 20px; text-align: center;">
<div style="display: flex; justify-content: center; align-items: center; gap: 20px; margin-bottom: 20px;">
<!-- Skip Button -->
<div style="background: rgba(255,255,255,0.24); width: 44px; height: 44px; border-radius: 22px; display: flex; align-items: center; justify-content: center; font-size: 18px;">⏭️</div>

<!-- 대형 마이크 버튼 -->
<div style="background: white; color: #764ba2; width: 76px; height: 76px; border-radius: 38px; display: flex; align-items: center; justify-content: center; font-size: 34px; box-shadow: 0 4px 12px rgba(0,0,0,0.3);">🎙️</div> <a href="./logic_reference.md#LC-PRACTICE-STT" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[21]</a>

<!-- TTS 듣기 버튼 -->
<div style="background: rgba(255,255,255,0.24); width: 44px; height: 44px; border-radius: 22px; display: flex; align-items: center; justify-content: center; font-size: 18px;">🔊</div> <a href="./logic_reference.md#LC-TTS" style="text-decoration: none; font-size: 11px; vertical-align: super; color: white;">[7]</a>

<!-- Reset Button -->
<div style="background: rgba(255,255,255,0.24); width: 44px; height: 44px; border-radius: 22px; display: flex; align-items: center; justify-content: center; font-size: 18px;">🔄</div>
</div>

<!-- 텍스트 힌트 제공 영역 -->
<div style="background: rgba(255,255,255,0.1); display: inline-block; padding: 6px 12px; border-radius: 8px; font-family: monospace; letter-spacing: 1.5px; border: 1px solid rgba(255,255,255,0.2);">
I _ _ _ _ _ _ _ _ _ _ _ (Hint)
</div>
</div>
</div>

<!-- 결과 화면 예시 (발음 평가 완료 후) -->
<div style="background: linear-gradient(135deg, #43e97b, #38f9d7); border-radius: 20px; margin-top: 20px; color: #1b5e20; box-shadow: 0 4px 15px rgba(67, 233, 123, 0.4);">
<div style="padding: 20px; text-align: center;">
<div style="font-size: 20px; font-weight: bold; margin-bottom: 5px;">Excellent! 🌟</div>
<div style="font-size: 16px; font-weight: bold; margin-bottom: 12px;">정확도: 98.5% <a href="./logic_reference.md#LC-JUDGE" style="text-decoration: none; font-size: 11px; vertical-align: super;">[23]</a></div>
<div style="background: white; padding: 12px; border-radius: 12px; margin-bottom: 15px; border: 1px solid rgba(0,0,0,0.05);">
<div style="font-size: 13px; color: #666; margin-bottom: 4px;">Target</div>
<div style="font-size: 18px; font-weight: bold;">I have been a developer.</div>
</div>
<div style="display: flex; gap: 10px;">
<div style="flex: 1; background: rgba(0,0,0,0.05); padding: 12px; border-radius: 10px; font-weight: bold;">다시 하기</div>
<div style="flex: 1; background: #1b5e20; color: white; padding: 12px; border-radius: 10px; font-weight: bold;">다음 ➔</div>
</div>
</div>
</div>


</div>
</div>

</div>

---

## 📋 상세 흐름 명세 (Detailed Flow)

### 1. 연습 자료 준비 및 필터링
- **[A] 자료집 및 검색**: 연습하고자 하는 학습 세트(단어/문장)를 선택하고, 스마트 검색바를 통해 연습할 특정 항목을 신속하게 찾습니다. <a href="./logic_reference.md#LC-SEARCHBAR">[15]</a>
- **[B] 조건 필터**: '외운 항목 보기' 토글 등을 활용하여 아직 숙달되지 않은 문장들로 연습 풀을 구성합니다. <a href="./logic_reference.md#LC-TOGGLE-MEMORIZED">[17]</a>

### 2. 연습 세션 활성화
- **[C] 카드 로딩**: 목록에서 카드를 선택하면 연습 모드가 활성화되며, 상단에 모국어(KO) 텍스트가 제시되고 하단에 학습어(EN) 힌트(언더바 등)가 표시됩니다.
- **[D] 원어민 발음 청취**: 연습 전 TTS 버튼을 통해 목표 문장의 정확한 발음을 청취하여 가이드를 얻습니다. <a href="./logic_reference.md#LC-TTS">[7]</a>

### 3. 실전 말하기 및 인식 (STT)
- **[E] 마이크 제어**: 대형 중앙 마이크 버튼을 클릭하여 음성 인식을 시작합니다. 인식 중에는 버튼이 애니메이션되며 사용자의 발음을 텍스트로 변환합니다. <a href="./logic_reference.md#LC-PRACTICE-STT">[21]</a>
- **[F] 인식 중지**: 발음이 완료되면 수동으로 마이크를 닫거나 시스템이 침묵을 감지하여 인식을 종료합니다. <a href="./logic_reference.md#LC-STOP-MIC">[22]</a>

### 4. 발음 정합성 평가 (Judge)
- **[G] AI 채점**: 인식된 텍스트와 실제 정답 텍스트를 AI가 비교 분석하여 정확도(%) 및 평가 등급(Excellent, Good 등)을 도출합니다. <a href="./logic_reference.md#LC-JUDGE">[23]</a>

### 5. 결과 검토 및 다음 단계
- **[H] 피드백 확인**: 본인이 발음한 내용과 정답의 차이를 시각적으로 확인합니다.
- **[I] 반복 연습**: 결과가 미흡할 경우 '다시 하기'를 눌러 즉시 재시도하거나, 성공 시 '다음' 버튼을 눌러 다음 문장으로 넘어갑니다.
- **[J] 암기 완료 처리**: 충분히 숙달되었다고 판단되면 카드의 체크박스를 눌러 완료 상태로 기록합니다. <a href="./logic_reference.md#LC-MARK-MEMORIZED">[20]</a>

---

## 🔗 참고 문서
- [로직 통합 명세 (Logic Reference)](./logic_reference.md)
- [메인 화면 흐름도 (App Flow Main)](./app_flow_main.md)
- [복습 화면 (App Flow Mode 2)](./app_flow_mode2.md)

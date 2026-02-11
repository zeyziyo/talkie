# 앱 흐름도: 로직 통합 명세 (Logic Reference)

본 문서는 '앱 흐름도'의 각 UI 요소[n]에서 연결되는 실제 코드 구현체(Dart) 정보를 통합 관리하는 마스터 명세서입니다.

---

## 🏗️ 핵심 로직 목록

<a id="LC-TOGGLE"></a>
### [1] 단어/문장 토글
- **파일**: `lib/screens/home_screen.dart`
- **로직**: `appState.setRecordTypeFilter('word' | 'sentence')` (in `app_state_settings.dart`)
- **설명**: 현재 입력/복습 모드가 단어 중심인지 문장 중심인지를 전환합니다.

<a id="LC-SWAP-LANG"></a>
### [2] 언어 전환
- **파일**: `lib/screens/home_screen.dart`
- **로직**: `appState.swapLanguages()`
- **설명**: 모국어(Source)와 학습어(Target) 설정을 서로 스왑합니다.

<a id="LC-NOTE-DISPLAY"></a>
### [3] 주석 표시 (Display)
- **파일**: `lib/widgets/mode1_widget.dart`
- **상태**: `appState.note`
- **설명**: 현재 입력 중인 항목에 주석이 설정되어 있을 경우, 입력창 상단에 시각적 알림을 표시합니다.

<a id="LC-INPUT"></a>
### [4] 소스 텍스트 입력
- **파일**: `lib/widgets/mode1_widget.dart` (EasyAutocomplete)
- **로직**: `appState.setSourceText(value)` (in `app_state_mode1.dart`)
- **설명**: 사용자의 텍스트 입력을 받아 전역 상태를 업데이트하고 DB 내 유사 데이터를 검색합니다.

<a id="LC-POS-SELECT"></a>
### [5] 품사(POS) 선택
- **파일**: `lib/widgets/mode1_widget.dart`
- **로직**: `appState.setSourcePos(value)` (in `app_state_mode1.dart`)
- **설명**: 단어 모드에서 데이터의 문법적 범주를 지정합니다.

<a id="LC-TRANSLATE"></a>
### [6] 번역 실행
- **파일**: `lib/providers/app_state_mode1.dart`
- **기능**: `translate({BuildContext? context})`
- **설명**: Gemini AI를 통해 문맥(주석 등)을 반영한 번역을 수행하며 어근을 자동 감지합니다. 
- **개선(Phase 86+):** 사용자가 이미 주석(`_note`)을 입력한 경우, AI가 동음이의어 후보를 반환하더라도 선택 팝업을 억제하고 즉시 번역 결과를 표시하여 입력 흐름을 최적화했습니다.

<a id="LC-TTS"></a>
### [7] 듣기 (TTS)
- **파일**: `lib/providers/app_state.dart`
- **기능**: `speak()`, `stopSpeaking()`
- **설명**: 기기의 TTS 엔진을 사용하여 번역 결과물을 음성으로 출력합니다.

<a id="LC-SAVE"></a>
### [8] 데이터 저장
- **파일**: `lib/providers/app_state_mode1.dart`
- **기능**: `saveTranslation({List<String>? tags})`
- **설명**: 입력된 모든 정보(텍스트, 태그, 어근 등)를 로컬 및 클라우드 DB에 동시 저장합니다.
- **Smart Sync (Phase 87+):** 저장 시 선택된 자료집 제목이 없으면 소스 문장의 파일명 등을 분석하여 기존 자료집에 자동으로 매칭하거나 중복을 방지하는 스마트 동기화 로직이 작동합니다.

<a id="LC-SUBJECT-NEW"></a>
### [9] 새 제목 입력
- **파일**: `lib/widgets/metadata_dialog.dart`
- **로직**: `appState.setSelectedSaveSubject(text)`
- **설명**: 사용자가 새로운 자료집 이름을 직접 입력하여 생성합니다.

<a id="LC-SUBJECT-PICK"></a>
### [10] 기존 제목 선택
- **파일**: `lib/widgets/metadata_dialog.dart`
- **로직**: `appState.setSelectedSaveSubject(value)`
- **설명**: 이미 존재하는 자료집 목록 중에서 저장할 위치를 선택합니다.

<a id="LC-TAGS"></a>
### [11] 일반 태그 관리
- **파일**: `lib/widgets/metadata_dialog.dart`
- **상태**: `MetadataDialog._currentTags` (Internal)
- **설명**: 해당 데이터에 부여할 임의의 해시태그 목록을 편집합니다.

<a id="LC-NOTE-INPUT"></a>
### [12] 주석 입력 (Input)
- **파일**: `lib/providers/app_state_mode1.dart`
- **로직**: `appState.setNote(value)`
- **설명**: 번역의 품질을 높이거나 의미를 명확히 하기 위한 문맥적 힌트를 입력합니다.

<a id="LC-ROOT"></a>
### [13] 어근 (Root)
- **파일**: `lib/providers/app_state_mode1.dart`
- **로직**: `appState.setSourceRoot(value)`
- **설명**: 단어의 원형 정보를 기록합니다. (AI 자동 감지 시 기본값 채워짐)

<a id="LC-GRAMMAR"></a>
### [14] 활용형/문법 정보
- **파일**: `lib/providers/app_state_mode1.dart`
- **로직**: `appState.setSourcePos()`, `appState.setSourceFormType()`
- **설명**: 품사나 문장 종류 등 구조화된 문법 메타데이터를 저장합니다.

# Talkie Core Design Strategy (핵심 설계 원칙)

본 문서는 Talkie 프로젝트의 핵심 설계 원칙과 아키텍처 결정을 기록하여, 에이전트의 작업 일관성을 유지하기 위해 작성되었습니다. 모든 작업 시 이 원칙을 최우선으로 준수해야 합니다.

## 1. Native Tag Strategy (현지어 태그 전략)
온라인 자료실(Online Library)에서 자료를 가져오거나 사용자가 직접 저장할 때, 각 자료의 제목은 해당 언어(Native)로 유지하면서 시스템적으로는 태그로 관리합니다.

- **원칙**: JSON의 `subject` 또는 저장 시 입력한 제목은 **아이템의 태그(Tag)**로 매핑됩니다.
- **강제화**: 제목이 비어있거나 'Basic'인 경우, 시스템은 현재 앱 언어에 맞는 지역화된 기본 제목(예: "나의 단어장", "My Wordbook")을 강제 부여하여 관리 체계의 누락을 방지합니다.
- **가시성**: 모든 개별 데이터는 반드시 하나 이상의 제목 태그를 가져야 하며, 이를 통해 Mode 2(복습)에서 즉시 자료집으로 노출됩니다.

## 2. Smart Sync & Data Integrity (데이터 무결성 및 동기화)
서로 다른 언어 버전의 자료를 연결하고, 클라우드와 로컬 간의 데이터 일관성을 유지합니다.

- **Sync Pivot**: 파일 이름(`fileName`)을 동기화 키로 사용하여 동일 자료의 언어별 버전을 `group_id`로 묶습니다.
- **Cloud Integrity**: Supabase 동기화 시 `type`(word/sentence)과 `tags` 정보를 명시적으로 포함하여 클라우드에서도 로컬과 동일한 분류 체계를 유지합니다.
- **Type Enforcement**: 임포트 시 `default_type` 속성을 엄격히 준수하여 `words`와 `sentences` 테이블에 정확히 분배 저장합니다.

## 3. UI/UX & Interaction Principles (UI/UX 설계 원칙)
일관된 인터페이스를 통해 학습 몰입도를 높입니다.

- **Search & Input**: 
    - Mode 1(검색)에서는 기존 저장된 데이터와의 중복 방지 및 빠른 재입력을 위해 **Autocomplete(자동 완성)**을 제공합니다.
    - 검색 및 필터링은 사용자의 **모국어(Source Language)**를 기준으로 수행하여 검색 결과의 직관성을 보장합니다.
- **Menu Centralization**: 모든 설정과 관리 도구(온라인 자료실, 언어 변경 등)는 AppBar 및 메뉴 시스템으로 통합하여 학습 화면의 복잡도를 낮춥니다.

## 4. Globalization & Fallback (국제화 및 예외 처리)
80개 언어 지원을 위한 견고한 국제화 전략을 유지합니다.

- **Full Localization**: 모든 UI 문자열 및 기본 데이터 명칭은 80개 언어의 `.arb` 파일에 등록되어야 하며, `tool/manage_l10n.dart`를 통해 일괄 관리합니다.
- **Smart Fallback**: 임포트 대상 JSON에 언어 정보(`source_language` 등)가 누락된 경우, 앱의 **현재 언어 설정**을 스마트하게 상속하여 사용자 경험의 단절을 막습니다.

## 5. Development Constraints (개발 제약 사항)
- **Local Priority**: 당분간 로컬 빌드는 수행하지 않으며, 코드의 논리적 무결성과 설계 일관성을 유지하는 데 집중합니다.
- **Zero Tolerance**: 프로젝트 규칙 상의 '불변의 강제 규칙'을 위반하지 않도록 매 작업 전 검토합니다.

---
최종 업데이트: 2026-02-10
작성자: Antigravity (Agent)
승인 여부: 사용자 지시 반영 및 최종 통합 완료

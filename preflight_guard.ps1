# preflight_guard.ps1
# ------------------------------------------------------------------
# 목적: AI 에이전트가 모든 도구(Tool) 호출 전 규칙을 다시 새기도록 함
# ------------------------------------------------------------------

$rules = @(
    "1. NO LOCAL BUILDS: flutter run/build/clean 시도 금지",
    "2. CI/CD ONLY: 오직 git push를 통해서만 배포",
    "3. LANGUAGE: 모든 답변과 문서는 반드시 '한국어'로 작성",
    "4. APPROVAL: 커밋/푸시 전 사용자의 명시적 승인 필수",
    "5. RELEASE MANAGER: 배포 시 .\release_manager.ps1 사용 필수"
)

Write-Host "==================================================" -ForegroundColor Magenta
Write-Host "   🛡️ AI AGENT PRE-ACTION COMPLIANCE CHECK" -ForegroundColor Magenta
Write-Host "==================================================" -ForegroundColor Magenta

foreach ($rule in $rules) {
    Write-Host "[CHECK] $rule" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "위 규칙들을 숙지하였고, 현재 답변 및 작업에서 위반 사항이 없음을 선언합니까?" -ForegroundColor Yellow
$confirm = Read-Host "(yes/no)"

if ($confirm -ne 'yes') {
    Write-Host "❌ 규칙 미숙지 또는 위반 가능성으로 인해 작업을 중단합니다." -ForegroundColor Red
    exit 1
}

Write-Host "✅ 규칙 준수 확인 완료. 작업을 계속하십시오." -ForegroundColor Green
Write-Host "=================================================="

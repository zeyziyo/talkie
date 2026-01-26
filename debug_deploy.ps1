# debug_deploy.ps1
$ErrorActionPreference = "Continue"
$npx = "C:\Program Files\nodejs\npx.cmd"

Start-Transcript -Path "deploy_log.txt" -Force

Write-Host "--- DEBUG DEPLOYMENT STARTED ---"
Write-Host "Timestamp: $(Get-Date)"
Write-Host "Current Directory: $(Get-Location)"

if (-not (Test-Path $npx)) {
    Write-Host "Error: npx not found at $npx"
}
else {
    Write-Host "Found npx at $npx"
}

# Check file existence
if (Test-Path "supabase/functions/translate-and-validate/index.ts") {
    Write-Host "Function file exists."
    Get-Content "supabase/functions/translate-and-validate/index.ts" -TotalCount 20 | Out-String | Write-Host
}
else {
    Write-Host "ERROR: Function file NOT FOUND!"
}

# Deploy
Write-Host "`nRunning Deployment..."
& $npx -y supabase functions deploy translate-and-validate --project-ref soxdzielqtabyradajle --no-verify-jwt --debug *>&1

Write-Host "--- DEBUG DEPLOYMENT FINISHED ---"
Stop-Transcript

Write-Host "`nDONE. Log saved to deploy_log.txt"
Write-Host "Press Enter to exit..."
Read-Host

# supabase_deploy.ps1
$npx = "C:\Program Files\nodejs\npx.cmd"
$ErrorActionPreference = "Stop"

Write-Host "--- SUPABASE DEPLOYMENT V2 ---" -ForegroundColor Cyan
Write-Host "Reason: Previous attempts failed due to missing Access Token." -ForegroundColor Yellow

if (-not (Test-Path $npx)) {
    Write-Host "Error: npx not found at $npx" -ForegroundColor Red
    exit
}

# 1. Explicit Login
Write-Host "`n[1/3] Authenticating..." -ForegroundColor Green
Write-Host "A browser window should open. Please log in to Supabase." -ForegroundColor Cyan
& $npx -y supabase login

# 2. Set Secrets
Write-Host "`n[2/3] Setting API Key..." -ForegroundColor Green
& $npx -y supabase secrets set GEMINI_API_KEY=AIzaSyCHZPInTBC4wdERw3SN94H0dKUQMpy5Nqg --project-ref soxdzielqtabyradajle

# 3. Deploy
Write-Host "`n[3/3] Deploying Function..." -ForegroundColor Green
& $npx -y supabase functions deploy translate-and-validate --project-ref soxdzielqtabyradajle --no-verify-jwt

Write-Host "`n---------------------------------------------------"
Write-Host "SUCCESS! Deployment Finished." -ForegroundColor Green
Write-Host "Press Enter to exit..."
Read-Host

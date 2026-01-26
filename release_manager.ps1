# release_manager.ps1
# ------------------------------------------------------------------
# PURPOSE: Automate the CI/CD release process.
# RULES: NO LOCAL BUILDS allowed. Only Git Push.
# ------------------------------------------------------------------

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "   🚀 TALKIE RELEASE MANAGER (CI/CD ONLY)" -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan

# ------------------------------------------------------------------
# RULE ENFORCEMENT CHECKS
# ------------------------------------------------------------------

# Rule 4: Language Requirement
Write-Host "🇰🇷 [RULE 4] CHECK: Are all explanations and documents in Korean?" -ForegroundColor Yellow

# Rule 5: Approval Protocol
Write-Host "🛡️ [RULE 5] CHECK: Have you received explicit USER APPROVAL for these changes?" -ForegroundColor Yellow
$approval = Read-Host "Type 'yes' to confirm and proceed "

if ($approval -ne 'yes') {
    Write-Host "❌ ABORTING: Approval is required before committing." -ForegroundColor Red
    exit 1
}

Write-Host "✅ Rules Verified. Proceeding..." -ForegroundColor Green
Write-Host ""

# 1. Check for uncommitted changes
$status = git status --porcelain
if ([string]::IsNullOrWhiteSpace($status)) {
    Write-Host "✅ No changes to commit. Everything is clean." -ForegroundColor Green
    exit
}

# 2. Add changes
Write-Host "📦 Staging all changes..."
git add .

# 3. Commit
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
$commitMsg = "chore: release update ($timestamp)"
Write-Host "📝 Committing with message: '$commitMsg'"
git commit -m "$commitMsg"

# 4. Push
Write-Host "⬆️  Pushing to GitHub (origin main)..."
git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅ SUCCESS! Code pushed to remote." -ForegroundColor Green
    Write-Host "--------------------------------------------------"
    Write-Host "👉 ACTION REQUIRED:" -ForegroundColor Yellow
    Write-Host "   1. Go to GitHub Actions (https://github.com/zeyziyo/talkie/actions)"
    Write-Host "   2. Wait for the 'Build' workflow to finish."
    Write-Host "   3. Download the new APK from Artifacts."
    Write-Host "   4. UNINSTALL the old app -> Install the NEW APK."
    Write-Host "--------------------------------------------------"
    Write-Host "❌ REMINDER: DO NOT run 'flutter run' or 'flutter build' locally." -ForegroundColor Red
} else {
    Write-Host "❌ Failed to push. Check git status." -ForegroundColor Red
}

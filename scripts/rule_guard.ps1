<#
.SYNOPSIS
    Antigravity Rule Guard Script
    Ensures that documentation is updated whenever code is modified.

.DESCRIPTION
    This script checks the current git status.
    If source code files (.dart, .yaml, .arb, .json) are modified,
    it enforces that key documentation files (history.md, task.md) are also modified.
    
    This is a HARD BLOCKER. If this script fails, the Agent is FORBIDDEN from requesting a commit.

.NOTES
    File Name      : rule_guard.ps1
    Author         : Antigravity
    Prerequisite   : Must be run from the project root.
#>

$ErrorActionPreference = "Stop"

# Define critical paths
$ProjectRoot = Get-Location
$HistoryFile = "history.md"
$TaskFileAlias = "task.md" # Checked via Artifact Metadata or File modification if local

Write-Host "🛡️  [RuleGuard] Verifying compliance with PROJECT_RULES..." -ForegroundColor Cyan

# 1. Get user modifications (Staged + Unstaged)
$gitStatus = git status --porcelain
if (-not $gitStatus) {
    Write-Host "✅  No changes detected. Safe." -ForegroundColor Green
    exit 0
}

# 2. Check for Code Changes
$codeExtensions = @(".dart", ".yaml", ".arb", ".json", ".gradle", ".xml", ".plist")
$isCodeModified = $false
foreach ($line in $gitStatus) {
    foreach ($ext in $codeExtensions) {
        if ($line.ToString().Trim().EndsWith($ext)) {
            $isCodeModified = $true
            break
        }
    }
    if ($isCodeModified) { break }
}

if (-not $isCodeModified) {
    Write-Host "ℹ️  Only non-code changes detected. Skipping strict docs check." -ForegroundColor Gray
    exit 0
}

Write-Host "⚠️  Code changes detected. Checking documentation..." -ForegroundColor Yellow

# 3. Check History File (Index OR Sub-files)
$isHistoryUpdated = $false
foreach ($line in $gitStatus) {
    if ($line.ToString().Contains($HistoryFile) -or $line.ToString().Contains("docs/history/")) {
        $isHistoryUpdated = $true
        break
    }
}

# 4. Result Validation
$failed = $false

if (-not $isHistoryUpdated) {
    Write-Host "❌  VIOLATION: 'history.md' was NOT updated." -ForegroundColor Red
    $failed = $true
} else {
    Write-Host "✅  'history.md' is updated." -ForegroundColor Green
}

# 5. Check L10n Consistency (Strict 80 Languages)
$arbFiles = git status --porcelain | Where-Object { $_ -match "\.arb$" }
if ($arbFiles) {
    Write-Host "🌐  ARB files detected. Checking for 80 language files..." -ForegroundColor Magenta
    
    # Get total ARB count in l10n folder
    $totalArbCount = (Get-ChildItem -Path "lib/l10n/*.arb").Count
    
    if ($totalArbCount -lt 80) {
        Write-Host "❌  VIOLATION: L10n incomplete. Found only $totalArbCount ARB files (Expected 80)." -ForegroundColor Red
        $failed = $true
    } else {
        Write-Host "✅  L10n Check Passed: $totalArbCount languages supported." -ForegroundColor Green
    }
}

if ($failed) {
    Write-Host "`n⛔  BLOCKING: You cannot proceed to commit without updating documentation." -ForegroundColor Red
    Write-Host "Action Required: Update history.md immediately."
    exit 1
}

Write-Host "`n✨  Rule Guard Passed. You may proceed." -ForegroundColor Green
exit 0

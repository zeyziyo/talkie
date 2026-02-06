# 학습 자료 병합 스크립트 (Merge Materials Tool)
# 사용법: .\merge_materials.ps1 -SourceDir "docs\materials\Korean" -TargetDir "docs\materials\English" -OutFile "merges\ko_en_merged.json"

param (
    [Parameter(Mandatory = $true)] [string]$SourceDir,
    [Parameter(Mandatory = $true)] [string]$TargetDir,
    [Parameter(Mandatory = $false)] [string]$OutFile = "merged_output.json"
)

$sourcePath = Resolve-Path $SourceDir;
$targetPath = Resolve-Path $TargetDir;
$sourceLang = Split-Path $sourcePath -Leaf;
$targetLang = Split-Path $targetPath -Leaf;

Write-Host "Merging structures for: $sourceLang (Source) + $targetLang (Target)..." -ForegroundColor Cyan;

$outputList = @();

# Find all JSON files in source directory
$sourceFiles = Get-ChildItem -Path $sourcePath -Filter *.json -Recurse;

foreach ($sFile in $sourceFiles) {
    $relative = $sFile.FullName.Substring($sourcePath.Path.Length + 1);
    $tFilePath = Join-Path $targetPath $relative;

    if (-not (Test-Path $tFilePath)) {
        Write-Warning "Target file not found for: $relative. Skipping.";
        continue;
    }

    $sJson = Get-Content $sFile.FullName -Raw | ConvertFrom-Json;
    $tJson = Get-Content $tFilePath -Raw | ConvertFrom-Json;

    $type = $sJson.default_type;
    $subject = $sJson.subject;
    
    $mergedRoot = [ordered]@{
        "default_type"    = $type;
        "subject"         = $subject;
        "source_language" = $sourceLang;
        "target_language" = $targetLang;
    };

    # Handle Participants (Dialogues)
    if ($sJson.participants) {
        $mergedRoot.Add("participants", $sJson.participants);
    }

    $mergedEntries = @();
    $maxCount = [Math]::Min($sJson.entries.Count, $tJson.entries.Count);

    for ($i = 0; $i -lt $maxCount; $i++) {
        $sE = $sJson.entries[$i];
        $tE = $tJson.entries[$i];

        $entry = [ordered]@{
            "source_text" = $sE.text;
            "target_text" = $tE.text;
        };

        # Inherit Metadata from Source Entry (linguistic context side)
        if ($sE.pos -and $sE.pos -ne "") { $entry.Add("pos", $sE.pos) }
        if ($sE.form_type -and $sE.form_type -ne "") { $entry.Add("form_type", $sE.form_type) }
        if ($sE.style -and $sE.style -ne "") { $entry.Add("style", $sE.style) }
        if ($sE.note -and $sE.note -ne "") { $entry.Add("note", $sE.note) }
        if ($sE.tags) { $entry.Add("tags", $sE.tags) }
        
        # Dialogue specifics
        if ($sE.speaker) { $entry.Add("speaker", $sE.speaker) }
        if ($sE.sequence_order) { $entry.Add("sequence_order", $sE.sequence_order) }

        $mergedEntries += $entry;
    }

    $mergedRoot.Add("entries", $mergedEntries);
    
    # Save individual merged file (preserving folder structure in name for now OR single big bundle)
    # The user asked for "applying these refinements across all 79 languages".
    # Usually, we want a merged file per category (nouns_1_ko_en.json).
    
    $outFileName = ($sFile.BaseName + "_" + $sourceLang.Substring(0, 2).ToLower() + "_" + $targetLang.Substring(0, 2).ToLower() + ".json");
    $finalOutDir = Join-Path $PSScriptRoot "..\docs\merges\$sourceLang";
    if (-not (Test-Path $finalOutDir)) { New-Item -ItemType Directory -Path $finalOutDir }
    
    $finalPath = Join-Path $finalOutDir $outFileName;
    $outputJson = $mergedRoot | ConvertTo-Json -Depth 10;
    [System.IO.File]::WriteAllText($finalPath, $outputJson, (New-Object System.Text.UTF8Encoding($false)));
    
    Write-Host "Saved: $finalPath" -ForegroundColor Green;
}

Write-Host "Merge completed successfully!" -ForegroundColor Yellow;

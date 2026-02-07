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

    # Merge Participants
    $participants = @();
    if ($sJson.participants -or $tJson.participants) {
        $sParts = if ($sJson.participants) { $sJson.participants } else { @() };
        $tParts = if ($tJson.participants) { $tJson.participants } else { @() };

        $maxPartCount = [Math]::Max($sParts.Count, $tParts.Count);
        for ($j = 0; $j -lt $maxPartCount; $j++) {
            $sp = if ($j -lt $sParts.Count) { $sParts[$j] } else { $null };
            $tp = if ($j -lt $tParts.Count) { $tParts[$j] } else { $null };

            $part = [ordered]@{
                "id"   = if ($sp.id) { $sp.id } elseif ($tp.id) { $tp.id } else { "p$($j+1)" };
                "name" = if ($sp.name) { $sp.name } else { $tp.name }; # Use source name as primary
            };
            
            # Cross-reference names if available
            if ($tp.name -and $sp.name -ne $tp.name) {
                $part.Add("name_target", $tp.name);
            }

            # Vital metadata for TTS/Accent
            $gender = if ($sp.gender) { $sp.gender } elseif ($tp.gender) { $tp.gender } else { "neutral" };
            $role = if ($sp.role) { $sp.role } elseif ($tp.role) { $tp.role } else { "user" };
            
            $part.Add("role", $role);
            $part.Add("gender", $gender);
            
            # Preserve language context (Source vs Target speaker)
            if ($sp.lang_code) { $part.Add("lang_code_source", $sp.lang_code) }
            if ($tp.lang_code) { $part.Add("lang_code_target", $tp.lang_code) }
            if (-not $sp.lang_code -and -not $tp.lang_code) {
                # Fallback based on role
                if ($role -eq "AI" -or $role -eq "assistant") {
                    $part.Add("lang_code", $targetLang);
                }
                else {
                    $part.Add("lang_code", $sourceLang);
                }
            }
            elseif ($sp.lang_code -eq $tp.lang_code) {
                $part.Add("lang_code", $sp.lang_code);
            }

            $participants += $part;
        }
        $mergedRoot.Add("participants", $participants);
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
        $speaker = if ($sE.speaker) { $sE.speaker } elseif ($tE.speaker) { $tE.speaker } else { $null };
        if ($speaker) { $entry.Add("speaker", $speaker) }
        if ($sE.sequence_order) { $entry.Add("sequence_order", $sE.sequence_order) }
        
        # Phase 75.9: Add type for consistency
        $entry.Add("type", (if ($sE.type) { $sE.type } else { "sentence" }));

        $mergedEntries += $entry;
    }

    # Structure Output based on Type
    # Structure Output based on Type
    $outputJson = ""
    if ($type -eq "dialogue") {
        # Individual serialization to avoid depth/array issues
        $messagesJson = $mergedEntries | ConvertTo-Json -Depth 20
        $personaName = if ($participants[1].name) { $participants[1].name } else { "AI" }
        $rootJson = $mergedRoot | ConvertTo-Json -Depth 20
        
        # Manually stitch the JSON to ensure dialogues is a proper array
        $rootTrimmed = $rootJson.Trim()
        if ($rootTrimmed.EndsWith("}")) {
            $rootPrefix = $rootTrimmed.Substring(0, $rootTrimmed.Length - 1)
            $outputJson = "$($rootPrefix),`n  `"dialogues`": [`n    {`n      `"title`": `"$($subject)`",`n      `"persona`": `"$($personaName)`",`n      `"messages`": $($messagesJson)`n    }`n  ]`n}"
        }
    }
    else {
        $entriesJson = $mergedEntries | ConvertTo-Json -Depth 20
        $rootJson = $mergedRoot | ConvertTo-Json -Depth 20
        $rootTrimmed = $rootJson.Trim()
        if ($rootTrimmed.EndsWith("}")) {
            $rootPrefix = $rootTrimmed.Substring(0, $rootTrimmed.Length - 1)
            $outputJson = "$($rootPrefix),`n  `"entries`": $($entriesJson)`n}"
        }
    }
    
    # Save individual merged file
    $outFileName = ($sFile.BaseName + "_" + $sourceLang.Substring(0, 2).ToLower() + "_" + $targetLang.Substring(0, 2).ToLower() + ".json");
    $finalOutDir = Join-Path $PSScriptRoot "..\docs\merges\$sourceLang";
    if (-not (Test-Path $finalOutDir)) { New-Item -ItemType Directory -Path $finalOutDir -Force }
    
    $finalPath = Join-Path $finalOutDir $outFileName;
    [System.IO.File]::WriteAllText($finalPath, $outputJson, (New-Object System.Text.UTF8Encoding($false)));
    
    Write-Host "Saved: $finalPath" -ForegroundColor Green;
}

Write-Host "Merge completed successfully!" -ForegroundColor Yellow;

# scripts/generate_materials_index.ps1
# Scan docs/materials/Korean and generate docs/materials_v3.json

$materialsRoot = "docs/materials"
$outputFile = "docs/materials_v3.json"
$categories = @("dialogues", "words", "sentences")

$materialsMap = @{} # Use a map to ensure unique IDs across languages

# Scan all language directories
$langDirs = Get-ChildItem -Path $materialsRoot -Directory
foreach ($langDir in $langDirs) {
    foreach ($category in $categories) {
        $path = Join-Path $langDir.FullName $category
        if (Test-Path $path) {
            $files = Get-ChildItem -Path $path -Filter "*.json"
            foreach ($file in $files) {
                $id = $file.BaseName
                if ($materialsMap.ContainsKey($id)) { continue }

                try {
                    # Explicitly use UTF8 encoding for reading
                    $content = Get-Content -Path $file.FullName -Raw -Encoding utf8 | ConvertFrom-Json
                    
                    $name = if ($content.subject) { $content.subject } else { $id }
                    $description = if ($content.description) { $content.description } else { "$category material: $id" }
                    
                    # Normalize category names for display
                    $displayCategory = switch ($category) {
                        "dialogues" { "Dialogue" }
                        "words" { "Words" }
                        "sentences" { "Sentences" }
                        default { $category }
                    }

                    $materialsMap[$id] = @{
                        id          = $id
                        name        = $name
                        description = $description
                        category    = $displayCategory
                        path        = "$category/$($file.Name)"
                    }
                    Write-Host "Found: [$displayCategory] $name (from $($langDir.Name))"
                }
                catch {
                    # Skip if parsing fails, will try other languages
                    # Write-Warning "Skipping $($file.FullName) due to parse error: $_"
                }
            }
        }
    }
}

$materials = $materialsMap.Values | Sort-Object { $_.category, $_.id }

$index = @{
    version    = "3.0"
    updated_at = (Get-Date -Format "yyyy-MM-dd")
    materials  = $materials
}

$index | ConvertTo-Json -Depth 10 | Out-File -FilePath $outputFile -Encoding utf8
Write-Host "`nSuccessfully generated $outputFile with $($materials.Count) materials."

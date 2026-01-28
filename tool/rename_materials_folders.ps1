$mapping = @{
    "af"    = "Afrikaans"
    "ar"    = "Arabic"
    "bn"    = "Bengali"
    "cs"    = "Czech"
    "da"    = "Danish"
    "de"    = "German"
    "el"    = "Greek"
    "en"    = "English"
    "es"    = "Spanish"
    "fa"    = "Persian"
    "fi"    = "Finnish"
    "fil"   = "Filipino"
    "fr"    = "French"
    "gu"    = "Gujarati"
    "he"    = "Hebrew"
    "hi"    = "Hindi"
    "hu"    = "Hungarian"
    "id"    = "Indonesian"
    "it"    = "Italian"
    "ja"    = "Japanese"
    "kn"    = "Kannada"
    "ko"    = "Korean"
    "ml"    = "Malayalam"
    "mr"    = "Marathi"
    "ms"    = "Malay"
    "nl"    = "Dutch"
    "no"    = "Norwegian"
    "pa"    = "Punjabi"
    "pl"    = "Polish"
    "pt"    = "Portuguese"
    "ro"    = "Romanian"
    "ru"    = "Russian"
    "sv"    = "Swedish"
    "sw"    = "Swahili"
    "ta"    = "Tamil"
    "te"    = "Telugu"
    "th"    = "Thai"
    "tr"    = "Turkish"
    "uk"    = "Ukrainian"
    "ur"    = "Urdu"
    "vi"    = "Vietnamese"
    "zh-CN" = "Chinese (Simplified)"
    "zh-TW" = "Chinese (Traditional)"
}

$baseDir = "c:\FlutterProjects\talkie\docs\materials"

foreach ($oldName in $mapping.Keys) {
    $oldPath = Join-Path $baseDir $oldName
    $newName = $mapping[$oldName]
    $newPath = Join-Path $baseDir $newName
    
    if (Test-Path $oldPath) {
        Write-Host "Renaming $oldName to $newName"
        Rename-Item -Path $oldPath -NewName $newName -ErrorAction SilentlyContinue
    }
}

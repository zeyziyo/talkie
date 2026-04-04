import os
import json
import re

def validate_l10n():
    l10n_dir = r"c:\FlutterProjects\talkie\lib\l10n"
    target_key = "noteGuidance"
    # Regex for Hangul: [ㄱ-ㅎ|ㅏ-ㅣ|가-힣]
    hangul_pattern = re.compile(r"[\u3131-\u318E\uAC00-\uD7A3]")
    
    files_with_errors = 0
    total_files = 0
    
    for filename in os.listdir(l10n_dir):
        if filename.startswith("app_") and filename.endswith(".arb"):
            total_files += 1
            file_path = os.path.join(l10n_dir, filename)
            errors = []
            
            try:
                with open(file_path, 'r', encoding='utf-8') as f:
                    content = f.read()
                    data = json.loads(content)
            except json.JSONDecodeError as e:
                errors.append(f"Invalid JSON: {e}")
                data = {}
            except Exception as e:
                errors.append(f"File Open Error: {e}")
                data = {}

            # 1. Missing Key Check
            if target_key not in data:
                errors.append(f"Missing key: {target_key}")
            
            # 2. Hangul Mix Check (except app_ko.arb)
            if filename != "app_ko.arb":
                # Check the value of target_key specifically first
                if target_key in data:
                    val = data[target_key]
                    if hangul_pattern.search(val):
                        errors.append(f"Hangul detected in '{target_key}': {val}")
                
                # Check the whole file for any accidental Hangul
                # We exclude this check for now to avoid false positives in metadata or other keys 
                # unless we want to be super strict. Let's be strict for v110.
                if hangul_pattern.search(content):
                    # Find where it is
                    matches = hangul_pattern.findall(content)
                    # errors.append(f"Hangul detected in file: {list(set(matches))}")
                    pass

            if errors:
                files_with_errors += 1
                print(f"[{filename}] Errors found:")
                for err in errors:
                    print(f"  - {err}")
    
    print("-" * 30)
    print(f"Total files scanned: {total_files}")
    print(f"Files with errors: {files_with_errors}")
    return files_with_errors == 0

if __name__ == "__main__":
    validate_l10n()

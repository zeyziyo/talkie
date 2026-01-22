import json
import os
import glob

# Missing keys with default English values
MISSING_KEYS = {
    "wordModeLabel": "Word Mode",
    "accuracy": "Accuracy",
    "basicDefault": "Basic (Default)",
    "basic": "Basic",
    "tutorialM1ToggleTitle": "Word/Sentence Mode",
    "tutorialM3WordsDesc": "Check this to practice only your saved words.",
    "enterTextHint": "Enter text to translate",
    "micButtonTooltip": "Start Listening"
}

def update_arb_files():
    arb_dir = 'lib/l10n'
    arb_files = glob.glob(os.path.join(arb_dir, 'app_*.arb'))
    
    print(f"Found {len(arb_files)} ARB files.")
    
    for file_path in arb_files:
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            modified = False
            for key, value in MISSING_KEYS.items():
                if key not in data:
                    data[key] = value
                    modified = True
                    print(f"[{os.path.basename(file_path)}] Added missing key: {key}")
            
            if modified:
                with open(file_path, 'w', encoding='utf-8') as f:
                    json.dump(data, f, indent=2, ensure_ascii=False)
                print(f"Saved {file_path}")
            else:
                print(f"[{os.path.basename(file_path)}] No changes needed.")
                
        except Exception as e:
            print(f"Error processing {file_path}: {e}")

if __name__ == "__main__":
    update_arb_files()

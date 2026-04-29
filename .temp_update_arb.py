import os
import json

arb_dir = 'lib/l10n'

keys_to_update = [
    'translationLimitMessage',
    'translationRefilled',
    'watchAdAndRefill',
    'errorLimitReached'
]

count = 0

for filename in os.listdir(arb_dir):
    if filename.endswith('.arb'):
        filepath = os.path.join(arb_dir, filename)
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
            
        try:
            data = json.loads(content)
            changed = False
            for key in keys_to_update:
                if key in data and isinstance(data[key], str):
                    original = data[key]
                    
                    # Standard digits
                    new_val = original.replace('5', '10')
                    # Burmese
                    new_val = new_val.replace('၅', '၁၀') 
                    # Devanagari (Hindi/Nepali/Marathi)
                    new_val = new_val.replace('५', '१०') 
                    # Eastern Arabic (Arabic, Persian, Urdu)
                    new_val = new_val.replace('۵', '۱۰') 
                    new_val = new_val.replace('٥', '١٠') 
                    
                    if new_val != original:
                        data[key] = new_val
                        changed = True
            if changed:
                with open(filepath, 'w', encoding='utf-8') as f:
                    json.dump(data, f, ensure_ascii=False, indent=2)
                print(f"Updated {filename}")
                count += 1
        except json.JSONDecodeError as e:
            print(f"Error parsing {filename}: {e}")

print(f"Total files updated: {count}")

import os, json

keys_to_update = ["helpMode1Details", "helpModeChatDetails"]
l10n_dir = 'lib/l10n'

for fl in os.listdir(l10n_dir):
    if not (fl.startswith('app_') and fl.endswith('.arb')): continue
    # Skip master files
    if fl in ('app_en.arb', 'app_ko.arb'): continue
    
    p = os.path.join(l10n_dir, fl)
    try:
        with open(p, 'r', encoding='utf-8') as f:
            data = json.load(f)
            
        changed = False
        for k in keys_to_update:
            if k in data:
                # Mark as TODO to force re-translation by manage_l10n.dart
                if "(TODO: Translate)" not in str(data[k]):
                    data[k] = str(data[k]) + " (TODO: Translate)"
                    changed = True
            
        if changed:
            with open(p, 'w', encoding='utf-8', newline='\n') as f:
                json.dump(data, f, ensure_ascii=False, indent=2)
                f.write('\n')
            print(f"Marked {fl}")
    except Exception as e:
        print(f"Error processing {fl}: {e}")

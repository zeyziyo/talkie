
import os
from PIL import Image

source_path = r"c:\FlutterProjects\talkie\docs\play_store\store_icon_512.png"
dest_path = r"c:\FlutterProjects\talkie\docs\play_store\store_icon_512.jpg"

try:
    with Image.open(source_path) as img:
        print(f"Original size: {img.size}")
        
        # Convert to RGB (removes alpha)
        rgb_img = img.convert('RGB')
        
        # Resize to 512x512 exactly
        final_img = rgb_img.resize((512, 512), Image.Resampling.LANCZOS)
        
        # Save as JPEG
        final_img.save(dest_path, "JPEG", quality=95)
        print(f"Successfully saved to {dest_path}")
        print(f"New size: {final_img.size}")

except Exception as e:
    print(f"Error: {e}")

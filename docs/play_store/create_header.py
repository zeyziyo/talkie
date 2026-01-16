
from PIL import Image

source_path = r"c:\FlutterProjects\talkie\docs\play_store\graphics\feature_graphic.png"
dest_path = r"c:\FlutterProjects\talkie\docs\play_store\header_image_4096.jpg"

try:
    # Open source
    img = Image.open(source_path).convert('RGB')
    
    # Target dimensions
    TARGET_WIDTH = 4096
    TARGET_HEIGHT = 2304
    
    # Get dominant background color from top-left pixel
    bg_color = img.getpixel((0, 0))
    print(f"Background Color: {bg_color}")
    
    # Create new canvas
    canvas = Image.new('RGB', (TARGET_WIDTH, TARGET_HEIGHT), bg_color)
    
    # Calculate center position
    x = (TARGET_WIDTH - img.width) // 2
    y = (TARGET_HEIGHT - img.height) // 2
    
    # Paste source image
    canvas.paste(img, (x, y))
    
    # Save
    canvas.save(dest_path, "JPEG", quality=90)
    print(f"Successfully saved created header image at: {dest_path}")

except Exception as e:
    print(f"Error: {e}")

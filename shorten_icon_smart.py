from PIL import Image
import os

def smart_shorten_pole(input_path, output_path):
    if not os.path.exists(input_path):
        print(f"Error: {input_path} not found.")
        return

    img = Image.open(input_path)
    width, height = img.size
    bg_color = img.getpixel((0, 0)) # Assuming top-left is background
    
    center_x = width // 2
    
    # Analyze the center vertical line to find the pole
    # We expect: Background -> Globe/Frame -> Pole -> Base -> Background (maybe) or Bottom
    
    # 1. Scan from bottom up to find Base and Pole
    # Base is wide white. Pole is narrow white.
    
    pole_start_y = -1 # Y coordinate where pole starts (from bottom, going up)
    pole_end_y = -1   # Y coordinate where pole ends (touches globe)
    
    # Helper to check if a row is part of the white object and get its width
    def get_white_width(y):
        if img.getpixel((center_x, y)) != (255, 255, 255) and img.getpixel((center_x, y))[:3] != (255, 255, 255):
            return 0 # Not white at center
        
        # Expand left and right to find width
        l, r = center_x, center_x
        while l > 0 and img.getpixel((l, y))[:3] == (255, 255, 255):
            l -= 1
        while r < width and img.getpixel((r, y))[:3] == (255, 255, 255):
            r += 1
        return r - l

    # Scan from bottom (1024) upwards
    # Find base first (wide)
    y = height - 1
    while y > 0:
        w = get_white_width(y)
        if w > 100: # Found base (arbitrary threshold, base should be wide)
            break
        y -= 1
        
    base_top_y = y
    # Move up until width becomes small (Pole)
    while base_top_y > 0:
        w = get_white_width(base_top_y)
        if w > 0 and w < 60: # Found pole transition (assuming pole width < 60px)
            break
        if w == 0: # Gap? Shouldn't happen if connected
            break 
        base_top_y -= 1
        
    pole_bottom = base_top_y
    
    # Continue up to find where pole ends (touches globe/frame)
    # Globe/Frame will be wider or different color. But Frame is usually white.
    # If frame is white and connects, it might be wider than pole or curve out.
    # Let's assume pole has constant width.
    
    y = pole_bottom
    pole_width = get_white_width(y)
    
    while y > 0:
        w = get_white_width(y)
        # If width increases significantly, we hit the frame/globe
        if w > pole_width + 10: 
            break
        # Or if we hit green (globe) - logic check: pixel color
        p = img.getpixel((center_x, y))
        # White is (255,255,255). 
        if p[:3] != (255, 255, 255): # Hit non-white (green globe interior?)
            break
        y -= 1
        
    pole_top = y + 1 # The last y that was still part of the pole
    
    print(f"Detected Pole Range: y={pole_top} to y={pole_bottom} (Height: {pole_bottom - pole_top}px)")
    
    if pole_bottom - pole_top < 10:
        print("Error: Could not detect a valid pole range.")
        return

    # Calculate removal amount (reduce by 50%)
    current_pole_height = pole_bottom - pole_top
    remove_amount = int(current_pole_height * 0.5)
    
    print(f"Removing {remove_amount}px from pole.")
    
    # Crop and Reconstruct
    # 1. Top part: Everything above the cut point.
    # We cut from the TOP of the pole to preserve the base connection? 
    # Or middle? Let's cut from the top of the pole (just below the frame) to keep base intact.
    # Actually, moving the top part DOWN is easier.
    
    cut_y = pole_top # We will remove pixels starting from here downwards
    
    # Top image: 0 to cut_y
    img_top = img.crop((0, 0, width, cut_y))
    
    # Bottom image: cut_y + remove_amount to height
    img_bottom = img.crop((0, cut_y + remove_amount, width, height))
    
    final_img = Image.new("RGB", (width, height), bg_color)
    
    # Paste top (shifted down by remove_amount/2 to center? No, shift top down to meet bottom?)
    # Wait, we want to shorten the object. The total height of content decreases.
    # To keep the icon centered, we should move everything towards the center of the canvas.
    # Or just drop the top part down to meet the bottom part.
    # Let's drop the top part down.
    
    # Paste bottom at original relative position (shifted up?)
    # Let's keep bottom anchor fixed for now, or center later.
    # If we remove height, the total icon shrinks.
    # Let's shift top DOWN to meet the new pole top.
    
    # Position logic:
    # 1. Paste img_bottom at (0, cut_y + remove_amount) - wait this is original pos.
    # We want new pos to be higher?
    # Simple logic: Remove the gap.
    # Paste top at (0, remove_amount) -> Moves top DOWN.
    # Paste bottom at (0, cut_y + remove_amount) -> Keeps bottom fixed.
    # Result: Top moves down, gap closed. 
    # But this moves the globe down. Is that okay? Yes.
    
    final_img.paste(img_top, (0, remove_amount))
    final_img.paste(img_bottom, (0, cut_y + remove_amount))
    
    # Ideally we re-center the whole content vertically, but moving globe down is good (was requested).
    
    final_img.save(output_path)
    print(f"Success: Saved to {output_path}")

if __name__ == "__main__":
    smart_shorten_pole("assets/icon1.png", "assets/icon.png")

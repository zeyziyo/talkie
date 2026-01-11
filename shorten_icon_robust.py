from PIL import Image
import os

def robust_shorten_pole(input_path, output_path):
    if not os.path.exists(input_path):
        print(f"Error: {input_path} not found.")
        return

    img = Image.open(input_path)
    width, height = img.size
    center_x = width // 2
    
    # 1. Start from bottom, find the first white pixel (Base bottom)
    y = height - 1
    while y > 0:
        p = img.getpixel((center_x, y))
        # Check for white (or near white)
        if p[0] > 240 and p[1] > 240 and p[2] > 240:
            break
        y -= 1
    
    if y == 0:
        print("Error: No white pixels found at center column.")
        return

    base_bottom_y = y
    print(f"Base bottom found at y={base_bottom_y}")

    # 2. Move up to find where Base ends (Base top) - width check not needed if we check color continuity
    # Actually Base is connected to Pole.
    # So we need width check to distinguish Base (wide) from Pole (narrow).
    
    def get_row_white_width(check_y):
        l, r = center_x, center_x
        # Go left
        while l > 0:
            pix = img.getpixel((l, check_y))
            if pix[0] < 240: break
            l -= 1
        # Go right
        while r < width:
            pix = img.getpixel((r, check_y))
            if pix[0] < 240: break
            r += 1
        return r - l

    # Scan up from base_bottom_y to find transition from Wide to Narrow
    y = base_bottom_y
    pole_start_y = -1
    
    # Base is typically > 100px wide. Pole is < 60px.
    while y > 0:
        w = get_row_white_width(y)
        if w < 80 and w > 0: # Found the pole! (Narrower than base)
            pole_start_y = y
            break
        if w == 0: # Gap (should not happen if connected)
            print(f"Gap found at y={y}")
            break
        y -= 1
        
    if pole_start_y == -1:
        print("Could not distinguish pole from base. Using backup coordinates.")
        # Backup strategy based on typical icon layout
        pole_start_y = 880
        pole_end_y = 820
    else:
        print(f"Pole starts (base top) at y={pole_start_y}")
        
        # 3. Find where pole ends (touches Globe/Frame)
        # Scan up until width increases again or color checks fail
        # Frame/Globe is usually wider than the pole.
        
        pole_width = get_row_white_width(pole_start_y)
        y = pole_start_y
        while y > 0:
            w = get_row_white_width(y)
            # Tolerance for anti-aliasing: +5px
            if w > pole_width + 10: 
                print(f"Width increased at y={y} (w={w}, pole_w={pole_width}). Pole ended.")
                break
            if w == 0:
                break
            y -= 1
        pole_end_y = y + 1

    print(f"Pole Range: {pole_end_y} to {pole_start_y} (Height: {pole_start_y - pole_end_y}px)")
    
    pole_height = pole_start_y - pole_end_y
    if pole_height < 10:
        print("Pole height too small. Adjusting range manually.")
        pole_height = 60 # Assume ~60px
        pole_end_y = pole_start_y - pole_height
        
    remove_amount = int(pole_height * 0.5) # Remove 50%
    print(f"Removing {remove_amount}px")
    
    # Operation: Reduce pole height
    # Top part (Globe+Frame): 0 to pole_end_y
    # Bottom part (Base+Part of Pole): pole_end_y + remove_amount to height
    # wait... we cut from the top of the pole.
    
    top_img = img.crop((0, 0, width, pole_end_y))
    bottom_img = img.crop((0, pole_end_y + remove_amount, width, height))
    
    final_img = Image.new("RGB", (width, height), img.getpixel((0,0)))
    
    # Paste top shifted DOWN to close the gap
    final_img.paste(top_img, (0, remove_amount))
    
    # Paste bottom at original pos (effectively joining them)
    final_img.paste(bottom_img, (0, pole_end_y + remove_amount))
    
    final_img.save(output_path)
    print(f"Saved to {output_path}")

if __name__ == "__main__":
    robust_shorten_pole("assets/icon1.png", "assets/icon.png")

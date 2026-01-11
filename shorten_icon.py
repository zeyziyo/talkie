from PIL import Image
import os

def shorten_pole(input_path, output_path):
    if not os.path.exists(input_path):
        print(f"Error: {input_path} not found.")
        return

    img = Image.open(input_path)
    width, height = img.size
    bg_color = img.getpixel((0, 0))
    
    # 영역 정의 (1024x1024 기준)
    # 상단부 (지구본): y=0 ~ 820
    # 기둥: 820 ~ 880 (약 60px)
    # 하단부 (받침대): 880 ~ 1024
    
    # "절반으로 줄여" -> 30px 제거
    remove_height = 30
    split_y = 820
    
    # 1. 상단 (지구본) 복사
    top_img = img.crop((0, 0, width, split_y))
    
    # 2. 하단 (받침대 포함) 복사 - 기둥 중간부터 잘라서 가져옴
    bottom_img = img.crop((0, split_y + remove_height, width, height))
    
    final_img = Image.new("RGB", (width, height), bg_color)
    
    # 전체적인 수직 중앙 정렬을 위해 약간 조정
    offset = remove_height // 2
    
    # 상단 붙이기 (약간 아래로)
    final_img.paste(top_img, (0, offset))
    
    # 하단 붙이기 (위로 당겨서 합침)
    final_img.paste(bottom_img, (0, split_y + offset))
    
    final_img.save(output_path)
    print(f"Success: Created {output_path} from {input_path} with pole shortened by {remove_height}px")

if __name__ == "__main__":
    shorten_pole("assets/icon1.png", "assets/icon.png")

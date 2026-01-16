
from PIL import Image
import numpy as np

path = r"c:\FlutterProjects\talkie\docs\play_store\graphics\feature_graphic.png"

try:
    img = Image.open(path)
    print(f"Size: {img.size}")
    
    # Check average color of edges to see if we can extend it
    img_np = np.array(img)
    if img_np.shape[2] == 4: # RGBA
        img_np = img_np[:, :, :3] # Ignore alpha for avg
        
    top_edge = np.mean(img_np[0, :, :], axis=0)
    print(f"Top Edge Avg Color: {top_edge}")
    
except Exception as e:
    print(e)

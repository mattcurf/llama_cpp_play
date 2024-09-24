source /project/_init.sh
source /project/_download_assets.sh

/llama.cpp/build/bin/llama-minicpmv-cli -m /models/ggml-model-Q4_K_M.gguf --mmproj /models/mmproj-model-f16.gguf -c 4096 --temp 0.7 --top-p 0.8 --top-k 100 --repeat-penalty 1.05 --image /models/image.jpg -ngl 999 -sm layer -p "Describe in detail what is observed from this image and why it might be occuring."

source /project/_init.sh
source /project/_download_models.sh

# https://github.com/ggerganov/llama.cpp/blob/master/examples/llama-bench/README.md
/llama.cpp/build/bin/llama-bench \
  -m /models/Meta-Llama-3.1-8B-Instruct.Q2_K.gguf  \
  -m /models/Meta-Llama-3.1-8B-Instruct.Q3_K_M.gguf  \
  -m /models/Meta-Llama-3.1-8B-Instruct.Q4_K_M.gguf  \
  -m /models/Meta-Llama-3.1-8B-Instruct.Q8_0.gguf  \
  -p 0 -n 128,256,512 -sm layer

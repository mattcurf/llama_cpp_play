source /project/_init.sh
source /project/_download_assets.sh

#_model=Meta-Llama-3.1-8B-Instruct.f16.gguf
#_model=Meta-Llama-3.1-8B-Instruct.Q8_0.gguf
_model=Meta-Llama-3.1-8B-Instruct.Q4_K_M.gguf
#_model=Meta-Llama-3.1-8B-Instruct.Q3_K_M.gguf
#_model=Meta-Llama-3.1-8B-Instruct.Q2_K.gguf

/llama.cpp/build/bin/llama-server -m /models/$_model -ngl 999 --host $HOST  -c 1024 -n 1024 -sm layer

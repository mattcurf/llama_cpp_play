huggingface-cli login --token=$HUGGINGFACE_TOKEN


# MiniCPM-v2.6
if ! [ -f "/models/ggml-model-Q4_K_M.gguf" ]; then
  huggingface-cli download openbmb/MiniCPM-V-2_6-gguf ggml-model-Q4_K_M.gguf --local-dir /models
fi

if ! [ -f "/models/mmproj-model-f16.gguf" ]; then
  huggingface-cli download openbmb/MiniCPM-V-2_6-gguf mmproj-model-f16.gguf --local-dir /models
fi

if ! [ -f "/models/image.jpg" ]; then
  wget -O /models/image.jpg https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/United_Airlines_aircraft_taking_off_at_Schiphol_Airport.jpg/1024px-United_Airlines_aircraft_taking_off_at_Schiphol_Airport.jpg
fi

# Llama 3.1
if ! [ -f "/models/Meta-Llama-3.1-8B-Instruct.Q2_K.gguf" ]; then
  huggingface-cli download mradermacher/Meta-Llama-3.1-8B-Instruct-GGUF Meta-Llama-3.1-8B-Instruct.Q2_K.gguf --local-dir /models
fi

if ! [ -f "/models/Meta-Llama-3.1-8B-Instruct.Q3_K_M.gguf" ]; then
  huggingface-cli download mradermacher/Meta-Llama-3.1-8B-Instruct-GGUF Meta-Llama-3.1-8B-Instruct.Q3_K_M.gguf --local-dir /models
fi

if ! [ -f "/models/Meta-Llama-3.1-8B-Instruct.Q4_K_M.gguf" ]; then
  huggingface-cli download mradermacher/Meta-Llama-3.1-8B-Instruct-GGUF Meta-Llama-3.1-8B-Instruct.Q4_K_M.gguf --local-dir /models
fi

if ! [ -f "/models/Meta-Llama-3.1-8B-Instruct.Q8_0.gguf" ]; then
  huggingface-cli download mradermacher/Meta-Llama-3.1-8B-Instruct-GGUF Meta-Llama-3.1-8B-Instruct.Q8_0.gguf --local-dir /models
fi

#if ! [ -f "/models/Meta-Llama-3.1-8B-Instruct.f16.gguf" ]; then
#  huggingface-cli download mradermacher/Meta-Llama-3.1-8B-Instruct-GGUF Meta-Llama-3.1-8B-Instruct.f16.gguf  --local-dir /models
#fi

# Phi 3
#if ! [ -f "/models/Phi-3-mini-4k-instruct.Q8_0.gguf" ]; then
#  huggingface-cli download QuantFactory/Phi-3-mini-4k-instruct-GGUF Phi-3-mini-4k-instruct.Q8_0.gguf --local-dir /models
#fi

#if ! [ -f "/models/Phi-3-mini-4k-instruct-fp16.gguf" ]; then
#  huggingface-cli download QuantFactory/Phi-3-mini-4k-instruct-GGUF Phi-3-mini-4k-instruct-fp16.gguf --local-dir /models
#fi



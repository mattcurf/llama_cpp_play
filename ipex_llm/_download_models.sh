huggingface-cli login --token=$HUGGINGFACE_TOKEN

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

#if ! [ -f "/models/Phi-3-mini-4k-instruct.Q8_0.gguf" ]; then
#  huggingface-cli download QuantFactory/Phi-3-mini-4k-instruct-GGUF Phi-3-mini-4k-instruct.Q8_0.gguf --local-dir /models
#fi

#if ! [ -f "/models/Phi-3-mini-4k-instruct-fp16.gguf" ]; then
#  huggingface-cli download QuantFactory/Phi-3-mini-4k-instruct-GGUF Phi-3-mini-4k-instruct-fp16.gguf --local-dir /models
#fi



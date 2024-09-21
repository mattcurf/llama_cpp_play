source /usr/share/lib/init_workspace.sh
cd /llama.cpp/build/bin
huggingface-cli download QuantFactory/Phi-3-mini-4k-instruct-GGUF Phi-3-mini-4k-instruct.Q8_0.gguf --local-dir models
./llama-server -m ./models/Phi-3-mini-4k-instruct.Q8_0.gguf -ngl 999 -c 4096 -n 2048 -e --host $HOST

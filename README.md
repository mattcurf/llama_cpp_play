# llama_cpp_play 

This repo demonstrates the setup of all required Intel GPU user-space drivers for use with llama.cpp accelerated on Intel(R) ARC A770 Discrete GPU. It showcases two versions: the upstream llama.cpp with SYCL backend and the forked version optimized as part of ipex-llm

## Prerequisite
* Ubuntu 24.04 with kernel 6.8.0-36-generic (for Intel GPU kernel driver support) or newer
* Installed Docker (for Linux)
* Intel ARC series GPU (tested with Intel ARC A770 16GB
* A huggingface token with permissions to download Meta Llama 3.1 models

## Huggingface token configuration

First, follow the instructions for obtaining your Huggingface token at https://huggingface.co/docs/hub/en/security-tokens.  The token should be set as a local environment variable HUGGINGFACE_TOKEN or set in your ~/.bashrc file
```
export HUGGINGFACE_TOKEN=<your token>
```

Second, apply for access for Meta models following the instructions at https://huggingface.co/meta-llama/Meta-Llama-3.1-8B-Instruct/discussions/47.  When you have confirmed access, you can them run the examples below.

## Docker configuration

These samples utilize containers to fully encapsulate the example with minimial host dependencies.  Here are the instructions how to install docker:

```
$ sudo apt-get update
$ sudo apt-get install ca-certificates curl
$ sudo install -m 0755 -d /etc/apt/keyrings
$ sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
$ sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Enable docker access as user
sudo groupadd docker
sudo usermod -aG docker $USER
```

## Usage

For each of the 'llama_cpp_upstream_sycl' and 'ipex-llm' subdirectories, first build the container by typing:
```
$ cd ipex-llm
$ ./build
```

To run the llm benchmark type:
```
$ cd ipex-llm
$ ./bench
```

To run the multi-modal image example type: 
```
$ cd ipex-llm
$ ./describe_image
```

To run the web-based chatbot type: 
```
$ cd ipex-llm
$ ./run
```
Then connect to the web server hosting the chatbot at <ip_address_of_host>:8080

## References
* https://github.com/ggerganov/llama.cpp
* https://github.com/intel-analytics/ipex-llm

## Notes
* Kernel 6.8.0-38-generic and later may cause a ARC GPU hang. See https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2072755. Use Kernel 6.8.0-36-generic or older

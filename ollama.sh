#!/usr/bin/env bash

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

if [ -x /usr/local/bin/ollama ]; then
  echo -e "${YELLOW}Ollama already installed at /usr/local/bin/ollama, skipping.${NC}"
  exit 0
fi

echo -e "${GREEN}Installing Ollama...${NC}"
curl -fsSL https://ollama.com/install.sh | sh
echo -e "${GREEN}Ollama installed successfully.${NC}"

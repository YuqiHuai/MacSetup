#!/usr/bin/env bash

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

if [ -x $HOME/.local/bin/uv ]; then
  echo -e "${YELLOW}uv already installed at /usr/local/bin/uv, skipping.${NC}"
  exit 0
fi

echo -e "${GREEN}Installing uv...${NC}"
curl -LsSf https://astral.sh/uv/install.sh | sh
echo -e "${GREEN}uv installed successfully.${NC}"

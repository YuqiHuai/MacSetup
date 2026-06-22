#!/usr/bin/env bash

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

if brew list nvm &>/dev/null; then
  echo -e "${YELLOW}nvm already installed, skipping.${NC}"
else
  echo -e "${GREEN}Installing nvm...${NC}"
  brew install nvm
  echo -e "${GREEN}nvm installed successfully.${NC}"
fi

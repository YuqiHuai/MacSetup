#!/usr/bin/env bash

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

if brew list --cask font-hack-nerd-font &>/dev/null; then
  echo -e "${YELLOW}Hack Nerd Font already installed, skipping.${NC}"
else
  echo -e "${GREEN}Installing Hack Nerd Font...${NC}"
  brew install --cask font-hack-nerd-font
  echo -e "${GREEN}Hack Nerd Font installed successfully.${NC}"
fi

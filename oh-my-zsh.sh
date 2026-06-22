#!/usr/bin/env bash

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

if [ -d "$HOME/.oh-my-zsh" ]; then
  echo -e "${YELLOW}Oh My Zsh already installed at $HOME/.oh-my-zsh, skipping.${NC}"
  exit 0
fi

echo -e "${GREEN}Installing Oh My Zsh...${NC}"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo -e "${GREEN}Oh My Zsh installed successfully.${NC}"

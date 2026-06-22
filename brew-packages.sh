#!/usr/bin/env bash

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

formulae=(neovim nvm zellij 1password-cli)
casks=(hyper font-hack-nerd-font)

for package in "${formulae[@]}"; do
  if brew list "$package" &>/dev/null; then
    echo -e "${YELLOW}${package} already installed, skipping.${NC}"
  else
    echo -e "${GREEN}Installing ${package}...${NC}"
    brew install "$package"
    echo -e "${GREEN}${package} installed successfully.${NC}"
  fi
done

for package in "${casks[@]}"; do
  if brew list --cask "$package" &>/dev/null; then
    echo -e "${YELLOW}${package} already installed, skipping.${NC}"
  else
    echo -e "${GREEN}Installing ${package}...${NC}"
    brew install --cask "$package"
    echo -e "${GREEN}${package} installed successfully.${NC}"
  fi
done


GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

FORCE=false

while getopts "f" opt; do
  case "$opt" in
    f) FORCE=true ;;
  esac
done

if [ -d ~/.config/nvim ] && [ "$FORCE" = false ]; then
  echo -e "${YELLOW}LazyVim already installed (~/.config/nvim exists), skipping.${NC}"
  exit 0
fi

echo -e "${GREEN}Setting up LazyVim...${NC}"

for dir in ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim; do
  if [ -d "$dir" ]; then
    if [ "$FORCE" = true ]; then
      echo -e "${GREEN}Removing $dir${NC}"
      rm -rf "$dir"
    else
      echo -e "${GREEN}Backing up $dir to ${dir}.bak${NC}"
      mv "$dir" "${dir}.bak"
    fi
  fi
done

echo -e "${GREEN}Cloning LazyVim starter...${NC}"
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

echo -e "${GREEN}LazyVim installed successfully.${NC}"

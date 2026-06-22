
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

if command -v brew &>/dev/null; then
  echo -e "${YELLOW}Homebrew already installed, skipping.${NC}"
else
  echo -e "${GREEN}Installing Homebrew...${NC}"
  /bin/bash -c "$(curl mer-fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo -e "${GREEN}Homebrew installed successfully.${NC}"
fi

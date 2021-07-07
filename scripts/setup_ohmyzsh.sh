#!/usr/bin/env bash

# stop script if any command fails
set -e

CURRENT_DIR="$(readlink -f "${BASH_SOURCE%/*}")"
source "${CURRENT_DIR}/colors.sh"

echo "${BOLD}${ORANGE} Install Oh My Zsh framework...${NC}"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "${BOLD}${ORANGE} Start using personal config...${NC}"
NEW_ZSHRC="${CURRENT_DIR}/../.zshrc"
OLD_ZSHRC=~/.zshrc

if [ -f "${OLD_ZSHRC}" ]; then
    echo "Backup existed .zshrc file..."
    mv "${OLD_ZSHRC}" "${OLD_ZSHRC}.backup"
fi

echo "Creation a symlink for \"${OLD_ZSHRC}\""
ln -s "${NEW_ZSHRC}" "${OLD_ZSHRC}"

echo "${BOLD}${ORANGE} Install [font=fonts-powerline] for theme...${NC}"
sudo apt-get install fonts-powerline

echo "${BOLD}${ORANGE} Load plugins...${NC}"
git clone https://github.com/zdharma/history-search-multi-word.git ~/.oh-my-zsh/custom/plugins/history-search-multi-word
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zdharma/fast-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting

echo "${BOLD}${ORANGE} OK! ${NC} Please reopen terminal"

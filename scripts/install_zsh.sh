#!/usr/bin/env bash

# stop script if any command fails
set -e

CURRENT_DIR="$(readlink -f "${BASH_SOURCE%/*}")"
source "${CURRENT_DIR}/colors.sh"

echo "${BOLD}${ORANGE} Make apt update...${NC}"
sudo apt update

echo "${BOLD}${ORANGE} Install zsh & make it as default shell...${NC}"

sudo apt install -y zsh
chsh -s "$(which zsh)"

echo "${BOLD}${ORANGE} Friendly reminder: ${NC} To use \"zsh\" as the default shell, you need to re-login"
echo " Then try these commands: "echo \$SHELL"; "\$SHELL --version""

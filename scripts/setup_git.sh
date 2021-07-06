#!/usr/bin/env bash

# stop script if any command fails
set -e

CURRENT_DIR="$(readlink -f "${BASH_SOURCE%/*}")"
source "${CURRENT_DIR}/colors.sh"

NAME="Alena Bartosh"
EMAIL="alena.mathematics@gmail.com"

setup_git() {
  git config --global user.name "${NAME}"
  git config --global user.email "${EMAIL}"
}

setup_git
echo "${BOLD}${ORANGE} Setup [name=${NAME}][email=${EMAIL}] for git ${NC} - OK!"

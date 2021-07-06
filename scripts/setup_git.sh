#!/usr/bin/env bash

NAME="Alena Bartosh"
EMAIL="alena.mathematics@gmail.com"

export TERM=xterm-256color

BOLD=$(tput bold)
ORANGE=$(tput setaf 3)
NC=$(tput sgr0)

setup_git() {
  git config --global user.name "${NAME}"
  git config --global user.email "${EMAIL}"
}

setup_git
echo "${BOLD}${ORANGE} Setup [name=${NAME}][email=${EMAIL}] for git ${NC} - OK!"

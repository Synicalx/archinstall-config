#!/bin/bash

# This script will (try) and setup some useful stuff

# First we want yay to help us with AUR
# This assumes we have base-devel and obviously git installed
if ! command -v yay &> /dev/null; then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
fi

# Setup ZSH with OMZ
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
    sh install.sh
    rm install.sh
    sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="amuse"/' ~/.zshrc
    source ~/.zshrc
fi

#!/usr/bin/env bash

# ZSH-AUTOSUGGESTIONS
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

# POWERLEVEL9K THEME
git clone https://github.com/bhilburn/powerlevel9k.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k"

# POWERLEVEL10K THEME
git clone https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k"

# ZSH-SYNTAX-HIGHLIGHTING
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/Apps/zsh-syntax-highlighting"
git clone https://github.com/zdharma/fast-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting"

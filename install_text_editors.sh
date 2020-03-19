#!/usr/bin/env bash

# SUBLIME TEXT KEY AND REPO
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
yay -Syyuu --devel

yay -S --noconfirm sublime-text
yay -S --noconfirm texmaker
yay -S --noconfirm visual-studio-code-bin

## SUBLIME TEXT: BUFFERSCROLL PACKAGE (Remember, restore and sync scroll, bookmarks, marks, folds and cursors)
git clone "https://github.com/titoBouzout/BufferScroll.git" "$HOME/.config/sublime-text-3/Packages/BufferScroll"

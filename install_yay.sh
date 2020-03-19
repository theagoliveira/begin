#!/usr/bin/env bash

cd "$HOME/git" || exit
git clone https://aur.archlinux.org/yay.git
cd "yay" || exit
makepkg -si

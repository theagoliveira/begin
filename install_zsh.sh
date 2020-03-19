#!/usr/bin/env bash

yay -S --noconfirm powerline # Statusline plugin for vim, and provides statuslines and prompts for several other applications, including zsh, bash, tmux, IPython, Awesome, i3 and Qtile
yay -S --noconfirm zsh       # A very advanced and programmable command interpreter (shell) for UNIX

# OH-MY-ZSH!
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

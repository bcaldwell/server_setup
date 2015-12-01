#!/bin/sh\

sh zsh.sh

sudo apt-get update && sudo apt-get install -y build-essential curl vim tmux git

if [ ! -f ~/.dotfiles ]; then
    git clone https://github.com/benjamincaldwell/.dotfiles "${ZDOTDIR:-$HOME}/.dotfiles"
fi

cd ~/.dotfiles/git
make all

cd ~/.dotfiles/vim
make all

cd ~/.dotfiles/tmux
make all

sh zsh.sh

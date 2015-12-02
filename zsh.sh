#!/bin/sh\

sudo apt-get update && sudo apt-get install -y build-essential curl vim git zsh

if [ ! -f ~/.dotfiles ]; then
    git clone https://github.com/benjamincaldwell/.dotfiles "${ZDOTDIR:-$HOME}/.dotfiles"
fi

cd "${ZDOTDIR:-$HOME}/.dotfiles/zsh"

make all



source ~/.zprofile
source ~/.zshrc

#chsh -s /bin/zsh
sudo chsh -s $(which zsh) $(whoami)

echo "SUCCESS!!!!"

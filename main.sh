#!/bin/sh\

my_dir="$(dirname "$0")"

"$my_dir/installer.sh"

sudo yum groupinstall -y Development Tools
sudo apt-get install -y build-essential

installer -y update && installer -y upgrade && installer install -y build-essential curl vim git

if [ ! -f ~/.dotfiles ]; then
    git clone https://github.com/benjamincaldwell/.dotfiles "${ZDOTDIR:-$HOME}/.dotfiles"
fi

(cd ~/.dotfiles/git && make all)

(cd ~/.dotfiles/vim && make all)

sh tmux.sh

sh zsh.sh

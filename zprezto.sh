#!/bin/sh\

git clone --recursive https://github.com/benjamincaldwell/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
#chsh -s /bin/zsh
sudo chsh -s $(which zsh) $(whoami)

echo "SUCCESS!!!!"
source ~/.zprofile
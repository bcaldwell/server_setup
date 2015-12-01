#!/bin/sh\

download() {
    if which curl > /dev/null; then
        curl -s $@
    else
        wget -qO- $@
    fi
}

download https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

. ~/.nvm/nvm.sh

nvm install 0.12
nvm install 4
nvm install stable
nvm alias default 4

#!/bin/sh\
sudo apt-get update && sudo apt-get install -y curl vim git zsh
echo Installing zprezto
if [ ! -f zprezto.sh ]; then
    wget -O zprezto.sh "https://benjaoud.xyz/public.php?service=files&t=4974d218c1479800bd94f1d2e50a07aa&download"
fi

zsh zprezto.sh
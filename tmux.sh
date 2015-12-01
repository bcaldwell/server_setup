sudo apt-get install -y software-properties-common python-software-properties

sudo add-apt-repository ppa:pi-rho/dev

sudo apt-get update

sudo apt-get install -y tmux tmux-next

cd ~/.dotfiles/tmux

make

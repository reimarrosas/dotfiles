#!/bin/sh

sudo apt update && sudo apt upgrade

sudo apt install stow libfuse2 curl

git clone --recurse-submodules https://github.com/reimarrosas/dotfiles

cd dotfiles

/bin/sh ~/.local/share/scripts/nvim-setup.sh

stow --adopt .

git restore .

source ~/.bashrc

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash && 

nvm install --lts


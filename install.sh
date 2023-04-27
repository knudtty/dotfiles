#!/bin/bash

backup () {
    if [ -d $1 ] || [ -f $1 ]; then
        mv $1 $1.backup;
        echo "moved existing "$1" to "$1".backup";
    fi
    rm -rf $PATH;
}

# neovim
backup ~/.config/nvim
mkdir -p ~/.config
ln -sf $(pwd)/init.lua ~/.config/nvim
rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# tmux
backup ~/.tmux.conf
ln -sf $(pwd)/.tmux.conf ~/.tmux.conf


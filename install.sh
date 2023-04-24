#!/bin/sh

if [[ -d ~/.config/nvim ]]; then
    mv ~/.config/nvim ~/.config/nvim.backup
    echo "moved existing nvim config to ~/.config/nvim.backup"
fi
ln -sf $(pwd)/init.lua ~/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

ln -sf .tmux.conf ~/.tmux.conf

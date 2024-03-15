#!/bin/bash

# Clone Vundle.vim
git clone --recursive https://github.com/VundleVim/Vundle.vim ./.vim/bundle/Vundle.vim

# Use Gvim to install GVim plugins using Vundle.vim
vim +PluginInstall +qall

# Delete self.
rm -rf 'GvimConfigure.sh'
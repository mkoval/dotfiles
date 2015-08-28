#!/bin/bash
set -o

cd "${HOME}"
mkdir -p .vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim
vim -c PluginInstall

sudo apt-get install build-essential cmake
sudo apt-get install python-dev

cd .vim/bundle/YouCompleteMe
./install.py --clang-completer

#!/bin/bash
set -o

sudo apt-get install build-essential cmake git
sudo apt-get install python-dev

cd "${HOME}"
mkdir -p .vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim
vim -c PluginInstall

cd .vim/bundle/YouCompleteMe
./install.py --clang-completer

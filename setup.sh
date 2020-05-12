#!/bin/bash
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim/colors ~/.vim
#!/bin/sh
ln -fnsv ~/dotfiles/.vimrc ~/.vimrc
# ln -fnsv ~/dotfiles/.vim/colors ~/.vim/colors
ln -fnsv ~/dotfiles/.zshrc ~/.zshrc
ln -fnsv ~/dotfiles/.zshenv ~/.zshenv
ln -fnsv ~/dotfiles/.tmux.conf ~/.tmux.conf

ln -fnsv ~/dotfiles/.vimrc ~/.vim/init.vim
ln -fnsv ~/dotfiles/.vimrc ~/.config/nvim/init.vim
ln -fnsv ~/dotfiles/.vim ~/.config/nvim

if [ "$(uname)" = "Darwin" ]; then
	ln -fnsv /usr/local/opt/zplug ~/.zplug
fi

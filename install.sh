#!/bin/sh

#Todo: should be rewrite to easy-to-install
dir=`pwd`

if [ ! -f ~/.zsh ]; then
	echo "install .zsh"
	ln -s ${dir}/_zsh ~/.zsh
fi

if [ ! -f ~/.zshrc ]; then
	echo "install .zshrc"
	ln -s ${dir}/_zshrc ~/.zshrc
fi

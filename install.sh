#!/usr/bin/env bash

dotfiles_dir=$(dirname $(readlink -f $0))

for i in $dotfiles_dir/_*; do
	filename=$(basename $i | sed -e 's/^_/./g')
	[[ -e ~/$filename ]] && echo "~/$filename exists, moved to ~/$filename.old" && mv ~/$filename ~/$filename.old
	[[ ! -e ~/$filename ]] && echo "~/$filename linked" && ln -s $i ~/$filename
done

#!/bin/sh
echo "Adding settings"
ln -sfn ~/repos/dotfiles/vim/.vimrc ~/

mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/doc

ln -sfn ~/repos/dotfiles/vim/molokai/colors/molokai.vim ~/.vim/colors

ln -sfn ~/repos/dotfiles/vim/vim-monokai-pro/colors/monokai_pro.vim ~/.vim/colors

ln -sfn ~/repos/dotfiles/vim/sonokai/autoload/sonokai.vim ~/.vim/autoload
ln -sfn ~/repos/dotfiles/vim/sonokai/colors/sonokai.vim ~/.vim/colors
ln -sfn ~/repos/dotfiles/vim/sonokai/doc/sonokai.txt ~/.vim/doc

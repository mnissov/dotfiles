#!/bin/sh
read -p "Do you want to install vim? [Y/n]: " answer
## Set the default value if no answer was given
answer=${answer:Y}
## If the answer matches y or Y, install
if [[ $answer =~ [Yy] ]]
then
	if lsb_release -is | grep -qi "EndeavourOS"
	then
		sudo pacman -S vim
	fi
	if lsb_release -is | egrep -qi "Ubuntu|Pop"
	then
		sudo apt-get install vim
	fi
fi

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

#!/bin/sh
echo "Installing fonts"
mkdir -p ~/.fonts
cp ~/repos/dotfiles/zsh/fonts/* ~/.fonts/
fc-cache -f -v >> /dev/null

echo "Installing zsh, plugins, and updating .zshrc and .p10k.zsh"
if lsb_release -is | grep -qi "EndeavourOS" ; then
	sudo pacman -S zsh zsh-syntax-highlighting
fi
if lsb_release -is | egrep -qi "Ubuntu|Pop" ; then
	sudo apt-get install zsh zsh-syntax-highlighting
fi
ln -sfn ~/repos/dotfiles/zsh/.zshrc ~/
ln -sfn ~/repos/dotfiles/zsh/.p10k.zsh ~/

echo "Settings as default shell"
chsh -s $(which zsh)

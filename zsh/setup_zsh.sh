#!/bin/sh
echo "Installing zsh and plugins"
if lsb_release -is | grep -qi "EndeavourOS" ; then
	sudo pacman -S zsh zsh-syntax-highlighting
fi
if lsb_release -is | egrep -qi "Ubuntu|Pop" ; then
	sudo apt-get install zsh zsh-syntax-highlighting
fi
mkdir -p ~/.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions

echo "Installing fonts"
mkdir -p ~/.fonts
cp ~/repos/dotfiles/zsh/fonts/* ~/.fonts/
fc-cache -f -v >> /dev/null

echo "Updating .zshrc and .p10k.zsh"
ln -sfn ~/repos/dotfiles/zsh/.zshrc ~/
ln -sfn ~/repos/dotfiles/zsh/.p10k.zsh ~/.zsh/

echo "Settings as default shell"
sudo chsh -s $(which zsh)

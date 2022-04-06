#!/bin/sh
echo "Installing fonts"
mkdir -p ~/.fonts
cp ~/repos/dotfiles/zsh/fonts/* ~/.fonts/
fc-cache -f -v >> /dev/null

echo "Installing zsh and updating .zshrc and .p10k.zsh"
sudo apt-get install zsh
ln -sfn ~/repos/dotfiles/zsh/.zshrc ~/
ln -sfn ~/repos/dotfiles/zsh/.p10k.zsh ~/

echo "Settings as default shell"
chsh -s $(which zsh)

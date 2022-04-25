echo "Installing terminator"
if lsb_release -is | grep -qi "EndeavourOS" ; then
	sudo pacman -S terminator
fi
if lsb_release -is | egrep -qi "Ubuntu|Pop" ; then
	sudo apt-get install terminator
fi

echo "Setting config"
mkdir -p ~/.config/terminator
ln -sfn ~/repos/dotfiles/terminator/config ~/.config/terminator

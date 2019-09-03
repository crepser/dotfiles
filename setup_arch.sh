#! /bin/bash

# install zsh

if sudo pacman -Qi zsh > /dev/null ; then 
	# install oh-my-zsh
	echo "Zsh is already installed"
else
	sudo pacman -S --noconfirm zsh
	sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
#set theme
sed -i -E 's/ZSH_THEME=".+"/ZSH_THEME="pygmalion"/' ~/.zshrc

# launch dotfile install
/bin/bash install

#!/bin/sh

# check root permissions
if [[ $UID != 0 ]]; then
    echo "Please start the script as root or sudo!"
    exit 1
fi

apt-get update -y && apt-get upgrade -y
apt-get install -y sudo zsh git pwgen colordiff tree

git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
homeshick clone https://github.com/tarjoilija/zgen.git
homeshick clone https://github.com:georg94/dotfiles.git

homeshick refresh -q -b 1

chsh -s /bin/zsh


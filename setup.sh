#!/bin/bash

git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
homeshick clone https://github.com/tarjoilija/zgen.git
homeshick clone https://github.com/georg94/dotfiles.git

homeshick refresh -q -b 1

chsh -s /bin/zsh


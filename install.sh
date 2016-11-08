#!/bin/bash

# check root permissions
if [[ $UID != 0 ]]; then
    echo "Please start the script as root or sudo!"
    exit 1
fi

apt-get update -y && apt-get upgrade -y
apt-get install -y sudo zsh git pwgen colordiff tree

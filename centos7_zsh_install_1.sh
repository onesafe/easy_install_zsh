#!/bin/bash

rm -rf ~/.zshrc
yum -y install zsh
yum -y install git

# install oh my zsh
echo "-----------------------------------------install oh my zsh--------------------------------------------"
rm -rf ~/.oh-my-zsh
bash -c "$(cat install.sh)"

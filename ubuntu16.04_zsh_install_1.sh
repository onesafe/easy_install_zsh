#!/bin/bash

rm -rf ~/.zshrc
apt-get -y install zsh
apt-get -y install git

# install oh my zsh
echo "------------------------------intall oh my zsh--------------------------------"
rm -rf ~/.oh-my-zsh
bash -c "$(cat install.sh)"


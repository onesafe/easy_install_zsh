#!/bin/bash

rm -rf ~/.zshrc
yum -y install zsh
yum -y install git

# install oh my zsh
rm -rf ~/.oh-my-zsh
bash -c "$(cat install.sh)"

# install some zsh tools
ZSH_CUSTOM=~/.oh-my-zsh/custom
rm -rf $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
cp -r zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
echo "source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

rm -rf $ZSH_CUSTOM/plugins/zsh-autosuggestions
cp -r zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
sed -i 's/plugins=(git/plugins=(git zsh-autosuggestions/g' ~/.zshrc

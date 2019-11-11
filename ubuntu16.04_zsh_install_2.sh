#!/bin/bash


# install some zsh tools
echo "--------------------------------install zsh syntax highlighting-----------------------------------"
ZSH_CUSTOM=~/.oh-my-zsh/custom
rm -rf $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
cp -r zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
echo "source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

echo "--------------------------------install zsh autosuggestions-----------------------------------"
rm -rf $ZSH_CUSTOM/plugins/zsh-autosuggestions
cp -r zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
sed -i 's/plugins=(git/plugins=(git zsh-autosuggestions/g' ~/.zshrc

#!/bin/zsh

DEFAULT_USER='likai'
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
CASE_SENSITIVE="false"
plugins=(osx git git-flow github gitignore brew ruby gem rails rake bundler cake npm composer laravel phpunit vagrant)

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

source $HOME/.initrc
source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"

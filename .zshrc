#!/bin/zsh

DEFAULT_USER='likai'
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
CASE_SENSITIVE="false"
plugins=(git osx github svn brew themes composer laravel)

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

source $HOME/.initrc
source $ZSH/oh-my-zsh.sh

#!/bin/zsh

DEFAULT_USER='likai'
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
CASE_SENSITIVE="false"
plugins=(osx git git-flow gitignore brew ruby gem rails rake bundler cake npm composer laravel phpunit vagrant rbenv rsync)

source $HOME/.initrc
source $ZSH/oh-my-zsh.sh

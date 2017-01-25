#!/bin/zsh

DEFAULT_USER='likai'
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
CASE_SENSITIVE="false"
plugins=(
  osx brew tmux gnu-utils rsync pass
  vagrant docker
  git git-flow gitignore
  ruby rbenv gem rails rake bundler powder
  composer laravel phpunit
  node npm nvm
)

source $HOME/.initrc
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

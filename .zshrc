DEFAULT_USER='likai'
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
plugins=(git osx github svn brew themes)
source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export PATH=$HOME/.bin/:$PATH

[ -f "$HOME/.aliases" ] && source $HOME/.aliases

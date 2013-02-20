DEFAULT_USER='likai'
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
plugins=(git osx github svn brew themes)
source $ZSH/oh-my-zsh.sh

[ -f "$HOME/.initrc" ] && source $HOME/.initrc

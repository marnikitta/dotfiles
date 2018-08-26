export DISABLE_AUTO_UPDATE="true"
export ZSH=~/.oh-my-zsh
export ZSH_THEME="random"

plugins=(git terraform ansible)

source $ZSH/oh-my-zsh.sh
source ~/.bash_profile

unsetopt autopushd
unsetopt auto_pushd
unsetopt pushd_ignore_dups
unsetopt pushdminus

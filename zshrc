export DISABLE_AUTO_UPDATE="true"
export ZSH=${HOME}/.oh-my-zsh
export ZSH_THEME="bira"

plugins=(git)

source $ZSH/oh-my-zsh.sh

for item in $HOME/.{aliases,exports,functions}; do
  [ -f "$item" ] && \
  source "$item"
done
unset item

alpinist=~/Projects/pets/alpinist/functions.sh
[ -f "$alpinist" ] && source "$alpinist"
unset alpinist

compdef g=git


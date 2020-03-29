# exports

export VISUAL=vim
export EDITOR="$VISUAL"
export LANG=en_US.UTF-8

export WIKI_BASE=~/wiki
export TOOLS_JAR=~/Projects/alpinist/tool/target/alpinist-tool-1.0-SNAPSHOT.jar

add_to_path() {
    [[ -d "$*" ]] && PATH="$*:$PATH"
}

add_to_path $HOME/bin
add_to_path $HOME/.bin
add_to_path /opt/bin
add_to_path /usr/local/bin
add_to_path /usr/local/sbin
add_to_path /usr/local/anaconda3/bin
add_to_path /opt/anaconda3/bin

export PATH

# alpinist

alpinist=~/Projects/alpinist/functions.sh
[ -f "$alpinist" ] && source "$alpinist"
unset alpinist

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias mv='mv -i'
alias cp='cp -i'

alias ra="ranger"
alias o="nautilus"

alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"

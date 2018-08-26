# exports

[[ -z "$TMPDIR" ]] && export TMP_DIR=/var/tmp
export VISUAL=vim
export EDITOR="$VISUAL"
export LANG=en_US.UTF-8
export WIKI_BASE=~/wiki
export TOOLS_JAR=~/Projects/pets/alpinist/tool/target/alpinist-tool-1.0-SNAPSHOT.jar

add_to_path() {
    [[ -d "$*" ]] && PATH="$*:$PATH"
}

add_to_path $HOME/bin
add_to_path $HOME/.bin
add_to_path /opt/bin
add_to_path /usr/local/bin
add_to_path /usr/local/sbin
add_to_path /usr/local/anaconda3/bin

export PATH

# alpinist

alpinist=~/Projects/pets/alpinist/functions.sh
[ -f "$alpinist" ] && source "$alpinist"
unset alpinist

# functions

decrypt() {
  [[ -e $1 ]] && cat $1 | openssl aes-256-cbc -md md5 | tar -xz || echo 'No such file'
}

encrypt() {
  [[ -e $1 ]] && tar -cz $1 | openssl aes-256-cbc > $2 || echo 'No such file'
}

jdk-configure() {
  bash ./configure --disable-warnings-as-errors --with-extra-cxxflags='-Wno-error -std=gnu++98 -fno-delete-null-pointer-checks -fno-lifetime-dse -fpermissive' --with-extra-cflags='-Wno-error -std=gnu++98 -fno-delete-null-pointer-checks -fno-lifetime-dse' --with-debug-level=slowdebug 
}

jdk-make() {
  make WARNINGS_ARE_ERRORS="-Wno-error" CFLAGS_WARNINGS_ARE_ERRORS="-Wno-error" all
}

colors_demo() {
  # This program is free software. It comes without any warranty, to
  # the extent permitted by applicable law. You can redistribute it
  # and/or modify it under the terms of the Do What The Fuck You Want
  # To Public License, Version 2, as published by Sam Hocevar. See
  # http://sam.zoy.org/wtfpl/COPYING for more details.
 
  for fgbg in 38 48 ; do # Foreground / Background
      for color in {0..255} ; do # Colors
          # Display the color
          printf "\e[${fgbg};5;%sm  %3s  \e[0m" $color $color
          # Display 6 colors per lines
          if [[ $((($color + 1) % 6)) == 4 ]] ; then
              echo # New line
          fi
      done
      echo # New line
  done
}

# aliases

alias ls="ls --color=auto"
alias dir="dir --color=auto"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias mv='mv -i'
alias cp='cp -i'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias ra="ranger"
alias o="nautilus"
alias zv="vim ~/.vimrc"
alias zp="vim ~/.profile"
alias fuck="fc -lnr | head -n1 | xargs sudo"
alias se="sudoedit"

alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"

alias json="python -m json.tool"

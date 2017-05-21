for item in $HOME/.{aliases,exports,functions}; do
  [ -f "$item" ] && source "$item"
done
unset item

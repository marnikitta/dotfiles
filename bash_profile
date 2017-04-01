for item in $HOME/.{aliases,exports}; do
  [ -f "$item" ] && source "$item"
done
unset item

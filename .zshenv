ZDOTDIR="$HOME/.config/zsh"

# vim:ft=zsh

# bun completions
[ -s "/home/jeresc/.bun/_bun" ] && source "/home/jeresc/.bun/_bun"

eval "$(fnm env --use-on-cd --shell zsh)"

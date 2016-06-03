# Jruby
export JRUBY_OPTS='--dev'

# Other
alias cdd='cd $HOME/Dropbox/Development'

# Dircolors for termite
[ "$TERM" = "xterm-termite" ] && eval $(dircolors $HOME/.dircolors)

# Use nvim
alias vim='nvim'

# Tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"
[ -f "/usr/share/nvm/init-nvm.sh" ] && source /usr/share/nvm/init-nvm.sh

# FZF
export FZF_DEFAULT_COMMAND='ag -g ""'

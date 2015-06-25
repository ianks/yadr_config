platform=$(uname)

if [[ $platform == 'Darwin' ]]; then
  export DOCKER_HOST=tcp://192.168.59.103:2376
  export DOCKER_CERT_PATH=/Users/ianks/.boot2docker/certs/boot2docker-vm
  export DOCKER_TLS_VERIFY=1
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

if [[ $platform == 'Linux' ]]; then
  # sudo
  alias sudo='sudo'
  alias nsudo='nocorrect sudo'

  # Host
  export HOST='0.0.0.0'
fi

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
if which nodenv > /dev/null; then
  eval "$(nodenv init -)"
fi

# Jruby
export JRUBY_OPTS='--dev'

# Other
alias cdd='cd $HOME/Dropbox/Development'

[ "$TERM" = "xterm-termite" ] && eval $(dircolors $HOME/.dircolors)

alias vim='nvim'

if hash gdate 2>/dev/null; then
  nvm use 0.10.38 > /dev/null
fi

export NVIM_TUI_ENABLE_TRUE_COLOR=1

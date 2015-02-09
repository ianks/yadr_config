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

  # Echo urls instead of using browser
  export BROWSER='echo'

  # Tmuxifier
  export PATH="$HOME/.tmuxifier/bin:$PATH"
  eval "$(tmuxifier init -)"

  # Host
  export HOST='0.0.0.0'
fi

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
if which pyenv > /dev/null; then
  export PYENV_ROOT="$HOME/.pyenv"
  eval "$(pyenv init -)"
fi

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
if which nodenv > /dev/null; then
  eval "$(nodenv init -)"
fi

# rmtrash
alias rm='rmtrash'
alias rmdir='rmdirtrash'

# Jruby
export JRUBY_OPTS='--dev'

# Other
alias cdd='cd $HOME/Dropbox/Development'

# tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"

platform=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi

if [[ $platform == 'darwin' ]]; then
  export DOCKER_HOST=tcp://192.168.59.103:2376
  export DOCKER_CERT_PATH=/Users/ianks/.boot2docker/certs/boot2docker-vm
  export DOCKER_TLS_VERIFY=1
fi

if [[ $platform == 'linux' ]]; then
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

alias cdd='cd $HOME/Dropbox/Development'

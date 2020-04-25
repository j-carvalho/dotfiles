# User configuration
export PATH="/usr/local/opt/postgresql@9.6/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$GOPATH/bin:/Users/josecarvalho/.dotnet/tools:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.0.1.jdk/Contents/Home/

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"
SPACESHIP_BATTERY_SHOW=false

DISABLE_AUTO_UPDATE="true"

COMPLETION_WAITING_DOTS="true"

plugins=(
  docker
  sublime
  brew
  bower
  nvm
  go
  heroku
  colorize
  vundle
  gitignore
  redis-cli
  node
  npm
  git
  osx
  vagrant
  docker
  tmux
  docker-machine
  docker-compose
  yarn
  spring
  dotnet)

source $ZSH/oh-my-zsh.sh

# fix osx
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Custom ZSH configs
source $HOME/.zsh/aliases

# TMUX
export TERM="xterm-256color"

# GOLANG CONFIG
export GOPATH="$HOME/go"
export GOROOT="/usr/local/Cellar/go/1.11.4/libexec"

fpath=(/usr/local/share/zsh-completions $fpath)

export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"

export PATH=${PATH}:${ANDROID_SDK}/emulator

source $HOME/.zsh/os

export VOLTA_HOME="$HOME/.volta"
[ -s "$VOLTA_HOME/load.sh" ] && . "$VOLTA_HOME/load.sh"

export PATH="$VOLTA_HOME/bin:$PATH"

eval "$(pyenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

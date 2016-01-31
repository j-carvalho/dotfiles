export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="juanghurtado"

DISABLE_AUTO_UPDATE="true"

COMPLETION_WAITING_DOTS="true"

plugins=(activator docker boot2docker git sublime syntax-highlighting brew brew-cask bower nvm go heroku colored-man colorize vundle gitignore redis-cli sbt svn node npm osx vagrant docker tmux weechat)

source $ZSH/oh-my-zsh.sh

# fix osx
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Custom ZSH configs
source $HOME/.zsh/aliases

# TMUX
export TERM="xterm-256color"

# GOLANG CONFIG
export GOPATH="$HOME/projects/gocode"

# User configuration
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:$GOPATH/bin:$PATH"

source $HOME/.zsh/os

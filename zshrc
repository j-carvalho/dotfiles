export ZSH=$HOME/.oh-my-zsh

#ZSH_THEME="af-magic"
#ZSH_THEME="gozilla"
ZSH_THEME="juanghurtado"

DISABLE_AUTO_UPDATE="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git sublime syntax-highlighting brew bower nvm go golang heroku)

source $ZSH/oh-my-zsh.sh

# Custom ZSH configs
source $HOME/.dotfiles/zsh/aliases

# GOLANG CONFIG
export GOPATH="$HOME/projects/gocode"

# User configuration
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:$GOPATH/bin:$PATH"

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM
[ -s "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm" # This loads rvm

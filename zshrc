autoload -Uz compinit
compinit
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# User configuration
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$GOPATH/bin:/$HOME/.dotnet/tools:$PATH"

export ZSH=$HOME/.oh-my-zsh

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
  
SPACESHIP_BATTERY_SHOW=false

DISABLE_AUTO_UPDATE="true"

COMPLETION_WAITING_DOTS="true"

plugins=(
  docker
  brew
  nvm
  golang
  colorize
  vundle
  gitignore
  redis-cli
  node
  npm
  git
  macos
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

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="$VOLTA_HOME/bin:$PATH"

eval "$(pyenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

eval "$(rbenv init -)"

eval "$(direnv hook zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

. /opt/homebrew/opt/asdf/libexec/asdf.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH="$PATH:/Users/josecarvalho/.local/bin"

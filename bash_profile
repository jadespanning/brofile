# calm
touch ~/.hushlogin
export PS1='> '
export BASH_SILENCE_DEPRECATION_WARNING=1

# vi
set -o vi
export EDITOR=vim
bind TAB:menu-complete
bind '"jk":vi-movement-mode'
bind '"kj":vi-movement-mode'
bind '"kk":vi-movement-mode'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(/opt/homebrew/bin/brew shellenv)"

# gcloud
if [ -f '~/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '~/Downloads/google-cloud-sdk/path.bash.inc'; fi
if [ -f '~/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '~/Downloads/google-cloud-sdk/completion.bash.inc'; fi

shopt -s expand_aliases
alias vim="nvim"
alias v=vim
alias s="cd ~/fin-server"
alias c="cd ~/fin-web-client"
alias g="git"
alias skrr="exit"
alias src="echo 'source ~/.bash_profile';source ~/.bash_profile"
alias vrc="echo 'vim ~/.vimrc';vim ~/.vimrc"
alias profile="vim ~/.bash_profile"
alias ll="ls -lart"
alias com="git add .;git commit --no-verify -m"
alias steam="git add .;git commit --no-verify -m 'does dat ting';g push;"
alias md="git checkout develop; git pull; git checkout -; git merge develop; yarn;"
alias vim="vim -S ~/.vimrc"

export PATH=${PATH}:~/go/bin
export PATH=${PATH}:/usr/local/bin

export FZF_DEFAULT_COMMAND='ag -g ""'

tmux attach &> /dev/null
eval "$(/opt/homebrew/bin/brew shellenv)"

set -o vi

# directory aliases
alias ls='ls -G'
alias ll='ls -lG'
alias ..='cd ..'
alias work='cd ~/workspace'

# git aliases
alias git='hub'
alias gs='git status'
alias pt='git push'
alias cob='git checkout -b'
alias gpr='git pull-request'
alias gl='git lg'

alias f='find . | grep -v node_modules | grep -v .git | grep'

PATH=$PATH:~/.bin
EDITOR=vim

export NVM_DIR="$HOME/.nvm"

[[ $- = *i* ]] && source ~/workspace/liquidprompt/liquidprompt # this loads the cool prompt
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

alias cat='bat'
alias ping='prettyping' 

export PATH="$HOME/.jenv/bin:$PATH"
export PATH=$PATH:/Users/kaushs02/.gvm/gos/go1.9.4/bin
eval "$(jenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[ -f ~/.local_profile ] && source ~/.local_profile
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

LP_PS1_POSTFIX="\n> "

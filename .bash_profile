# set editor to vim mode
set -o vi

# directory aliases
alias ls='ls -G'
alias ll='ls -lG'
alias ..='cd ..'
alias work='cd ~/workspace'
alias git='hub'
alias gs='git status'
alias pt='git push'
alias cob='git checkout -b'
alias gpr='git pull-request'
alias gl='git lg'
alias f='find . | grep -v node_modules | grep -v .git | grep'
alias cat='bat'
alias ping='prettyping' 

PATH=$PATH:~/.bin
EDITOR=vim
LP_PS1_POSTFIX="\n> "

export PATH="$HOME/.jenv/bin:$PATH"
export PATH=$PATH:/Users/kaushs02/.gvm/gos/go1.9.4/bin
export NVM_DIR="$HOME/.nvm"

if [ $ITERM_PROFILE = "dark" ]
then
    export BAT_THEME="1337"
else
    export BAT_THEME="GitHub"
fi

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
[[ $- = *i* ]] && source ~/workspace/liquidprompt/liquidprompt # this loads the cool prompt
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.local_profile ] && source ~/.local_profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

eval "$(jenv init -)"

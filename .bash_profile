set -o vi

alias ls='ls -G'
alias ll='ls -lG'
alias ..='cd ..'
alias work='cd ~/workspace'
alias git='hub'
alias gs='git status'
alias pt='git push'
alias cob='git checkout -b'
alias gpr='gh pr create'
alias gl='git lg'
alias f='find . | grep -v node_modules | grep -v .git | grep'
alias cat='bat'
alias ping='prettyping' 
alias vim='nvim'

PATH=$PATH:~/.bin
EDITOR=vim
LP_PS1_POSTFIX="\n> "

export PATH="$HOME/.jenv/bin:$PATH"
export PATH=$PATH:/Users/kaushs02/.gvm/gos/go1.9.4/bin
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
# [[ $- = *i* ]] && source ~/workspace/liquidprompt/liquidprompt # this loads the cool prompt
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.local_profile ] && source ~/.local_profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#eval "$(jenv init -)"

#test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/nvim-osx64/bin:$PATH"

alias prs='gh pr list | fzf | grep -o "^[0-9]*" | tr -d "\n" | xargs gh pr checkout'

export CLIENT_CERT=/etc/pki/tls/cert.pem
export CLIENT_CERT=/etc/pki/tls/cert.pem

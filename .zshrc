source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle nojhan/liquidprompt
antigen bundle git

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
[ -f $HOME/src/github.com/monzo/starter-pack/zshrc ] && source $HOME/src/github.com/monzo/starter-pack/zshrc

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

EDITOR=vim

alias ls='ls -G'
alias ll='ls -lG'
alias ..='cd ..'
alias work='cd ~/workspace'
alias gs='git status'
alias pt='git push'
alias cob='git checkout -b'
alias gl='git lg'
alias f='find . | grep -v node_modules | grep -v .git | grep'
alias vim='nvim'

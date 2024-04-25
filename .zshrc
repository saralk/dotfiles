if [ ! -f ~/antigen.zsh ]; then
  curl -L git.io/antigen > ~/antigen.zsh
fi

source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle git

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme cloud

antigen apply

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

path+=('/Users/saral.kaushik/work/gds-cli')
export PATH

EDITOR=vim
set -o vi

alias ls='ls -G'
alias ll='ls -lG'
alias ..='cd ..'
alias work='cd ~/work'
alias gs='git status'
alias pt='git push'
alias cob='git checkout -b'
alias gl='git lg'
alias f='find . | grep -v node_modules | grep -v .git | grep'
alias vim='nvim'
alias deploy2dev='gh workflow run publish-to-dev.yaml --ref `git branch --show-current`'

if whence -w gds | grep "alias"; then
  unalias gds
fi

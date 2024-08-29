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

plugins=(
  zsh-npm-scripts-autocomplete
)

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

if whence -w gds | grep "alias"; then
  unalias gds
fi

search_up() {
    local look=${PWD%/}

    while [[ -n $look ]]; do
        [[ -e $look/$1 ]] && {
            printf '%s\n' "$look"
            return
        }

        look=${look%/*}
    done

    [[ -e /$1 ]] && echo /
}

deploy2dev() {
  dir=$(search_up .saral.json)
  json_path="${dir}/.saral.json"

  if [ -f $FILE ]; then
    workflow=$(cat $json_path | jq -r 'if has("deployWorkflow") then .deployWorkflow else "publish-to-dev.yaml" end')
  else
    workflow="publish-to-dev.yaml"
  fi

  gh workflow run $workflow --ref `git branch --show-current`
}


function aws_logs {
  selected_item=$(gds aws di-account-dev aws logs describe-log-groups | jq ".logGroups[].logGroupName" -r | fzf)

  if [[ -n $selected_item ]]; then
    gds aws di-account-dev aws logs tail $selected_item --follow
  else
    echo "No log group selected"
  fi
}

# Created by `pipx` on 2024-05-23 12:55:06
export PATH="$PATH:/Users/saral.kaushik/.local/bin"

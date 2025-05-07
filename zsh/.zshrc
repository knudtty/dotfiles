# Prompt per line
source ~/.git-prompt.sh
function update_prompt() {
    PROMPT="%n@%m %F{green}%~%f%F{yellow}$(__git_ps1)%f %# "
}
update_prompt
function precmd() {
    update_prompt
}

# GNU over mac versions
alias sed='gsed'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# end
FPATH="$HOME/.docker/completions:$FPATH"
autoload -Uz compinit
compinit

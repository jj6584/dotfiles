
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/alias.zsh ]] && source ~/.zsh/alias.zsh
[[ -f ~/.zsh/wsl2fix.zsh ]] && source ~/.zsh/wsl2fix.zsh

# Load Starship
eval "$(starship init zsh)"

eval "$(rbenv init - zsh)"

#GO
if [[ $OSTYPE == "linux-gnu" ]]; then
    export GOROOT=/usr/local/go
    export GOPATH=$HOME/go
    export GO111MODULE=auto
    export PATH="PATH=$PATH:$HOME/.tfenv/bin:$GOROOT/bin:$GOBIN:$HOME/.rbenv/bin"
fi
#nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


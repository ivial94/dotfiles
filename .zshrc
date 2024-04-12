export XDG_CACHE_DIR="$HOME/.cache"
export NVM_DIR="$HOME/.nvm"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/ivial.omp.json)"
fi

eval "$(zoxide init --cmd cd zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source "$HOME/.local/fzf-zsh-plugin/fzf-zsh-plugin.plugin.zsh"

alias ls="eza --git --icons"
alias tree="eza --git --icons --tree"
alias cat="bat"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
[ -s "$HOME/.bun/_bun" ] && \. "$HOME/.bun/_bun"

export XDG_CACHE_DIR="$HOME/.cache"
export NVM_DIR="$HOME/.nvm"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$HOME/.local/bin:$PATH"

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/ivial.omp.json)"
fi

[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
[ "$HISTSIZE" -lt 50000 ] && HISTSIZE=50000
[ "$SAVEHIST" -lt 10000 ] && SAVEHIST=10000

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt share_history

eval "$(zoxide init --cmd cd zsh)"

source $HOME/.local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.local/share/fzf-zsh-plugin/fzf-zsh-plugin.plugin.zsh

alias ls="eza --icons"
alias tree="eza --icons --tree"
alias cat="bat"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
[ -s "$HOME/.bun/_bun" ] && \. "$HOME/.bun/_bun"

bindkey "^[[1;2C" forward-word
bindkey "^[[1;2D" backward-word

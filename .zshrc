if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$PATH:~/.local/bin:$HOME/.bun"
export ELECTRON_OZONE_PLATFORM_HINT=auto

eval "$(zoxide init --cmd cd zsh)"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/nvm/init-nvm.sh
source /usr/share/zsh/plugins/zsh-fzf-plugin/fzf.plugin.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey  "^[^?"   backward-kill-word
bindkey  "^H"     backward-kill-word

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

alias ls="eza"
alias tree="eza --tree"
alias cat="bat"
alias watch="entr"
alias gt="git town"
alias vim="nvim"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"


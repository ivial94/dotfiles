export PATH=$PATH:~/.local/bin
export ELECTRON_OZONE_PLATFORM_HINT=wayland

eval "$(oh-my-posh init zsh)"
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/nvm/init-nvm.sh
source /usr/share/zsh/plugins/zsh-fzf-plugin/fzf.plugin.zsh

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

eval "$(zoxide init --cmd cd zsh)"

alias ls="exa"
alias tree="exa --tree"
alias cat="bat"

CONF_DIR="$HOME/.config"

HISTFILE=$CONF_DIR/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

export GIT_CONFIG_GLOBAL="$CONF_DIR/git/.gitconfig"

zstyle :compinstall filename "$CONF_DIR/zsh/.zshrc"
autoload -Uz compinit
compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow'

eval "$(starship init zsh)"
export STARSHIP_CONFIG=$CONF_DIR/starship/starship.toml

export LANG=en_US.UTF-8

alias cat=bat
alias ls="eza --icons --git"

eval "$(zoxide init --cmd cd zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

if command -v wt >/dev/null 2>&1; then eval "$(command wt config shell init zsh)"; fi

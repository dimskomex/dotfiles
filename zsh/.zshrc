export PATH="$PATH:/nix/var/nix/profiles/default/bin/"
export PATH="$HOME/.nix-profile/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:/sbin:/usr/sbin
export PATH="$PATH:/home/dimskomex/.cargo/bin:$PATH"
export XDG_DATA_DIRS="/home/dimskomex/.nix-profile/share:$XDG_DATA_DIRS"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

### ZSH HOME
export ZSH=$HOME/.zsh

# Custom Zsh prompt configuration
PROMPT='(%F{green}%?%f) %B%n@%m%b %F{blue} %F{cyan}%~%f$(git rev-parse --is-inside-work-tree &>/dev/null && git_super_status) '

# Colors for directories, files, etc.
autoload -U colors && colors

### ---- history config -------------------------------------
export HISTFILE=$ZSH/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=30000

# How many commands history will save on file.
export SAVEHIST=30000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

# Plugins
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-git-prompt/zshrc.sh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/you-should-use/you-should-use.plugin.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)

# Aliases
alias rm="rm -i"
alias back="cd -"
alias apt="nala"
alias apt-get="nala"
alias sudo="sudo "
alias v="nvim"
alias shutdown="shutdown now"
alias neofetch="fastfetch"
alias cat="bat"
alias l="ls -l"
alias ll="ls -la"

# Nvim as default editor
export EDITOR="nvim"
export VISUAL="nvim" 

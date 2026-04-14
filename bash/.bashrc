############################
# INTERACTIVE SHELL GUARD
############################

# Exit early if not interactive
case $- in
    *i*) ;;
      *) return;;
esac


############################
# HISTORY (TMUX-SAFE)
############################

export HISTCONTROL=ignoreboth
export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTTIMEFORMAT="%F %T "

# Merge history across sessions
if [ -n "$PROMPT_COMMAND" ]; then
    export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND%;};"
else
    export PROMPT_COMMAND="history -a; history -n"
fi

shopt -s histappend
shopt -s cmdhist
shopt -s histverify
shopt -s histreedit


############################
# BASH BEHAVIOR
############################

shopt -s autocd
shopt -s checkwinsize
shopt -s dotglob
shopt -s extglob
shopt -s lastpipe
shopt -s nocaseglob
shopt -s nullglob
shopt -s globstar
shopt -s cdspell
shopt -s dirspell
shopt -s expand_aliases
shopt -s progcomp


############################
# READLINE / COMPLETION
############################

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
bind "set menu-complete-display-prefix on"


############################
# PROMPT
############################

# Detect color-capable terminal
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Git-aware prompt (Void path)
if [ -f "/usr/share/git/git-prompt.sh" ]; then
    source "/usr/share/git/git-prompt.sh"
    PS1='(\[\e[32m\]$?\[\e[0m\]) \[\e[36m\]\w\[\e[0m\]$(__git_ps1 " (%s)") '
else
    PS1='(\[\e[32m\]$?\[\e[0m\]) \[\e[36m\]\w\[\e[0m\] '
fi


############################
# ALIASES
############################

alias ls="lsd"
alias ll="lsd -lhA"
alias rm="rm -i"
alias tree="tree -C"
alias df="df -h"
alias cat="bat --style plain --pager never"
alias less="bat --style plain"
alias free="free -m"
alias e="/usr/sbin/nvim"
alias vim="/usr/sbin/nvim"

############################
# FZF
############################

# Load completion only if supported (tmux-safe)
if command -v complete >/dev/null 2>&1; then
    [ -f "$HOME/.nix-profile/share/fzf/key-bindings.bash" ] \
        && source "$HOME/.nix-profile/share/fzf/key-bindings.bash"

    [ -f "$HOME/.nix-profile/share/fzf/completion.bash" ] \
        && source "$HOME/.nix-profile/share/fzf/completion.bash"
fi

if command -v fzf >/dev/null 2>&1; then
    export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
    export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"
    export FZF_CTRL_R_OPTS="
        --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
        --color header:italic
        --header 'Press CTRL-Y to copy command into clipboard'"
fi

###########################
# ENVIRONMENT (LOGIN SHELL)
############################

# User-local binaries
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/sbin" ] && PATH="$HOME/sbin:$PATH"

# System admin binaries
[ -d "/usr/sbin" ] && PATH="/usr/sbin:$PATH"

# Nix profiles
[ -d "$HOME/nix/var/nix/profiles/default/bin" ] && PATH="$HOME/nix/var/nix/profiles/default/bin:$PATH"
[ -d "$HOME/.nix-profile/bin" ] && PATH="$HOME/.nix-profile/bin:$PATH"

# Flatpak exports
[ -d "/var/lib/flatpak/exports/bin/" ] && PATH="/var/lib/flatpak/exports/bin/:$PATH"

# Rust tooling
[ -d "$HOME/.cargo/bin" ] && PATH="$HOME/.cargo/bin:$PATH"

export PATH

[ -d "$HOME/.nix-profile/share/applications" ] && XDG_DATA_DIRS="$HOME/.nix-profile/share/applications:$XDG_DATA_DIRS"
export XDG_DATA_DIRS

export XDG_RUNTIME_DIR="/run/user/$(id -u)"

# Default compilers
export CC="clang"
export CXX="clang++"

############################
# DEFAULT TOOLS
############################

# Neovim as default editor
export VISUAL="/usr/bin/nvim"
export EDITOR="/usr/bin/nvim-qt"

# Use Neovim as man pager
export MANPAGER="$HOME/.local/share/bob/nvim-bin/nvim +Man!"


############################
# LANGUAGE TOOLCHAINS
############################

# GHC / Haskell tooling
[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env"
[ -f "/home/dimskomex/.ghcup/env" ] && . "/home/dimskomex/.ghcup/env" # ghcup-env

############################
# Keybinds
############################

bind -x '"\C-g":tmux'
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

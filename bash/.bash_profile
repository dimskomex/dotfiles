# Load environment
[ -f ~/.profile ] && source ~/.profile

# Load interactive config
[ -f ~/.bashrc ] && source ~/.bashrc
#
# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
. "/home/dimskomex/.local/share/bob/env/env.sh"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

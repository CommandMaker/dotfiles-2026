# Autostart X server at login
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec startx
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

export TERMINAL="/usr/local/bin/st"

alias ls="exa -lah --group-directories-first"
alias dc="USER_ID=$(id -u) GROUP_ID=$(id -g) docker-compose"
alias de="USER_ID=$(id -u) GROUP_ID=$(id -g) docker-compose exec"
alias sudo="sudo -Es"

# asdf runtime path
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

export PATH="$HOME/.bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"

# asdf autocomplete
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
autoload -Uz compinit && compinit

# zoxide
eval "$(zoxide init zsh)"

# Set prompt
export PS1="%~ → "

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

alias ls="exa -lah --group-directories-first"
alias dc="USER_ID=$(id -u) GROUP_ID=$(id -g) docker-compose"
alias de="USER_ID=$(id -u) GROUP_ID=$(id -g) docker-compose exec"

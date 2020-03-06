# Created by newuser for 5.2

export XDG_CONFIG_HOME=$HOME/.config


autoload -U compinit
compinit

alias ls='ls --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#cd後自動でls
function chpwd() { ls -v -F --color=auto }

alias n=nvim



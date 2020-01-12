# Created by newuser for 5.2

export XDG_CONFIG_HOME=$HOME/.config

source $HOME/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting
zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light sindresorhus/pure

autoload -U compinit
compinit

alias ls='ls --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#cd後自動でls
function chpwd() { ls -v -F --color=auto }

alias n=nvim

alias mito="xrandr --output DP-1-2 --mode 2560x1440 --above eDP-1 && xrandr --output DP-1-1 --mode 1920x1200 --rotate right --right-of DP-1-2"
alias mito2="xrandr --output DP-2-2 --mode 2560x1440 --above eDP-1 && xrandr --output DP-2-1 --mode 1920x1200 --rotate right --right-of DP-2-2"


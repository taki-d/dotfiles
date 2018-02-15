# Created by newuser for 5.2

export XDG_CONFIG_HOME=$HOME/.config

autoload -U compinit promptinit
compinit
promptinit

autoload -Uz colors
colors

# This will set the default prompt to the walters theme
# prompt walters

#PROMPT='[%n@%m]# '
#PROMPT="%{$fg[magenta]%}RabbitHouse%{$fg[white]%}:%{$fg[yellow]%}%n%{$fg[white]%}:%{$fg[blue]%}%~%{$fg[white]%}$%{$reset_color%} "
PROMPT='%m:%F{green}%c%f %n%# '
RPROMPT='[%d]'


setopt histignorealldups

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000


export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'
#export LSCOLORS=exfxcxdxbxegedabagacad
#export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#cd後自動でls
function chpwd() { ls -v -F --color=auto }

screenfetch
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


alias n=nvim
#alias cd=sl
#alias mv=sl
#alias vim=sl

# Created by newuser for 5.2
export XDG_CONFIG_HOME=$HOME/.config

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000

export ZPLUG_HOME=~/.zplug

export LSCOLORS="gxfxcxdxabegedabagacad"

setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt extended_history
setopt share_history
setopt append_history
setopt inc_append_history
setopt hist_no_store
setopt hist_reduce_blanks
setopt autocd
setopt correct

# share history with other shell
setopt share_history

# set vim like keybind
bindkey -v

autoload -Uz compinit
compinit

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# /home/taki/Screenshot/hogedate.pngに保存するように設定．
alias gnome-screenshot="gnome-screenshot -f $HOME/Screenshot/$(date +%Y-%m-%d-%H:%M:%S).png"
alias n=nvim

#cd後自動でls
function chpwd() { ls -v -GF --color=auto }

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "mollifier/anyframe"
zplug "mollifier/cd-gitroot"
zplug "b4b4r07/zsh-gomi", if:"which fzf"
zplug "k4rthik/git-cal", as:command, frozen:1
zplug "plugins/git", from:oh-my-zsh
zplug "b4b4r07/emoji-cli", on:"stedolan/jq"
zplug "zsh-users/zsh-syntax-highlighting", defer:2



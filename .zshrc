# Created by newuser for 5.2

export XDG_CONFIG_HOME=$HOME/.config

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000

setopt hist_ignore_dups
setopt EXTENDED_HISTORY

autoload -U compinit
compinit

alias ls='ls --color=auto'
alias vim='nvim'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#cd後自動でls
function chpwd() { ls -v -F --color=auto }

alias n=nvim

if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


zplugin ice blockf

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/history-search-multi-word

zinit light sindresorhus/pure
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
zinit light b4b4r07/enhancd

zinit light zsh-users/zsh-history-substring-search


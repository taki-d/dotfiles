zmodload -i zsh/complist

WORDCHARS=''

unsetopt menu_complete
unsetopt flowcontrol
setopt auto_menu
setopt complete_in_word
setopt always_to_end

autoload -Uz compinit
compinit

bindkey -M menuselect '^O' accept-and-infer-next-history

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list \
    'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
    'r:|=*' \
    'l:|=* r:|=*'
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:cd:*' tag-order \
    local-directories directory-stack path-directories

if (( $+commands[fzf] )); then
    zstyle ':completion:*' menu no
    zstyle ':completion:*:descriptions' format '[%d]'
    zstyle ':fzf-tab:*' switch-group '<' '>'

    zi light Aloxaf/fzf-tab
fi

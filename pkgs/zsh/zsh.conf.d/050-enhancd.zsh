
export ENHANCD_FILTER="fzf --height 40%:fzy"

if (( $+commands[fzf] || $+commands[fzy] )); then
    zi light b4b4r07/enhancd
    compdef _cd __enhancd::cd
fi

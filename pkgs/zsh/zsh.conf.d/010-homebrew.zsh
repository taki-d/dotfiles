
if [[ "$OSTYPE" == darwin* ]]; then
    if [[ -x /opt/homebrew/bin/brew ]]; then
        brew_cmd=/opt/homebrew/bin/brew
    elif [[ -x /usr/local/bin/brew ]]; then
        brew_cmd=/usr/local/bin/brew
    fi

    if [[ -n "$brew_cmd" ]]; then
        brew_prefix="${brew_cmd:h:h}"
        eval "$("$brew_cmd" shellenv zsh)"
        fpath=("$brew_prefix/share/zsh/site-functions" $fpath)
    fi
fi

unset brew_cmd brew_prefix

if (( $+commands[fzf] )); then
    export FZF_CTRL_T_OPTS='--walker-skip .git,node_modules,.venv,target,dist,build'
    export FZF_ALT_C_OPTS='--walker-skip .git,node_modules,.venv,target,dist,build'

    # fzf 0.74.1 tries to restore the read-only zle option on zsh 5.9.
    # Hide only that option from fzf's snapshot while keeping its changes local.
    () {
        setopt local_options
        local -A fzf_options
        fzf_options=("${(@kv)options}")
        typeset -h options
        local -A options
        options=("${(@kv)fzf_options}")
        unset 'options[zle]'

        eval "$(fzf --zsh)"
    }
fi

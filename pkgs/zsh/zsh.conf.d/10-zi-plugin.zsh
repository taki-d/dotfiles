export ZI_HOME_DIR="$HOME/.zi"

if [[ ! -d "${ZI_HOME_DIR}" ]]; then
    git clone https://github.com/z-shell/zi.git "$ZI_HOME_DIR"
fi
source $ZI_HOME_DIR/zi.zsh

autoload -Uz _zi

zi snippet 'OMZL::completion.zsh'

zi light b4b4r07/enhancd
zi light zsh-users/zsh-completions
zi light zsh-users/zsh-autosuggestions
zi light zsh-users/zsh-syntax-highlighting
zi light chrissicool/zsh-256color
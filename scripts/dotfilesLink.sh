#!/bin/sh
DOTFILES_HOME=~/dotfiles
XDG_CONFIG_HOME=~/.config

ln -sf ${DOTFILES_HOME}/pkgs/zsh/zshrc ~/.zshrc
ln -sf ${DOTFILES_HOME}/pkgs/alacritty/alacritty.yml ~/.alacritty.yml
ln -sf ${DOTFILES_HOME}/pkgs/git/gitconfig ~/.gitconfig

if [[ "$(uname -r)" == *microsoft* ]]; then
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux"]; then
    echo "linux specific files"
    ln -sf ${DOTFILES_HOME}/pkgs/x/xprofile ~/.xprofile
    ln -sf ${DOTFILES_HOME}/pkgs/x/Xresources ~/.Xresources
    ln -sf ${DOTFILES_HOME}/pkgs/x/Xdefaults ~/.Xdefaults
    ln -sf ${DOTFILES_HOME}/pkgs/gtk/gtkrc-2.0 ~/.gtkrc-2.0
    ln -sf ${DOTFILES_HOME}/pkgs/gtk/settings.ini ${XDG_CONFIG_HOME}/gtk-3.0/settings.ini
    ln -sf ${DOTFILES_HOME}/pkgs/qt/Trolltech.conf ${XDG_CONFIG_HOME}/Trolltech.conf

    mkdir -p ${XDG_CONFIG_HOME}/i3
    mkdir -p ${XDG_CONFIG_HOME}/i3blocks

    ln -sf ${DOTFILES_HOME}/pkgs/i3/i3-config ${XDG_CONFIG_HOME}/i3/config
    ln -sf ${DOTFILES_HOME}/pkgs/i3/memory.py ${XDG_CONFIG_HOME}/i3blocks/memory.py
    ln -sf ${DOTFILES_HOME}/pkgs/i3/i3blocks-config ${XDG_CONFIG_HOME}/i3blocks/config
    
    mkdir -p ${XDG_CONFIG_HOME}/fontconfig/conf.d/
    
    ln -sf ${DOTFILES_HOME}/pkgs/font/fonts.conf ${XDG_CONFIG_HOME}/fontconfig/fonts.conf
    ln -sf ${DOTFILES_HOME}/pkgs/font/71-no-embeded-bitmaps.conf ${XDG_CONFIG_HOME}/fontconfig/conf.d/71-no-embedded-bitmaps.conf
fi

# ln -sf ${DOTFILES_HOME}/pkgs/vscode/settings.json ${XDG_CONFIG_HOME}/Code/User/settings.json

# cat ${DOTFILES_HOME}/pkgs/vscode/extensions | while read line
# do
#  code --install-extension $line > /dev/null
# done

echo "complete"
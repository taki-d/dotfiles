#!/bin/sh

ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/vim ~/.vim
ln -sf ~/dotfiles/.config ~/nvim
ln -sf ~/dotfiles/.xprofile ~/.xprofile
ln -sF ~/dotfiles/.Xresources ~/.Xresources
ln -sf ~/dotfiles/.Xdefaults ~/.Xdefaults
ln -sf ~/dotfiles/etc/gtk/gtkrc-2.0 ~/.gtkrc-2.0
ln -sf ~/dotfiles/etc/gtk/settings.ini ${XDG_CONFIG_HOME}/gtk-3.0/settings.ini
ln -sf ~/dotfiles/etc/qt/Trolltech.conf ${XDG_CONFIG_HOME}/Trolltech.conf
ln -sf ~/dotfiles/etc/xorg.conf.d/70-synaptics.conf /etc/X11/xorg.conf.d/70-synaptics.conf


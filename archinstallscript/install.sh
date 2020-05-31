#!/bin/bash


echo LANG=en_US.UTF-8 > /etc/locale.conf
echo KEYMAP=jp106 > /etc/vconsole.conf


echo "[archlinuxfr]" >> /etc/pacman.conf
echo "SigLevel = Never" >> /etc/pacman.conf
echo "Server = http://repo.archlinux.fr/\$arch" >> /etc/pacman.conf

pacman -Syu

# change keyboard us -> jp
echo 'Section "InputClass"'  >> /etc/X11/xorg.conf.d/10-keyboard.conf
echo 'Identifier "Keyboard Defaults"'  >> /etc/X11/xorg.conf.d/10-keyboard.conf
echo 'MatchIsKeyboard "yes"'  >> /etc/X11/xorg.conf.d/10-keyboard.conf
echo 'Option "XkbLayout" "jp"'  >> /etc/X11/xorg.conf.d/10-keyboard.conf
echo 'EndSection'  >> /etc/X11/xorg.conf.d/10-keyboard.conf






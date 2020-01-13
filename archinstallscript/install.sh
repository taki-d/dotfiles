#!/bin/bash

ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
hwclock --systohc --utc

echo en_US.UTF-8 UTF-8 >> /etc/locale.gen
echo ja_JP.UTF-8 UTF-8 >> /etc/locale.gen

locale-gen

echo LANG=en_US.UTF-8 > /etc/locale.conf
echo KEYMAP=jp106 > /etc/vconsole.conf

echo RabbitHouse > /etc/hostname

systemctl enable dhcpcd.service
pacman -S vim
passwd

useradd -m -g wheel -s /bin/zsh taki
passwd taki

visudo

echo "[archlinuxfr]" >> /etc/pacman.conf
echo "SigLevel = Never" >> /etc/pacman.conf
echo "Server = http://repo.archlinux.fr/\$arch" >> /etc/pacman.conf

pacman --sync --refresh yaourt

pacman -Syu

systemctl enable lightdm.service

# change keyboard us -> jp
echo 'Section "InputClass"'  >> /etc/X11/xorg.conf.d/10-keyboard.conf
echo 'Identifier "Keyboard Defaults"'  >> /etc/X11/xorg.conf.d/10-keyboard.conf
echo 'MatchIsKeyboard "yes"'  >> /etc/X11/xorg.conf.d/10-keyboard.conf
echo 'Option "XkbLayout" "jp"'  >> /etc/X11/xorg.conf.d/10-keyboard.conf
echo 'EndSection'  >> /etc/X11/xorg.conf.d/10-keyboard.conf


# install zplugin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"




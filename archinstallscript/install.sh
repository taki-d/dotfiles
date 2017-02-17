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

passwd

useradd -m -g wheel -s /bin/zsh taki
passwd taki

pacman -S xorg-server xorg-apps xorg-server-utils xorg-xinit xorg-xmodmap firefox sudo qtcreator boost opencv vim xfce4-goodies xfce4 lightdm-gtk-greeter flashplugin otf-ipafont fcitx-im fcitx-configtool fcitx-mozc evince banshee jdk7-openjdk eclipse xdg-user-dirs-gtk grub os-prober dosfstools arch-install-scripts xf86-input-synaptics xf86-video-vesa xf86-video-ati xf86-video-intel xf86-video-nouveau mesa iw wpa_supplicant dialog chromium rxvt-unicode zsh tmux i3 thunderbird libcddb vlc dmenu clang gcc cinnamon openssh git openssl libreoffice libreoffice-ja blueman powertop  tree shutter geany alsa-utils tig  source-highlight unzip htop dstat iotop texlive-most texlive-lang  networkmanager screenfetch



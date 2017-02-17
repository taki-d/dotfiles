#!bin/bash

function connect_to_network(){

    wifi-menu

    ping goo.gl -c 1 >> /dev/null

    if [ $? -eq 0 ];
    then
        echo "0" # successed
    else
        echo "1" # faild
    fi

}

function prepare(){

    loadkeys jp106

    timedatectl set-ntp true

    sed -e "1i Server = http://ftp.tsukuba.wide.ad.jp/Linux/archlinux/$repo/os/$arch" /etc/pacman.d/mirrorlist > /etc/pacman.d/mirrorlist
    sed -e "2i Server = http://ftp.jaist.ac.jp/pub/Linux/ArchLinux/$repo/os/$arch" /etc/pacman.d/mirrorlist > /etc/pacman.d/mirrorlist
    
    pacstrap -i /mnt base base-devel git
    genfstab -U /mnt >> /mnt/etc/fstab

}

status="0"

echo "Please Connect to Network"

if [ "`connect_to_network`" = "1" ];
then
    echo "error: Cannnot Connect to the Internet"
    status="1"
else
    echo ""
fi

if [ "${status}" = "0" ];
then
    prepare
fi

echo "Prepare Finish"


















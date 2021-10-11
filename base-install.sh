#!/bin/bash

# set your time-zone
ln -sf /usr/share/zoneinfo/Canada/Eastern /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
echo 'LANG=en_US.UTF-8' > /etc/locale.conf
"archie" > /etc/hostname
{
echo "127.0.0.1	localhost"
echo "::1		localhost"
echo "127.0.1.1	archie.localdomain	archie"
} >> /etc/hosts
passwd

pacman -S --needed base-devel efibootmgr networkmanager network-manager-applet wireless_tools dialog mtools dosfstools ntfs-3g linux-headers efitools sbsigntools

bootctl install
touch /boot/loader/entries/arch.conf
{
echo "title Arch Linux"
echo "linux /vmlinuz-linux"
echo "initrd /intel-ucode.img"
echo "initrd /initramfs-linux.img"
echo "options root=/dev/sdXX rw"
} >> /boot/loader/entries/arch.conf

systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable systemd-resolved.service

printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"

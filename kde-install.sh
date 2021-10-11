#!/bin/bash

sudo pacman -Syu --no-confirm

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm

sudo pacman -S --needed --noconfirm xorg plasma konsole dolphin dolphin-plugins ark

# if you need additional 'kde-applications' uncomment below line
#sudo pacman -S --needed kde-applications

sudo pacman -S flatpak

sudo systemctl enable sddm.service

systemctl reboot

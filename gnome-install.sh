#!/bin/bash

sudo pacman -Syu --no-confirm

git clone https://aur.archlinux.org/paru.git
cd paru || exit
makepkg -si --noconfirm

sudo pacman -S --needed --noconfirm xorg gnome gnome-extras firefox

sudo pacman -S flatpak

sudo systemctl enable gdm.service

systemctl reboot

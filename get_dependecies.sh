#!/bin/bash

# Check if a package is installed (not used yet)
is_package_installed() {
    local package="$1"
    if pacman -Qi "$package" &> /dev/null; then
        return 0  # Package is installed
    else
        return 1  # Package is not installed
    fi
}

# define a function to install a package and check for success
# if the flac --yay is present, it will be installed from AUR using yay, otherwise it will be installed from the official repositories using pacman
install_package() {
    # local package="$1"
    # if sudo pacman -S "$package" --noconfirm; then
    # if sudo pacman -Syu $(echo "$package" | tr ' ' '\n'); then
    
    # check if --yay flag is present in the arguments
    if [[ " $* " == *" --yay "* ]]; then
        # remove the --yay flag from the arguments
        local packages=$(echo "$*" | sed 's/--yay//g')
        if yay -S $packages --noconfirm; then
            echo -e "\033[0;32m[✓]\033[0m\t $packages installed successfully."
        else
            echo -e "\033[0;31m[✗]\033[0m\t Failed to install $packages."
            exit 1
        fi
    else
        local packages="$*"
        if sudo pacman -S $packages --noconfirm; then
            echo -e "\033[0;32m[✓]\033[0m\t $packages installed successfully."
        else
            echo -e "\033[0;31m[✗]\033[0m\t Failed to install $packages."
            exit 1
        fi
    fi
}


# dependencies:
# niri: desktop environment
install_package niri xwayland-satellite xdg-desktop-portal-gnome xdg-desktop-portal-gtk qt6-multimedia-ffmpeg
systemctl --user add-wants niri.service dms

# swaybg: background image
install_package swaybg

# waybar: status bar
install_package waybar

# kitty: terminal emulator
install_package kitty

# swaync: notification center
install_package swaync

# hyprlock: screen locker
install_package hyprlock

# wlogout: logout utility
install_package wlogout --yay

# wofi: application launcher
install_package wofi

# brightnessctl: brightness control (useful for waybar)
install_package brightnessctl

# power-profiles-daemon: power management (useful for waybar)
install_package power-profiles-daemon

# other dependencies
install_package neovim emacs

install_package blueman

install_package ipe
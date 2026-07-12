#!/bin/sh

# Array of fonts
FONTS=(
    "ttf-jetbrains-mono-nerd"
    "ttf-firacode-nerd"
    "ttf-font-awesome"
)

sudo pacman -S --noconfirm --needed "${FONTS[@]}"

# yay -S --noconfirm --needed apple-fonts
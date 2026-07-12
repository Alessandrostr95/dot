#!/bin/sh

# Array of fonts
FONTS=(
    "ttf-jetbrains-mono-nerd"
    # "ttf-font-awesome" # good for bars like polybar/baybar
)

sudo pacman -S --noconfirm --needed "${FONTS[@]}"

# yay -S --noconfirm --needed apple-fonts
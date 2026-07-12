#!/bin/sh

echo "In order to install dependencies, we need to check if yay is installed. If not, we will install it first."
echo "Do you want to continue? (y/n)"
read answer
if [ "$answer" != "y" ]; then
    echo "Aborting installation."
    exit 1
fi

if command -v yay &> /dev/null; then
    echo -e "\033[0;32m[✓]\033[0m\tyay is already installed."
else
    echo "Installing yay..."
    if ./aur.sh; then
        echo -e "\033[0;32m[✓]\033[0m\tyay installed successfully."
    else
        echo -e "\033[0;31m[✗]\033[0m\tFailed to install yay."
        exit 1
    fi
fi

echo "Installing dependencies..."

./get_dependecies.sh

echo "Dependencies installed successfully."


echo "Installing Fonts from Official Arch Packages..."

./install_fonts.sh

echo "Fonts installed successfully."


echo "Copying configuration files..." 
# niri (overwriting existing files)
cp -r config/niri/ $HOME/.config/

# hyprlock
cp -r config/hypr/ $HOME/.config/

# kitty
cp -r config/kitty/ $HOME/.config/

# waybar
cp -r config/waybar/ $HOME/.config/

# wlogout
cp -r config/wlogout/ $HOME/.config/

# wofi
cp -r config/wofi/ $HOME/.config/

# bashrc
cp config/.bashrc $HOME/.bashrc
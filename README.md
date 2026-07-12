# DOT (🚧 work in progress 🚧)
This repository contains my personal configuration files and scripts for setting up the graphical environment on Arch Linux.
It includes configurations for various tools and applications, as well as scripts to automate the installation of dependencies and fonts.

## Dependencies
The following dependencies are required for the scripts to work properly:
- `git`: for cloning repositories
- `base-devel`: for building packages from the AUR
- `yay`: for installing packages from the AUR
- `niri`: desktop environment (and all its dependencies)
- `swaybg`: for setting the background
- `waybar`: for the status bar
- `hyprlock`: for the lock screen
- `kitty`: for the terminal
- `wlogout`: for the logout screen
- `swaync`: for notifications

Other dependecies are:
- `brightnessctl`: for controlling screen brightness
- `wpctl`: for controlling audio volume
- `blueman`: a GUI for managing Bluetooth devices
- `nmtui`: a text-based user interface for managing network connections
- `neovim`: a text editor
- `emacs`: a text editor (and more)

## Installation
To install the dependencies and fonts, run the following commands in your terminal:
```bash
git clone https://github.com/Alessandrostr95/dot.git
cd dot
chmod +x *.sh
./install.sh
```

After running the installation script, you HAVE TO LOG OUT and log back in for the changes to take effect.

## License
This project is licensed under the GPL-3.0 License. 

## TODO
- [ ] solve apple-fonts issue (aur)

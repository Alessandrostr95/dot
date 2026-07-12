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
- `wofi`: for launching applications

Other dependecies are:
- `brightnessctl`: for controlling screen brightness
- `pipewire`: for controlling audio
- `blueman`: a GUI for managing Bluetooth devices
- `nmtui`: a text-based user interface for managing network connections
- `neovim`: a text editor
- `emacs`: a text editor (and more)

Some fonts that will be installed are:
- `ttf-jetbrains-mono-nerd`: JetBrains Mono Nerd Font
- `ttf-firacode-nerd`: Fira Code Nerd Font
- `ttf-font-awesome`: Font Awesome

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

## Acknowledgements
- [Alessandrostr95](https://github.com/Alessandrostr95) (*myself*) for creating and maintaining this repository.

## TODO
- [ ] solve apple-fonts issue (aur)
- [ ] add check for pipewire and bluetoothctl
- [ ] add screenshot and video for a showcase of the configuration
- [ ] solve nmtui issue (aur)
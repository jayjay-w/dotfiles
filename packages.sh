pacman -S zdg-user-dirs polybar i3 rofi lsb-release hyprland sway power-profiles-daemon hyprpaper pipewire libgtop bluez bluez-utils btop networkmanager dart-sass wl-clipboard brightnessctl swww python gnome-bluetooth-3.0 pacman-contrib power-profiles-daemon gvfs
pacman -S kitty zsh neovim
pacman -S unzip rofi-wayland thunar

yay -S google-chrome waybar grimblast-git gpu-screen-recorder hyprpicker matugen-bin python-gpustat hyprsunset-git hypridle-git

sudo systemctl enable power-profiles-daemon
sudo systemctl start power-profiles-daemon

curl -fsSL https://bun.sh/install | bash

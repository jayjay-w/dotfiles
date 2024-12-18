sudo pacman -S --needed git base-devel

mkdir -p code
cd code

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

sudo pacman -S --needed zdg-user-dirs polybar i3 rofi lsb-release hyprland sway power-profiles-daemon hyprpaper pipewire libgtop
sudo pacman -S bluez bluez-utils btop networkmanager dart-sass wl-clipboard
sudo pacman -S brightnessctl swww python gnome-bluetooth-3.0 pacman-contrib power-profiles-daemon gvfs
sudo pacman -S kitty zsh neovim btop unzip rofi-wayland thunar
sudo pacman -S tmux stow

yay -S google-chrome waybar grimblast-git gpu-screen-recorder hyprpicker matugen-bin python-gpustat hyprsunset-git hypridle-git
yay -S nerd-fonts slack-desktop aws-cli-v2 visual-studio-code-bin
yay -S nwg-dock-hyprland nwg-drawer expressvpn

sudo systemctl enable power-profiles-daemon
sudo systemctl start power-profiles-daemon

#curl -fsSL https://bun.sh/install | bash

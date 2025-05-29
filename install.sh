#!/bin/sh

sudo cp -r hyprland-void.conf /etc/xbps.d/
sudo xbps-install -Su
sudo xbps-install -S hyprland hyprlock wofi curl wget meson ninja make
sudo xbps-install zip unzip nerd-fonts-symbols-ttf pulseaudio pavucontrol
sudo xbps-install -Sy glibc-32bit libX11-32bit libXext-32bit libstdc++-32bit
cp -r ./confs/* ~/.config 
cp -r ./.bashrc ~/
cd ..
git clone https://github.com/Alexays/Waybar.git
git clone https://github.com/LGFae/swww.git
wget https://download.gnome.org/sources/gtkmm/3.24/gtkmm-3.24.0.tar.xz
git clone https://github.com/vinceliuice/Graphite-gtk-theme

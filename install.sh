#!/bin/sh

sudo cp -r hyprland-void.conf /etc/xbps.d/
sudo xbps-install -Su
sudo xbps-install -Sy hyprland hyprlock wofi curl wget meson ninja make seatd elogind
sudo xbps-install zip unzip nerd-fonts-symbols-ttf alsa-utils alsa-lib alsa-plugins apulse xorg-server-xwayland xorg-server-xwayland-32bit mesa-32bit mesa-vulkan-intel-32bit libglvnd-32bit
sudo xbps-install -S mesa-dri mesa-vulkan-intel libglvnd
sudo xbps-install -Sy void-repo-multilib void-repo-nonfree glibc-32bit libX11-32bit libXext-32bit libstdc++-32bit libdrm-32bit libGL-32bit
cp -r ./confs/* ~/.config 
cp -r ./.bashrc ~/
cd ..
git clone https://github.com/Alexays/Waybar.git
git clone https://github.com/LGFae/swww.git
git clone https://github.com/vinceliuice/Graphite-gtk-theme
sudo ln -s /etc/sv/seatd /var/service
sudo ln -s /etc/sv/elogind /var/service

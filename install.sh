#!/bin/sh

# INSTALL SCRIPT

# Makes copies of the configs to ~/.config and etc.
cp ~/install/dotfiles/vars/* ~/
cp -r ~/install/dotfiles/config/* ~/.config/
cp -r ~/install/cmus ~/
sudo cp -r hyprland-void.conf /etc/xbps.d/

#Installs libs and bins
sudo xbps-install -Su
sudo xbps-install -y hyprland hyprlock wofi Waybar curl wget meson ninja make seatd elogind sddm sddm-kcm nano vim neovim
sudo xbps-install zip unzip nerd-fonts-symbols-ttf alsa-utils alsa-lib alsa-plugins apulse xorg-server-xwayland xorg-server-xwayland-32bit mesa-32bit mesa-vulkan-intel-32bit libglvnd-32bit
sudo xbps-install -y mesa-dri mesa-vulkan-intel libglvnd
sudo xbps-install -y void-repo-multilib void-repo-nonfree glibc-32bit libX11-32bit libXext-32bit libstdc++-32bit libdrm-32bit libGL-32bit
sudo xbps-install -y font-awesome dejavu-fonts-ttf
cd ..

# Clones github repos 
git clone https://github.com/Alexays/Waybar.git
git clone https://github.com/LGFae/swww.git
git clone https://github.com/vinceliuice/Graphite-gtk-theme

# Creates simlinks for runit services
sudo ln -s /etc/sv/seatd /var/service
sudo ln -s /etc/sv/sddm /var/service
sudo ln -s /etc/sv/elogind /var/service


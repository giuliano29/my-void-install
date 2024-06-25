#!/bin/bash

sudo xbps-install -Svu bash-completion \
void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree \
ufw xorg xfce4-session xfce4-settings xfdesktop xfwm4 xfce4-panel \
xfce4-pulseaudio-plugin xfce4-sensors-plugin xfce4-appfinder terminology \
midori thunar-archive-plugin xdg-user-dirs xz unzip lightdm mousepad \
ristretto parole network-manager-applet NetworkManager-openvpn pulseaudio \
alsa-utils flatpak amdvlk amdvlk-32bit mesa-dri mesa-dri-32bit \
mesa-vulkan-radeon mesa-vulkan-radeon-32bit vulkan-loader vulkan-loader-32bit \
zlib gimp apparmor htop gnome-themes-standard elogind curl git wget nano \
google-fonts-ttf libidn-32bit libidn2-32bit libstdc++-32bit libuuid-32bit \
gstreamer1-32bit gst-plugins-good1-32bit gst-plugins-base1-32bit \
gst-plugins-bad1-32bit gst-plugins-ugly1-32bit libopenal-32bit \
alsa-plugins-pulseaudio alsa-plugins-pulseaudio-32bit firefox xz xarchiver \
glu butt steam tumbler gnome-keyring

git clone https://github.com/geany/geany-themes
cd geany-themes && ./install.sh

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo usermod -aG network giuliano
sudo usermod -aG lightdm giuliano

sudo ln -s /etc/sv/ufw/ /var/service/
sudo ln -s /etc/sv/rsyslogd/ /var/service/
sudo ln -s /etc/sv/NetworkManager/ /var/service/
sudo ln -s /etc/sv/elogind/ /var/service/
sudo ln -s /etc/sv/dbus/ /var/service/
sudo ln -s /etc/sv/lightdm/ /var/service/


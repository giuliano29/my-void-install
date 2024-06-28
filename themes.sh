#!/bin/bash
cd ~/my-void-install/

git clone https://github.com/geany/geany-themes
cd geany-themes && ./install.sh && cd ../

git clone https://github.com/FSKiller/Microsoft-Fonts
mv ~/my-void-install/Microsoft-Fonts ~/.fonts

git clone https://github.com/linuxmint/mint-y-icons
mv  ~/my-void-install/mint-y-icons/usr/share/icons/ ~/.icons

git clone https://github.com/vinceliuice/WhiteSur-gtk-theme
cd ~/my-void-install/WhiteSur-gtk-theme/
./install.sh -l 

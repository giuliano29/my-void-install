#!/bin/bash

sudo usermod -aG network giuliano
sudo usermod -aG lightdm giuliano

sudo ln -s /usr/lib32/libidn.so.12 /usr/lib32/libidn.so.11
sudo ln -s /etc/sv/ntpd/ /var/service/
sudo ln -s /etc/sv/ufw/ /var/service/
sudo ufw enable
sudo ln -s /etc/sv/rsyslogd/ /var/service/
sudo ln -s /etc/sv/NetworkManager/ /var/service/
sudo ln -s /etc/sv/dbus/ /var/service/
sudo ln -s /etc/sv/polkitd/ /var/service/
sudo ln -s /etc/sv/lightdm/ /var/service/
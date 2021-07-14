#!/bin/bash

# change to xibo_client directory within home folder
cd ~/xubuntu-exam-laptop/

# update the system
sudo apt update
sudo apt full-upgrade -y

# remove unnecessary packages
sudo apt remove -y libreoffice-common libreoffice-style-elementary libreoffice-style-tango libreoffice-style-colibre zfsutils-linux zfs-initramfs zfs-zed thunderbird transmission-common pidgin cups bluez language-pack-bn language-pack-de language-pack-fr language-pack-es printer-driver-brlaser printer-driver-foo2zjs printer-driver-m2300w printer-driver-pnm2ppa printer-driver-ptouch printer-driver-pxljr printer-driver-sag-gdi printer-driver-min12xxw printer-driver-c2esp printer-driver-foo2zjs-common network-manager-pptp pptp-linux xfburn system-config-printer-common system-config-printer-udev simple-scan sgt-launcher sgt-puzzles xfce4-weather-plugin xfce4-mailwatch-plugin mobile-broadband-provider-info xserver-xorg-input-wacom pidgin-otr mate-calc-common cups-bsd cups-client cups-common cups-filters cups-filters-core-drivers cups-ipp-utils gnome-sudoku gimp gimp-data cryptsetup cryptsetup-bin cryptsetup-initramfs cryptsetup-run xfce4-screensaver update-manager-core
sudo rm -r /usr/share/hplip/

sudo apt autoremove -y

# set power management settings
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-ac -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/inactivity-sleep-mode-on-ac -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-ac-off -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-ac-sleep -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/power-button-action -s 4
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lid-action-on-ac -s 0

# install required apt packages
echo "Installing Abiword"
sudo apt -y install abiword tlp tp-smapi-dkms acpi-call-dkms
echo "Abiword now installed"

# Create the exam user account, with a hashed password
sudo useradd -m -p saD7BequLh/g6 exam

# configure abiword
sudo mkdir -p /home/exam/.config/abiword/templates/
sudo cp profile /home/exam/.config/abiword/profile
sudo cp normal.awt /home/exam/.config/abiword/templates/normal.awt

# Create the autostart directory and copy the abiword entry
sudo mkdir -p /home/exam/.config/autostart/
sudo cp abiword.desktop /home/exam/.config/autostart/abiword.desktop

# Create the hidden exam archives directory
sudo mkdir -p /home/exam/.archive/

# Ensure that the exam user owns their directory, recursively
sudo chown -R exam:exam /home/exam/

# Copy system configuration files
sudo cp system.profile /usr/share/abiword-3.0/system.profile
sudo cp lightdm.conf /etc/lightdm/lightdm.conf
sudo cp tlp.conf /etc/tlp.conf

# Copy the SSH settings to the root account
sudo rsync -avv root-ssh/ /root/.ssh/
sudo chown -R root:root /root/.ssh/

# make Directories for network up/down scripts
sudo mkdir -p /etc/network/if-up.d/
sudo mkdir -p /etc/network/if-down.d/

# Copy the exam sending script to if-up.d
sudo cp exam-send /etc/network/if-up.d/

# Make the script executable & make root the owner
sudo chown root:root /etc/network/if-up.d/exam-send
sudo chmod 755 /etc/network/if-up.d/exam-send

# Restart the machine
sudo reboot

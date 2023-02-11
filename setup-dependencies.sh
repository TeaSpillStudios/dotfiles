#!/usr/bin/env bash

declare -a packageArray
mapfile -t packageArray < ./resources/packages

for package in "${packageArray[@]}"; do
	sudo pacman -Sy $package
done

i3lock-color() {
	git clone https://github.com/Raymo111/i3lock-color
	cd i3lock-color
	./build.sh
	./install-i3lock-color.sh
}

xautolock() {
	wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system
}

paru() {
	cd /opt/
	sudo git clone https://aur.archlinux.org/paru-git.git
	sudo chown $(whoami):$(whoami) -R ./paru-git/
	cd ./paru-git/
	makepkg -si
}

lightdm-theme() {
	cd /opt/
	sudo git clone https://aur.archlinux.org/lightdm-webkit2-theme-glorious.git
	sudo chown $(whoami):$(whoami) -R ./lightdm-webkit2-theme-glorious
	cd lightdm-webkit2-theme-glorious
	makepkg -sri --noconfirm
	sudo sed -i 's/^\(#?greeter\)-session\s*=\s*\(.*\)/greeter-session = lightdm-webkit2-greeter #\1/ #\2g' /etc/lightdm/lightdm.conf
	sudo sed -i 's/^webkit_theme\s*=\s*\(.*\)/webkit_theme = glorious #\1/g' /etc/lightdm/lightdm-webkit2-greeter.conf
	sudo sed -i 's/^debug_mode\s*=\s*\(.*\)/debug_mode = true #\1/g' /etc/lightdm/lightdm-webkit2-greeter.conf
}

i3lock-color
xautolock
paru
lightdm-theme

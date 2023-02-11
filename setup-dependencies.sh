#!/usr/bin/env bash

declare -a packageArray
mapfile -t packageArray < ./packages

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

i3lock-color
xautolock

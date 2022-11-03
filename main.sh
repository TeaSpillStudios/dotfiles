#!/usr/bin/env bash

cat ./banner

cleanup() {
  mv ~/.config/alacritty ~/.config/alacritty.bak -f
  mv ~/.config/dunst ~/.config/dunst.bak -f
  mv ~/.config/i3 ~/.config/i3.bak -f
  mv ~/.config/nvim ~/.config/nvim.bak -f
  mv ~/.config/picom ~/.config/picom.bak -f
  mv ~/.config/polybar ~/.config/polybar.bak -f
  mv ~/.config/rofi ~/.config/rofi.bak -f
}

copy() {
  cp ./alacritty ~/.config/alacritty -rf
  cp ./dunst ~/.config/dunst -rf
  cp ./i3 ~/.config/i3 -rf
  cp ./nvim ~/.config/nvim -rf
  cp ./picom ~/.config/picom -rf
  cp ./polybar ~/.config/polybar -rf
  cp ./rofi ~/.config/rofi -rf
}

cleanup
copy

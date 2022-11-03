#!/usr/bin/env bash

cleanup() {
  mv ~/.config/alacritty ~/.config/alacritty.bak
  mv ~/.config/dunst ~/.config/dunst.bak
  mv ~/.config/i3 ~/.config/i3.bak
  mv ~/.config/nvim ~/.config/nvim.bak
  mv ~/.config/picom ~/.config/picom.bak
  mv ~/.config/polybar ~/.config/polybar.bak
  mv ~/.config/rofi ~/.config/rofi.bak
}

copy() {
  cp ./alacritty ~/.config/alacritty -r
  cp ./dunst ~/.config/dunst -r
  cp ./i3 ~/.config/i3 -r
  cp ./nvim ~/.config/nvim -r
  cp ./picom ~/.config/picom -r
  cp ./polybar ~/.config/polybar -r
  cp ./rofi ~/.config/rofi -r
}

# cleanup
copy
